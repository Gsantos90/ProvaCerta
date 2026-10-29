import React, { useEffect, useState } from 'react'
import { ArrowLeft, ArrowRight } from 'lucide-react'
import { readPageState, usePageState } from './lib/pageState'
import { pismAreas, pismAnswerId, validPismDiscursiveDraft, validPismSubjectDraft } from './lib/pismDiscursive'
import { preparePismExactExam, gradePismQuestion } from './lib/pismExactReferences'
import './uerjDiscursive.css'

const fresh = () => ({ answers: {}, finished: false })

export function PismDiscursiveSession({ exam, examKey, subject, onBack }) {
  const prepared = React.useMemo(() => preparePismExactExam(exam), [exam])
  const section = prepared.sections.find(section => section.subject === subject) || prepared.sections[0]
  const questions = section.questions
  const stateKey = `pism.discursive.subject.v2.${examKey}.${section.subject}`
  const [draft, setDraft] = usePageState(stateKey, () => {
    let previous
    try { previous = readPageState(window.sessionStorage, `pism.discursive.${examKey}`, fresh(), validPismDiscursiveDraft) } catch { previous = fresh() }
    return { answers: Object.fromEntries(questions.filter(q => previous.answers[pismAnswerId(section,q.number)])
      .map(q => [q.id, { desenvolvimento: previous.answers[pismAnswerId(section,q.number)] }])), finished: false }
  }, validPismSubjectDraft)
  const [index, setIndex] = usePageState(`${stateKey}.index`, 0, value => Number.isInteger(value) && value >= 0 && value < questions.length)
  const [view, setView] = usePageState(`${stateKey}.view`, 'questions', value => ['questions','result','review'].includes(value))
  const reviewing = draft.finished && view === 'review'
  const question = questions[index]
  const answers = draft.answers[question.id] || {}
  const answered = questions.filter(q => Object.values(draft.answers[q.id] || {}).some(value => value.trim())).length
  const summary = questions.map(q => ({ question:q,...gradePismQuestion(q,draft.answers[q.id] || {}) }))
  const total = summary.reduce((n,item) => n+item.total,0)
  const recognized = summary.reduce((n,item) => n+item.recognized,0)
  const manual = summary.reduce((n,item) => n+item.manual,0)
  const result = reviewing ? gradePismQuestion(question,answers) : null
  const hasExact = question.fields.some(field => !field.manual)
  const title = `PISM ${exam.module} ${exam.year} · ${exam.day}º dia${exam.module === 'III' ? ` · ${pismAreas.find(area => area.value === exam.area)?.label}` : ''} · Exame discursivo · ${section.subject}`
  const go = position => { setIndex(position); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const update = (field, value) => setDraft(old => ({ ...old, answers: { ...old.answers, [question.id]: { ...(old.answers[question.id] || {}), [field]: value } } }))
  const review = position => { setView('review'); go(position) }
  const showResult = () => { setView('result'); window.scrollTo({ top: 0, behavior: 'instant' }) }
  const finish = () => { setDraft(old => ({ ...old, finished: true })); showResult() }
  const restart = () => { setDraft(fresh()); setView('questions'); go(0) }

  if (draft.finished && !reviewing) return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <section className="discursive-feedback discursive-result" role="status">
      <p className="discursive-kicker">{title}</p>
      <h1>{total ? `Resultado: ${recognized} de ${total} respostas exatas reconhecidas` : `Prova finalizada: ${answered} de ${questions.length} questões respondidas`}</h1>
      <p>{answered} de {questions.length} questões respondidas. {total ? `${manual ? `${manual} ${manual === 1 ? 'item tem' : 'itens têm'} revisão manual. ` : ''}A conferência dos resultados usa a referência oficial da UFJF e não atribui a nota oficial da banca.` : 'Compare suas respostas com a referência oficial da UFJF.'} Justificativas, demonstrações e desenhos precisam de revisão manual, mesmo quando o resultado é reconhecido.</p>
      <ul>{summary.map((item, position) => <li key={item.question.id}><button className="back-link" onClick={() => review(position)}>Questão {item.question.number}: {item.total ? `${item.recognized}/${item.total} respostas exatas reconhecidas${item.manual ? ` · ${item.manual} para revisão manual` : ''}` : Object.values(draft.answers[item.question.id] || {}).some(value => value.trim()) ? 'Respondida · revisão manual' : 'Em branco'}</button></li>)}</ul>
      <div className="discursive-actions"><button className="button primary" onClick={() => review(0)}>Revisar respostas</button><button className="button" onClick={restart}>Refazer prova</button><button className="button" onClick={onBack}>Voltar ao início</button></div>
    </section>
  </main>

  return <main className="discursive-page">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar às provas</button>
    <nav className="discursive-navigation" aria-label="Questões da prova">{questions.map((q, position) => <button key={q.id} type="button" className={position === index ? 'active' : ''} aria-label={`Ir para questão ${q.number}`} aria-current={position === index ? 'step' : undefined} onClick={() => go(position)}>{q.number}</button>)}</nav>
    <article className="discursive-question">
      <p className="discursive-kicker">{title} · Questão {question.number} de {questions.length}{reviewing ? ' · Revisão' : ''}</p>
      <h1>{question.title}</h1>
      {question.support && <aside className="discursive-support discursive-statement">{question.support}</aside>}
      {question.tables?.map((table,i) => <div className="discursive-table" key={i}><table><thead><tr>{table.headers.map(header => <th scope="col" key={header}>{header}</th>)}</tr></thead><tbody>{table.rows.map(row => <tr key={row[0]}>{row.map((cell,j) => j===0 ? <th scope="row" key={j}>{cell}</th> : <td key={j}>{cell}</td>)}</tr>)}</tbody></table></div>)}
      <p className="discursive-statement">{question.text}</p>
      <a className="official-source" href={question.examSource} target="_blank" rel="noopener noreferrer">Abrir prova oficial ↗</a>
      {question.images.map(image => <figure className="discursive-figure" key={image.src}><a href={image.src} target="_blank" rel="noopener noreferrer" aria-label="Ampliar figura de apoio"><img src={image.src} alt={image.alt} /></a></figure>)}
      <p className="discursive-instructions" id="pism-answer-help">{reviewing ? 'Confira os resultados reconhecidos e compare sua resolução com a referência oficial. Uma resposta não reconhecida pode estar correta em outro formato.' : hasExact ? 'Nos campos de resposta exata, informe apenas o resultado. Registre cálculos e justificativas no desenvolvimento. A conferência e a referência serão mostradas ao finalizar a prova.' : 'Responda cada item no campo correspondente. A referência de correção será mostrada ao finalizar a prova. Suas respostas ficam salvas neste navegador durante a sessão.'}</p>
      {question.fields.map(field => {
        const evaluation=result?.items.find(item => item.id===field.id)
        const status=evaluation && !evaluation.manual ? evaluation.matched ? 'correct' : 'incorrect' : ''
        const hint=field.manual ? null : field.rule.kind==='quantity' ? field.rule.unit==='ratio' ? 'Aceita fração, decimal ou porcentagem. Inclua % quando usar porcentagem.' : field.rule.unit && !['count'].includes(field.rule.unit) ? `Unidade de referência: ${field.rule.unit}. Você pode informar uma unidade equivalente.` : 'Informe o valor numérico ou uma expressão numérica equivalente.' : field.rule.kind==='pair' ? 'Informe o par ordenado no formato (x; y).' : field.rule.kind==='equation' ? 'Informe a igualdade completa.' : field.rule.kind==='math' || field.rule.kind==='set' ? 'Use pi ou π, sqrt(...) ou √, / para frações e ^ para potências. Separe respostas de um conjunto com ponto e vírgula.' : field.rule.kind==='formula' || field.rule.kind==='reaction' ? 'Preserve as maiúsculas dos elementos e as cargas dos íons. Use -> para reação e ⇌ para equilíbrio.' : 'Informe apenas o nome ou a classificação pedidos.'
        return <label className={`discursive-field ${status}`} key={`${question.id}-${field.id}`} htmlFor={`pism-answer-${field.id}`}><span>{field.label}{evaluation && <small className="discursive-field-status">{evaluation.manual ? 'Revisão manual' : evaluation.matched ? 'Resultado reconhecido' : evaluation.blank ? 'Em branco' : 'Não reconhecido'}</small>}</span>{hint && <p className="discursive-input-hint" id={`pism-hint-${field.id}`}>{hint}</p>}<textarea id={`pism-answer-${field.id}`} aria-label={field.label} rows={field.manual ? 3 : 2} maxLength={12000} readOnly={reviewing} aria-invalid={evaluation && !evaluation.manual && !evaluation.matched ? true : undefined} aria-describedby={hint ? `pism-answer-help pism-hint-${field.id}` : 'pism-answer-help'} value={answers[field.id] || ''} onChange={event => update(field.id,event.target.value)} /></label>
      })}
      {hasExact && <label className="discursive-field" htmlFor="pism-working"><span>Justificativa e desenvolvimento (revisão manual)</span><textarea id="pism-working" rows={5} maxLength={12000} readOnly={reviewing} value={answers.__working || ''} onChange={event => update('__working',event.target.value)} /></label>}
      {question.legacyFields.filter(field => answers[field.id] !== undefined).map(field => <label className="discursive-field" key={field.id} htmlFor={`pism-legacy-${field.id}`}><span>Resposta anterior · {field.label} (revisão manual)</span><textarea id={`pism-legacy-${field.id}`} rows={3} maxLength={12000} readOnly={reviewing} value={answers[field.id]} onChange={event => update(field.id,event.target.value)} /></label>)}
      {answers.desenvolvimento !== undefined && <label className="discursive-field" htmlFor="pism-development"><span>Resposta anterior e desenvolvimento</span><textarea id="pism-development" rows={4} maxLength={12000} readOnly={reviewing} value={answers.desenvolvimento} onChange={event => update('desenvolvimento',event.target.value)} /></label>}
      {reviewing && <section className="discursive-feedback" role="status"><h2>{result.total ? `${result.recognized} de ${result.total} respostas exatas reconhecidas` : `Revisão da questão ${question.number}`}</h2><p>A conferência automática verifica os resultados cadastrados na referência oficial. Confira também as justificativas, os cálculos e os desenhos; eles não recebem nota automática.</p><ul>{question.fields.map(field => {
        const evaluation=result.items.find(item => item.id===field.id)
        return <li key={field.id} className={field.manual ? undefined : `discursive-review-item ${evaluation.matched ? 'correct' : 'incorrect'}`}><strong>{field.label}: {field.manual ? 'Revisão manual' : evaluation.matched ? 'Resultado reconhecido' : evaluation.blank ? 'Em branco' : 'Não reconhecido'}</strong>{field.reference && <p>Referência: {field.reference}</p>}</li>
      })}</ul><a className="official-source" href={question.source} target="_blank" rel="noopener noreferrer">Consultar referência oficial de correção da UFJF ↗</a></section>}
      <div className="discursive-actions"><button type="button" className="button" disabled={index === 0} onClick={() => go(index-1)}><ArrowLeft size={17} /> Anterior</button>{index < questions.length-1 ? <button type="button" className="button primary" onClick={() => go(index+1)}>Próxima <ArrowRight size={17} /></button> : !reviewing && <button type="button" className="button primary" onClick={finish}>Finalizar prova</button>}{reviewing && <button type="button" className="button" onClick={showResult}>Voltar ao resultado</button>}</div>
    </article>
  </main>
}

export default function PismDiscursive({ examKey, subject, onBack }) {
  const [catalog, setCatalog] = useState(null)
  const [error, setError] = useState('')
  const [retry, setRetry] = useState(0)
  useEffect(() => {
    const controller = new AbortController()
    setError('')
    fetch('/pism-discursivas/questions.json', { signal: controller.signal }).then(response => {
      if (!response.ok) throw new Error('Não foi possível carregar as questões discursivas.')
      return response.json()
    }).then(setCatalog).catch(error => { if (error.name !== 'AbortError') setError(error.message) })
    return () => controller.abort()
  }, [retry])
  if (error || catalog && !catalog[examKey]) return <main className="discursive-page"><p role="alert">{error || 'Prova discursiva não encontrada.'}</p><button className="button" onClick={() => setRetry(value => value+1)}>Tentar novamente</button><button className="back-link" onClick={onBack}>Voltar às provas</button></main>
  if (!catalog) return <main className="discursive-page"><p role="status">Carregando questões discursivas do PISM…</p></main>
  return <PismDiscursiveSession key={`${examKey}:${subject}`} exam={catalog[examKey]} examKey={examKey} subject={subject} onBack={onBack} />
}
