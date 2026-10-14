import test from 'node:test'
import assert from 'node:assert/strict'
import { matchesShortAnswer, gradeShortAnswers } from '../src/lib/shortAnswers.js'
import { uerjDiscursiveQuestions, uerjDiscursiveExams } from '../src/lib/uerjDiscursive.js'
import { existsSync } from 'node:fs'

const nitrogen = uerjDiscursiveQuestions.find(question => question.id === 'uerj-2014-biologia-2')
const leptin = uerjDiscursiveQuestions.find(question => question.id === 'uerj-2015-biologia-3')

test('reconhece a paráfrase de captura por felinos enviada na imagem', () => {
  const question = uerjDiscursiveExams['2026'][1]
  const answers = [
    'A infecção aumenta a suscetibilidade dos roedores à captura por felinos, viabilizando a transferência do parasita para o hospedeiro definitivo.',
    'Os roedores infectados ficam mais vulneráveis à predação pelos gatos, facilitando a transmissão do protozoário.',
    'Os gatos capturam mais roedores e o parasita consegue completar seu ciclo.',
  ]
  for (const cycle of answers) assert.equal(gradeShortAnswers(question, {cycle}).recognized, 1, cycle)
})

test('exige os conceitos e a relação corretos, rejeitando palavras soltas e negações', () => {
  const question = uerjDiscursiveExams['2026'][1]
  for (const cycle of [
    'A infecção não aumenta a captura de roedores por felinos nem a transferência do parasita.',
    'A infecção reduz a predação dos roedores por felinos, impedindo a transferência do parasita.',
    'Roedores capturam gatos, permitindo a transferência do parasita.',
    'roedores felinos parasita transferência captura',
    'Os roedores infectados são capturados por felinos.',
  ]) assert.equal(gradeShortAnswers(question, {cycle}).recognized, 0, cycle)
})

test('aceita flexões e sinônimos nas explicações das esponjas e das histonas', () => {
  const sponge = uerjDiscursiveExams['2026'][0]
  assert.equal(gradeShortAnswers(sponge, {
    organization:'A rede de canais conectados abriga mais coanócitos.',
    feeding:'A superfície ampliada permite a absorção de mais nutrientes.',
  }).recognized, 2)
  assert.equal(gradeShortAnswers(uerjDiscursiveExams['2026'][7], {
    function:'As histonas ajudam a organizar e compactar o DNA.',
    expression:'Uma maior compactação dificulta o acesso e diminui a transcrição dos genes.',
  }).recognized, 2)
})

test('aceita nomes com frases simples, mas não com alternativas contraditórias', () => {
  assert.equal(gradeShortAnswers(nitrogen, {ion:'O íon correto é o nitrato.'}).items[2].matched, true)
  assert.equal(gradeShortAnswers(nitrogen, {ion:'O íon é nitrato ou amônio.'}).items[2].matched, false)
  assert.equal(gradeShortAnswers(uerjDiscursiveExams['2026'][5], {hormone:'O hormônio responsável é o ácido abscísico.'}).items[2].matched, true)
})

test('distingue a ausência de núcleo correta de uma afirmação contraditória', () => {
  const question = uerjDiscursiveExams['2025'][0]
  assert.equal(gradeShortAnswers(question, {redcells:'As hemácias maduras não possuem núcleo.'}).items[1].matched, true)
  assert.equal(gradeShortAnswers(question, {redcells:'As hemácias possuem núcleo, mas são anucleadas.'}).items[1].matched, false)
})

test('reconhece paráfrases de vantagens sem pontuar a mesma ideia duas vezes', () => {
  const fish = uerjDiscursiveExams['2026'][4]
  assert.equal(gradeShortAnswers(fish, {advantage1:'A visão fica mais eficiente.', advantage2:'Melhora a acuidade visual.'}).recognized, 1)
  assert.equal(gradeShortAnswers(fish, {advantage1:'A natação fica mais eficiente.', advantage2:'Conseguem explorar novos nichos ecológicos.'}).recognized, 2)
})

test('reconhece a resposta completa relatada na questão 1 de 2026', () => {
  const question = uerjDiscursiveExams['2026'][0]
  const answer = 'Rede de canais intercomunicantes com maior número de coanócitos, ocupando o átrio reduzido.'
  assert.equal(gradeShortAnswers(question, { organization: answer }).items[0].matched, true)
  assert.equal(gradeShortAnswers(question, { organization: 'Não: ' + answer }).items[0].matched, false)
})

test('modelos completos dos campos individuais são aceitos nas três provas', () => {
  for (const question of Object.values(uerjDiscursiveExams).flat()) {
    for (const field of question.fields.filter(field => !field.concepts && !field.answerSet && !field.caseSensitive)) {
      assert.equal(gradeShortAnswers(question, { [field.id]: field.reference }).items.find(item => item.id === field.id).matched, true, `${question.id}/${field.id}`)
    }
  }
})
test('normaliza acentos, caixa, pontuação final e notação do nitrato', () => {
  assert.ok(matchesShortAnswer('  PROTEÍNAS. ', ['proteinas']))
  assert.ok(matchesShortAnswer('NO₃⁻', ['NO3-']))
  assert.ok(matchesShortAnswer('NO3−', ['NO3-']))
})
test('não premia termos isolados em negações, alternativas contraditórias ou substrings', () => {
  const accepted = nitrogen.fields.find(field => field.id === 'ion').accepted
  for (const answer of ['', 'amônio', 'NH₄⁺', 'não é nitrato', 'nitrato ou amônio', 'nitratox', 'a planta não recebe nitrato']) {
    assert.equal(matchesShortAnswer(answer, accepted), false, answer)
  }
})
test('corrige cada item de nitrogênio e diferencia branco de não reconhecido', () => {
  const result = gradeShortAnswers(nitrogen, { plant: 'obtenção de compostos nitrogenados', bacteria: 'CARBOIDRATOS', ion: 'NO₃⁻', molecule: 'ácidos nucleicos' })
  assert.equal(result.recognized, 4)
  const partial = gradeShortAnswers(nitrogen, { ion: 'amônio', molecule: 'proteínas' })
  assert.equal(partial.recognized, 1)
  assert.equal(partial.items[0].blank, true)
  assert.equal(partial.items[2].blank, false)
})
test('aceita os efeitos da leptina em qualquer ordem, mas não conta sinônimos repetidos duas vezes', () => {
  for (const [effect1, effect2] of [['redução do apetite', 'aumento da termogênese'], ['maior produção de calor', 'aumento da saciedade']]) {
    assert.equal(gradeShortAnswers(leptin, { cell: 'adipócitos', location: 'hipotálamo', effect1, effect2 }).recognized, 4)
  }
  const repeated = gradeShortAnswers(leptin, { effect1: 'reduz o apetite', effect2: 'aumento da saciedade' })
  assert.equal(repeated.recognized, 1)
  assert.equal(repeated.items[3].duplicate, true)
})
test('todas as variantes cadastradas são reconhecidas e todos os itens têm referência', () => {
  for (const question of uerjDiscursiveQuestions) for (const field of question.fields) {
    assert.ok(field.reference)
    for (const answer of field.answerSet ? [field.answerSet.join(', ')] : field.concepts ? field.concepts.flat() : field.accepted) {
      assert.equal(gradeShortAnswers(question, { [field.id]: answer }).items.find(item => item.id === field.id).matched, true)
    }
  }
})
test('2014 contém dez questões ordenadas, com referências e apoios locais disponíveis', () => {
  assert.deepEqual(uerjDiscursiveExams['2014'].map(question => question.number), [1,2,3,4,5,6,7,8,9,10])
  for (const question of uerjDiscursiveExams['2014']) {
    assert.ok(existsSync('public' + question.source.split('#')[0]))
    if (question.image) assert.ok(existsSync('public' + question.image))
  }
})
test('todos os itens dos três cadernos são corrigíveis, sem repetir conceitos nas duplas', () => {
  for (const question of Object.values(uerjDiscursiveExams).flat()) {
    const groups = new Map()
    const answers = Object.fromEntries(question.fields.map(field => {
      const position = groups.get(field.distinctGroup) || 0
      if (field.distinctGroup) groups.set(field.distinctGroup, position + 1)
      return [field.id, field.answerSet ? field.answerSet.join(' e ') : field.concepts ? field.concepts[position][0] : field.accepted[0]]
    }))
    assert.equal(gradeShortAnswers(question, answers).recognized, question.fields.length, question.id)
  }
})
test('2025 e 2026 têm dez questões completas, fontes e treze apoios disponíveis', () => {
  let images = 0
  for (const year of ['2025', '2026']) {
    const questions = uerjDiscursiveExams[year]
    assert.deepEqual(questions.map(question => question.number), [1,2,3,4,5,6,7,8,9,10])
    for (const question of questions) {
      assert.ok(question.text.length > 100)
      assert.ok(question.fields.length > 0)
      assert.ok(existsSync('public' + question.examSource.split('#')[0]))
      if (question.image) { assert.ok(existsSync('public' + question.image)); images++ }
    }
  }
  assert.equal(images, 13)
})
test('gráficos recentes não reconhecem curvas erradas nem respostas contraditórias', () => {
  const enzyme = uerjDiscursiveExams['2025'][9]
  const stomata = uerjDiscursiveExams['2026'][5]
  assert.equal(gradeShortAnswers(enzyme, {curve:'A'}).recognized, 0)
  assert.equal(gradeShortAnswers(enzyme, {curve:'D ou A'}).recognized, 0)
  assert.equal(gradeShortAnswers(stomata, {graph:'D'}).recognized, 0)
})
test('duas respostas sinônimas não contam como duas estruturas, vantagens ou ações do carbono', () => {
  const embryo = uerjDiscursiveExams['2025'][7]
  assert.equal(gradeShortAnswers(embryo, {structure1:'cabelos', structure2:'pelos'}).recognized, 1)
  const fish = uerjDiscursiveExams['2026'][4]
  assert.equal(gradeShortAnswers(fish, {advantage1:'melhor visão', advantage2:'maior acuidade visual'}).recognized, 1)
  const plankton = uerjDiscursiveExams['2026'][9]
  assert.equal(gradeShortAnswers(plankton, {carbon1:'absorção de co2 na fotossíntese', carbon2:'fixação de co2 pela fotossíntese', oil1:'reserva de energia', oil2:'flutuabilidade'}).recognized, 3)
})
test('genótipos distinguem Aa, AA e aa e aceitam aA como heterozigoto', () => {
  const question = uerjDiscursiveExams['2014'].find(question => question.number === 5)
  assert.equal(gradeShortAnswers(question, {goat:'aa'}).items[0].matched, false)
  assert.equal(gradeShortAnswers(question, {goat:'AA'}).items[0].matched, false)
  assert.equal(gradeShortAnswers(question, {goat:'aA'}).items[0].matched, true)
  assert.equal(gradeShortAnswers(question, {female1:'Aa'}).items[1].matched, false)
})
test('códons aceitam qualquer ordem, mas exigem o par inteiro sem bases extras', () => {
  const question = uerjDiscursiveExams['2014'].find(question => question.number === 10)
  for (const value of ['CUC, CUU', 'cuu e cuc', 'CUU/CUC', 'CUC CUU']) {
    assert.equal(gradeShortAnswers(question,{leu:value}).items[0].matched,true,value)
  }
  for (const value of ['CUU', 'CUU, CUU', 'CUU, CUC, CUA', 'não CUU e CUC']) {
    assert.equal(gradeShortAnswers(question,{leu:value}).items[0].matched,false,value)
  }
})
