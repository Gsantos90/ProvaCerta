import { getShortAnswerRule, getShortConceptRules } from './shortAnswerRules.js'

// Exact variants and curated combinations of concepts, without AI.
export function normalizeShortAnswer(value, caseSensitive = false) {
  const text = caseSensitive ? String(value ?? '') : String(value ?? '').toLowerCase()
  return text.normalize('NFKD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[−–]/g, '-').replace(/[⁺]/g, '+')
    .trim().replace(/[.,;:!?]+$/g, '').replace(/\s+/g, ' ').trim()
}

const wordPattern = pattern => new RegExp(`(?:^|[^a-z0-9])(?:${pattern})(?=$|[^a-z0-9])`, 'u')
export function matchesKeywordRule(value, rule) {
  if (!rule) return false
  const text = normalizeShortAnswer(value)
  if (!text || rule.reject?.some(pattern => wordPattern(pattern).test(text))) return false
  const candidates = [rule, ...(rule.alternatives || [])]
  return candidates.some(candidate => {
    if (!candidate.allowNegation && !rule.allowNegation && /\b(nao|nunca|jamais|nenhum|nenhuma)\b/.test(text)) return false
    return candidate.groups.every(alternatives => alternatives.some(pattern => wordPattern(pattern).test(text)))
      && (candidate.relations || rule.relations || []).every(pattern => wordPattern(pattern).test(text))
  })
}

// Only harmless framing words may surround a short named answer.
function matchesFramedTerm(value, accepted) {
  const text = normalizeShortAnswer(value).replace(/[^a-z0-9+-]+/g, ' ').trim()
  const framing = new Set('a o as os e sao seria resposta correto correta ion nome chama denominado enzima hormonio celula principal trata se de do da das dos um uma tipo chamado chamada estrutura proteina molecula local no na nos nas que nesse caso corresponde ao por exemplo responsavel delas deles envolvida envolvido presente'.split(' '))
  if (/\b(nao|nunca|jamais|ou)\b/.test(text)) return false
  return (accepted || []).some(alias => {
    const term = normalizeShortAnswer(alias).replace(/[^a-z0-9+-]+/g, ' ').trim()
    if (!term || term.split(' ').length > 3) return false
    const index = ` ${text} `.indexOf(` ${term} `)
    if (index < 0) return false
    const rest = (` ${text} `.slice(0, index) + ' ' + ` ${text} `.slice(index + term.length + 2)).trim()
    return rest.split(/\s+/).filter(Boolean).every(word => framing.has(word))
  })
}

export function matchesShortAnswer(value, accepted, caseSensitive = false) {
  const normalized = normalizeShortAnswer(value, caseSensitive)
  return Boolean(normalized) && accepted.some(answer => normalizeShortAnswer(answer, caseSensitive) === normalized)
}

function matchesAnswerSet(value, expected) {
  const normalized = normalizeShortAnswer(value)
  const tokens = normalized.split(/\s*(?:[,;/]|\be\b|\s+)\s*/).filter(Boolean)
  const wanted = expected.map(answer => normalizeShortAnswer(answer)).sort()
  return tokens.length === wanted.length && tokens.sort().every((token, index) => token === wanted[index])
}

export function gradeShortAnswers(question, answers) {
  const used = new Set()
  const items = question.fields.map(field => {
    const conceptRules = getShortConceptRules(question.id, field.id)
    const conceptsFound = field.concepts?.map((aliases, index) =>
      matchesShortAnswer(answers[field.id], aliases) || matchesFramedTerm(answers[field.id], aliases)
      || matchesKeywordRule(answers[field.id], conceptRules?.[index]))
    // A field asking for one concept must not count a list of multiple concepts.
    const concept = conceptsFound?.filter(Boolean).length === 1 ? conceptsFound.indexOf(true) : -1
    // A complete displayed model is valid for a single answer. Keep genotype,
    // distinct-concept and codon rules separate: their reference may be explanatory.
    const accepted = !field.caseSensitive && !field.concepts && !field.answerSet
      ? [...field.accepted, field.reference].filter(Boolean) : field.accepted
    let matched = field.answerSet ? matchesAnswerSet(answers[field.id], field.answerSet)
      : field.concepts ? concept >= 0 : matchesShortAnswer(answers[field.id], accepted, field.caseSensitive)
    if (!matched && !field.answerSet && !field.caseSensitive && !field.concepts) {
      matched = matchesFramedTerm(answers[field.id], field.accepted)
        || matchesKeywordRule(answers[field.id], getShortAnswerRule(question.id, field.id))
    }
    const key = `${field.distinctGroup}:${concept}`
    const duplicate = matched && Boolean(field.distinctGroup) && used.has(key)
    if (matched && field.distinctGroup) used.add(key)
    if (duplicate) matched = false
    return { id: field.id, matched, duplicate, blank: !String(answers[field.id] ?? '').trim() }
  })
  return { items, recognized: items.filter(item => item.matched).length, total: items.length }
}
