import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
import { attemptSource } from '../src/lib/catalogProgress.js'
import { militaryQuestionMedia } from '../src/lib/militaryExams.js'
const exams = JSON.parse(readFileSync('pdf-extracts/militares-2026/catalogo.json', 'utf8'))
assert.equal(exams.length, 5)
assert.equal(exams.reduce((total, exam) => total + exam.questions.length, 0), 250)
for (const exam of exams) {
  const expected = exam.source === 'esa' ? 50 : exam.slug.endsWith('1') ? 44 : 56
  assert.equal(exam.questions.length, expected)
  assert.equal(attemptSource({ exam_title: exam.title }), exam.source)
  assert.ok(existsSync(`supabase/seed-${exam.slug}.sql`))
  for (const [index, question] of exam.questions.entries()) {
    assert.equal(question.number, index + 1)
    assert.equal(question.options.length, 5)
    assert.ok(question.text.trim())
    assert.match(question.answer, /^(?:[A-E]|A\/B\/C\/D\/E)$/)
    assert.ok(!question.text.startsWith('QUESTÃO'))
    assert.ok(question.options.every(option => option.trim() && !/^Alternativa [A-E]$/.test(option)))
    assert.ok(!question.support_image?.trim().startsWith('{'))
    const media = militaryQuestionMedia(question.support_image)
    assert.equal(media.questionImages, undefined)
    assert.equal(media.fullQuestion, undefined)
    for (const image of (media.supportImage || '').split(',').filter(Boolean)) {
      assert.ok(existsSync(`public${image}`), image)
      assert.ok(!/-q\d+\.png$/.test(image), 'Recortes da questão inteira não são imagens de apoio')
    }
    for (const value of [question.text, question.support || '', ...question.options]) assert.ok(!/[\uE000-\uF8FF]/.test(value), `${exam.slug} questão ${question.number}: glifo não convertido`)
  }
}
const final = exams.find(exam => exam.slug === 'espcex-2026-dia-2')
assert.equal(final.questions[8].answer, 'A/B/C/D/E')
assert.equal(isCorrectAnswer(undefined, final.questions[8].answer), true)
assert.equal(isCorrectAnswer('B', final.questions[0].answer), true)
assert.equal(isCorrectAnswer('A', final.questions[0].answer), false)
const original = JSON.parse(readFileSync('pdf-extracts/militares-2026/catalogo-recortes-originais.json', 'utf8'))
for (const exam of exams) {
  const before = original.find(item => item.slug === exam.slug)
  assert.deepEqual(exam.questions.map(q => q.answer), before.questions.map(q => q.answer))
  if (exam.source === 'esa') {
    assert.equal(exam.questions[0].support_image, null)
    assert.ok(exam.questions[1].support_image)
    assert.ok(exam.questions[exam.slug.endsWith('geral') ? 14 : 10].support?.startsWith('TEXTO I'))
  }
}
const day1 = exams.find(exam => exam.slug === 'espcex-2026-dia-1')
for (let n = 16; n <= 22; n++) assert.ok(day1.questions[n - 1].support)
assert.match(day1.questions[23].options[2], /√/)
const music = exams.find(exam => exam.slug === 'esa-2026-musica')
for (let n = 43; n <= 46; n++) assert.ok(music.questions[n - 1].support_image.includes('partitura'))
console.log('Cinco provas, 250 enunciados e 1.250 alternativas em texto; figuras de apoio e gabaritos preservados.')
