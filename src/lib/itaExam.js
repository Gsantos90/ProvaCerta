export const ITA_SLUG = 'ita-2026-fase-1'

// Shipped with the app so that the official exam can be opened without a database import.
export async function loadItaExam() {
  const response = await fetch('/provas/ita/2026/catalogo.json')
  if (!response.ok) throw new Error('Não foi possível carregar o caderno do ITA. Tente novamente.')
  const exam = await response.json()
  if (exam.slug !== ITA_SLUG || exam.contentVersion !== 2 || exam.questions?.length !== 48) throw new Error('O caderno do ITA está incompleto. Atualize a página e tente novamente.')
  return exam.questions.map(question => ({
    ...question,
    examSlug: exam.slug,
    examTitle: exam.title,
    sourceUrl: `https://vestibular.ita.br/provas/2026_fase1.pdf#page=${question.page}`,
  }))
}
