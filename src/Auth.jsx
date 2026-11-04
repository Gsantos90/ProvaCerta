import React, { createContext, useContext, useEffect, useId, useRef, useState } from 'react'
import { CheckCircle2, CircleAlert, Eye, EyeOff, UserRound, X } from 'lucide-react'
import { supabase, isRecoveryLink } from './lib/supabase'
import { saveAttempt } from './lib/studyHistory'
import { existingEmailMessage, isExistingEmailSignup } from './lib/signupResult'
import './account.css'

const AuthContext = createContext({ user: null, loading: false, openAuth: () => {} })
export const useAuth = () => useContext(AuthContext)
export function authMessage(error) {
  if (error?.code === 'invalid_credentials') return 'E-mail ou senha incorretos.'
  if (error?.code === 'email_not_confirmed') return 'Você precisa confirmar seu e-mail antes de entrar. Abra o link de confirmação enviado à sua caixa de entrada.'
  if (error?.code === 'over_email_send_rate_limit') return 'O limite de envio de e-mails foi atingido. Aguarde antes de tentar novamente.'
  if (error?.code === 'email_address_not_authorized') return 'O serviço de e-mail ainda não permite enviar para este endereço. Entre em contato com o suporte.'
  if (error?.code?.includes('rate_limit')) return 'Aguarde um pouco antes de tentar novamente.'
  if (error?.code === 'weak_password') return 'Escolha uma senha mais forte, com pelo menos 8 caracteres.'
  if (error?.code === 'email_address_invalid') return 'Confira se o endereço de e-mail está correto.'
  if (error?.code === 'signup_disabled') return 'O cadastro está indisponível neste momento. Tente novamente mais tarde.'
  return 'Não foi possível concluir. Confira sua conexão e tente novamente.'
}

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null)
  const [loading, setLoading] = useState(Boolean(supabase))
  const [mode, setMode] = useState(isRecoveryLink ? 'reset' : null)
  const [loginHandoff, setLoginHandoff] = useState(null)
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
  const changeMode = (next = 'login') => { setLoginHandoff(null); setMode(next) }
  const finishSignup = email => {
    setLoginHandoff({ email })
    setMode('login')
  }
  return <AuthContext.Provider value={{ user, loading, openAuth: changeMode }}>
    <div inert={mode ? '' : undefined} aria-hidden={mode ? true : undefined}>
      {pendingNotice && <div className="pending-result" role="status">{pendingNotice === 'saved' ? 'Seu último resultado foi salvo no histórico.' : <>Seu último resultado ainda não foi salvo. <button onClick={() => setPendingRetry(v => v + 1)}>Tentar novamente</button></>} <button aria-label="Fechar aviso" onClick={() => setPendingNotice('')}>×</button></div>}
      {children}
    </div>
    {mode && <AuthDialog key={mode} mode={mode} setMode={changeMode} loginHandoff={mode === 'login' ? loginHandoff : null} onSignupComplete={finishSignup} onClose={() => changeMode(null)} />}
  </AuthContext.Provider>
}

function PasswordField({ label, ...inputProps }) {
  const id = useId()
  const [visible, setVisible] = useState(false)
  return <div className="account-password-field">
    <label htmlFor={id}>{label}</label>
    <div className="account-password-input">
      <input {...inputProps} id={id} type={visible ? 'text' : 'password'} />
      <button type="button" disabled={inputProps.disabled} aria-label={`${visible ? 'Ocultar' : 'Mostrar'} ${label.toLowerCase()}`} aria-controls={id} aria-pressed={visible} onClick={() => setVisible(value => !value)}>{visible ? <EyeOff size={20} aria-hidden="true" /> : <Eye size={20} aria-hidden="true" />}</button>
    </div>
  </div>
}

function AuthDialog({ mode, setMode, loginHandoff, onSignupComplete, onClose }) {
  const { user } = useAuth()
  const [email, setEmail] = useState(loginHandoff?.email || user?.email || '')
  const [password, setPassword] = useState('')
  const [repeat, setRepeat] = useState('')
  const [busy, setBusy] = useState(false)
  const [error, setError] = useState('')
  const [successToast, setSuccessToast] = useState(loginHandoff ? 'E-mail de confirmação enviado com sucesso! Confirme seu e-mail antes de entrar.' : '')
  const [warningToast, setWarningToast] = useState('')
  const [errorToast, setErrorToast] = useState('')
  const dialog = useRef(null)
  const pending = useRef(false)
  useEffect(() => {
    if (!successToast && !warningToast && !errorToast) return
    const timer = setTimeout(() => { setSuccessToast(''); setWarningToast(''); setErrorToast('') }, 6000)
    return () => clearTimeout(timer)
  }, [successToast, warningToast, errorToast])
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
    setError(''); setSuccessToast(''); setWarningToast(''); setErrorToast('')
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
      if (mode === 'signup' && isExistingEmailSignup(result)) {
        setWarningToast(existingEmailMessage)
        return
      }
      if (result.error) throw result.error
      if (mode === 'forgot') setSuccessToast('Link de redefinição de senha enviado com sucesso! Confira seu e-mail.')
      else if (mode === 'signup' && !result.data.session) onSignupComplete(email.trim())
      else onClose()
    } catch (failure) {
      const message = authMessage(failure)
      setError(message)
      setErrorToast(message)
    }
    finally { pending.current = false; setBusy(false) }
  }
  const title = { login: 'Entrar na sua conta', signup: 'Criar sua conta', forgot: 'Recuperar senha', reset: 'Escolher nova senha' }[mode]
  return <div className="account-overlay"><section ref={dialog} className="account-dialog" role="dialog" aria-modal="true" aria-labelledby="auth-title">
    {(successToast || warningToast || errorToast) && <div className={`account-success-toast${errorToast ? ' account-error-toast' : warningToast ? ' account-warning-toast' : ''}`} role={errorToast ? 'alert' : 'status'} aria-atomic="true">{warningToast || errorToast ? <CircleAlert size={22} aria-hidden="true" /> : <CheckCircle2 size={22} aria-hidden="true" />}<span>{errorToast || warningToast || successToast}</span><button type="button" aria-label="Fechar aviso" onClick={() => { setSuccessToast(''); setWarningToast(''); setErrorToast('') }}><X size={18} /></button></div>}
    <button className="account-close" aria-label="Fechar login" onClick={onClose} disabled={busy}><X size={20} /></button>
    <h2 id="auth-title">{title}</h2><p>Guarde seus resultados e acompanhe seus estudos. O site também pode ser usado sem conta.</p>
    {mode === 'login' && loginHandoff && <p className="account-confirmation-notice" role="status">Cadastro realizado. Para acessar sua conta, confirme seu e-mail pelo link enviado à sua caixa de entrada. Confira também a pasta de spam.</p>}
    <form onSubmit={submit}>
      {mode !== 'reset' && <label>E-mail<input type="email" value={email} onChange={e => setEmail(e.target.value)} autoComplete="email" required maxLength={254} disabled={busy} /></label>}
      {mode !== 'forgot' && <PasswordField label={mode === 'reset' ? 'Nova senha' : 'Senha'} value={password} onChange={e => setPassword(e.target.value)} autoComplete={mode === 'login' ? 'current-password' : 'new-password'} minLength={mode === 'login' ? 1 : 8} required maxLength={128} disabled={busy} />}
      {(mode === 'signup' || mode === 'reset') && <PasswordField label="Repita a senha" value={repeat} onChange={e => setRepeat(e.target.value)} autoComplete="new-password" minLength={8} required maxLength={128} disabled={busy} />}
      {error && <p role="alert" className="account-error">{error}</p>}
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
