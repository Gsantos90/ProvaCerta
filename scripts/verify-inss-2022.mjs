import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { transformSync } from 'esbuild'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { cebraspeScore, isBinaryQuestion, binaryAnswerLabel } from '../src/lib/cebraspeScore.js'
import { inssOfficialSource } from '../src/lib/inssSources.js'

const sql = readFileSync(new URL('../supabase/seed-inss-2022-tecnico.sql', import.meta.url), 'utf8')
const rows = [...sql.matchAll(/select id, (\d+),[\s\S]*? '(\["Certo", "Errado"\])'::jsonb, '([^']+)'/g)].map(match => ({ number: Number(match[1]), options: JSON.parse(match[2]), answer: match[3] }))
assert.equal(rows.length, 120)
assert.deepEqual(rows.map(q => q.number), Array.from({ length: 120 }, (_, index) => index + 1))
// Transcrição independente dos dois gabaritos oficiais definitivos, cadernos 01.
const official = (`E C E E E C C C C E E C E E E C E E C C
E E C E E C C E C C C E E E E E C C C E
C E C E C E C E X C
C E E X E C E C E C E C C E X E C X E C
C X E X E C C E E E C C C C E E E C E E
C E C E E E C C C C C E E X E X E C E C
E E C E C E C E C E`).split(/\s+/)
assert.equal(official.length, 120)
rows.forEach((q, index) => {
  assert.equal(q.answer, { C: 'A', E: 'B', X: 'A/B/C/D/E' }[official[index]], `Gabarito ${q.number}`)
  assert.ok(isBinaryQuestion(q))
  assert.match(inssOfficialSource('inss-2022-tecnico', q.number), /cebraspe\.org\.br.*_01\.PDF#page=[1-3]$/)
})
assert.equal(inssOfficialSource('outro-slug', 1), undefined)
assert.equal(inssOfficialSource('inss-2022-tecnico', 121), undefined)
assert.equal(binaryAnswerLabel('A'), 'Certo')
assert.equal(binaryAnswerLabel('B'), 'Errado')
assert.ok(!isBinaryQuestion({ options: ['A', 'B'] }))
assert.deepEqual(rows.filter(q => q.answer.includes('/')).map(q => q.number), [49, 54, 65, 68, 72, 74, 104, 106])
assert.deepEqual(cebraspeScore(rows, {}), { points: 8, correct: 0, wrong: 0, blank: 112, annulled: 8 })
assert.deepEqual(cebraspeScore(rows, Object.fromEntries(rows.map((q, i) => [i, q.answer === 'A' ? 'A' : 'B']))), { points: 120, correct: 112, wrong: 0, blank: 0, annulled: 8 })
assert.equal(cebraspeScore(rows, Object.fromEntries(rows.map((q, i) => [i, q.answer === 'A' ? 'B' : 'A']))).points, -104)
assert.deepEqual(cebraspeScore(rows, { 0: 'B', 1: 'B', 48: 'A' }), { points: 8, correct: 1, wrong: 1, blank: 110, annulled: 8 })
for (const asset of ['cookies.png', 'planilha.png']) assert.ok(existsSync(new URL(`../public/inss-2022/${asset}`, import.meta.url)))
for (const name of ['Manoel', 'José', 'Flávio', 'Maria']) assert.ok(sql.includes(name))
assert.ok(sql.trim().endsWith('commit;'))
assert.ok(sql.includes('on conflict (exam_id,number) do update'))

// Renderiza o card para detectar falhas que a compilação JSX sozinha não captura.
const main = readFileSync(new URL('../src/ExamCards.jsx', import.meta.url), 'utf8')
const cardSource = main.slice(main.indexOf('export function InssCard('), main.indexOf('export function CaixaCard('))
const cardCode = transformSync(cardSource.replace('export function ', 'function '), { loader: 'jsx', format: 'cjs' }).code
const Card = new Function('React', 'ArrowRight', 'ChevronDown', cardCode + '\nreturn InssCard')(React, ArrowRight, ChevronDown)
const ready = renderToStaticMarkup(React.createElement(Card, { onStart() {}, loading: false, error: '' }))
assert.ok(ready.includes('INSS') && ready.includes('2022') && ready.includes('120 itens') && ready.includes('Começar prova'))
const loading = renderToStaticMarkup(React.createElement(Card, { onStart() {}, loading: true, error: 'Falha ao carregar' }))
assert.match(loading, /<button[^>]*disabled/)
assert.ok(loading.includes('Falha ao carregar') && loading.includes('Carregando'))
console.log('INSS 2022: 120 itens e gabaritos, 8 anulações, pontuação, links, figuras e renderização do card verificados.')