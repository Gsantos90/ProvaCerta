import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { unicampYears, unicampDocument, unicampOfficialSource, unicampQuestionMedia } from '../src/lib/unicampExams.js'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
import { attemptPayload } from '../src/lib/studyHistory.js'
import { attemptSource } from '../src/lib/catalogProgress.js'

const read=path=>readFileSync(path,'utf8')
const keys=JSON.parse(read('scripts/fixtures/unicamp-keys.json'))
function fields(text) {
  const result=[];let start=0,quoted=false
  for(let i=0;i<text.length;i++) {
    if(text[i]==="'") {if(quoted&&text[i+1]==="'"){i++;continue}quoted=!quoted}
    if(text[i]===','&&!quoted){result.push(text.slice(start,i));start=i+1}
  }
  result.push(text.slice(start));assert.ok(!quoted)
  return result.map(v=>v==='null'?null:v.startsWith("'")?v.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''","'"):Number(v))
}
const banks={};const sql=read('supabase/seed-unicamp-2024-2026.sql')
for(const line of sql.split('\n')) {
  const m=line.match(/select id,(.*) from public.exams where slug='([^']+)'/)
  if(!m)continue
  const [number,subject,text,support,media,options,answer,explanation]=fields(m[1])
  ;(banks[m[2]]||=[]).push({number,subject,text,support,supportImage:JSON.parse(media).support,...unicampQuestionMedia(m[2],media),options:JSON.parse(options),answer,explanation,examSlug:m[2],examTitle:`Unicamp ${m[2].split('-')[1]} · 1ª fase`,sourceUrl:unicampOfficialSource(m[2],number),questionId:m[2]+'-'+number})
}
assert.deepEqual(unicampYears,['2026','2025','2024'])
assert.equal(Object.keys(banks).length,3)
assert.ok(!/alter table|drop table|delete from/i.test(sql))
assert.ok(sql.trim().endsWith('commit;'))
const assets=new Set()
for(const year of unicampYears) {
  const qs=banks[`unicamp-${year}-fase1`]
  assert.deepEqual(qs.map(q=>q.number),Array.from({length:72},(_,i)=>i+1))
  qs.forEach((q,i)=>{
    assert.equal(q.options.length,4)
    assert.equal(q.answer,keys[year][i]==='*'?'A/B/C/D/E':keys[year][i])
    assert.ok(q.text.length>15&&!q.text.includes('[[placeholder]]'))
    assert.ok(q.originalImages.length>0)
    assert.match(q.sourceUrl,/comvest\.unicamp\.br.*\.pdf#page=\d+$/)
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
  const payload=attemptPayload({session,questions:qs,answers:allCorrect,title:qs[0].examTitle,source:'unicamp'})
  assert.equal(payload.points,72);assert.equal(payload.scoring,'standard');assert.equal(payload.exam_source,'unicamp')
  for(const name of ['dia-1','exatas','biologicas','humanas','dia-1-respostas','exatas-respostas','biologicas-respostas','humanas-respostas','redacao-expectativas']) {
    const path='public'+unicampDocument(year,name);assert.equal(readFileSync(path).toString('ascii',0,4),'%PDF')
  }
  for(const name of ['fase1','gabarito'])assert.equal(readFileSync(`public/provas/unicamp/${year}-${name}.pdf`).toString('ascii',0,4),'%PDF')
}
assert.deepEqual(banks['unicamp-2025-fase1'].filter(q=>q.answer.includes('/')).map(q=>q.number),[53])
assert.ok(banks['unicamp-2024-fase1'][1].supportImage.length)
assert.ok(banks['unicamp-2025-fase1'][9].supportImage.length)
assert.ok(banks['unicamp-2025-fase1'][18].supportImage.length>=2)
for(const n of [9,10,11,13,14,55,56])assert.ok(banks['unicamp-2026-fase1'][n-1].supportImage.length)
assert.equal(unicampDocument('2027','dia-1'),null)
assert.equal(unicampOfficialSource('unicamp-2026-fase1',73),undefined)
assert.equal(unicampOfficialSource('outro',1),undefined)
assert.deepEqual(unicampQuestionMedia('outro','{}'),{})
assert.deepEqual(unicampQuestionMedia('unicamp-2026-fase1','{"original":["javascript:alert(1)","//bad"]}'),{originalImages:[]})
assert.equal(attemptSource({exam_title:'Unicamp 2026 · 1ª fase'}),'unicamp')

const main=read('src/main.jsx'),start=main.indexOf('function App()'),end=main.indexOf('const beginSession')
const state=main.slice(start,end).replace(/(const \[([^,]+),[^\]]+\] = )(useState|usePageState)/g,(_,declaration,name,hook)=>`${declaration}${hook==='useState'?'testUseState':'testUsePageState'}.bind(null,${JSON.stringify(name.trim())}${hook==='usePageState'?',usePageState':''})`)
const source=(main.slice(0,start)+state+main.slice(end)).replace("import ExamTools from './ExamTools'",'const ExamTools=()=>null').replace(/createRoot\(document\.getElementById\('root'\)\)\.render\([\s\S]*$/,'')+'\nexport { App, UnicampCard, OriginalQuestion }'
const output=buildSync({stdin:{contents:source,resolveDir:process.cwd()+'/src',loader:'jsx'},bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom/client','lucide-react','@supabase/supabase-js'],loader:{'.css':'empty'},define:{'import.meta.env':'{}'}}).outputFiles[0].text
const mod={exports:{}};let overrides={}
const testUseState=(name,initial)=>React.useState(Object.hasOwn(overrides,name)?overrides[name]:initial)
const testUsePageState=(name,hook,...args)=>Object.hasOwn(overrides,name)?React.useState(overrides[name]):hook(...args)
new Function('module','exports','require','testUseState','testUsePageState',output)(mod,mod.exports,createRequire(import.meta.url),testUseState,testUsePageState)
for(const year of unicampYears) {
  const card=renderToStaticMarkup(React.createElement(mod.exports.UnicampCard,{year,phase:'fase1'}))
  assert.ok(card.includes('Começar prova')&&card.includes('72 questões'))
  assert.equal((card.match(/<select(?:\s|>)/g)||[]).length,2)
  const docs=renderToStaticMarkup(React.createElement(mod.exports.UnicampCard,{year,phase:'fase2'}))
  assert.ok(!docs.includes('Começar prova'))
  assert.equal((docs.match(/href="\/provas\/unicamp/g)||[]).length,9)
  const qs=banks[`unicamp-${year}-fase1`]
  for(const n of [1,2,9,34,53,72]) {
    overrides={selectedExam:'unicamp',supabaseExamSlug:`unicamp-${year}-fase1`,enemQuestions:qs,screen:'review',current:n-1}
    const html=renderToStaticMarkup(React.createElement(mod.exports.App))
    assert.ok(html.includes(`Unicamp ${year}`)&&html.includes('da Comvest / Unicamp'))
    assert.ok(!html.includes('Módulo I'))
    assert.equal((html.match(/class="original-question-page"/g)||[]).length,qs[n-1].originalImages.length)
    assert.equal((html.match(/Marcar alternativa /g)||[]).length,4)
    if(year==='2025'&&n===53)assert.ok(html.includes('ponto atribuído automaticamente'))
  }
}
console.log(`Unicamp: 216 questões/gabaritos, ${assets.size} imagens referenciadas, textos compartilhados, 33 PDFs e renderização dos 3 anos verificados.`)
