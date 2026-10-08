import assert from 'node:assert/strict'
import fs from 'node:fs'
import { correiosOfficialSource } from '../src/lib/correiosSources.js'

const root = new URL('../', import.meta.url)
const read = path => fs.readFileSync(new URL(path, root), 'utf8')
const rows = JSON.parse(read('pdf-extracts/correios-2011/questions.json'))
const roles = [
  ['atendente-comercial', 'COR11_001_11'],
  ['carteiro', 'COR11_002_21'],
  ['operador-triagem', 'COR11_003_31'],
]
assert.equal(rows.length, 180)
for (const [role, file] of roles) {
  const slug = `correios-2011-${role}`
  const exam = rows.filter(q => q.slug === slug)
  assert.deepEqual(exam.map(q => q.number), Array.from({ length: 60 }, (_, i) => i + 1))
  const official = read(`pdf-extracts/correios-2011/Definitivo_${file}.PDF.txt`)
    .split('\n').filter(line => line.trim().startsWith('Gabarito'))
    .flatMap(line => line.match(/\b[ABCDEX]\b/g) || [])
  assert.equal(official.length, 60)
  for (const q of exam) {
    assert.equal(q.answer, official[q.number - 1] === 'X' ? 'A/B/C/D/E' : official[q.number - 1])
    assert.equal(q.options.length, 5)
    assert.ok(q.options.every(option => option.length > 1))
    assert.ok(q.text.length > 5, `${slug} questão ${q.number}: enunciado vazio`)
    assert.ok(!q.text.includes('QUESTÃO') && !q.text.includes('Caderno'))
    assert.equal(q.subject, q.number <= 20 ? 'Informática' : q.number <= 40 ? 'Matemática' : 'Língua Portuguesa')
    assert.ok(correiosOfficialSource(slug, q.number).includes(`${file}.pdf#page=`))
    if (q.support_image) {
      const paths = q.support_image.startsWith('[') ? JSON.parse(q.support_image) : [q.support_image]
      for (const path of paths) assert.ok(fs.existsSync(new URL(`public${path}`, root)))
    }
  }
  assert.equal(correiosOfficialSource(slug, 0), null)
  assert.equal(correiosOfficialSource(slug, 61), null)
}
assert.equal(correiosOfficialSource('correios-2024-carteiro', 1), null)
const get = (role, number) => rows.find(q => q.slug === `correios-2011-${role}` && q.number === number)
for (const [role, numbers] of [
  ['atendente-comercial', [1, 2, 3]], ['atendente-comercial', [9, 10, 11, 12]],
  ['atendente-comercial', [15, 16]], ['atendente-comercial', [42, 43]],
  ['carteiro', [21, 22]], ['carteiro', [26, 27]], ['carteiro', [28, 29, 30]],
  ['carteiro', [41, 42, 43, 44, 45]], ['carteiro', [46, 47]],
  ['carteiro', [49, 50, 51]], ['operador-triagem', [6, 7]],
  ['operador-triagem', [13, 14, 15, 16]], ['operador-triagem', [32, 33]],
]) {
  assert.ok(get(role, numbers[0]).support.length > 30 || get(role, numbers[0]).support_image)
  for (const n of numbers) assert.equal(get(role, n).support, get(role, numbers[0]).support)
}
assert.ok(get('carteiro', 34).text.includes('7/10') && get('carteiro', 34).text.includes('3/5'))
assert.equal(get('carteiro', 26).options[0], 'mais de 1/4 e menos de 1/3.')
assert.ok(get('operador-triagem', 26).text.includes('5/8') && get('operador-triagem', 26).text.includes('1/5'))
assert.ok(get('atendente-comercial', 22).text.includes('7/40'))
for (const n of [31, 39]) assert.ok(get('operador-triagem', n).support_image)
assert.equal(get('atendente-comercial', 3).options[1], 'Inserir.')
for (const n of [3, 12]) assert.equal(JSON.parse(get('atendente-comercial', n).support_image).length, 2)
assert.equal(get('operador-triagem', 8).options[2], 'Adicionar hardware.')
const sql = read('supabase/seed-correios-2011.sql')
assert.ok(sql.includes('BEGIN;') && sql.includes('COMMIT;') && sql.includes('ON CONFLICT (exam_id,number)'))
assert.ok(!sql.includes('correios-2024-') && !/\bDELETE\b|\bTRUNCATE\b/.test(sql))
const payload = JSON.parse(sql.split('$correios$')[1])
assert.deepEqual(payload, rows)
console.log('Correios: 3 provas / 180 questões validadas contra os gabaritos definitivos; apoios, imagens, fontes e SQL conferidos.')
