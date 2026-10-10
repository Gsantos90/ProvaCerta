import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'
import { pmerjRolesConfig, pmerjOfficialSource } from '../src/lib/pmerjExams.js'

const manifest = JSON.parse(readFileSync('docs/pmerj-arquivos.json', 'utf8'))
const imported = new Map(JSON.parse(readFileSync('pdf-extracts/pmerj-ate-2020/importacao.json', 'utf8')).map(exam => [exam.slug, exam]))
const env = Object.fromEntries(readFileSync('.env.local', 'utf8').split(/\r?\n/).filter(line => line.includes('=')).map(line => {
  const split = line.indexOf('=')
  return [line.slice(0, split), line.slice(split + 1).trim().replace(/^['"]|['"]$/g, '')]
}))
const client = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_PUBLISHABLE_KEY, { auth: { persistSession: false, autoRefreshToken: false } })
let total = 0
for (const item of manifest) {
  assert.ok(Object.values(pmerjRolesConfig).some(role => role.years.some(year => year.slug === item.slug)))
  const { data: exam, error: examError } = await client.from('exams').select('id,source,year').eq('slug', item.slug).single()
  assert.equal(examError, null, item.slug)
  assert.equal(exam.source, 'pmerj')
  const { data: questions, error } = await client.from('questions').select('number,subject,text,support,options,answer,explanation,support_image').eq('exam_id', exam.id).order('number')
  assert.equal(error, null, item.slug)
  assert.equal(questions.length, item.question_count, item.slug)
  for (const [index, q] of questions.entries()) {
    const expected = imported.get(item.slug).questions[index]
    for (const field of ['subject','text','support','options','answer','explanation','support_image']) assert.deepEqual(q[field], expected[field], `${item.slug} ${q.number} ${field}`)
    assert.equal(q.number, index + 1)
    assert.ok(q.explanation?.trim().length > 20)
    assert.ok(q.options.length === 4 || q.options.length === 5)
    assert.ok(q.answer === 'A/B/C/D/E' || 'ABCDE'.slice(0, q.options.length).includes(q.answer))
    assert.ok(pmerjOfficialSource(item.slug, q.number).startsWith('https://arquivos.qconcursos.com/'))
    for (const image of JSON.parse(q.support_image || '[]')) assert.ok(existsSync('public' + image), image)
  }
  total += questions.length
}
const { data: existing, error: existingError } = await client.from('exams').select('id').eq('slug', 'pmerj-2024-soldado').single()
assert.equal(existingError, null)
const { count, error: countError } = await client.from('questions').select('id', { head: true, count: 'exact' }).eq('exam_id', existing.id)
assert.equal(countError, null)
assert.equal(count, 50)
console.log(`${manifest.length} archival PMERJ exams, ${total} questions and explanations checked in the live database. The existing 2024 exam remains intact.`)
