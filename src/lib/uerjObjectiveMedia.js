// Presentation only: preserves all original database records.
const figures = {
  "6": [
    "/uerj-2026-eq2/figura-q6.png"
  ],
  "8": [
    "/uerj-2026-eq2/figura-q8.png"
  ],
  "13": [
    "/uerj-2026-eq2/figura-q13.png"
  ],
  "28": [
    "/uerj-2026-eq2/figura-q28.png"
  ],
  "29": [
    "/uerj-2026-eq2/figura-q29.png"
  ],
  "31": [
    "/uerj-2026-eq2/figura-q31.png"
  ],
  "32": [
    "/uerj-2026-eq2/figura-q32.png"
  ],
  "33": [
    "/uerj-2026-eq2/figura-q33.png"
  ],
  "35": [
    "/uerj-2026-eq2/figura-q35.png"
  ],
  "42": [
    "/uerj-2026-eq2/figura-q42.png"
  ],
  "47": [
    "/uerj-2026-eq2/figura-q47.png"
  ],
  "48": [
    "/uerj-2026-eq2/figura-q48.png"
  ],
  "49": [
    "/uerj-2026-eq2/figura-q49.png"
  ],
  "50": [
    "/uerj-2026-eq2/figura-q50.png"
  ],
  "52": [
    "/uerj-2026-eq2/figura-q52.png"
  ],
  "53": [
    "/uerj-2026-eq2/figura-q53.png"
  ],
  "54": [
    "/uerj-2026-eq2/figura-q54.png"
  ],
  "56": [
    "/uerj-2026-eq2/figura-q56.png"
  ],
  "60": [
    "/uerj-2026-eq2/figura-q60.png"
  ],
  "38": [
    "/uerj-2026-eq2/glicemia.png"
  ],
  "39": [
    "/uerj-2026-eq2/glicemia.png"
  ],
  "43": [
    "/uerj-2026-eq2/agua.png"
  ],
  "44": [
    "/uerj-2026-eq2/agua.png"
  ],
  "59": [
    "/uerj-2026-eq2/mapa-q59.png",
    "/uerj-2026-eq2/curvas-q59.png"
  ],
  "5": [
    "/uerj-2026-eq2/apoio-p39.png"
  ],
  "37": [
    "/uerj-2026-eq2/apoio-p39.png"
  ],
  "45": [
    "/uerj-2026-eq2/apoio-p39.png"
  ]
}

export function uerjObjectiveMedia(slug, number, support) {
  if (slug !== 'uerj-2026-eq2') return {}
  let text = support?.startsWith('Enunciado e alternativas originais no apoio oficial.') ? null : support
  const note = number === 19 ? 'Trecho sublinhado: “Pura imitação: como em geral os poetas da civilização, ele não recebia da realidade essas impressões, e sim de uma variada leitura.”' : number === 26 ? 'Palavras sublinhadas no enunciado: “as” em “as we live” e “as” em “seen as”.' : null
  if (note && !text?.includes(note)) text = [text, note].filter(Boolean).join('\n\n')
  return { support: text, supportImage: figures[number] || null }
}
