-- Histórico privado. A leitura pública das provas permanece independente do login.
create table if not exists public.exam_attempts (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  exam_title text not null check (char_length(exam_title) between 1 and 300),
  total integer not null check (total between 1 and 500),
  correct integer not null check (correct >= 0),
  wrong integer not null check (wrong >= 0),
  blank integer not null check (blank >= 0),
  annulled integer not null check (annulled >= 0),
  points integer not null,
  scoring text not null check (scoring in ('standard', 'cebraspe')),
  started_at timestamptz not null,
  completed_at timestamptz not null check (completed_at >= started_at),
  timed boolean not null default false,
  mistakes jsonb not null default '[]'::jsonb check (jsonb_typeof(mistakes) = 'array'),
  created_at timestamptz not null default now(),
  check (correct + wrong + blank + annulled = total),
  check (points = correct + annulled - case when scoring = 'cebraspe' then wrong else 0 end),
  check (jsonb_array_length(mistakes) = wrong),
  check (pg_column_size(mistakes) <= 4000000)
);
create index if not exists exam_attempts_user_completed_idx on public.exam_attempts(user_id, completed_at desc);
alter table public.exam_attempts enable row level security;
revoke all on public.exam_attempts from anon, authenticated;
grant select, insert, delete on public.exam_attempts to authenticated;
drop policy if exists "Read own attempts" on public.exam_attempts;
create policy "Read own attempts" on public.exam_attempts for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "Save own attempts" on public.exam_attempts;
create policy "Save own attempts" on public.exam_attempts for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "Delete own attempts" on public.exam_attempts;
create policy "Delete own attempts" on public.exam_attempts for delete to authenticated using ((select auth.uid()) = user_id);
