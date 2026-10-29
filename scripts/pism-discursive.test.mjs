import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { pismAreas, pismDiscursiveKey, pismAnswerId, pismDiscursiveSubjects, pismExamEditions, validPismDiscursiveDraft, validPismSubjectDraft } from '../src/lib/pismDiscursive.js'
import { pismExamDetails } from '../src/lib/pismSources.js'

const catalog = JSON.parse(readFileSync('public/pism-discursivas/questions.json', 'utf8'))
assert.equal(Object.keys(catalog).length, 36)
let total = 0
for (const [key, exam] of Object.entries(catalog)) {
  assert.equal(pismExamDetails(exam.slug).year, exam.year)
  assert.equal(pismExamDetails(exam.slug).day, exam.day)
  const selection = exam.module === 'I' ? `${exam.year-1}-${exam.day}` : `${exam.year}-${exam.module.toLowerCase()}-${exam.day}`
  assert.equal(pismDiscursiveKey(selection, exam.area), key)
  assert.equal(new URL(exam.source).hostname, 'www2.ufjf.br')
  assert.equal(new URL(exam.correction).hostname, 'www2.ufjf.br')
  assert.ok(exam.correction.includes(String(exam.year)))
  assert.equal(new Set(exam.sections.map(s => s.subject)).size, exam.sections.length)
  assert.deepEqual(pismDiscursiveSubjects(selection,exam.area),exam.sections.map(s => s.subject))
  assert.deepEqual(pismExamEditions(selection,exam.area).map(item => item.value),['objetiva',...exam.sections.map(s => s.subject)])
  const count = exam.sections.reduce((n,s) => n+s.count, 0)
  assert.equal(count, exam.module === 'III' ? 10 : 8)
  total += count
  const ids = new Set()
  for (const section of exam.sections) {
    assert.equal(section.questions.length, section.count)
    for (const [index,question] of section.questions.entries()) {
      assert.equal(question.number,index+1)
      assert.ok(question.text.trim().length>20,question.id)
      assert.ok(!/\(cid:|\ufffd/.test(question.text+question.support),question.id)
      assert.equal(question.subject,section.subject)
      assert.ok(question.fields.length>0)
      assert.equal(new Set(question.fields.map(field => field.id)).size, question.fields.length)
      for (const image of question.images) {
        assert.ok(!image.src.includes('pagina-'))
        assert.ok(existsSync(`public${image.src}`),image.src)
      }
    }
    for (let n=1; n<=section.count; n++) {
      const id = pismAnswerId(section,n)
      assert.ok(!ids.has(id)); ids.add(id)
    }
  }
}
assert.equal(total, 336)
for (const year of [2024,2025,2026]) for (const day of [1,2]) {
  for (const area of pismAreas) assert.ok(catalog[pismDiscursiveKey(`${year}-iii-${day}`,area.value)])
}
assert.equal(pismDiscursiveKey('invalid'), null)
assert.ok(validPismDiscursiveDraft({ answers: {}, finished: false }))
assert.ok(!validPismDiscursiveDraft({ answers: [], finished: false }))
assert.ok(!validPismDiscursiveDraft({ answers: { q: 1 }, finished: false }))
assert.ok(!validPismDiscursiveDraft({ answers: { q: 'a'.repeat(12001) }, finished: false }))
assert.ok(validPismSubjectDraft({ answers: { q: { a:'Minha resposta' } }, finished: false }))
assert.ok(!validPismSubjectDraft({ answers: { q:'Resposta sem campos' }, finished: false }))

const code = buildSync({ entryPoints: ['src/PismDiscursive.jsx'], bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react','react-dom','lucide-react'], loader: { '.css': 'empty' } }).outputFiles[0].text
const mod = { exports: {} }
new Function('module','exports','require',code)(mod,mod.exports,createRequire(import.meta.url))
const { PismDiscursiveSession } = mod.exports
const key = 'pism-2025-1-comum', exam = catalog[key], subject='Língua Portuguesa'
const question=exam.sections[0].questions[0]
let saved = {}
global.window = { sessionStorage: { getItem: key => saved[key] || null } }
const render = () => renderToStaticMarkup(React.createElement(PismDiscursiveSession, { exam, examKey:key, subject, onBack() {} }))
let markup = render()
assert.equal((markup.match(/<textarea/g)||[]).length,question.fields.length)
assert.ok(markup.includes('Ir para questão 2') && markup.includes('Próxima'))
assert.ok(!markup.includes('Consultar referência oficial de correção'))
assert.ok(!markup.includes('Página compartilhada') && !markup.includes('pagina-15.jpg'))
const stateKey=`provacerta:page-state:v1:pism.discursive.subject.v2.${key}.${subject}`
saved[stateKey]=JSON.stringify({ finished:true, answers:{ [question.id]:{ [question.fields[0].id]:'Minha resposta preservada.' } } })
markup = render()
assert.ok(markup.includes('Prova finalizada: 1 de 2 questões respondidas') && !markup.includes('<textarea'))
saved[`${stateKey}.view`]=JSON.stringify('review')
markup=render()
assert.ok(markup.includes('Minha resposta preservada.') && markup.includes('readonly'))
assert.ok(markup.includes(exam.correction))
saved={ [`provacerta:page-state:v1:pism.discursive.${key}`]:JSON.stringify({ finished:false,answers:{ 'Língua Portuguesa:1':'Resolução anterior' } }) }
markup=render()
assert.ok(markup.includes('Resolução anterior') && markup.includes('Resposta anterior e desenvolvimento'))
delete global.window
console.log('PISM: 336 questões em texto, seleção por matéria, campos, revisão, migração de respostas e retomada verificados.')
