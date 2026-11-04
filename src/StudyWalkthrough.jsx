import React, { useEffect, useId, useState } from 'react'
import { walkthroughQuestions as questions, walkthroughExams, walkthroughSelection } from './lib/walkthroughCatalog'
import { walkthroughSolutions } from './lib/walkthroughSolutions'
import { isAnnulledAnswer, isCorrectAnswer } from './lib/examAnswers'
import { usePageState } from './lib/pageState'
import './studyWalkthrough.css'

const subjects = ['Matemática', 'Física', 'Química']

function GuidedQuestion({ question }) {
  const solution = walkthroughSolutions[question.id]
  const exam = walkthroughExams.find(item => item.id === question.exam)
  const context = `${question.exam === 'pism' ? 'PISM' : exam.label} ${question.year} · ${question.exam === 'pism' ? `Módulo ${question.module}` : question.stageLabel}${question.day ? ` · ${question.day}º dia` : ''}`
  const [chosen, setChosen] = useState(null)
  const [checked, setChecked] = useState(false)
  const id = useId()
  return <article className="walkthrough-question">
    <p className="eyebrow">Questão real · {context}</p>
    <h3>Questão {question.number} — {solution.topic}</h3>
    <div className={`walkthrough-question-layout ${question.supportImages?.length ? 'has-support' : ''}`}>
    <div className="walkthrough-question-main">
    {question.support && <p className="walkthrough-statement walkthrough-context">{question.support}</p>}
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
      <div className="walkthrough-conclusion"><h4>{isAnnulledAnswer(question.answer) ? 'Questão anulada' : question.answer.includes('/') ? `Respostas aceitas: ${question.answer.split('/').join(' ou ')}` : `Resposta: alternativa ${question.answer}`}</h4><p><strong>O que levar para a próxima questão:</strong> {solution.takeaway}</p><h4>Cuidado com estas armadilhas</h4><ul>{solution.pitfalls.map(pitfall => <li key={pitfall}>{pitfall}</li>)}</ul><p>Resolução didática autoral, com referências ao caderno e ao gabarito de {exam.institution}.</p></div>
    </section>
    <details className="walkthrough-sources"><summary>Fonte da questão e conferência do gabarito</summary><a href={question.sourceUrl} target="_blank" rel="noopener noreferrer">Caderno original · {exam.institution} ↗</a><a href={question.answerSource} target="_blank" rel="noopener noreferrer">Gabarito oficial usado nesta resolução ↗</a>{question.id === 'pism-2026-i-matematica-12' && <p>Usamos a alteração de gabarito de 09/07/2026: alternativa A.</p>}</details>
    <p className="walkthrough-local-note">Esta atividade é de aprendizagem: suas tentativas aqui não entram na nota das provas.</p>
  </article>
}

export default function StudyWalkthrough() {
  const [subject, setSubject] = usePageState('walkthrough.subject', 'Matemática', value => subjects.includes(value))
  const [year, setYear] = usePageState('walkthrough.year', 2026, value => questions.some(question => question.year === value))
  const [module, setModule] = usePageState('walkthrough.module', 'I', value => questions.some(question => question.stage === value))
  const [current, setCurrent] = useState(0)
  const [read, setRead] = usePageState('walkthrough.read', [], value => Array.isArray(value) && value.every(id => questions.some(question => question.id === id)))
  const [examId, setExamId] = usePageState('walkthrough.exam', 'pism', value => walkthroughExams.some(exam => exam.id === value))
  const selection = walkthroughSelection(examId, year, module, subject)
  const exam = walkthroughExams.find(item => item.id === examId)
  const selected = selection.questions
  const index = Math.min(current, selected.length-1)
  const question = selected[index]
  const context = `${examId === 'pism' ? 'PISM' : exam.label} ${selection.year} · ${examId === 'pism' ? `Módulo ${selection.stage}` : selected[0]?.stageLabel}`
  const changeSelection = (nextExam, nextYear, nextStage, nextSubject) => {
    const next = walkthroughSelection(nextExam, nextYear, nextStage, nextSubject)
    setExamId(nextExam); setYear(next.year); setModule(next.stage); setSubject(next.subject); setCurrent(0)
  }
  useEffect(() => { if (question) setRead(previous => previous.includes(question.id) ? previous : [...previous,question.id]) }, [question?.id, setRead])
  return <div className="study-walkthrough">
    <div className="study-hub-section"><div><h2>Destrinchando o conteúdo</h2><p>Questões reais, explicadas com calma: entenda as palavras, organize os dados e descubra o motivo de cada passo.</p></div><span>Acesso livre, sem login</span></div>
    <div className="walkthrough-filters">
      <label className="study-subject-filter">Prova<select value={examId} onChange={event => changeSelection(event.target.value, selection.year, selection.stage, selection.subject)}>{walkthroughExams.map(item => <option key={item.id} value={item.id}>{item.label}</option>)}</select></label>
      <label className="study-subject-filter">Edição<select value={selection.year} onChange={event => changeSelection(examId, Number(event.target.value), selection.stage, selection.subject)}>{selection.editions.map(item => <option key={item} value={item}>{item}</option>)}</select></label>
      <label className="study-subject-filter">{examId === 'pism' ? 'Ano escolar' : 'Etapa / caderno'}<select value={selection.stage} onChange={event => changeSelection(examId, selection.year, event.target.value, selection.subject)}>{selection.stages.map(item => <option key={item.id} value={item.id}>{item.label}</option>)}</select></label>
      <label className="study-subject-filter">Matéria<select value={selection.subject} onChange={event => changeSelection(examId, selection.year, selection.stage, event.target.value)}>{selection.subjects.map(item => <option key={item}>{item}</option>)}</select></label>
    </div>
    <p className="walkthrough-coverage">{questions.length} questões com resolução completa em {walkthroughExams.length} provas. {examId === 'pism' ? 'PISM: 135 questões das edições 2024, 2025 e 2026, nos três módulos, com 5 por matéria em cada módulo e edição.' : `${exam.label}: seleção comentada de questões objetivas; não abrange o caderno completo.`} Os filtros mostram somente conteúdos já disponíveis. Questões discursivas não fazem parte desta coleção.</p>
    <nav className="walkthrough-navigation" aria-label={`Questões de ${selection.subject}, ${context}`}>{selected.map((item,i) => <button key={item.id} className={index === i ? 'active' : ''} aria-current={index === i ? 'step' : undefined} onClick={() => setCurrent(i)}>Questão {item.number}{item.day && examId === 'espcex' ? ` · ${item.day}º dia` : ''}{read.includes(item.id) && <span> · Vista</span>}</button>)}</nav>
    <p className="walkthrough-progress">{index+1} de {selected.length} · {context} · {selection.subject} · {selected.filter(item => read.includes(item.id)).length} resoluções consultadas nesta sessão.</p>
    {question && <GuidedQuestion key={question.id} question={question} />}
    <div className="walkthrough-pagination"><button className="button secondary" disabled={index===0} onClick={() => setCurrent(index-1)}>Questão anterior</button><button className="button primary" disabled={index===selected.length-1} onClick={() => setCurrent(index+1)}>Próxima questão</button></div>
  </div>
}
