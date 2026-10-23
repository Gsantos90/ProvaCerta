import { ebserhExams } from './ebserhExams.js'

export const EBSERH_SLUGS = new Set(ebserhExams.map(exam => `ebserh-${exam.year}-farmaceutico`))

export async function loadEbserhExam(slug) {
  if (!EBSERH_SLUGS.has(slug)) throw new Error('Edição ou cargo da EBSERH indisponível.')
  const year = slug.split('-')[1]
  const response = await fetch(`/provas/ebserh/${year}-farmaceutico.json`)
  if (!response.ok) throw new Error('Não foi possível carregar a prova da EBSERH. Tente novamente.')
  const exam = await response.json()
  if (exam.slug !== slug || exam.questions?.length !== 60 || !exam.questions.every((q, i) => q.number === i + 1 && typeof q.text === 'string' && q.text.trim() && q.options?.length === 5 && q.options.every(option => typeof option === 'string' && option.trim()) && (q.annulled ? q.answer === 'A/B/C/D/E' : /^[A-E]$/.test(q.answer)))) {
    throw new Error('O caderno da EBSERH está incompleto. Atualize a página e tente novamente.')
  }
  const source = ebserhExams.find(item => item.year === year)
  return exam.questions.map(q => ({ ...q, examSlug: slug, examTitle: exam.title,
    sourceUrl: year === '2023' ? source.paper : `/provas/ebserh/${year}-farmaceutico.pdf#page=${q.page}`,
  }))
}
