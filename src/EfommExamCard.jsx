import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'

export default function EfommExamCard({ onStart, loading, error }) {
  const [year, setYear] = usePageState('efomm.year', '2026', value => ['2026', '2025'].includes(value))
  const [day, setDay] = usePageState('efomm.day', '1', value => ['1', '2'].includes(value))
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">MARINHA MERCANTE</span><strong>EFOMM</strong></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>EFOMM {year}</h3><p>Escola de Formação de Oficiais da Marinha Mercante</p></div></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={year} onChange={event => setYear(event.target.value)} disabled={loading}><option value="2026">2026</option><option value="2025">2025</option></select><ChevronDown size={16} /></span></label>
        <label>Exame<span className="select-wrap"><select value={day} onChange={event => setDay(event.target.value)} disabled={loading}><option value="1">1º dia · Inglês e Português</option><option value="2">2º dia · Matemática e Física</option></select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className="button primary full" disabled={loading} onClick={() => onStart(`efomm-${year}-dia-${day}`)}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
