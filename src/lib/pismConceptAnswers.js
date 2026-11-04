import { pismHumanitiesReferences } from './pismHumanitiesReferences.js'

export function normalizePismText(value) {
  return String(value || '').normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .toLowerCase().replace(/[^a-z0-9\s?]/g, ' ').replace(/\s+/g, ' ').trim()
}
const regexCache = new Map()
function patternRegex(pattern) {
  if (!regexCache.has(pattern)) regexCache.set(pattern, new RegExp(`(?:^|\\b)(?:${pattern})(?:\\b|$)`))
  return regexCache.get(pattern)
}

export function gradePismConcepts(rule, value) {
  const text = normalizePismText(String(value || '').slice(0, 12000))
  const minimum = rule.minimum ?? rule.concepts.length
  const blank = !text
  const sentences = String(value || '').slice(0, 12000).split(/[.!?;\n]+/).map(normalizePismText).filter(Boolean)
  const referenceMatched = text === normalizePismText(rule.reference)
  const negatedConflict = !referenceMatched && sentences.some(sentence => /\b(?:nao|nunca|jamais)\b/.test(sentence)
    && rule.concepts.some(concept => !/nao|nunca|jamais/.test(concept.pattern) && patternRegex(concept.pattern).test(sentence)))
  const rejected = !blank && (negatedConflict || (rule.reject || []).some(pattern => patternRegex(pattern).test(text)))
  const concepts = rule.concepts.map(concept => {
    const regex = patternRegex(concept.pattern)
    const matched = sentences.some(sentence => {
      if (!regex.test(sentence)) return false
      // Uma negação nova torna a leitura incerta. Só aceita diretamente
      // negações previstas no critério (ex.: "não foi concluída").
      return !/\b(?:nao|nunca|jamais)\b/.test(sentence) || /nao|nunca|jamais/.test(concept.pattern)
    })
    return { label: concept.label, matched: !blank && !rejected && (referenceMatched || matched) }
  })
  const covered = concepts.filter(concept => concept.matched).length
  const structureMissing = Boolean(rule.questionRequired && !String(value || '').trim().endsWith('?'))
  const matched = !blank && !rejected && !structureMissing && covered >= minimum
  return {
    matched, blank, concepts, covered, minimum, rejected, structureMissing,
    partial: !matched && covered > 0 && !rejected,
    writingReview: Boolean(rule.writingReview),
    status: blank ? 'blank' : rejected ? 'review' : matched ? 'recognized' : covered > 0 ? 'partial' : 'unrecognized',
  }
}

function combinations(items, count, start = 0, picked = []) {
  if (picked.length === count) return [picked]
  return items.slice(start).flatMap((item, offset) => combinations(items, count, start + offset + 1, [...picked, item]))
}
function cartesian(groups) {
  return groups.reduce((rows, group) => rows.flatMap(row => group.map(item => [...row, item])), [[]])
}
export function createPismVariations(rule) {
  const result = new Set()
  // Variações combinam explicações e exemplos específicos do item;
  // não são repetições com prefixos ou apenas diferenças de pontuação.
  for (let size = rule.minimum ?? rule.concepts.length; size <= rule.concepts.length; size++) {
    for (const selected of combinations(rule.concepts, size)) {
      for (const clauses of cartesian(selected.map(concept => concept.phrases))) {
        const candidate = clauses.join(' ')
        if (gradePismConcepts(rule, candidate).matched) result.add(candidate)
        if (result.size === 10) return [...result]
      }
    }
  }
  return [...result]
}

const preparedRules = new Map()
export function getPismConceptRule(module, year, subject, number, fieldId) {
  const key = `${module}:${year}:${subject}:${number}/${fieldId}`
  const reference = pismHumanitiesReferences[key]
  if (!reference) return null
  if (!preparedRules.has(key)) {
    const rule = { ...reference, kind: 'concepts' }
    rule.variations = createPismVariations(rule)
    if (rule.variations.length < 10) throw new Error(`Faltam variações de resposta: ${key} (${rule.variations.length})`)
    preparedRules.set(key, rule)
  }
  return preparedRules.get(key)
}
