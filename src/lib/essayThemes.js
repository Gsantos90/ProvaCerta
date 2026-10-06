// Temas reais; orientações resumidas para estudo. A coletânea fica na fonte oficial.
export const initialEssayThemes = [
  {
    "slug": "enem-2025-redacao",
    "exam_name": "ENEM",
    "year": 2025,
    "title": "Perspectivas acerca do envelhecimento na sociedade brasileira",
    "instructions": "Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.",
    "source_url": "https://download.inep.gov.br/enem/provas_e_gabaritos/2025_PV_impresso_D1_CD10_ampliada.pdf",
    "active": true
  },
  {
    "slug": "enem-2024-redacao",
    "exam_name": "ENEM",
    "year": 2024,
    "title": "Desafios para a valorização da herança africana no Brasil",
    "instructions": "Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.",
    "source_url": "https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2025_cartilha_do_participante.pdf",
    "active": true
  },
  {
    "slug": "enem-2023-redacao",
    "exam_name": "ENEM",
    "year": 2023,
    "title": "Desafios para o enfrentamento da invisibilidade do trabalho de cuidado realizado pela mulher no Brasil",
    "instructions": "Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.",
    "source_url": "https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2024_cartilha_do_participante.pdf",
    "active": true
  },
  {
    "slug": "fuvest-2026-redacao-proposta-1",
    "exam_name": "FUVEST",
    "year": 2026,
    "title": "O perdão é um ato que pode ser condicionado ou limitado",
    "instructions": "Proposta 1: desenvolva um texto dissertativo-argumentativo sobre o perdão e suas possíveis condições e limites. Defenda uma posição com argumentos, considerando a coletânea oficial. Esta seleção corresponde à proposta dissertativa da edição de 2026.",
    "source_url": "https://www.fuvest.br/wp-content/uploads/fuvest2026-fase2-dia1-abordagem-esperada-redacao.pdf",
    "active": true
  },
  {
    "slug": "fuvest-2025-redacao",
    "exam_name": "FUVEST",
    "year": 2025,
    "title": "As relações sociais por meio da solidariedade",
    "instructions": "Escreva uma dissertação argumentativa sobre a solidariedade nas relações sociais. Articule seu ponto de vista com a coletânea e com conhecimentos pertinentes. Consulte a fonte oficial para conhecer os textos de apoio e as orientações da banca.",
    "source_url": "https://www.fuvest.br/wp-content/uploads/fuvest_2025_guia_respostas.pdf",
    "active": true
  },
  {
    "slug": "fuvest-2024-redacao",
    "exam_name": "FUVEST",
    "year": 2024,
    "title": "Educação básica e formação profissional: entre a multitarefa e a reflexão",
    "instructions": "Desenvolva uma dissertação relacionando educação básica, formação profissional, multitarefa e reflexão. Analise criticamente essas relações e consulte a coletânea e a abordagem esperada na fonte oficial.",
    "source_url": "https://www.fuvest.br/wp-content/uploads/fuvest_2024_2024.01.22_RESPOSTAS_USP_Guia.pdf#page=4",
    "active": true
  },
  {
    "slug": "uerj-2026-redacao",
    "exam_name": "UERJ",
    "year": 2026,
    "title": "É possível, nos dias atuais, ser fiel a si mesmo, como aconselha Polônio?",
    "instructions": "Leia Hamlet, de William Shakespeare, e considere os conselhos de Polônio a Laertes. Defenda, em uma dissertação argumentativa, sua resposta à questão proposta, relacionando a obra aos dias atuais. Consulte o comentário oficial da banca.",
    "source_url": "https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/55.pdf",
    "active": true
  },
  {
    "slug": "uerj-2025-redacao",
    "exam_name": "UERJ",
    "year": 2025,
    "title": "O governo de uma nação pode exercer controle sobre o corpo feminino com base em princípios religiosos?",
    "instructions": "A proposta parte do romance O conto da aia, de Margaret Atwood. Leia a obra e desenvolva uma dissertação argumentativa respondendo à questão, com argumentos compatíveis com a leitura. Consulte o comentário oficial da banca.",
    "source_url": "https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/50.pdf",
    "active": true
  },
  {
    "slug": "uerj-2024-redacao",
    "exam_name": "UERJ",
    "year": 2024,
    "title": "Qual seria, para você, a moral da história narrada em O menino do pijama listrado?",
    "instructions": "Leia O menino do pijama listrado, de John Boyne, e desenvolva uma dissertação argumentativa sobre a moral que você identifica na história. Sustente sua interpretação com elementos do romance. Consulte o comentário oficial da banca.",
    "source_url": "https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/46.pdf",
    "active": true
  }
]

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
