import React, { useEffect, useRef, useState } from 'react'
import { supabase } from './lib/supabase'
import { reportPayload } from './lib/examSession'

export default function QuestionReport({ context, onClose }) {
  const [category, setCategory] = useState('text')
  const [message, setMessage] = useState('')
  const [status, setStatus] = useState('idle')
  const [error, setError] = useState('')
  const dialog = useRef(null)
  const busy = useRef(false)
  useEffect(() => {
    const original = document.activeElement
    dialog.current?.querySelector('select')?.focus()
    const keydown = (event) => {
      if (event.key === 'Escape' && !busy.current) onClose()
      if (event.key !== 'Tab') return
      const elements = [...dialog.current.querySelectorAll('button:not(:disabled), select:not(:disabled), textarea:not(:disabled)')]
      const first = elements[0], last = elements.at(-1)
      if (!first) { event.preventDefault(); return }
      if (!dialog.current.contains(document.activeElement)) { event.preventDefault(); first.focus(); return }
      if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last.focus() }
      if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first.focus() }
    }
    document.addEventListener('keydown', keydown)
    return () => { document.removeEventListener('keydown', keydown); if (original?.isConnected) original.focus() }
  }, [])
  const submit = async (event) => {
    event.preventDefault()
    if (busy.current) return
    setError('')
    try {
      const payload = reportPayload(context, category, message)
      if (!supabase) throw new Error('O envio exige conexão com o banco de dados.')
      busy.current = true
      setStatus('sending')
      const { error: failure } = await supabase.from('question_reports').insert(payload)
      if (failure) throw new Error('Não foi possível enviar o relato. Tente novamente; se persistir, o recebimento de relatos precisa ser habilitado no banco.')
      setStatus('sent')
    } catch (failure) { setError(failure.message); setStatus('idle') }
    finally { busy.current = false }
  }
  return <div className="report-overlay" onClick={(event) => { if (event.target === event.currentTarget && !busy.current) onClose() }}>
    <section className="report-dialog" ref={dialog} role="dialog" aria-modal="true" aria-labelledby="report-title">
      <h2 id="report-title">Informar problema</h2><p>{context.exam_title} · Questão {context.question_number} · {context.subject}</p>
      {status === 'sent' ? <><p role="status">Relato enviado. Obrigado por ajudar a melhorar as questões!</p><button className="button primary" onClick={onClose}>Fechar</button></> :
      <form onSubmit={submit}><label>Tipo de problema<select value={category} onChange={(event) => setCategory(event.target.value)} disabled={status === 'sending'}><option value="text">Enunciado ou texto incompleto</option><option value="image">Imagem ruim ou ausente</option><option value="answer">Possível divergência no gabarito</option><option value="other">Outro problema</option></select></label>
        <label>Descreva o problema<textarea rows="5" minLength="10" maxLength="2000" required value={message} onChange={(event) => setMessage(event.target.value)} disabled={status === 'sending'} /></label>
        <small>De 10 a 2.000 caracteres. Evite incluir dados pessoais.</small>
        {error && <p role="alert">{error}</p>}
        <div className="result-actions"><button className="button primary" disabled={status === 'sending'}>{status === 'sending' ? 'Enviando…' : 'Enviar relato'}</button><button type="button" className="button secondary" onClick={onClose} disabled={status === 'sending'}>Cancelar</button></div>
      </form>}
    </section>
  </div>
}
