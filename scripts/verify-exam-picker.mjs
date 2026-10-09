import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { attemptSource, examSource, latestForExam, loadCatalogProgress } from '../src/lib/catalogProgress.js'

assert.equal(examSource('pism-ii-2026-dia-1'), 'pism')
assert.equal(examSource('pmerj'), 'pmrj')
assert.equal(attemptSource({ exam_title: '2026' }), 'pism')
assert.equal(attemptSource({ exam_title: 'Simulado · Ensino Médio' }), null)
assert.equal(attemptSource({ exam_title: 'ENEM 2025', exam_source: 'usp' }), 'usp')
const rows = [
  { id: 'first', user_id: 'student', exam_source: 'enem', exam_title: 'ENEM 2023', points: 30, total: 45, completed_at: '2026-01-01T00:00:00Z' },
  { id: 'last', user_id: 'student', exam_source: 'enem', exam_title: 'ENEM 2025', points: 40, total: 45, completed_at: '2026-09-01T00:00:00Z' },
  { id: 'other', exam_source: 'inss', points: -10, total: 120, completed_at: '2026-10-01T00:00:00Z' },
]
assert.equal(latestForExam(rows, 'enem').id, 'last')
assert.equal(latestForExam(rows, 'usp'), null)
const queries = []
const client = { from(table) {
  const query = { table }
  return { select(value) { query.fields = value; return this }, eq(key, value) { query.filter = [key, value]; return this }, order() { return this }, async range(start, end) { query.range = [start, end]; queries.push(query); return { data: start === 0 ? Array.from({ length: 100 }, (_, i) => ({ id: i })) : [{ id: 100 }], error: null } } }
} }
assert.equal((await loadCatalogProgress(client, 'student')).length, 101)
assert.deepEqual(queries.map(q => q.range), [[0, 99], [100, 199]])
assert.ok(queries.every(q => q.filter[0] === 'user_id' && q.filter[1] === 'student' && !q.fields.includes('mistakes')))
await assert.rejects(() => loadCatalogProgress({ from() { return { select() { return this }, eq() { return this }, order() { return this }, range: async () => ({ data: null, error: new Error('offline') }) } } }, 'student'), /offline/)

const source = readFileSync('src/ExamPicker.jsx', 'utf8').replace("import { useAuth } from './Auth'", 'const useAuth = () => testAuth') + '\nexport { ProgressContext }'
const compiled = buildSync({ stdin: { contents: source, resolveDir: process.cwd() + '/src', loader: 'jsx' }, bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react', 'react-dom', 'lucide-react', '@supabase/supabase-js'], loader: { '.css': 'empty' }, define: { 'import.meta.env': '{}' } }).outputFiles[0].text
const mod = { exports: {} }, auth = { user: null }
new Function('module', 'exports', 'require', 'testAuth', compiled)(mod, mod.exports, createRequire(import.meta.url), auth)
const { default: Picker, ExamPickerDialog, ExamProgressProvider, CatalogFilters, ProgressContext, cardEditions } = mod.exports
const exam = { id: 'enem', name: 'ENEM', org: 'Brasil', description: 'Exame Nacional do Ensino Médio' }
const ExampleCard = () => React.createElement('select', { 'aria-label': 'Ano' }, React.createElement('option', null, '2025'))
const card = React.createElement(ExampleCard, { catalog: [{ year: 2025 }, { year: 2024 }] })
assert.deepEqual(cardEditions(exam, card), ['2025', '2024'])
const renderPicker = () => renderToStaticMarkup(React.createElement(ProgressContext.Provider, { value: { rows } }, React.createElement(Picker, { exam }, card)))
const guest = renderPicker()
assert.ok(guest.includes('Escolher prova') && !guest.includes('<select') && !guest.includes('Última tentativa'))
auth.user = { id: 'student' }
const logged = renderPicker()
assert.ok(logged.includes('Você já fez esta prova') && logged.includes('Última tentativa: ENEM 2025') && logged.includes('40/45') && logged.includes('Ver meu histórico'))
const originalState = React.useState
let count = 0
React.useState = initial => originalState(count++ === 0 ? { owner: 'other-student', rows, loading: false, error: false } : initial)
try {
  const stale = renderToStaticMarkup(React.createElement(ExamProgressProvider, null, React.createElement(Picker, { exam }, card)))
  assert.ok(!stale.includes('Última tentativa'))
} finally { React.useState = originalState }
const dialog = renderToStaticMarkup(React.createElement(ExamPickerDialog, { exam, onClose() {} }, card))
assert.ok(dialog.includes('aria-modal="true"') && dialog.includes('<select') && dialog.includes('Fechar seleção da prova'))
const longOption = renderToStaticMarkup(React.createElement(ExamPickerDialog, { exam, onClose() {} }, React.cloneElement(card, { role: 'atendente', roles: { atendente: { label: 'Agente de Correios - Atendente Comercial' } } })))
assert.ok(longOption.includes('Cargo: Agente de Correios - Atendente Comercial'))
const unavailable = renderToStaticMarkup(React.createElement(Picker, { exam }))
assert.ok(unavailable.includes('disabled') && !unavailable.includes('Escolher prova'))
const filters = renderToStaticMarkup(React.createElement(CatalogFilters, { search: 'UFJF', category: 'todas', categories: [] }))
assert.ok(filters.includes('aria-expanded="false"') && filters.includes('Limpar filtros'))
console.log('Catálogo: seleção separada, edições, último resultado correto, paginação, acesso sem login, isolamento ao trocar contas e filtros recolhíveis verificados.')
