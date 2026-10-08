import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { fuvestOfficialSource } from '../src/lib/fuvestSources.js'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
const read = path => readFileSync(new URL(path, import.meta.url), 'utf8')
const questions = JSON.parse(read('../pdf-extracts/usp-2025/questoes.json'))
const answers = ['EBBCACCEDA','DDBADCCEBE','BEDCBEEDCB','BEBEEECADC','CECCEDCDAD','BDAACEAADD','CDEBCDAABA','CAADADEBDE','DDDBBBAEEB'].join('')
assert.equal(answers.length, 90)
assert.deepEqual(questions.map(q => q.number), Array.from({ length: 90 }, (_, i) => i + 1))
let images = new Set()
for (const q of questions) {
  assert.equal(q.answer, answers[q.number - 1], 'Gabarito V1: questão ' + q.number)
  assert.equal(q.options.length, 5)
  assert.ok(q.text && q.explanation && q.options.every(o => o.trim()))
  assert.ok(!/\(cid:|#####/.test(JSON.stringify(q)))
  assert.ok(isCorrectAnswer(q.answer, q.answer))
  assert.ok(!isCorrectAnswer(undefined, q.answer))
  assert.equal(fuvestOfficialSource('usp-2025-v1', q.number).split('#page=')[1], String(q.page))
  for (const path of (q.support_image || '').split(',').filter(Boolean)) {
    assert.ok(existsSync(new URL('../public' + path, import.meta.url)), path)
    images.add(path)
  }
}
assert.equal(images.size, 41)
assert.equal(fuvestOfficialSource('usp-2025-v1', 0), undefined)
assert.equal(fuvestOfficialSource('usp-2025-v1', 91), undefined)
assert.equal(fuvestOfficialSource('usp-2026-v1', 1), undefined)
assert.ok(questions[17].options[4].includes('10⁶'))
assert.ok(questions[57].options[0].includes('10¹'))
assert.ok(questions[73].support.includes('10⁵'))
assert.ok(questions[37].support.includes('Resumo'))
for (const n of [60,69]) assert.ok(questions[n-1].support_image && questions[n-1].options.every(o=>o.startsWith('Gráfico ')))
assert.equal(questions[72].support_image, questions[73].support_image)
assert.ok(!questions[40].text.includes('Like you are'))
assert.ok(!questions[60].text.includes("There's a problem"))
assert.ok(!questions[89].text.includes('Brasil, meu Brasil'))

const sql = read('../supabase/seed-usp-2025-v1.sql')
assert.equal((sql.match(/insert into public.questions/g) || []).length, 90)
assert.equal((sql.match(/on conflict \(exam_id,number\)/g) || []).length, 90)
assert.ok(sql.includes('support_image=excluded.support_image'))
assert.ok(sql.includes("'usp','2025'") && sql.includes('begin;') && sql.trim().endsWith('commit;'))
assert.ok(!sql.includes('delete from') && !sql.includes('drop table'))
const sqlOptions = [...sql.matchAll(/'(\[.*\])'::jsonb/g)].map(m => JSON.parse(m[1].replaceAll("''", "'")))
assert.deepEqual(sqlOptions, questions.map(q => q.options))
for (const q of questions) {
  assert.ok(sql.includes("'" + q.text.replaceAll("'", "''") + "'"))
}
const main = read('../src/main.jsx')
assert.ok(main.includes("slug: 'usp-2025-v1'") && main.includes("slug: 'usp-2026-v1'"))
assert.ok(main.includes("question.sourceUrl.includes('fuvest.br') ? 'da FUVEST'"))
// Renderiza a tela real da prova e do card com o banco desativado, sem consultas.
const source = main.replace(/createRoot\(document[\s\S]*$/, '') + '\nexport { App }'
const output = buildSync({
  stdin: { contents: source, resolveDir: process.cwd() + '/src', loader: 'jsx' },
  bundle: true, platform: 'node', format: 'cjs', write: false,
  external: ['react','react-dom/client','lucide-react','@supabase/supabase-js'],
  loader: { '.css': 'empty' }, define: { 'import.meta.env': '{}' }
}).outputFiles[0].text
const mod = { exports: {} }
new Function('module', 'exports', 'require', output)(mod, mod.exports, createRequire(import.meta.url))
const stateNames = [...main.slice(main.indexOf('function App()'), main.indexOf('const beginSession')).matchAll(/const \[([^,]+),[^\]]+\] = useState/g)].map(m=>m[1].trim())
const mapped = questions.map(q=>({ ...q, supportImage:q.support_image, examSlug:'usp-2025-v1', sourceUrl:fuvestOfficialSource('usp-2025-v1',q.number) }))
const originalState = React.useState
function render(overrides) {
  let index = 0
  React.useState = initial => {
    const name = stateNames[index++]
    return originalState(Object.hasOwn(overrides,name) ? overrides[name] : initial)
  }
  try { return renderToStaticMarkup(React.createElement(mod.exports.App)) }
  finally { React.useState = originalState }
}
const base = { selectedExam:'usp', uspYear:'2025', uspEdition:'v1', supabaseExamSlug:'usp-2025-v1', enemQuestions:mapped }
for (const n of [1,38,60,69,73,74,86,90]) {
  const html = render({ ...base, screen:'review', current:n-1 })
  assert.ok(html.includes('USP 2025') && html.includes('da FUVEST'))
  assert.ok(html.includes('#page='+questions[n-1].page))
  assert.ok(html.includes('Informar problema') && html.includes('Como chegar na resposta correta'))
  if (questions[n-1].support_image) assert.ok(html.includes(questions[n-1].support_image.split(',')[0]))
}
const setup = render({ ...base, screen:'exam-setup' })
assert.ok(setup.includes('90') && setup.includes('Modo de prova') && setup.includes('Estudo livre'))
const catalog = render({ screen:'catalog', catalogSearch:'USP', uspYear:'2025', uspEdition:'v1' })
assert.ok(catalog.includes('value="2025" selected') && catalog.includes('value="2026"'))
console.log('FUVEST 2025: 90 questões e gabaritos oficiais, 90 explicações, 41 figuras, SQL, símbolos, links, seletor, modo de prova e revisão verificados.')
