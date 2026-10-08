import sources from './enemSources.js'
export const enemExams = [2025, 2024, 2023, 2022].map(year => ({ year, slug: 'enem-' + year }))
export const enemAreas = [
  { value: 'completa', label: 'Prova completa — 180 questões', start: 1, end: 180 },
  { value: 'dia-1', label: '1º dia — Linguagens e Humanas', start: 1, end: 90 },
  { value: 'dia-2', label: '2º dia — Natureza e Matemática', start: 91, end: 180 },
  { value: 'linguagens', label: 'Linguagens — 45 questões', start: 1, end: 45 },
  { value: 'ciencias-humanas', label: 'Ciências Humanas — 45 questões', start: 46, end: 90 },
  { value: 'ciencias-natureza', label: 'Ciências da Natureza — 45 questões', start: 91, end: 135 },
  { value: 'matematica', label: 'Matemática — 45 questões', start: 136, end: 180 },
]
export const enemHasLanguage = area => enemAreas.find(item => item.value === area)?.start === 1
export const enemOfficialNumber = number => number >= 181 && number <= 185 ? number - 180 : number
export function selectEnemQuestions(questions, area = 'completa', language = 'ingles') {
  const selection = enemAreas.find(item => item.value === area)
  if (!selection || !['ingles', 'espanhol'].includes(language)) throw new Error('Seleção do ENEM inválida.')
  const result = questions.filter(question => {
    const number = Number(question.number)
    if (!Number.isInteger(number) || number < 1 || number > 185) return false
    if (number <= 5 && language === 'espanhol') return false
    if (number >= 181 && language !== 'espanhol') return false
    const official = enemOfficialNumber(number)
    return official >= selection.start && official <= selection.end
  }).sort((a, b) => enemOfficialNumber(a.number) - enemOfficialNumber(b.number))
  const expected = selection.end - selection.start + 1
  const numbers = new Set(result.map(question => enemOfficialNumber(question.number)))
  if (result.length !== expected || numbers.size !== expected) throw new Error('A seleção está incompleta no banco. Execute a query de importação deste ano; espanhol exige as cinco questões adicionais.')
  return result
}
export function enemOfficialSource(slug, number) {
  const year = /^enem-(2022|2023|2024|2025)$/.exec(slug || '')?.[1]
  const page = sources[year]?.[number]
  if (page) {
    const day = number <= 90 || number >= 181 ? 1 : 2
    return 'https://download.inep.gov.br/enem/provas_e_gabaritos/' + year + '_PV_impresso_D' + day + '_CD' + (day === 1 ? 2 : 5) + '.pdf#page=' + page
  }
  return year ? 'https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos/' + year : null
}
