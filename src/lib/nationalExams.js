import catalog from './nationalExamCatalog.js'
import sources from './nationalExamSources.js'
import { supportImageUrls } from './safeUrls.js'

export const nationalInstitutions = {
  prf: { name: 'PRF', org: 'POLÍCIA RODOVIÁRIA FEDERAL', description: 'Policial Rodoviário Federal', color: 'navy' },
  receita: { name: 'Receita Federal', org: 'RECEITA FEDERAL DO BRASIL', description: 'Auditor-Fiscal', color: 'teal' },
  tse: { name: 'Justiça Eleitoral', org: 'TRIBUNAL SUPERIOR ELEITORAL', description: 'Técnico Judiciário · Área Administrativa', color: 'navy' },
}
export function nationalPapers(institution, year) { return catalog.filter(item => item.source === institution && (!year || item.year === year)) }
export function nationalYears(institution) { return [...new Set(nationalPapers(institution).map(item => item.year))].sort((a,b) => b.localeCompare(a)) }
export function nationalRoleLabel(paper) {
  if (paper.source === 'tse') return 'Técnico Judiciário — Área Administrativa'
  if (paper.source === 'prf') return 'Policial Rodoviário Federal' + (paper.slug.endsWith('-ingles') ? ' — Inglês' : paper.slug.endsWith('-espanhol') ? ' — Espanhol' : '')
  return paper.title.replace(/^Receita Federal \d{4} — /, '')
}
export function nationalQuestionMedia(slug, value) {
  if (!sources[slug] || typeof value !== 'string') return {}
  try {
    const media = JSON.parse(value)
    const images = supportImageUrls(media.support)
    return { supportImage: images.length ? images : null }
  } catch { return {} }
}
export function nationalOfficialSource(slug, number) {
  const page = sources[slug]?.pages[number]
  return page ? page.url + '#page=' + page.page : undefined
}
export function nationalKeySource(slug, number) { return sources[slug]?.pages[number]?.keyUrl }
