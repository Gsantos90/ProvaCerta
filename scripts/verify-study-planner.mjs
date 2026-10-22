import assert from 'node:assert/strict'
import { generatePlan, sessionError, loadPlanner, addDays, parseDate, moveSession, orderedSessions, activityChecklists } from '../src/lib/studyPlanner.js'
const config = { exam: 'ENEM', module: '1', startDate: '2026-10-26', endDate: '2026-11-22', days: [1, 2, 3, 4, 5], start: '08:00', end: '10:00', duration: '50', pause: '10' }
const plan = generatePlan(config)
assert.equal(plan.items.length, 40)
assert.equal(plan.covered.length, 14)
assert.ok(plan.items.every(item => [1, 2, 3, 4, 5].includes(parseDate(item.date).getDay()) && item.end <= '10:00'))
assert.deepEqual(plan.items.slice(0, 2).map(item => [item.start, item.end]), [['08:00', '08:50'], ['09:00', '09:50']])
assert.ok(plan.items.some(item => item.type === 'Revisão'))
assert.equal(generatePlan({ ...config, exam: 'PISM', module: '2' }).covered.length, 8)
assert.equal(generatePlan({ ...config, exam: 'PISM', module: '3' }).covered.length, 10)
assert.ok(generatePlan({ ...config, exam: 'PISM', module: '1' }).items.find(item => item.subject === 'Biologia').topic.includes('Células'))
assert.ok(generatePlan({ ...config, exam: 'PISM', module: '2' }).items.find(item => item.subject === 'Biologia').topic.includes('Diversidade'))
assert.ok(generatePlan({ ...config, exam: 'PISM', module: '2' }).items.some(item => item.focusModule === 1))
assert.ok(generatePlan({ ...config, exam: 'PISM', module: '2' }).items.every(item => item.module === 2 && item.notes.includes('cumulativa')))
assert.equal(generatePlan(config, [plan.items[0]]).items.length, 39)
assert.equal(generatePlan(config, [plan.items[0]]).skipped, 1)
assert.throws(() => generatePlan({ ...config, days: [] }))
assert.throws(() => generatePlan({ ...config, start: '10:00' }))
assert.throws(() => generatePlan({ ...config, endDate: '2028-01-01' }))
assert.throws(() => generatePlan({ ...config, startDate: '2026-02-30' }))
assert.throws(() => generatePlan({ ...config, exam: 'PISM', module: '4' }))
assert.equal(addDays('2026-12-31', 1), '2027-01-01')
const session = plan.items[0]
assert.ok(sessionError({ ...session, links: 'javascript:alert(1)' }))
assert.ok(sessionError({ ...session, end: session.start }))
assert.ok(sessionError({ ...session, id: 'new' }, [session]))
assert.equal(sessionError(session, [session]), '')
assert.equal(sessionError({ ...session, id: 'next', start: '08:50', end: '09:00' }, [session]), '')
const data = { sessions: plan.items, notes: 'Dúvidas', links: 'https://example.com' }
assert.deepEqual(loadPlanner({ getItem: () => JSON.stringify(data) }, 'key'), data)
assert.throws(() => loadPlanner({ getItem: () => '{broken' }, 'key'))
assert.throws(() => loadPlanner({ getItem: () => JSON.stringify({ ...data, sessions: [session, session] }) }, 'key'))
console.log('Planejamento: geração, datas, disponibilidade, conflitos, PISM/ENEM, links e persistência verificados.')

// Renderiza o componente real com uma atividade persistida, sem depender de serviços externos.
const { buildSync } = await import('esbuild')
const { createRequire } = await import('node:module')
const { renderToStaticMarkup } = await import('react-dom/server')
const React = await import('react')
const { dateKey } = await import('../src/lib/studyPlanner.js')
const result = buildSync({ entryPoints: ['src/StudyPlanner.jsx'], bundle: true, write: false, format: 'cjs', platform: 'node', external: ['react'], loader: { '.css': 'empty' } })
const module = { exports: {} }
new Function('require', 'module', 'exports', result.outputFiles[0].text)(createRequire(import.meta.url), module, module.exports)
globalThis.localStorage = { getItem: () => JSON.stringify({ sessions: [{ ...session, date: dateKey(new Date()) }], notes: '', links: '' }) }
const markup = renderToStaticMarkup(React.createElement(module.exports.default))
assert.ok(markup.includes('Planejamento de estudos'))
assert.ok(markup.includes(session.subject))
assert.ok(markup.includes('type="checkbox"'))
assert.ok(markup.includes('Salvo apenas neste navegador'))
delete globalThis.localStorage
console.log('Componente React renderizado com atividade persistida, calendário e checkbox.')

const movable = [
  { ...session, id: 'first', date: '2026-10-26', start: '08:00', end: '08:50' },
  { ...session, id: 'second', date: '2026-10-26', start: '09:00', end: '09:50' },
  { ...session, id: 'third', date: '2026-10-27', start: '08:00', end: '08:50' },
]
const rearranged = moveSession(movable, 'first', '2026-10-26')
assert.deepEqual(orderedSessions(rearranged.filter(item => item.date === '2026-10-26')).map(item => item.id), ['second', 'first'])
assert.equal(rearranged.find(item => item.id === 'first').start, '08:00')
assert.equal(moveSession(movable, 'second', '2026-10-27', 'third').find(item => item.id === 'second').date, '2026-10-27')
const movedIntoBusyDay = moveSession(movable, 'first', '2026-10-27')
assert.equal(movedIntoBusyDay.find(item => item.id === 'first').start, '08:50')
assert.equal(movedIntoBusyDay.find(item => item.id === 'first').end, '09:40')
assert.deepEqual(orderedSessions(movedIntoBusyDay.filter(item => item.date === '2026-10-27')).map(item => item.id), ['third', 'first'])
assert.equal(sessionError(movedIntoBusyDay.find(item => item.id === 'first'), movedIntoBusyDay), '')
const busyDay = [...movable, { ...session, id: 'fourth', date: '2026-10-27', start: '08:50', end: '10:00' }]
assert.equal(moveSession(busyDay, 'first', '2026-10-27').find(item => item.id === 'first').start, '10:00')
assert.throws(() => moveSession([...movable, { ...session, id: 'full', date: '2026-10-28', start: '00:00', end: '23:59' }], 'first', '2026-10-28'), /horário livre/)
assert.deepEqual(orderedSessions(loadPlanner({ getItem: () => JSON.stringify({ sessions: rearranged, notes: '', links: '' }) }, 'test').sessions.filter(item => item.date === '2026-10-26')).map(item => item.id), ['second', 'first'])
assert.equal(movable[0].date, '2026-10-26')
console.log('Movimentação: ordem persistida, mudança de dia, horários preservados e conflitos verificados.')

const checklistSession = { ...movable[0], checklist: [{ id: 'task-1', text: 'Revisar cinemática', done: false }, { id: 'task-2', text: 'Simulado concluído', done: true }] }
assert.equal(sessionError(checklistSession), '')
const checklistData = { sessions: [checklistSession], notes: '', links: '' }
assert.deepEqual(loadPlanner({ getItem: () => JSON.stringify(checklistData) }, 'checklist'), checklistData)
assert.deepEqual(moveSession([checklistSession], checklistSession.id, '2026-10-28')[0].checklist, checklistSession.checklist)
assert.ok(sessionError({ ...checklistSession, checklist: [{ id: 'bad', text: ' ', done: false }] }))
assert.ok(sessionError({ ...checklistSession, checklist: [checklistSession.checklist[0], checklistSession.checklist[0]] }))
console.log('Checklist: itens livres, conclusão, persistência, movimentação e validação verificados.')

const migratedLists = activityChecklists(checklistSession)
assert.deepEqual(migratedLists[0].items, checklistSession.checklist)
const namedSession = { ...checklistSession, checklist: undefined, checklists: [{ ...migratedLists[0], name: 'Simulados feitos' }, { id: 'second-list', name: 'Matérias estudadas', items: [] }] }
assert.equal(sessionError(namedSession), '')
assert.deepEqual(loadPlanner({ getItem: () => JSON.stringify({ sessions: [namedSession], notes: '', links: '' }) }, 'lists').sessions[0].checklists, namedSession.checklists)
assert.ok(sessionError({ ...namedSession, checklists: [{ id: 'bad', name: '', items: [] }] }))
assert.ok(sessionError({ ...namedSession, checklists: [{ id: 'bad', name: 'Nome', items: null }] }))
console.log('Checklists nomeadas: listas múltiplas, compatibilidade dos itens antigos e persistência verificadas.')

const { plannerExams } = await import('../src/lib/plannerExams.js')
for (const exam of plannerExams.filter(exam => exam.subjects)) {
 const generated = generatePlan({ ...config, exam: exam.value })
 assert.equal(generated.covered.length, exam.subjects.length)
 assert.ok(generated.items.every(item => exam.subjects.includes(item.subject) && item.exam === exam.value && !item.notes.startsWith('ENEM')))
 assert.ok(generated.items.every(item => !sessionError(item)))
 assert.ok(generated.items.every(item => item.links === ''))
}
assert.throws(() => generatePlan({ ...config, exam: 'INVALID' }))
console.log('Novas provas: matérias, identificação, validação e geração verificadas para todas as opções.')

const coloredSession = { ...movable[0], cover: { color: '#78a7f2', style: 'strip' } }
assert.equal(sessionError(coloredSession), '')
assert.deepEqual(moveSession([coloredSession], coloredSession.id, '2026-10-28')[0].cover, coloredSession.cover)
assert.deepEqual(loadPlanner({ getItem: () => JSON.stringify({ sessions: [coloredSession], notes: '', links: '' }) }, 'cover').sessions[0].cover, coloredSession.cover)
assert.ok(sessionError({ ...coloredSession, cover: { color: 'red;evil', style: 'full' } }))
console.log('Capas: validação, persistência e movimentação verificadas.')
