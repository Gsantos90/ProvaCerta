import React, { useId, useState } from 'react'
import { gradePilotQuiz } from './lib/pilotQuiz'
import StudyPodcast from './StudyPodcast'

function Quiz({ questions, title }) {
  const [answers, setAnswers] = useState({})
  const [submitted, setSubmitted] = useState(false)
  const id = useId()
  const result = gradePilotQuiz(questions, answers)
  return <form className="pilot-quiz" onSubmit={event => { event.preventDefault(); if (result.complete) setSubmitted(true) }}>
    <h3>Pratique com questões autorais</h3>
    <p>Exercícios autorais, com correção comentada. As respostas não são salvas no histórico e reiniciam ao trocar de resumo.</p>
    {questions.map((question, index) => <fieldset key={question.id} disabled={submitted}>
      <legend>{index + 1}. {question.text}</legend>
      {question.options.map((option, optionIndex) => <label key={optionIndex} className="pilot-option">
        <input type="radio" name={`${id}-${question.id}`} value={optionIndex} checked={answers[question.id] === optionIndex} onChange={() => setAnswers(previous => ({ ...previous, [question.id]: optionIndex }))} required />
        <span>{String.fromCharCode(65 + optionIndex)}) {option}</span>
      </label>)}
      {submitted && <div className="study-example"><strong>{answers[question.id] === question.answer.charCodeAt(0) - 65 ? 'Resposta correta' : 'Reveja sua resposta'} · Gabarito {question.answer}</strong><p>{question.explanation}</p></div>}
    </fieldset>)}
    {submitted ? <><p role="status">Resultado de {title}: {result.correct} de {result.total} {result.total === 1 ? 'acerto' : 'acertos'}.</p><button type="button" className="button primary" onClick={() => { setAnswers({}); setSubmitted(false) }}>Tentar novamente</button></> : <><p role="status">{result.answered} de {result.total} questões respondidas.</p><button type="submit" className="button primary" disabled={!result.complete}>Conferir respostas</button></>}
  </form>
}

export default function StudyLessonContent({ lesson, active = true }) {
  const pointsIndex = lesson.content.indexOf('Pontos que o aluno precisa dominar')
  const appearanceIndex = lesson.content.indexOf('Como esse tema costuma aparecer em prova')
  const content = pointsIndex < 0 ? lesson.content : lesson.content.slice(0, pointsIndex)
  return <>
    {lesson.podcast && <StudyPodcast key={lesson.podcast.id} podcast={lesson.podcast} active={active} />}
    <div className="study-expanded-lesson">
      {content.flatMap(paragraph => paragraph.split(/(?<=\.)(?=[A-ZÁÉÍÓÚ])(?![A-ZÁÉÍÓÚ]\.)/)).map((paragraph, index) => /^\d\. |^Exemplo \d/.test(paragraph) ? <h3 key={index}>{paragraph}</h3> : <p key={index}>{paragraph}</p>)}
      {lesson.details.length > 0 && <section aria-label="Pontos que o aluno precisa dominar"><h3>Pontos que o aluno precisa dominar</h3>{lesson.details.map(([title, ...paragraphs]) => <section key={title}><h4>{title}</h4>{paragraphs.map((paragraph, index) => <p key={index}>{paragraph}</p>)}</section>)}</section>}
      {appearanceIndex >= 0 && <><h3>Como esse tema costuma aparecer em prova</h3>{lesson.content.slice(appearanceIndex + 1).map((paragraph, index) => <p key={index}>{paragraph}</p>)}</>}
    </div>
    {lesson.subject !== 'História' && lesson.questions?.length > 0 && <Quiz key={lesson.id} questions={lesson.questions} title={lesson.title} />}
  </>
}
