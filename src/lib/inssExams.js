export const inssYears = ['2025', '2022', '2016']

// CPNU 2 has one common objective booklet per block, shared by its specialties.
export const inssExamsByYear = {
  '2025': [
    { value: 'bloco1', label: 'Analista — Serviço Social, Fisioterapia, Psicologia e Terapia Ocupacional (Bloco 1)', slug: 'cnu-2025-bloco1-tarde' },
    { value: 'bloco3', label: 'Analista — Tecnologia da Informação (Bloco 3)', slug: 'cnu-2025-bloco3-tarde' },
    { value: 'bloco4', label: 'Analista — Engenharias Civil, Elétrica, Mecânica e de Telecomunicações (Bloco 4)', slug: 'cnu-2025-bloco4-tarde' },
    { value: 'bloco5', label: 'Analista — Administração, Contabilidade, Direito e Estatística (Bloco 5)', slug: 'cnu-2025-bloco5-tarde' },
  ].map(exam => ({ ...exam, title: `INSS / CNU 2025 · ${exam.label}`, count: 90, binary: false })),
  '2022': [{ value: 'tecnico', label: 'Técnico do Seguro Social', title: 'INSS 2022 · Técnico do Seguro Social', slug: 'inss-2022-tecnico', count: 120, binary: true }],
  '2016': [
    { value: 'tecnico', label: 'Técnico do Seguro Social', title: 'INSS 2016 · Técnico do Seguro Social', slug: 'inss-2016-tecnico', count: 120, binary: true },
    { value: 'analista', label: 'Analista do Seguro Social — Serviço Social', title: 'INSS 2016 · Analista do Seguro Social — Serviço Social', slug: 'inss-2016-analista-servico-social', count: 120, binary: true },
  ],
}

export function inssExamFor(year, role) {
  return inssExamsByYear[year]?.find(exam => exam.value === role)
}

export function inssExamFromSlug(slug) {
  return Object.values(inssExamsByYear).flat().find(exam => exam.slug === slug)
}
