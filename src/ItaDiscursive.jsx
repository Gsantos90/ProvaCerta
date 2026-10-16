import React, { useEffect, useState } from 'react'
import { ArrowLeft, ArrowRight } from 'lucide-react'
import { usePageState } from './lib/pageState'
import { gradeItaQuestion } from './lib/itaDiscursiveGrading'
import './uerjDiscursive.css'
import './itaDiscursive.css'

const fresh = () => ({ answers: {}, working: {}, finished: false })
const questionName = question => question.kind === 'essay' ? 'Redação' : `${question.subject} · Questão ${question.originalNumber}`
export function validItaDraft(value) {
  const strings = object => object && typeof object === 'object' && !Array.isArray(object)
    && Object.values(object).every(text => typeof text === 'string' && text.length <= 30000)
  return value && typeof value.finished === 'boolean' && strings(value.working)
    && value.answers && typeof value.answers === 'object' && !Array.isArray(value.answers)
    && Object.values(value.answers).every(strings)
}
function emphasized(text, term) {
  if (!term || !text.includes(term)) return text
  const index = text.indexOf(term)
  return <>{text.slice(0, index)}<strong><u>{term}</u></strong>{text.slice(index + term.length)}</>
}

function ItaDiscursiveSession({ questions, onBack }) {
  const [exam, setExam] = usePageState('ita.discursive.2026.exam', fresh, validItaDraft)
  const [index, setIndex] = usePageState('ita.discursive.2026.index', 0, value => Number.isInteger(value) && value >= 0 && value < questions.length)
  const [view, setView] = usePageState('ita.discursive.2026.view', 'questions', value => ['questions', 'result', 'review'].includes(value))
  const reviewing = exam.finished && view === 'review'
  const question = questions[index]
  const answers = exam.answers[question.id] || {}
  const result = reviewing ? gradeItaQuestion(question, answers) : null
  const summary = exam.finished ? questions.map(q => ({ question: q, ...gradeItaQuestion(q, exam.answers[q.id] || {}) })) : []
  const recognized = summary.reduce((n, q) => n + q.recognized, 0)
  const total = summary.reduce((n, q) => n + q.total, 0)
  const manual = summary.reduce((n, q) => n + q.manual, 0)
  const hasAnswer = Object.values(exam.answers).some(fields => Object.values(fields).some(value => value.trim()))
    || Object.values(exam.working).some(value => value.trim())
  const go = position => { setIndex(position); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const update = (field, value) => setExam(old => ({ ...old, answers: { ...old.answers, [question.id]: { ...old.answers[question.id], [field]: value } }, finished: false }))
  const review = position => { setView('review'); go(position) }
  const finish = () => { setExam(old => ({ ...old, finished: true })); setView('result'); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const restart = () => { setExam(fresh()); setView('questions'); go(0) }

  if (exam.finished && !reviewing) return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <section className="discursive-feedback discursive-result" role="status">
      <p className="discursive-kicker">ITA 2026 · 2ª fase · Prova completa</p>
      <h1>{recognized} de {total} itens reconhecidos</h1>
      <p>Resultado do treino: {total ? Math.round(recognized / total * 100) : 0}%. Os itens automáticos têm pesos iguais. {manual} itens, incluindo a redação, precisam de revisão manual e ficam fora desse percentual. Este resultado não corresponde à nota oficial do ITA.</p>
      <ul>{summary.map((item, position) => <li key={item.question.id}><button className="back-link" onClick={() => review(position)}>{questionName(item.question)}: {item.total ? `${item.recognized}/${item.total} itens reconhecidos` : 'revisão manual'}{item.total > 0 && item.manual > 0 ? ` · ${item.manual} para revisão manual` : ''}</button></li>)}</ul>
      <div className="discursive-actions"><button className="button primary" onClick={() => review(0)}>Revisar respostas</button><button className="button" onClick={restart}>Refazer prova</button><button className="button" onClick={onBack}>Voltar ao início</button></div>
    </section>
  </main>

  return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <nav className="ita-subject-navigation" aria-label="Matérias da segunda fase">{['Matemática', 'Química', 'Física', 'Português', 'Redação'].map(subject => <button type="button" key={subject} aria-pressed={question.subject === subject} onClick={() => go(questions.findIndex(q => q.subject === subject))}>{subject}</button>)}</nav>
    <nav className="discursive-navigation" aria-label="Questões da prova">{questions.map((q, i) => <button type="button" key={q.id} className={i === index ? 'active' : ''} aria-label={`Ir para questão ${q.number}: ${questionName(q)}`} aria-current={i === index ? 'step' : undefined} onClick={() => go(i)}>{q.number}</button>)}</nav>
    <article className="discursive-question">
      <p className="discursive-kicker">ITA 2026 · 2ª fase · {questionName(question)} · {index + 1} de {questions.length}{reviewing ? ' · Revisão' : ''}</p>
      <h1>{question.title}</h1>
      {question.support && <details className="ita-discursive-support"><summary>Texto e dados de apoio</summary><aside className="discursive-support">{question.support}</aside></details>}
      <p className="discursive-statement">{question.text}</p>
      {question.image && <figure className="discursive-figure"><a href={question.image} target="_blank" rel="noopener noreferrer" aria-label="Ampliar figura de apoio"><img src={question.image} alt={question.imageAlt} /></a><figcaption>{question.imageAlt}</figcaption></figure>}
      <a className="official-source" href={question.examSource} target="_blank" rel="noopener noreferrer">Abrir prova oficial ↗</a>
      <p className="discursive-instructions" id="ita-answer-help">{reviewing ? 'Confira os itens reconhecidos e compare sua resolução com as referências. Uma resposta não reconhecida pode estar correta de outra forma.' : question.kind === 'essay' ? 'Escreva sua redação. A revisão por critérios ficará disponível ao finalizar a prova.' : question.kind === 'objective' ? 'Marque uma alternativa. O gabarito será mostrado ao finalizar a prova.' : 'Responda cada pedido e registre seus cálculos, se desejar. Use as unidades indicadas nos campos. A correção será mostrada ao finalizar a prova. Suas respostas ficam salvas nesta aba.'}</p>
      {question.kind === 'objective' ? <fieldset className="ita-objective-options"><legend>Alternativas</legend>{question.options.map((option, i) => {
        const letter = 'ABCDE'[i]
        const status = reviewing ? letter === question.answer ? 'correct' : answers.choice === letter ? 'incorrect' : '' : ''
        return <label key={letter} className={`ita-objective-option ${status}`}><input type="radio" name={`answer-${question.id}`} value={letter} checked={answers.choice === letter} disabled={reviewing} onChange={() => update('choice', letter)} /><span><b>{letter}) </b>{emphasized(option, question.highlights?.[i])}{question.optionImages?.[i] && <img src={question.optionImages[i]} alt={option} loading="lazy" />}{reviewing && letter === question.answer && <small>Gabarito oficial</small>}{reviewing && answers.choice === letter && <small>Sua resposta</small>}</span></label>
      })}</fieldset> : question.kind === 'essay' ? <div className="ita-essay-editor">
        <label className="discursive-field"><span>Título da redação</span><input maxLength={200} readOnly={reviewing} value={answers.title || ''} onChange={event => update('title', event.target.value)} /></label>
        <label className="discursive-field"><span>Texto da redação</span><textarea rows={20} maxLength={30000} readOnly={reviewing} value={answers.essay || ''} onChange={event => update('essay', event.target.value)} /></label>
        <p>{(answers.essay || '').trim().split(/\s+/).filter(Boolean).length} palavras · {answers.essay ? answers.essay.split('\n').length : 0} linhas digitadas. A quebra de linha no editor não equivale à linha da folha oficial.</p>
      </div> : <div>{question.fields.map(field => {
        const evaluation = result?.items.find(item => item.id === field.id)
        const status = evaluation ? evaluation.manual ? 'manual' : evaluation.matched ? 'correct' : 'incorrect' : ''
        return <label className={`discursive-field ${status}`} key={`${question.id}-${field.id}`} htmlFor={`ita-answer-${field.id}`}><span>{field.label}{evaluation && <small className="discursive-field-status">{evaluation.manual ? 'Revisão manual' : evaluation.matched ? 'Reconhecido' : evaluation.blank ? 'Em branco' : 'Não reconhecido'}</small>}</span><textarea id={`ita-answer-${field.id}`} rows={field.manual ? 4 : 2} maxLength={4000} readOnly={reviewing} aria-describedby="ita-answer-help" aria-invalid={evaluation && !evaluation.manual && !evaluation.matched ? true : undefined} value={answers[field.id] || ''} onChange={event => update(field.id, event.target.value)} /></label>
      })}
        <label className="discursive-field"><span>Desenvolvimento e cálculos (opcional, para sua revisão)</span><textarea rows={5} maxLength={12000} readOnly={reviewing} value={exam.working[question.id] || ''} onChange={event => setExam(old => ({ ...old, working: { ...old.working, [question.id]: event.target.value } }))} /></label>
      </div>}
      {result && <section className="discursive-feedback" role="status">
        {question.kind === 'essay' ? <><h2>Revisão da redação</h2><p>A redação não recebe nota automática por palavras-chave. Confira seu texto pelos critérios a seguir.</p><ul>{question.rubric.map(item => <li key={item}>{item}</li>)}</ul></> : question.kind === 'objective' ? <><h2>{result.recognized ? 'Alternativa correta' : result.items[0].blank ? 'Questão em branco' : 'Alternativa incorreta'}</h2><p>Gabarito oficial: {question.answer}.</p><a className="official-source" href={question.source} target="_blank" rel="noopener noreferrer">Consultar gabarito oficial ↗</a></> : <>
          <h2>{result.total ? `${result.recognized} de ${result.total} itens reconhecidos` : 'Revisão manual'}{result.total > 0 && result.manual ? ` · ${result.manual} para revisão manual` : ''}</h2>
          <p>{question.referenceKind} O reconhecimento de resultados e conceitos não verifica toda a demonstração ou atribui a nota oficial. Compare também seus cálculos.</p>
          {question.reviewNote && <p>{question.reviewNote}</p>}
          <ul>{question.fields.map(field => { const item = result.items.find(i => i.id === field.id); return <li key={field.id} className={`discursive-review-item ${item.manual ? 'manual' : item.matched ? 'correct' : 'incorrect'}`}><strong>{field.label}: {item.manual ? 'Revisão manual' : item.matched ? 'Reconhecido' : item.blank ? 'Em branco' : 'Não reconhecido'}</strong><p>{field.reference}</p></li> })}</ul>
          <a className="official-source" href={question.source} target="_blank" rel="noopener noreferrer">Consultar resolução de referência (Etapa) ↗</a>
        </>}
      </section>}
      <div className="discursive-actions"><button className="button" disabled={index === 0} onClick={() => go(index - 1)}><ArrowLeft size={17} /> Anterior</button>{index < questions.length - 1 ? <button className="button primary" onClick={() => go(index + 1)}>Próxima <ArrowRight size={17} /></button> : !reviewing && <button className="button primary" disabled={!hasAnswer} onClick={finish}>Finalizar prova</button>}{reviewing && <button className="button" onClick={() => setView('result')}>Voltar ao resultado</button>}</div>
    </article>
  </main>
}

export default function ItaDiscursive({ onBack }) {
  const [data, setData] = useState(null)
  const [error, setError] = useState('')
  const [retry, setRetry] = useState(0)
  useEffect(() => {
    let alive = true
    setError('')
    fetch('/provas/ita/2026/segunda-fase/catalogo.json').then(response => {
      if (!response.ok) throw new Error('Não foi possível carregar a segunda fase do ITA.')
      return response.json()
    }).then(exam => {
      if (exam.slug !== 'ita-2026-fase-2' || exam.questions?.length !== 46) throw new Error('O caderno da segunda fase está incompleto.')
      if (alive) setData(exam)
    }).catch(reason => { if (alive) setError(reason.message) })
    return () => { alive = false }
  }, [retry])
  if (error) return <main className="discursive-page"><p role="alert">{error}</p><button className="button primary" onClick={() => setRetry(v => v + 1)}>Tentar novamente</button><button className="button" onClick={onBack}>Voltar às provas</button></main>
  return data ? <ItaDiscursiveSession questions={data.questions} onBack={onBack} /> : <main className="discursive-page"><p role="status">Carregando a segunda fase do ITA…</p></main>
}
