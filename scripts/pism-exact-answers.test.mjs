import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { equivalentMath, exactQuantity, chemicalFormula, matchesPismExact, parseExactMath } from '../src/lib/pismExactAnswers.js'
import { preparePismExactExam, gradePismQuestion } from '../src/lib/pismExactReferences.js'

const raw=JSON.parse(readFileSync('public/pism-discursivas/questions.json','utf8'))
const exams=Object.fromEntries(Object.entries(raw).map(([key,exam]) => [key,preparePismExactExam(exam)]))
const find=(key,subject,n) => exams[key].sections.find(s => s.subject===subject).questions[n-1]
const quantity=(model,unit='',extra={}) => ({kind:'quantity',models:[model],unit,...extra})

test('reconhece frações, raízes, polinômios e igualdades equivalentes',() => {
  for (const [actual,expected] of [['7-x','-x+7'],['0,8x+1,6','(4x+8)/5'],['√136','2√34'],['(4n-3)*pi/12','pi*n/3-pi/4'],['sqrt(-11)','i*sqrt(11)'],['5q','q*5']]) assert.ok(equivalentMath(actual,expected),actual)
  assert.ok(equivalentMath('4x^2+4y^2-4x-8y=0','(x-1/2)^2+(y-1)^2=5/4',true))
  assert.ok(equivalentMath('x²+y²-x-2y=0','(x-1/2)^2+(y-1)^2=5/4',true))
  assert.ok(equivalentMath('L=2ℓ','2l'))
  assert.ok(!equivalentMath('2L','2l'),'L e ℓ são variáveis diferentes')
  assert.ok(equivalentMath('aₙ = (4n-3)*π/12','pi*n/3-pi/4'))
  assert.ok(!equivalentMath('x^2+y^2=5/4','(x-1/2)^2+(y-1)^2=5/4',true))
  assert.ok(!equivalentMath('(x^2-1)/(x-1)','x+1'),'não aceita um domínio com ponto excluído')
  assert.ok(!equivalentMath('-x+8','-x+7'))
  assert.ok(!equivalentMath('x^2','x'))
})
test('converte unidades compatíveis e não aceita unidade ou magnitude errada',() => {
  assert.equal(exactQuantity('2500 cm','m'),25)
  assert.equal(exactQuantity('650m^2','m2'),650)
  assert.equal(exactQuantity('6500000cm²','m2'),650)
  assert.equal(exactQuantity('50 mL','L'),.05)
  assert.equal(exactQuantity('0,607 g','g'),.607)
  assert.equal(exactQuantity('607 mg','g'),.607)
  assert.equal(exactQuantity('3 horas e 31 minutos','min'),211)
  assert.equal(exactQuantity('12,8 milhões','count'),12800000)
  assert.equal(exactQuantity('10.050'),10050)
  assert.ok(matchesPismExact(quantity('1/25','ratio'),'4%'))
  assert.ok(!matchesPismExact(quantity('1/25','ratio'),'4'))
  assert.ok(!matchesPismExact(quantity('25','m'),'25 cm'))
  assert.ok(!matchesPismExact(quantity('650','m2'),'650 m'))
  assert.ok(!matchesPismExact(quantity('-2229','kJ/mol'),'2229 kJ/mol'))
  assert.ok(matchesPismExact(quantity('-2229','kJ/mol'),'-2229000 J/mol'))
  assert.ok(!matchesPismExact(quantity('0'),'1e-20'))
})
test('números e expressões não executam código nem extraem um acerto de um texto contraditório',() => {
  for (const value of ['25 ou 26','25; 26','25 porque a resposta é 26','Infinity','0/0','1/0','2**100000','window.alert(1)','globalThis.process.exit()','(()=>25)()','25<script>']) {
    assert.ok(!matchesPismExact(quantity('25'),value),value)
  }
  assert.equal(parseExactMath('('.repeat(500)),null)
  assert.equal(parseExactMath('x^999999'),null)
  assert.equal(parseExactMath('1e-999'),null)
  assert.equal(parseExactMath('0^0'),null)
})
test('preserva cargas, índices e maiúsculas das fórmulas químicas',() => {
  assert.equal(chemicalFormula('Ba²⁺'),chemicalFormula('Ba2+'))
  assert.equal(chemicalFormula('CaSO₄'),chemicalFormula('CaSO4'))
  assert.notEqual(chemicalFormula('Ba²⁺'),chemicalFormula('Ba+'))
  assert.notEqual(chemicalFormula('CO'),chemicalFormula('Co'))
  assert.notEqual(chemicalFormula('C4H8O2'),chemicalFormula('C2H4O'))
  assert.equal(chemicalFormula('caSO4'),null)
})
test('confere a reação inteira, incluindo proporção, sentido e equilíbrio',() => {
  const rule={kind:'reaction',models:['H2SO4 + Ca(OH)2 → CaSO4 + 2H2O']}
  assert.ok(matchesPismExact(rule,'2Ca(OH)2 + 2H2SO4 -> 4H2O + 2CaSO4'))
  assert.ok(!matchesPismExact(rule,'H2SO4 + Ca(OH)2 -> CaSO4 + H2O'))
  assert.ok(!matchesPismExact(rule,'CaSO4 + 2H2O -> H2SO4 + Ca(OH)2'))
  const weak={kind:'reaction',models:['HNO2 + H2O ⇌ NO2- + H3O+']}
  assert.ok(matchesPismExact(weak,'HNO₂(aq) + H₂O(l) <=> H₃O⁺(aq) + NO₂⁻(aq)'))
  assert.ok(!matchesPismExact(weak,'HNO2+H2O -> NO2-+H3O+'))
  const organic={kind:'reaction',models:['CH3COOH + OH- ⇌ CH3COO- + H2O']}
  assert.ok(!matchesPismExact(organic,'C2H4O2+OH- ⇌ CH3COO-+H2O'),'não identifica um isômero apenas pelos átomos')
})
test('pares ordenados e conjuntos não aceitam coordenadas invertidas ou raízes repetidas',() => {
  const pair={kind:'pair',models:['9','7']}
  assert.ok(matchesPismExact(pair,'M=(9; 7)'))
  assert.ok(!matchesPismExact(pair,'(7;9)'))
  const rule=find('pism-iii-2024-dia-1-exatas','Matemática',5).fields[0].rule
  assert.ok(matchesPismExact(rule,'(5+i√11)/6 ; (5-i√11)/6'))
  assert.ok(matchesPismExact(rule,'(5±i√11)/6'))
  assert.ok(!matchesPismExact(rule,'(5+i√11)/6 ; (5+i√11)/6'))
})
test('todos os resultados cadastrados são reconhecidos e cada campo tem referência',() => {
  let count=0,manual=0
  for (const exam of Object.values(exams)) for (const section of exam.sections) for (const question of section.questions) {
    for (const field of question.fields) {
      if (field.manual) {manual++;continue}
      count++;assert.ok(field.reference && field.rule.models.length,question.id)
      const rule=field.rule
      const samples=rule.kind==='set' ? [rule.models.join('; ')] : rule.kind==='pair' ? [`(${rule.models.join('; ')})`] : rule.models
      for (const sample of samples) assert.ok(matchesPismExact(rule,sample),`${question.id} ${field.id}: ${sample}`)
    }
  }
  assert.ok(count>140);assert.ok(manual>0)
  console.log(`${count} campos exatos; ${manual} campos manuais, além dos desenvolvimentos.`)
})
test('desenhos estruturais e explicações não ganham acerto por citar a fórmula molecular',() => {
  const question=find('pism-2025-1-comum','Química',1)
  assert.ok(question.fields.every(field => field.manual))
  assert.equal(gradePismQuestion(question,{a:'NH3'}).total,0)
  const math=find('pism-iii-2026-dia-1-exatas','Matemática',1)
  const result=gradePismQuestion(math,{a_m:'(m+12)/3',a_n:'2-5n/3',b_m:'(9;7)',b_n:'(3;-3)',c:'√136'})
  assert.equal(result.total,5);assert.equal(result.recognized,5)
})

test('interface só revela correção após finalizar e preserva os desenvolvimentos anteriores',() => {
  const code=buildSync({entryPoints:['src/PismDiscursive.jsx'],bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom','lucide-react'],loader:{'.css':'empty'}}).outputFiles[0].text
  const mod={exports:{}}
  new Function('module','exports','require',code)(mod,mod.exports,createRequire(import.meta.url))
  const key='pism-2025-1-comum',subject='Matemática',exam=raw[key],q=exam.sections.find(s => s.subject===subject).questions[0]
  const storageKey=`provacerta:page-state:v1:pism.discursive.subject.v2.${key}.${subject}`
  let saved={}
  global.window={sessionStorage:{getItem:key => saved[key]||null}}
  try {
    const render=() => renderToStaticMarkup(React.createElement(mod.exports.PismDiscursiveSession,{exam,examKey:key,subject,onBack(){}}))
    let markup=render()
    assert.ok(!markup.includes('Referência:') && !markup.includes('Resultado reconhecido'))
    saved[storageKey]=JSON.stringify({finished:true,answers:{[q.id]:{a:'R$ 2,50',c:'5*q',__working:'Minha demonstração'}}})
    markup=render()
    assert.ok(markup.includes('2 de 7 respostas exatas reconhecidas'))
    saved[storageKey+'.view']=JSON.stringify('review')
    markup=render()
    assert.ok(markup.includes('Referência:') && markup.includes('Resultado reconhecido') && markup.includes('readonly'))
    assert.ok(markup.includes('Minha demonstração') && markup.includes('Justificativa e desenvolvimento'))
  } finally { delete global.window }
})
