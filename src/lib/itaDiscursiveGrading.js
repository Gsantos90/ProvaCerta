import { matchesKeywordRule, matchesShortAnswer } from './shortAnswers.js'

const superscripts = { '⁰': '0', '¹': '1', '²': '2', '³': '3', '⁴': '4', '⁵': '5', '⁶': '6', '⁷': '7', '⁸': '8', '⁹': '9', '⁻': '-', '⁺': '+' }
export function normalizeItaMath(value) {
  return String(value ?? '').trim().replace(/[⁰¹²³⁴⁵⁶⁷⁸⁹⁻⁺]+/g, token => {
    // Ionic signs are signs, while numeric superscripts denote powers.
    const exponent = [...token].map(c => superscripts[c]).join('')
    return /^[+-]$/.test(exponent) ? exponent : `^(${exponent})`
  }).normalize('NFKD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[−–]/g, '-').replace(/[×·⋅]/g, '*').replace(/\*\*/g, '^')
    .replace(/\b(?:sen|sin)\b/g, 'sin').replace(/sen(?=[θ(])/g, 'sin')
    .replace(/α/g, 'alpha').replace(/β/g, 'beta').replace(/θ/g, 'theta')
    .replace(/[φϕ]/g, 'phi').replace(/μ/g, 'mu').replace(/ω/g, 'omega').replace(/π/g, 'pi')
    .replace(/√\s*(\d+(?:\.\d+)?)/g, 'sqrt($1)').replace(/√/g, 'sqrt')
    .replace(/arccos/g, 'acos').replace(/\^\((-?\d+)\)/g, '^$1')
    .replace(/(?:→|⟶|->|=>)/g, '→').replace(/⇌|<=>/g, '⇌')
    .replace(/[\[\]]/g, char => char === '[' ? '(' : ')')
    .replace(/[\s*_]/g, '').replace(/[.;]+$/g, '')
}

// Numeric answers accept a single number, fraction or scientific notation.
// No eval, arbitrary code, extra contradictory numbers or unregistered units.
export function readItaNumber(value, units) {
  let text = String(value ?? '').trim().replace(/^[\p{L}][\p{L}\d_]*\s*=\s*/u, '')
  const unit = [...units].filter(Boolean).sort((a, b) => b.length - a.length).find(item => text.toLowerCase().endsWith(item.toLowerCase()))
  if (unit) text = text.slice(0, -unit.length).trim()
  else if (!units.includes('')) return null
  text = text.replace(/[⁰¹²³⁴⁵⁶⁷⁸⁹⁻⁺]+/g, token => '^(' + [...token].map(c => superscripts[c]).join('') + ')')
    .normalize('NFKD').replace(/[−–]/g, '-').replace(/[×·⋅]/g, '*').replace(/\s/g, '').replace(/,/g, '.')
  if (/^[+-]?(?:\d+(?:\.\d*)?|\.\d+)(?:e[+-]?\d+)?$/i.test(text)) return Number(text)
  const fraction = text.match(/^([+-]?\d+(?:\.\d+)?)\/([+-]?\d+(?:\.\d+)?)$/)
  if (fraction && Number(fraction[2]) !== 0) return Number(fraction[1]) / Number(fraction[2])
  const scientific = text.match(/^([+-]?\d+(?:\.\d+)?)\*10\^\(?([+-]?\d+)\)?$/)
  return scientific ? Number(scientific[1]) * 10 ** Number(scientific[2]) : null
}

function mathValue(value) {
  const n = readItaNumber(value, [''])
  return n !== null ? String(n) : normalizeItaMath(value)
}
function sameList(value, expected) {
  const raw = String(value ?? '').replace(/^\s*\{|\}\s*$/g, '').trim()
  const delimiter = /[;\n]|\s+e\s+/
  // Commas are coordinates when the model contains parentheses.
  const parts = raw.split(expected.some(item => item.includes('(')) || /[;\n]/.test(raw) ? delimiter : /[;,\n]|\s+e\s+/).map(s => s.trim()).filter(Boolean)
  const wanted = expected.map(mathValue).sort()
  return parts.length === wanted.length && parts.map(mathValue).sort().every((item, i) => item === wanted[i])
}
export function matchesItaField(field, value) {
  if (field.manual || !String(value ?? '').trim()) return false
  if (field.answerList) return sameList(value, field.answerList)
  const withoutAssignment = text => String(text).replace(/^[\p{L}][\p{L}\d_]*\s*=\s*/u, '')
  if (field.math && field.accepted.some(alias => normalizeItaMath(withoutAssignment(alias)) === normalizeItaMath(withoutAssignment(value)))) return true
  if (field.numeric) {
    const number = readItaNumber(value, field.numeric.units)
    if (number !== null && Number.isFinite(number) && Math.abs(number - field.numeric.value) <= field.numeric.tolerance + Number.EPSILON * Math.max(1, Math.abs(number))) return true
  }
  if (field.math) return String(value).trim() === field.reference
  return matchesShortAnswer(value, [...field.accepted, field.reference]) || matchesKeywordRule(value, field.keywordRule)
}
export function gradeItaQuestion(question, answers = {}) {
  if (question.kind === 'essay') return { items: [], recognized: 0, total: 0, manual: 1 }
  if (question.kind === 'objective') {
    const selected = answers.choice || ''
    const item = { id: 'choice', matched: selected === question.answer, blank: !selected }
    return { items: [item], recognized: Number(item.matched), total: 1, manual: 0 }
  }
  const items = question.fields.map(field => ({ id: field.id, manual: Boolean(field.manual),
    matched: matchesItaField(field, answers[field.id]), blank: !String(answers[field.id] ?? '').trim() }))
  return { items, recognized: items.filter(item => item.matched).length, total: items.filter(item => !item.manual).length, manual: items.filter(item => item.manual).length }
}
