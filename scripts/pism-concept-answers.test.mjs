import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { pismHumanitiesReferences } from '../src/lib/pismHumanitiesReferences.js'
import { getPismConceptRule, gradePismConcepts } from '../src/lib/pismConceptAnswers.js'
import { preparePismExactExam, gradePismQuestion } from '../src/lib/pismExactReferences.js'

const catalog = JSON.parse(readFileSync('public/pism-discursivas/questions.json', 'utf8'))
const rule = (module, year, subject, number, field = 'resposta') => getPismConceptRule(module, year, subject, number, field)
const geo = (module, year, number, field) => rule(module, year, 'Geografia', number, field)
const portuguese = (module, year, number) => rule(module, year, 'Língua Portuguesa', number)

test('todos os 75 itens distintos têm referência e dez variações reconhecíveis', () => {
  const keys = new Set()
  for (const exam of Object.values(catalog)) {
    for (const section of preparePismExactExam(exam).sections.filter(s => ['Geografia','Língua Portuguesa'].includes(s.subject))) {
      for (const question of section.questions) {
        assert.ok(question.source.startsWith('https://www2.ufjf.br/'), question.id)
        for (const field of question.fields) {
          keys.add(`${exam.module}:${exam.year}:${section.subject}:${question.number}/${field.id}`)
          assert.equal(field.manual, false)
          assert.equal(field.rule.kind, 'concepts')
          assert.ok(field.reference.length > 50)
          assert.equal(new Set(field.rule.variations).size, 10)
          // Não conta a mera troca da ordem de frases como uma nova variação.
          assert.equal(new Set(field.rule.variations.map(text => text.split(/[.!?]+/).map(part => part.trim().toLowerCase()).filter(Boolean).sort().join('|'))).size, 10)
          assert.ok(gradePismConcepts(field.rule, field.reference).matched, field.id)
          for (const variation of field.rule.variations) assert.ok(gradePismQuestion(question, { [field.id]: variation }).items.find(item => item.id === field.id).matched, variation)
        }
      }
    }
  }
  assert.equal(keys.size, 75)
  assert.deepEqual(keys, new Set(Object.keys(pismHumanitiesReferences)))
})

test('reconhece formulações novas, acentos e flexões sem exigir a reprodução do modelo', () => {
  assert.ok(gradePismConcepts(geo('I',2025,1,'a'), 'A matriz deve diminuir os combustíveis fósseis e aumentar as fontes renováveis.').matched)
  assert.ok(gradePismConcepts(portuguese('III',2024,4), 'AQUILOMBAR é reunir coletivos e incitar uma ação em defesa da liberdade.').matched)
  assert.ok(gradePismConcepts(geo('III',2025,2,'b'), 'Animes do Japão atraem público internacional. O futebol divulga a cultura do Brasil.').matched)
  assert.ok(gradePismConcepts(geo('II',2025,2,'b'), 'O processo não foi concluído. A indústria permanece concentrada no Centro-Sul.').matched)
})

test('negações, inversões e listas soltas de palavras não recebem reconhecimento completo', () => {
  const transition = geo('I',2025,1,'a')
  assert.equal(gradePismConcepts(transition, 'Fósseis, renováveis, energia, petróleo.').matched, false)
  assert.equal(gradePismConcepts(transition, 'Aumentar o uso de combustíveis fósseis e reduzir o uso de fontes renováveis.').matched, false)
  assert.equal(gradePismConcepts(transition, 'Não devemos reduzir os combustíveis fósseis nem aumentar as renováveis.').matched, false)
  assert.equal(gradePismConcepts(portuguese('I',2025,2), 'A distraída decorre da falta de apoio. A desassistida é causada apenas pelo celular dos pais.').matched, false)
  assert.equal(gradePismConcepts(geo('II',2025,2,'b'), 'A desconcentração foi completada. Há concentração no Centro-Sul.').matched, false)
  assert.equal(gradePismConcepts(portuguese('I',2026,1), 'Vendas e marketing cresce 26%. Administração de IA cresce 3%.').matched, false)
})

test('respeita a quantidade de exemplos e informa elementos parciais', () => {
  const risks = geo('I',2026,2,'b')
  assert.equal(gradePismConcepts(risks, 'Desmatamento e mais desmatamento.').covered, 1)
  assert.equal(gradePismConcepts(risks, 'Desmatamento e mais desmatamento.').partial, true)
  assert.equal(gradePismConcepts(risks, 'Desmatamento e poluição dos rios.').matched, true)
  const three = portuguese('II',2026,2)
  assert.equal(gradePismConcepts(three, 'Desative notificações e monitore o tempo de uso.').matched, false)
  assert.equal(gradePismConcepts(three, 'Desative notificações. Monitore o tempo de uso. Evite celular antes de dormir.').matched, true)
  assert.equal(gradePismConcepts(geo('III',2024,1,'a'), 'O mercado de petróleo é lucrativo. Os custos das alternativas limpas são altos.').matched, false)
  assert.equal(gradePismConcepts(risks, '').blank, true)
  assert.equal(gradePismConcepts(risks, 'Resposta sobre uma receita culinária.').covered, 0)
})

test('produção de comando exige contexto, vocativo, primeira pessoa e pergunta final', () => {
  const prompt = portuguese('III',2026,1)
  assert.ok(gradePismConcepts(prompt, 'IA, estou preocupado. Uso celular e me sinto ansioso. Que ajuda devo procurar?').matched)
  assert.equal(gradePismConcepts(prompt, 'IA, estou preocupado. Uso celular e me sinto ansioso. Que ajuda devo procurar.').structureMissing, true)
  assert.equal(gradePismConcepts(prompt, 'Uso celular e me sinto ansioso. Que ajuda devo procurar?').matched, false)
  assert.equal(gradePismConcepts(prompt, 'IA, como posso cozinhar arroz?').matched, false)
})

test('revisão mostra referência e resultado sem expor critérios ou variações', () => {
  const code = buildSync({ entryPoints: ['src/PismDiscursive.jsx'], bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react','react-dom','lucide-react'], loader: { '.css': 'empty' } }).outputFiles[0].text
  const mod = { exports: {} }
  new Function('module','exports','require',code)(mod, mod.exports, createRequire(import.meta.url))
  for (const subject of ['Geografia','Língua Portuguesa']) {
    const examKey = 'pism-2024-1-comum', exam = catalog[examKey]
    const question = exam.sections.find(s => s.subject === subject).questions[0]
    const key = `provacerta:page-state:v1:pism.discursive.subject.v2.${examKey}.${subject}`
    let saved = {}
    global.window = { sessionStorage: { getItem: name => saved[name] ?? null } }
    try {
      const render = () => renderToStaticMarkup(React.createElement(mod.exports.PismDiscursiveSession, { exam, examKey, subject, onBack() {} }))
      const initial = render()
      assert.ok(!initial.includes('Ver 10 variações'))
      assert.ok(!initial.includes('Resposta de referência (síntese)'))
      assert.ok(!initial.includes('Justificativa e desenvolvimento'))
      saved[key] = JSON.stringify({ finished: true, answers: { [question.id]: { [question.fields[0].id]: 'Minha resposta anterior preservada.' } } })
      saved[key + '.view'] = JSON.stringify('review')
      const reviewed = render()
      assert.ok(reviewed.includes('Minha resposta anterior preservada.'))
      assert.ok(reviewed.includes('readonly') && !reviewed.includes('Ver 10 variações'))
      assert.ok(reviewed.includes('Resposta de referência (síntese)'))
      assert.ok(!reviewed.includes('elementos reconhecidos') && !reviewed.includes('Para comparar:'))
      assert.ok(reviewed.includes(exam.correction))
    } finally { delete global.window }
  }
})
