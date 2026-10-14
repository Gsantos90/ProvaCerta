import React from 'react'
import { ArrowLeft, ArrowRight } from 'lucide-react'
import { readPageState, usePageState } from './lib/pageState'
import { uerjDiscursiveExams } from './lib/uerjDiscursive'
import { gradeShortAnswers } from './lib/shortAnswers'
import './uerjDiscursive.css'

const emptyDraft = () => ({ answers: {}, submitted: false })
const validDraft = value => value && typeof value === 'object' && typeof value.submitted === 'boolean'
  && value.answers && !Array.isArray(value.answers) && typeof value.answers === 'object'
  && Object.values(value.answers).every(answer => typeof answer === 'string' && answer.length <= 240)

export default function UerjDiscursive({ year = '2014', onBack }) {
  const questions = uerjDiscursiveExams[year] || uerjDiscursiveExams['2014']
  const [index, setIndex] = usePageState(`uerj.discursive.index.${year}`, 0, value => Number.isInteger(value) && value >= 0 && value < questions.length)
  const [exam, setExam] = usePageState(`uerj.discursive.exam.${year}`, () => {
    const drafts = Object.fromEntries(questions.map(question => {
      try { return [question.id, readPageState(window.sessionStorage, `uerj.discursive.draft.${question.id}`, emptyDraft(), validDraft)] }
      catch { return [question.id, emptyDraft()] }
    }))
    return { drafts, finished: false }
  }, value => value && typeof value.finished === 'boolean' && value.drafts && typeof value.drafts === 'object'
    && !Array.isArray(value.drafts) && Object.values(value.drafts).every(validDraft))
  const [view, setView] = usePageState(`uerj.discursive.view.${year}`, exam.finished ? 'result' : 'questions', value => ['questions', 'result', 'review'].includes(value))
  const reviewing = exam.finished && view === 'review'
  const question = questions[index]
  const draft = exam.drafts[question.id] || emptyDraft()
  const result = reviewing ? gradeShortAnswers(question, draft.answers) : null
  const hasExamAnswer = questions.some(item => item.fields.some(field => exam.drafts[item.id]?.answers[field.id]?.trim()))
  const summary = questions.map(item => ({ question: item, ...gradeShortAnswers(item, exam.drafts[item.id]?.answers || {}) }))
  const recognized = summary.reduce((total, item) => total + item.recognized, 0)
  const total = summary.reduce((count, item) => count + item.total, 0)
  const goToQuestion = position => { setIndex(position); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const updateAnswer = (id, value) => setExam(current => ({
    drafts: { ...current.drafts, [question.id]: { answers: { ...(current.drafts[question.id]?.answers || {}), [id]: value }, submitted: false } },
    finished: false,
  }))
  const showResult = () => { setView('result'); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const reviewQuestion = position => { setView('review'); goToQuestion(position) }
  const finishExam = () => {
    setExam(current => ({ ...current, finished: true }))
    showResult()
  }
  const restartExam = () => {
    setExam({ drafts: Object.fromEntries(questions.map(item => [item.id, emptyDraft()])), finished: false })
    setView('questions')
    goToQuestion(0)
  }

  if (exam.finished && !reviewing) return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <section className="discursive-feedback discursive-result" role="status">
      <p className="discursive-kicker">UERJ {year} · Exame discursivo · Biologia</p>
      <h1>Resultado da prova: {recognized} de {total} itens reconhecidos</h1>
      <p>Resultado do treino: {Math.round(recognized / total * 100)}%. A pontuação é baseada nos itens reconhecidos; não corresponde à nota oficial da banca.</p>
      <ul>{summary.map(item => <li key={item.question.id}><button className="back-link" onClick={() => reviewQuestion(item.question.number - 1)}>Questão {item.question.number}: {item.recognized}/{item.total} itens reconhecidos</button></li>)}</ul>
      <div className="discursive-actions"><button className="button primary" onClick={() => reviewQuestion(0)}>Revisar respostas</button><button className="button" onClick={restartExam}>Refazer prova</button><button className="button" onClick={onBack}>Voltar ao início</button></div>
    </section>
  </main>

  return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <nav className="discursive-navigation" aria-label="Questões da prova">
      {questions.map((item, position) => <button key={item.id} type="button" className={position === index ? 'active' : ''}
        aria-label={`Ir para questão ${item.number}`} aria-current={position === index ? 'step' : undefined} onClick={() => goToQuestion(position)}>{item.number}</button>)}
    </nav>
    <article className="discursive-question">
      <p className="discursive-kicker">UERJ {year} · Exame discursivo · Biologia · Questão {question.number} de {questions.length}{reviewing ? ' · Revisão' : ''}</p>
      <h1>{question.title}</h1>
      {question.support && <aside className="discursive-support">{question.support}</aside>}
      <p className="discursive-statement">{question.text}</p>
      <a className="official-source" href={question.examSource} target="_blank" rel="noopener noreferrer">Abrir prova oficial (caderno comentado) ↗</a>
      {question.image && <figure className="discursive-figure"><img src={question.image} alt={question.imageAlt} />{question.year === '2014' && question.number === 10 && <figcaption>Primeira base à esquerda, segunda base acima e terceira base à direita da tabela.</figcaption>}</figure>}
      <p className="discursive-instructions" id="short-answer-help">{reviewing ? 'Confira suas respostas e compare os itens reconhecidos com a referência. Verde indica item reconhecido; vermelho indica item não reconhecido ou em branco.' : 'Escreva uma resposta curta em cada campo. A correção será mostrada ao finalizar a prova. Suas respostas ficam salvas neste navegador durante a sessão.'}</p>
      <div>
        {question.fields.map(field => {
          const evaluation = result?.items.find(item => item.id === field.id)
          const status = evaluation ? evaluation.matched ? 'correct' : 'incorrect' : ''
          return <label className={`discursive-field ${status}`} key={`${question.id}-${field.id}`} htmlFor={`answer-${field.id}`}>
          <span>{field.label}{evaluation && <small id={`status-${field.id}`} className="discursive-field-status">{evaluation.matched ? 'Reconhecido' : evaluation.blank ? 'Em branco' : evaluation.duplicate ? 'Resposta já informada' : 'Não reconhecido'}</small>}</span>
          <input id={`answer-${field.id}`} type="text" autoComplete="off" maxLength={240} readOnly={reviewing} aria-invalid={evaluation && !evaluation.matched ? true : undefined} aria-describedby={evaluation ? `short-answer-help status-${field.id}` : 'short-answer-help'} value={draft.answers[field.id] || ''}
            onChange={event => updateAnswer(field.id, event.target.value)} />
        </label>})}
      </div>
      {result && <section className="discursive-feedback" role="status" aria-live="polite">
        <h2>{result.recognized} de {result.total} itens reconhecidos</h2>
        <p>Resultado do treino: {Math.round(result.recognized / result.total * 100)}%. Cada item vale a mesma fração neste treino; esta não é a nota oficial da banca.</p>
        <p>Uma resposta não reconhecida pode estar correta com outras palavras. Compare com a referência abaixo.</p>
        <ul>{result.items.map(item => {
          const field = question.fields.find(field => field.id === item.id)
          return <li className={`discursive-review-item ${item.matched ? 'correct' : 'incorrect'}`} key={item.id}><strong>{field.label}: {item.matched ? 'Reconhecido' : item.duplicate ? 'Resposta já informada' : item.blank ? 'Em branco' : 'Não reconhecido'}</strong><p>{field.reference}</p></li>
        })}</ul>
        <a className="official-source" href={question.source} target="_blank" rel="noopener noreferrer">Consultar caderno comentado oficial da UERJ ↗</a>
      </section>}
      <div className="discursive-actions">
        <button type="button" className="button" disabled={index === 0} onClick={() => goToQuestion(index - 1)}><ArrowLeft size={17} /> Anterior</button>
        {index < questions.length - 1
          ? <button type="button" className="button primary" onClick={() => goToQuestion(index + 1)}>Próxima <ArrowRight size={17} /></button>
          : !reviewing && <button type="button" className="button primary" disabled={!hasExamAnswer} onClick={finishExam}>Finalizar prova</button>}
        {reviewing && <button type="button" className="button" onClick={showResult}>Voltar ao resultado</button>}
      </div>
    </article>
  </main>
}
