import React, { createContext, useContext, useEffect, useRef, useState } from 'react'
import { UserRound, X } from 'lucide-react'
import { supabase, isRecoveryLink } from './lib/supabase'
import { saveAttempt } from './lib/studyHistory'
import './account.css'

const AuthContext = createContext({ user: null, loading: false, openAuth: () => {} })
export const useAuth = () => useContext(AuthContext)
export function authMessage(error) {
  if (error?.code === 'invalid_credentials') return 'E-mail ou senha incorretos.'
  if (error?.code === 'email_not_confirmed') return 'Confirme seu e-mail antes de entrar.'
  if (error?.code?.includes('rate_limit')) return 'Aguarde um pouco antes de tentar novamente.'
  if (error?.code === 'weak_password') return 'Escolha uma senha mais forte, com pelo menos 8 caracteres.'
  if (error?.code === 'email_address_invalid') return 'Confira se o endereço de e-mail está correto.'
  if (error?.code === 'email_address_not_authorized' || error?.code === 'signup_disabled') return 'O cadastro está indisponível neste momento. Tente novamente mais tarde.'
  return 'Não foi possível concluir. Confira sua conexão e tente novamente.'
}

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null)
  const [loading, setLoading] = useState(Boolean(supabase))
  const [mode, setMode] = useState(isRecoveryLink ? 'reset' : null)
  const [pendingNotice, setPendingNotice] = useState('')
  const [pendingRetry, setPendingRetry] = useState(0)
  useEffect(() => {
    if (!supabase) return
    let alive = true
    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (!alive) return
      setUser(session?.user || null)
      setLoading(false)
      if (event === 'PASSWORD_RECOVERY') setMode('reset')
    })
    // INITIAL_SESSION is delivered by the subscription, including URL sessions.
    return () => { alive = false; subscription.unsubscribe() }
  }, [])
  useEffect(() => {
    let alive = true
    setPendingNotice('')
    if (!user || !supabase) return
    let pending
    try { pending = JSON.parse(localStorage.getItem('provacerta-pending-result') || 'null') } catch { return }
    if (!pending?.id || (pending.user_id && pending.user_id !== user.id)) return
    try { localStorage.setItem('provacerta-pending-result', JSON.stringify({ ...pending, user_id: user.id })) } catch {}
    saveAttempt(supabase, { ...pending, user_id: user.id }).then(() => {
      if (!alive) return
      try {
        const current = JSON.parse(localStorage.getItem('provacerta-pending-result') || 'null')
        if (current?.id === pending.id) localStorage.removeItem('provacerta-pending-result')
      } catch {}
      setPendingNotice('saved')
    }).catch(() => { if (alive) setPendingNotice('error') })
    return () => { alive = false }
  }, [user?.id, pendingRetry])
  return <AuthContext.Provider value={{ user, loading, openAuth: (next = 'login') => setMode(next) }}>
    <div inert={mode ? '' : undefined} aria-hidden={mode ? true : undefined}>
      {pendingNotice && <div className="pending-result" role="status">{pendingNotice === 'saved' ? 'Seu último resultado foi salvo no histórico.' : <>Seu último resultado ainda não foi salvo. <button onClick={() => setPendingRetry(v => v + 1)}>Tentar novamente</button></>} <button aria-label="Fechar aviso" onClick={() => setPendingNotice('')}>×</button></div>}
      {children}
    </div>
    {mode && <AuthDialog key={mode} mode={mode} setMode={setMode} onClose={() => setMode(null)} />}
  </AuthContext.Provider>
}

function AuthDialog({ mode, setMode, onClose }) {
  const { user } = useAuth()
  const [email, setEmail] = useState(user?.email || '')
  const [password, setPassword] = useState('')
  const [repeat, setRepeat] = useState('')
  const [busy, setBusy] = useState(false)
  const [error, setError] = useState('')
  const [notice, setNotice] = useState('')
  const dialog = useRef(null)
  const pending = useRef(false)
  useEffect(() => {
    const previous = document.activeElement
    const previousOverflow = document.body.style.overflow
    document.body.style.overflow = 'hidden'
    dialog.current?.querySelector('input')?.focus()
    const key = event => {
      if (event.key === 'Escape' && !pending.current) onClose()
      if (event.key !== 'Tab') return
      const nodes = [...dialog.current.querySelectorAll('button:not(:disabled),input:not(:disabled),a[href]')]
      const first = nodes[0], last = nodes[nodes.length - 1]
      if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last?.focus() }
      if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first?.focus() }
    }
    document.addEventListener('keydown', key)
    return () => { document.removeEventListener('keydown', key); document.body.style.overflow = previousOverflow; previous?.focus() }
  }, [])
  const submit = async event => {
    event.preventDefault()
    if (pending.current) return
    setError(''); setNotice('')
    if (!supabase) { setError('O acesso à conta ainda não está configurado. Você pode continuar estudando sem login.'); return }
    if ((mode === 'signup' || mode === 'reset') && password !== repeat) { setError('As senhas precisam ser iguais.'); return }
    pending.current = true; setBusy(true)
    try {
      const redirectTo = window.location.origin + window.location.pathname
      let result
      if (mode === 'login') result = await supabase.auth.signInWithPassword({ email: email.trim(), password })
      if (mode === 'signup') result = await supabase.auth.signUp({ email: email.trim(), password, options: { emailRedirectTo: redirectTo } })
      if (mode === 'forgot') result = await supabase.auth.resetPasswordForEmail(email.trim(), { redirectTo })
      if (mode === 'reset') result = await supabase.auth.updateUser({ password })
      if (result.error) throw result.error
      if (mode === 'forgot') setNotice('Se houver uma conta com esse e-mail, você receberá um link para redefinir a senha.')
      else if (mode === 'signup' && !result.data.session) setNotice('Confira seu e-mail para confirmar o cadastro. Se já tiver uma conta, use a opção Entrar.')
      else onClose()
    } catch (failure) { setError(authMessage(failure)) }
    finally { pending.current = false; setBusy(false) }
  }
  const title = { login: 'Entrar na sua conta', signup: 'Criar sua conta', forgot: 'Recuperar senha', reset: 'Escolher nova senha' }[mode]
  return <div className="account-overlay"><section ref={dialog} className="account-dialog" role="dialog" aria-modal="true" aria-labelledby="auth-title">
    <button className="account-close" aria-label="Fechar login" onClick={onClose} disabled={busy}><X size={20} /></button>
    <h2 id="auth-title">{title}</h2><p>Guarde seus resultados e acompanhe seus estudos. O site também pode ser usado sem conta.</p>
    <form onSubmit={submit}>
      {mode !== 'reset' && <label>E-mail<input type="email" value={email} onChange={e => setEmail(e.target.value)} autoComplete="email" required maxLength={254} disabled={busy} /></label>}
      {mode !== 'forgot' && <label>{mode === 'reset' ? 'Nova senha' : 'Senha'}<input type="password" value={password} onChange={e => setPassword(e.target.value)} autoComplete={mode === 'login' ? 'current-password' : 'new-password'} minLength={mode === 'login' ? 1 : 8} required maxLength={128} disabled={busy} /></label>}
      {(mode === 'signup' || mode === 'reset') && <label>Repita a senha<input type="password" value={repeat} onChange={e => setRepeat(e.target.value)} autoComplete="new-password" minLength={8} required maxLength={128} disabled={busy} /></label>}
      {error && <p role="alert" className="account-error">{error}</p>}{notice && <p role="status">{notice}</p>}
      <button className="button primary full" disabled={busy}>{busy ? 'Aguarde…' : { login: 'Entrar', signup: 'Criar conta', forgot: 'Enviar link', reset: 'Salvar senha' }[mode]}</button>
    </form>
    {mode !== 'reset' && <div className="account-links"><button disabled={busy} onClick={() => setMode(mode === 'login' ? 'signup' : 'login')}>{mode === 'login' ? 'Criar conta' : 'Já tenho conta · Entrar'}</button>{mode === 'login' && <button disabled={busy} onClick={() => setMode('forgot')}>Esqueci minha senha</button>}</div>}
  </section></div>
}

export function AccountControl({ onAccount }) {
  const { user, loading, openAuth } = useAuth()
  const [open, setOpen] = useState(false)
  const [error, setError] = useState('')
  const container = useRef(null)
  useEffect(() => {
    const close = e => { if (e.key === 'Escape' || (e.type === 'pointerdown' && !container.current?.contains(e.target))) setOpen(false) }
    document.addEventListener('pointerdown', close); document.addEventListener('keydown', close)
    return () => { document.removeEventListener('pointerdown', close); document.removeEventListener('keydown', close) }
  }, [])
  useEffect(() => { setOpen(false); setError('') }, [user?.id])
  const navigate = tab => { setOpen(false); onAccount?.(tab) }
  return <div className="account-control" ref={container}>
    <button className="account-circle" disabled={loading} aria-label={user ? 'Abrir menu da minha conta' : 'Entrar na minha conta'} title={user ? 'Minha conta' : 'Entrar'} aria-expanded={user ? open : undefined} onClick={() => user ? setOpen(!open) : openAuth()}>{user ? user.email?.slice(0, 2).toUpperCase() || 'EU' : <UserRound size={20} />}</button>
    {open && user && <div className="account-menu"><span>{user.email}</span><button onClick={() => navigate('history')}>Meu progresso</button><button onClick={() => navigate('account')}>Minha conta</button><button onClick={async () => { const { error } = await supabase.auth.signOut(); if (error) setError('Não foi possível sair. Tente novamente.'); else setOpen(false) }}>Sair</button>{error && <p role="alert">{error}</p>}</div>}
  </div>
}
