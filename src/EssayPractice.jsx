import React, { useEffect, useMemo, useState } from 'react'
import { ArrowLeft, BookOpen, Check, Shuffle } from 'lucide-react'
import { analyzeEssay, emptyEssay, essayStorageKey, restoreEssay, reviewQuestions, summarizeReview } from './lib/essayReview'
import { initialEssayThemes, normalizeEssayTheme, filterEssayThemes, pickEssayTheme } from './lib/essayThemes'
import { usePageState } from './lib/pageState'
import { supabase } from './lib/supabase'

function initialDraft() {
  try { return { draft: restoreEssay(window.localStorage.getItem(essayStorageKey)), error: '' } }
  catch { return { draft: emptyEssay(), error: 'Não foi possível recuperar o rascunho salvo. Você pode escrever e baixar uma cópia; o salvamento está pausado.' } }
}

export default function EssayPractice({ onBack }) {
  const [initial] = useState(initialDraft)
  const [themes, setThemes] = useState(initialEssayThemes)
  const [themesLoading, setThemesLoading] = useState(true)
  const [themesMessage, setThemesMessage] = useState('')
  const [themeRetry, setThemeRetry] = useState(0)
  const [themeExam, setThemeExam] = usePageState('essay.exam', 'all')
  const [themeYear, setThemeYear] = usePageState('essay.year', 'all')
  const [draft, setDraft] = useState(initial.draft)
  const [saveMessage, setSaveMessage] = useState(initial.error || 'Rascunho salvo neste navegador.')
  const analysis = useMemo(() => analyzeEssay(draft.text), [draft.text])
  const review = useMemo(() => summarizeReview(draft), [draft])
  const themeExams = [...new Set(themes.map(theme => theme.exam_name))].sort()
  const themeYears = [...new Set(themes.filter(theme => themeExam === 'all' || theme.exam_name === themeExam).map(theme => theme.year))].sort((a, b) => b - a)
  const availableThemes = filterEssayThemes(themes, themeExam, themeYear)
  const hasText = analysis.wordCount > 0
  const staleReview = Object.values(draft.checks).some(check => check.revision !== draft.revision)

  useEffect(() => {
    let cancelled = false
    const load = async () => {
      setThemesLoading(true)
      setThemesMessage('')
      try {
        if (!supabase) {
          setThemesMessage('Você está usando a seleção inicial de temas.')
          return
        }
        const { data, error } = await supabase.from('essay_themes').select('slug,exam_name,year,title,instructions,source_url,active').eq('active', true).order('year', { ascending: false }).limit(1000)
        if (error) throw error
        if (cancelled) return
        const loaded = (data || []).map(normalizeEssayTheme).filter(Boolean)
        setThemes(loaded)
        if (!loaded.length) setThemesMessage('Ainda não há temas publicados. Você pode escrever sobre um tema livre.')
      } catch {
        if (!cancelled) {
          setThemes(initialEssayThemes)
          setThemesMessage('Não foi possível atualizar a lista. A seleção inicial de temas continua disponível.')
        }
      } finally {
        if (!cancelled) setThemesLoading(false)
      }
    }
    load()
    return () => { cancelled = true }
  }, [themeRetry])

  useEffect(() => {
    if (initial.error) return
    try {
      window.localStorage.setItem(essayStorageKey, JSON.stringify(draft))
      setSaveMessage('Rascunho salvo neste navegador.')
    } catch {
      setSaveMessage('Não foi possível salvar neste navegador. Baixe uma cópia para guardar seu texto.')
    }
  }, [draft, initial.error])

  const updateWriting = (field, value) => setDraft(old => ({ ...old, [field]: value, theme: field === 'topic' ? null : old.theme, revision: old.revision + 1 }))
  const drawTheme = () => {
    const theme = pickEssayTheme(availableThemes, draft.theme?.slug)
    if (theme) setDraft(old => ({ ...old, topic: theme.title, theme, revision: old.revision + 1 }))
  }
  const updateCheck = (id, value) => setDraft(old => {
    const checks = { ...old.checks }
    if (value) checks[id] = { value, revision: old.revision }
    else delete checks[id]
    return { ...old, checks }
  })
  const download = () => {
    const assessment = reviewQuestions.map(item => {
      const check = draft.checks[item.id]
      const status = check?.revision === draft.revision ? check.value === 'ok' ? 'Sim' : 'Preciso revisar' : 'Ainda não avaliei esta versão'
      return `${item.label} ${status}`
    }).join('\n')
    const source = draft.theme ? `${draft.theme.exam_name} ${draft.theme.year}\n${draft.theme.instructions}\nFonte: ${draft.theme.source_url}\n\n` : ''
    const contents = `${draft.topic || 'Redação'}\n\n${source}${draft.text}\n\nAUTOAVALIAÇÃO\n${assessment}\n\nPRÓXIMOS PASSOS\n${draft.notes}`
    const url = URL.createObjectURL(new Blob([contents], { type: 'text/plain;charset=utf-8' }))
    const link = document.createElement('a')
    link.href = url
    link.download = 'minha-redacao.txt'
    document.body.appendChild(link)
    link.click()
    link.remove()
    window.setTimeout(() => URL.revokeObjectURL(url), 1000)
  }

  return (
    <main className="essay-page">
      <button className="back-link" onClick={onBack}><ArrowLeft size={15} /> Voltar ao início</button>
      <div className="essay-heading"><p className="eyebrow">Escrita e revisão</p><h1>Praticar redação</h1><p>Escreva um texto argumentativo e revise por etapas. Você avalia as ideias; as verificações ajudam na releitura.</p></div>
      <section className="essay-panel essay-theme-panel" aria-labelledby="essay-theme-title">
        <div className="essay-theme-heading"><div><p className="eyebrow">Encontre seu próximo desafio</p><h2 id="essay-theme-title">Sortear um tema</h2></div><Shuffle size={24} /></div>
        <p className="essay-note">Temas reais de provas recentes. Escolha os filtros e sorteie uma proposta. Seu texto permanece no editor ao trocar o tema.</p>
        <div className="essay-theme-controls">
          <label className="essay-field">Prova<select value={themeExam} onChange={event => { setThemeExam(event.target.value); setThemeYear('all') }} disabled={themesLoading}><option value="all">Todas as provas</option>{themeExams.map(exam => <option key={exam} value={exam}>{exam}</option>)}</select></label>
          <label className="essay-field">Ano<select value={themeYear} onChange={event => setThemeYear(event.target.value)} disabled={themesLoading}><option value="all">Todos os anos</option>{themeYears.map(year => <option key={year} value={year}>{year}</option>)}</select></label>
          <button className="button primary" onClick={drawTheme} disabled={themesLoading || !availableThemes.length}><Shuffle size={17} /> {themesLoading ? 'Carregando temas…' : 'Sortear tema'}</button>
        </div>
        {!themesLoading && <p className="essay-note">{availableThemes.length} {availableThemes.length === 1 ? 'tema disponível' : 'temas disponíveis'} para estes filtros.</p>}
        {themesMessage && <div className="essay-theme-status"><p role="status">{themesMessage}</p>{supabase && <button className="text-button" onClick={() => setThemeRetry(old => old + 1)} disabled={themesLoading}>Atualizar temas</button>}</div>}
        {draft.theme && <div className="essay-selected-theme"><span className="essay-progress">{draft.theme.exam_name} · {draft.theme.year}</span><h3>{draft.theme.title}</h3><p>{draft.theme.instructions}</p><a href={draft.theme.source_url} target="_blank" rel="noopener noreferrer">Abrir proposta ou comentário oficial ↗</a><small>Orientações resumidas para estudo. Consulte os textos de apoio e as instruções completas na fonte oficial.</small></div>}
      </section>
      <div className="essay-layout">
        <section className="essay-panel essay-editor" aria-labelledby="essay-writing-title">
          <div className="essay-panel-title"><BookOpen size={19} /><h2 id="essay-writing-title">Seu texto</h2></div>
          <label className="essay-field">Tema ou proposta<input value={draft.topic} maxLength={300} onChange={event => updateWriting('topic', event.target.value)} placeholder="Digite o tema que você quer praticar" /></label>
          <label className="essay-field">Redação<textarea className="essay-textarea" value={draft.text} maxLength={60000} onChange={event => updateWriting('text', event.target.value)} placeholder="Comece sua redação aqui. Use Enter para separar os parágrafos." spellCheck lang="pt-BR" /></label>
          <div className="essay-metrics"><span><b>{analysis.wordCount}</b> palavras</span><span><b>{analysis.paragraphCount}</b> parágrafos</span><span><b>{analysis.characterCount}</b> caracteres</span></div>
          <div className="essay-save-row"><p role="status">{saveMessage}</p><button className="button secondary small" onClick={download} disabled={!hasText}>Baixar texto e revisão</button></div>
          <p className="essay-note">O rascunho fica neste navegador e dispositivo. Para guardar uma cópia fora dele, baixe o texto.</p>
        </section>
        <aside className="essay-panel essay-automatic" aria-labelledby="essay-checks-title">
          <h2 id="essay-checks-title">Verificações automáticas</h2>
          {!hasText ? <p className="essay-empty">Comece a escrever para ver as verificações.</p> : <>
            <h3>Palavras frequentes</h3>
            <p className="essay-note">Palavras com pelo menos 4 letras e 3 ocorrências. Artigos, preposições e outros termos comuns são filtrados. Repetir uma palavra pode ser necessário: confira o contexto.</p>
            {analysis.repeatedWords.length ? <ul className="essay-word-list">{analysis.repeatedWords.map(item => <li key={item.word}><span>{item.word}</span><b>{item.count} vezes</b></li>)}</ul> : <p className="essay-empty">Nenhuma palavra atingiu esse limite.</p>}
            <h3>Repetições seguidas</h3>
            {analysis.consecutiveWords.length ? <ul className="essay-hints">{analysis.consecutiveWords.map(item => <li key={item.word}>Confira “{item.word} {item.word}” ({item.count} {item.count === 1 ? 'ocorrência' : 'ocorrências'}).</li>)}</ul> : <p className="essay-empty">Nenhuma repetição seguida encontrada.</p>}
            <h3>Espaçamento</h3><p className="essay-empty">{analysis.extraSpaces ? `${analysis.extraSpaces} trechos com espaços ou tabulações seguidos. Confira se são intencionais.` : 'Nenhum espaço duplicado encontrado.'}</p>
          </>}
          <p className="essay-note">Estas verificações observam o texto digitado. Não atribuem nota nem verificam a qualidade dos argumentos. A contagem de parágrafos considera as quebras de linha, não as linhas visuais do editor.</p>
        </aside>
      </div>
      <section className="essay-panel essay-review" aria-labelledby="essay-review-title">
        <div className="essay-review-heading"><div><p className="eyebrow">Leia e confira</p><h2 id="essay-review-title">Autoavaliação guiada</h2></div><span className="essay-progress">{review.evaluated} de {reviewQuestions.length} itens avaliados</span></div>
        <p className="essay-note">Use as perguntas como roteiro geral e consulte as instruções da sua prova. As respostas são sua avaliação, sem nota automática.</p>
        {staleReview && <p className="essay-change-notice" role="status">O texto ou o tema mudou. Reavalie os itens para que eles correspondam à versão atual.</p>}
        <div className="essay-review-grid">{reviewQuestions.map(item => {
          const currentCheck = draft.checks[item.id]
          const value = currentCheck?.revision === draft.revision ? currentCheck.value : ''
          return <div className="essay-review-item" key={item.id}><h3>{item.label}</h3><p>{item.prompt}</p><label className="essay-field"><span className="essay-select-label">Sua avaliação</span><select aria-label={item.label} value={value} onChange={event => updateCheck(item.id, event.target.value)} disabled={!hasText}><option value="">Ainda não avaliei</option><option value="ok">Sim</option><option value="review">Preciso revisar</option></select></label><small>{item.tip}</small></div>
        })}</div>
        <div className="essay-summary"><h3><Check size={18} /> Seu plano de revisão</h3>
          {!hasText ? <p>Escreva seu texto e responda às perguntas para montar seu plano.</p> : <>
            <p>{review.confirmed} {review.confirmed === 1 ? 'item confirmado' : 'itens confirmados'} por você. {reviewQuestions.length - review.evaluated} {reviewQuestions.length - review.evaluated === 1 ? 'item ainda precisa' : 'itens ainda precisam'} de avaliação.</p>
            {review.priorities.length ? <ul>{review.priorities.map(item => <li key={item.id}><b>{item.label}</b> {item.tip}</li>)}</ul> : review.evaluated === reviewQuestions.length ? <p>Você confirmou todos os itens. Faça uma última leitura e confira as exigências da proposta antes de concluir.</p> : <p>Marque “Preciso revisar” nos itens que deseja trabalhar; as sugestões aparecerão aqui.</p>}
          </>}
          <label className="essay-field">Minhas anotações para a reescrita<textarea rows={3} value={draft.notes} maxLength={5000} onChange={event => setDraft(old => ({ ...old, notes: event.target.value }))} placeholder="Anote os trechos e as ideias que deseja melhorar." /></label>
        </div>
      </section>
    </main>
  )
}
