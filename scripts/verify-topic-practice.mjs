import assert from 'node:assert/strict'
import { practiceTopics, summaryPracticeQuestions, localSummaryRound } from '../src/lib/summaryPractice.js'
import { expandedPractice } from '../src/lib/expandedPractice.js'
import { authorQuestionBank } from '../src/lib/authorQuestionBank.js'
import { previousAuthorRound, rememberAuthorRound } from '../src/lib/authorPractice.js'

const stored = new Map()
Object.defineProperty(globalThis, 'localStorage', { configurable: true, value: {
  getItem: key => stored.get(key) ?? null,
  setItem: (key, value) => stored.set(key, value),
} })

const correctOption = question => question.options['ABCDE'.indexOf(question.answer)]
const byId = new Map(summaryPracticeQuestions.map(question => [question.authoredId, question]))
assert.equal(byId.size, summaryPracticeQuestions.length, 'IDs globais únicos')

for (const topic of practiceTopics) {
  const questions = summaryPracticeQuestions.filter(question => question.topicId === topic.id)
  assert.equal(questions.length, 20, topic.id)
  assert.equal(topic.authoredCount, questions.length)
  assert.equal(new Set(questions.map(question => question.text.trim())).size, 20, `Enunciados únicos: ${topic.id}`)
  for (const question of questions) {
    assert.ok(question.text && question.explanation && correctOption(question), question.authoredId)
    assert.equal(new Set(question.options).size, question.options.length)
    assert.ok(question.options.every(option => typeof option === 'string' && option.trim()))
    assert.equal(question.origin, 'author')
    assert.equal(question.examSlug, `author:${topic.id}`)
  }

  let lastIds = []
  for (let round = 0; round < 20; round++) {
    const selected = localSummaryRound(topic.id)
    assert.equal(selected.length, 10)
    assert.equal(new Set(selected.map(question => question.authoredId)).size, 10)
    assert.ok(selected.every(question => !lastIds.includes(question.authoredId)), `Repetição na rodada: ${topic.id}`)
    rememberAuthorRound(topic.id, selected)
    lastIds = selected.map(question => question.authoredId)
    assert.deepEqual(previousAuthorRound(topic.id), lastIds)
  }
}

for (const [topicId, questions] of Object.entries(expandedPractice)) {
  for (const [text, correct, , , explanation] of questions) {
    const actual = summaryPracticeQuestions.find(question => question.topicId === topicId && question.text === text)
    assert.equal(correctOption(actual), correct, `Gabarito: ${text}`)
    assert.equal(actual.explanation, explanation)
  }
}
for (const original of authorQuestionBank) {
  const actual = byId.get(original.authoredId)
  assert.equal(actual.text, original.text)
  assert.equal(correctOption(actual), correctOption(original))
}

// Armazenamento corrompido ou indisponível preserva a alternância em memória.
const topicId = practiceTopics[0].id
stored.set('prova-certa:author-practice:v1', '{invalid')
const last = previousAuthorRound(topicId)
const next = localSummaryRound(topicId)
assert.ok(next.every(question => !last.includes(question.authoredId)))
Object.defineProperty(globalThis, 'localStorage', { configurable: true, get() { throw new Error('blocked') } })
rememberAuthorRound(topicId, next)
const following = localSummaryRound(topicId)
assert.ok(following.every(question => !next.some(previous => previous.authoredId === question.authoredId)))
assert.equal(localSummaryRound('assunto-inexistente'), null)
console.log(`${practiceTopics.length} assuntos, ${summaryPracticeQuestions.length} questões; gabaritos, IDs, metadados e 20 rodadas por assunto validados.`)
