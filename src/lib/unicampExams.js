import sources from './unicampSources.js'
import { supportImageUrls } from './safeUrls.js'

export const unicampYears = ['2026', '2025', '2024']
export const unicampPhases = [
  { value: 'fase1', label: '1ª fase — Prova interativa' },
  { value: 'fase2', label: '2ª fase — Cadernos e respostas esperadas' },
]
export const unicampSecondPhase = [
  { value: 'dia-1', label: '1º dia — Redação, Português e Interdisciplinares' },
  { value: 'exatas', label: '2º dia — Ciências Exatas / Tecnológicas' },
  { value: 'biologicas', label: '2º dia — Ciências Biológicas / Saúde' },
  { value: 'humanas', label: '2º dia — Ciências Humanas / Artes' },
]

export function unicampOfficialSource(slug, number) {
  const source = sources[slug]
  return source?.pages[number] ? `${source.url}#page=${source.pages[number]}` : undefined
}

export function unicampQuestionMedia(slug, value) {
  if (!sources[slug] || typeof value !== 'string') return {}
  try { return { originalImages: supportImageUrls(JSON.parse(value).original) } }
  catch { return {} }
}

export function unicampDocument(year, name) {
  if (!unicampYears.includes(String(year)) || !['dia-1','exatas','biologicas','humanas','dia-1-respostas','exatas-respostas','biologicas-respostas','humanas-respostas','redacao-expectativas'].includes(name)) return null
  return `/provas/unicamp/${year}-fase2-${name}.pdf`
}
