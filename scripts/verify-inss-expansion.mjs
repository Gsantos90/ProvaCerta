import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { inssYears, inssExamsByYear, inssExamFor, inssExamFromSlug } from '../src/lib/inssExams.js'
import { inssOfficialSource } from '../src/lib/inssSources.js'
import { cebraspeScore } from '../src/lib/cebraspeScore.js'
import { attemptPayload } from '../src/lib/studyHistory.js'

const read = path => readFileSync(path, 'utf8')
const official = JSON.parse(read('scripts/fixtures/inss-official-keys.json'))
const sql = read('supabase/seed-inss-2016.sql')
// Split SQL VALUES without treating escaped quotes/commas within text as fields.
function fields(text) {
  const result=[]; let start=0, quoted=false
  for(let i=0;i<text.length;i++) {
    if(text[i]==="'") { if(quoted && text[i+1]==="'") { i++; continue } quoted=!quoted }
    if(text[i]===','&&!quoted) { result.push(text.slice(start,i));start=i+1 }
  }
  result.push(text.slice(start));assert.ok(!quoted)
  return result.map(value => value === 'null' ? null : value.startsWith("'") ? value.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''", "'") : Number(value))
}
const banks={}
for(const line of sql.split('\n')) {
  const m=line.match(/select id,(.*) from public.exams where slug='([^']+)'/)
  if(!m)continue
  const [number,subject,text,support,supportImage,options,answer,explanation]=fields(m[1])
  ;(banks[m[2]] ||= []).push({number,subject,text,support,supportImage,options:JSON.parse(options),answer,explanation,examSlug:m[2],questionId:`${m[2]}-${number}`})
}
banks['inss-2022-tecnico']=[...read('supabase/seed-inss-2022-tecnico.sql').matchAll(/select id, (\d+),[\s\S]*? '(\["Certo", "Errado"\])'::jsonb, '([^']+)'/g)].map(m=>({number:Number(m[1]),text:'Item de teste INSS 2022',options:JSON.parse(m[2]),answer:m[3],examSlug:'inss-2022-tecnico'}))
assert.deepEqual(inssYears,['2025','2022','2016'])
assert.equal(inssExamFor('2022','analista'),undefined)
assert.equal(inssExamFor('2016','bloco1'),undefined)
assert.equal(inssExamFromSlug('outro'),undefined)
for(const exam of inssExamsByYear['2016']) {
  const qs=banks[exam.slug], role=exam.value==='tecnico'?'tecnico':'analista'
  assert.equal(qs.length,120)
  assert.deepEqual(qs.map(q=>q.number),Array.from({length:120},(_,i)=>i+1))
  qs.forEach((q,i)=>{
    assert.equal(q.answer,{C:'A',E:'B',X:'A/B/C/D/E'}[official[role].split(' ')[i]])
    assert.deepEqual(q.options,['Certo','Errado'])
    assert.ok(q.text.length>20 && !/[\x00-\x1f�]/.test(q.text+q.support))
    assert.match(inssOfficialSource(exam.slug,q.number),/Caderno_(ALGA|LUA)\.PDF#page=[2-8]$/)
    if(q.supportImage)assert.ok(existsSync('public'+q.supportImage))
  })
  const annulled=role==='tecnico'?[28,32,39,53,79]:[58,85]
  assert.deepEqual(qs.filter(q=>q.answer.includes('/')).map(q=>q.number),annulled)
  assert.equal(cebraspeScore(qs,{}).points,annulled.length)
  assert.equal(cebraspeScore(qs,Object.fromEntries(qs.map((q,i)=>[i,q.answer==='A'?'A':'B']))).points,120)
}
assert.ok(!banks['inss-2016-tecnico'][9].text.includes('Bibliotecas'))
assert.ok(banks['inss-2016-tecnico'][15].support.startsWith('Bruno, servidor'))
assert.ok(banks['inss-2016-analista-servico-social'][18].support.includes('R$ 6.500,00'))
assert.ok(banks['inss-2016-analista-servico-social'][18].support.includes('R$ 10.000,00'))
assert.ok(banks['inss-2016-analista-servico-social'][44].supportImage.endsWith('planilha.png'))
assert.ok(!/delete from|drop table|alter table/i.test(sql))

// Exercise actual cards and App result/review branches using named state injection.
const main=read('src/main.jsx'), start=main.indexOf('function App()'), end=main.indexOf('const beginSession')
const state=main.slice(start,end).replace(/(const \[([^,]+),[^\]]+\] = )(useState|usePageState)/g,(_,declaration,name,hook)=>`${declaration}${hook==='useState'?'testUseState':'testUsePageState'}.bind(null,${JSON.stringify(name.trim())}${hook==='usePageState'?',usePageState':''})`)
const source=(main.slice(0,start)+state+main.slice(end)).replace("import ExamTools from './ExamTools'",'const ExamTools=()=>null').replace(/createRoot\(document\.getElementById\('root'\)\)\.render\([\s\S]*$/,'')+'\nexport { InssCard, App }'
const output=buildSync({stdin:{contents:source,resolveDir:process.cwd()+'/src',loader:'jsx'},bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom/client','lucide-react','@supabase/supabase-js'],loader:{'.css':'empty'},define:{'import.meta.env':'{}'}}).outputFiles[0].text
const mod={exports:{}};let overrides={}
const testUseState=(name,initial)=>React.useState(Object.hasOwn(overrides,name)?overrides[name]:initial)
const testUsePageState=(name,hook,...args)=>Object.hasOwn(overrides,name)?React.useState(overrides[name]):hook(...args)
new Function('module','exports','require','testUseState','testUsePageState',output)(mod,mod.exports,createRequire(import.meta.url),testUseState,testUsePageState)
for(const year of inssYears)for(const exam of inssExamsByYear[year]) {
  const card=renderToStaticMarkup(React.createElement(mod.exports.InssCard,{year,role:exam.value,years:inssYears}))
  assert.equal((card.match(/<select(?:\s|>)/g)||[]).length,2)
  assert.ok(!/<button[^>]*disabled/.test(card))
  assert.equal(card.includes('sem os pesos específicos'),false)
  const qs=banks[exam.slug] || official.cnu2025[exam.value.slice(-1)].map((answer,i)=>({number:i+1,text:'Questão de teste do CNU',subject:'Conhecimentos Gerais',options:['Um','Dois','Três','Quatro','Cinco'],answer:answer==='*'?'A/B/C/D/E':answer,examSlug:exam.slug}))
  for(const screen of ['result','review']) {
    // A different catalog selection must not change the running exam's title/scoring.
    overrides={selectedExam:'inss',supabaseExamSlug:exam.slug,enemQuestions:qs,screen,current:0,inssYear:'2022',inssRole:'tecnico',answers:{0:'A'}}
    const html=renderToStaticMarkup(React.createElement(mod.exports.App))
    assert.equal(html.includes('Acerto: +1'),exam.binary)
    if(screen==='result') {
      assert.equal(html.includes('pontos líquidos'),exam.binary)
      assert.equal(html.includes('sem os pesos específicos'),false)
    } else assert.ok(html.includes(year) && !html.includes('Módulo I'))
  }
  const payload=attemptPayload({session:{id:'fixture',startedAt:1,endedAt:2},questions:qs,answers:{},title:exam.title,binary:exam.binary,source:'inss'})
  assert.equal(payload.scoring,exam.binary?'cebraspe':'standard')
  assert.equal(payload.exam_source,'inss')
}
assert.equal(inssOfficialSource('inss-2016-tecnico',121),undefined)
assert.equal(inssOfficialSource('cnu-2025-bloco2-tarde',1),undefined)
assert.equal(inssOfficialSource('cnu-2025-bloco1-tarde',91),undefined)
console.log('INSS: 240 itens, gabaritos, anulações, imagens, 7 escolhas, resultados e histórico Cebraspe/FGV verificados.')
