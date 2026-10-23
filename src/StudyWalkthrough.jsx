import React, { useEffect, useId, useState } from 'react'
import questions from './lib/walkthroughQuestions.json'
import { walkthroughSolutions } from './lib/walkthroughSolutions'
import { isAnnulledAnswer, isCorrectAnswer } from './lib/examAnswers'
import { usePageState } from './lib/pageState'
import './studyWalkthrough.css'

const editions = [...new Set(questions.map(question => question.year))].sort((a,b) => b-a)
const modules = ['I', 'II', 'III']
const subjects = ['Matemática', 'Física', 'Química']

function GuidedQuestion({ question }) {
  const solution = walkthroughSolutions[question.id]
  const [chosen, setChosen] = useState(null)
  const [checked, setChecked] = useState(false)
  const id = useId()
  return <article className="walkthrough-question">
    <p className="eyebrow">Questão real · PISM {question.year} · Módulo {question.module} · {question.day}º dia</p>
    <h3>Questão {question.number} — {solution.topic}</h3>
    <div className={`walkthrough-question-layout ${question.supportImages?.length ? 'has-support' : ''}`}>
    <div className="walkthrough-question-main">
    <p className="walkthrough-statement">{question.text}</p>
    <fieldset className="walkthrough-options" disabled={checked}>
      <legend>Alternativas</legend>
      {question.options.map((option,index) => <label key={index}><input type="radio" name={`${id}-answer`} value={'ABCDE'[index]} checked={chosen === 'ABCDE'[index]} onChange={event => setChosen(event.target.value)} /><span><strong>{'ABCDE'[index]})</strong> {option}</span></label>)}
    </fieldset>
    <div className="walkthrough-actions"><button className="button secondary" disabled={!chosen || checked} onClick={() => setChecked(true)}>Conferir minha resposta</button>{checked && <button className="study-text-button" onClick={() => { setChecked(false); setChosen(null) }}>Tentar novamente</button>}</div>
    {checked && <p className="walkthrough-feedback" role="status">{isAnnulledAnswer(question.answer) ? 'Questão anulada no gabarito definitivo. Todas as alternativas recebem crédito; veja a análise abaixo.' : isCorrectAnswer(chosen, question.answer) ? 'Você acertou! Acompanhe abaixo por que essa alternativa funciona.' : 'Ainda não foi desta vez. Vamos entender o caminho com calma, um passo por vez.'}</p>}
    </div>
    {question.supportImages?.length > 0 && <aside className="walkthrough-support" aria-label="Imagens de apoio da questão"><h4>Imagem de apoio</h4>{question.supportImages.map((image,index) => <figure key={image}><a href={image} target="_blank" rel="noopener noreferrer" aria-label={`Ampliar imagem de apoio da questão ${question.number}, parte ${index+1}`}><img src={image} alt={`${solution.topic}: figura original de apoio da questão ${question.number}.`} loading="lazy" /></a><figcaption>Figura original da prova · clique para ampliar.</figcaption></figure>)}</aside>}
    </div>
    <section className="walkthrough-solution" aria-label="Resolução didática passo a passo">
      <h4>Vamos destrinchar juntos</h4>
      <p>Acompanhe a resolução completa abaixo, com o motivo de cada etapa.</p>
      <section className="walkthrough-vocabulary"><h4>Palavras que vamos usar</h4><ul>{solution.vocabulary.map(word => <li key={word}>{word}</li>)}</ul></section>
      {solution.steps.map((step,index) => <section className="walkthrough-step" key={step.title}><span className="walkthrough-step-number">Passo {index+1}</span><h4>{step.title}</h4><p>{step.text}</p>{step.calculation && <p className="walkthrough-calculation">{step.calculation}</p>}</section>)}
      <div className="walkthrough-conclusion"><h4>{isAnnulledAnswer(question.answer) ? 'Questão anulada' : question.answer.includes('/') ? `Respostas aceitas: ${question.answer.split('/').join(' ou ')}` : `Resposta: alternativa ${question.answer}`}</h4><p><strong>O que levar para a próxima questão:</strong> {solution.takeaway}</p><h4>Cuidado com estas armadilhas</h4><ul>{solution.pitfalls.map(pitfall => <li key={pitfall}>{pitfall}</li>)}</ul><p>Resolução didática autoral, conferida com o caderno e o gabarito da UFJF.</p></div>
    </section>
    <details className="walkthrough-sources"><summary>Fonte da questão e conferência do gabarito</summary><a href={question.sourceUrl} target="_blank" rel="noopener noreferrer">Caderno original da UFJF ↗</a><a href={question.answerSource} target="_blank" rel="noopener noreferrer">Gabarito oficial usado nesta resolução ↗</a>{question.id === 'pism-2026-i-matematica-12' && <p>Usamos a alteração de gabarito de 09/07/2026: alternativa A.</p>}</details>
    <p className="walkthrough-local-note">Esta atividade é de aprendizagem: suas tentativas aqui não entram na nota das provas.</p>
  </article>
}

export default function StudyWalkthrough() {
  const [subject, setSubject] = usePageState('walkthrough.subject', 'Matemática', value => subjects.includes(value))
  const [year, setYear] = usePageState('walkthrough.year', 2026, value => editions.includes(value))
  const [module, setModule] = usePageState('walkthrough.module', 'I', value => modules.includes(value))
  const [current, setCurrent] = useState(0)
  const [read, setRead] = usePageState('walkthrough.read', [], value => Array.isArray(value) && value.every(id => questions.some(question => question.id === id)))
  const selected = questions.filter(question => question.subject === subject && question.year === year && question.module === module)
  const index = Math.min(current, selected.length-1)
  const question = selected[index]
  useEffect(() => { setRead(previous => previous.includes(question.id) ? previous : [...previous,question.id]) }, [question.id, setRead])
  return <div className="study-walkthrough">
    <div className="study-hub-section"><div><h2>Destrinchando o conteúdo</h2><p>Questões reais, explicadas com calma: entenda as palavras, organize os dados e descubra o motivo de cada passo.</p></div><span>Acesso livre, sem login</span></div>
    <div className="walkthrough-filters">
      <label className="study-subject-filter">Prova<select value="pism" onChange={() => {}}><option value="pism">PISM — UFJF</option></select></label>
      <label className="study-subject-filter">Edição<select value={year} onChange={event => { setYear(Number(event.target.value)); setCurrent(0) }}>{editions.map(item => <option key={item} value={item}>{item}</option>)}</select></label>
      <label className="study-subject-filter">Ano escolar<select value={module} onChange={event => { setModule(event.target.value); setCurrent(0) }}>{modules.map((item,index) => <option key={item} value={item}>{index+1}º ano — Módulo {item}</option>)}</select></label>
      <label className="study-subject-filter">Matéria<select value={subject} onChange={event => { setSubject(event.target.value); setCurrent(0) }}>{subjects.map(item => <option key={item}>{item}</option>)}</select></label>
    </div>
    <p className="walkthrough-coverage">Coleção completa das edições disponíveis no site: 2024, 2025 e 2026, nos três anos escolares. São 135 questões objetivas de Matemática, Física e Química, com 5 por matéria em cada módulo e edição. Questões discursivas não fazem parte desta coleção.</p>
    <nav className="walkthrough-navigation" aria-label={`Questões de ${subject}, PISM ${year}, módulo ${module}`}>{selected.map((item,i) => <button key={item.id} className={index === i ? 'active' : ''} aria-current={index === i ? 'step' : undefined} onClick={() => setCurrent(i)}>Questão {item.number}{read.includes(item.id) && <span> · Vista</span>}</button>)}</nav>
    <p className="walkthrough-progress">{index+1} de {selected.length} · PISM {year} · Módulo {module} · {subject} · {selected.filter(item => read.includes(item.id)).length} resoluções consultadas nesta sessão.</p>
    <GuidedQuestion key={question.id} question={question} />
    <div className="walkthrough-pagination"><button className="button secondary" disabled={index===0} onClick={() => setCurrent(index-1)}>Questão anterior</button><button className="button primary" disabled={index===selected.length-1} onClick={() => setCurrent(index+1)}>Próxima questão</button></div>
  </div>
}
