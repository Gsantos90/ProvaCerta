import assert from 'node:assert/strict'
import {readFileSync,existsSync} from 'node:fs'
import {nationalRoleLabel,nationalYears,nationalPapers,nationalQuestionMedia,nationalOfficialSource,nationalKeySource} from '../src/lib/nationalExams.js'
import {isBinaryQuestion,cebraspeScore} from '../src/lib/cebraspeScore.js'
import {isAnnulledAnswer} from '../src/lib/examAnswers.js'
import {attemptPayload} from '../src/lib/studyHistory.js'
import {attemptSource} from '../src/lib/catalogProgress.js'
const banks=JSON.parse(readFileSync('pdf-extracts/national/questions.json','utf8'))
assert.deepEqual(nationalYears('prf'),['2021','2019','2013'])
assert.deepEqual(nationalYears('receita'),['2023','2014','2012'])
assert.deepEqual(nationalYears('tse'),['2024','2012','2007'])
assert.equal(banks.length,14)
assert.equal(banks.reduce((sum,b)=>sum+b.questions.length,0),1280)
assert.equal(nationalPapers('prf','2021').length,2)
assert.equal(nationalPapers('receita','2012').length,3)
for(const {exam,questions} of banks){
 assert.deepEqual(questions.map(q=>q.number),Array.from({length:exam.count},(_,i)=>i+1))
 assert.equal(attemptSource({exam_title:exam.title}),exam.source)
 for(const q of questions){
  assert.ok(q.text.length>5,exam.slug+' '+q.number)
  assert.ok([2,4,5].includes(q.options.length))
  assert.ok(q.options.every(v=>typeof v==='string'&&v.length))
  assert.match(q.answer,/^(?:[A-E]|A\/B\/C\/D\/E)$/)
  const media=nationalQuestionMedia(exam.slug,q.support_image)
  assert.equal(media.originalImages,undefined)
  assert.equal(media.contextPages,undefined)
  assert.ok(!/Alternativa [A-E] no caderno original/.test(q.options.join(' ')))
  assert.ok(!/TODOS OS DIREITOS|CONCURSO PÚBLICO DA RECEITA|Área para rascunho|Cargo: Policial/.test(q.text+' '+q.support+' '+q.options.join(' ')))
  assert.ok(!/[\ue000-\uf8ff]/.test(q.text+' '+q.support+' '+q.options.join(' ')))
  if (!isAnnulledAnswer(q.answer)) assert.ok('ABCDE'.indexOf(q.answer)<q.options.length)
  if (['prf','tse'].includes(exam.source) && questions.every(isBinaryQuestion)) assert.ok(q.support)
  for(const file of media.supportImage || []){
   assert.ok(existsSync('public'+file),file)
   assert.equal(readFileSync('public'+file).toString('hex',0,8),'89504e470d0a1a0a')
  }
  assert.match(nationalOfficialSource(exam.slug,q.number),/^https:.*#page=\d+$/)
  assert.match(nationalKeySource(exam.slug,q.number),/^https:/)
 }
 const binary=questions.every(isBinaryQuestion)
 const answers=Object.fromEntries(questions.map((q,i)=>[i,q.answer[0]]))
 const attempt=attemptPayload({session:{id:'test',startedAt:1,endedAt:2},questions,answers,title:exam.title,binary,source:exam.source})
 assert.equal(attempt.points,exam.count)
 assert.equal(attempt.exam_source,exam.source)
 assert.equal(attempt.scoring,binary?'cebraspe':'standard')
 if(binary){
  const i=questions.findIndex(q=>!isAnnulledAnswer(q.answer))
  answers[i]=answers[i]==='A'?'B':'A'
  assert.equal(cebraspeScore(questions,answers).points,exam.count-2)
  assert.equal(attemptPayload({session:{id:'test',startedAt:1,endedAt:2},questions,answers,title:exam.title,binary,source:exam.source}).points,exam.count-2)
 }
}
const bank=slug=>banks.find(b=>b.exam.slug===slug).questions
assert.equal(bank('prf-2021-ingles')[0].answer,'A/B/C/D/E')
assert.equal(bank('receita-2014-auditor-p1')[30].answer,'B')
assert.equal(bank('receita-2014-auditor-p1')[36].answer,'A/B/C/D/E')
assert.equal(bank('receita-2012-auditor-p1')[21].answer,'A')
assert.equal(bank('receita-2012-auditor-p1')[28].answer,'A')
assert.ok(bank('tse-2007-tecnico-administrativo').every(q=>q.options.length===4))
assert.ok(!nationalPapers('tse','2012')[0].title.includes('Unificado'))
assert.deepEqual(nationalQuestionMedia('cfc-2026-2','{}'),{})
assert.equal(nationalOfficialSource('cfc-2026-2',1),undefined)
const q=(slug,n)=>bank(slug)[n-1]
for(const [slug,first,last,fragment] of [
 ['prf-2021-ingles',9,21,'Nos Estados Unidos'],
 ['prf-2019',1,9,'A vida humana'],
 ['prf-2019',10,16,'As atividades pertinentes ao trabalho'],
 ['prf-2019',17,20,'O nome é o nosso rosto'],
 ['receita-2023-auditor-manha',11,15,'Evolutionary moral psychologists'],
 ['receita-2023-auditor-manha',16,18,'How trade can become'],
 ['receita-2014-auditor-p2',14,16,'Dados para a resolução'],
 ['receita-2014-auditor-p2',20,22,'Dados para a resolução'],
 ['receita-2014-auditor-p2',23,26,'Patrimônio Líquido da Cia. Madeira'],
 ['receita-2014-auditor-p2',29,30,'Cia. Amazônia'],
 ['receita-2012-auditor-p3',24,25,'Os estatutos da Cia. Omega'],
 ['receita-2012-auditor-p3',27,28,'Contas de Ativo'],
 ['tse-2012-tecnico-administrativo',1,15,'Presente perfeito'],
 ['tse-2012-tecnico-administrativo',48,50,'José Maria'],
]) for(let n=first;n<=last;n++) assert.ok(q(slug,n).support?.includes(fragment),slug+' '+n+' support')
for(let n=41;n<=80;n++)assert.equal(q('tse-2012-tecnico-administrativo',n).options.length,2)
assert.ok(q('receita-2023-auditor-manha',1).support.startsWith('A origem dos tributos'))
assert.ok(q('receita-2023-auditor-manha',1).text.startsWith('Um texto obedece'))
assert.equal(q('receita-2023-auditor-manha',76).options[3].split('\n')[0],'search_string <- function(lista, palavra){')
assert.equal(q('receita-2014-auditor-p1',67).options[1],'4/3')
assert.equal(q('receita-2012-auditor-p1',8).options[1],'−2/r.')
assert.equal(nationalRoleLabel(nationalPapers('prf','2021')[0]),'Policial Rodoviário Federal — Inglês')
assert.equal(nationalRoleLabel(nationalPapers('receita','2023')[0]),'Auditor-Fiscal — Manhã')
assert.equal(nationalRoleLabel(nationalPapers('tse','2024')[0]),'Técnico Judiciário — Área Administrativa')
assert.equal(nationalQuestionMedia('receita-2023-auditor-manha','{"support":[]}').supportImage,null)
console.log('14 cadernos / 1.280 itens: sequências, gabaritos, imagens, idiomas, fontes, pontuação e histórico validados.')
