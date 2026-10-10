import React, { useEffect, useId, useRef, useState } from 'react'
import { ArrowLeft, ArrowRight, BookOpen, Calculator, ListChecks, Percent, RotateCcw, TextSearch, BookmarkCheck } from 'lucide-react'
import { useAuth } from './Auth'
import { supabase } from './lib/supabase'
import { studyTopics, reviewGroups } from './lib/studyTopics'
import { studySummaries, summarySubjects } from './lib/studySummaries'
import { essayGuidanceSource } from './lib/essaySummaries'
import { loadTopicQuestions, loadStudyReview, loadAuthorQuestions } from './lib/studyData'
import { rememberAuthorRound } from './lib/authorPractice'
import './studyHub.css'
import StudyLessonContent from './StudyLessonContent'
import MathStudyLesson from './MathStudyLesson'

const tabs = [['questions', 'Questões por assunto', ListChecks], ['summaries', 'Resumos', BookOpen], ['review', 'Minha revisão', RotateCcw]]
const topicIcons = { percent: Percent, calculator: Calculator, 'text-search': TextSearch }
const practiceSubjects = [...new Set(studyTopics.map(topic => topic.subject))]

export default function StudyHub({ onBack, onStart, tab = 'questions', onTabChange, onHistory, onCatalog, onEssay }) {
  const { user, loading: authLoading, openAuth } = useAuth()
  const [topicId, setTopicId] = useState(studyTopics[0].id)
  const [practice, setPractice] = useState({ loading: null, error: '' })
  const [review, setReview] = useState({ owner: null, rows: [], loading: false, error: '' })
  const [retry, setRetry] = useState(0)
  const [practiceTopicId, setPracticeTopicId] = useState(studyTopics[0].id)
  const request = useRef(0)
  const owner = useRef(user?.id)
  owner.current = user?.id
  const id = useId()
  const topic = studySummaries.find(item => item.id === topicId) || studyTopics[0]
  const summariesForSubject = studySummaries.filter(item => item.subject === topic.subject)
  const practiceTopic = studyTopics.find(item => item.id === practiceTopicId) || studyTopics[0]
  const practiceOptions = studyTopics.filter(item => item.subject === practiceTopic.subject)
  const PracticeIcon = topicIcons[practiceTopic.icon] || BookOpen
  const selectPractice = selected => { request.current++; setPracticeTopicId(selected.id); setPractice({ loading: null, error: '' }) }
  useEffect(() => () => { request.current++ }, [])
  useEffect(() => {
    let alive = true
    if (tab !== 'review' || !user) return
    setReview({ owner: user.id, rows: [], loading: true, error: '' })
    loadStudyReview(supabase, user.id).then(rows => {
      if (alive) setReview({ owner: user.id, rows, loading: false, error: '' })
    }).catch(() => { if (alive) setReview({ owner: user.id, rows: [], loading: false, error: 'Não foi possível consultar suas revisões.' }) })
    return () => { alive = false }
  }, [tab, user?.id, retry])
  const ownReview = user && review.owner === user.id
  const groups = reviewGroups(ownReview ? review.rows : [])
  const openSummary = selected => { setTopicId(selected.id); onTabChange('summaries'); setPractice({ loading: null, error: '' }); request.current++ }
  const start = async (selected, savedQuestions, authored = false) => {
    const token = ++request.current
    const userId = user?.id
    setPractice({ loading: selected.key || selected.id, error: '' })
    try {
      const questions = savedQuestions || await (authored ? loadAuthorQuestions(supabase, selected) : loadTopicQuestions(supabase, selected))
      if (request.current !== token || owner.current !== userId) return
      if (!questions.length) throw new Error('Não há questões disponíveis para este assunto.')
      if (authored) rememberAuthorRound(selected.id, questions)
      onStart(questions, `${savedQuestions ? 'Revisão' : 'Estudo'} · ${selected.title || selected.label}`)
    } catch (error) {
      if (request.current === token && owner.current === userId) setPractice({ loading: null, error: error.message || 'Não foi possível abrir as questões.' })
    } finally {
      if (request.current === token) setPractice(old => ({ ...old, loading: null }))
    }
  }
  const changeTab = value => { request.current++; setPractice({ loading: null, error: '' }); onTabChange(value) }
  const handleTabKey = (event, index) => {
    const next = event.key === 'ArrowRight' ? (index + 1) % tabs.length : event.key === 'ArrowLeft' ? (index + tabs.length - 1) % tabs.length : event.key === 'Home' ? 0 : event.key === 'End' ? tabs.length - 1 : null
    if (next === null) return
    event.preventDefault(); changeTab(tabs[next][0]); document.getElementById(`${id}-tab-${tabs[next][0]}`)?.focus()
  }
  return <main className="study-hub">
    <button className="back-link" onClick={onBack}><ArrowLeft size={17} /> Voltar ao início</button>
    <div className="study-hub-intro"><p className="eyebrow">Aprenda · pratique · revise</p><h1>Um assunto de cada vez.</h1><p>Entenda o conteúdo, resolva questões e volte ao que precisa melhorar.</p></div>
    <div className="study-hub-tabs" role="tablist" aria-label="Opções de estudo">{tabs.map(([value, label, Icon], index) => <button key={value} id={`${id}-tab-${value}`} role="tab" aria-selected={tab === value} aria-controls={`${id}-${value}`} tabIndex={tab === value ? 0 : -1} onKeyDown={event => handleTabKey(event, index)} onClick={() => changeTab(value)}><Icon size={18} />{label}</button>)}</div>
    {practice.error && <p className="study-hub-error" role="alert">{practice.error}</p>}
    <section id={`${id}-questions`} role="tabpanel" aria-labelledby={`${id}-tab-questions`} hidden={tab !== 'questions'}>
      <div className="study-hub-section"><div><h2>O que você quer praticar?</h2><p>{studyTopics.length} assuntos · {studyTopics.reduce((total, item) => total + item.authoredCount, 0)} questões autorais com gabarito comentado.</p></div><span>Acesso livre, sem login</span></div>
      <div className="study-practice-filters">
        <label className="study-subject-filter">Matéria para praticar<select value={practiceTopic.subject} onChange={event => selectPractice(studyTopics.find(item => item.subject === event.target.value))}>{practiceSubjects.map(subject => <option key={subject} value={subject}>{subject}</option>)}</select></label>
        <label className="study-subject-filter">Assunto para praticar<select value={practiceTopic.id} onChange={event => selectPractice(studyTopics.find(item => item.id === event.target.value))}>{practiceOptions.map(item => <option key={item.id} value={item.id}>{item.title}</option>)}</select></label>
      </div>
      <article className="study-topic study-selected-topic">
        <div className={`study-topic-cover ${practiceTopic.color}`}><span>{practiceTopic.subject}</span><h3>{practiceTopic.title}</h3><PracticeIcon aria-hidden="true" /></div>
        <div className="study-topic-body"><p>{practiceTopic.description}</p><button className="button primary full" disabled={Boolean(practice.loading)} onClick={() => start(practiceTopic, undefined, true)}>{practice.loading === practiceTopic.id ? 'Carregando questões…' : 'Praticar assunto'}<ArrowRight size={17} /></button><button className="study-text-button" onClick={() => openSummary(practiceTopic)}>Ler resumo primeiro</button></div>
      </article>
    </section>
    <section id={`${id}-summaries`} role="tabpanel" aria-labelledby={`${id}-tab-summaries`} hidden={tab !== 'summaries'}>
      <div className="study-hub-section"><div><h2>Aprenda antes de praticar</h2><p>{studySummaries.length} resumos para ENEM e vestibulares, com exemplos e erros comuns.</p></div><span>Acesso livre, sem login</span></div>
      <div className="study-summary-layout"><div className="study-summary-navigation"><label className="study-subject-filter">Matéria<select value={topic.subject} onChange={event => openSummary(studySummaries.find(item => item.subject === event.target.value))}>{summarySubjects.map(subject => <option value={subject} key={subject}>{subject}</option>)}</select></label><div className="study-summary-list" role="group" aria-label={`Resumos de ${topic.subject}`}>{summariesForSubject.map(item => <button key={item.id} aria-pressed={topic.id === item.id} onClick={() => openSummary(item)}>{item.title}</button>)}</div></div>
        <article className={`study-lesson${topic.subject === 'História' ? ' study-lesson-history' : ''}`}><p className="eyebrow">{topic.subject}</p><h2>{topic.title}</h2>
          {topic.mathLesson ? <MathStudyLesson key={topic.id} lesson={topic.mathLesson} topicId={topic.id} /> : topic.lesson ? <StudyLessonContent lesson={topic.lesson} active={tab === 'summaries'} /> : <><p>{topic.intro}</p>{topic.concepts.map(([title, text]) => <div key={title}><h3>{title}</h3><p>{text}</p></div>)}<div className="study-example"><strong>{topic.subject === 'Redação' ? 'Exemplo de aplicação' : 'Exemplo resolvido'}</strong><p>{topic.example}</p></div><h3>Erro comum</h3><p>{topic.commonMistake}</p><h3>{topic.subject === 'Redação' ? 'Antes de entregar sua redação' : 'Antes de marcar a resposta'}</h3><ul>{topic.checklist.map(item => <li key={item}>{item}</li>)}</ul></>}
          {topic.subject === 'Redação' ? <><button className="button primary" onClick={onEssay}>Praticar redação<ArrowRight size={17} /></button><p className="study-essay-source">Orientações para o ENEM: <a href={essayGuidanceSource} target="_blank" rel="noopener noreferrer">Cartilha de redação do Inep ↗</a></p></> : topic.questions?.length ? <button className="button primary" disabled={Boolean(practice.loading)} onClick={() => start(topic)}>{practice.loading ? 'Carregando questões…' : topic.lesson ? 'Praticar questões de provas reais' : 'Praticar este assunto'}<ArrowRight size={17} /></button> : <button className="button primary" onClick={onCatalog}>Explorar provas de ENEM e vestibulares<ArrowRight size={17} /></button>}
        </article>
      </div>
    </section>
    <section id={`${id}-review`} role="tabpanel" aria-labelledby={`${id}-tab-review`} hidden={tab !== 'review'}>
      <div className="study-hub-section"><div><h2>Seu próximo passo</h2><p>Assuntos para revisar a partir dos erros nas suas últimas 100 tentativas salvas.</p></div>{user && <button className="study-text-button" onClick={() => onHistory('mistakes')}>Ver meu caderno de erros</button>}</div>
      {!user ? <div className="study-review-empty"><BookmarkCheck size={30} /><h3>Uma revisão feita para você</h3><p>Entre para guardar suas tentativas e descobrir quais assuntos merecem mais atenção.</p><button className="button primary" disabled={authLoading} onClick={() => openAuth()}>{authLoading ? 'Verificando sua conta…' : 'Entrar ou criar conta'}</button><button className="study-text-button" onClick={() => changeTab('questions')}>Continuar estudando sem login</button></div> : <>
        {(!ownReview || review.loading) && <p role="status">Consultando seu histórico…</p>}
        {ownReview && review.error && <p className="study-hub-error" role="alert">{review.error} <button className="study-text-button" onClick={() => setRetry(value => value + 1)}>Tentar novamente</button></p>}
        {ownReview && !review.loading && !review.error && !groups.length && <div className="study-review-empty"><BookmarkCheck size={30} /><h3>Nenhum erro registrado para revisar</h3><p>Conclua provas ou pratique um assunto com sua conta para acompanhar seus erros aqui.</p><button className="button primary" onClick={() => changeTab('questions')}>Escolher um assunto</button></div>}
        {groups.map(group => <article className="study-review-item" key={group.key}><div className="study-review-icon"><RotateCcw size={22} /></div><div className="study-review-detail"><p className="eyebrow">{group.topic?.subject || 'Revisão por matéria'}</p><h3>{group.label}</h3><p>{group.count} {group.count === 1 ? 'erro registrado' : 'erros registrados'} · {group.questions.length} {group.questions.length === 1 ? 'questão diferente' : 'questões diferentes'}.</p><p className="study-review-hint">{group.topic ? 'Revise o resumo e pratique as questões em que você errou.' : 'Pratique novamente as questões erradas desta matéria.'}</p></div><div className="study-review-actions"><button className="button primary" disabled={Boolean(practice.loading)} onClick={() => start(group, group.questions)}>{practice.loading === group.key ? 'Abrindo revisão…' : 'Praticar novamente'}</button>{group.topic && <button className="study-text-button" onClick={() => openSummary(group.topic)}>Rever resumo</button>}</div></article>)}
      </>}
    </section>
  </main>
}
