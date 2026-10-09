import React, { createContext, useContext, useEffect, useId, useRef, useState } from 'react'
import { createPortal } from 'react-dom'
import { ArrowRight, ChevronDown, X } from 'lucide-react'
import { useAuth } from './Auth'
import { supabase } from './lib/supabase'
import { latestForExam, loadCatalogProgress } from './lib/catalogProgress'
import { pismSelectionLabel } from './lib/pismSources'
import './examPicker.css'

const ProgressContext = createContext({ rows: [] })
export function ExamProgressProvider({ children, onHistory }) {
  const { user } = useAuth()
  const [result, setResult] = useState({ owner: null, rows: [], loading: false, error: false })
  const [retry, setRetry] = useState(0)
  useEffect(() => {
    let alive = true
    if (!user || !supabase) return
    setResult({ owner: user.id, rows: [], loading: true, error: false })
    loadCatalogProgress(supabase, user.id).then(rows => {
      if (alive) setResult({ owner: user.id, rows, loading: false, error: false })
    }).catch(() => { if (alive) setResult({ owner: user.id, rows: [], loading: false, error: true }) })
    return () => { alive = false }
  }, [user?.id, retry])
  const own = user && result.owner === user.id
  return <ProgressContext.Provider value={{ rows: own ? result.rows : [], onHistory }}>
    {own && result.loading && <p className="catalog-progress-status" role="status">Consultando suas últimas tentativas…</p>}
    {own && result.error && <p className="catalog-progress-status" role="status">Seu progresso não carregou. <button onClick={() => setRetry(value => value + 1)}>Tentar novamente</button></p>}
    {children}
  </ProgressContext.Provider>
}

export function cardEditions(exam, card) {
  const props = card?.props || {}
  let values = props.catalog || props.yearOptions || props.years || []
  if (exam.id === 'inss') values = ['2022']
  return [...new Set(values.map(item => {
    const value = String(typeof item === 'object' ? item.year || item.value || item.label : item)
    return (exam.id === 'pism' ? pismSelectionLabel(value) : value).match(/(?:19|20)\d{2}/)?.[0]
  }).filter(Boolean))].sort((a, b) => b.localeCompare(a))
}

export default function ExamPicker({ exam, children }) {
  const [open, setOpen] = useState(false)
  const { user } = useAuth()
  const { rows, onHistory } = useContext(ProgressContext)
  const latest = user ? latestForExam(rows, exam.id) : null
  const years = cardEditions(exam, children)
  const available = Boolean(children)
  const mark = exam.short || exam.name
  const category = exam.id === 'oab' ? 'Exame da Ordem' : ['enem', 'pism', 'usp', 'uerj'].includes(exam.id) ? 'Vestibulares' : 'Concursos'
  return <article className={`exam-summary tone-${exam.color || (exam.id === 'enem' ? 'enem' : exam.id === 'pism' ? 'pism' : 'teal')}`}>
    <div className="exam-summary-art">
      <p className="exam-summary-org">{exam.org}</p>
      <span className="exam-summary-watermark" aria-hidden="true">{mark.slice(0, 1)}</span>
      <strong className={`exam-summary-mark ${mark.length > 7 ? 'long-mark' : ''}`}>{mark}</strong>
      <span className="exam-summary-category">{category}</span>
    </div>
    <div className="exam-summary-body">
    <div className="exam-summary-top"><h3>{exam.name}</h3><span className={`summary-status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span></div>
    <p className="exam-summary-description">{exam.description}</p>
    <p className="exam-summary-editions">{years.length ? `Edições: ${years.join(' · ')}` : available ? 'Consulte as edições disponíveis' : 'Novas provas em preparação'}</p>
    {latest && <div className="exam-summary-progress"><strong>Você já fez esta prova</strong><span>Última tentativa: {latest.exam_title}</span><span>{new Date(latest.completed_at).toLocaleDateString('pt-BR')} · {latest.points}/{latest.total} {latest.scoring === 'cebraspe' ? 'pontos líquidos' : 'acertos'}</span><button onClick={() => onHistory?.('history')}>Ver meu histórico</button></div>}
    <button className="button primary full" disabled={!available} onClick={() => setOpen(true)} aria-haspopup="dialog">{available ? 'Escolher prova' : 'Em breve'}{available && <ArrowRight size={17} />}</button>
    </div>
    {open && <ExamPickerDialog exam={exam} onClose={() => setOpen(false)}>{children}</ExamPickerDialog>}
  </article>
}

export function ExamPickerDialog({ exam, onClose, children }) {
  const titleId = useId()
  const ref = useRef(null)
  const props = children?.props || {}
  const selectionLabels = [['role', 'roles', 'Cargo'], ['block', 'blocks', 'Bloco'], ['edition', 'editions', 'Edição']].map(([field, collection, caption]) => {
    const options = props[collection]
    const choice = Array.isArray(options) ? options.find(item => (typeof item === 'object' ? item.value : item) === props[field]) : options?.[props[field]]
    const label = typeof choice === 'object' ? choice?.label : choice || props[field]
    return typeof label === 'string' && label.length > 28 ? `${caption}: ${label}` : null
  }).filter(Boolean)
  useEffect(() => {
    const previous = document.activeElement
    const root = document.getElementById('root')
    const wasInert = root?.hasAttribute('inert')
    const overflow = document.body.style.overflow
    root?.setAttribute('inert', '')
    document.body.style.overflow = 'hidden'
    ref.current?.querySelector('select:not(:disabled),button:not(:disabled)')?.focus()
    const keydown = event => {
      if (event.key === 'Escape') { event.preventDefault(); onClose() }
      if (event.key !== 'Tab') return
      const nodes = [...ref.current.querySelectorAll('button:not(:disabled),select:not(:disabled),a[href],input:not(:disabled)')]
      const first = nodes[0], last = nodes[nodes.length - 1]
      if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last?.focus() }
      if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first?.focus() }
    }
    document.addEventListener('keydown', keydown)
    return () => {
      if (!wasInert) root?.removeAttribute('inert')
      document.body.style.overflow = overflow
      document.removeEventListener('keydown', keydown)
      previous?.focus()
    }
  }, [])
  const dialog = <div className="exam-picker-overlay" onClick={event => { if (event.target === event.currentTarget) onClose() }}>
    <section className="exam-picker-dialog" ref={ref} role="dialog" aria-modal="true" aria-labelledby={titleId}>
      <div className="exam-picker-heading"><div><p>Escolher prova</p><h2 id={titleId}>{exam.name}</h2></div><button onClick={onClose} aria-label="Fechar seleção da prova"><X size={22} /></button></div>
      <p className="exam-picker-description">Escolha a edição e as opções para começar.</p>
      {selectionLabels.map(label => <p className="exam-picker-selection" key={label}>{label}</p>)}
      {children}
    </section>
  </div>
  return typeof document === 'undefined' ? dialog : createPortal(dialog, document.body)
}

export function CatalogFilters({ search, setSearch, category, setCategory, categories, children }) {
  const [expanded, setExpanded] = useState(false)
  const id = useId()
  return <div className="catalog-filters compact-filters">
    {children}
    <button className="mobile-filter-toggle" onClick={() => setExpanded(value => !value)} aria-expanded={expanded} aria-controls={id}>Categorias · {category === 'todas' ? 'Todas' : categories.find(item => item.id === category)?.title}<ChevronDown size={18} /></button>
    <div id={id} className={`catalog-chips ${expanded ? 'filters-expanded' : ''}`}>
      {[{ id: 'todas', title: 'Todas' }, ...categories].map(item => <button key={item.id} className={`catalog-chip ${category === item.id ? 'active' : ''}`} aria-pressed={category === item.id} onClick={() => { setCategory(item.id); setExpanded(false) }}>{item.title}</button>)}
    </div>
    {(search || category !== 'todas') && <button className="catalog-clear-filters" onClick={() => { setSearch(''); setCategory('todas'); setExpanded(false) }}>Limpar filtros</button>}
  </div>
}
