import assert from 'node:assert/strict'
import {readFile,access} from 'node:fs/promises'
import {supportImageUrls} from '../src/lib/safeUrls.js'
const dir='pdf-extracts/pism-revisao/'
const read=async name=>JSON.parse(await readFile(dir+name,'utf8'))
const [before,after,reviewed]=await Promise.all(['database-before.json','database-after.json','questions-reviewed.json'].map(read))
assert.equal(after.length,18)
let total=0,images=0
const paths=new Set()
for(const exam of after){
 assert.equal(exam.questions.length,20)
 const old=before.find(e=>e.id===exam.id)
 for(const item of exam.questions){
  const expected=reviewed[exam.slug].find(q=>q.id===item.id)
  assert.ok(expected,`${exam.slug}/${item.number}: identifier`)
  assert.equal(item.answer,old.questions.find(q=>q.id===item.id).answer)
  for(const field of ['number','subject','text','support','support_image','options','explanation'])assert.deepEqual(item[field],expected[field],`${exam.slug}/${item.number}: ${field}`)
  assert.equal(item.options.length,5)
  assert.ok(item.options.every(s=>typeof s==='string'&&s.trim()))
  assert.ok(!/\(cid:|\ufffd/.test(item.text+(item.support||'')+item.options.join(' ')))
  if(item.support_image){
   images++
   const urls=supportImageUrls(item.support_image)
   assert.ok(urls.length,`${exam.slug}/${item.number}: image decoding`)
   for(const url of urls){assert.ok(url.startsWith('/'));await access('public'+url);paths.add(url)}
  }
  total++
 }
}
assert.equal(total,360)
for(const path of paths){
 const res=await fetch('http://localhost:5173'+path)
 assert.equal(res.status,200,path)
 assert.ok(res.headers.get('content-type')?.startsWith('image/'),`${path}: image served`)
}
console.log(`${total} questões conferidas no banco; IDs e gabaritos preservados; ${images} questões com imagens; ${paths.size} arquivos de imagem acessíveis.`)
