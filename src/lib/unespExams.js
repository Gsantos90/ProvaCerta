import sources from './unespSources.js'
import { supportImageUrls } from './safeUrls.js'

export const unespYears = ['2026', '2025', '2024']
export const unespPhases = [
  { value: 'fase1', label: '1ª fase — Prova interativa' },
  { value: 'fase2', label: '2ª fase — Provas discursivas e Redação' },
]
export const unespSecondPhase = [
  { value: 'dia1', label: '1º dia - Humanas, Natureza e Matemática' },
  { value: 'dia2', label: '2º dia - Linguagens e Redação' },
]

export function unespOfficialSource(slug, number) {
  const source = sources[slug]
  return source?.pages[number] ? `${source.url}#page=${source.pages[number]}` : undefined
}

export function unespQuestionMedia(slug, value) {
  if (!sources[slug] || typeof value !== 'string') return {}
  try { return { originalImages: supportImageUrls(JSON.parse(value).original) } }
  catch { return {} }
}

export function unespDocument(year, name) {
  if (!unespYears.includes(String(year)) || !['dia1','dia2'].includes(name)) return null
  return `/provas/unesp/${year}-fase2-${name}.pdf`
}
