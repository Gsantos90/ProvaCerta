import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { unespYears, unespPhases, unespSecondPhase, unespDocument } from './lib/unespExams'

export default function UnespCard({ year = '2026', setYear, phase = 'fase1', setPhase, onStart, loading, error }) {
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">VUNESP · SÃO PAULO</span><strong>Unesp</strong><span className="art-shape">UNESP</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>Unesp</h3><p>Universidade Estadual Paulista</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova da Unesp" value={year} onChange={event => setYear(event.target.value)} disabled={loading}>{unespYears.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Prova<span className="select-wrap"><select aria-label="Fase da Unesp" value={phase} onChange={event => setPhase(event.target.value)} disabled={loading}>{unespPhases.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
      </div>
      {phase === 'fase1' ? <>
        <p className="official-source">1ª fase · 90 questões · Vunesp</p>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${loading ? 'disabled' : 'primary'} full`} disabled={loading} onClick={onStart}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
        <p className="official-source"><a href={`/provas/unesp/${year}-fase1.pdf`} target="_blank" rel="noopener noreferrer">Caderno completo</a> · <a href={`/provas/unesp/${year}-gabarito.pdf`} target="_blank" rel="noopener noreferrer">Gabarito oficial</a></p>
      </> : <div className="unicamp-documents">
        <p>Provas discursivas e redação em PDF para estudo.</p>
        {unespSecondPhase.map(item => <div key={item.value}><strong>{item.label}</strong><span><a href={unespDocument(year,item.value)} target="_blank" rel="noopener noreferrer">Abrir caderno completo</a></span></div>)}
      </div>}
    </div>
  </article>
}
