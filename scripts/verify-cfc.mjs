import assert from 'node:assert/strict'
import {readFileSync,existsSync} from 'node:fs'
import {cfcYears,cfcEditions,cfcSlug,cfcOfficialSource,cfcQuestionMedia} from '../src/lib/cfcExams.js'
import {isCorrectAnswer,isAnnulledAnswer} from '../src/lib/examAnswers.js'
import {attemptPayload} from '../src/lib/studyHistory.js'
import {attemptSource} from '../src/lib/catalogProgress.js'
const read=p=>readFileSync(p,'utf8')
function fields(text) {
 const result=[];let start=0,quoted=false
 for(let i=0;i<text.length;i++) {
  if(text[i]==="'"){if(quoted&&text[i+1]==="'"){i++;continue}quoted=!quoted}
  if(text[i]===','&&!quoted){result.push(text.slice(start,i));start=i+1}
 }
 result.push(text.slice(start));assert.ok(!quoted)
 return result.map(v=>v==='null'?null:v.startsWith("'")?v.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''","'"):Number(v))
}
const sql=read('supabase/seed-cfc-2025-2026.sql'),banks={}
assert.ok(!/delete from|alter table|drop table/i.test(sql))
for(const line of sql.split('\n')) {
 const m=line.match(/select id,(.*) from public.exams where slug='([^']+)'/)
 if(!m)continue
 const [number,subject,text,support,media,options,answer]=fields(m[1])
 ;(banks[m[2]]||=[]).push({number,subject,text,options:JSON.parse(options),answer,...cfcQuestionMedia(m[2],media),examSlug:m[2],examTitle:'CFC '+m[2].slice(4),questionId:m[2]+'-'+number})
}
assert.deepEqual(cfcYears,['2026','2025'])
assert.equal(Object.keys(banks).length,4)
let annulled=0
for(const year of cfcYears) for(const ed of cfcEditions) {
 const slug=cfcSlug(year,ed.value),qs=banks[slug]
 assert.ok(slug)
 assert.deepEqual(qs.map(q=>q.number),Array.from({length:50},(_,i)=>i+1))
 for(const q of qs) {
  assert.equal(q.options.length,4);assert.ok(q.options.every(Boolean));assert.ok(q.text.length>10)
  assert.match(q.answer,/^(?:[A-D]|A\/B\/C\/D\/E)$/)
  assert.ok(q.originalImages.length)
  assert.match(cfcOfficialSource(slug,q.number),/^https:\/\/conhecimento.fgv.br\/.*\.pdf#page=\d+$/)
  for(const path of q.originalImages) {
   assert.ok(existsSync('public'+path),path)
   const image=readFileSync('public'+path)
   assert.equal(image.toString('hex',0,8),'89504e470d0a1a0a')
   assert.ok(image.readUInt32BE(16)>1000&&image.readUInt32BE(20)>25)
  }
  if(isAnnulledAnswer(q.answer)){annulled++;for(const letter of 'ABCD')assert.ok(isCorrectAnswer(letter,q.answer))}
 }
 const answers=Object.fromEntries(qs.map((q,i)=>[i,q.answer[0]]))
 const payload=attemptPayload({session:{id:'test',startedAt:1,endedAt:2},questions:qs,answers,title:qs[0].examTitle,source:'cfc'})
 assert.equal(payload.points,50);assert.equal(payload.scoring,'standard');assert.equal(payload.exam_source,'cfc')
}
assert.equal(annulled,6)
assert.equal(cfcSlug('2026','3'),null)
assert.equal(cfcSlug('2024','1'),null)
assert.equal(cfcOfficialSource('oab-47-primeira-fase',1),undefined)
assert.deepEqual(cfcQuestionMedia('oab-47-primeira-fase','{}'),{})
assert.equal(attemptSource({exam_title:'CFC 2026.2 — Exame de Suficiência'}),'cfc')
assert.equal(attemptSource({exam_title:'OAB 2026 — 47º Exame de Ordem'}),'oab')
console.log('CFC: 4 edições, 200 questões, fontes, imagens, 6 anulações e histórico validados.')
