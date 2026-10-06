export function remainingSeconds(deadline, now = Date.now()) {
  return Math.max(0, Math.ceil((deadline - now) / 1000))
}
export function formatDuration(seconds) {
  const value = Math.max(0, Math.floor(seconds))
  return [Math.floor(value / 3600), Math.floor(value / 60) % 60, value % 60]
    .map((part) => String(part).padStart(2, '0')).join(':')
}
export function validMinutes(value) {
  return Number.isInteger(Number(value)) && Number(value) >= 1 && Number(value) <= 600
}
export function reportContext(question, index, title, slug) {
  return {
    exam_title: question.examTitle || title,
    exam_slug: question.examSlug || slug || null,
    question_id: question.questionId || null,
    question_number: question.number || question.index || index + 1,
    subject: question.subject || '',
  }
}
export function reportPayload(context, category, message) {
  if (!['text', 'image', 'answer', 'other'].includes(category)) throw new Error('Selecione o tipo de problema.')
  const description = message.trim()
  if (description.length < 10 || description.length > 2000) throw new Error('Descreva o problema usando de 10 a 2.000 caracteres.')
  return { ...context, category, message: description }
}
