import React from 'react'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { enemAreas, enemHasLanguage } from './lib/enemExams'
import { pismSelectionLabel } from './lib/pismSources'
import { inssExamsByYear, inssCnuNotice } from './lib/inssExams'

export function EnemCard({ catalog, year, setYear, discipline, setDiscipline, language, setLanguage, onStart, loading, error }) {
  return (
    <article className="exam-card enem">
      <div className="card-art"><span className="art-kicker">BRASIL</span><strong>ENEM</strong><span className="art-shape">ENEM</span><div className="art-dots" /></div>
      <div className="exam-card-body">
        <div className="card-title-row"><div><h3>ENEM</h3><p>Exame Nacional do Ensino Médio</p></div><span className={`status ${catalog.length ? 'ready' : ''}`}>{catalog.length ? 'Disponível' : 'Carregando'}</span></div>
        <div className="enem-controls">
          <label>Ano da prova <span className="select-wrap"><select value={year} onChange={(event) => setYear(event.target.value)} disabled={!catalog.length}>{catalog.map((item) => <option key={item.year} value={item.year}>{item.year}</option>)}</select><ChevronDown size={16} /></span></label>
          <label>Área da prova <span className="select-wrap"><select value={discipline} onChange={event => setDiscipline(event.target.value)}>{enemAreas.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
          <label>Idioma <span className="select-wrap"><select value={language} onChange={event => setLanguage(event.target.value)} disabled={!enemHasLanguage(discipline)}><option value="ingles">Inglês</option><option value="espanhol">Espanhol</option></select><ChevronDown size={16} /></span></label>
          <p className="enem-note">{enemHasLanguage(discipline) ? 'O idioma define as cinco questões de língua estrangeira.' : 'Esta área não contém questões de língua estrangeira.'}</p>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${catalog.length && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!catalog.length || loading}>{loading ? 'Carregando questões…' : 'Começar prova'} {!loading && catalog.length > 0 && <ArrowRight size={17} />}</button>
      </div>
    </article>
  )
}

export function ExamCard({ type, title, description, series, currentSeries, onSeriesChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className={`exam-card ${type}`}>
      <div className="card-art">
        <span className="art-kicker">{type === 'pism' ? 'UFJF' : 'BRASIL'}</span>
        <strong>{title}</strong>
        <span className="art-shape">{type === 'pism' ? 'PISM' : 'ENEM'}</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>{title}</h3>
            <p>{description}</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{pismSelectionLabel(item)}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Série
            <span className="select-wrap">
              <select value={currentSeries} onChange={(event) => onSeriesChange(event.target.value)}>
                {Object.entries(series || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function BbCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-gold">
      <div className="card-art">
        <span className="art-kicker">BANCÁRIO</span>
        <strong>BB</strong>
        <span className="art-shape">BB</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Banco do Brasil</h3>
            <p>Concurso do Banco do Brasil</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function PmerjCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-navy">
      <div className="card-art">
        <span className="art-kicker">SEGURAÇA</span>
        <strong className="long">PMERJ</strong>
        <span className="art-shape">PMERJ</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>PMERJ</h3>
            <p>Polícia Militar do Estado do Rio de Janeiro</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function CorreiosCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-amber">
      <div className="card-art">
        <span className="art-kicker">SERVIÇOS</span>
        <strong className="long">CORREIOS</strong>
        <span className="art-shape">Correios</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Correios</h3>
            <p>{roles[role]?.label || 'Agente de Correios'}</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>) : <option value="">Nenhum ano disponível</option>}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => <option key={key} value={key}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function InssCard({ onStart, loading, error, years = ['2025', '2022', '2016'], year = '2022', setYear, role = 'tecnico', onRoleChange }) {
  const roles = inssExamsByYear[year] || []
  const selected = roles.find(exam => exam.value === role)
  return (
    <article className="exam-card color-sky">
      <div className="card-art">
        <span className="art-kicker">PREVIDÊNCIA SOCIAL</span>
        <strong>INSS</strong>
        <span className="art-shape">INSS</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>INSS</h3>
            <p>{year === '2025' ? 'Analista do Seguro Social · CNU · 90 questões' : `${selected?.label || 'INSS'} · 120 itens`}</p>
          </div>
          <span className="status ready">Disponível</span>
        </div>
        <div className="pism-controls">
          <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova do INSS" value={year} onChange={event => setYear?.(event.target.value)} disabled={loading}>{years.map(value => <option key={value} value={value}>{value}</option>)}</select><ChevronDown size={16} /></span></label>
          <label>{year === '2025' ? 'Cargo / bloco do CNU' : 'Cargo'}<span className="select-wrap"><select aria-label="Cargo do INSS" value={role} onChange={event => onRoleChange?.(event.target.value)} disabled={loading}>{roles.map(exam => <option key={exam.value} value={exam.value}>{exam.label}</option>)}</select><ChevronDown size={16} /></span></label>
        </div>
        {year === '2025' && <p className="official-source">{inssCnuNotice}</p>}
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${!loading && selected ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={loading || !selected}>
          {loading ? 'Carregando questões…' : 'Começar prova'} {!loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function CaixaCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-sky">
      <div className="card-art">
        <span className="art-kicker">BANCÁRIO</span>
        <strong>CAIXA</strong>
        <span className="art-shape">CAIXA</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Caixa Econômica Federal</h3>
            <p>Concurso Técnico Bancário Novo</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>) : <option value="">Nenhum ano disponível</option>}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => <option key={key} value={key}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function PcCard({ states, state, onStateChange, roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  // Mostra no seletor apenas cargos que tenham ao menos uma prova cadastrada
  // (algum ano com slug). Cargos sem prova ficam ocultos.
  const availableRoles = Object.entries(roles || {}).filter(
    ([, item]) => (item.years || []).some((entry) => entry.slug),
  )
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">SEGURANÇA</span>
        <strong>PC</strong>
        <span className="art-shape">PC</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Polícia Civil</h3>
            <p>Concurso da Polícia Civil</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Estado
            <span className="select-wrap">
              <select value={state} onChange={(event) => onStateChange(event.target.value)}>
                {states.map((item) => <option key={item} value={item}>{item}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)} disabled={availableRoles.length === 0}>
                {availableRoles.length > 0 ? (
                  availableRoles.map(([key, item]) => (
                    <option key={key} value={key}>{item.label}</option>
                  ))
                ) : (
                  <option value="">Nenhum cargo disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function PfCard({ roles, role, onRoleChange, areas, area, onAreaChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-slate">
      <div className="card-art">
        <span className="art-kicker">SEGURANÇA</span>
        <strong className="long">PF</strong>
        <span className="art-shape">PF</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Polícia Federal</h3>
            <p>Concurso da Polícia Federal</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {roles.map((item) => <option key={item} value={item}>{item}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Área
            <span className="select-wrap">
              <select value={area} onChange={(event) => onAreaChange(event.target.value)}>
                {areas.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function CnuCard({ yearOptions, yearOption, onYearOptionChange, levels, level, onLevelChange, blocks, block, setBlock, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-teal">
      <div className="card-art">
        <span className="art-kicker">CONCURSO NACIONAL</span>
        <strong>CNU</strong>
        <span className="art-shape">CNU</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>CNU</h3>
            <p>Concurso Público Nacional Unificado</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={yearOption} onChange={(event) => onYearOptionChange(event.target.value)}>
                {yearOptions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Nível
            <span className="select-wrap">
              <select value={level} onChange={(event) => onLevelChange(event.target.value)}>
                {Object.entries(levels || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Bloco
            <span className="select-wrap">
              <select value={block} onChange={(event) => setBlock(event.target.value)} disabled={blocks.length === 0}>
                {blocks.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function OabCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">ORDEM DO ADVOGADOS</span>
        <strong>OAB</strong>
        <span className="art-shape">OAB</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>OAB</h3>
            <p>Exame de Ordem Unificado (1ª fase)</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Edição do exame
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function UerjCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-teal">
      <div className="card-art">
        <span className="art-kicker">RIO DE JANEIRO</span>
        <strong>UERJ</strong>
        <span className="art-shape">UERJ</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>UERJ</h3>
            <p>Vestibular Estadual</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Edição
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function UspCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">FUVEST · SÃO PAULO</span>
        <strong>USP</strong>
        <span className="art-shape">USP</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>USP</h3>
            <p>Universidade de São Paulo (FUVEST)</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Prova
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

export function UpcomingCard({ exam }) {
  return (
    <article className={`exam-card upcoming color-${exam.color}`}>
      <div className="card-art">
        <span className="art-kicker">{exam.org}</span>
        <strong className={exam.short?.length >= 7 ? 'long' : ''}>{exam.short}</strong>
        <span className="art-shape">{exam.short}</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>{exam.name}</h3>
            <p>{exam.description}</p>
          </div>
          <span className="status">Em breve</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select disabled>
                <option value="">Em breve</option>
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          {exam.roles?.length > 0 && (
            <label>
              Cargo
              <span className="select-wrap">
                <select disabled>
                  {exam.roles.map((role) => <option key={role} value={role}>{role}</option>)}
                </select>
                <ChevronDown size={16} />
              </span>
            </label>
          )}
        </div>
        <button className="button disabled full" disabled>Em breve</button>
      </div>
    </article>
  )
}
