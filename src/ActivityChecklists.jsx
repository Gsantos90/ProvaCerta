import React, { useState } from 'react'
import { ListChecks, Plus, ChevronDown, Trash2 } from 'lucide-react'
import { activityChecklists } from './lib/studyPlanner'

function EditableName({ value, label, onSave, className = '' }) {
  const [editing, setEditing] = useState(false)
  const [text, setText] = useState(value)
  function save() {
    if (!text.trim() || text.trim() === value || onSave(text.trim())) setEditing(false)
  }
  return editing ? <input aria-label={label} maxLength={300} value={text} autoFocus onFocus={event => event.target.select()} onChange={event => setText(event.target.value)} onBlur={save} onKeyDown={event => { if (event.key === 'Enter') { event.preventDefault(); event.currentTarget.blur() } if (event.key === 'Escape') { event.preventDefault(); event.stopPropagation(); setEditing(false) } }} /> : <span className={className} tabIndex={0} role="button" title="Dois cliques para editar" onDoubleClick={() => { setText(value); setEditing(true) }} onKeyDown={event => { if (['Enter', 'F2'].includes(event.key)) { event.preventDefault(); setText(value); setEditing(true) } }}>{value}</span>
}

function Checklist({ list, onChange, onDelete }) {
  const [open, setOpen] = useState(true)
  const [adding, setAdding] = useState(false)
  const [text, setText] = useState('')
  const percent = list.items.length ? Math.round(list.items.filter(item => item.done).length / list.items.length * 100) : 0
  function add() {
    if (text.trim() && onChange({ ...list, items: [...list.items, { id: crypto.randomUUID(), text: text.trim(), done: false }] })) setText('')
  }
  return <section className="activity-checklist">
    <div className="activity-checklist-heading"><button type="button" aria-label={`${open ? 'Recolher' : 'Expandir'} ${list.name}`} aria-expanded={open} onClick={() => setOpen(!open)}><ChevronDown size={18} style={{ transform: open ? undefined : 'rotate(-90deg)' }} /></button><EditableName value={list.name} label="Nome da checklist" onSave={name => onChange({ ...list, name })} /><button className="activity-checklist-delete" type="button" onClick={() => { if (window.confirm(`Excluir a checklist “${list.name}” e seus itens?`)) onDelete() }}>Excluir</button></div>
    {open && <div className="activity-checklist-content"><div className="activity-checklist-progress"><span>{percent}%</span><progress value={percent} max={100} aria-label={`Progresso de ${list.name}`} /></div>
      <ul>{list.items.map(item => <li key={item.id}><input type="checkbox" aria-label={`Concluir: ${item.text}`} checked={item.done} onChange={() => onChange({ ...list, items: list.items.map(row => row.id === item.id ? { ...row, done: !row.done } : row) })} /><EditableName value={item.text} label="Nome do item" className={item.done ? 'checked' : ''} onSave={text => onChange({ ...list, items: list.items.map(row => row.id === item.id ? { ...row, text } : row) })} /><button type="button" aria-label={`Excluir item: ${item.text}`} onClick={() => onChange({ ...list, items: list.items.filter(row => row.id !== item.id) })}><Trash2 size={15} /></button></li>)}</ul>
      {adding ? <div className="activity-checklist-add"><input autoFocus aria-label={`Novo item em ${list.name}`} placeholder="Digite um item…" value={text} maxLength={300} onChange={event => setText(event.target.value)} onKeyDown={event => { if (event.key === 'Enter') { event.preventDefault(); add() } if (event.key === 'Escape') { event.stopPropagation(); setAdding(false) } }} /><div><button type="button" className="button primary" disabled={!text.trim()} onClick={add}>Adicionar</button><button type="button" onClick={() => { setAdding(false); setText('') }}>Cancelar</button></div></div> : <button type="button" className="activity-checklist-outline" onClick={() => setAdding(true)}>Adicionar um item</button>}
    </div>}
  </section>
}

export default function ActivityChecklists({ item, onChange }) {
  const lists = activityChecklists(item)
  const [creating, setCreating] = useState(false)
  const [name, setName] = useState('')
  function create() {
    if (name.trim() && onChange([...lists, { id: crypto.randomUUID(), name: name.trim(), items: [] }])) { setName(''); setCreating(false) }
  }
  return <div className="activity-checklists"><div className="activity-checklists-heading"><h4><ListChecks size={19} /> Checklists</h4><button type="button" className="activity-checklist-outline" onClick={() => setCreating(true)}><Plus size={15} /> Criar checklist</button></div>
    {creating && <div className="activity-checklist-create"><label>Nome da checklist<input autoFocus maxLength={300} placeholder="Ex.: Matérias estudadas" value={name} onChange={event => setName(event.target.value)} onKeyDown={event => { if (event.key === 'Enter') { event.preventDefault(); create() } if (event.key === 'Escape') { event.stopPropagation(); setCreating(false) } }} /></label><button type="button" className="button primary" disabled={!name.trim()} onClick={create}>Criar</button><button type="button" onClick={() => setCreating(false)}>Cancelar</button></div>}
    {lists.map(list => <Checklist key={list.id} list={list} onChange={updated => onChange(lists.map(row => row.id === list.id ? updated : row))} onDelete={() => onChange(lists.filter(row => row.id !== list.id))} />)}
  </div>
}
