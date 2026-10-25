import sources2016 from './inss2016Sources.js'

export function inssArchiveSource(slug, number) {
  const source = sources2016[slug]
  if (source) return source.pages[number] ? `${source.url}#page=${source.pages[number]}` : undefined
  const block = /^cnu-2025-bloco([1345])-tarde$/.exec(slug || '')?.[1]
  if (block && Number.isInteger(Number(number)) && number >= 1 && number <= 90) {
    return `https://conhecimento.fgv.br/sites/default/files/concursos/b${block}${block}01.pdf`
  }
  return undefined
}
