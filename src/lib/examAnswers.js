// Todas as cinco letras representam uma questão anulada no banco.
export function isAnnulledAnswer(answer) {
  if (typeof answer !== 'string') return false
  const accepted = new Set(answer.split('/').map((item) => item.trim().toUpperCase()))
  return accepted.size === 5 && [...'ABCDE'].every((letter) => accepted.has(letter))
}

// Uma questão pode aceitar mais de uma alternativa no gabarito após recursos.
export function isCorrectAnswer(selected, answer) {
  // Questões anuladas recebem crédito inclusive sem resposta marcada.
  if (isAnnulledAnswer(answer)) return true
  if (typeof selected !== 'string' || typeof answer !== 'string') return false
  const letter = selected.trim().toUpperCase()
  if (!/^[A-E]$/.test(letter)) return false
  return answer.split('/').map((item) => item.trim().toUpperCase()).includes(letter)
}
