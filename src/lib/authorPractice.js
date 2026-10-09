const storageKey = 'prova-certa:author-practice:v1'
const recent = new Map()

export function shuffleQuestions(questions, random = Math.random) {
  const shuffled = [...questions]
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(random() * (i + 1))
    ;[shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
  }
  return shuffled
}

export function selectAuthorRound(questions, previousIds = [], random = Math.random) {
  const unique = [...new Map(questions.map(q => [q.authoredId, q])).values()]
  if (unique.length < 20) throw new Error('Este assunto precisa de pelo menos 20 questões disponíveis. Tente novamente mais tarde.')
  const previous = new Set(previousIds)
  const fresh = shuffleQuestions(unique.filter(q => !previous.has(q.authoredId)), random)
  const repeated = shuffleQuestions(unique.filter(q => previous.has(q.authoredId)), random)
  return [...fresh, ...repeated].slice(0, 10)
}

export function previousAuthorRound(topicId) {
  try {
    const stored = JSON.parse(globalThis.localStorage?.getItem(storageKey) || '{}')
    if (Array.isArray(stored[topicId])) return stored[topicId].filter(id => typeof id === 'string')
  } catch { /* A prática também funciona quando o armazenamento está indisponível. */ }
  return recent.get(topicId) || []
}

export function rememberAuthorRound(topicId, questions) {
  const ids = questions.map(q => q.authoredId)
  recent.set(topicId, ids)
  try {
    const stored = JSON.parse(globalThis.localStorage?.getItem(storageKey) || '{}')
    globalThis.localStorage?.setItem(storageKey, JSON.stringify({ ...stored, [topicId]: ids }))
  } catch { /* A última seleção continua disponível em memória. */ }
}
