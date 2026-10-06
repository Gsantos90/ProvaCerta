-- Execute no SQL Editor do Supabase. Os relatos são consultados pelo administrador.
begin;
create table if not exists public.question_reports (
  id uuid primary key default gen_random_uuid(),
  question_id uuid references public.questions(id) on delete set null,
  exam_slug text check (char_length(exam_slug) <= 200),
  exam_title text not null check (char_length(exam_title) between 1 and 300),
  question_number integer not null check (question_number between 1 and 1000),
  subject text not null default '' check (char_length(subject) <= 200),
  category text not null check (category in ('text', 'image', 'answer', 'other')),
  message text not null check (char_length(trim(message)) between 10 and 2000),
  status text not null default 'new' check (status in ('new', 'reviewing', 'resolved')),
  created_at timestamptz not null default now()
);
alter table public.question_reports enable row level security;
revoke all on public.question_reports from anon, authenticated;
grant insert (question_id, exam_slug, exam_title, question_number, subject, category, message) on public.question_reports to anon, authenticated;
drop policy if exists question_reports_submit on public.question_reports;
create policy question_reports_submit on public.question_reports
  for insert to anon, authenticated with check (status = 'new');
commit;
-- Consulte no SQL Editor:
-- select * from public.question_reports order by created_at desc;
-- update public.question_reports set status = 'resolved' where id = 'UUID_DO_RELATO';
