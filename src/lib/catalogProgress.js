export function examSource(selection) {
  if (selection?.startsWith('pism')) return 'pism'
  return selection === 'pmerj' ? 'pmrj' : selection || null
}

export function attemptSource(attempt) {
  if (attempt.exam_source) return examSource(attempt.exam_source)
  const title = attempt.exam_title || ''
  const rules = [
    ['pism', /^(PISM\b|20\d{2}(?:-[12])?$)/i], ['enem', /^ENEM\b/i],
    ['bb', /^Banco do Brasil\b/i], ['cnu', /^CNU\b/i], ['oab', /^OAB\b/i], ['cfc', /^CFC\b/i], ['unicamp', /^Unicamp\b/i],
    ['unesp', /^Unesp\b/i],
    ['pmrj', /^PMERJ\b/i], ['correios', /^Correios\b/i], ['inss', /^INSS\b/i], ['ebserh', /^EBSERH\b/i],
    ['prf', /^PRF\b/i], ['receita', /^Receita Federal\b/i], ['tse', /^(TSE|Justiça Eleitoral)\b/i],
    ['caixa', /^CAIXA\b/i], ['pc', /^Polícia Civil\b/i], ['pf', /^Polícia Federal\b/i],
    ['esa', /^ESA\b/i], ['espcex', /^EsPCEx\b/i], ['efomm', /^EFOMM\b/i],
    ['uerj', /^UERJ\b/i], ['usp', /^USP\b/i], ['ita', /^ITA\b/i],
  ]
  return rules.find(([, pattern]) => pattern.test(title))?.[0] || null
}

export function latestForExam(rows, source) {
  return rows.filter(row => attemptSource(row) === source).reduce((latest, row) =>
    !latest || row.completed_at > latest.completed_at ? row : latest, null)
}

export async function loadCatalogProgress(client, userId) {
  const rows = []
  for (let offset = 0; ; offset += 100) {
    const { data, error } = await client.from('exam_attempts')
      .select('id,user_id,exam_source,exam_title,points,total,scoring,completed_at')
      .eq('user_id', userId).order('completed_at', { ascending: false }).order('id').range(offset, offset + 99)
    if (error) throw error
    rows.push(...data)
    if (data.length < 100) return rows
  }
}
