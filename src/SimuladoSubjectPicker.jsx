import React, { useId, useState } from 'react'
import { ChevronDown, Search, X } from 'lucide-react'
import './simuladoSubjectPicker.css'

export const normalizeSubjectSearch = value => value.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim()

export function groupSimuladoSubjects(subjects) {
  const groups = [
    { label: 'Direito', match: /direito|juridic|legislacao|estatuto|etica.*oab/ },
    { label: 'Administração e Gestão', match: /administr|gestao|contab|econom|financ|auditoria|orcament|politicas publicas/ },
    { label: 'Tecnologia da Informação', match: /informat|tecnologia|comput|dados|programacao|software|redes|seguranca da informacao/ },
    { label: 'Saúde', match: /saude|enferm|medicin|biomed|farmac|odont|nutri|fisioter|psicolog/ },
    { label: 'Conhecimentos gerais', match: /portugues|lingu|literatur|matemat|logico|estatistica|ingles|espanhol|historia|geografia|atualidade|fisica|quimica|biologia|filosofia/ },
    { label: 'Outras matérias', match: /.*/ },
  ].map(group => ({ ...group, subjects: [] }))
  for (const subject of subjects) groups.find(group => group.match.test(normalizeSubjectSearch(subject))).subjects.push(subject)
  return groups.filter(group => group.subjects.length)
}

export default function SimuladoSubjectPicker({ subjects, selected, onChange }) {
  const [query, setQuery] = useState('')
  const [opened, setOpened] = useState({})
  const id = useId()
  const search = normalizeSubjectSearch(query)
  const toggle = subject => onChange(selected.includes(subject) ? selected.filter(item => item !== subject) : [...selected, subject])
  const groups = groupSimuladoSubjects(subjects)
  const visible = groups.map(group => ({ ...group, visible: group.subjects.filter(subject => !search || normalizeSubjectSearch(subject).includes(search) || normalizeSubjectSearch(group.label).includes(search)) })).filter(group => group.visible.length)
  return <div className="subject-picker-layout">
    <div className="subject-picker-main">
      <label className="subject-picker-search"><Search size={18} aria-hidden="true" /><span className="subject-picker-sr">Buscar matéria</span><input type="search" placeholder="Buscar matéria…" value={query} onChange={event => setQuery(event.target.value)} /></label>
      {!visible.length && <p className="simulado-hint" role="status">Nenhuma matéria encontrada para “{query}”.</p>}
      <div className="subject-picker-groups">{visible.map(group => {
        const expanded = Boolean(search || opened[group.label])
        const count = group.subjects.filter(subject => selected.includes(subject)).length
        const all = group.visible.every(subject => selected.includes(subject))
        const panelId = `${id}-${groups.findIndex(item => item.label === group.label)}`
        return <section className="subject-picker-group" key={group.label}>
          <button type="button" className="subject-picker-heading" aria-expanded={expanded} aria-controls={panelId} onClick={() => setOpened(current => ({ ...current, [group.label]: !expanded }))}>
            <strong>{group.label}</strong><span>{count ? `${count} selecionada${count === 1 ? '' : 's'}` : `${group.subjects.length} matérias`}</span><ChevronDown size={18} className={expanded ? 'expanded' : ''} />
          </button>
          <div id={panelId} hidden={!expanded} className="subject-picker-panel">
            <label className="subject-picker-all"><input type="checkbox" checked={all} onChange={() => onChange(all ? selected.filter(subject => !group.visible.includes(subject)) : [...new Set([...selected, ...group.visible])])} />{search ? 'Selecionar resultados deste grupo' : 'Selecionar todas do grupo'}</label>
            <div className="subject-picker-options">{group.visible.map(subject => <label key={subject}><input type="checkbox" checked={selected.includes(subject)} onChange={() => toggle(subject)} /><span>{subject}</span></label>)}</div>
          </div>
        </section>
      })}</div>
      <p className="simulado-hint">Você pode fechar os grupos sem perder suas escolhas.</p>
    </div>
    <aside className="subject-picker-summary" aria-label="Matérias selecionadas">
      <h3>Seu simulado</h3><p aria-live="polite">{selected.length} matéria{selected.length === 1 ? '' : 's'} selecionada{selected.length === 1 ? '' : 's'}</p>
      {selected.length ? <details open={selected.length <= 5}><summary>Ver selecionadas</summary><ul>{selected.map(subject => <li key={subject}><span>{subject}</span><button type="button" aria-label={`Remover ${subject}`} onClick={() => toggle(subject)}><X size={16} /></button></li>)}</ul><button type="button" className="subject-picker-clear" onClick={() => onChange([])}>Limpar seleção</button></details> : <p>Abra um grupo ou busque uma matéria para começar.</p>}
    </aside>
  </div>
}
