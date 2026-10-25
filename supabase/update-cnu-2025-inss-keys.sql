-- FGV CPNU 2, tipo 1: gabarito definitivo retificado em 21/11/2025.
-- Fonte: https://conhecimento.fgv.br/sites/default/files/concursos/cpnu_gabarito_oficial_definitivo_retificado_21.11.2025.pdf
-- Preserva IDs, enunciados, alternativas, explicações existentes e tentativas anteriores.
begin;
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco1-tarde' and q.number=63 and q.answer='B';
update public.questions q set answer='B' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco1-tarde' and q.number=71 and q.answer='E';
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco3-tarde' and q.number=51 and q.answer='E';
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco4-tarde' and q.number=36 and q.answer='E';
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco4-tarde' and q.number=50 and q.answer='C';
update public.questions q set answer='A' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco4-tarde' and q.number=64 and q.answer='E';
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco4-tarde' and q.number=75 and q.answer='E';
update public.questions q set answer='A/B/C/D/E' from public.exams e where q.exam_id=e.id and e.slug='cnu-2025-bloco5-tarde' and q.number=46 and q.answer='A';
commit;
