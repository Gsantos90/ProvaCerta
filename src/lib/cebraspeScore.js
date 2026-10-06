import { isAnnulledAnswer, isCorrectAnswer } from './examAnswers.js'

export function isBinaryQuestion(question) {
  return question?.options?.length === 2 && question.options[0]?.trim().toLowerCase() === 'certo' && question.options[1]?.trim().toLowerCase() === 'errado'
}

// A/B continuam sendo os valores gravados; C/E são os rótulos da banca.
export function binaryAnswerLabel(answer) {
  return answer === 'A' ? 'Certo' : answer === 'B' ? 'Errado' : answer
}

export function cebraspeScore(questions, answers) {
  return questions.reduce((result, question, index) => {
    if (isAnnulledAnswer(question.answer)) {
      result.annulled += 1
      result.points += 1
    } else if (!answers[index]) {
      result.blank += 1
    } else if (isCorrectAnswer(answers[index], question.answer)) {
      result.correct += 1
      result.points += 1
    } else {
      result.wrong += 1
      result.points -= 1
    }
    return result
  }, { points: 0, correct: 0, wrong: 0, blank: 0, annulled: 0 })
}
