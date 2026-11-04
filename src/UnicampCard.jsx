import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { unicampYears, unicampPhases } from './lib/unicampExams'

export default function UnicampCard({ year = '2026', setYear, phase = 'fase1', setPhase, onStart, loading, error }) {
  return <article className="exam-card color-crimson">
    <div className="card-art"><span className="art-kicker">COMVEST · CAMPINAS</span><strong>Unicamp</strong><span className="art-shape">UNICAMP</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>Unicamp</h3><p>Universidade Estadual de Campinas</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova da Unicamp" value={year} onChange={event => setYear(event.target.value)} disabled={loading}>{unicampYears.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Prova<span className="select-wrap"><select aria-label="Fase da Unicamp" value={phase === 'fase1' ? phase : 'fase1'} onChange={event => setPhase(event.target.value)} disabled={loading}>{unicampPhases.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className={`button ${loading ? 'disabled' : 'primary'} full`} disabled={loading} onClick={onStart}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
