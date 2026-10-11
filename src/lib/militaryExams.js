import { supportImageUrls } from './safeUrls.js'

export function militaryQuestionMedia(value) {
  if (typeof value !== 'string' || !value.trim().startsWith('{')) return { supportImage: value }
  try {
    const media = JSON.parse(value)
    const support = supportImageUrls(media.support)
    return { supportImage: support.length ? support : null }
  } catch { return { supportImage: value } }
}

const militaryPdfs = Object.fromEntries(['esa-geral', 'esa-musica', 'esa-saude', 'espcex-dia-1', 'espcex-dia-2'].map(name => [name.replace(/^(esa|espcex)-/, '$1-2026-'), `/provas/militares/2026/${name}.pdf`]))

export function militaryOfficialSource(slug) {
  return militaryPdfs[slug] || null
}
