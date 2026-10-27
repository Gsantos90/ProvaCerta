import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'
import { cfcYears, cfcEditions, cfcSlug } from './lib/cfcExams'

export default function CfcExamCard({ onStart, loading, error }) {
  const [year, setYear] = usePageState('cfc.year', '2026', value => cfcYears.includes(value))
  const [edition, setEdition] = usePageState('cfc.edition', '2', value => cfcEditions.some(item => item.value === value))
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">CONSELHO FEDERAL DE CONTABILIDADE</span><strong>CFC</strong><span className="art-shape">CFC</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>Contador (CFC)</h3><p>Exame de Suficiência</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={year} onChange={event => setYear(event.target.value)} disabled={loading}>{cfcYears.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Edição<span className="select-wrap"><select value={edition} onChange={event => setEdition(event.target.value)} disabled={loading}>{cfcEditions.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className={'button ' + (loading ? 'disabled' : 'primary') + ' full'} disabled={loading} onClick={() => onStart(cfcSlug(year, edition))}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
