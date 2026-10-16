import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createHash } from 'node:crypto'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
import { attemptSource } from '../src/lib/catalogProgress.js'
import { attemptPayload } from '../src/lib/studyHistory.js'
import { loadItaExam, ITA_SLUG } from '../src/lib/itaExam.js'

const path = 'public/provas/ita/2026/'
const exam = JSON.parse(readFileSync(path + 'catalogo.json', 'utf8'))
const sources = JSON.parse(readFileSync('docs/ita-2026-sources.json', 'utf8'))
assert.equal(exam.questions.length, 48)
assert.equal(exam.durationMinutes, 300)
assert.equal(attemptSource({ exam_title: exam.title }), 'ita')
const expected = 'D B E C D A/B/C/D/E A B D E A B B A D C A E B C D E C C A E D B E B E A B A A C D C C B A D C B B B D C'.split(' ')
assert.deepEqual(exam.questions.map(q => q.answer), expected)
for (const [i, q] of exam.questions.entries()) {
  assert.equal(q.number, i + 1)
  assert.equal(q.subject, ['Matemática', 'Física', 'Química', 'Língua Inglesa'][Math.floor(i / 12)])
  assert.equal(q.options.length, 5)
  assert.equal(q.questionImage, undefined)
  assert.ok(q.text.length > 35)
  assert.ok(!/recorte oficial|Leia a questão no|Questão \d+\./.test(q.text))
  assert.ok(q.options.every(option => option.trim() && !/^Alternativa [A-E]$/.test(option)))
  assert.ok(q.support.length > 50)
  if (q.supportImage) {
    assert.match(q.supportImage, /figura-(16|17|18|21|22|24)\.png$/)
    assert.ok(existsSync('public' + q.supportImage))
  }
}
assert.deepEqual(exam.questions.filter(q => q.supportImage).map(q => q.number), [16, 17, 18, 21, 22, 24])
assert.match(exam.questions[45].support, /Without that, there’s no emotion/, 'Last English text joins both pages')
assert.match(exam.questions[45].support, /A Midsummer Night’s Dream/)
assert.equal(exam.questions[0].options[3], '√3.')
assert.equal(exam.questions[1].options[1], '0,5112.')
assert.match(exam.questions[6].options[0], /√2\/4/)
assert.match(exam.questions[28].text, /Cl₂ \+ 2e⁻ ⇌ 2Cl⁻ — 1,36/)
assert.ok(isCorrectAnswer(undefined, exam.questions[5].answer))
assert.equal(isCorrectAnswer('A', exam.questions[0].answer), false)
for (const [name, hash] of Object.entries(sources.hashes)) {
  assert.equal(createHash('sha256').update(readFileSync(path + name)).digest('hex'), hash)
}
// Exercise the actual local loader and existing scoring/history contract.
const originalFetch = globalThis.fetch
try {
  globalThis.fetch = async () => ({ ok: true, json: async () => exam })
  const loaded = await loadItaExam()
  assert.equal(loaded[0].examSlug, ITA_SLUG)
  assert.match(loaded[47].sourceUrl, /#page=25$/)
  const result = attemptPayload({ session: { id: 'ita-test', startedAt: 1, endedAt: 2 }, questions: loaded,
    answers: { 0: 'D', 1: 'A' }, title: exam.title, binary: false, userId: 'test', source: 'ita' })
  assert.deepEqual([result.correct, result.wrong, result.blank, result.annulled, result.points], [1, 1, 45, 1, 2])
  assert.equal(result.mistakes[0].text, loaded[1].text)
  assert.deepEqual(result.mistakes[0].options, loaded[1].options)
  globalThis.fetch = async () => ({ ok: false })
  await assert.rejects(loadItaExam(), /Não foi possível/)
} finally { globalThis.fetch = originalFetch }
console.log('ITA 2026: 48 enunciados e 240 alternativas em texto, seis figuras, apoios, gabarito e pontuação verificados.')
