from pathlib import Path
import json
rows=[]
def add(exam,year,title,instructions,url,slug=None):
 rows.append(dict(slug=slug or f'{exam.lower()}-{year}-redacao',exam_name=exam,year=year,title=title,instructions=instructions,source_url=url,active=True))
enem='Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.'
add('ENEM',2025,'Perspectivas acerca do envelhecimento na sociedade brasileira',enem,'https://download.inep.gov.br/enem/provas_e_gabaritos/2025_PV_impresso_D1_CD10_ampliada.pdf')
add('ENEM',2024,'Desafios para a valorização da herança africana no Brasil',enem,'https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2025_cartilha_do_participante.pdf')
add('ENEM',2023,'Desafios para o enfrentamento da invisibilidade do trabalho de cuidado realizado pela mulher no Brasil',enem,'https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2024_cartilha_do_participante.pdf')
add('FUVEST',2026,'O perdão é um ato que pode ser condicionado ou limitado','Proposta 1: desenvolva um texto dissertativo-argumentativo sobre o perdão e suas possíveis condições e limites. Defenda uma posição com argumentos, considerando a coletânea oficial. Esta seleção corresponde à proposta dissertativa da edição de 2026.','https://www.fuvest.br/wp-content/uploads/fuvest2026-fase2-dia1-abordagem-esperada-redacao.pdf','fuvest-2026-redacao-proposta-1')
add('FUVEST',2025,'As relações sociais por meio da solidariedade','Escreva uma dissertação argumentativa sobre a solidariedade nas relações sociais. Articule seu ponto de vista com a coletânea e com conhecimentos pertinentes. Consulte a fonte oficial para conhecer os textos de apoio e as orientações da banca.','https://www.fuvest.br/wp-content/uploads/fuvest_2025_guia_respostas.pdf')
add('FUVEST',2024,'Educação básica e formação profissional: entre a multitarefa e a reflexão','Desenvolva uma dissertação relacionando educação básica, formação profissional, multitarefa e reflexão. Analise criticamente essas relações e consulte a coletânea e a abordagem esperada na fonte oficial.','https://www.fuvest.br/wp-content/uploads/fuvest_2024_2024.01.22_RESPOSTAS_USP_Guia.pdf#page=4')
add('UERJ',2026,'É possível, nos dias atuais, ser fiel a si mesmo, como aconselha Polônio?','Leia Hamlet, de William Shakespeare, e considere os conselhos de Polônio a Laertes. Defenda, em uma dissertação argumentativa, sua resposta à questão proposta, relacionando a obra aos dias atuais. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/55.pdf')
add('UERJ',2025,'O governo de uma nação pode exercer controle sobre o corpo feminino com base em princípios religiosos?','A proposta parte do romance O conto da aia, de Margaret Atwood. Leia a obra e desenvolva uma dissertação argumentativa respondendo à questão, com argumentos compatíveis com a leitura. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/50.pdf')
add('UERJ',2024,'Qual seria, para você, a moral da história narrada em O menino do pijama listrado?','Leia O menino do pijama listrado, de John Boyne, e desenvolva uma dissertação argumentativa sobre a moral que você identifica na história. Sustente sua interpretação com elementos do romance. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/46.pdf')
Path('src/lib/essayThemes.js').write_text('''// Temas reais; orientações resumidas para estudo. A coletânea fica na fonte oficial.
export const initialEssayThemes = '''+json.dumps(rows,ensure_ascii=False,indent=2)+'''

export function normalizeEssayTheme(value) {
  if (!value || typeof value.slug !== 'string' || typeof value.title !== 'string' || typeof value.exam_name !== 'string' || !Number.isInteger(value.year)) return null
  if (value.active === false || value.year < 2000 || value.year > 2100 || !value.title.trim()) return null
  let sourceUrl
  try {
    sourceUrl = new URL(value.source_url)
    if (sourceUrl.protocol !== 'https:') return null
  } catch { return null }
  return { slug: value.slug.slice(0, 150), exam_name: value.exam_name.slice(0, 80), year: value.year, title: value.title.slice(0, 300), instructions: typeof value.instructions === 'string' ? value.instructions.slice(0, 4000) : '', source_url: sourceUrl.href, active: true }
}

export function filterEssayThemes(themes, exam = 'all', year = 'all') {
  return themes.filter(theme => (exam === 'all' || theme.exam_name === exam) && (year === 'all' || String(theme.year) === year))
}

export function pickEssayTheme(themes, currentSlug, random = Math.random) {
  if (!themes.length) return null
  const others = themes.filter(theme => theme.slug !== currentSlug)
  const pool = others.length ? others : themes
  return pool[Math.min(pool.length - 1, Math.max(0, Math.floor(random() * pool.length)))]
}
''',encoding='utf-8')
def literal(value):return "'"+value.replace("'","''")+"'"
header='''-- ProvaCerta: temas recentes de redação, conferidos em fontes oficiais.
-- ENEM 2023–2025; FUVEST 2024–2026 (2026: proposta 1); UERJ 2024–2026.
-- Títulos dos temas oficiais; orientações resumidas para estudo.
-- Textos motivadores e comentários completos nos links das bancas.
-- Execute TODO o arquivo no SQL Editor. Reexecutável; IDs preservados.
-- Esta tabela contém somente propostas públicas. Rascunhos não são enviados ao banco.

begin;

create table if not exists public.essay_themes (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  exam_name text not null,
  year integer not null check (year between 2000 and 2100),
  title text not null,
  instructions text not null default '',
  source_url text not null check (source_url like 'https://%'),
  active boolean not null default true,
  created_at timestamptz not null default now()
);

alter table public.essay_themes enable row level security;
grant select on public.essay_themes to anon, authenticated;
drop policy if exists "Public can read active essay themes" on public.essay_themes;
create policy "Public can read active essay themes" on public.essay_themes
  for select to anon, authenticated using (active = true);

insert into public.essay_themes (slug,exam_name,year,title,instructions,source_url)
values
'''
values=[ '('+','.join([literal(q['slug']),literal(q['exam_name']),str(q['year']),literal(q['title']),literal(q['instructions']),literal(q['source_url'])])+')' for q in rows]
footer='''
on conflict (slug) do update set
  exam_name = excluded.exam_name,
  year = excluded.year,
  title = excluded.title,
  instructions = excluded.instructions,
  source_url = excluded.source_url;

commit;
'''
Path('supabase/seed-essay-themes.sql').write_text(header+',\n'.join(values)+footer,encoding='utf-8')
p=Path('src/main.jsx');s=p.read_text(encoding='utf-8').replace('onClick={handleEssay}>Redação</a>','onClick={handleEssay}>Praticar redação</a>');p.write_text(s,encoding='utf-8')
p=Path('src/lib/essayReview.js');s=p.read_text(encoding='utf-8');s="import { normalizeEssayTheme } from './essayThemes.js'\n\n"+s;s=s.replace("revision: 0, checks: {}", "revision: 0, checks: {}, theme: null");s=s.replace('  for (const { id } of reviewQuestions)', '  draft.theme = normalizeEssayTheme(parsed.theme)\n  if (draft.theme?.title !== draft.topic) draft.theme = null\n  for (const { id } of reviewQuestions)');p.write_text(s,encoding='utf-8')
p=Path('src/EssayPractice.jsx');s=p.read_text(encoding='utf-8')
s=s.replace("import { ArrowLeft, BookOpen, Check }", "import { ArrowLeft, BookOpen, Check, Shuffle }")
s=s.replace("from './lib/essayReview'", "from './lib/essayReview'\nimport { initialEssayThemes, normalizeEssayTheme, filterEssayThemes, pickEssayTheme } from './lib/essayThemes'\nimport { supabase } from './lib/supabase'")
s=s.replace("  const [draft, setDraft]", "  const [themes, setThemes] = useState(initialEssayThemes)\n  const [themesLoading, setThemesLoading] = useState(true)\n  const [themesMessage, setThemesMessage] = useState('')\n  const [themeRetry, setThemeRetry] = useState(0)\n  const [themeExam, setThemeExam] = useState('all')\n  const [themeYear, setThemeYear] = useState('all')\n  const [draft, setDraft]")
s=s.replace('  const hasText =', "  const themeExams = [...new Set(themes.map(theme => theme.exam_name))].sort()\n  const themeYears = [...new Set(themes.filter(theme => themeExam === 'all' || theme.exam_name === themeExam).map(theme => theme.year))].sort((a, b) => b - a)\n  const availableThemes = filterEssayThemes(themes, themeExam, themeYear)\n  const hasText =")
s=s.replace('  useEffect(() => {\n    if (initial.error)', '''  useEffect(() => {
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
    if (initial.error)''',1)
s=s.replace("  const updateWriting = (field, value) => setDraft(old => ({ ...old, [field]: value, revision: old.revision + 1 }))", "  const updateWriting = (field, value) => setDraft(old => ({ ...old, [field]: value, theme: field === 'topic' ? null : old.theme, revision: old.revision + 1 }))\n  const drawTheme = () => {\n    const theme = pickEssayTheme(availableThemes, draft.theme?.slug)\n    if (theme) setDraft(old => ({ ...old, topic: theme.title, theme, revision: old.revision + 1 }))\n  }")
s=s.replace("const contents = `${draft.topic || 'Redação'}\\n\\n${draft.text}", "const source = draft.theme ? `${draft.theme.exam_name} ${draft.theme.year}\\n${draft.theme.instructions}\\nFonte: ${draft.theme.source_url}\\n\\n` : ''\n    const contents = `${draft.topic || 'Redação'}\\n\\n${source}${draft.text}")
s=s.replace('      <div className="essay-layout">', '''      <section className="essay-panel essay-theme-panel" aria-labelledby="essay-theme-title">
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
      <div className="essay-layout">''',1)
p.write_text(s,encoding='utf-8')
p=Path('src/styles.css');s=p.read_text(encoding='utf-8');s+='''
.essay-theme-panel{margin-bottom:24px}.essay-theme-heading{display:flex;align-items:center;justify-content:space-between;gap:16px}.essay-theme-heading h2{margin:0}.essay-theme-heading>svg{color:var(--blue)}.essay-theme-controls{display:grid;grid-template-columns:1fr 1fr auto;align-items:end;gap:16px;margin-top:18px}.essay-theme-controls .essay-field{margin:0}.essay-theme-controls>.button{min-height:49px}.essay-theme-controls>.button:disabled{opacity:.55;cursor:not-allowed}.essay-theme-status{display:flex;gap:14px;align-items:center}.essay-theme-status p{font-size:12px;line-height:1.6;color:#6a7890}.essay-selected-theme{background:#f5f8ff;border:1px solid #dde6fa;padding:22px;border-radius:12px;margin-top:20px}.essay-selected-theme .essay-progress{display:inline-block}.essay-selected-theme h3{font-size:19px;line-height:1.5;margin:14px 0 10px}.essay-selected-theme p{font-size:13px;color:#596781;line-height:1.7}.essay-selected-theme a{font-size:12px;color:#456ac0}.essay-selected-theme small{display:block;color:#7b8799;font-size:11px;line-height:1.6;margin-top:12px}
@media(max-width:650px){.essay-theme-controls{grid-template-columns:1fr 1fr}.essay-theme-controls>.button{grid-column:1/-1}.essay-selected-theme{padding:18px}.essay-selected-theme h3{font-size:17px}.essay-theme-status{align-items:flex-start;flex-direction:column;gap:0}}
''';p.write_text(s,encoding='utf-8')
print('9 temas oficiais, sorteio com filtros e SQL prontos.')