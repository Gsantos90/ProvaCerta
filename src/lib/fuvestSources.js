// Páginas PDF do caderno oficial, incluindo capa.
const fuvest2025Url = 'https://www.fuvest.br/wp-content/uploads/fuvest2025_primeira_fase_prova_V1.pdf'
const pages2025 = [2, 3, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, 10, 10, 11, 11, 11, 12, 13, 13, 13, 13, 14, 14, 14, 15, 15, 15, 16, 16, 17, 17, 18, 18, 18, 19, 19, 19, 19, 20, 20, 20, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23, 24, 24, 24, 25, 25, 25, 25, 26, 26, 27, 27, 27, 28, 28, 28, 28, 29, 29, 29, 30, 30, 30, 31, 31, 32, 32, 33, 33, 33, 33]

export function fuvestOfficialSource(slug, number) {
  if (slug !== 'usp-2025-v1' || !Number.isInteger(number) || number < 1 || number > pages2025.length) return undefined
  return fuvest2025Url + '#page=' + pages2025[number - 1]
}
