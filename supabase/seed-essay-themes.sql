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


-- Ampliação: UNICAMP 2024–2026, UFPR 2025–2026 e UNESP 2024–2026.
-- Títulos descritivos para propostas sem título; instruções resumidas.
insert into public.essay_themes(slug,exam_name,year,title,instructions,source_url,active) values
('unicamp-2026-redacao-proposta-1','UNICAMP',2026,'Machosfera e combate à violência contra mulheres — depoimento pessoal','Proposta 1. Assuma o papel de um jovem jornalista que investigou uma comunidade virtual. Narre um episódio violento presenciado e sustente o combate à misoginia on-line. Mobilize criticamente a coletânea do caderno.','https://www.comvest.unicamp.br/vest2026/F2/provas/2026F2redporingcn.pdf#page=3',true),
('unicamp-2026-redacao-proposta-2','UNICAMP',2026,'A importância histórica da CLT — nota de esclarecimento','Proposta 2. Como integrante do RH, dirija uma nota institucional aos estagiários. Explique o regime celetista, seu significado histórico e seus efeitos no Brasil. Empregue registro formal e os textos da coletânea.','https://www.comvest.unicamp.br/vest2026/F2/provas/2026F2redporingcn.pdf#page=4',true),
('unicamp-2025-redacao-proposta-1','UNICAMP',2025,'Igualdade de gênero no Congresso — apresentação de projeto de lei','Proposta 1. Represente um coletivo pela igualdade de gênero. Redija a apresentação de um projeto de lei para leitura na Câmara, discutindo os prejuízos da representação desigual e a relação entre paridade e justiça social. Consulte a coletânea.','https://www.comvest.unicamp.br/vest2025/F2/provas/2025F2redporingcn.pdf#page=3',true),
('unicamp-2025-redacao-proposta-2','UNICAMP',2025,'Apostas por celular entre estudantes — comunicado aos responsáveis','Proposta 2. Escreva como diretor de escola pública aos responsáveis pelos estudantes. Exponha os efeitos das apostas no comportamento escolar e os riscos para crianças e pré-adolescentes, articulando a coletânea.','https://www.comvest.unicamp.br/vest2025/F2/provas/2025F2redporingcn.pdf#page=4',true),
('unicamp-2024-redacao-proposta-1','UNICAMP',2024,'Exploração do trabalho doméstico — carta-denúncia','Proposta 1. Dirija ao Ministério Público do Trabalho uma carta sobre uma situação de exploração doméstica testemunhada na casa de um colega. Descreva a possível violação e defenda a trabalhadora com apoio crítico na coletânea.','https://www.comvest.unicamp.br/vest2024/F2/provas/2024F2redporingcn.pdf#page=3',true),
('unicamp-2024-redacao-proposta-2','UNICAMP',2024,'Acolhimento de refugiados — discurso diplomático','Proposta 2. Represente o Brasil em uma simulação da ONU. Produza um discurso que conteste a posição húngara contrária ao acolhimento de refugiados e defenda a recepção dessas pessoas. Utilize os materiais da prova.','https://www.comvest.unicamp.br/vest2024/F2/provas/2024F2redporingcn.pdf#page=4',true),
('ufpr-2026-redacao-proposta-1','UFPR',2026,'Maternidade tardia e redução dos nascimentos — análise de infográficos','Questão 1. Analise os dois infográficos oficiais em um texto informativo-analítico de 10 a 12 linhas. Relacione os fenômenos, apresente o panorama brasileiro e formule duas hipóteses explicativas. Os gráficos devem ser consultados na fonte.','https://servicos.nc.ufpr.br/documentos/ps2026/provas/2fase/001-CPT.pdf#page=3',true),
('ufpr-2026-redacao-proposta-2','UFPR',2026,'Inteligência artificial e experiência humana — texto expositivo','Questão 2. Apresente as ideias de Andrew Smart na entrevista reproduzida no caderno. Em 8 a 10 linhas e discurso indireto, atribua as informações à fonte e relacione as respostas às perguntas. Consulte a entrevista antes de escrever.','https://servicos.nc.ufpr.br/documentos/ps2026/provas/2fase/001-CPT.pdf#page=4',true),
('ufpr-2026-redacao-proposta-3','UFPR',2026,'Belo Monte e comunidades do Xingu — resumo','Questão 3. Resuma a reportagem do caderno em 10 a 13 linhas. Explicite o assunto central e as questões associadas aos efeitos das barragens e às comunidades locais. Preserve o gênero resumo, sem acrescentar opinião pessoal.','https://servicos.nc.ufpr.br/documentos/ps2026/provas/2fase/001-CPT.pdf#page=5',true),
('ufpr-2025-redacao-proposta-1','UFPR',2025,'Violência verbal nas redes — resumo de texto','Questão 1. Leia o ensaio de Márcia Tiburi apresentado no caderno. Em um resumo de 12 a 15 linhas, recupere a tese e sua sustentação argumentativa, respeitando as características do gênero.','https://servicos.nc.ufpr.br/documentos/ps2025/provas/2fase/001-CPT.pdf#page=3',true),
('ufpr-2025-redacao-proposta-2','UFPR',2025,'Preservação de Brasília e desenvolvimento urbano — argumentação','Questão 2. Em 12 a 15 linhas, sintetize as posições do debate urbanístico apresentado e defenda sua própria posição com um argumento adicional. Produza um texto expositivo-argumentativo a partir da leitura da fonte.','https://servicos.nc.ufpr.br/documentos/ps2025/provas/2fase/001-CPT.pdf#page=4',true),
('ufpr-2025-redacao-proposta-3','UFPR',2025,'Reabertura de atividades — elaboração de comunicado','Questão 3. Crie um ou dois parágrafos de abertura para o comunicado cujo encerramento está no caderno. Identifique os destinatários e acrescente informações que se articulem com aquele fecho. Escreva de 8 a 10 linhas e leia a finalização original.','https://servicos.nc.ufpr.br/documentos/ps2025/provas/2fase/001-CPT.pdf#page=5',true),
('unesp-2026-redacao','UNESP',2026,'Vivemos hoje uma epidemia da solidão?','Elabore uma dissertação argumentativa em português formal. Defenda uma posição sobre a solidão contemporânea, articulando os textos de apoio e seus conhecimentos. Consulte a proposta e a coletânea no caderno original Vunesp, disponível em cópia pública.','https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/2026/2fase/UNESP2026_2fase_2dia_prova.pdf#page=17',true),
('unesp-2025-redacao','UNESP',2025,'Medicalização da vida: a quem interessa?','Escreva uma dissertação argumentativa em português formal sobre os interesses envolvidos na medicalização da vida. Sustente seu ponto de vista com a coletânea e seus conhecimentos. Consulte o caderno original Vunesp, disponível em cópia pública.','https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/2025/2fase/UNESP2025_2fase_2dia_prova.pdf#page=15',true),
('unesp-2024-redacao','UNESP',2024,'É possível um futuro off-line?','Produza uma dissertação argumentativa em português formal discutindo a possibilidade de uma vida futura sem conexão digital. Confronte perspectivas e fundamente sua posição com a coletânea. Consulte o caderno original Vunesp, disponível em cópia pública.','https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/2024/2fase/UNESP2024_2fase_prova.pdf#page=47',true)
on conflict (slug) do update set exam_name=excluded.exam_name,year=excluded.year,title=excluded.title,instructions=excluded.instructions,source_url=excluded.source_url,active=excluded.active;

commit;
