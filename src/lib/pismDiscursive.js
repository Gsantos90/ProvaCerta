export const pismAreas = [
  { value: 'humanas', label: 'Humanas' },
  { value: 'exatas', label: 'Exatas' },
  { value: 'saude', label: 'Saúde' },
  { value: 'economia', label: 'Economia e Administração' },
]

export function pismDiscursiveKey(selection, area = 'humanas') {
  const match = /^(\d{4})-(?:(ii|iii)-)?([12])$/.exec(selection)
  if (!match) return null
  const [, year, module, day] = match
  return module ? `pism-${module}-${year}-dia-${day}-${module === 'iii' ? area : 'comum'}` : `pism-${year}-${day}-comum`
}

export function validPismDiscursiveDraft(value) {
  return Boolean(value && typeof value.finished === 'boolean' && value.answers
    && typeof value.answers === 'object' && !Array.isArray(value.answers)
    && Object.values(value.answers).every(answer => typeof answer === 'string' && answer.length <= 12000))
}

export const pismAnswerId = (section, number) => `${section.subject}:${number}`

export function pismDiscursiveSubjects(selection, area = 'humanas') {
  const day = selection?.endsWith('-2') ? 2 : 1
  if (!selection?.includes('-iii-')) return day === 1
    ? ['Língua Portuguesa', 'Geografia', 'Matemática', 'Química']
    : ['Literatura', 'Biologia', 'Física', 'História']
  if (day === 2) return ['exatas','saude'].includes(area)
    ? ['Física','Química'] : ['Geografia','História','Filosofia']
  if (area === 'exatas') return ['Língua Portuguesa','Matemática']
  if (area === 'saude') return ['Língua Portuguesa','Biologia']
  return ['Língua Portuguesa',area === 'economia' ? 'Matemática' : 'Literatura','Sociologia']
}

export function pismExamEditions(selection, area) {
  return [{ value: 'objetiva', label: 'Prova objetiva' }, ...pismDiscursiveSubjects(selection,area).map(subject => ({ value: subject, label: `Exame discursivo - ${subject}` }))]
}

export function validPismSubjectDraft(value) {
  return Boolean(value && typeof value.finished === 'boolean' && value.answers
    && typeof value.answers === 'object' && !Array.isArray(value.answers)
    && Object.values(value.answers).every(fields => fields && typeof fields === 'object' && !Array.isArray(fields)
      && Object.values(fields).every(answer => typeof answer === 'string' && answer.length <= 12000)))
}
