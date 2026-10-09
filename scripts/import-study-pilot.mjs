import { readFileSync, writeFileSync } from 'node:fs'

const paragraphs = JSON.parse(readFileSync('pdf-extracts/study-pilot-paragraphs.json', 'utf8').replace(/^\uFEFF/, ''))
const between = (start, end) => paragraphs.slice(paragraphs.findIndex(p => p.startsWith(start)) + 1, paragraphs.findIndex(p => p.startsWith(end)))
function questions(start, end, answerStart, answerEnd, prefix) {
  const lines = between(start, end)
  const keys = between(answerStart, answerEnd)
  const result = []
  for (const line of lines) {
    const question = line.match(/^(\d+)\. (.+)$/)
    const option = line.match(/^([A-D])\) (.+)$/)
    if (question) result.push({ id: `${prefix}-${question[1]}`, number: Number(question[1]), text: question[2], options: [] })
    else if (option) result.at(-1).options.push(option[2])
  }
  for (const key of keys) {
    const match = key.match(/^(\d+)\. ([A-D]) — (.+)$/)
    if (match) Object.assign(result.find(q => q.number === Number(match[1])), { answer: match[2], explanation: match[3] })
  }
  if (result.some(q => q.options.length !== 4 || !q.answer)) throw new Error('Questão incompleta no pacote piloto')
  return result
}
const math = questions('4. Questões autorais', '5. Gabarito comentado', '5. Gabarito comentado', '6. Podcast', 'piloto-porcentagem')
const history = questions('Questões autorais integradoras', 'Gabarito comentado — História', 'Gabarito comentado — História', 'Roteiros de podcast', 'piloto-historia')
const moduleTitles = paragraphs.filter(p => /^Módulo \d/.test(p))
const stops = ['História do Brasil — trilha', moduleTitles[2], moduleTitles[3], moduleTitles[4], 'Questões autorais integradoras']
const ids = ['porcentagem', 'brasil-colonia', 'imperio-abolicao', 'republica-vargas', 'ditadura-redemocratizacao']
const quizIndices = [[0,1,2,3,4], [0], [1], [2,3], [4,5]]
const modules = moduleTitles.map((title, index) => {
  let content = between(title, stops[index])
  if (index === 0) content = content.slice(0, content.findIndex(p => p === '4. Questões autorais'))
  return { id: ids[index], title: title.replace(/^Módulo \d — /, ''), subject: index ? 'História' : 'Matemática', content,
    questions: quizIndices[index].map(i => (index ? history : math)[i]) }
})
writeFileSync('src/lib/studyPilot.json', JSON.stringify({ title: 'Pacote piloto de estudos', source: 'Prova_Certa_Pacote_Estudos_Piloto.docx', historyIntro: paragraphs.find(p => p.startsWith('Seleção editorial')), modules }, null, 2) + '\n')
console.log(`Importados ${modules.length} módulos e ${math.length + history.length} questões autorais.`)
