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

alter table public.exams enable row level security;
alter table public.questions enable row level security;
alter table public.attempts enable row level security;

create policy "Public can read exams" on public.exams for select using (true);
create policy "Public can read questions" on public.questions for select using (true);
create policy "Users can read their attempts" on public.attempts for select using (auth.uid() = user_id);
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
  ('cnu-2025-bloco6-tarde', 'CNU 2025 (2ª Edição) - Bloco 6 (Tarde) - Desenvolvimento Socioeconômico', 'cnu', '2025')
on conflict (slug) do nothing;
