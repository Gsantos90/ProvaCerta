import { pmerjRolesConfig, pmerjOfficialSource } from './pmerjExams.js'
import { pmspRolesConfig, pmspSources } from './pmspExams.js'

export const pmRolesByState = {
  'Rio de Janeiro': pmerjRolesConfig,
  'São Paulo': pmspRolesConfig,
}

export function pmOfficialSource(slug, number) {
  const source = pmspSources[slug]
  return source ? `${source.url}#page=${source.pages[number] || 1}` : pmerjOfficialSource(slug, number)
}
