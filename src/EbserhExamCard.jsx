import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'
import { ebserhExams } from './lib/ebserhExams'

export default function EbserhExamCard({ onStart, loading, error }) {
  const [year, setYear] = usePageState('ebserh.year', '2025', value => ebserhExams.some(exam => exam.year === value))
  const [role, setRole] = usePageState('ebserh.role', 'farmaceutico', value => value === 'farmaceutico')
  const exam = ebserhExams.find(item => item.year === year) || ebserhExams[0]
  return <article className="exam-card color-teal">
    <div className="card-art"><span className="art-kicker">EMPRESA BRASILEIRA DE SERVIÇOS HOSPITALARES</span><strong>EBSERH</strong></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>EBSERH {exam.year}</h3><p>Farmacêutico · {exam.scope}</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={exam.year} onChange={event => setYear(event.target.value)} disabled={loading}>{ebserhExams.map(item => <option key={item.year} value={item.year}>{item.year}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Cargo<span className="select-wrap"><select value={role} onChange={event => setRole(event.target.value)} disabled={loading}><option value="farmaceutico">Farmacêutico</option></select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className="button primary full" disabled={loading} onClick={() => onStart(`ebserh-${exam.year}-${role}`)}>{loading ? 'Carregando questões.' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
