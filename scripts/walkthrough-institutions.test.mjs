import assert from 'node:assert/strict'
import { existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import { buildSync } from 'esbuild'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import additions from '../src/lib/walkthroughInstitutionQuestions.json' with { type: 'json' }
import { walkthroughQuestions, walkthroughExams, walkthroughSelection } from '../src/lib/walkthroughCatalog.js'
import { walkthroughSolutions } from '../src/lib/walkthroughSolutions.js'

const keys = {
  uerj: '29:A,34:D,1:A,44:C,5:C,37:A', usp: '70:A,77:E,19:B,33:B,57:A,64:B',
  ita: '1:D,13:B,28:B', unicamp: '51:C,14:B,71:A', unesp: '83:E,78:D,70:C',
  enem: '137:E,91:C,110:E', esa: '7:D', espcex: '15:D,22:E,36:E', efomm: '10:A,28:D', cbmerj: '24:C,47:C,57:A',
}
assert.equal(walkthroughQuestions.length, 168)
assert.equal(additions.length, 33)
assert.equal(new Set(walkthroughQuestions.map(q => q.id)).size, 168)
assert.equal(Object.keys(walkthroughSolutions).length, 168)
for (const [exam, expected] of Object.entries(keys)) {
  assert.equal(additions.filter(q => q.exam === exam).map(q => `${q.number}:${q.answer}`).join(','), expected)
}
for (const q of additions) {
  assert([4, 5].includes(q.options.length), q.id)
  assert(q.options.every(option => option.trim() && !option.includes('conforme o caderno original')), q.id)
  assert('ABCDE'.slice(0, q.options.length).includes(q.answer), q.id)
  for (const url of [q.sourceUrl, q.answerSource, ...q.supportImages]) {
    if (url.startsWith('/')) assert(existsSync(`public${url.split('#')[0]}`), url)
    else assert.equal(new URL(url).protocol, 'https:')
  }
  const s = walkthroughSolutions[q.id]
  assert(s.topic && s.vocabulary.length >= 3 && s.steps.length >= 5 && s.pitfalls.length >= 2 && s.takeaway, q.id)
  assert(s.steps.every(step => step.title && step.text.length > 40), q.id)
}

// Persisted filters from a different institution must always resolve to real content.
for (const exam of walkthroughExams) for (const year of [2024, 2025, 2026, 1900]) {
  for (const stage of ['I', 'II', 'III', 'missing']) for (const subject of ['Matemática', 'Física', 'Química']) {
    const selection = walkthroughSelection(exam.id, year, stage, subject)
    assert(selection.questions.length > 0, `${exam.id}/${year}/${stage}/${subject}`)
    assert(selection.editions.includes(selection.year))
    assert(selection.stages.some(item => item.id === selection.stage))
    assert(selection.subjects.includes(selection.subject))
    assert(selection.questions.every(q => q.exam === exam.id && q.year === selection.year && q.stage === selection.stage && q.subject === selection.subject))
  }
}
assert.deepEqual(walkthroughSelection('esa', 2026, 'geral', 'Química').subjects, ['Matemática'])
assert.deepEqual(walkthroughSelection('efomm', 2026, 'dia2', 'Química').subjects, ['Matemática', 'Física'])

const code = buildSync({ entryPoints: ['src/StudyWalkthrough.jsx'], bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react'], loader: { '.css': 'empty' } }).outputFiles[0].text
const mod = { exports: {} }
new Function('module', 'exports', 'require', code)(mod, mod.exports, createRequire(import.meta.url))
const useState = React.useState
for (const q of additions) {
  const selection = walkthroughSelection(q.exam, q.year, q.stage, q.subject)
  for (const chosen of [q.answer, 'ABCDE'.slice(0, q.options.length).split('').find(value => value !== q.answer)]) {
    let i = 0
    const values = [q.subject, q.year, q.stage, selection.questions.findIndex(item => item.id === q.id), [], q.exam, chosen, true]
    React.useState = initial => useState(i < values.length ? values[i++] : initial)
    let markup
    try { markup = renderToStaticMarkup(React.createElement(mod.exports.default)) }
    finally { React.useState = useState }
    assert(markup.includes(walkthroughSolutions[q.id].topic), q.id)
    assert(markup.includes('Passo 5') && markup.includes('Palavras que vamos usar'), q.id)
    assert.equal((markup.match(/type="radio"/g) || []).length, q.options.length, q.id)
    assert(markup.includes(chosen === q.answer ? 'Você acertou!' : 'Ainda não foi desta vez'), q.id)
    assert(markup.includes(q.answerSource.replaceAll('&', '&amp;')), q.id)
    assert(!markup.includes('caderno e o gabarito da UFJF'), q.id)
    if (q.support) assert(markup.includes('walkthrough-context'), q.id)
    for (const image of q.supportImages) assert(markup.includes(image), q.id)
  }
}

// Independent reference calculations, including an enumeration of the prime set.
assert.equal((18 - 8) / 25, 2 / 5)
assert.equal(9e-4 / 18 * 6e23, 3e19)
assert.equal(2000 * .002 ** 2 / 2, .004)
assert.equal(16 / 64 * 1.5, .375)
assert(Math.abs((3 * Math.sqrt(3) - 2 * Math.sqrt(3)) ** 2 + 3 ** 2 - 12) < 1e-10)
assert.deepEqual(Array.from({ length: 21 }, (_, x) => x).filter(x => Math.abs(x - 5) >= 2 && Math.abs(x - 11) <= 9 && x > 1 && !Array.from({ length: x - 2 }, (_, i) => i + 2).some(d => x % d === 0)), [2, 3, 7, 11, 13, 17, 19])
assert.equal(180 * (10 / 20), 90)
assert.equal(6 / 8, .75)
assert.equal(7 * 4e7 * .01 / (70 * 10), 4000)
assert.equal(2 / 2 ** (26.5 / 5.3), .0625)
assert.equal(.03 * 500 * 164 / 1000, 2.46)
assert.equal(.6 / Math.sqrt(9e-3 / 4e-9) * 1000, .4)
assert(Math.abs(.37 * 1150 / 30 - 14.2) < .03)
console.log('33 novas resoluções: 10 provas, filtros persistidos, fontes, imagens, alternativas, feedback e cálculos verificados.')
