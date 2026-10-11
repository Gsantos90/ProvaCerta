import React from 'react'
import { usePageState } from './lib/pageState'
import { ArrowRight, ChevronDown } from 'lucide-react'

const areas = { geral: 'Geral / Aviação', musica: 'Música', saude: 'Saúde' }
const vunesp = 'https://www.vunesp.com.br/EPCE2601'

export default function MilitaryExamCard({ institution, onStart, loading, error }) {
  const [area, setArea] = usePageState(`military.${institution}.area`, institution === 'esa' ? 'geral' : 'dia-1', value => (institution === 'esa' ? ['geral', 'musica', 'saude'] : ['dia-1', 'dia-2']).includes(value))
  const esa = institution === 'esa'
  const title = esa ? 'ESA' : 'EsPCEx'
  const editions = esa ? areas : { 'dia-1': '1º dia · Português, Física e Química', 'dia-2': '2º dia · Matemática, Geografia, História e Inglês' }
  return <article className="exam-card color-navy">
    <div className="card-art"><span className="art-kicker">EXÉRCITO BRASILEIRO</span><strong>{title}</strong><span className="art-shape">{title}</span><div className="art-dots" /></div>
    <div className="exam-card-body">
      <div className="card-title-row"><div><h3>{title} 2026</h3><p>{esa ? 'Escola de Sargentos das Armas' : 'Escola Preparatória de Cadetes do Exército'}</p></div><span className="status ready">Disponível</span></div>
      <p className="enem-note">{esa ? 'Aplicação: 26/07/2026 · CFGS 2027/28 · Modelo A.' : 'Aplicação: 12 e 13/09/2026 · Admissão 2026/27.'}</p>
      <div className="pism-controls"><label>Ano da prova<span className="select-wrap"><select value="2026" onChange={() => {}}><option value="2026">2026</option></select><ChevronDown size={16} /></span></label><label>{esa ? 'Área da prova' : 'Dia da prova'}<span className="select-wrap"><select value={area} onChange={event => setArea(event.target.value)} disabled={loading}>{Object.entries(editions).map(([value, label]) => <option key={value} value={value}>{label}</option>)}</select><ChevronDown size={16} /></span></label></div>
      <p className="enem-note">{esa ? '50 questões · Modelo A.' : `${area === 'dia-1' ? '44' : '56'} questões · Versão 1.`}</p>
      {error && <p className="api-error" role="alert">{error}</p>}
      <button className={`button ${loading ? 'disabled' : 'primary'} full`} disabled={loading} onClick={() => onStart(`${institution}-2026-${area}`)}>{loading ? 'Carregando questões…' : 'Começar prova'}{!loading && <ArrowRight size={17} />}</button>
      <a className="official-source" href={esa ? 'https://concursocfgs-esa.eb.mil.br/web/arquivos/provas-anteriores' : vunesp} target="_blank" rel="noopener noreferrer">Consultar publicação oficial</a>
    </div>
  </article>
}
