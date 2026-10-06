from pathlib import Path
Path('src/lib/essayReview.js').write_text('''export const essayStorageKey = 'provacerta-redacao-v1'
export const reviewQuestions = [
  { id: 'tema', label: 'Atendi ao tema?', prompt: 'Meu texto responde à proposta e mantém o foco do início ao fim?', tip: 'Compare cada parágrafo com o tema e retire ideias que desviam da proposta.' },
  { id: 'tese', label: 'Meu ponto de vista está claro?', prompt: 'A introdução apresenta o assunto e a ideia que vou defender?', tip: 'Reescreva sua ideia central em uma frase e confira se ela aparece na introdução.' },
  { id: 'argumentos', label: 'Expliquei meus argumentos?', prompt: 'Apresentei razões, exemplos ou informações e expliquei como sustentam meu ponto de vista?', tip: 'Após cada exemplo, explique por que ele é relevante para a ideia defendida.' },
  { id: 'estrutura', label: 'Organizei os parágrafos?', prompt: 'Há introdução, desenvolvimento e conclusão, com uma ideia principal em cada parágrafo?', tip: 'Leia a primeira frase de cada parágrafo e confira a sequência das ideias.' },
  { id: 'coesao', label: 'Conectei as ideias?', prompt: 'As frases e os parágrafos se conectam com clareza, sem repetições desnecessárias?', tip: 'Confira se os conectivos expressam a relação desejada: contraste, causa, consequência ou conclusão.' },
  { id: 'conclusao', label: 'Concluí meu raciocínio?', prompt: 'A conclusão retoma o ponto de vista e encerra o texto de acordo com a proposta?', tip: 'Confira as instruções da sua prova e evite introduzir um argumento novo no encerramento.' },
  { id: 'linguagem', label: 'Revisei a linguagem?', prompt: 'Reli o texto procurando problemas de pontuação, concordância, grafia e frases confusas?', tip: 'Leia em voz alta e confira os trechos em que precisar parar para entender a frase.' },
]
const ignoredWords = new Set('a à às ao aos as o os um uma uns umas de do da dos das em no na nos nas e ou mas que se por para com sem sob sobre entre até como quando onde porque pois então também ainda já não sim muito mais menos esse essa esses essas este esta estes estas isso isto aquele aquela aqueles aquelas seu sua seus suas meu minha meus minhas nosso nossa nossos nossas ele ela eles elas eu nós você vocês é são foi foram ser estar está estão tem têm há pelo pela pelos pelas'.split(' '))

export function analyzeEssay(text = '') {
  const normalized = text.normalize('NFC')
  const tokens = normalized.match(/[\\p{L}\\p{N}]+(?:[-’'][\\p{L}\\p{N}]+)*/gu) || []
  const words = tokens.map(word => word.toLocaleLowerCase('pt-BR'))
  const paragraphs = normalized.split(/\\r?\\n+/).map(part => part.trim()).filter(Boolean)
  const frequencies = new Map()
  const consecutive = new Map()
  words.forEach(word => {
    if (word.length >= 4 && !ignoredWords.has(word)) frequencies.set(word, (frequencies.get(word) || 0) + 1)
  })
  // Não compara palavras entre parágrafos ou frases diferentes.
  normalized.split(/[.!?;:\\r\\n]+/).forEach(fragment => {
    const items = (fragment.match(/[\\p{L}\\p{N}]+(?:[-’'][\\p{L}\\p{N}]+)*/gu) || []).map(word => word.toLocaleLowerCase('pt-BR'))
    for (let index = 1; index < items.length; index++) {
      if (items[index] === items[index - 1]) consecutive.set(items[index], (consecutive.get(items[index]) || 0) + 1)
    }
  })
  return {
    wordCount: tokens.length,
    paragraphCount: paragraphs.length,
    characterCount: Array.from(normalized).length,
    repeatedWords: [...frequencies].filter(([, count]) => count >= 3).map(([word, count]) => ({ word, count })).sort((a, b) => b.count - a.count || a.word.localeCompare(b.word, 'pt-BR')).slice(0, 10),
    consecutiveWords: [...consecutive].map(([word, count]) => ({ word, count })),
    extraSpaces: (normalized.match(/[^\\S\\r\\n]{2,}/g) || []).length,
  }
}

export function emptyEssay() {
  return { version: 1, topic: '', text: '', notes: '', revision: 0, checks: {} }
}

export function restoreEssay(raw) {
  if (!raw) return emptyEssay()
  const parsed = JSON.parse(raw)
  if (!parsed || parsed.version !== 1 || typeof parsed.text !== 'string' || typeof parsed.topic !== 'string') throw new Error('Rascunho incompatível')
  const draft = { ...emptyEssay(), topic: parsed.topic.slice(0, 300), text: parsed.text.slice(0, 60000), notes: typeof parsed.notes === 'string' ? parsed.notes.slice(0, 5000) : '', revision: Number.isSafeInteger(parsed.revision) && parsed.revision >= 0 ? parsed.revision : 0 }
  for (const { id } of reviewQuestions) {
    const check = parsed.checks?.[id]
    if (check && ['ok', 'review'].includes(check.value) && Number.isSafeInteger(check.revision) && check.revision >= 0) draft.checks[id] = { value: check.value, revision: check.revision }
  }
  return draft
}

export function summarizeReview(draft) {
  const evaluated = reviewQuestions.filter(({ id }) => draft.checks[id]?.revision === draft.revision && ['ok', 'review'].includes(draft.checks[id]?.value))
  return { evaluated: evaluated.length, confirmed: evaluated.filter(({ id }) => draft.checks[id].value === 'ok').length, priorities: evaluated.filter(({ id }) => draft.checks[id].value === 'review') }
}
''',encoding='utf-8')
Path('src/EssayPractice.jsx').write_text('''import React, { useEffect, useMemo, useState } from 'react'
import { ArrowLeft, BookOpen, Check } from 'lucide-react'
import { analyzeEssay, emptyEssay, essayStorageKey, restoreEssay, reviewQuestions, summarizeReview } from './lib/essayReview'

function initialDraft() {
  try { return { draft: restoreEssay(window.localStorage.getItem(essayStorageKey)), error: '' } }
  catch { return { draft: emptyEssay(), error: 'Não foi possível recuperar o rascunho salvo. Você pode escrever e baixar uma cópia; o salvamento está pausado.' } }
}

export default function EssayPractice({ onBack }) {
  const [initial] = useState(initialDraft)
  const [draft, setDraft] = useState(initial.draft)
  const [saveMessage, setSaveMessage] = useState(initial.error || 'Rascunho salvo neste navegador.')
  const analysis = useMemo(() => analyzeEssay(draft.text), [draft.text])
  const review = useMemo(() => summarizeReview(draft), [draft])
  const hasText = analysis.wordCount > 0
  const staleReview = Object.values(draft.checks).some(check => check.revision !== draft.revision)

  useEffect(() => {
    if (initial.error) return
    try {
      window.localStorage.setItem(essayStorageKey, JSON.stringify(draft))
      setSaveMessage('Rascunho salvo neste navegador.')
    } catch {
      setSaveMessage('Não foi possível salvar neste navegador. Baixe uma cópia para guardar seu texto.')
    }
  }, [draft, initial.error])

  const updateWriting = (field, value) => setDraft(old => ({ ...old, [field]: value, revision: old.revision + 1 }))
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
    }).join('\\n')
    const contents = `${draft.topic || 'Redação'}\\n\\n${draft.text}\\n\\nAUTOAVALIAÇÃO\\n${assessment}\\n\\nPRÓXIMOS PASSOS\\n${draft.notes}`
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
''',encoding='utf-8')
p=Path('src/main.jsx');s=p.read_text(encoding='utf-8')
s=s.replace("import './styles.css'", "import './styles.css'\nimport EssayPractice from './EssayPractice'")
s=s.replace("onAbout={goToAbout}", "onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }}")
marker="  if (screen === 'simulado') {"
assert marker in s
s=s.replace(marker,'''  if (screen === 'essay') {
    return <div className="app-shell"><Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} /><EssayPractice onBack={() => setScreen('home')} /></div>
  }

'''+marker,1)
s=s.replace('function Header({ onHome, onSimulado, onCatalog, onAbout, menuOpen, setMenuOpen })', 'function Header({ onHome, onSimulado, onCatalog, onAbout, onEssay, menuOpen, setMenuOpen })')
s=s.replace('  const handleAbout = (event) => {', '''  const handleEssay = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onEssay?.()
  }
  const handleAbout = (event) => {''',1)
s=s.replace('<a href="#sobre" onClick={handleAbout}>', '<a href="#redacao" onClick={handleEssay}>Redação</a><a href="#sobre" onClick={handleAbout}>',1)
s=s.replace('        <section className="trust-row">', '''        <section className="essay-entry"><div><p className="eyebrow">Pratique também sua escrita</p><h2>Uma redação melhor começa na revisão.</h2><p>Escreva, confira as repetições e monte seu plano de reescrita com uma autoavaliação guiada.</p></div><button className="button primary" onClick={() => { setScreen('essay'); setMenuOpen(false) }}>Praticar redação <ArrowRight size={17} /></button></section>
        <section className="trust-row">''',1)
p.write_text(s,encoding='utf-8')
p=Path('src/styles.css');s=p.read_text(encoding='utf-8');s+='''

/* Redação: escrita e revisão guiada */
.essay-page{max-width:1180px;margin:auto;padding:28px 28px 60px}.essay-heading{margin:20px 0 28px}.essay-heading h1{font:700 34px Manrope;letter-spacing:-1px;margin:6px 0 10px}.essay-heading>p:last-child{color:var(--muted);line-height:1.6;max-width:690px}.essay-layout{display:grid;grid-template-columns:minmax(0,1.8fr) minmax(0,1fr);gap:22px;align-items:start}.essay-panel{background:#fff;border:1px solid var(--line);border-radius:16px;padding:26px;min-width:0}.essay-panel h2{font:700 20px Manrope;margin:0 0 16px}.essay-panel h3{font:700 14px Manrope;color:#35445d;margin:20px 0 10px}.essay-panel-title{display:flex;align-items:center;gap:10px;margin-bottom:20px}.essay-panel-title svg{color:var(--blue)}.essay-panel-title h2{margin:0}.essay-field{display:flex;flex-direction:column;gap:8px;font-size:12px;font-weight:600;color:#485671;margin:16px 0}.essay-field input,.essay-field textarea,.essay-field select{width:100%;font:400 14px/1.65 'DM Sans',sans-serif;background:#fff;color:var(--navy);border:1px solid #dce3ee;border-radius:9px;padding:12px;min-width:0}.essay-field input:focus,.essay-field textarea:focus,.essay-field select:focus{outline:2px solid #4979ed55;outline-offset:2px}.essay-field textarea{resize:vertical}.essay-textarea{min-height:460px;line-height:1.9!important}.essay-metrics{display:flex;flex-wrap:wrap;gap:16px;font-size:12px;color:var(--muted)}.essay-metrics b{color:var(--navy)}.essay-save-row{display:flex;justify-content:space-between;align-items:center;gap:16px;margin-top:18px}.essay-save-row p{font-size:11px;color:#5a6a84;margin:0;line-height:1.5}.essay-note{font-size:12px;color:var(--muted);line-height:1.65}.essay-empty{font-size:13px;color:#596781;line-height:1.65}.essay-word-list{list-style:none;padding:0;margin:12px 0}.essay-word-list li{display:flex;justify-content:space-between;gap:10px;padding:8px 0;border-bottom:1px solid #edf0f4;font-size:12px;overflow-wrap:anywhere}.essay-word-list b{color:#5a6a84;white-space:nowrap}.essay-hints{padding-left:20px;font-size:13px;line-height:1.7;color:#596781;overflow-wrap:anywhere}.essay-review{margin-top:24px}.essay-review-heading{display:flex;justify-content:space-between;align-items:center;gap:20px}.essay-review-heading h2{margin-bottom:0}.essay-progress{padding:9px 12px;background:#eef4ff;color:#4566a0;border-radius:8px;font-size:12px;white-space:nowrap}.essay-review-grid{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin-top:20px}.essay-review-item{border:1px solid var(--line);border-radius:12px;padding:18px;background:#fcfdff}.essay-review-item h3{margin:0 0 9px}.essay-review-item p{font-size:13px;color:#596781;line-height:1.6;margin:0}.essay-review-item small{display:block;color:#7b8799;font-size:11px;line-height:1.6}.essay-review-item select:disabled{opacity:.65;cursor:not-allowed}.essay-select-label{font-size:11px}.essay-summary{margin-top:22px;padding:20px;border-radius:12px;background:#f4f7ff;border:1px solid #e0e8fa}.essay-summary h3{display:flex;gap:8px;align-items:center;margin:0 0 10px}.essay-summary p,.essay-summary li{font-size:13px;color:#52617d;line-height:1.7}.essay-summary ul{padding-left:20px}.essay-change-notice{padding:12px 14px;border-radius:8px;background:#fff7e9;color:#81612c;font-size:12px;line-height:1.6}.essay-entry{display:flex;justify-content:space-between;align-items:center;gap:24px;padding:28px;background:#eef3ff;border:1px solid #e0e8fa;border-radius:16px;margin:0 0 28px}.essay-entry h2{font:700 23px Manrope;margin:5px 0 10px;letter-spacing:-.5px}.essay-entry p:not(.eyebrow){font-size:13px;line-height:1.6;color:#68748a;margin:0;max-width:620px}.essay-entry .button{flex-shrink:0}.essay-save-row button:disabled{opacity:.5;cursor:not-allowed}
@media(max-width:850px){.essay-layout{grid-template-columns:1fr}.essay-entry{align-items:flex-start;flex-direction:column}.essay-automatic{display:block}.essay-textarea{min-height:370px}}
@media(max-width:650px){.essay-page{padding:20px 16px 40px}.essay-heading h1{font-size:28px}.essay-panel{padding:20px 16px}.essay-review-grid{grid-template-columns:1fr}.essay-review-heading,.essay-save-row{align-items:flex-start;flex-direction:column}.essay-save-row .button{width:100%}.essay-entry{padding:22px 18px}.essay-entry h2{font-size:21px}.essay-metrics{gap:12px}}
''';p.write_text(s,encoding='utf-8')
print('Área de redação integrada ao menu e à página inicial.')