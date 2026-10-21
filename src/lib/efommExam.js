export const EFOMM_SLUGS = new Set(['2026', '2025'].flatMap(year => ['1', '2'].map(day => `efomm-${year}-dia-${day}`)))

export async function loadEfommExam(slug) {
  if (!EFOMM_SLUGS.has(slug)) throw new Error('Edição da EFOMM não disponível.')
  const [, year, , day] = slug.split('-')
  const response = await fetch(`/provas/efomm/${year}/dia-${day}.json`)
  if (!response.ok) throw new Error('Não foi possível carregar o caderno da EFOMM. Tente novamente.')
  const exam = await response.json()
  if (exam.slug !== slug || exam.questions?.length !== 40 || !exam.questions.every((question, index) => question.number === index + 1 && question.options?.length === 5 && (question.annulled || /^[A-E]$/.test(question.answer)))) throw new Error('O caderno da EFOMM está incompleto. Atualize a página e tente novamente.')
  return exam.questions.map(question => ({ ...question, examSlug: slug, examTitle: exam.title, sourceUrl: `/provas/efomm/${year}/dia-${day}.pdf#page=${question.page}` }))
}
