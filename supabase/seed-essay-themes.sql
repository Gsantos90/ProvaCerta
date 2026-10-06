-- ProvaCerta: temas recentes de redação, conferidos em fontes oficiais.
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
('enem-2025-redacao','ENEM',2025,'Perspectivas acerca do envelhecimento na sociedade brasileira','Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.','https://download.inep.gov.br/enem/provas_e_gabaritos/2025_PV_impresso_D1_CD10_ampliada.pdf'),
('enem-2024-redacao','ENEM',2024,'Desafios para a valorização da herança africana no Brasil','Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.','https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2025_cartilha_do_participante.pdf'),
('enem-2023-redacao','ENEM',2023,'Desafios para o enfrentamento da invisibilidade do trabalho de cuidado realizado pela mulher no Brasil','Produza um texto dissertativo-argumentativo em português formal, defendendo seu ponto de vista sobre o tema. Inclua uma proposta de intervenção que respeite os direitos humanos. Leia a coletânea e as instruções completas na fonte oficial.','https://download.inep.gov.br/publicacoes/institucionais/avaliacoes_e_exames_da_educacao_basica/a_redacao_no_enem_2024_cartilha_do_participante.pdf'),
('fuvest-2026-redacao-proposta-1','FUVEST',2026,'O perdão é um ato que pode ser condicionado ou limitado','Proposta 1: desenvolva um texto dissertativo-argumentativo sobre o perdão e suas possíveis condições e limites. Defenda uma posição com argumentos, considerando a coletânea oficial. Esta seleção corresponde à proposta dissertativa da edição de 2026.','https://www.fuvest.br/wp-content/uploads/fuvest2026-fase2-dia1-abordagem-esperada-redacao.pdf'),
('fuvest-2025-redacao','FUVEST',2025,'As relações sociais por meio da solidariedade','Escreva uma dissertação argumentativa sobre a solidariedade nas relações sociais. Articule seu ponto de vista com a coletânea e com conhecimentos pertinentes. Consulte a fonte oficial para conhecer os textos de apoio e as orientações da banca.','https://www.fuvest.br/wp-content/uploads/fuvest_2025_guia_respostas.pdf'),
('fuvest-2024-redacao','FUVEST',2024,'Educação básica e formação profissional: entre a multitarefa e a reflexão','Desenvolva uma dissertação relacionando educação básica, formação profissional, multitarefa e reflexão. Analise criticamente essas relações e consulte a coletânea e a abordagem esperada na fonte oficial.','https://www.fuvest.br/wp-content/uploads/fuvest_2024_2024.01.22_RESPOSTAS_USP_Guia.pdf#page=4'),
('uerj-2026-redacao','UERJ',2026,'É possível, nos dias atuais, ser fiel a si mesmo, como aconselha Polônio?','Leia Hamlet, de William Shakespeare, e considere os conselhos de Polônio a Laertes. Defenda, em uma dissertação argumentativa, sua resposta à questão proposta, relacionando a obra aos dias atuais. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/55.pdf'),
('uerj-2025-redacao','UERJ',2025,'O governo de uma nação pode exercer controle sobre o corpo feminino com base em princípios religiosos?','A proposta parte do romance O conto da aia, de Margaret Atwood. Leia a obra e desenvolva uma dissertação argumentativa respondendo à questão, com argumentos compatíveis com a leitura. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/50.pdf'),
('uerj-2024-redacao','UERJ',2024,'Qual seria, para você, a moral da história narrada em O menino do pijama listrado?','Leia O menino do pijama listrado, de John Boyne, e desenvolva uma dissertação argumentativa sobre a moral que você identifica na história. Sustente sua interpretação com elementos do romance. Consulte o comentário oficial da banca.','https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/46.pdf')
on conflict (slug) do update set
  exam_name = excluded.exam_name,
  year = excluded.year,
  title = excluded.title,
  instructions = excluded.instructions,
  source_url = excluded.source_url;

commit;
