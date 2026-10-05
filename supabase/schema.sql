create table if not exists public.exams (
  id uuid primary key default gen_random_uuid(),
  slug text unique not null,
  title text not null,
  source text not null default 'pism',
  year text not null,
  created_at timestamptz not null default now()
);

create table if not exists public.questions (
  id uuid primary key default gen_random_uuid(),
  exam_id uuid not null references public.exams(id) on delete cascade,
  number integer not null,
  subject text not null,
  text text not null,
  support text,
  support_image text,
  options jsonb not null,
  answer text not null check (answer in ('A', 'B', 'C', 'D', 'E')),
  explanation text,
  created_at timestamptz not null default now(),
  unique (exam_id, number)
);

-- Caso a tabela ja exista, adiciona a coluna de explicacao (exibida na revisao).
alter table public.questions add column if not exists explanation text;

create table if not exists public.attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  exam_slug text not null,
  exam_title text not null,
  score integer not null default 0,
  total integer not null default 0,
  answers jsonb not null default '{}'::jsonb,
  completed_at timestamptz not null default now()
);

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conname = 'attempts_score_nonnegative'
      and conrelid = 'public.attempts'::regclass
  ) then
    alter table public.attempts
      add constraint attempts_score_nonnegative check (score >= 0);
  end if;

  if not exists (
    select 1 from pg_constraint
    where conname = 'attempts_total_positive'
      and conrelid = 'public.attempts'::regclass
  ) then
    alter table public.attempts
      add constraint attempts_total_positive check (total > 0);
  end if;

  if not exists (
    select 1 from pg_constraint
    where conname = 'attempts_score_not_greater_than_total'
      and conrelid = 'public.attempts'::regclass
  ) then
    alter table public.attempts
      add constraint attempts_score_not_greater_than_total check (score <= total);
  end if;

  if not exists (
    select 1 from pg_constraint
    where conname = 'attempts_answers_object'
      and conrelid = 'public.attempts'::regclass
  ) then
    alter table public.attempts
      add constraint attempts_answers_object check (jsonb_typeof(answers) = 'object');
  end if;
end $$;

alter table public.exams enable row level security;
alter table public.questions enable row level security;
alter table public.attempts enable row level security;

drop policy if exists "Public can read exams" on public.exams;
create policy "Public can read exams" on public.exams for select using (true);

drop policy if exists "Public can read questions" on public.questions;
create policy "Public can read questions" on public.questions for select using (true);

drop policy if exists "Users can read their attempts" on public.attempts;
create policy "Users can read their attempts" on public.attempts for select using (auth.uid() = user_id);

drop policy if exists "Users can create their attempts" on public.attempts;
create policy "Users can create their attempts" on public.attempts for insert with check (auth.uid() = user_id);

insert into public.exams (slug, title, source, year)
values
  ('pism-2025-1', 'PISM 2025-1', 'pism', '2025-1'),
  ('pism-2025-2', 'PISM 2025-2', 'pism', '2025-2'),
  ('pism-2024-1', 'PISM 2024-1', 'pism', '2024-1'),
  ('pism-2024-2', 'PISM 2024-2', 'pism', '2024-2'),
  ('pism-2023-1', 'PISM 2023-1', 'pism', '2023-1'),
  ('pism-2023-2', 'PISM 2023-2', 'pism', '2023-2'),
  ('bb-2022-a-comercial', 'Banco do Brasil 2022 - Agente Comercial (Prova A)', 'bb', '2022-A'),
  ('bb-2021-a-comercial', 'Banco do Brasil 2021 - Agente Comercial (Prova A)', 'bb', '2021-A'),
  ('bb-2022-tecnologia', 'Banco do Brasil 2022 - Agente de Tecnologia (Microrregião 158 - TI)', 'bb', '2022'),
  ('bb-2021-tecnologia', 'Banco do Brasil 2021 - Agente de Tecnologia (Microrregião 16 DF-TI)', 'bb', '2021'),
  ('cnu-2024-bloco1-manha', 'CNU 2024 - Bloco 1 (Manhã) - Conhecimentos Gerais', 'cnu', '2024'),
  ('cnu-2024-bloco1-tarde', 'CNU 2024 - Bloco 1 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2024-bloco3-tarde', 'CNU 2024 - Bloco 3 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2024-bloco4-tarde', 'CNU 2024 - Bloco 4 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2024-bloco5-tarde', 'CNU 2024 - Bloco 5 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2024-bloco6-tarde', 'CNU 2024 - Bloco 6 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2024-bloco7-tarde', 'CNU 2024 - Bloco 7 (Tarde) - Conhecimentos Específicos', 'cnu', '2024'),
  ('cnu-2025-bloco7-tarde', 'CNU 2025 (2ª Edição) - Bloco 7 (Tarde) - Justiça e Defesa', 'cnu', '2025'),
  ('cnu-2025-bloco8-tarde', 'CNU 2025 (2ª Edição) - Bloco 8 (Tarde) - Intermediário - Saúde', 'cnu', '2025'),
  ('cnu-2025-bloco1-tarde', 'CNU 2025 (2ª Edição) - Bloco 1 (Tarde) - Seguridade Social', 'cnu', '2025'),
  ('cnu-2025-bloco2-tarde', 'CNU 2025 (2ª Edição) - Bloco 2 (Tarde) - Cultura e Educação', 'cnu', '2025'),
  ('cnu-2025-bloco3-tarde', 'CNU 2025 (2ª Edição) - Bloco 3 (Tarde) - Ciências, Dados e Tecnologia', 'cnu', '2025'),
  ('cnu-2025-bloco4-tarde', 'CNU 2025 (2ª Edição) - Bloco 4 (Tarde) - Engenharias e Arquitetura', 'cnu', '2025'),
  ('cnu-2025-bloco5-tarde', 'CNU 2025 (2ª Edição) - Bloco 5 (Tarde) - Administração', 'cnu', '2025'),
  ('cnu-2025-bloco6-tarde', 'CNU 2025 (2ª Edição) - Bloco 6 (Tarde) - Desenvolvimento Socioeconômico', 'cnu', '2025'),
  ('cnu-2025-bloco9-tarde', 'CNU 2025 (2ª Edição) - Bloco 9 (Tarde) - Intermediário - Regulação', 'cnu', '2025'),
  ('enem-2024', 'ENEM 2024 - Prova Objetiva', 'enem', '2024'),
  ('oab-45-primeira-fase', 'OAB 45º Exame de Ordem Unificado (1ª fase)', 'oab', '2025'),
  ('oab-44-primeira-fase', 'OAB 44º Exame de Ordem Unificado (1ª fase)', 'oab', '2025'),
  ('oab-43-primeira-fase', 'OAB 43º Exame de Ordem Unificado (1ª fase)', 'oab', '2025'),
  ('oab-46-primeira-fase', 'OAB 46º Exame de Ordem Unificado (1ª fase)', 'oab', '2026'),
  ('oab-47-primeira-fase', 'OAB 47º Exame de Ordem Unificado (1ª fase)', 'oab', '2026'),
  ('pmerj-2024-soldado', 'PMERJ 2024 - Soldado Policial Militar Classe C', 'pmerj', '2024'),
  ('correios-2024-carteiro', 'Correios 2024 - Agente de Correios - Carteiro', 'correios', '2024'),
  ('caixa-2024-tecnico-bancario', 'CAIXA 2024 - Técnico Bancário Novo', 'caixa', '2024'),
  ('pc-rj-2024-investigador', 'Polícia Civil RJ 2022 - Investigador Policial de 3ª Classe', 'pc', '2022'),
  ('pc-rj-2022-inspetor', 'Polícia Civil RJ 2022 - Inspetor de Polícia de 6ª Classe', 'pc', '2022'),
  ('pc-rj-2022-necropsia', 'Polícia Civil RJ 2022 - Auxiliar Policial de Necropsia de 3ª Classe', 'pc', '2022'),
  ('pc-rj-2022-perito-legista', 'Polícia Civil RJ 2022 - Perito Legista de 3ª Classe', 'pc', '2022'),
  ('pc-rj-2022-perito-quimica', 'Polícia Civil RJ 2022 - Perito Criminal - Química', 'pc', '2022'),
  ('uerj-2025-eq2', 'UERJ 2025 - Vestibular Estadual (2º Exame de Qualificação)', 'uerj', '2025'),
  ('usp-2026-v1', 'USP 2026 - FUVEST (Prova de Conhecimentos Gerais - V1)', 'usp', '2026'),
  ('pf-2025-perito-cb', 'Polícia Federal 2025 - Perito Criminal Federal (Conhecimentos Básicos)', 'pf', '2025')
on conflict (slug) do nothing;
