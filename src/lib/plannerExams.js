const highSchool = ['Português', 'Literatura', 'Matemática', 'História', 'Geografia', 'Física', 'Química', 'Biologia', 'Inglês', 'Filosofia', 'Sociologia', 'Redação']

// Sugestões gerais de distribuição; o aluno pode ajustar conforme a edição e o cargo.
export const plannerExams = [
  { value: 'ENEM', label: 'ENEM', group: 'Vestibulares' },
  { value: 'PISM', label: 'PISM', group: 'Vestibulares' },
  { value: 'UERJ', label: 'UERJ', group: 'Vestibulares', subjects: highSchool },
  { value: 'FUVEST', label: 'USP · FUVEST', group: 'Vestibulares', subjects: highSchool },
  { value: 'ITA', label: 'ITA', group: 'Vestibulares', subjects: ['Matemática', 'Física', 'Química', 'Inglês', 'Português', 'Redação'] },
  { value: 'EFOMM', label: 'EFOMM', group: 'Militares', subjects: ['Inglês', 'Português', 'Matemática', 'Física', 'Redação'] },
  { value: 'ESA', label: 'ESA · Área Geral', group: 'Militares', subjects: ['Matemática', 'Português', 'História', 'Geografia', 'Inglês', 'Redação'] },
  { value: 'EsPCEx', label: 'EsPCEx', group: 'Militares', subjects: ['Português', 'Redação', 'Física', 'Química', 'Matemática', 'Geografia', 'História', 'Inglês'] },
  { value: 'CBMERJ', label: 'Bombeiro Militar · CFO RJ', group: 'Militares', subjects: highSchool },
]

export function plannerExam(exam) { return plannerExams.find(item => item.value === exam) }
