import sources from './cfcSources.js'
import { supportImageUrls } from './safeUrls.js'

export const cfcYears = ['2026', '2025']
export const cfcEditions = [{ value: '2', label: '2ª edição' }, { value: '1', label: '1ª edição' }]
export function cfcSlug(year, edition) {
  const slug = 'cfc-' + year + '-' + edition
  return sources[slug] ? slug : null
}
export function cfcOfficialSource(slug, number) {
  const source = sources[slug]
  return source?.pages[number] ? source.url + '#page=' + source.pages[number] : undefined
}
export function cfcQuestionMedia(slug, value) {
  if (!sources[slug] || typeof value !== 'string') return {}
  try { return { originalImages: supportImageUrls(JSON.parse(value).original) } }
  catch { return {} }
}
