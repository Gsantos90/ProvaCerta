import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { parse } from '@babel/parser'
import { pcQuestionMedia, pcOfficialSource } from '../src/lib/pcExams.js'
import { isCorrectAnswer, isAnnulledAnswer } from '../src/lib/examAnswers.js'

const read = path => readFileSync(path, 'utf8')
// Use the committed seed rather than transient extraction files.
const sql = read('supabase/seed-pc-sp-mg-recent.sql')
assert.ok(!/delete from|drop table|alter table/i.test(sql))
assert.ok(sql.trim().endsWith('commit;'))
function fields(text) {
  const values = []; let start = 0, quoted = false
  for (let i=0; i<text.length; i++) {
    if (text[i] === "'") { if (quoted && text[i+1] === "'") { i++; continue }; quoted = !quoted }
    if (text[i] === ',' && !quoted) { values.push(text.slice(start,i)); start=i+1 }
  }
  values.push(text.slice(start)); assert.ok(!quoted)
  return values.map(v => v === 'null' ? null : v.startsWith("'") ? v.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''", "'") : Number(v))
}
const banks = {}
for (const match of sql.matchAll(/select id,(.*?) from public.exams where slug='([^']+)'/gs)) {
  const [number,subject,text,support,media,options,answer] = fields(match[1])
  ;(banks[match[2]] ||= []).push({number,subject,text,support,media,options:JSON.parse(options),answer})
}
const expected = {'pc-sp-2023-investigador':80,'pc-mg-2025-investigador':70,'pc-mg-2026-auxiliar-pericia':60}
assert.deepEqual(Object.keys(banks),Object.keys(expected))
for (const [slug,count] of Object.entries(expected)) {
  const questions=banks[slug]
  assert.deepEqual(questions.map(q=>q.number),Array.from({length:count},(_,i)=>i+1))
  for (const q of questions) {
    assert.ok(q.text.length>12)
    assert.equal(q.options.length,slug.includes('2026')?4:5)
    assert.ok(q.options.every(s=>typeof s==='string'&&s.length>0))
    assert.match(q.answer,/^(?:[A-E]|A\/B\/C\/D\/E)$/)
    assert.ok(isCorrectAnswer(q.answer[0],q.answer))
    assert.match(pcOfficialSource(slug,q.number),/^https:\/\/.*\.pdf#page=\d+$/)
    const {originalImages=[],supportImage=[]}=pcQuestionMedia(slug,q.media)
    if (slug.startsWith('pc-sp')) assert.ok(originalImages.length)
    else {
      assert.equal(originalImages.length,0)
      assert.ok(!/CEBRASPE|PROVA OBJETIVA|EIXO GERAL|MÓDULO|FGV CONHECIMENTO|Folha de Respostas/.test(q.text+q.options.join('')+(q.support||'')))
    }
    for (const path of [...originalImages,...supportImage]) {
      assert.ok(existsSync('public'+path),path)
      const data=readFileSync('public'+path)
      assert.equal(data.toString('hex',0,8),'89504e470d0a1a0a')
      assert.ok(data.readUInt32BE(16)>200&&data.readUInt32BE(20)>20,path)
    }
  }
}
assert.ok(isAnnulledAnswer(banks['pc-mg-2025-investigador'][58].answer))
for (const n of [17,18,19,20]) assert.ok(pcQuestionMedia('pc-sp-2023-investigador',banks['pc-sp-2023-investigador'][n-1].media).originalImages.some(s=>s.includes('contexto-17-20')))
const auxiliar=banks['pc-mg-2026-auxiliar-pericia']
for (let n=1;n<=6;n++) {
  assert.ok(auxiliar[n-1].support.startsWith('Texto CG1A1 Na esteira da pandemia'))
  assert.equal(auxiliar[n-1].support,auxiliar[0].support)
  assert.ok(!auxiliar[n-1].text.includes('Na esteira da pandemia'))
}
assert.deepEqual(auxiliar[14].options,['56/143','70/143','73/143','129/143'])
for (const n of [1,13,16]) assert.equal(pcQuestionMedia('pc-mg-2025-investigador',banks['pc-mg-2025-investigador'][n-1].media).supportImage.length,1)
assert.equal(pcQuestionMedia('pc-mg-2026-auxiliar-pericia',auxiliar[7].media).supportImage.length,1)
assert.equal(banks['pc-mg-2025-investigador'][65].subject,'Noções de Criminologia')
assert.deepEqual(pcQuestionMedia('pc-rj-2022-inspetor','{}'),{})
assert.equal(pcOfficialSource('missing',1),undefined)
const main=read('src/main.jsx')
for (const slug of Object.keys(expected)) assert.ok(main.includes(slug))
for (const file of ['src/main.jsx','src/lib/pcExams.js','src/lib/pcSources.js']) parse(read(file),{sourceType:'module',plugins:['jsx']})
console.log('PC SP/MG: 210 questões, alternativas, anulação, fontes, imagens e integração validadas.')
