import assert from 'node:assert/strict'
import { existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import { buildSync } from 'esbuild'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import additions from '../src/lib/walkthroughInstitutionQuestions.json' with { type: 'json' }
import { walkthroughQuestions, walkthroughExams, walkthroughSelection } from '../src/lib/walkthroughCatalog.js'
import { walkthroughSolutions } from '../src/lib/walkthroughSolutions.js'
import keys from './fixtures/walkthrough-institution-keys.json' with { type: 'json' }
import reviewedMedia from './fixtures/walkthrough-support-media.json' with { type: 'json' }

assert.equal(walkthroughQuestions.length, 270)
assert.equal(additions.length, 135)
assert.equal(new Set(walkthroughQuestions.map(q => q.id)).size, 270)
assert.equal(Object.keys(walkthroughSolutions).length, 270)
for (const [exam, expected] of Object.entries(keys)) {
  assert.equal(additions.filter(q => q.exam === exam).map(q => `${q.number}:${q.answer}`).join(','), expected)
}
const combinations = new Map()
for (const q of walkthroughQuestions) {
  const key = [q.exam, q.year, q.stage, q.subject].join('/')
  combinations.set(key, (combinations.get(key) || 0) + 1)
}
assert.equal(combinations.size, 54)
for (const [key, count] of combinations) assert(count >= 5, key)
const uerj5 = additions.find(q => q.exam === 'uerj' && q.number === 5)
assert.equal(uerj5.support, null)
assert.deepEqual(uerj5.supportImages, ['/provas/destrinchando/figuras/uerj-2026-tabela-periodica.png'])
const uerj37 = additions.find(q => q.exam === 'uerj' && q.number === 37)
assert.equal(uerj37.support, null)
assert.deepEqual(uerj37.supportImages, uerj5.supportImages)
assert.deepEqual(additions.find(q => q.exam === 'unicamp' && q.number === 43).supportImages, [])
assert.deepEqual(additions.find(q => q.exam === 'uerj' && q.number === 42).supportImages, ['/uerj-2026-eq2/figura-q42.png'])
for (const q of walkthroughQuestions) for (const image of q.supportImages || []) {
  assert(!(image in reviewedMedia.replacements), `Recorte com texto voltou ao apoio: ${q.id}: ${image}`)
}
for (const q of additions) {
  assert([4, 5].includes(q.options.length), q.id)
  assert(q.options.every(option => option.trim() && !option.includes('conforme o caderno original')), q.id)
  assert('ABCDE'.slice(0, q.options.length).includes(q.answer), q.id)
  assert(!q.support?.includes('Enunciado e alternativas originais no apoio oficial'), q.id)
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
    assert(!markup.includes('resoluções consultadas nesta sessão'), q.id)
    assert(!markup.includes('walkthrough-coverage'), q.id)
    assert(!markup.includes('seleção comentada de questões objetivas'), q.id)
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
assert.equal(2 ** 6, 64)
assert.equal((625 - 500) / 500, .25)
assert.equal((20 + 55 + 75 + 90) / 4, 60)
assert.equal(7.5e-4 / 30, 2.5e-5)
assert.equal(22 * 12 + 30 + 2 * 35.5 + 10 * 14, 505)
assert.equal(300 * 10 * 50 - 300 * 30 ** 2 / 2, 15000)
assert.equal(207 * 1e-4 * 1000, 20.7)
assert.equal(40320 / 6 / 2, 3360)
assert(Math.abs(160 / 14.5 * .91 - 10) < .1)
assert(Math.abs((85 - 8.31 * 310 * Math.log(10) / 1000) - 79) < .1)
assert(Math.abs(Math.log(4) / .02 - 69) < 1)
assert(Math.abs(120 / (6 + 2 * .875) - 15.48) < .01)
assert.equal(12 * (1.2 + 1.44 + 1.728), 52.416)
assert.equal(10 * 2 / 120, 1 / 6)
assert.equal(70 * 60 + 20 * 40, 30 * 60 + 80 * 40)
assert.equal(4 * 3600, 14400)
assert.equal(3.6 / 7.2 * 6, 3)
assert.equal(15 * 3600 / (45 * 10), 120)
assert(Math.abs((1 / 332.3) / .003 - 1) < .01)
assert(Math.abs((60 - 56 / 124 * 100) - 14.8) < .1)
assert.equal(24 / 2, 12)
assert(Math.abs(4 / 52 * 44 / 51 - 44 / 663) < 1e-12)
assert.equal(700 + Math.abs(225 - 15 * 25), 850)
assert.equal(8 * 6 + 3 * 8, 72)
assert.equal(48 - 72 + 26, 2)
assert(Math.abs(68.4 / (2.3 / 46) - 1368) < 1e-10)
assert(Math.abs((.1 * .03 + .001 * .27) / .3 - .0109) < 1e-12)
assert.equal(60000000 * (1 - .4 ** 7) / (1 - .4) + 65000000, 164836160)
assert.equal(1013 - (336 + 252 + 201 - 84 - 67 - 50 + 16), 409)
assert.equal(180 + 72 + 80 + 72, 404)
assert.equal(2100 / 15, 10 + (2100 / 20 - 5) + 2100 / 70)
assert(Math.abs(723 * 1.05 - 759.15) < 1e-10)
assert.equal(12000 * 24 ** 2 / 2 / 1e6, 3.456)
assert.equal(487.5 * .8 * 65.5 / 97.5, 262)
console.log('270 resoluções: mínimo de 5 em cada uma das 54 combinações, 270 renderizações adicionais, apoios UERJ e remoção dos textos verificados.')
