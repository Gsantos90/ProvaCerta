-- Identifica a origem da tentativa para mostrar o último resultado no catálogo.
-- Registros anteriores continuam disponíveis e são reconhecidos pelo título.
alter table public.exam_attempts add column if not exists exam_source text
  check (exam_source ~ '^[a-z][a-z0-9-]{0,49}$');
