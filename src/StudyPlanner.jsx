import { plannerExams, plannerExam } from './lib/plannerExams'
import React, { useEffect, useRef, useState } from 'react'
import { CalendarDays, Plus, Sparkles, ChevronLeft, ChevronRight, BookOpen, CheckCircle2, ListChecks, Trash2 } from 'lucide-react'
import { addDays, dateKey, parseDate, weekdays, subjects, sessionError, generatePlan, loadPlanner, minutes, pismPlannerTopics, orderedSessions, moveSession } from './lib/studyPlanner'
import { safeWebUrl } from './lib/safeUrls'
import './studyPlanner.css'
import ActivityChecklists from './ActivityChecklists'
import PlannerCover from './PlannerCover'

const today = () => dateKey(new Date())
const emptySession = date => ({ subject: '', date, start: '08:00', end: '09:00', type: 'Estudo', notes: '', links: '', done: false })
const formatDate = value => parseDate(value).toLocaleDateString('pt-BR', { day: 'numeric', month: 'short' })
function Links({ value }) { return (value || '').split('\n').map(url => url.trim()).filter(url => safeWebUrl(url)).map((url, i) => <a key={i} href={url} target="_blank" rel="noopener noreferrer">Abrir material {i + 1} ↗</a>) }
function Field({ label, children }) { return <label className="planner-field"><span>{label}</span>{children}</label> }

export default function StudyPlanner({ owner = 'guest' }) {
  const key = `provacerta-planner-v1:${owner}`
  const [initial] = useState(() => { try { return { data: loadPlanner(localStorage, key) } } catch { return { data: { sessions: [], notes: '', links: '' }, error: 'Não foi possível ler o planejamento salvo. Os dados anteriores serão preservados até você recarregar ou escolher substituí-los.' } } })
  const [data, setData] = useState(initial.data)
  const [storageBlocked, setStorageBlocked] = useState(Boolean(initial.error))
  const [message, setMessage] = useState(initial.error || '')
  const [anchor, setAnchor] = useState(today)
  const [view, setView] = useState('week')
  const [mode, setMode] = useState(null)
  const [draft, setDraft] = useState(() => emptySession(today()))
  const [error, setError] = useState('')
  const [config, setConfig] = useState(() => ({ exam: 'ENEM', module: '1', startDate: today(), endDate: addDays(today(), 27), days: [1, 2, 3, 4, 5], start: '08:00', end: '10:00', duration: '50', pause: '10', priority: '' }))
  const [preview, setPreview] = useState(null)
  const [dragging, setDragging] = useState(null)
  const [dropTarget, setDropTarget] = useState(null)
  const editor = useRef(null)
  function acceptDrop(event, date, beforeId = null) {
    if (!dragging) return
    event.preventDefault()
    event.stopPropagation()
    event.dataTransfer.dropEffect = 'move'
    setDropTarget({ date, beforeId })
  }
  function finishDrop(event, date, beforeId = null) {
    event.preventDefault()
    event.stopPropagation()
    if (!dragging) return
    try {
      const sessions = moveSession(data.sessions, dragging, date, beforeId)
      const previous = data.sessions.find(item => item.id === dragging)
      const moved = sessions.find(item => item.id === dragging)
      if (persist({ ...data, sessions }) && moved.start !== previous.start) setMessage(`Atividade movida. Horário ajustado para ${moved.start}–${moved.end} para evitar conflito.`)
    }
    catch (err) { setError(err.message) }
    setDragging(null)
    setDropTarget(null)
  }
  function cardDropPosition(event, item, day) {
    const bounds = event.currentTarget.getBoundingClientRect()
    if (event.clientY < bounds.top + bounds.height / 2) return item.id
    const items = orderedSessions(visible.filter(row => row.date === day))
    return items[items.findIndex(row => row.id === item.id) + 1]?.id || null
  }
  useEffect(() => {
    if (!mode) return
    const previous = document.activeElement
    const getControls = () => [...editor.current.querySelectorAll('button, input, select, textarea, a[href]')].filter(node => !node.disabled)
    getControls()[0]?.focus()
    const handle = event => {
      if (event.key === 'Escape') { setMode(null); setError('') }
      if (event.key === 'Tab') {
        const controls = getControls(), first = controls[0], last = controls.at(-1)
        if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last?.focus() }
        if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first?.focus() }
      }
    }
    document.addEventListener('keydown', handle)
    return () => { document.removeEventListener('keydown', handle); previous?.focus() }
  }, [mode])
  function persist(next) {
    if (storageBlocked) { setError('Recarregue a página ou escolha substituir os dados locais antes de salvar.'); return false }
    try { localStorage.setItem(key, JSON.stringify(next)); setData(next); setMessage('Planejamento salvo neste navegador.'); setError(''); return true }
    catch { setError('Não foi possível salvar. Verifique o espaço e as permissões de armazenamento do navegador.'); return false }
  }
  function openManual(item) { setDraft(item || emptySession(anchor)); setMode('manual'); setError(''); setPreview(null) }
  function updateChecklists(checklists) {
    if (draft.id && !persist({ ...data, sessions: data.sessions.map(item => item.id === draft.id ? { ...item, checklist: undefined, checklists } : item) })) return false
    setDraft(previous => ({ ...previous, checklist: undefined, checklists }))
    return true
  }
  function saveSession(event) {
    event.preventDefault()
    const item = { ...draft, subject: draft.subject.trim(), id: draft.id || crypto.randomUUID() }
    const validation = sessionError(item, data.sessions)
    if (validation) return setError(validation)
    if (persist({ ...data, sessions: [...data.sessions.filter(row => row.id !== item.id), item] })) { setMode(null); setAnchor(item.date) }
  }
  function configure(name, value) { setConfig(old => ({ ...old, [name]: value, ...(name === 'exam' || name === 'module' ? { priority: '' } : {}) })); setPreview(null); setError('') }
  const date = parseDate(anchor)
  const first = view === 'month' ? dateKey(new Date(date.getFullYear(), date.getMonth(), 1)) : addDays(anchor, -((date.getDay() + 6) % 7))
  const length = view === 'month' ? new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate() : 7
  const days = Array.from({ length }, (_, index) => addDays(first, index))
  const visible = data.sessions.filter(item => days.includes(item.date))
  const completed = visible.filter(item => item.done).length
  const plannedMinutes = visible.reduce((total, item) => total + minutes(item.end) - minutes(item.start), 0)
  const progress = visible.length ? Math.round(completed / visible.length * 100) : 0
  function navigate(step) {
    if (view === 'month') setAnchor(dateKey(new Date(date.getFullYear(), date.getMonth() + step, 1)))
    else setAnchor(addDays(anchor, step * 7))
  }
  return <div className="planner">
    <div className="planner-heading"><div><p className="eyebrow">Sua rotina, seu ritmo</p><h2><CalendarDays size={26} /> Planejamento de estudos</h2><p>Organize suas matérias e transforme pequenos passos em progresso.</p></div><div className="planner-actions"><button className="button secondary" onClick={() => openManual()}><Plus size={17} /> Nova atividade</button><button className="button primary" onClick={() => { setMode('auto'); setError(''); setPreview(null) }}><Sparkles size={17} /> Gerar plano</button></div></div>
    <p className="planner-local">Salvo apenas neste navegador{owner === 'guest' ? ' como visitante' : ', separado por conta'}. Não sincroniza entre dispositivos.</p>
    {message && <p role="status">{message}</p>}
    {storageBlocked && <button className="button secondary" onClick={() => { if (window.confirm('Substituir os dados locais que não puderam ser lidos por um planejamento vazio?')) { try { localStorage.setItem(key, JSON.stringify(initial.data)); setStorageBlocked(false); setMessage('Você já pode criar um novo planejamento.') } catch { setError('Não foi possível acessar o armazenamento.') } } }}>Substituir dados locais</button>}
    <div className="planner-stats"><div><span>Atividades no período</span><strong>{visible.length}</strong></div><div><span>Horas planejadas</span><strong>{(plannedMinutes / 60).toLocaleString('pt-BR', { maximumFractionDigits: 1 })}h</strong></div><div><span>Concluídas</span><strong>{completed}/{visible.length}</strong></div><div><span>Seu progresso · {progress}%</span><progress value={completed} max={visible.length || 1} aria-label="Progresso de atividades concluídas" /></div></div>
    <div className="planner-toolbar"><div className="planner-actions"><button aria-label="Período anterior" onClick={() => navigate(-1)}><ChevronLeft size={20} /></button><strong>{view === 'month' ? date.toLocaleDateString('pt-BR', { month: 'long', year: 'numeric' }) : `${formatDate(first)} – ${formatDate(days[6])} · ${parseDate(days[6]).getFullYear()}`}</strong><button aria-label="Próximo período" onClick={() => navigate(1)}><ChevronRight size={20} /></button><button onClick={() => setAnchor(today())}>Hoje</button></div><div className="planner-actions" role="group" aria-label="Visualização do calendário"><button aria-pressed={view === 'week'} onClick={() => setView('week')}>Semanal</button><button aria-pressed={view === 'month'} onClick={() => setView('month')}>Mensal</button></div></div>
    {!visible.length && <div className="planner-empty"><BookOpen size={28} /><strong>Seu próximo passo começa aqui.</strong><p>Cadastre sua primeira atividade ou gere um plano para a sua prova.</p></div>}
    <div className="planner-scroll"><div className={`planner-calendar ${view}`}>
      {view === 'month' && Array.from({ length: (parseDate(first).getDay() + 6) % 7 }, (_, i) => <div className="planner-day spacer" key={`spacer-${i}`} aria-hidden="true" />)}
      {days.map(day => <section className={`planner-day ${day === today() ? 'today' : ''} ${dropTarget?.date === day && !dropTarget.beforeId ? 'drop-end' : ''}`} key={day} onDragOver={event => acceptDrop(event, day)} onDrop={event => finishDrop(event, day)}><h3>{weekdays[parseDate(day).getDay()]} <span>{parseDate(day).getDate()}</span></h3>{orderedSessions(visible.filter(item => item.date === day)).map(item => <article key={item.id} draggable tabIndex={0} aria-label={`${item.subject}, ${formatDate(day)}, ${item.start}. Dois cliques ou Enter para editar.`} title="Dois cliques para editar · Arraste para mover" onDoubleClick={event => { if (!event.target.closest('a, button, input, summary, details')) { event.preventDefault(); openManual(item) } }} onKeyDown={event => { if (event.target === event.currentTarget && event.key === 'Enter') { event.preventDefault(); openManual(item) } }} onDragStart={event => { if (event.target.closest('a, button, input, label, summary, details')) { event.preventDefault(); return } event.dataTransfer.setData('text/plain', item.id); event.dataTransfer.effectAllowed = 'move'; setDragging(item.id) }} onDragEnd={() => { setDragging(null); setDropTarget(null) }} onDragOver={event => acceptDrop(event, day, cardDropPosition(event, item, day))} onDrop={event => finishDrop(event, day, cardDropPosition(event, item, day))} className={`planner-card ${dragging === item.id ? 'dragging' : ''} ${dropTarget?.beforeId === item.id ? 'drop-before' : ''} color-${Math.max(0, subjects.indexOf(item.subject)) % 7} ${item.done ? 'done' : ''} ${item.cover?.style === 'strip' ? 'has-cover-strip' : ''}`} style={item.cover ? { '--card-bg': item.cover.style === 'full' ? item.cover.color : 'var(--planner-surface)', '--card-accent': `color-mix(in srgb, ${item.cover.color} 65%, #172034)`, '--cover-color': item.cover.color } : undefined}><PlannerCover item={item} onChange={cover => persist({ ...data, sessions: data.sessions.map(row => row.id === item.id ? { ...row, cover } : row) })} /><label className="planner-complete"><input type="checkbox" checked={item.done} onChange={() => persist({ ...data, sessions: data.sessions.map(row => row.id === item.id ? { ...row, done: !row.done } : row) })} /><span className="sr-only">Concluir {item.subject}, {formatDate(day)}, {item.start}</span><strong>{item.subject}</strong></label><span>{item.start} – {item.end}</span><span>{item.type}</span>{item.done && <span><CheckCircle2 size={12} /> Concluída</span>}{item.notes && <details><summary>Anotações</summary><p>{item.notes}</p></details>}<Links value={item.links} /></article>)}<button className="planner-add" aria-label={`Adicionar atividade em ${day}`} onClick={() => openManual(emptySession(day))}><Plus size={16} /></button></section>)}
    </div></div>
    <Notebook key={key} data={data} persist={persist} />
    {error && !mode && <p role="alert" className="planner-error">{error}</p>}
    {mode && <><div className="planner-backdrop" aria-hidden="true" onClick={() => { setMode(null); setError('') }} /><section ref={editor} role="dialog" aria-modal="true" className="planner-editor" aria-label={mode === 'manual' ? 'Cadastro de atividade' : 'Gerador de planejamento'}><div className="planner-heading"><h3>{mode === 'manual' ? draft.id ? 'Editar atividade' : 'Nova atividade' : 'Um plano que cabe na sua rotina'}</h3><button className="button secondary" onClick={() => { setMode(null); setError('') }}>Fechar</button></div>
      {mode === 'manual' ? <form onSubmit={saveSession}><div className="planner-form"><Field label="Matéria"><input required maxLength={100} list="planner-subjects" value={draft.subject} onChange={e => setDraft({ ...draft, subject: e.target.value })} /><datalist id="planner-subjects">{subjects.map(subject => <option key={subject}>{subject}</option>)}</datalist></Field><Field label="Data"><input required type="date" value={draft.date} onChange={e => setDraft({ ...draft, date: e.target.value })} /></Field><Field label="Início"><input required type="time" value={draft.start} onChange={e => setDraft({ ...draft, start: e.target.value })} /></Field><Field label="Fim"><input required type="time" value={draft.end} onChange={e => setDraft({ ...draft, end: e.target.value })} /></Field><Field label="Tipo de atividade"><select value={draft.type} onChange={e => setDraft({ ...draft, type: e.target.value })}>{['Estudo', 'Questões', 'Revisão', 'Simulado', 'Redação'].map(type => <option key={type}>{type}</option>)}</select></Field></div><Field label="Anotações"><textarea maxLength={10000} value={draft.notes} onChange={e => setDraft({ ...draft, notes: e.target.value })} /></Field><Field label="Links de estudo (um por linha)"><textarea value={draft.links} onChange={e => setDraft({ ...draft, links: e.target.value })} placeholder="https://..." /></Field><ActivityChecklists key={draft.id || "new"} item={draft} onChange={updateChecklists} /><div className="planner-actions"><button className="button primary" type="submit">Salvar atividade</button>{draft.id && <button className="button secondary" type="button" onClick={() => { if (window.confirm('Excluir esta atividade?')) { if (persist({ ...data, sessions: data.sessions.filter(row => row.id !== draft.id) })) setMode(null) } }}>Excluir atividade</button>}</div></form> : <form onSubmit={event => { event.preventDefault(); try { setPreview(generatePlan(config, data.sessions)); setError('') } catch (err) { setError(err.message); setPreview(null) } }}><div className="planner-form"><Field label="Prova"><select value={config.exam} onChange={e => configure('exam', e.target.value)}>{['Vestibulares', 'Militares'].map(group => <optgroup key={group} label={group}>{plannerExams.filter(exam => exam.group === group).map(exam => <option key={exam.value} value={exam.value}>{exam.label}</option>)}</optgroup>)}</select></Field>{config.exam === 'PISM' && <Field label="Ano do ensino médio / módulo PISM"><select required value={config.module} onChange={e => configure('module', e.target.value)}><option value="1">1º ano · PISM I</option><option value="2">2º ano · PISM II</option><option value="3">3º ano · PISM III</option></select></Field>}<Field label="Início do planejamento"><input required type="date" value={config.startDate} onChange={e => configure('startDate', e.target.value)} /></Field><Field label="Fim do planejamento"><input required type="date" min={config.startDate} max={parseDate(config.startDate) ? addDays(config.startDate, 365) : undefined} value={config.endDate} onChange={e => configure('endDate', e.target.value)} /></Field><Field label="Disponível a partir de"><input required type="time" value={config.start} onChange={e => configure('start', e.target.value)} /></Field><Field label="Disponível até"><input required type="time" value={config.end} onChange={e => configure('end', e.target.value)} /></Field><Field label="Duração de cada bloco"><select value={config.duration} onChange={e => configure('duration', e.target.value)}>{[25, 30, 45, 50, 60, 90].map(n => <option key={n} value={n}>{n} minutos</option>)}</select></Field><Field label="Pausa entre blocos"><select value={config.pause} onChange={e => configure('pause', e.target.value)}>{[0, 5, 10, 15].map(n => <option key={n} value={n}>{n} minutos</option>)}</select></Field><Field label="Matéria para reforçar"><select value={config.priority} onChange={e => configure('priority', e.target.value)}><option value="">Distribuição equilibrada</option>{(config.exam === 'PISM' ? Object.keys(pismPlannerTopics[config.module]) : plannerExam(config.exam).subjects || subjects).map(subject => <option key={subject}>{subject}</option>)}</select></Field></div><fieldset className="planner-weekdays"><legend>Dias disponíveis</legend>{[1, 2, 3, 4, 5, 6, 0].map(day => <label key={day}><input type="checkbox" checked={config.days.includes(day)} onChange={e => configure('days', e.target.checked ? [...config.days, day] : config.days.filter(d => d !== day))} />{weekdays[day]}</label>)}</fieldset><p>{config.exam === 'PISM' ? `O plano usa eixos do módulo ${config.module} e inclui revisão cumulativa dos anteriores quando aplicável. Os focos do PISM usam o programa disponibilizado para 2027.` : config.exam === 'ENEM' ? 'Todas as áreas do ensino médio, incluindo redação e língua estrangeira.' : `Distribuição geral das matérias para ${plannerExam(config.exam).label}.`} A distribuição alterna estudo, questões e revisão. Confira o programa e as leituras da sua edição e ajuste as atividades conforme sua prova.</p><button className="button primary" type="submit">Pré-visualizar plano</button>{preview && <div className="planner-preview"><h4>{preview.items.length} atividades · {preview.covered.length}/{preview.totalSubjects} matérias</h4><p>{preview.skipped} horários ignorados por conflito. As atividades existentes serão preservadas.</p>{preview.covered.length < preview.totalSubjects && <p>O período não comporta todas as matérias. Amplie o período ou a disponibilidade para completar a rotação.</p>}<ul>{preview.items.slice(0, 6).map(item => <li key={item.id}>{formatDate(item.date)} · {item.start}–{item.end} · {item.subject} · {item.type}</li>)}</ul>{preview.items.length > 6 && <p>E mais {preview.items.length - 6} atividades. Todas poderão ser editadas no calendário.</p>}<button type="button" className="button primary" onClick={() => { try { const next = generatePlan(config, data.sessions); if (persist({ ...data, sessions: [...data.sessions, ...next.items] })) { setAnchor(config.startDate); setMode(null); setPreview(null) } } catch (err) { setError(err.message) } }}>Adicionar ao meu calendário</button></div>}</form>}
      {error && <p role="alert" className="planner-error">{error}</p>}
    </section></>}
  </div>
}
function Notebook({ data, persist }) {
  const [notes, setNotes] = useState(data.notes), [links, setLinks] = useState(data.links), [error, setError] = useState('')
  return <section className="planner-notebook"><h3>Meu espaço de anotações</h3><p>Guarde dúvidas, lembretes e materiais para consultar durante os estudos.</p><form onSubmit={e => { e.preventDefault(); if (links.split('\n').some(url => url.trim() && !safeWebUrl(url.trim()))) return setError('Use links completos com http:// ou https://, um por linha.'); setError(''); persist({ ...data, notes, links }) }}><div className="planner-form"><Field label="Anotações gerais"><textarea maxLength={10000} value={notes} onChange={e => setNotes(e.target.value)} /></Field><Field label="Meus links de estudo (um por linha)"><textarea value={links} onChange={e => setLinks(e.target.value)} placeholder="https://..." /></Field></div><button className="button secondary">Salvar anotações e links</button>{error && <p role="alert">{error}</p>}</form><div className="planner-actions"><Links value={data.links} /></div></section>
}
