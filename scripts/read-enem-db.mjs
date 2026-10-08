import { readFileSync, writeFileSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'
import assert from 'node:assert/strict'
const verify = process.argv.includes('--verify')
const env = Object.fromEntries(readFileSync('.env.local', 'utf8').split(/\r?\n/).filter(l => l.includes('=')).map(l => {
  const at = l.indexOf('=')
  return [l.slice(0, at), l.slice(at + 1).trim().replace(/^['"]|['"]$/g, '')]
}))
const db = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_PUBLISHABLE_KEY)
const { data: exams, error } = await db.from('exams').select('id,slug').in('slug', ['enem-2022', 'enem-2023', 'enem-2025'])
if (error) throw error
const result = []
for (const e of exams) {
  const { data, error } = await db.from('questions').select('id,number,text,support,support_image,options,answer').eq('exam_id', e.id).order('number')
  if (error) throw error
  if (verify) {
    const year = e.slug.split('-')[1]
    const expected = JSON.parse(readFileSync('pdf-extracts/enem-migration/' + year + '-questions.json', 'utf8'))
    assert.equal(data.length, 185)
    for (const q of expected) {
      const actual = data.find(r => r.number === q.number)
      assert.ok(actual, e.slug + '/' + q.number)
      for (const field of ['text', 'support', 'support_image', 'options', 'answer']) {
        assert.deepEqual(actual[field] ?? '', q[field] ?? '', e.slug + '/' + q.number + ': ' + field)
      }
    }
    if (year === '2025') {
      const before = JSON.parse(readFileSync('pdf-extracts/enem-migration/database-before.json', 'utf8')).find(r => r.slug === e.slug)
      for (const q of before.questions) assert.equal(data.find(r => r.number === q.number).id, q.id)
    }
  }
  result.push({ ...e, questions: data })
  console.log(e.slug, data.length, 'questões; questões em imagem:', data.filter(q => q.text?.includes('leia o enunciado')).length)
}
writeFileSync('pdf-extracts/enem-migration/database-' + (verify ? 'after' : 'before') + '.json', JSON.stringify(result, null, 2))
console.log(verify ? '555 questões conferidas campo a campo; IDs de 2025 preservados.' : 'Cópia dos campos atuais salva para conferir IDs e gabaritos após a atualização.')
