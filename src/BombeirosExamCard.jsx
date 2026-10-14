import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { usePageState } from './lib/pageState'

export default function BombeirosExamCard({onStart, loading, error}) {
  const [year,setYear]=usePageState('cbmerj.year','2026',v=>['2026','2025','2024','2023'].includes(v))
  const [language,setLanguage]=usePageState('cbmerj.language','ingles',v=>['ingles','espanhol'].includes(v))
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">BOMBEIROS · RIO DE JANEIRO</span><strong>CBMERJ</strong><span className="art-shape">BM</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>Bombeiro Militar</h3><p>Curso de Formação de Oficiais · CBMERJ</p></div><span className="status ready">Disponível</span></div>
      <div className="pism-controls">
        <label>Ano da prova<span className="select-wrap"><select value={year} onChange={e=>setYear(e.target.value)} disabled={loading}>{['2026','2025','2024','2023'].map(y=><option key={y} value={y}>{y}</option>)}</select><ChevronDown size={16}/></span></label>
        {Number(year)>2024&&<label>Língua estrangeira<span className="select-wrap"><select value={language} onChange={e=>setLanguage(e.target.value)} disabled={loading}><option value="ingles">Inglês</option><option value="espanhol">Espanhol</option></select><ChevronDown size={16}/></span></label>}
      </div>
      <p className="enem-note">{Number(year)<=2024?'100 questões · FGV · Tipo 1 (Branca) · Inglês.':'80 questões · UERJ · Gabarito definitivo.'}</p>
      {year==='2023'&&<p className="enem-note">CFO 2023 · Prova aplicada em 27/11/2022.</p>}
      {error&&<p className="api-error" role="alert">{error}</p>}
      <button className={`button ${loading?'disabled':'primary'} full`} disabled={loading} onClick={()=>onStart(`cbmerj-${year}-cfo${Number(year)<=2024?'':'-'+language}`)}>{loading?'Carregando questões…':'Começar prova'}{!loading&&<ArrowRight size={17}/>}</button>
      <a className="official-source" href={Number(year)<=2024?`https://conhecimento.fgv.br/concursos/${year==='2023'?'cbmerj22':'cbmerj23'}`:`https://www.vestibular.uerj.br/?page_id=${year==='2026'?'14964':'16355'}`} target="_blank" rel="noopener noreferrer">Consultar publicação oficial</a>
    </div>
  </article>
}
