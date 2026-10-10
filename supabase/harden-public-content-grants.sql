-- Defesa em profundidade: conteúdo público só precisa de SELECT no navegador.
-- As policies de RLS existentes já bloqueiam escrita; esta mudança remove
-- também os privilégios de tabela desnecessários, sem alterar conteúdo.
begin;
alter table public.exams enable row level security;
alter table public.questions enable row level security;
alter table public.essay_themes enable row level security;
revoke all on public.exams, public.questions, public.essay_themes from anon, authenticated;
grant select on public.exams, public.questions, public.essay_themes to anon, authenticated;
commit;
