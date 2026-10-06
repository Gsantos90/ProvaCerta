import { normalizeEssayTheme } from './essayThemes.js'

export const essayStorageKey = 'provacerta-redacao-v1'
export const reviewQuestions = [
  { id: 'tema', label: 'Atendi ao tema?', prompt: 'Meu texto responde à proposta e mantém o foco do início ao fim?', tip: 'Compare cada parágrafo com o tema e retire ideias que desviam da proposta.' },
  { id: 'tese', label: 'Meu ponto de vista está claro?', prompt: 'A introdução apresenta o assunto e a ideia que vou defender?', tip: 'Reescreva sua ideia central em uma frase e confira se ela aparece na introdução.' },
  { id: 'argumentos', label: 'Expliquei meus argumentos?', prompt: 'Apresentei razões, exemplos ou informações e expliquei como sustentam meu ponto de vista?', tip: 'Após cada exemplo, explique por que ele é relevante para a ideia defendida.' },
  { id: 'estrutura', label: 'Organizei os parágrafos?', prompt: 'Há introdução, desenvolvimento e conclusão, com uma ideia principal em cada parágrafo?', tip: 'Leia a primeira frase de cada parágrafo e confira a sequência das ideias.' },
  { id: 'coesao', label: 'Conectei as ideias?', prompt: 'As frases e os parágrafos se conectam com clareza, sem repetições desnecessárias?', tip: 'Confira se os conectivos expressam a relação desejada: contraste, causa, consequência ou conclusão.' },
  { id: 'conclusao', label: 'Concluí meu raciocínio?', prompt: 'A conclusão retoma o ponto de vista e encerra o texto de acordo com a proposta?', tip: 'Confira as instruções da sua prova e evite introduzir um argumento novo no encerramento.' },
  { id: 'linguagem', label: 'Revisei a linguagem?', prompt: 'Reli o texto procurando problemas de pontuação, concordância, grafia e frases confusas?', tip: 'Leia em voz alta e confira os trechos em que precisar parar para entender a frase.' },
]
const ignoredWords = new Set('a à às ao aos as o os um uma uns umas de do da dos das em no na nos nas e ou mas que se por para com sem sob sobre entre até como quando onde porque pois então também ainda já não sim muito mais menos esse essa esses essas este esta estes estas isso isto aquele aquela aqueles aquelas seu sua seus suas meu minha meus minhas nosso nossa nossos nossas ele ela eles elas eu nós você vocês é são foi foram ser estar está estão tem têm há pelo pela pelos pelas'.split(' '))

export function analyzeEssay(text = '') {
  const normalized = text.normalize('NFC')
  const tokens = normalized.match(/[\p{L}\p{N}]+(?:[-’'][\p{L}\p{N}]+)*/gu) || []
  const words = tokens.map(word => word.toLocaleLowerCase('pt-BR'))
  const paragraphs = normalized.split(/\r?\n+/).map(part => part.trim()).filter(Boolean)
  const frequencies = new Map()
  const consecutive = new Map()
  words.forEach(word => {
    if (word.length >= 4 && !ignoredWords.has(word)) frequencies.set(word, (frequencies.get(word) || 0) + 1)
  })
  // Não compara palavras entre parágrafos ou frases diferentes.
  normalized.split(/[.!?;:\r\n]+/).forEach(fragment => {
    const items = (fragment.match(/[\p{L}\p{N}]+(?:[-’'][\p{L}\p{N}]+)*/gu) || []).map(word => word.toLocaleLowerCase('pt-BR'))
    for (let index = 1; index < items.length; index++) {
      if (items[index] === items[index - 1]) consecutive.set(items[index], (consecutive.get(items[index]) || 0) + 1)
    }
  })
  return {
    wordCount: tokens.length,
    paragraphCount: paragraphs.length,
    characterCount: Array.from(normalized).length,
    repeatedWords: [...frequencies].filter(([, count]) => count >= 3).map(([word, count]) => ({ word, count })).sort((a, b) => b.count - a.count || a.word.localeCompare(b.word, 'pt-BR')).slice(0, 10),
    consecutiveWords: [...consecutive].map(([word, count]) => ({ word, count })),
    extraSpaces: (normalized.match(/[^\S\r\n]{2,}/g) || []).length,
  }
}

export function emptyEssay() {
  return { version: 1, topic: '', text: '', notes: '', revision: 0, checks: {}, theme: null }
}

export function restoreEssay(raw) {
  if (!raw) return emptyEssay()
  const parsed = JSON.parse(raw)
  if (!parsed || parsed.version !== 1 || typeof parsed.text !== 'string' || typeof parsed.topic !== 'string') throw new Error('Rascunho incompatível')
  const draft = { ...emptyEssay(), topic: parsed.topic.slice(0, 300), text: parsed.text.slice(0, 60000), notes: typeof parsed.notes === 'string' ? parsed.notes.slice(0, 5000) : '', revision: Number.isSafeInteger(parsed.revision) && parsed.revision >= 0 ? parsed.revision : 0 }
  draft.theme = normalizeEssayTheme(parsed.theme)
  if (draft.theme?.title !== draft.topic) draft.theme = null
  for (const { id } of reviewQuestions) {
    const check = parsed.checks?.[id]
    if (check && ['ok', 'review'].includes(check.value) && Number.isSafeInteger(check.revision) && check.revision >= 0) draft.checks[id] = { value: check.value, revision: check.revision }
  }
  return draft
}

export function summarizeReview(draft) {
  const evaluated = reviewQuestions.filter(({ id }) => draft.checks[id]?.revision === draft.revision && ['ok', 'review'].includes(draft.checks[id]?.value))
  return { evaluated: evaluated.length, confirmed: evaluated.filter(({ id }) => draft.checks[id].value === 'ok').length, priorities: evaluated.filter(({ id }) => draft.checks[id].value === 'review') }
}
