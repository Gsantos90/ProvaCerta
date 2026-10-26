import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { unicampYears, unicampPhases, unicampSecondPhase, unicampDocument } from './lib/unicampExams'

export default function UnicampCard({ year = '2026', setYear, phase = 'fase1', setPhase, onStart, loading, error }) {
  return <article className="exam-card color-crimson">
    <div className="card-art"><span className="art-kicker">COMVEST · CAMPINAS</span><strong>Unicamp</strong><span className="art-shape">UNICAMP</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>Unicamp</h3><p>Universidade Estadual de Campinas</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova da Unicamp" value={year} onChange={event => setYear(event.target.value)} disabled={loading}>{unicampYears.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Prova<span className="select-wrap"><select aria-label="Fase da Unicamp" value={phase} onChange={event => setPhase(event.target.value)} disabled={loading}>{unicampPhases.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
      </div>
      {phase === 'fase1' ? <>
        <p className="official-source">1ª fase · 72 questões · Comvest</p>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${loading ? 'disabled' : 'primary'} full`} disabled={loading} onClick={onStart}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
        <p className="official-source"><a href={`/provas/unicamp/${year}-fase1.pdf`} target="_blank" rel="noopener noreferrer">Caderno completo</a> · <a href={`/provas/unicamp/${year}-gabarito.pdf`} target="_blank" rel="noopener noreferrer">Gabarito oficial</a></p>
      </> : <div className="unicamp-documents">
        <p>Provas discursivas em PDF para estudo e consulta às respostas da Comvest.</p>
        {unicampSecondPhase.map(item => <div key={item.value}><strong>{item.label}</strong><span><a href={unicampDocument(year,item.value)} target="_blank" rel="noopener noreferrer">Abrir prova</a><a href={unicampDocument(year,item.value==='dia-1'?'dia-1-respostas':item.value+'-respostas')} target="_blank" rel="noopener noreferrer">Respostas esperadas</a></span></div>)}
        <a href={unicampDocument(year,'redacao-expectativas')} target="_blank" rel="noopener noreferrer">Expectativas da banca de Redação</a>
      </div>}
    </div>
  </article>
}
