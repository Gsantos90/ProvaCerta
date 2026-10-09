export function gradePilotQuiz(questions, answers) {
  const answered = questions.filter(question => question.options[answers[question.id]] !== undefined).length
  return {
    answered,
    complete: answered === questions.length,
    correct: questions.filter(question => answers[question.id] === question.answer.charCodeAt(0) - 65).length,
    total: questions.length,
  }
}
