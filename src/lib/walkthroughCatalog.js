import pismQuestions from './walkthroughQuestions.json' with { type: 'json' }
import additionalQuestions from './walkthroughInstitutionQuestions.json' with { type: 'json' }

export const walkthroughExams = [
  { id: 'pism', label: 'PISM — UFJF', institution: 'UFJF' },
  { id: 'uerj', label: 'UERJ', institution: 'UERJ' },
  { id: 'usp', label: 'USP — Fuvest', institution: 'Fuvest' },
  { id: 'ita', label: 'ITA', institution: 'ITA' },
  { id: 'unicamp', label: 'Unicamp', institution: 'Comvest' },
  { id: 'unesp', label: 'Unesp', institution: 'Vunesp' },
  { id: 'enem', label: 'ENEM', institution: 'Inep' },
  { id: 'esa', label: 'ESA', institution: 'ESA' },
  { id: 'espcex', label: 'EsPCEx', institution: 'EsPCEx' },
  { id: 'efomm', label: 'EFOMM', institution: 'CIAGA' },
  { id: 'cbmerj', label: 'CBMERJ', institution: 'CBMERJ' },
]

export const walkthroughQuestions = [
  ...pismQuestions.map(question => ({ ...question, exam: 'pism', stage: question.module, stageLabel: `${['I', 'II', 'III'].indexOf(question.module) + 1}º ano — Módulo ${question.module}` })),
  ...additionalQuestions,
]

export function walkthroughSelection(exam, year, stage, subject) {
  const examQuestions = walkthroughQuestions.filter(question => question.exam === exam)
  const editions = [...new Set(examQuestions.map(question => question.year))].sort((a, b) => b - a)
  const selectedYear = editions.includes(year) ? year : editions[0]
  const yearQuestions = examQuestions.filter(question => question.year === selectedYear)
  const stages = [...new Map(yearQuestions.map(question => [question.stage, { id: question.stage, label: question.stageLabel }])).values()]
  const selectedStage = stages.some(item => item.id === stage) ? stage : stages[0]?.id
  const stageQuestions = yearQuestions.filter(question => question.stage === selectedStage)
  const subjects = ['Matemática', 'Física', 'Química'].filter(item => stageQuestions.some(question => question.subject === item))
  const selectedSubject = subjects.includes(subject) ? subject : subjects[0]
  return { editions, year: selectedYear, stages, stage: selectedStage, subjects, subject: selectedSubject,
    questions: stageQuestions.filter(question => question.subject === selectedSubject) }
}
