import assert from 'node:assert/strict'
import { readFile, access } from 'node:fs/promises'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
import { pismOfficialSource, pismExamDetails, pismSelectionLabel } from '../src/lib/pismSources.js'

// Gabaritos UFJF/COPESE: dia 1 (dezembro/2024), dia 2 após recursos (janeiro/2025).
const officialAnswers = {
  1: 'B A C A B B A D A E C E B D A E E A A D'.split(' '),
  2: 'E B D B B B B B E D A A E C/E B/C B C D E A'.split(' '),
}
const sql = await readFile(new URL('../supabase/seed-pism-ii-2025.sql', import.meta.url), 'utf8')
assert.equal((sql.match(/insert into public.questions/g) || []).length, 40)
for (const day of [1, 2]) {
  const questions = JSON.parse(await readFile(new URL(`../pdf-extracts/pism-ii-2025/questoes-dia-${day}.json`, import.meta.url), 'utf8'))
  assert.deepEqual(questions.map((q) => q.number), Array.from({ length: 20 }, (_, i) => i + 1))
  assert.deepEqual(questions.map((q) => q.answer), officialAnswers[day])
  for (const question of questions) {
    assert.equal(question.options.length, 5)
    assert.ok(question.explanation && question.explanation.length > 80)
    assert.ok(question.options.every((option) => typeof option === 'string' && option.trim()))
    assert.ok(!/[\u0000-\u001f\ufffd]/.test(question.text + question.options.join('')))
    for (const option of 'ABCDE') {
      assert.equal(isCorrectAnswer(option, question.answer), officialAnswers[day][question.number - 1].split('/').includes(option))
    }
    assert.equal(isCorrectAnswer(undefined, question.answer), false)
    if (question.support_image) await access(new URL(`../public${question.support_image}`, import.meta.url))
    assert.ok(pismOfficialSource(`pism-ii-2025-dia-${day}`, question.number).includes('#page='))
  }
}
assert.equal(isCorrectAnswer(' c ', ' C / E '), true)
assert.equal(isCorrectAnswer('', 'C/E'), false)
assert.equal(isCorrectAnswer('C/E', 'C/E'), false)
assert.equal(pismOfficialSource('enem-2025', 1), undefined)
for (const year of [2023, 2024, 2025]) for (const day of [1, 2]) {
  assert.equal(pismExamDetails('pism-' + year + '-' + day).year, year + 1)
  assert.equal(pismSelectionLabel(year + '-' + day), (year + 1) + ' · ' + day + 'º dia')
  for (let number = 1; number <= 20; number++) assert.match(pismOfficialSource('pism-' + year + '-' + day, number), /#page=\d+$/)
}
const updateSql = await readFile(new URL('../supabase/update-explanations-pism-ii-2025.sql', import.meta.url), 'utf8')
assert.equal((updateSql.match(/update public.questions q set explanation =/g) || []).length, 40)
assert.ok(pismOfficialSource('pism-ii-2025-dia-1', 11).endsWith('#page=10'))
assert.ok(pismOfficialSource('pism-ii-2025-dia-2', 14).endsWith('#page=8'))
console.log('PISM II 2025: 40 questões, gabaritos, correção, figuras e links verificados.')
