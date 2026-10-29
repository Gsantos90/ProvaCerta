import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { parse } from '@babel/parser'
import { pmRolesByState, pmOfficialSource } from '../src/lib/pmExams.js'
import { pmerjRolesConfig } from '../src/lib/pmerjExams.js'
import { attemptSource } from '../src/lib/catalogProgress.js'

const sql=readFileSync('supabase/seed-pmsp-recent.sql','utf8')
function fields(text) {
  const out=[];let start=0,quote=false
  for(let i=0;i<text.length;i++) {
    if(text[i]==="'") {if(quote&&text[i+1]==="'"){i++;continue} quote=!quote}
    if(text[i]===','&&!quote){out.push(text.slice(start,i));start=i+1}
  }
  out.push(text.slice(start));assert(!quote)
  return out.map(v=>v==='null'?null:v.startsWith("'")?v.replace(/::jsonb$/,'').slice(1,-1).replaceAll("''","'"):Number(v))
}
const banks={}
for(const m of sql.matchAll(/select id,(.*?) from public.exams where slug='([^']+)'/gs)) {
  const [number,subject,text,support,media,options,answer]=fields(m[1])
  ;(banks[m[2]]||=[]).push({number,subject,text,support,media,options:JSON.parse(options),answer})
}
assert.equal(Object.keys(banks).length,9)
assert.equal(Object.values(banks).flat().length,660)
assert.strictEqual(pmRolesByState['Rio de Janeiro'],pmerjRolesConfig)
assert.deepEqual(Object.keys(pmRolesByState['São Paulo']),['Soldado','Oficial'])
assert.equal(pmRolesByState['São Paulo'].Soldado.years.length,3)
assert.equal(pmRolesByState['São Paulo'].Oficial.years.length,6)
for(const [slug,rows] of Object.entries(banks)) {
  const count=slug.includes('soldado')?60:80
  assert.deepEqual(rows.map(q=>q.number),Array.from({length:count},(_,i)=>i+1))
  for(const q of rows) {
    assert.ok(q.text.length>12,`${slug} Q${q.number}`)
    assert.equal(q.options.length,5)
    assert(q.options.every(s=>typeof s==='string'&&s.trim()))
    assert.match(q.answer,/^(?:[A-E]|A\/B\/C\/D\/E)$/)
    assert(!/CONFIDENCIAL ATÉ|FGV CONHECIMENTO|AGUARDE A ORDEM|Folha de Respostas|RASCUNHO|[\ue000-\uf8ff]/i.test(q.text+q.options.join('')),`${slug} Q${q.number}`)
    for(const path of JSON.parse(q.media||'[]'))assert(existsSync('public'+path),path)
    assert.match(pmOfficialSource(slug,q.number),/^\/provas\/pmsp\/.*\.pdf#page=\d+$/)
  }
  const annulled=rows.filter(q=>q.answer.includes('/')).map(q=>q.number)
  assert.deepEqual(annulled,slug.includes('2025-11')?[53,57]:slug.includes('oficial-2025')?[6,77]:slug.includes('oficial-2026')?[47]:[])
  if(slug.includes('oficial'))for(let n=39;n<=44;n++)assert(rows[n-1].support,`${slug} Q${n}: missing foreign passage`)
}
for(let n=1;n<=8;n++)assert.equal(banks['pmsp-soldado-2026'][n-1].support,banks['pmsp-soldado-2026'][0].support)
for(const slug of ['pmsp-soldado-2026','pmsp-soldado-2025-11'])assert.equal(banks[slug][31].support,banks[slug][32].support)
assert(banks['pmsp-soldado-2026'][22].text.includes('5/4'))
assert.deepEqual(banks['pmsp-soldado-2026'][32].options,['9/40','9/20','1/5','3/10','5/27'])
assert.notEqual(pmOfficialSource('pmsp-oficial-2026-ingles',39),pmOfficialSource('pmsp-oficial-2026-espanhol',39))
assert.equal(attemptSource({exam_title:'PM São Paulo · Soldado · 2026'}),'pmrj')
assert(pmOfficialSource('pmerj-2014-soldado',1))
for(const path of ['src/main.jsx','src/ExamCards.jsx','src/lib/pmExams.js','src/lib/pmspExams.js'])parse(readFileSync(path,'utf8'),{sourceType:'module',plugins:['jsx']})
console.log('PM: RJ preservado; 6 aplicações SP, 9 versões, 660 questões, apoios, figuras, idiomas, fontes e gabaritos validados.')
