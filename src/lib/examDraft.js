export const examDraftKey = 'provacerta:exam-draft:v1'
const screens = new Set(['exam', 'result', 'review'])

export function validateExamDraft(value) {
  if (!value || value.version !== 1 || !screens.has(value.screen) || typeof value.selectedExam !== 'string') return null
  const { questions, session, current, answers } = value
  if (!Array.isArray(questions) || !questions.length || questions.length > 500 || !questions.every(q => q && typeof q.text === 'string' && typeof q.answer === 'string' && Array.isArray(q.options) && q.options.length >= 2 && q.options.length <= 5 && q.options.every(option => typeof option === 'string'))) return null
  if (!session || typeof session.id !== 'string' || !Number.isFinite(session.startedAt) || (session.deadline !== null && (!Number.isFinite(session.deadline) || session.deadline < session.startedAt))) return null
  if (!Number.isInteger(current) || current < 0 || current >= questions.length || !answers || typeof answers !== 'object' || Array.isArray(answers)) return null
  if (!Object.entries(answers).every(([index, answer]) => /^\d+$/.test(index) && Number(index) < questions.length && /^[ABCDE]$/.test(answer) && 'ABCDE'.indexOf(answer) < questions[Number(index)].options.length)) return null
  if (typeof value.label !== 'string' || typeof value.day !== 'string') return null
  return value
}

export function readExamDraft(storage) {
  try {
    const raw = storage.getItem(examDraftKey)
    if (!raw) return null
    const draft = validateExamDraft(JSON.parse(raw))
    if (!draft) storage.removeItem(examDraftKey)
    return draft
  } catch { return null }
}

export function writeExamDraft(storage, draft) {
  try {
    if (!screens.has(draft.screen)) storage.removeItem(examDraftKey)
    else storage.setItem(examDraftKey, JSON.stringify({ ...draft, version: 1 }))
    return true
  } catch { return false }
}
