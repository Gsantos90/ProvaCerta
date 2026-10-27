import sources from './pcSources.js'
import { supportImageUrls } from './safeUrls.js'

export function pcOfficialSource(slug, number) {
  const source = sources[slug]?.[number]
  return source ? `${source.url}#page=${source.page}` : undefined
}

export function pcQuestionMedia(slug, value) {
  if (!sources[slug] || typeof value !== 'string') return {}
  try { return { originalImages: supportImageUrls(JSON.parse(value).original) } }
  catch { return {} }
}
