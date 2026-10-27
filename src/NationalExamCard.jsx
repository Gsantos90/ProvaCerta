import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'
import { nationalInstitutions, nationalYears, nationalPapers, nationalRoleLabel } from './lib/nationalExams'

export default function NationalExamCard({ institution, onStart, loading, error }) {
  const info = nationalInstitutions[institution]
  const years = nationalYears(institution)
  const [year, setYear] = usePageState(institution + '.year', years[0], value => years.includes(value))
  const papers = nationalPapers(institution, year)
  const [chosen, setChosen] = usePageState(institution + '.paper', papers[0].slug, value => nationalPapers(institution).some(paper => paper.slug === value))
  const paper = papers.find(item => item.slug === chosen) || papers[0]
  const changeYear = value => { setYear(value); setChosen(nationalPapers(institution, value)[0].slug) }
  return <article className={'exam-card color-' + info.color}>
    <div className="card-art"><span className="art-kicker">{info.org}</span><strong>{info.name}</strong><span className="art-shape">{institution.toUpperCase()}</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>{info.name}</h3></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={year} onChange={event => changeYear(event.target.value)} disabled={loading}>{years.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
        <label>Cargo<span className="select-wrap"><select value={paper.slug} onChange={event => setChosen(event.target.value)} disabled={loading || papers.length === 1}>{papers.map(item => <option key={item.slug} value={item.slug}>{nationalRoleLabel(item)}</option>)}</select><ChevronDown size={16} /></span></label>
      </div>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className={'button ' + (loading ? 'disabled' : 'primary') + ' full'} disabled={loading} onClick={() => onStart(paper.slug)}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
    </div>
  </article>
}
