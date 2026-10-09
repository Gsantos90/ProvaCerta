import { isCorrectAnswer, isAnnulledAnswer } from './examAnswers.js'
import { examSource } from './catalogProgress.js'

export function attemptPayload({ session, questions, answers, title, binary, userId, source }) {
  if (!session?.id || !session.endedAt || !questions.length) return null
  if (session.ownerId && session.ownerId !== userId) return null
  let correct = 0, wrong = 0, blank = 0, annulled = 0
  const mistakes = []
  questions.forEach((q, i) => {
    const selected = answers[i] || null
    if (isAnnulledAnswer(q.answer)) annulled++
    else if (!selected) blank++
    else if (isCorrectAnswer(selected, q.answer)) correct++
    else {
      wrong++
      mistakes.push({ ...q, selected, position: i + 1, number: q.questionNumber || q.number || i + 1 })
    }
  })
  return { id: session.id, user_id: userId, exam_source: examSource(source), exam_title: title, total: questions.length,
    correct, wrong, blank, annulled, points: correct + annulled - (binary ? wrong : 0),
    scoring: binary ? 'cebraspe' : 'standard', started_at: new Date(session.startedAt).toISOString(),
    completed_at: new Date(session.endedAt).toISOString(), timed: Boolean(session.deadline), mistakes }
}

export async function saveAttempt(client, payload) {
  const { error } = await client.from('exam_attempts').insert(payload)
  if (!error) return
  if (error.code === '23505') {
    const existing = await client.from('exam_attempts').select('id').eq('id', payload.id).eq('user_id', payload.user_id).maybeSingle()
    if (!existing.error && existing.data) return
  }
  throw error
}
