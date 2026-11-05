import sources from './unespSources.js'
import presentation2024 from './unesp2024Presentation.json' with { type: 'json' }
import presentation2025 from './unesp2025Presentation.json' with { type: 'json' }
import presentation2026 from './unesp2026Presentation.json' with { type: 'json' }
import { supportImageUrls } from './safeUrls.js'

const presentations = {
  'unesp-2024-fase1': presentation2024,
  'unesp-2025-fase1': presentation2025,
  'unesp-2026-fase1': presentation2026,
}

export function presentUnespQuestion(question) {
  const content = presentations[question?.examSlug]?.[Number(question.number) - 1]
  return content ? { ...question, ...content } : question
}

export const unespYears = ['2026', '2025', '2024']
export const unespPhases = [
  { value: 'fase1', label: '1ª fase — Prova interativa' },
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
