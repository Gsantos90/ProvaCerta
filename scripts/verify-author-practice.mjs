import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'
import { authorQuestionBank } from '../src/lib/authorQuestionBank.js'
import { studyTopics, topicForQuestion, reviewGroups } from '../src/lib/studyTopics.js'
import { selectAuthorRound, rememberAuthorRound, previousAuthorRound } from '../src/lib/authorPractice.js'
import { loadAuthorQuestions } from '../src/lib/studyData.js'
assert.equal(authorQuestionBank.length, 300)
assert.equal(new Set(authorQuestionBank.map(q => q.authoredId)).size, 300)
assert.equal(new Set(authorQuestionBank.map(q => q.text)).size, 300)
assert.equal(studyTopics.filter(t => t.subject === 'História').length, 5)
for (const topic of studyTopics) {
  const questions = authorQuestionBank.filter(q => q.topicId === topic.id)
  assert.equal(questions.length, 20)
  for (const q of questions) {
    assert.equal(q.options.length, 4)
    assert.equal(new Set(q.options).size, 4, q.authoredId)
    assert.match(q.answer, /^[A-D]$/)
    assert.ok(q.explanation.trim(), q.authoredId)
    assert.equal(q.subject, topic.subject)
  }
  const first = selectAuthorRound(questions, [], () => .37)
  const next = selectAuthorRound(questions, first.map(q => q.authoredId), () => .81)
  assert.equal(first.length, 10)
  assert.equal(next.length, 10)
  assert.ok(next.every(q => !first.some(previous => previous.authoredId === q.authoredId)))
  assert.equal(new Set([...first,...next].map(q => q.authoredId)).size, 20)
  rememberAuthorRound(topic.id, next)
  assert.deepEqual(previousAuthorRound(topic.id), next.map(q => q.authoredId))
  const saved = { ...first[0], origin:'author', examSlug:`author:${topic.id}`, selected:'A' }
  assert.equal(topicForQuestion(saved)?.id, topic.id)
  assert.equal(reviewGroups([{ completed_at:'2026-10-09', mistakes:[saved] }])[0].topic.id, topic.id)
}
assert.throws(() => selectAuthorRound(authorQuestionBank.slice(0,19)), /20 questões/)
await assert.rejects(() => loadAuthorQuestions(null, studyTopics[0]), /conectar/)
const env = Object.fromEntries(readFileSync('.env.local','utf8').split(/\r?\n/).filter(line => line.includes('=')).map(line => { const i=line.indexOf('='); return [line.slice(0,i),line.slice(i+1).trim().replace(/^['"]|['"]$/g,'')] }))
const client = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_ANON_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY, { auth:{ persistSession:false,autoRefreshToken:false } })
const { data, error } = await client.from('study_author_questions').select('authored_id,topic_id,text,options,answer,explanation').order('authored_id')
assert.equal(error, null)
assert.equal(data.length, 300)
for (const q of authorQuestionBank) {
  const row = data.find(row => row.authored_id === q.authoredId)
  assert.ok(row)
  assert.equal(row.text, q.text)
  assert.deepEqual(row.options, q.options)
  assert.equal(row.answer,q.answer)
  assert.equal(row.explanation,q.explanation)
}
for (const topic of studyTopics) {
  const first = await loadAuthorQuestions(client,topic)
  rememberAuthorRound(topic.id, first)
  const second = await loadAuthorQuestions(client,topic)
  assert.equal(first.length, 10)
  assert.equal(second.length, 10)
  assert.ok(second.every(q => !first.some(previous => previous.questionId === q.questionId)))
  assert.ok(second.every(q => q.origin === 'author' && q.topicId === topic.id && q.explanation))
}
console.log('300 questões no banco público verificadas; 15 assuntos, rodadas de 10 sem repetição imediata e revisão por assunto aprovadas.')
