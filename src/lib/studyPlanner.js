import { plannerExam } from './plannerExams.js'
import { safeWebUrl } from './safeUrls.js'
import { pismPlannerTopics, pismProgramUrl } from './pismPlannerTopics.js'
export { pismPlannerTopics } from './pismPlannerTopics.js'

export const weekdays = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb']
export const subjects = ['Português', 'Literatura', 'Matemática', 'História', 'Geografia', 'Física', 'Química', 'Biologia', 'Inglês ou Espanhol', 'Artes', 'Educação Física', 'Filosofia', 'Sociologia', 'Redação']
export const officialSources = {
  ENEM: 'https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/outros-documentos',
  PISM: 'https://www2.ufjf.br/copese/vestibular-pism-2/',
}
export function dateKey(date) {
  return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')}`
}
export function parseDate(value) {
  if (!/^\d{4}-\d{2}-\d{2}$/.test(value || '')) return null
  const result = new Date(`${value}T12:00:00`)
  return Number.isFinite(+result) && dateKey(result) === value ? result : null
}
export function addDays(value, count) { const date = parseDate(value); date.setDate(date.getDate() + count); return dateKey(date) }
export function minutes(value) {
  if (!/^([01]\d|2[0-3]):[0-5]\d$/.test(value || '')) return NaN
  const [h, m] = value.split(':').map(Number); return h * 60 + m
}
export function timeLabel(value) { return `${String(Math.floor(value / 60)).padStart(2, '0')}:${String(value % 60).padStart(2, '0')}` }
export function activityChecklists(item) {
  return item.checklists || (item.checklist?.length ? [{ id: 'legacy-checklist', name: 'Checklist', items: item.checklist }] : [])
}
export function orderedSessions(sessions) {
  return [...sessions].sort((a, b) => (Number.isFinite(a.order) ? a.order : minutes(a.start)) - (Number.isFinite(b.order) ? b.order : minutes(b.start)) || a.start.localeCompare(b.start))
}
export function moveSession(sessions, id, date, beforeId = null) {
  const current = sessions.find(item => item.id === id)
  if (!current || !parseDate(date)) throw new Error('Não foi possível mover esta atividade.')
  if (beforeId === id) return sessions
  const moved = { ...current, date }
  if (current.date !== date) {
    const duration = minutes(current.end) - minutes(current.start)
    let start = minutes(current.start)
    const occupied = sessions.filter(item => item.id !== id && item.date === date).sort((a, b) => minutes(a.start) - minutes(b.start))
    for (const item of occupied) {
      if (start < minutes(item.end) && start + duration > minutes(item.start)) start = minutes(item.end)
    }
    if (start + duration > 1439) throw new Error('Não há horário livre suficiente após esse horário no dia escolhido. Ajuste o horário da atividade antes de movê-la.')
    moved.start = timeLabel(start)
    moved.end = timeLabel(start + duration)
  }
  const validation = sessionError(moved, sessions)
  if (validation) throw new Error(validation)
  const destination = orderedSessions(sessions.filter(item => item.date === date && item.id !== id))
  const index = beforeId ? destination.findIndex(item => item.id === beforeId) : destination.length
  if (index < 0) throw new Error('O destino da atividade não está disponível.')
  destination.splice(index, 0, moved)
  const reordered = new Map(destination.map((item, index) => [item.id, { ...item, order: index }]))
  return sessions.map(item => reordered.get(item.id) || item)
}
export function sessionError(item, existing = []) {
  if (item.cover != null && (!/^#[0-9a-fA-F]{6}$/.test(item.cover.color || '') || !['strip', 'full'].includes(item.cover.style))) return 'A capa do card é inválida.'
  if (item.checklists !== undefined) {
    const ids = new Set()
    if (!Array.isArray(item.checklists) || item.checklists.some(list => !list || typeof list.id !== 'string' || !list.id || ids.has(list.id) || !ids.add(list.id) || typeof list.name !== 'string' || !list.name.trim() || list.name.length > 300 || sessionError({ subject: 'Checklist', date: '2026-01-01', start: '08:00', end: '09:00', checklist: list.items }) || !Array.isArray(list.items))) return 'Uma checklist contém dados inválidos.'
  }
  if (item.checklist !== undefined) {
    const ids = new Set()
    if (!Array.isArray(item.checklist) || item.checklist.some(entry => !entry || typeof entry.id !== 'string' || !entry.id || ids.has(entry.id) || !ids.add(entry.id) || typeof entry.text !== 'string' || !entry.text.trim() || entry.text.length > 300 || typeof entry.done !== 'boolean')) return 'A checklist contém itens inválidos.'
  }
  if (!item.subject?.trim() || item.subject.length > 100) return 'Informe uma matéria com até 100 caracteres.'
  if (!parseDate(item.date)) return 'Informe uma data válida.'
  const start = minutes(item.start), end = minutes(item.end)
  if (!Number.isFinite(start) || !Number.isFinite(end) || end <= start) return 'O horário final deve ser posterior ao inicial, no mesmo dia.'
  if ((item.notes || '').length > 10000) return 'Use até 10.000 caracteres nas anotações.'
  if ((item.links || '').split('\n').some(url => url.trim() && !safeWebUrl(url.trim()))) return 'Use links completos começando com https:// ou http://, um por linha.'
  if (existing.some(other => other.id !== item.id && other.date === item.date && minutes(other.start) < end && minutes(other.end) > start)) return 'Este horário coincide com outra atividade. Escolha outro intervalo.'
  return ''
}
export function generatePlan(config, existing = []) {
  const startDate = parseDate(config.startDate), endDate = parseDate(config.endDate)
  if (!startDate || !endDate || endDate < startDate || endDate > parseDate(addDays(config.startDate, 365))) throw new Error('Escolha um período de até 366 dias, com fim igual ou posterior ao início.')
  if (!plannerExam(config.exam)) throw new Error('Escolha a prova.')
  if (config.exam === 'PISM' && ![1, 2, 3].includes(Number(config.module))) throw new Error('Escolha o ano/módulo do PISM.')
  if (!Array.isArray(config.days) || !config.days.length || config.days.some(day => !Number.isInteger(day) || day < 0 || day > 6)) throw new Error('Selecione pelo menos um dia da semana.')
  const start = minutes(config.start), end = minutes(config.end), duration = Number(config.duration), pause = Number(config.pause)
  if (!Number.isFinite(start) || !Number.isFinite(end) || start >= end || ![25, 30, 45, 50, 60, 90].includes(duration) || ![0, 5, 10, 15].includes(pause) || end - start < duration) throw new Error('A disponibilidade deve comportar pelo menos um bloco de estudo.')
  const pool = config.exam === 'PISM' ? Object.keys(pismPlannerTopics[config.module]) : plannerExam(config.exam).subjects || subjects
  const priority = config.priority?.trim()
  const rotation = priority && pool.includes(priority) ? [priority, ...pool] : pool
  const items = []; let sequence = 0; let skipped = 0
  for (let date = config.startDate; date <= config.endDate; date = addDays(date, 1)) {
    if (!config.days.includes(parseDate(date).getDay())) continue
    for (let cursor = start; cursor + duration <= end; cursor += duration + pause) {
      const subject = rotation[sequence % rotation.length]
      const round = Math.floor(sequence / rotation.length)
      const type = ['Estudo', 'Questões', 'Revisão'][round % 3]
      const previousModules = Array.from({ length: Number(config.module) - 1 }, (_, i) => i + 1).filter(module => pismPlannerTopics[module]?.[subject])
      const focusModule = config.exam === 'PISM' && type === 'Revisão' && previousModules.length ? previousModules[Math.floor(round / 3) % previousModules.length] : Number(config.module)
      const topic = config.exam === 'PISM' ? pismPlannerTopics[focusModule][subject] : ''
      const stage = config.exam === 'PISM' ? `PISM ${config.module} · ${config.module}º ano${Number(config.module) > 1 ? ' e revisão cumulativa dos módulos anteriores' : ''}` : config.exam === 'ENEM' ? 'ENEM · ensino médio completo' : `${plannerExam(config.exam).label} · planejamento geral; confira o programa da sua edição`
      const item = { id: crypto.randomUUID(), subject, date, start: timeLabel(cursor), end: timeLabel(cursor + duration), type, done: false, topic, focusModule: config.exam === 'PISM' ? focusModule : null, notes: `${stage}. ${topic ? `Foco sugerido (módulo ${focusModule}): ${topic}. ` : ''}${type === 'Estudo' ? 'Estude os conteúdos da matéria no programa da prova.' : type === 'Questões' ? 'Resolva questões da prova e registre suas dúvidas.' : 'Revise os conceitos e os erros das atividades anteriores.'}`, links: config.exam === 'PISM' ? pismProgramUrl : officialSources[config.exam] || '', exam: config.exam, module: config.exam === 'PISM' ? Number(config.module) : null }
      sequence++
      if (sessionError(item, existing)) { skipped++; continue }
      items.push(item)
    }
  }
  if (!items.length) throw new Error('Não há horários livres nesse período. Ajuste as datas, os dias ou a disponibilidade.')
  return { items, skipped, covered: [...new Set(items.map(item => item.subject))], totalSubjects: pool.length }
}

export function loadPlanner(storage, key) {
  const raw = storage.getItem(key)
  if (!raw) return { sessions: [], notes: '', links: '' }
  const value = JSON.parse(raw)
  if (!value || !Array.isArray(value.sessions) || value.sessions.length > 20000 || typeof value.notes !== 'string' || typeof value.links !== 'string') throw new Error('Formato inválido')
  const ids = new Set()
  if (value.sessions.some(item => !item || typeof item.id !== 'string' || ids.has(item.id) || !ids.add(item.id) || typeof item.done !== 'boolean' || sessionError(item))) throw new Error('Atividades inválidas')
  return value
}
