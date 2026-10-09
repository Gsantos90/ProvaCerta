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
function render(props, review) {
  let index = 0
  React.useState = initial => originalState(index++ === 2 && review ? review : initial)
  try { return renderToStaticMarkup(React.createElement(mod.exports.default, { onTabChange() {}, ...props })) }
  finally { React.useState = originalState }
}
assert.ok(render({ tab: 'questions' }).includes('Acesso livre, sem login'))
assert.ok(render({ tab: 'summaries' }).includes('Exemplo resolvido'))
assert.ok(render({ tab: 'review' }).includes('Entrar ou criar conta'))
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
