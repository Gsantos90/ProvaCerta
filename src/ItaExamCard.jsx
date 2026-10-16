import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'

export default function ItaExamCard({ onStart, loading, error }) {
  const [year, setYear] = usePageState('ita.year', '2026', value => value === '2026')
  const [exam, setExam] = usePageState('ita.exam', 'fase-1', value => ['fase-1', 'fase-2'].includes(value))
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">INSTITUTO TECNOLÓGICO DE AERONÁUTICA</span><strong>ITA</strong><span className="art-shape">ITA</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>ITA 2026</h3><p>Vestibular · {exam === 'fase-1' ? '1ª fase' : '2ª fase'}</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={year} onChange={event => setYear(event.target.value)} disabled={loading}><option value="2026">2026</option></select><ChevronDown size={16} /></span></label>
        <label>Exame<span className="select-wrap"><select value={exam} onChange={event => setExam(event.target.value)} disabled={loading}><option value="fase-1">1º fase</option><option value="fase-2">2º fase</option></select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className="button primary full" disabled={loading} onClick={() => onStart(`ita-${year}-${exam}`)}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
