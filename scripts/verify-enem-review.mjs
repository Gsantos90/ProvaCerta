import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'

const sql = readFileSync('supabase/update-enem-review-2026-10-25.sql', 'utf8')
const patches = JSON.parse(sql.split('$enem_review$')[1])
assert.equal(patches.length, 42)
assert.equal(new Set(patches.map(p => `${p.slug}:${p.number}`)).size, patches.length)
assert.ok(!/delete from|drop table|alter table/i.test(sql))
assert.ok(sql.includes('for update') && sql.includes('raise exception'))

for (const patch of patches) {
  for (const field of Object.keys(patch.after)) {
    assert.ok(['text', 'support', 'support_image'].includes(field), 'Não alterar gabaritos, alternativas ou IDs')
    assert.ok(Object.hasOwn(patch.before, field))
  }
  if (patch.after.support_image) {
    for (const src of patch.after.support_image.split(',')) {
      assert.ok(src === src.trim() && src.length)
      if (src.startsWith('http')) continue
      const file = `public${src}`
      assert.ok(existsSync(file), file)
      const png = readFileSync(file)
      assert.equal(png.toString('ascii', 1, 4), 'PNG')
      assert.ok(png.readUInt32BE(16) > 100 && png.readUInt32BE(20) > 60)
    }
  }
}
const q9 = patches.find(p => p.slug === 'enem-2022' && p.number === 9)
assert.ok(q9.after.text.startsWith('O discurso da jornalista'))
const q16 = patches.find(p => p.slug === 'enem-2022' && p.number === 16)
assert.equal(q16.after.support, '')
assert.equal(q16.after.support_image.split(',').length, 1)
assert.ok(readFileSync(`public${q16.after.support_image}`).readUInt32BE(16) > 1200)

for (const year of [2022, 2023, 2025]) {
  const rows = JSON.parse(readFileSync(`pdf-extracts/enem-migration/${year}-questions.json`, 'utf8'))
  for (const patch of patches.filter(p => p.slug === `enem-${year}`)) {
    const row = rows.find(q => q.number === patch.number)
    for (const [field, value] of Object.entries(patch.after)) assert.deepEqual(row[field], value)
  }
}

if (process.argv.includes('--database')) {
  const env = Object.fromEntries(readFileSync('.env.local', 'utf8').split(/\r?\n/).filter(l => l.includes('=')).map(l => {
    const i = l.indexOf('=')
    return [l.slice(0, i), l.slice(i + 1).trim().replace(/^['"]|['"]$/g, '')]
  }))
  const db = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_PUBLISHABLE_KEY)
  const { data: exams, error } = await db.from('exams').select('id,slug').in('slug', ['enem-2022', 'enem-2023', 'enem-2024', 'enem-2025'])
  if (error) throw error
  const before = JSON.parse(readFileSync('pdf-extracts/enem-review-2026-10-25/database-before.json', 'utf8'))
  for (const exam of exams) {
    const { data: rows, error } = await db.from('questions').select('id,number,text,support,support_image,options,answer,explanation').eq('exam_id', exam.id).order('number')
    if (error) throw error
    assert.equal(rows.length, 185)
    const previous = before.find(e => e.slug === exam.slug)
    for (const old of previous.questions) {
      const row = rows.find(q => q.id === old.id)
      assert.ok(row)
      const patch = patches.find(p => p.id === old.id)
      for (const field of ['id', 'number', 'options', 'answer', 'explanation']) assert.deepEqual(row[field], old[field], `${exam.slug}/${old.number}: ${field}`)
      for (const field of ['text', 'support', 'support_image']) assert.deepEqual(row[field], patch && Object.hasOwn(patch.after, field) ? patch.after[field] : old[field], `${exam.slug}/${old.number}: ${field}`)
    }
  }
  console.log('Banco: 740 questões conferidas; somente os campos previstos mudaram, com IDs e gabaritos preservados.')
}
console.log('Revisão ENEM: 42 ajustes, referências de imagens, fixtures e proteções da query validados.')
