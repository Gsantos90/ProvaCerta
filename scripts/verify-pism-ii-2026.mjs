import assert from 'node:assert/strict'
import { readFile, access } from 'node:fs/promises'
import { isCorrectAnswer, isAnnulledAnswer } from '../src/lib/examAnswers.js'
import { pismOfficialSource, pismExamDetails, pismSelectionLabel } from '../src/lib/pismSources.js'
const read = (path) => readFile(new URL(path, import.meta.url), 'utf8')
const sql = await read('../supabase/seed-pism-ii-2026.sql')
assert.equal((sql.match(/insert into public.exams/g) || []).length, 2)
assert.equal((sql.match(/insert into public.questions/g) || []).length, 40)
assert.equal((sql.match(/on conflict \(exam_id,number\) do update/g) || []).length, 40)
assert.ok(sql.includes('begin;') && sql.includes('commit;'))
const pages = {
  1: [3,3,4,6,6,7,7,8,8,9,9,10,10,10,11,11,12,12,12,12],
  2: [3,3,4,5,5,6,6,6,7,7,8,8,9,9,9,10,10,11,11,12],
}
let images = 0
for (const day of [1, 2]) {
  // Leitura independente dos gabaritos extraídos dos PDFs, inclusive ANULADA.
  const officialText = await read(`../pdf-extracts/pism-ii-2026/gabarito-dia-${day}.txt`)
  const lines = officialText.match(/^(?:[A-E]|ANULADA)(?: (?:[A-E]|ANULADA)){4}\r?$/gm)
  assert.equal(lines.length, 4)
  const official = lines.flatMap((line) => line.trim().split(/\s+/))
  const questions = JSON.parse(await read(`../pdf-extracts/pism-ii-2026/questoes-dia-${day}.json`))
  assert.deepEqual(questions.map((q) => q.number), Array.from({ length: 20 }, (_, i) => i + 1))
  const slug = `pism-ii-2026-dia-${day}`
  assert.equal(pismExamDetails(slug).module, 'II')
  assert.equal(pismSelectionLabel(`2026-ii-${day}`), `2026 · ${day}º dia`)
  for (const q of questions) {
    assert.equal(q.options.length, 5)
    assert.ok(q.options.every((option) => typeof option === 'string' && option.trim()))
    assert.ok(q.explanation && q.explanation.length > 100)
    assert.ok(!/[\u0000-\u0008\u000b\u000c\u000e-\u001f\ufffd]/.test(q.text + q.options.join('') + q.explanation))
    assert.ok(q.support.includes('Redação adaptada'))
    const annulled = official[q.number - 1] === 'ANULADA'
    assert.equal(isAnnulledAnswer(q.answer), annulled)
    assert.equal(q.answer, annulled ? 'A/B/C/D/E' : official[q.number - 1])
    for (const selected of 'ABCDE') assert.equal(isCorrectAnswer(selected, q.answer), annulled || selected === official[q.number - 1])
    assert.equal(isCorrectAnswer(undefined, q.answer), annulled)
    assert.equal(isCorrectAnswer('', q.answer), annulled)
    assert.ok(pismOfficialSource(slug, q.number).endsWith(`#page=${pages[day][q.number - 1]}`))
    assert.ok(sql.includes(`'${q.answer}', '${q.explanation.replaceAll("'", "''")}'`))
    if (q.support_image) { images++; await access(new URL(`../public${q.support_image}`, import.meta.url)) }
  }
  // Mesmo sem nenhuma resposta, apenas o ponto da questão anulada é computado.
  assert.equal(questions.reduce((score, q) => score + Number(isCorrectAnswer(undefined, q.answer)), 0), day === 2 ? 1 : 0)
  assert.equal(questions.reduce((score, q, i) => score + Number(isCorrectAnswer(official[i] === 'ANULADA' ? undefined : official[i], q.answer)), 0), 20)
}
assert.equal(images, 5)
assert.equal(isAnnulledAnswer(' e / d / c / b / a '), true)
assert.equal(isAnnulledAnswer('A/B/C/D'), false)
assert.equal(isAnnulledAnswer('A/B/C/D/F'), false)
assert.equal(isAnnulledAnswer(null), false)
assert.equal(isCorrectAnswer(undefined, 'C/E'), false)
assert.equal(isCorrectAnswer('C', 'C/E'), true)
assert.equal(isCorrectAnswer('E', 'C/E'), true)
assert.equal(isCorrectAnswer('B', 'C/E'), false)
const main = await read('../src/main.jsx')
for (const day of [1, 2]) {
  assert.ok(main.includes(`'2026-ii-${day}': 'pism-ii-2026-dia-${day}'`))
  assert.ok(main.includes(`'pism-ii-2026-dia-${day}': 'pism-ii-2026-dia-${day}'`))
}
for (const value of ['2026-ii-1', '2026-ii-2', '2025-ii-1', '2025-ii-2']) assert.ok(main.includes(`'${value}'`))
console.log('PISM II 2026: 40 questões, gabaritos dos PDFs, 5 figuras, links, seleção e anulação verificados.')