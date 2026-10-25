import React, { useEffect, useId, useRef, useState } from 'react'
import { createPortal } from 'react-dom'
import { Calculator, NotebookPen, Wrench, X, GripHorizontal } from 'lucide-react'
import { useAuth } from './Auth'
import { calculatorStep, initialCalculator } from './lib/calculator'
import './examTools.css'

function FloatingWindow({ title, icon: Icon, side, onClose, children }) {
  const ref = useRef(null)
  const drag = useRef(null)
  const titleId = useId()
  const [position, setPosition] = useState(null)
  const [raised, setRaised] = useState(false)
  const clamp = (x, y) => {
    const rect = ref.current?.getBoundingClientRect()
    return { x: Math.max(8, Math.min(x, window.innerWidth - (rect?.width || 320) - 8)), y: Math.max(8, Math.min(y, window.innerHeight - (rect?.height || 360) - 8)) }
  }
  useEffect(() => {
    const resize = () => setPosition(previous => previous ? clamp(previous.x, previous.y) : previous)
    window.addEventListener('resize', resize)
    ref.current?.querySelector('textarea,button')?.focus({ preventScroll: true })
    return () => window.removeEventListener('resize', resize)
  }, [])
  function startDrag(event) {
    if (event.target.closest('button') || (event.pointerType === 'mouse' && event.button !== 0)) return
    const rect = ref.current.getBoundingClientRect()
    drag.current = { dx: event.clientX - rect.left, dy: event.clientY - rect.top }
    event.currentTarget.setPointerCapture(event.pointerId)
    setPosition({ x: rect.left, y: rect.top })
  }
  return <section ref={ref} role="dialog" aria-modal="false" aria-labelledby={titleId} className={`exam-tool-window exam-tool-${side}`} style={{ ...(position ? { left: position.x, top: position.y, right: 'auto', bottom: 'auto' } : {}), zIndex: raised ? 1002 : 1001 }} onPointerDown={() => { document.querySelectorAll('.exam-tool-window').forEach(node => { node.style.zIndex = '1001' }); if (ref.current) ref.current.style.zIndex = '1002'; setRaised(true) }} onKeyDown={event => { if (event.key === 'Escape') { event.stopPropagation(); onClose() } }}>
    <div className="exam-tool-heading" onPointerDown={startDrag} onPointerMove={event => { if (drag.current) setPosition(clamp(event.clientX - drag.current.dx, event.clientY - drag.current.dy)) }} onPointerUp={() => { drag.current = null }} onPointerCancel={() => { drag.current = null }} onLostPointerCapture={() => { drag.current = null }}>
      <h2 id={titleId}><Icon size={19} />{title}</h2><GripHorizontal size={18} aria-hidden="true" /><button type="button" onClick={onClose} aria-label={`Fechar ${title.toLowerCase()}`}><X size={19} /></button>
    </div>
    <div className="exam-tool-content">{children}</div>
  </section>
}

export default function ExamTools({ examKey }) {
  const { user } = useAuth()
  const key = `provacerta:notes:${user?.id || 'visitor'}:${examKey}`
  return <Tools key={key} storageKey={key} />
}

function Tools({ storageKey }) {
  const [menu, setMenu] = useState(false)
  const [notesOpen, setNotesOpen] = useState(false)
  const [calculatorOpen, setCalculatorOpen] = useState(false)
  const [notes, setNotes] = useState(() => { try { return localStorage.getItem(storageKey) || '' } catch { return '' } })
  const [saved, setSaved] = useState(null)
  const [calc, setCalc] = useState(initialCalculator)
  const menuId = useId()
  const launcher = useRef(null)
  const close = setter => { setter(false); launcher.current?.focus() }
  const press = key => setCalc(previous => calculatorStep(previous, key))
  return createPortal(<div className="exam-tools">
    {notesOpen && <FloatingWindow title="Anotações" icon={NotebookPen} side="notes" onClose={() => close(setNotesOpen)}>
      <label htmlFor={`${menuId}-notes`}>Suas anotações desta prova</label>
      <textarea id={`${menuId}-notes`} value={notes} placeholder="Escreva suas ideias, fórmulas ou lembretes…" onChange={event => { const value = event.target.value; setNotes(value); try { localStorage.setItem(storageKey, value); setSaved(true) } catch { setSaved(false) } }} />
      <p role="status">{saved === false ? 'Não foi possível salvar neste navegador. Mantenha a janela aberta e copie suas anotações.' : saved ? 'Salvo automaticamente neste navegador' : 'As anotações ficam salvas neste navegador.'}</p>
    </FloatingWindow>}
    {calculatorOpen && <FloatingWindow title="Calculadora" icon={Calculator} side="calculator" onClose={() => close(setCalculatorOpen)}>
      <div className="exam-calculator" onKeyDown={event => { const mapped = { Enter: '=', Escape: 'AC', Backspace: '⌫', '*': '×', '/': '÷', '-': '−', ',': '.' }[event.key] || event.key; if (/^[0-9.]$/.test(mapped) || ['+', '−', '×', '÷', '=', '%', '⌫'].includes(mapped)) { event.preventDefault(); press(mapped) } }}>
        <div className="exam-calculator-pending">{calc.operation ? `${calc.stored} ${calc.operation}` : '\u00a0'}</div>
        <output aria-live="polite" aria-label="Resultado">{calc.display.replace('.', ',')}</output>
        <div className="exam-calculator-keys">{['AC', '⌫', '%', '÷', '7', '8', '9', '×', '4', '5', '6', '−', '1', '2', '3', '+', '±', '0', '.', '='].map(key => <button type="button" key={key} aria-label={key === '⌫' ? 'Apagar último dígito' : key === 'AC' ? 'Limpar calculadora' : key === '±' ? 'Trocar sinal' : key} className={key === '=' ? 'equals' : ['+', '−', '×', '÷'].includes(key) ? 'operator' : ''} onClick={() => press(key)}>{key === '.' ? ',' : key}</button>)}</div>
      </div>
    </FloatingWindow>}
    <div className="exam-tools-launcher">
      {menu && <div id={menuId} className="exam-tools-menu">
        <button type="button" aria-label="Calculadora" aria-pressed={calculatorOpen} onClick={() => setCalculatorOpen(value => !value)}><span>Calculadora</span><i><Calculator size={21} /></i></button>
        <button type="button" aria-label="Anotações" aria-pressed={notesOpen} onClick={() => setNotesOpen(value => !value)}><span>Anotações</span><i><NotebookPen size={21} /></i></button>
      </div>}
      <button type="button" ref={launcher} className="exam-tools-main" aria-label={menu ? 'Fechar ferramentas' : 'Abrir ferramentas da prova'} aria-expanded={menu} aria-controls={menu ? menuId : undefined} onClick={() => setMenu(value => !value)}><span className="exam-tools-tooltip">Ferramentas de ajuda</span>{menu ? <X size={24} /> : <Wrench size={24} />}</button>
    </div>
  </div>, document.body)
}
