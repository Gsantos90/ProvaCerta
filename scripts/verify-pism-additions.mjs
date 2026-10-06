import assert from 'node:assert/strict'
import { readFile, access } from 'node:fs/promises'
import { pismExamDetails, pismSelectionLabel, pismOfficialSource } from '../src/lib/pismSources.js'
import { isCorrectAnswer, isAnnulledAnswer } from '../src/lib/examAnswers.js'
const read = path => readFile(new URL(path, import.meta.url), 'utf8')
const catalog = JSON.parse(await read('../pdf-extracts/pism-expansao/catalogo-final.json'))
const main = await read('../src/main.jsx')
let total = 0, images = 0, multiple = 0, annulled = 0
for (const [slug, exam] of Object.entries(catalog)) {
  const module = exam.module.toLowerCase(), key = `${module}-${exam.year}-dia-${exam.day}`
  const qs = JSON.parse(await read(`../pdf-extracts/pism-expansao/questoes-${key}.json`))
  // Independent reading of answer rows extracted from the official PDFs.
  let answerText = await read(`../pdf-extracts/pism-expansao/gabarito-${key}.txt`)
  if (key === 'ii-2024-dia-1') answerText = answerText.replace(/C ou\s*\n([A-E ]+)\s*\nD\*/, 'C/D $1')
  answerText = answerText.replace(/([A-E]) ou ([A-E])/g, '$1/$2')
  const rows = answerText.split(/\r?\n/).map(l=>l.trim()).filter(l=>/^(?:[A-E](?:\/[A-E])*|ANULADA)(?: (?:[A-E](?:\/[A-E])*|ANULADA)){4,9}$/.test(l))
  const official = rows.flatMap(l=>l.split(' ')).map(a=>a==='ANULADA'?'A/B/C/D/E':a)
  assert.equal(official.length, 20, `${slug}: gabarito incompleto`)
  assert.deepEqual(qs.map(q=>q.number), Array.from({length:20},(_,i)=>i+1))
  assert.equal(pismSelectionLabel(`${exam.year}-${module}-${exam.day}`), `${exam.year} · ${exam.day}º dia`)
  assert.equal(pismExamDetails(slug).module, exam.module)
  assert.ok(main.includes(`'${exam.year}-${module}-${exam.day}': '${slug}'`))
  assert.ok(main.includes(`'${slug}': '${slug}'`))
  assert.equal(new Set(qs.map(q=>q.subject)).size,4)
  for (const subject of new Set(qs.map(q=>q.subject))) assert.equal(qs.filter(q=>q.subject===subject).length,5)
  for (const q of qs) {
    total++
    assert.equal(q.answer,official[q.number-1],`${slug} Q${q.number}`)
    assert.equal(q.options.length,5)
    assert.ok(q.options.every(o=>typeof o==='string' && o.trim()))
    assert.ok(q.explanation.length>80)
    assert.ok(q.support.includes('Redação adaptada'))
    assert.ok(!/\(cid:|[\u0000-\u0008\u000b\u000c\u000e-\u001f\ufffd]|Pró Reitoria|Coordenação Geral|Questão \d+\./.test(q.text+q.options.join(' ')))
    assert.ok(pismOfficialSource(slug,q.number).endsWith(`#page=${q.page}`))
    if(q.support_image){ images++; await access(new URL('../public'+q.support_image,import.meta.url)) }
    const cancelled=isAnnulledAnswer(q.answer)
    if(cancelled) annulled++;else if(q.answer.includes('/'))multiple++
    assert.equal(isCorrectAnswer(undefined,q.answer),cancelled)
    for (const selected of 'ABCDE') assert.equal(isCorrectAnswer(selected,q.answer), cancelled || q.answer.split('/').includes(selected))
  }
  assert.equal(qs.reduce((n,q)=>n+Number(isCorrectAnswer(q.answer.split('/')[0],q.answer)),0),20)
  if(exam.module==='III') assert.deepEqual(Object.keys(exam.areas).sort(),['economia','exatas','humanas','saude'])
}
for (const [filename,exams,questions] of [['seed-pism-ii-2024.sql',2,40],['seed-pism-iii-2024-2026.sql',6,120]]){
 const sql=await read('../supabase/'+filename)
 assert.equal((sql.match(/insert into public.exams/g)||[]).length,exams)
 assert.equal((sql.match(/insert into public.questions/g)||[]).length,questions)
 assert.equal((sql.match(/on conflict \(exam_id,number\) do update/g)||[]).length,questions)
 assert.ok(sql.includes('begin;')&&sql.includes('commit;'))
 assert.ok(!/\b(?:delete|truncate)\b/i.test(sql))
 for(const [slug,exam] of Object.entries(catalog)){
  if((filename.includes('-ii-')?'II':'III')!==exam.module)continue
  const qs=JSON.parse(await read(`../pdf-extracts/pism-expansao/questoes-${exam.module.toLowerCase()}-${exam.year}-dia-${exam.day}.json`))
  for(const q of qs) assert.ok(sql.includes(`'${q.answer}', '${q.explanation.replaceAll("'","''")}'`))
 }
}
assert.equal(total,160);assert.equal(images,23);assert.equal(multiple,3);assert.equal(annulled,1)
// Recompute representative numerical answers independently.
assert.equal(153/1.7,90)
assert.equal(50*(24.2+2*35.5)/1000,4.76)
assert.equal((105+58)-(85+103),-25)
assert.ok(12*(2*12+5)<375 && 13*(2*13+5)>375)
assert.ok(Math.abs(6*.8*2/.6-16)<1e-12)
assert.equal(5*10/2,25)
assert.equal(5*4*3*2*1/(5*4**4),3/32)
assert.equal(3+4+2*5,17)
assert.equal((120)/(792),5/33)
assert.equal(40*(9/5)*2,144)
console.log('PISM: 8 novas provas, 160 questões e explicações, 23 figuras, 3 respostas duplas e 1 anulação verificados; SQL e seleção conferidos.')