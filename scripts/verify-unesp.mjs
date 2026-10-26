import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { unespYears, unespDocument, unespOfficialSource, unespQuestionMedia } from '../src/lib/unespExams.js'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
import { attemptPayload } from '../src/lib/studyHistory.js'
import { attemptSource } from '../src/lib/catalogProgress.js'

const read=path=>readFileSync(path,'utf8')
const keys=JSON.parse(read('scripts/fixtures/unesp-keys.json'))
function fields(text) {
  const result=[];let start=0,quoted=false
  for(let i=0;i<text.length;i++) {
    if(text[i]==="'") {if(quoted&&text[i+1]==="'"){i++;continue}quoted=!quoted}
    if(text[i]===','&&!quoted){result.push(text.slice(start,i));start=i+1}
  }
  result.push(text.slice(start));assert.ok(!quoted)
  return result.map(v=>v==='null'?null:v.startsWith("'")?v.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''","'"):Number(v))
}
const banks={};const sql=read('supabase/seed-unesp-2024-2026.sql')
for(const line of sql.split('\n')) {
  const m=line.match(/select id,(.*) from public.exams where slug='([^']+)'/)
  if(!m)continue
  const [number,subject,text,support,media,options,answer,explanation]=fields(m[1])
  ;(banks[m[2]]||=[]).push({number,subject,text,support,supportImage:JSON.parse(media).support,...unespQuestionMedia(m[2],media),options:JSON.parse(options),answer,explanation,examSlug:m[2],examTitle:`Unesp ${m[2].split('-')[1]} · 1ª fase`,sourceUrl:unespOfficialSource(m[2],number),questionId:m[2]+'-'+number})
}
assert.deepEqual(unespYears,['2026','2025','2024'])
assert.equal(Object.keys(banks).length,3)
assert.ok(!/alter table|drop table|delete from/i.test(sql))
assert.ok(sql.trim().endsWith('commit;'))
const assets=new Set()
for(const year of unespYears) {
  const qs=banks[`unesp-${year}-fase1`]
  assert.deepEqual(qs.map(q=>q.number),Array.from({length:90},(_,i)=>i+1))
  qs.forEach((q,i)=>{
    assert.equal(q.options.length,5)
    assert.equal(q.answer,keys[year][i]==='*'?'A/B/C/D/E':keys[year][i])
    assert.ok(q.text.length>15&&!q.text.includes('[[placeholder]]'))
    assert.ok(q.originalImages.length>0)
    assert.match(q.sourceUrl,/curso-objetivo\.br.*\.pdf#page=\d+$/)
    for(const path of [...q.originalImages,...q.supportImage]) {
      assert.ok(existsSync('public'+path),path);assets.add(path)
      const image=readFileSync('public'+path)
      assert.equal(image.toString('hex',0,8),'89504e470d0a1a0a')
      assert.ok(image.readUInt32BE(16)>500&&image.readUInt32BE(20)>20,path)
    }
  })
  const session={id:'fixture',startedAt:1,endedAt:2}
  const allCorrect=Object.fromEntries(qs.map((q,i)=>[i,q.answer[0]]))
  assert.ok(qs.every((q,i)=>isCorrectAnswer(allCorrect[i],q.answer)))
  const payload=attemptPayload({session,questions:qs,answers:allCorrect,title:qs[0].examTitle,source:'unesp'})
  assert.equal(payload.points,90);assert.equal(payload.scoring,'standard');assert.equal(payload.exam_source,'unesp')
  for(const name of ['dia1','dia2']) {
    const path='public'+unespDocument(year,name);assert.equal(readFileSync(path).toString('ascii',0,4),'%PDF')
  }
  for(const name of ['fase1','gabarito'])assert.equal(readFileSync(`public/provas/unesp/${year}-${name}.pdf`).toString('ascii',0,4),'%PDF')
}
for(const year of unespYears)assert.ok(banks[`unesp-${year}-fase1`][0].supportImage.length)
assert.equal(unespDocument('2027','dia1'),null)
assert.equal(unespOfficialSource('unesp-2026-fase1',91),undefined)
assert.equal(unespOfficialSource('outro',1),undefined)
assert.deepEqual(unespQuestionMedia('outro','{}'),{})
assert.deepEqual(unespQuestionMedia('unesp-2026-fase1','{"original":["javascript:alert(1)","//bad"]}'),{originalImages:[]})
assert.equal(attemptSource({exam_title:'Unesp 2026 · 1ª fase'}),'unesp')

const main=read('src/main.jsx'),start=main.indexOf('function App()'),end=main.indexOf('const beginSession')
const state=main.slice(start,end).replace(/(const \[([^,]+),[^\]]+\] = )(useState|usePageState)/g,(_,declaration,name,hook)=>`${declaration}${hook==='useState'?'testUseState':'testUsePageState'}.bind(null,${JSON.stringify(name.trim())}${hook==='usePageState'?',usePageState':''})`)
const source=(main.slice(0,start)+state+main.slice(end)).replace("import ExamTools from './ExamTools'",'const ExamTools=()=>null').replace(/createRoot\(document\.getElementById\('root'\)\)\.render\([\s\S]*$/,'')+'\nexport { App, UnespCard, OriginalQuestion }'
const output=buildSync({stdin:{contents:source,resolveDir:process.cwd()+'/src',loader:'jsx'},bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom/client','lucide-react','@supabase/supabase-js'],loader:{'.css':'empty'},define:{'import.meta.env':'{}'}}).outputFiles[0].text
const mod={exports:{}};let overrides={}
const testUseState=(name,initial)=>React.useState(Object.hasOwn(overrides,name)?overrides[name]:initial)
const testUsePageState=(name,hook,...args)=>Object.hasOwn(overrides,name)?React.useState(overrides[name]):hook(...args)
new Function('module','exports','require','testUseState','testUsePageState',output)(mod,mod.exports,createRequire(import.meta.url),testUseState,testUsePageState)
for(const year of unespYears) {
  const card=renderToStaticMarkup(React.createElement(mod.exports.UnespCard,{year,phase:'fase1'}))
  assert.ok(card.includes('Começar prova')&&card.includes('90 questões'))
  assert.equal((card.match(/<select(?:\s|>)/g)||[]).length,2)
  const docs=renderToStaticMarkup(React.createElement(mod.exports.UnespCard,{year,phase:'fase2'}))
  assert.ok(!docs.includes('Começar prova'))
  assert.equal((docs.match(/href="\/provas\/unesp/g)||[]).length,2)
  const qs=banks[`unesp-${year}-fase1`]
  for(const n of [1,2,9,34,53,72]) {
    overrides={selectedExam:'unesp',supabaseExamSlug:`unesp-${year}-fase1`,enemQuestions:qs,screen:'review',current:n-1}
    const html=renderToStaticMarkup(React.createElement(mod.exports.App))
    assert.ok(html.includes(`Unesp ${year}`)&&html.includes('da Vunesp / Unesp'))
    assert.ok(!html.includes('Módulo I'))
    assert.equal((html.match(/class="original-question-page"/g)||[]).length,qs[n-1].originalImages.length)
    assert.equal((html.match(/Marcar alternativa /g)||[]).length,5)
  }
}
console.log(`Unesp: 270 questões/gabaritos, ${assets.size} imagens referenciadas, textos compartilhados, 12 PDFs e renderização dos 3 anos verificados.`)
