import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { EFOMM_SLUGS, loadEfommExam } from '../src/lib/efommExam.js'
import { isCorrectAnswer, isAnnulledAnswer } from '../src/lib/examAnswers.js'

for (const slug of EFOMM_SLUGS) {
  const [, year, , day] = slug.split('-')
  const exam = JSON.parse(readFileSync(`public/provas/efomm/${year}/dia-${day}.json`, 'utf8'))
  assert.equal(exam.slug, slug)
  assert.equal(exam.questions.length, 40)
  assert.deepEqual(exam.questions.map(q => q.number), Array.from({ length: 40 }, (_, i) => i + 1))
  for (const q of exam.questions) {
    assert.equal(q.options.length, 5)
    assert(q.options.every(option => typeof option === 'string' && option.trim().length > 0))
    assert(q.text.length > 15)
    assert.equal(Boolean(q.annulled), isAnnulledAnswer(q.answer))
    if (q.annulled) assert(isCorrectAnswer(undefined, q.answer))
    for (const image of q.supportImage || []) assert(existsSync(`public${image}`), image)
    assert(!q.questionImage)
  }
  const counts = Object.values(Object.groupBy(exam.questions, q => q.subject)).map(rows => rows.length)
  assert.deepEqual(counts, [20, 20])
  const expectedAnnulled = { '2025-1': [16, 24], '2025-2': [40], '2026-1': [], '2026-2': [5, 26] }
  assert.deepEqual(exam.questions.filter(q => q.annulled).map(q => q.number), expectedAnnulled[`${year}-${day}`])
  if (year === '2026' && day === '2') assert.equal(exam.questions[38].answer, 'D')
  if (year === '2026' && day === '1') assert.equal(exam.questions[32].answer, 'C')
  globalThis.fetch = async () => ({ ok: true, json: async () => exam })
  const loaded = await loadEfommExam(slug)
  assert.equal(loaded[0].examSlug, slug)
  assert(loaded[0].sourceUrl.endsWith(`#page=${exam.questions[0].page}`))
  console.log(`${slug}: 40 questões, gabarito definitivo, anulações, figuras e carregamento verificados`)
}
await assert.rejects(() => loadEfommExam('efomm-2027-dia-1'))
globalThis.fetch = async () => ({ ok: false })
await assert.rejects(() => loadEfommExam('efomm-2026-dia-1'))
globalThis.fetch = async () => ({ ok: true, json: async () => ({ slug: 'efomm-2026-dia-1', questions: [] }) })
await assert.rejects(() => loadEfommExam('efomm-2026-dia-1'))
