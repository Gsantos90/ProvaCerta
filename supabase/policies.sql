-- Políticas de segurança (Row Level Security) do provacerta.
-- Documenta o estado atual e a configuração recomendada. Seguro re-executar:
-- cada policy é recriada (drop + create) para refletir a versão desejada.
--
-- Modelo de segurança:
--  * exams e questions são conteúdo PÚBLICO -> leitura liberada, escrita negada.
--  * attempts é privado por usuário -> cada um só lê/cria as próprias tentativas.
--  * O front-end usa apenas a chave anon/publishable (nunca a service_role).
--    Toda a proteção real está no RLS: sem policy de insert/update/delete em
--    exams/questions, ninguém com a anon key consegue escrever nessas tabelas.

-- Garante o RLS habilitado (ter policy não basta: se o RLS estiver off, as
-- policies são ignoradas e a tabela fica aberta).
alter table public.exams enable row level security;
alter table public.questions enable row level security;
alter table public.attempts enable row level security;

-- ============================================================
-- exams / questions: leitura pública, sem escrita
-- ============================================================
drop policy if exists "Public can read exams" on public.exams;
create policy "Public can read exams"
  on public.exams for select
  using (true);

drop policy if exists "Public can read questions" on public.questions;
create policy "Public can read questions"
  on public.questions for select
  using (true);

-- Observação: não há policy de insert/update/delete em exams/questions.
-- Isso é intencional: com RLS ligado, o que não tem policy é negado por padrão.
-- A escrita (seeds, correções) é feita no SQL Editor do painel, que usa uma
-- conexão privilegiada e não passa pelo RLS.

-- ============================================================
-- attempts: cada usuário autenticado só acessa as próprias tentativas
-- ============================================================
-- Recomendado aplicar ao role `authenticated` (em vez de `public`): a condição
-- auth.uid() = user_id já protege, mas restringir ao role deixa explícito que
-- apenas usuários logados interagem com a tabela (defesa em profundidade).
drop policy if exists "Users can read their attempts" on public.attempts;
create policy "Users can read their attempts"
  on public.attempts for select
  to authenticated
  using (auth.uid() = user_id);

drop policy if exists "Users can create their attempts" on public.attempts;
create policy "Users can create their attempts"
  on public.attempts for insert
  to authenticated
  with check (auth.uid() = user_id);

-- ============================================================
-- Recomendações adicionais (fazer no painel do Supabase):
--  1. Ativar "Automatically enable RLS on new tables" (Database -> Policies).
--     Garante que qualquer tabela nova nasça com RLS ligado.
--  2. Confirmar em Settings -> API que a chave usada pelo app (e na Vercel) é a
--     anon/publishable, nunca a service_role.
-- ============================================================
