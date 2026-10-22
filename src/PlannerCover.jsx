import React, { useEffect, useRef, useState } from 'react'
import { MoreHorizontal, X, Check } from 'lucide-react'

const colors = [['Verde', '#4bce97'], ['Amarelo', '#f5d52c'], ['Laranja', '#ffa726'], ['Coral', '#ff8276'], ['Roxo', '#c784ee'], ['Azul', '#78a7f2'], ['Ciano', '#69c7df'], ['Lima', '#a4ce58'], ['Rosa', '#e887bf'], ['Cinza', '#a5a9b3']]

export default function PlannerCover({ item, onChange }) {
  const [panel, setPanel] = useState(null)
  const [position, setPosition] = useState({})
  const root = useRef(null)
  const trigger = useRef(null)
  useEffect(() => {
    if (!panel) return
    const outside = event => { if (!root.current?.contains(event.target)) setPanel(null) }
    const escape = event => { if (event.key === 'Escape') { event.stopPropagation(); setPanel(null); trigger.current?.focus() } }
    document.addEventListener('pointerdown', outside)
    document.addEventListener('keydown', escape, true)
    return () => { document.removeEventListener('pointerdown', outside); document.removeEventListener('keydown', escape, true) }
  }, [panel])
  function open() {
    const rect = trigger.current.getBoundingClientRect()
    setPosition({ left: Math.max(8, Math.min(rect.right - 280, window.innerWidth - 288)), top: Math.max(8, Math.min(rect.bottom + 5, window.innerHeight - 350)) })
    setPanel(panel ? null : 'menu')
  }
  return <div ref={root} className="planner-cover-controls" onDoubleClick={event => event.stopPropagation()} onDragStart={event => { event.preventDefault(); event.stopPropagation() }}>
    <button ref={trigger} type="button" className="planner-card-menu" aria-label={`Opções do card ${item.subject}`} aria-expanded={Boolean(panel)} onClick={open}><MoreHorizontal size={19} /></button>
    {panel && <div className="planner-cover-popover" style={position} role="dialog" aria-label={panel === 'menu' ? 'Opções do card' : 'Alterar capa'}>
      <div className="planner-cover-heading"><strong>{panel === 'menu' ? 'Opções do card' : 'Capa'}</strong><button type="button" aria-label="Fechar opções de capa" onClick={() => { setPanel(null); trigger.current?.focus() }}><X size={16} /></button></div>
      {panel === 'menu' ? <button type="button" className="planner-cover-action" onClick={() => setPanel('cover')}>Alterar capa</button> : <>
        <p>Tamanho</p><div className="planner-cover-sizes">{['strip', 'full'].map(style => <button type="button" key={style} aria-label={style === 'strip' ? 'Faixa no topo' : 'Card inteiro'} aria-pressed={(item.cover?.style || 'full') === style} style={{ '--preview-cover': item.cover?.color || '#78a7f2' }} className={`cover-preview ${style}`} onClick={() => onChange({ color: item.cover?.color || '#78a7f2', style })}><span /><i /><i /></button>)}</div>
        <p>Cores</p><div className="planner-cover-colors">{colors.map(([label, color]) => <button key={color} type="button" aria-label={`Capa ${label.toLowerCase()}`} aria-pressed={item.cover?.color === color} style={{ background: color }} onClick={() => onChange({ color, style: item.cover?.style || 'full' })}>{item.cover?.color === color && <Check size={18} />}</button>)}</div>
        {item.cover && <button type="button" className="planner-cover-action" onClick={() => onChange(null)}>Remover capa</button>}
      </>}
    </div>}
  </div>
}
