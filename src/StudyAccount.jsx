import React, { useEffect, useMemo, useState } from 'react'
import { useAuth } from './Auth'
import { supabase } from './lib/supabase'
import { attemptPayload, saveAttempt } from './lib/studyHistory'

export function SaveResult({ session, questions, answers, title, binary }) {
  const { user, loading, openAuth } = useAuth()
  const [status, setStatus] = useState('')
  const [retry, setRetry] = useState(0)
  const payload = useMemo(() => attemptPayload({ session, questions, answers, title, binary, userId: user?.id }), [session, questions, answers, title, binary, user?.id])
  useEffect(() => {
    let alive = true
    setStatus('')
    if (!user || !payload || !supabase) return
    setStatus('saving')
    saveAttempt(supabase, payload).then(() => {
      if (!alive) return
      setStatus('saved')
      try {
        const pending = JSON.parse(localStorage.getItem('provacerta-pending-result') || 'null')
        if (pending?.id === payload.id) localStorage.removeItem('provacerta-pending-result')
      } catch {}
    }).catch(() => { if (alive) setStatus('error') })
    return () => { alive = false }
  }, [payload, user?.id, retry])
  if (loading) return <p className="save-result" role="status">Verificando sua conta…</p>
  if (!user) return <div className="save-result">Quer guardar este resultado? <button onClick={() => {
    // Preserve the guest attempt even if email confirmation opens a new tab.
    if (payload && !session.ownerId) {
      try { localStorage.setItem('provacerta-pending-result', JSON.stringify({ ...payload, user_id: null })) } catch {}
    }
    openAuth()
  }}>Entre ou crie uma conta.</button></div>
  if (!payload) return <p className="save-result">Este resultado pertence à conta usada no início da prova.</p>
  return <div className="save-result" role="status">{status === 'saved' ? 'Resultado salvo no seu histórico.' : status === 'error' ? <>Não foi possível salvar. <button onClick={() => setRetry(v => v + 1)}>Tentar novamente</button></> : 'Salvando resultado…'}</div>
}

function SupportImages({ value }) {
  let images = value
  if (typeof images === 'string') {
    try { images = JSON.parse(images) } catch { images = images.split(',').map(url => url.trim()) }
  }
  if (!Array.isArray(images)) images = images ? [images] : []
  return images.filter(url => typeof url === 'string' && (/^https?:\/\//.test(url) || url.startsWith('/'))).map((url, i) => <img key={i} src={url} alt={`Imagem de apoio ${i + 1}`} loading="lazy" />)
}

export default function StudyAccount({ initialTab = 'history', onBack }) {
  const { user, loading: authLoading, openAuth } = useAuth()
  const [tab, setTab] = useState(initialTab)
  const [result, setResult] = useState({ owner: null, rows: [], loading: false, error: '' })
  const [page, setPage] = useState(0)
  const [retry, setRetry] = useState(0)
  useEffect(() => setTab(initialTab), [initialTab])
  useEffect(() => { setPage(0) }, [user?.id])
  useEffect(() => {
    let alive = true
    if (!user || !supabase) return
    setResult({ owner: user.id, rows: [], loading: true, error: '' })
    supabase.from('exam_attempts').select('*').eq('user_id', user.id).order('completed_at', { ascending: false }).range(page * 20, page * 20 + 19).then(({ data, error }) => {
      if (alive) setResult({ owner: user.id, rows: data || [], loading: false, error: error ? 'Não foi possível carregar seu histórico.' : '' })
    }).catch(() => { if (alive) setResult({ owner: user.id, rows: [], loading: false, error: 'Não foi possível carregar seu histórico.' }) })
    return () => { alive = false }
  }, [user?.id, page, retry])
  const rows = result.owner === user?.id ? result.rows : []
  const mistakes = rows.flatMap(attempt => attempt.mistakes.filter(q => q && typeof q.text === 'string' && typeof q.answer === 'string' && Array.isArray(q.options) && q.options.every(option => typeof option === 'string')).map(q => ({ ...q, attemptId: attempt.id, title: attempt.exam_title, date: attempt.completed_at })))
  return <main className="study-account">
    <button className="account-back" onClick={onBack}>← Voltar às provas</button>
    <h1>Seu espaço de estudo</h1><p>Consulte suas tentativas e revise o que precisa de atenção.</p>
    {!user ? <div className="account-panel"><p>{authLoading ? 'Verificando sua conta…' : 'Entre para consultar seu progresso. Você pode continuar fazendo provas sem conta.'}</p><button className="button primary" disabled={authLoading} onClick={() => openAuth()}>Entrar ou criar conta</button></div> : <>
      <div className="account-tabs" role="group" aria-label="Área da conta">{[['history', 'Histórico'], ['mistakes', 'Caderno de erros'], ['account', 'Minha conta']].map(([value, label]) => <button key={value} aria-pressed={tab === value} onClick={() => setTab(value)}>{label}</button>)}</div>
      {tab === 'account' ? <section className="account-panel"><h2>Minha conta</h2><p>{user.email}</p><p>Seu histórico fica associado a esta conta e pode ser consultado em outros dispositivos.</p><button className="button secondary" onClick={() => openAuth('forgot')}>Receber link para alterar senha</button></section> : <>
        {result.loading && <p role="status">Carregando seu progresso…</p>}
        {result.error && <p role="alert">{result.error} <button className="account-back" onClick={() => setRetry(v => v + 1)}>Tentar novamente</button></p>}
        {!result.loading && !result.error && !rows.length && <section className="account-panel"><p>Nenhuma tentativa nesta página. Ao concluir uma prova com sua conta, o resultado será salvo aqui.</p></section>}
        {tab === 'history' && rows.map(attempt => <article className="account-panel" key={attempt.id}>
          <h2>{attempt.exam_title}</h2><p>{new Date(attempt.completed_at).toLocaleString('pt-BR')} · {attempt.timed ? 'Modo de prova' : 'Estudo livre'}</p>
          <strong>{attempt.points}/{attempt.total} {attempt.scoring === 'cebraspe' ? 'pontos líquidos' : 'acertos com anuladas'}</strong>
          <p>{attempt.correct} acertos · {attempt.wrong} erros · {attempt.blank} em branco · {attempt.annulled} anuladas</p>
          {attempt.wrong > 0 && <button className="account-back" onClick={() => setTab('mistakes')}>Revisar questões erradas</button>}
        </article>)}
        {tab === 'mistakes' && <><p>Questões erradas das tentativas desta página do histórico. Questões em branco e anuladas não entram no caderno.</p>{rows.length > 0 && !mistakes.length && <section className="account-panel"><p>Nenhuma questão errada nestas tentativas.</p></section>}{mistakes.map(q => <details className="account-panel mistake-card" key={`${q.attemptId}-${q.position}`}>
          <summary>{q.title} · Questão {q.number} · {q.subject}</summary>
          <p className="mistake-support">{q.support}</p><SupportImages value={q.supportImage || q.support_image} /><h3>{q.text}</h3>
          <ol className="mistake-options" type="A">{q.options.map((option, i) => { const letter = String.fromCharCode(65 + i); return <li key={letter} className={q.answer.split('/').includes(letter) ? 'correct' : q.selected === letter ? 'incorrect' : ''}>{option}{q.selected === letter && <strong> — Sua resposta</strong>}{q.answer.split('/').includes(letter) && <strong> — Gabarito</strong>}</li> })}</ol>
          {q.explanation && <p className="mistake-support"><strong>Explicação: </strong>{q.explanation}</p>}{q.sourceUrl && /^https?:\/\//.test(q.sourceUrl) && <a href={q.sourceUrl} target="_blank" rel="noreferrer">Abrir caderno oficial ↗</a>}
        </details>)}</>}
        <div className="account-pagination"><button className="button secondary" disabled={page === 0 || result.loading} onClick={() => setPage(v => v - 1)}>Anterior</button><span>Página {page + 1}</span><button className="button secondary" disabled={rows.length < 20 || result.loading} onClick={() => setPage(v => v + 1)}>Próxima</button></div>
      </>}
    </>}
  </main>
}
