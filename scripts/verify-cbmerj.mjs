import assert from 'node:assert/strict'
import {readFile,access,writeFile} from 'node:fs/promises'
import {createClient} from '@supabase/supabase-js'
import {supportImageUrls} from '../src/lib/safeUrls.js'
import {bombeirosExams,bombeirosOfficialSource} from '../src/lib/bombeirosExams.js'
const dir='pdf-extracts/cbmerj/'
const reviewed=JSON.parse(await readFile(dir+'questions-reviewed.json','utf8'))
const env=Object.fromEntries((await readFile('.env.local','utf8')).split(/\r?\n/).filter(l=>/^VITE_\w+=/.test(l)).map(l=>{const i=l.indexOf('=');return[l.slice(0,i),l.slice(i+1).replace(/^['"]|['"]$/g,'')]}))
const client=createClient(env.VITE_SUPABASE_URL,env.VITE_SUPABASE_ANON_KEY||env.VITE_SUPABASE_PUBLISHABLE_KEY)
const {data,error}=await client.from('exams').select('id,slug,title,source,year,questions(number,subject,text,support,support_image,options,answer,explanation)').eq('source','cbmerj')
if(error)throw error
assert.equal(data.length,6)
let total=0,visual=0;const assets=new Set()
for(const exam of data){
 const expected=reviewed[exam.slug];assert.ok(expected)
 assert.equal(exam.questions.length,expected.length)
 const year=Number(exam.year)
 let key=(await readFile(dir+year+'-gabarito.txt','utf8'))
 if(year<=2024)key=key.split(/Tipo 2|PROVA TIPO 2/i)[0]
 const letters=key.split(/\r?\n/).filter(l=>/^[A-E*](?:\s+[A-E*])+$/.test(l.trim())).flatMap(l=>l.trim().split(/\s+/))
 const answers=year<=2024?letters:letters.slice(0,10).concat(exam.slug.endsWith('espanhol')?letters.slice(10,20):letters.slice(20,30),letters.slice(30))
 assert.equal(answers.length,expected.length)
 for(const row of exam.questions){
  const q=expected.find(q=>q.number===row.number);assert.ok(q)
  for(const field of ['subject','text','support','support_image','options','answer','explanation'])assert.deepEqual(row[field],q[field],`${exam.slug}/${row.number}: ${field}`)
  assert.equal(row.answer,answers[row.number-1])
  assert.equal(row.options.length,year<=2024?5:4)
  assert.ok(row.options.every(o=>o.trim().length))
  assert.ok(!/\(cid:|\ufffd|TIPO BRANCA|PÁGINA \d|RASCUNHO/.test(row.text+row.options.join(' ')+(row.support||'')))
  assert.ok(bombeirosOfficialSource(exam.slug,row.number).endsWith('#page='+bombeirosExams[exam.slug].pages[row.number-1]))
  if(row.support_image){visual++;const urls=supportImageUrls(row.support_image);assert.ok(urls.length);for(const url of urls){await access('public'+url);assets.add(url)}}
  if(['Língua Portuguesa','Inglês','Espanhol'].includes(row.subject)&&year>2024)assert.ok(row.support?.length>1000)
  total++
 }
}
assert.equal(total,520)
for(const [year,numbers] of [[2023,[21,26,32,33,35,37,38,39,40,42,43,45,63,65,67,70,81,85,88,89,90,96]],[2024,[42,48,50,60,65,66,79,80,84,85,87,88,89,90,91,93]],[2025,[21,25,27,28,29,41,42,43,47,48,49,50,52,53,58,59,61,62,63,64,65,66,67,68,69,70,71,74,75,77,78,79,80]],[2026,[21,25,29,30,31,39,41,42,43,44,45,48,49,51,53,59,60,61,62,63,67,69,70,71,73,75,76,77,78,79,80]]]){
 for(const [slug,qs]of Object.entries(reviewed).filter(([slug])=>slug.includes('-'+year+'-')))for(const n of numbers)assert.ok(qs.find(q=>q.number===n).support_image,`${slug}/${n}: required figure`)
}
for(const path of assets){const res=await fetch('http://127.0.0.1:5173'+path);assert.equal(res.status,200);assert.ok(res.headers.get('content-type')?.startsWith('image/'),path)}
for(const year of [2023,2024,2025,2026]){const res=await fetch('http://127.0.0.1:5173/provas/cbmerj/'+year+'.pdf');assert.equal(res.status,200);assert.equal(Buffer.from(await res.arrayBuffer()).subarray(0,4).toString(),'%PDF')}
await writeFile(dir+'database-after.json',JSON.stringify(data,null,2)+'\n')
console.log(`6 opções de prova, 4 edições, ${total} registros conferidos com o gabarito definitivo; ${visual} questões com apoio visual; ${assets.size} imagens acessíveis; 4 PDFs oficiais acessíveis.`)
