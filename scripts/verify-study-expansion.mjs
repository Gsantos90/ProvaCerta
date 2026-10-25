import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { studySummaries } from '../src/lib/studySummaries.js'
import { historySummaries } from '../src/lib/historyLessons.js'
import { advancedMathSummaries } from '../src/lib/advancedMathLessons.js'
import { practiceTopics, localSummaryRound } from '../src/lib/summaryPractice.js'
import { studyPodcasts } from '../src/lib/studyPodcasts.js'
import { calculatorStep, initialCalculator } from '../src/lib/calculator.js'

assert.equal(new Set(studySummaries.map(item => item.id)).size, studySummaries.length)
for (const topic of [...historySummaries, ...advancedMathSummaries]) {
  const registered = studySummaries.find(item => item.id === topic.id)
  assert.ok(registered, `Resumo integrado: ${topic.id}`)
  const round = localSummaryRound(topic.id)
  assert.equal(round.length, 3, `Rodada local: ${topic.id}`)
  assert.equal(practiceTopics.find(item => item.id === topic.id).authoredCount, 3)
  assert.equal(new Set(round.map(item => item.authoredId)).size, round.length)
  for (const item of round) {
    const original = topic.practice.find(question => question[0] === item.text)
    assert.equal(item.options[item.answer.charCodeAt(0) - 65], original[1], `Gabarito após reordenação: ${item.authoredId}`)
    assert.equal(item.origin, 'author')
    assert.equal(item.subject, topic.subject)
    assert.ok(item.explanation)
  }
}

for (const topic of advancedMathSummaries) {
  assert.ok(topic.mathLesson.sections.length >= 6)
  assert.equal(topic.mathLesson.examples.length, 3)
  for (const section of topic.mathLesson.sections) {
    assert.ok(section.formula && section.paragraphs.length >= 2)
  }
}
for (const topic of historySummaries) {
  assert.ok(topic.lesson.details.length >= 10)
  assert.ok(topic.lesson.sources.length)
  for (const [, url] of topic.lesson.sources) assert.equal(new URL(url).protocol, 'https:')
}

for (const [topicId, podcast] of Object.entries(studyPodcasts)) {
  assert.equal(studySummaries.find(item => item.id === topicId).lesson.podcast.id, podcast.id)
  const bytes = readFileSync(`public/${podcast.src}`)
  assert.equal(bytes.toString('ascii', 4, 8), 'ftyp')
  assert.ok(bytes.length > 1000000)
}

// SSR de cada exploração e aula completa: detecta componentes ausentes e valores inválidos.
function loadComponent(path) {
  const code = buildSync({ entryPoints: [path], bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react'], loader: { '.css': 'empty' } }).outputFiles[0].text
  const mod = { exports: {} }
  new Function('module', 'exports', 'require', code)(mod, mod.exports, createRequire(import.meta.url))
  return mod.exports.default
}
const Explorer = loadComponent('src/AdvancedMathExplorer.jsx')
const MathLesson = loadComponent('src/MathStudyLesson.jsx')
for (const topic of advancedMathSummaries) {
  const explorer = renderToStaticMarkup(React.createElement(Explorer, { topicId: topic.id }))
  assert.ok(explorer.includes('<output'), topic.id)
  assert.ok(!/NaN|Infinity|undefined/.test(explorer), `Valores iniciais válidos: ${topic.id}`)
  const lesson = renderToStaticMarkup(React.createElement(MathLesson, { topicId: topic.id, lesson: topic.mathLesson }))
  assert.ok(lesson.includes('Exemplos práticos resolvidos'))
  assert.ok(lesson.includes('Confira o que você aprendeu'))
}

const calculate = keys => keys.reduce(calculatorStep, initialCalculator).display
assert.equal(calculate(['1', '5', '0', '×', '2', '0', '%', '=']), '30')
assert.equal(calculate(['0', '.', '1', '+', '0', '.', '2', '=']), '0.3')
assert.equal(calculate(['8', '÷', '0', '=']), 'Erro')
assert.equal(calculate(['2', '+', '3', '×', '4', '=']), '20')
assert.equal(calculate(['2', '+', '×', '3', '=']), '6')
assert.equal(calculate(['5', '±', '×', '2', '=']), '-10')
assert.equal(calculate(['9', 'AC', '2']), '2')
assert.equal(calculate(['1', '2', '⌫']), '1')

console.log('Expansão validada: 15 aulas, 45 gabaritos locais, 8 explorações/aulas renderizadas, podcasts e calculadora.')
