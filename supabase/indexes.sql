-- Índices de performance para a tabela de questões.
-- Execute uma vez no SQL Editor do Supabase (seguro re-executar: usa IF NOT EXISTS).

-- Abertura de prova: filtra por exam_id e ordena por number.
--   select ... from questions where exam_id = ? order by number
create index if not exists idx_questions_exam_id_number
  on public.questions (exam_id, number);

-- Gerador de simulado: filtra por subject (e por exam_id via índice acima).
--   select ... from questions where exam_id in (...) and subject in (...)
create index if not exists idx_questions_subject
  on public.questions (subject);
