import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { createClient } from '@supabase/supabase-js'
import { studyTopics, topicForQuestion, reviewGroups } from '../src/lib/studyTopics.js'
import { studySummaries } from '../src/lib/studySummaries.js'
import { loadTopicQuestions, loadStudyReview } from '../src/lib/studyData.js'
import { attemptPayload } from '../src/lib/studyHistory.js'
import { gradePilotQuiz } from '../src/lib/pilotQuiz.js'
import { studyPodcasts } from '../src/lib/studyPodcasts.js'
import { mathLessons } from '../src/lib/mathLessons.js'
import { describeData, urnChances, evaluateFunction } from '../src/lib/mathExplorers.js'

assert.deepEqual(describeData([12, 3, 2, 3]), { ordered: [2,3,3,12], mean: 5, median: 3, modes: [3], range: 10 })
assert.equal(describeData([-10, 0, 10]).median, 0)
assert.deepEqual(describeData([1,2,3]).modes, [])
assert.deepEqual(describeData([2,2,3,3,4]).modes, [2,3])
assert.equal(describeData([]), null)
assert.equal(describeData([NaN]), null)
assert.ok(Math.abs(urnChances(3,2,false).blueBlue - 0.3) < 1e-10)
assert.ok(Math.abs(urnChances(3,2,true).blueBlue - 0.36) < 1e-10)
assert.equal(urnChances(0,0,true), null)
assert.equal(urnChances(1,0,false), null)
assert.equal(urnChances(0,2,false).redRed, 1)
assert.equal(evaluateFunction(8,2,6,0,false), 22)
assert.equal(evaluateFunction(3,1,-6,5,true), -4)
assert.equal(studySummaries.find(summary => summary.id === 'porcentagem').mathLesson, undefined)

for (const [summaryId, podcast] of Object.entries(studyPodcasts)) {
  const audioAsset = readFileSync(`public/${podcast.src}`)
  assert.equal(audioAsset.toString('ascii', 4, 8), 'ftyp', 'O arquivo de podcast deve ser um contêiner M4A válido')
  assert.ok(audioAsset.length > 1000000)
  assert.equal(studySummaries.find(summary => summary.id === summaryId).lesson.podcast.id, podcast.id)
}

const pilot = JSON.parse(readFileSync('src/lib/studyPilot.json', 'utf8'))
assert.equal(pilot.modules.length, 5)
const pilotQuestions = pilot.modules.flatMap(module => module.questions)
assert.equal(pilotQuestions.length, 11)
assert.equal(new Set(pilotQuestions.map(question => question.id)).size, 11)
for (const module of pilot.modules) {
  assert.ok(module.content.length)
  assert.equal(module.podcast, undefined, 'As transcrições não devem compor os resumos')
  const summary = studySummaries.find(summary => summary.id === module.id)
  assert.equal(summary.subject, module.subject)
  assert.equal(summary.lesson.questions.length, module.questions.length)
  if (module.subject === 'História') {
    assert.equal(summary.lesson.details.length, 6)
    assert.ok(summary.lesson.details.every(([title, ...paragraphs]) => title && paragraphs.length >= 2 && paragraphs.every(p => p.length > 150)))
  }
  for (const question of module.questions) {
    assert.equal(question.options.length, 4)
    assert.match(question.answer, /^[A-D]$/)
    assert.ok(question.explanation)
  }
}
assert.deepEqual(gradePilotQuiz(pilotQuestions, {}), { answered: 0, complete: false, correct: 0, total: 11 })
const correctAnswers = Object.fromEntries(pilotQuestions.map(question => [question.id, question.answer.charCodeAt(0) - 65]))
assert.deepEqual(gradePilotQuiz(pilotQuestions, correctAnswers), { answered: 11, complete: true, correct: 11, total: 11 })
const wrongAnswers = Object.fromEntries(pilotQuestions.map(question => [question.id, (correctAnswers[question.id] + 1) % 4]))
assert.equal(gradePilotQuiz(pilotQuestions, wrongAnswers).correct, 0)
assert.equal(gradePilotQuiz(pilotQuestions, { [pilotQuestions[0].id]: 99 }).answered, 0)

const topic = studyTopics[0]
assert.equal(new Set(studySummaries.map(summary => summary.id)).size, studySummaries.length)
for (const practiceTopic of studyTopics) {
  const summary = studySummaries.find(item => item.id === practiceTopic.id)
  assert.ok(summary?.concepts?.length && summary?.checklist?.length, `Resumo completo de ${practiceTopic.title}`)
  assert.deepEqual(summary.questions, practiceTopic.questions, 'A união dos resumos deve preservar a curadoria de questões')
}
const question = { questionId: 'q1', ...topic.questions[0], examSlug: topic.questions[0].slug, subject: 'Matemática', text: 'Questão', options: ['10', '20'], answer: 'B', selected: 'A' }
assert.equal(topicForQuestion(question).id, topic.id)
assert.equal(topicForQuestion({ ...question, examSlug: 'outra-prova' }), null)
const rows = [
  { id: 'a', exam_title: 'CNU', completed_at: '2026-10-08', mistakes: [question, { ...question, questionId: 'other', examSlug: 'inss-2022-tecnico', subject: 'Direito' }] },
  { id: 'b', exam_title: 'CNU', completed_at: '2026-10-07', mistakes: [question, null] },
]
const groups = reviewGroups(rows)
assert.equal(groups[0].label, 'Porcentagem')
assert.equal(groups[0].count, 2)
assert.equal(groups[0].questions.length, 1)
assert.equal(groups[1].label, 'Direito')
assert.equal(groups[1].topic, null)
assert.equal(reviewGroups([{ mistakes: null }]).length, 0)
const payload = attemptPayload({ session: { id: 'session', startedAt: 1000, endedAt: 2000, ownerId: 'student' }, questions: [question], answers: { 0: 'A' }, source: 'study', title: 'Estudo · Porcentagem', userId: 'student' })
assert.equal(payload.exam_source, 'study')
assert.equal(topicForQuestion(payload.mistakes[0]).id, 'porcentagem')

const queries = []
await loadStudyReview({ from(table) { const query = { table }; return { select(fields) { query.fields = fields; return this }, eq(field, value) { query.owner = [field, value]; return this }, order() { return this }, async range(start, end) { query.range = [start, end]; queries.push(query); return { data: rows, error: null } } } } }, 'student')
assert.deepEqual(queries[0].owner, ['user_id', 'student'])
assert.deepEqual(queries[0].range, [0, 99])
await assert.rejects(() => loadStudyReview(null, 'student'), /conectar/)
await assert.rejects(() => loadTopicQuestions(null, topic), /conectar/)

const source = readFileSync('src/StudyHub.jsx', 'utf8').replace("import { useAuth } from './Auth'", 'const useAuth = () => testAuth')
const code = buildSync({ stdin: { contents: source, resolveDir: process.cwd() + '/src', loader: 'jsx' }, bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react', 'lucide-react', '@supabase/supabase-js'], loader: { '.css': 'empty' }, define: { 'import.meta.env': '{}' } }).outputFiles[0].text
const auth = { user: null, loading: false, openAuth() {} }
const mod = { exports: {} }
new Function('module', 'exports', 'require', 'testAuth', code)(mod, mod.exports, createRequire(import.meta.url), auth)
const originalState = React.useState
function render(props, review, topicId) {
  let index = 0
  React.useState = initial => {
    const stateIndex = index++
    return originalState(stateIndex === 0 && topicId ? topicId : stateIndex === 2 && review ? review : initial)
  }
  try { return renderToStaticMarkup(React.createElement(mod.exports.default, { onTabChange() {}, ...props })) }
  finally { React.useState = originalState }
}
assert.ok(render({ tab: 'questions' }).includes('Acesso livre, sem login'))
const summariesMarkup = render({ tab: 'summaries' })
assert.ok(summariesMarkup.includes('Exemplos resolvidos'))
assert.ok(summariesMarkup.includes('Conferir respostas'))
assert.ok(summariesMarkup.includes('Praticar questões de provas reais'))
assert.ok(!summariesMarkup.includes('Roteiro de podcast'))
assert.ok(!summariesMarkup.includes('Pacote piloto'))
for (const module of pilot.modules.filter(module => module.subject === 'História')) {
  const markup = render({ tab: 'summaries' }, null, module.id)
  assert.ok(markup.includes(module.title))
  assert.ok(markup.includes('Pontos que o aluno precisa dominar'))
  assert.ok(!markup.includes('Pratique com questões autorais'))
  assert.ok(!markup.includes('pilot-quiz'))
  assert.ok(!markup.includes('Roteiro de podcast'))
  if (module.id === 'brasil-colonia') {
    assert.ok(markup.includes(studyPodcasts['brasil-colonia'].title))
    assert.ok(markup.includes('audio/brasil-colonia-geopolitica.m4a'))
    assert.ok(markup.includes('preload="metadata"'))
    assert.ok(!markup.includes('autoPlay'))
    assert.ok(markup.includes('Posição do áudio'))
    assert.ok(markup.includes('Velocidade de reprodução'))
    assert.ok(markup.includes('Voltar 15 segundos'))
    assert.ok(markup.includes('Avançar 15 segundos'))
  } else {
    assert.ok(!markup.includes('audio/brasil-colonia-geopolitica.m4a'))
    const podcast = studyPodcasts[module.id]
    if (podcast) {
      assert.ok(markup.includes(podcast.title))
      assert.ok(markup.includes(podcast.src))
      assert.ok(markup.includes(podcast.label))
      assert.ok(markup.includes('podcast-cover-title'))
      assert.ok(!markup.includes('is-square'))
    }
  }
  for (const [title, paragraph] of studySummaries.find(summary => summary.id === module.id).lesson.details) {
    assert.ok(markup.includes(title))
    assert.ok(markup.includes(paragraph))
  }
}
assert.ok(render({ tab: 'review' }).includes('Entrar ou criar conta'))
const medievalMarkup = render({ tab: 'summaries' }, null, 'idade-media')
assert.ok(medievalMarkup.includes('Idade Média'))
assert.ok(medievalMarkup.includes('study-lesson-history'))
assert.ok(medievalMarkup.includes('476 d.C. e seu término'), 'A abreviação d.C. não deve dividir o parágrafo')
assert.ok(medievalMarkup.includes('Como a Peste Negra destruiu o feudalismo'))
assert.ok(medievalMarkup.includes('audio/idade-media-peste-negra.m4a'))
assert.ok(!medievalMarkup.includes('pilot-quiz'), 'Resumos sem questões não devem mostrar quiz vazio')
const medievalLesson = studySummaries.find(summary => summary.id === 'idade-media').lesson
assert.equal(medievalLesson.content.filter(p => /^\d\. /.test(p)).length, 5)
assert.ok(medievalLesson.content.every(p => !p.includes('*')))
for (const [topicId, lesson] of Object.entries(mathLessons)) {
  assert.equal(lesson.sections.length, 5)
  assert.ok(lesson.sections.every(section => section.paragraphs.length >= 2 && section.formula))
  assert.equal(lesson.examples.length, 2)
  assert.ok(lesson.examples.every(example => example.steps.length >= 3 && example.answer))
  assert.equal(lesson.challenges.length, 3)
  assert.ok(lesson.challenges.every(question => question.options[question.answer] && question.explanation))
  const markup = render({ tab: 'summaries' }, null, topicId)
  assert.ok(markup.includes('Explore na prática'))
  assert.ok(markup.includes('Exemplos práticos resolvidos'))
  assert.ok(markup.includes('Confira o que você aprendeu'))
  assert.ok(markup.includes('math-diagram'))
}
auth.user = { id: 'student' }
assert.ok(render({ tab: 'review' }, { owner: 'student', rows, loading: false }).includes('2 erros registrados'))
assert.ok(!render({ tab: 'review' }, { owner: 'another-user', rows, loading: false }).includes('2 erros registrados'))
auth.user = null
assert.ok(!render({ tab: 'review' }, { owner: 'student', rows, loading: false }).includes('2 erros registrados'))

if (process.argv.includes('--live')) {
  const env = Object.fromEntries(readFileSync('.env.local', 'utf8').split(/\r?\n/).filter(line => /^VITE_SUPABASE_(URL|PUBLISHABLE_KEY)=/.test(line)).map(line => { const at = line.indexOf('='); return [line.slice(0, at), line.slice(at + 1).replace(/^['"]|['"]$/g, '')] }))
  const client = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_PUBLISHABLE_KEY, { auth: { persistSession: false, autoRefreshToken: false } })
  for (const item of studyTopics) {
    const questions = await loadTopicQuestions(client, item)
    assert.equal(questions.length, item.questions.length)
    assert.ok(questions.every(q => q.text && q.options.length > 1 && q.answer && topicForQuestion(q).id === item.id))
    console.log(`${item.title}: ${questions.length} questões disponíveis sem login.`)
  }
  const privateRows = await client.from('exam_attempts').select('id').limit(1)
  assert.ok(privateRows.error || !privateRows.data?.length, 'Histórico não pode ser exposto sem login')
}
console.log('Área Estudar: curadoria, revisão, resultado, acesso público e isolamento entre contas verificados.')
