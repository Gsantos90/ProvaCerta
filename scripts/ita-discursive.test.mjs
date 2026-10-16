import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createHash } from 'node:crypto'
import { gradeItaQuestion, matchesItaField, readItaNumber } from '../src/lib/itaDiscursiveGrading.js'
const root = 'public/provas/ita/2026/segunda-fase/'
const exam = JSON.parse(readFileSync(root + 'catalogo.json', 'utf8'))
const questions = exam.questions
const find = (subject, n) => questions.find(q => q.subject === subject && q.originalNumber === n)
const field = (subject, n, id) => find(subject, n).fields.find(f => f.id === id)

test('caderno único completo, texto nativo, figuras e proveniência', () => {
  assert.equal(questions.length, 46)
  assert.deepEqual(['Matemática','Química','Física','Português','Redação'].map(s => questions.filter(q => q.subject === s).length), [10,10,10,15,1])
  assert.equal(questions.reduce((n,q) => n + q.fields.length, 0), 87)
  assert.equal(questions.flatMap(q => q.fields).filter(f => f.manual).length, 6)
  for (const [index,q] of questions.entries()) {
    assert.equal(q.number, index + 1)
    assert.ok(q.text.length > 40)
    assert.equal(q.questionImage, undefined)
    assert.ok(q.support.length > 50)
    assert.ok(existsSync('public' + q.examSource.split('#')[0]))
    if (q.image) assert.ok(existsSync('public' + q.image))
    for (const image of q.optionImages || []) assert.ok(existsSync('public' + image))
    for (const f of q.fields) {
      assert.ok(f.reference.trim())
      assert.ok(f.manual || f.accepted.length > 0)
    }
  }
  assert.equal(find('Português',13).optionImages.length, 5)
  const sources = JSON.parse(readFileSync('docs/ita-2026-2f-sources.json','utf8'))
  for (const [name,hash] of Object.entries(sources.sha256)) assert.equal(createHash('sha256').update(readFileSync(root+name)).digest('hex'),hash)
})
test('todas as variantes cadastradas são aceitas sem pontuar itens manuais', () => {
  for (const q of questions.filter(q => q.kind === 'written')) for (const f of q.fields) {
    for (const alias of f.accepted) assert.equal(matchesItaField(f,alias),true,`${q.id}/${f.id}: ${alias}`)
    assert.equal(matchesItaField(f,''),false)
    assert.equal(matchesItaField(f,'resposta incorreta sem relação com o pedido'),false)
    if (f.manual) assert.equal(matchesItaField(f,f.reference),false)
  }
})
test('números aceitam vírgula, fração, unidade e notação científica, rejeitando erros e unidades erradas', () => {
  const acid = field('Química',1,'a')
  for (const answer of ['0,4','0.4 mol/L','4e-1','4 × 10⁻¹ mol·L⁻¹','2/5','concentracao = 0,4']) assert.ok(matchesItaField(acid,answer),answer)
  for (const answer of ['4','-0,4','0.4 kg','0,4 ou 4','não é 0,4','0.4; 10','2*31']) assert.equal(matchesItaField(acid,answer),false,answer)
  assert.equal(readItaNumber('2*31',['']),null)
  assert.equal(matchesItaField(field('Matemática',1,'pontos'),'2*31'),false)
  assert.ok(matchesItaField(field('Química',3,'bA'),'6,09 × 10⁻³ mol/L'))
  assert.ok(matchesItaField(field('Física',8,'b'),'2.21e-5 s'))
})
test('conjuntos matemáticos exigem todos os resultados, sem duplicatas, em qualquer ordem', () => {
  const roots = field('Matemática',7,'raizes')
  assert.ok(matchesItaField(roots,'1-2i; -1; 0,5; 1+2i'))
  assert.ok(matchesItaField(roots,'1+2i,1/2,-1,1-2i'))
  for (const answer of ['-1;1/2','-1;1/2;1+2i;1+2i','-1;1/2;1+2i;1-3i']) assert.equal(matchesItaField(roots,answer),false)
  assert.ok(matchesItaField(field('Matemática',9,'pontos'),'(-√6,4);(√6,4)'))
})
test('fórmulas preservam sinal e distinguem massas maiúsculas e minúsculas', () => {
  const work = field('Física',5,'a')
  assert.ok(matchesItaField(work,'70(M1-M2)gLα'))
  assert.equal(matchesItaField(work,'70(m1-m2)gLα'),false)
  assert.equal(matchesItaField(work,'70(M1+M2)gLα'),false)
  assert.ok(matchesItaField(field('Matemática',4,'area'),'pi*(alpha^2+32*alpha+528)'))
  assert.equal(matchesItaField(field('Matemática',4,'area'),'pi*(alpha^2+32*alpha-528)'),false)
})
test('paráfrases exigem direção da migração e rejeitam negações, inversões e palavras soltas', () => {
  const migration = field('Química',9,'migracao')
  assert.ok(matchesItaField(migration,'Os cátions de cobre azuis migram para o cátodo negativo e os ânions dicromato alaranjados para o ânodo positivo.'))
  assert.ok(matchesItaField(migration,'Os íons de cobre se deslocam ao polo negativo, enquanto os íons dicromato se deslocam ao polo positivo.'))
  for (const answer of ['cobre cátodo dicromato ânodo migração','O cobre não migra para o cátodo negativo e o dicromato não migra para o ânodo positivo.','O cobre migra para o ânodo e o dicromato para o cátodo.']) assert.equal(matchesItaField(migration,answer),false,answer)
})
test('gabarito oficial de Português e redação sem pontuação automática', () => {
  assert.deepEqual(questions.filter(q=>q.kind==='objective').map(q=>q.answer),'B B A E C C A B E E D D B C B'.split(' '))
  assert.equal(gradeItaQuestion(find('Português',1),{choice:'B'}).recognized,1)
  assert.equal(gradeItaQuestion(find('Português',1),{choice:'A'}).recognized,0)
  const essay=questions.at(-1)
  assert.equal(gradeItaQuestion(essay,{essay:'brain rot engenharia leitura'}).total,0)
  assert.equal(gradeItaQuestion(essay,{}).manual,1)
  const ambiguous=gradeItaQuestion(find('Matemática',6),{analise:'0'})
  assert.equal(ambiguous.total,0)
  assert.equal(ambiguous.manual,1)
})
