create table if not exists public.study_author_questions (
  id uuid primary key default gen_random_uuid(),
  authored_id text not null unique,
  topic_id text not null,
  number integer not null check (number > 0),
  subject text not null,
  text text not null check (length(text) > 0),
  options jsonb not null check (jsonb_typeof(options) = 'array' and jsonb_array_length(options) = 4),
  answer text not null check (answer ~ '^[A-D]$'),
  explanation text not null check (length(explanation) > 0),
  created_at timestamptz not null default now(),
  unique (topic_id, number)
);
alter table public.study_author_questions enable row level security;
revoke all on public.study_author_questions from anon, authenticated;
grant select on public.study_author_questions to anon, authenticated;
create policy "Public educational author questions" on public.study_author_questions
  for select to anon, authenticated using (true);
