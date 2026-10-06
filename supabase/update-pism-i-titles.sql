-- Corrige títulos e anos oficiais das provas PISM I. Slugs e IDs são preservados.

-- Legado 2023 = edição 2024; legado 2024 = edição 2025; legado 2025 = edição 2026.

begin;

update public.exams set title = 'PISM I 2024 - 1º dia', year = '2024-1' where slug = 'pism-2023-1';

update public.exams set title = 'PISM I 2024 - 2º dia', year = '2024-2' where slug = 'pism-2023-2';

update public.exams set title = 'PISM I 2025 - 1º dia', year = '2025-1' where slug = 'pism-2024-1';

update public.exams set title = 'PISM I 2025 - 2º dia', year = '2025-2' where slug = 'pism-2024-2';

update public.exams set title = 'PISM I 2026 - 1º dia', year = '2026-1' where slug = 'pism-2025-1';

update public.exams set title = 'PISM I 2026 - 2º dia', year = '2026-2' where slug = 'pism-2025-2';

commit;

select slug,title,year from public.exams where source='pism' order by title;
