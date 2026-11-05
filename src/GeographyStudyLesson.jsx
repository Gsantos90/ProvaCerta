import React, { useState } from 'react'
import { geographyLessons } from './lib/geographyLessons'

export default function GeographyStudyLesson({ topic }) {
  const lesson = geographyLessons[topic.id]
  const { activity } = lesson
  const [value, setValue] = useState(activity.initial)
  const [result, explanation] = activity.result(value)

  return <>
    <p>{topic.intro}</p>
    {topic.concepts.map(([title, text]) => <section key={title}><h3>{title}</h3><p>{text}</p></section>)}
    <h3>Para aprofundar</h3>
    {lesson.sections.map(([title, text]) => <details className="geography-detail" key={title}>
      <summary>{title}</summary>
      <p>{text}</p>
    </details>)}
    <div className="study-example"><strong>Exemplo resolvido</strong><p>{topic.example}</p></div>
    <section className="study-example geography-activity">
      <h3>{activity.title}</h3>
      <p>{activity.prompt}</p>
      <label>
        <span>{activity.label}: {value.toLocaleString('pt-BR')}{activity.unit && ` ${activity.unit}`}</span>
        <input type="range" min={activity.min} max={activity.max} step={activity.step} value={value} onChange={event => setValue(Number(event.target.value))} />
      </label>
      <div aria-live="polite"><strong>{result}</strong><p>{explanation}</p></div>
    </section>
    <h3>Erro comum</h3><p>{topic.commonMistake}</p>
    <h3>Antes de marcar a resposta</h3><ul>{topic.checklist.map(item => <li key={item}>{item}</li>)}</ul>
  </>
}
