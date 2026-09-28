-- Vincula as imagens da pasta /public às questões correspondentes (coluna support_image).
-- Seguro para reexecutar: apenas atualiza o campo support_image por (prova + numero da questao).
--
-- Atencao: os nomes de arquivo diferenciam maiusculas/minusculas em producao
-- (Vercel/Netlify/Linux). Os caminhos abaixo refletem exatamente os arquivos em /public.

-- ============================================================
-- Banco do Brasil 2022 - Agente Comercial (slug: bb-2022-a-comercial)
-- ============================================================
update public.questions q
set support_image = '/bb-2022-A-questao-18.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'bb-2022-a-comercial' and q.number = 18;

update public.questions q
set support_image = '/bb-2022-A-questao-20.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'bb-2022-a-comercial' and q.number = 20;

update public.questions q
set support_image = '/bb-2022-A-questao-27.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'bb-2022-a-comercial' and q.number = 27;

update public.questions q
set support_image = '/bb-2022-A-questao-43.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'bb-2022-a-comercial' and q.number = 43;

update public.questions q
set support_image = '/bb-22-A-questao-59.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'bb-2022-a-comercial' and q.number = 59;

-- ============================================================
-- PISM 2023-2 (slug: pism-2023-2)
-- ============================================================
update public.questions q
set support_image = '/pism-2023-2-questao-8.png'
from public.exams e
where q.exam_id = e.id and e.slug = 'pism-2023-2' and q.number = 8;

-- ------------------------------------------------------------
-- Conferencia: lista as questoes que ficaram com imagem vinculada
-- ------------------------------------------------------------
select e.slug, q.number, q.support_image
from public.questions q
join public.exams e on e.id = q.exam_id
where e.slug in ('bb-2022-a-comercial', 'pism-2023-2')
  and q.support_image is not null
order by e.slug, q.number;
