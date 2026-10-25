import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { enemExams, enemAreas, enemHasLanguage, selectEnemQuestions, enemOfficialNumber, enemOfficialSource } from '../src/lib/enemExams.js'
import { isCorrectAnswer } from '../src/lib/examAnswers.js'
const read = path => readFileSync(path, 'utf8')
const fixture = Array.from({length:185},(_,i)=>({number:i+1,text:'Q'+(i+1)}))
for (const area of enemAreas) for (const language of ['ingles','espanhol']) {
 const selected=selectEnemQuestions(fixture,area.value,language)
 assert.equal(selected.length,area.end-area.start+1)
 assert.deepEqual(selected.map(q=>enemOfficialNumber(q.number)),Array.from({length:selected.length},(_,i)=>area.start+i))
 if (enemHasLanguage(area.value)) assert.equal(selected[0].number,language==='ingles'?1:181)
}
assert.throws(()=>selectEnemQuestions(fixture.filter(q=>q.number!==181),'completa','espanhol'))
assert.throws(()=>selectEnemQuestions([...fixture,fixture[0]],'completa','ingles'))
assert.throws(()=>selectEnemQuestions(fixture,'invalida'))
assert.equal(selectEnemQuestions(fixture.slice(0,180),'completa','ingles').length,180)
assert.equal(selectEnemQuestions(fixture,'dia-2','espanhol')[0].number,91)
for (const year of [2022,2023,2025]) {
 const rows=JSON.parse(read('pdf-extracts/enem-migration/'+year+'-questions.json'))
 assert.deepEqual(rows.map(q=>q.number),Array.from({length:185},(_,i)=>i+1))
 const key={}
 for (const day of [1,2]) {
  for(const line of read('pdf-extracts/enem-migration/'+year+'-gabarito-'+day+'.txt').split(/\r?\n/)) {
   const m=line.match(/^(\d+) ([A-E]|Anulado) (?:([A-E]) )?(\d+) ([A-E]|Anulado)$/)
   if(m) {key[+m[1]]=m[2]; if(m[3])key[+m[1]+180]=m[3];key[+m[4]]=m[5]}
  }
 }
 assert.equal(Object.keys(key).length,185)
 for(const q of rows) {
  assert.equal(q.options.length,5)
  assert.ok(q.options.every(o=>typeof o==='string'&&o.trim()))
  assert.equal(q.answer,key[q.number]==='Anulado'?'A/B/C/D/E':key[q.number])
  for (const image of q.support_image.split(',').filter(Boolean)) { assert.ok(existsSync('public'+image),image); assert.ok(!/\/q\d+\.png$/.test(image),image) }
  assert.ok(q.text.trim().length >= 15, `${year}/${q.number}: comando ausente`)
  assert.ok(!/leia o enunciado|Texto disponível para leitura|\[\[placeholder\]\]/.test(q.text+q.support+q.options.join(' ')))
  if(q.graphical_options) assert.ok(q.support_image, `${year}/${q.number}: alternativas gráficas sem imagem`)
  if(q.answer==='A/B/C/D/E')assert.ok(isCorrectAnswer(undefined,q.answer))
 }
 for(const area of enemAreas)for(const lang of ['ingles','espanhol'])selectEnemQuestions(rows,area.value,lang)
}
const spanish=JSON.parse(read('pdf-extracts/enem-migration/2024-questions.json'))
assert.deepEqual(spanish.map(q=>q.number),[181,182,183,184,185])
const sql=read('supabase/import-enem-2022-2023-2025.sql')
const sqlRows=JSON.parse(sql.split('$enem_json$')[1])
assert.equal(sqlRows.length,555)
assert.ok(sqlRows.every(q=>['enem-2022','enem-2023','enem-2025'].includes(q.slug)))
assert.ok(!/delete from|drop table/i.test(sql))
assert.ok(sql.includes('on conflict (exam_id,number) do update'))
const main=read('src/main.jsx')
assert.ok(!/api\.enem\.dev|enem-api|loadEnemQuestions|normalizeEnemQuestion/.test(main+read('index.html')))
// O portal das ferramentas depende de document e tem verificação própria.
// Este teste SSR cobre os dados e a renderização da prova, sem portal de browser.
const appStart=main.indexOf('function App()')
const appStateEnd=main.indexOf('const beginSession')
const stateSource=main.slice(appStart,appStateEnd).replace(/(const \[([^,]+),[^\]]+\] = )(useState|usePageState)/g, (_, declaration, name, hook) => `${declaration}${hook === 'useState' ? 'testUseState' : 'testUsePageState'}.bind(null,${JSON.stringify(name.trim())}${hook === 'usePageState' ? ',usePageState' : ''})`)
const source=(main.slice(0,appStart)+stateSource+main.slice(appStateEnd)).replace("import ExamTools from './ExamTools'", 'const ExamTools = () => null').replace(/createRoot\(document\.getElementById\('root'\)\)\.render\([\s\S]*$/,'')+'\nexport { EnemCard, App }'
const output=buildSync({stdin:{contents:source,resolveDir:process.cwd()+'/src',loader:'jsx'},bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom/client','lucide-react','@supabase/supabase-js'],loader:{'.css':'empty'},define:{'import.meta.env':'{}'}}).outputFiles[0].text
const mod={exports:{}}
let testOverrides={}
const testUseState=(name,initial)=>React.useState(Object.hasOwn(testOverrides,name)?testOverrides[name]:initial)
const testUsePageState=(name,hook,...args)=>Object.hasOwn(testOverrides,name)?React.useState(testOverrides[name]):hook(...args)
new Function('module','exports','require','testUseState','testUsePageState',output)(mod,mod.exports,createRequire(import.meta.url),testUseState,testUsePageState)
for(const year of enemExams)for(const discipline of ['completa','dia-2']) {
 const html=renderToStaticMarkup(React.createElement(mod.exports.EnemCard,{catalog:enemExams,year:String(year.year),discipline,language:'ingles'}))
 assert.equal((html.match(/<select(?:\s|>)/g)||[]).length,3)
 assert.ok(html.includes('Disponível')&&!html.includes('API conectada'))
 assert.equal((html.match(/<select[^>]*disabled/g)||[]).length,discipline==='dia-2'?1:0)
}
function renderApp(overrides) {
 testOverrides=overrides
 try{return renderToStaticMarkup(React.createElement(mod.exports.App))}
 finally{testOverrides={}}
}
const rows=JSON.parse(read('pdf-extracts/enem-migration/2025-questions.json'))
const shared=rows.find(q=>q.number===6).support
assert.equal((shared.match(/^\d+ /gm)||[]).length,45)
for(const n of [7,8,9,10])assert.equal(rows.find(q=>q.number===n).support,shared)
assert.equal(rows.find(q=>q.number===25).support_image,'')
assert.ok(rows.find(q=>q.number===25).support.includes('A palavra rede é vasta.'))
assert.deepEqual(rows.find(q=>q.number===154).options,['1/2','1/10','1/16','1/24','1/256'])
const mapped=selectEnemQuestions(rows,'completa','ingles').map(q=>({...q,questionId:'2025-'+q.number,examSlug:'enem-2025',supportImage:q.support_image,sourceUrl:enemOfficialSource('enem-2025',q.number)}))
for(const n of [1,3,6,90,115,121,178,180]) {
 const html=renderApp({selectedExam:'enem',supabaseExamSlug:'enem-2025',enemYear:'2025',enemDiscipline:'completa',enemQuestions:mapped,screen:'review',current:n-1})
 assert.ok(html.includes('ENEM 2025')&&html.includes('do Inep'))
 assert.ok(!html.includes('enem-official-question'))
 assert.ok(html.includes('Texto ou imagem de apoio')||!mapped[n-1].support&&!mapped[n-1].supportImage)
 assert.ok(!html.includes('Módulo I'))
 assert.equal((html.match(/src="[^"]*q\d+\.png"/g)||[]).length,0)
 assert.equal((html.match(/class="support-image"/g)||[]).length,mapped[n-1].supportImage.split(',').filter(Boolean).length)
 assert.ok(html.includes('#page='+mapped[n-1].page))
 if([115,121,178].includes(n))assert.ok(html.includes('ponto atribuído automaticamente'))
}
for(const year of [2022,2023,2025]) {
 const data=JSON.parse(read('pdf-extracts/enem-migration/'+year+'-questions.json'))
 for(const q of data)assert.ok(enemOfficialSource('enem-'+year,q.number).endsWith('#page='+q.page))
}
console.log('ENEM: 555 questões com textos separados, figuras locais, gabaritos oficiais, espanhol, filtros, SQL e card uniforme verificados.')
