-- INSS 2022 — Técnico do Seguro Social, aplicação de 27/11/2022, cadernos 01.

-- 50 itens básicos + 70 específicos. Não inclui a reaplicação de Guarulhos.

-- A = Certo; B = Errado; A/B/C/D/E = anulado (ponto automático).

-- Texto CB1A1 resumido; texto integral acessível pelo link do caderno oficial.

-- Execute o arquivo inteiro. Reexecutável; preserva IDs e as demais provas.

-- Fonte: https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/760_INSS_CB1_01.PDF

-- Fonte: https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/760_INSS_001_01.PDF

-- Fonte: https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/GAB_DEFINITIVO_760_INSS_CB1_01.PDF

-- Fonte: https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/GAB_DEFINITIVO_760_INSS_001_01.PDF

-- Fonte: https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/ED_1_INSS_22_ABERTURA.PDF

begin;

alter table public.questions add column if not exists explanation text;

alter table public.questions drop constraint if exists questions_answer_check;

alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');

insert into public.exams (slug,title,source,year) values ('inss-2022-tecnico','INSS 2022 · Técnico do Seguro Social','inss','2022') on conflict (slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 1, 'Língua Portuguesa', 'O envelhecimento da população mundial é um dos fatores que explicam a ampliação da presença de mulheres no mercado de trabalho.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Em relação a aspectos estruturais do texto CB1A1 e às informações por ele veiculadas, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 2, 'Língua Portuguesa', 'Os serviços de cuidados fornecidos na América Latina diferenciam-se dos providos em países do hemisfério norte.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Em relação a aspectos estruturais do texto CB1A1 e às informações por ele veiculadas, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 3, 'Língua Portuguesa', 'Por mencionar dados, articular depoimentos e expor argumentos, o texto configura-se como predominantemente descritivo.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Em relação a aspectos estruturais do texto CB1A1 e às informações por ele veiculadas, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 4, 'Língua Portuguesa', 'A profissionalização do trabalho de cuidados nos últimos anos remodelou a essência do conceito de cuidado.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Em relação a aspectos estruturais do texto CB1A1 e às informações por ele veiculadas, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 5, 'Língua Portuguesa', 'Ao confirmarem a forte dimensão emocional do trabalho de cuidados, os estudos relatados no texto recomendam que esse setor da economia não seja assumido pelo Estado nem seja objeto de mercantilização.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Em relação a aspectos estruturais do texto CB1A1 e às informações por ele veiculadas, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 6, 'Língua Portuguesa', 'No último parágrafo, a expressão “nas quais” poderia, sem prejuízo sintático para o texto, ser substituída por cujas.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Acerca de aspectos semânticos e sintáticos do texto CB1A1, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 7, 'Língua Portuguesa', 'No terceiro parágrafo, o segmento “a ideia” (segundo período) retoma, por coesão, a “noção” descrita no primeiro período.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Acerca de aspectos semânticos e sintáticos do texto CB1A1, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 8, 'Língua Portuguesa', 'Seria preservada a coerência das ideias do texto se, no segundo parágrafo, a expressão “na medida em que” fosse substituída pelo vocábulo pois.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Acerca de aspectos semânticos e sintáticos do texto CB1A1, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 9, 'Língua Portuguesa', 'O emprego das vírgulas após os trechos “De acordo com o último relatório da Organização Internacional do Trabalho (OIT)” (no segundo período do primeiro parágrafo) e “Conforme definição da OIT” (no início do segundo parágrafo) justifica-se pelo mesmo motivo.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 10, 'Língua Portuguesa', 'No início do último parágrafo, o emprego da conjunção “entretanto” objetiva evidenciar uma contraposição com o que se afirma no parágrafo anterior; por isso, essa conjunção poderia ser substituída, sem prejuízo dos sentidos e da coerência do texto, por conquanto.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 11, 'Língua Portuguesa', 'Por constituir um substantivo, o termo ‘bem-estar’, empregado no segundo parágrafo, poderia ser grafado, em conformidade com a ortografia oficial, sem o hífen: bem estar.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 12, 'Língua Portuguesa', 'No terceiro período do segundo parágrafo, o termo “sua” refere-se à expressão “conceito de cuidado”.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 13, 'Língua Portuguesa', 'No início do quarto parágrafo, a expressão “Por outro lado” desempenha papel de reforço da coesão textual e poderia ser substituída, sem prejuízo semântico ao texto original, por Inversamente.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 14, 'Língua Portuguesa', 'Seria mantida a correção gramatical do texto caso o termo ‘analisado’ (quarto parágrafo) fosse flexionado no feminino — analisada —, dada a possibilidade de sua concordância com o termo subsequente ‘crise’, com o qual estabelece relação sintático-semântica.', 'Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.

Julgue os itens a seguir, relativos a aspectos estruturais e gramaticais do texto CB1A1.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 15, 'Ética no Serviço Público', 'Situação hipotética: Carlos, servidor público federal, com o objetivo de realizar uma doação a uma instituição de caridade que se encontrava em péssima situação financeira, pleiteou auxílio financeiro do representante de uma empresa multinacional como condição para cumprir sua missão. Ao ser atendido em seu pleito pela empresa, Carlos prontamente concretizou a doação no valor integral que havia recebido. Assertiva: Nessa situação, tendo em vista que Carlos não reteve para si qualquer quantia da doação recebida, sua atitude encontra respaldo no CEPSPC.', 'Com base no Código de Ética Profissional do Servidor Público Civil do Poder Executivo Federal (CEPSPC), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 16, 'Ética no Serviço Público', 'O servidor público não poderá, em hipótese alguma, desprezar o elemento ético da sua conduta. Assim, ele não terá apenas que decidir entre o legal e o ilegal, o conveniente e o inconveniente, mas principalmente entre o honesto e o desonesto, à luz das regras constitucionais.', 'Com base no Código de Ética Profissional do Servidor Público Civil do Poder Executivo Federal (CEPSPC), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 17, 'Ética no Serviço Público', 'Situação hipotética: Bruno, servidor público federal, todos os dias, após o término do seu expediente, dirige-se a um bar muito frequentado da cidade em que reside para ingerir bebida alcóolica. Nessas ocasiões, habitualmente, Bruno é visto embriagado pelos demais frequentadores do bar. Por volta das 22 h, ele costuma ir para sua casa, de forma que esse comportamento não afeta o seu desempenho profissional. Assertiva: Nessa situação, a embriaguez habitual de Bruno fora do ambiente de trabalho não fere o CEPSPC, uma vez que se trata de conduta do dia a dia de sua vida privada, que não pode afetar o seu bom conceito na vida profissional.', 'Com base no Código de Ética Profissional do Servidor Público Civil do Poder Executivo Federal (CEPSPC), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 18, 'Ética no Serviço Público', 'A Comissão de Ética Pública é integrada por brasileiros que preencham os requisitos de idoneidade moral, reputação ilibada e notória experiência em administração pública, designados para mandatos de dois anos, sendo vedada a recondução.', 'Julgue os itens subsequentes, a respeito do Sistema de Gestão da Ética do Poder Executivo Federal.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 19, 'Ética no Serviço Público', 'No âmbito das comissões de ética, caso se conclua pela existência de falta ética após a instrução processual, poderá ser adotada, entre outras, a providência de recomendação de abertura de procedimento administrativo, se a gravidade da conduta assim o exigir.', 'Julgue os itens subsequentes, a respeito do Sistema de Gestão da Ética do Poder Executivo Federal.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 20, 'Ética no Serviço Público', 'A atuação da Comissão de Ética Pública poderá ser provocada por qualquer cidadão, agente público, pessoa jurídica de direito privado, associação ou entidade de classe, visando a apuração de infração ética imputada a agente público, órgão ou setor específico de ente estatal.', 'Julgue os itens subsequentes, a respeito do Sistema de Gestão da Ética do Poder Executivo Federal.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 21, 'Direito Constitucional', 'A casa é asilo inviolável do indivíduo e nela ninguém poderá ingressar sem o consentimento do morador, salvo se houver determinação judicial para o ingresso.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 22, 'Direito Constitucional', 'O direito de reunião está assegurado a todos, desde que observados os seguintes requisitos constitucionais: caráter pacífico; localização aberta ao público; prévia autorização da autoridade competente; e não frustação de outra reunião anteriormente convocada para o mesmo local.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 23, 'Direito Constitucional', 'São equivalentes às emendas constitucionais os tratados internacionais sobre direitos humanos aprovados na Câmara dos Deputados e no Senado Federal, em dois turnos, por três quintos dos votos dos membros de cada uma dessas casas.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 24, 'Direito Constitucional', 'O indivíduo que tomar posse em determinado cargo efetivo de uma autarquia federal será obrigado a filiar-se ao sindicato de sua categoria profissional, pois a esse sindicato cabe a defesa dos direitos e interesses coletivos ou individuais da categoria, inclusive em questões judiciais ou administrativas.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 25, 'Direito Constitucional', 'A cassação dos direitos políticos é possível nos casos de cancelamento da naturalização por sentença transitada em julgado; incapacidade civil absoluta; condenação criminal transitada em julgado, enquanto durarem seus efeitos; recusa de cumprir obrigação a todos imposta ou prestação alternativa; e improbidade administrativa.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 26, 'Direito Constitucional', 'Brasileiros naturalizados podem ser eleitos membros da Câmara dos Deputados e do Senado Federal, caso cumpram as demais condições de elegibilidade, porque tais cargos não são privativos de brasileiros natos.', 'No que diz respeito a direitos e garantias fundamentais, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 27, 'Direito Constitucional', 'Em regra, é vedada a acumulação remunerada de cargos públicos. Essa vedação estende-se a empregos e funções e abrange autarquias, fundações, empresas públicas, sociedades de economia mista, suas subsidiárias, e sociedades controladas, direta ou indiretamente, pelo poder público.', 'Julgue os itens seguintes, relativos à administração pública.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 28, 'Direito Constitucional', 'Somente por lei específica poderá ser criada autarquia e autorizada a instituição de empresa pública, sociedade de economia mista e fundação pública, cabendo, em todos os casos, lei complementar para definir as áreas de atuação dessas entidades.', 'Julgue os itens seguintes, relativos à administração pública.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 29, 'Direito Constitucional', 'O servidor público estável perderá o seu cargo de provimento efetivo em virtude de: sentença judicial transitada em julgado, processo administrativo em que lhe seja assegurada ampla defesa ou procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa.', 'Julgue os itens seguintes, relativos à administração pública.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 30, 'Direito Constitucional', 'Situação hipotética: Uma servidora pública do INSS, ocupante de cargo efetivo de técnico do seguro social, foi eleita deputada federal nas eleições de 2022. Assertiva: Nessa situação, a servidora ficará afastada de seu cargo efetivo no INSS para o exercício de mandato eletivo na Câmara dos Deputados, sendo esse tempo de serviço contado para todos os efeitos legais, exceto para promoção por merecimento.', 'Julgue os itens seguintes, relativos à administração pública.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 31, 'Direito Administrativo', 'Em sentido subjetivo, formal ou orgânico, a administração pública consiste no conjunto de órgãos, entidades e agentes estatais no exercício da função administrativa do Estado. Já a administração pública em sentido objetivo, material ou funcional designa o conjunto de atividades administrativas exercidas pelo Estado para a consecução dos interesses coletivos.', 'No que diz respeito à administração pública, às fontes do direito administrativo, à organização administrativa da União, à Lei n.º 8.112/1990 e aos poderes administrativos, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 32, 'Direito Administrativo', 'O abuso de poder é tratado pela doutrina majoritária como gênero cujas espécies são: o excesso de poder, que ocorre quando o agente público atua nos limites de sua competência legalmente definida, mas visando a um fim diverso da consecução do interesse público; e o desvio de poder, que se dá quando o agente público exorbita da competência que lhe foi legalmente atribuída.', 'No que diz respeito à administração pública, às fontes do direito administrativo, à organização administrativa da União, à Lei n.º 8.112/1990 e aos poderes administrativos, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 33, 'Direito Administrativo', 'A lei é considerada a fonte primordial do direito administrativo brasileiro, razão por que esse ramo do direito público nacional se encontra codificado, ou seja, as normas administrativas estão reunidas em um só corpo de leis.', 'No que diz respeito à administração pública, às fontes do direito administrativo, à organização administrativa da União, à Lei n.º 8.112/1990 e aos poderes administrativos, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 34, 'Direito Administrativo', 'O INSS é uma autarquia federal subordinada ao Ministério do Trabalho e Previdência.', 'No que diz respeito à administração pública, às fontes do direito administrativo, à organização administrativa da União, à Lei n.º 8.112/1990 e aos poderes administrativos, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 35, 'Direito Administrativo', 'De acordo com a Lei n.º 8.112/1990, são formas de provimento de cargo público: nomeação, promoção, ascensão, transferência, readaptação, reversão, aproveitamento, reintegração e recondução.', 'No que diz respeito à administração pública, às fontes do direito administrativo, à organização administrativa da União, à Lei n.º 8.112/1990 e aos poderes administrativos, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 36, 'Direito Administrativo', 'A administração pode revogar seus próprios atos, quando eivados de vícios que os tornem ilegais, porque deles não se originam direitos, podendo, ainda, anulá-los por motivo de conveniência ou oportunidade, respeitados os direitos adquiridos.', 'Julgue os próximos itens, referentes ao ato administrativo, aos serviços públicos, à responsabilidade civil do Estado e às Leis n.º 8.429/1992 e n.º 9.784/1999.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 37, 'Direito Administrativo', 'A concessão de serviço público consiste na delegação de sua prestação, feita pelo poder concedente, por meio de licitação, na modalidade concorrência ou diálogo competitivo, a pessoa jurídica ou a consórcio de empresas que demonstre capacidade para o seu desempenho, por sua conta e risco e por prazo determinado.', 'Julgue os próximos itens, referentes ao ato administrativo, aos serviços públicos, à responsabilidade civil do Estado e às Leis n.º 8.429/1992 e n.º 9.784/1999.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 38, 'Direito Administrativo', 'Será impedido de atuar em processo administrativo o servidor público que tiver interesse direto ou indireto na matéria. Além disso, poderá ser arguida a suspeição de autoridade que tenha amizade íntima ou inimizade notória com algum dos interessados nesse processo.', 'Julgue os próximos itens, referentes ao ato administrativo, aos serviços públicos, à responsabilidade civil do Estado e às Leis n.º 8.429/1992 e n.º 9.784/1999.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 39, 'Direito Administrativo', 'Com base na teoria do risco administrativo, admite-se pesquisa em torno da culpa da vítima, a fim de abrandar ou excluir a responsabilidade civil objetiva das pessoas jurídicas de direito público e das pessoas jurídicas de direito privado prestadoras de serviço público.', 'Julgue os próximos itens, referentes ao ato administrativo, aos serviços públicos, à responsabilidade civil do Estado e às Leis n.º 8.429/1992 e n.º 9.784/1999.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 40, 'Direito Administrativo', 'Ainda que não seja agente público, aquele que induzir ou concorrer culposa ou dolosamente para a prática de ato de improbidade administrativa sujeitar-se-á, no que couber, às disposições da Lei n.º 8.429/1992.', 'Julgue os próximos itens, referentes ao ato administrativo, aos serviços públicos, à responsabilidade civil do Estado e às Leis n.º 8.429/1992 e n.º 9.784/1999.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 41, 'Informática', 'Os cookies, mencionados no texto da figura apresentada, podem salvar configurações dos usuários em um arquivo armazenado nos computadores desses usuários.', 'A figura mostra a página pública do INSS no navegador, com cadeado e prefixo https:// na barra de endereço e um aviso sobre o uso e gerenciamento de cookies.', '/inss-2022/cookies.png', '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 42, 'Informática', 'De acordo com o trecho destacado na barra de endereço mostrada na figura em apreço (cadeado seguido do trecho https://), é correto afirmar que a página em questão é parte da intranet do INSS, acessível somente por meio de senha, conforme indica o símbolo do cadeado à esquerda do endereço.', 'A figura mostra a página pública do INSS no navegador, com cadeado e prefixo https:// na barra de endereço e um aviso sobre o uso e gerenciamento de cookies.', '/inss-2022/cookies.png', '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 43, 'Informática', 'nenhuma linha da planilha foi apagada.', 'A planilha da figura contém células do MS Excel 365. Todas as células mostradas foram selecionadas; acionou-se Remover Duplicadas, selecionaram-se todas as colunas na caixa de diálogo e confirmou-se em OK. Julgue a afirmação considerando a planilha.', '/inss-2022/planilha.png', '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 44, 'Informática', 'Phishing é um tipo de invasão mediante o uso de software malicioso que torna inacessíveis os dados armazenados no equipamento invadido, geralmente usando criptografia, no qual o agente invasor exige o pagamento de resgate para restabelecer o acesso do usuário aos dados afetados.', 'Julgue os próximos itens, acerca de Windows 10 e segurança da informação.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 45, 'Informática', 'O recurso BitLocker, ferramenta de criptografia presente no Windows 10, possibilita que o usuário proteja a privacidade de seus dados.', 'Julgue os próximos itens, acerca de Windows 10 e segurança da informação.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 46, 'Raciocínio Lógico', 'Se 20% dos segurados que buscaram atendimento presencial o fizeram para solicitar a reativação do benefício de prestação continuada (BPC), então 10% do total de beneficiários que buscaram atendimento pleiteavam a reativação do BPC.', 'Um técnico levantou os atendimentos da semana anterior: 75% dos segurados receberam atendimento remoto (telefone, aplicativo ou Internet) e 35% receberam atendimento presencial. Algumas demandas começaram remotamente e precisaram ser concluídas presencialmente. Julgue o item considerando esses dados.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 47, 'Raciocínio Lógico', 'Se havia somente as duas modalidades de atendimento descritas, é correto concluir que 10% dos segurados passaram pelas duas modalidades de atendimento em suas demandas.', 'Um técnico levantou os atendimentos da semana anterior: 75% dos segurados receberam atendimento remoto (telefone, aplicativo ou Internet) e 35% receberam atendimento presencial. Algumas demandas começaram remotamente e precisaram ser concluídas presencialmente. Julgue o item considerando esses dados.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 48, 'Raciocínio Lógico', 'A tabela-verdade associada à proposição P possui oito linhas.', 'Proposição P: Nos processos de justificações administrativas, quando o segurado apresentar testemunhas com valor de prova, a agência fornecerá um servidor exclusivo para o atendimento. Julgue o item a partir dessa proposição.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 49, 'Raciocínio Lógico', 'A proposição “o segurado apresentar testemunhas com ou sem valor de prova” é uma tautologia.', 'Proposição P: Nos processos de justificações administrativas, quando o segurado apresentar testemunhas com valor de prova, a agência fornecerá um servidor exclusivo para o atendimento. Julgue o item a partir dessa proposição.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 50, 'Raciocínio Lógico', 'Há apenas uma possibilidade de combinação de valores lógicos para as proposições simples que compõem P que a tornam falsa.', 'Proposição P: Nos processos de justificações administrativas, quando o segurado apresentar testemunhas com valor de prova, a agência fornecerá um servidor exclusivo para o atendimento. Julgue o item a partir dessa proposição.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 51, 'Direito Previdenciário', 'O princípio democrático exige a necessidade de envolvimento de diversos segmentos na administração do sistema de seguridade, de forma que sua gestão deve contar com a participação dos trabalhadores, dos empregadores, dos aposentados e do governo.', 'No que diz respeito aos princípios constitucionais da seguridade social, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 52, 'Direito Previdenciário', 'São garantidas a uniformidade e a equivalência dos benefícios e serviços às populações urbanas e rurais, embora não se objetive a equidade na forma de participação no custeio.', 'No que diz respeito aos princípios constitucionais da seguridade social, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 53, 'Direito Previdenciário', 'O princípio da territorialidade vige no âmbito do direito previdenciário, razão por que é vedada a aplicação da norma brasileira desse ramo do direito fora do território nacional.', 'Julgue os itens que seguem, a respeito da aplicação das normas previdenciárias.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 54, 'Direito Previdenciário', 'No direito previdenciário, a lei nova não surte efeitos pretéritos, salvo se em benefício de infratores de norma de custeio.', 'Julgue os itens que seguem, a respeito da aplicação das normas previdenciárias.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 55, 'Direito Previdenciário', 'Será segurado obrigatório, na qualidade de contribuinte individual, o brasileiro contratado no Brasil para trabalhar como empregado em empresa domiciliada no exterior, cuja maioria do capital votante pertença a empresa brasileira de capital nacional.', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 56, 'Direito Previdenciário', 'Situação hipotética: Daniel, pessoa física residente em imóvel rural, desenvolve, como produtor e de forma individual, atividade agropecuária em área de três módulos fiscais, com exploração de atividade turística na propriedade rural durante 90 dias por ano. Assertiva: Nessa situação, a exploração da atividade turística na propriedade rural não descaracteriza a condição de segurado especial de Daniel.', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 57, 'Direito Previdenciário', 'São segurados facultativos: o ministro de confissão religiosa e o membro de instituto de vida consagrada, de congregação ou de ordem religiosa.', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 58, 'Direito Previdenciário', 'Para fins previdenciários, considera-se empresa a firma individual ou sociedade que assume risco de atividade econômica, a ela equiparando-se a cooperativa e a missão diplomática.', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 59, 'Direito Previdenciário', 'A filiação de um segurado obrigatório à previdência social se concretiza com o pagamento da primeira contribuição previdenciária desse segurado.', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 60, 'Direito Previdenciário', 'É considerado segurado obrigatório o exercente de mandato eletivo federal, estadual ou municipal, desde que não vinculado a regime próprio de previdência social (RPPS).', 'Com relação ao regime geral de previdência social (RGPS), julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 61, 'Direito Previdenciário', 'Do ponto de vista previdenciário, considera-se empresa a firma individual ou sociedade que assume o risco de atividade econômica urbana ou rural, com fins lucrativos, excluídos os órgãos e entidades da administração pública direta, indireta ou fundacional.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 62, 'Direito Previdenciário', 'Em razão do princípio da pessoalidade, considera-se empregador doméstico exclusivamente a pessoa física ou a família que admite a seu serviço, sem finalidade lucrativa, empregado doméstico.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 63, 'Direito Previdenciário', 'Constituem contribuições sociais, entre outras, as receitas das empresas, incidentes sobre a remuneração paga ou creditada aos segurados a seu serviço.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 64, 'Direito Previdenciário', 'As multas e os juros moratórios constituem outras receitas da seguridade social, nas quais não se inclui a atualização monetária.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 65, 'Direito Previdenciário', 'É obrigação das companhias seguradoras que mantêm o seguro obrigatório de danos pessoais causados por veículos automotores de vias terrestres o repasse à seguridade social de 50% do valor total do prêmio recolhido e destinado ao Sistema Único de Saúde para custeio da assistência médico-hospitalar dos segurados vitimados em acidentes de trânsito.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 66, 'Direito Previdenciário', 'A contribuição empresarial destinada à seguridade social de associação desportiva que mantém equipe de futebol profissional corresponde a 20% da receita bruta decorrente dos espetáculos desportivos de que participe em todo território nacional, em qualquer modalidade desportiva, inclusive jogos internacionais, e de 5% da receita de qualquer forma de patrocínio, licenciamento de uso de marcas e símbolos, publicidade, propaganda e de transmissão de espetáculos desportivos.', 'Acerca do conceito previdenciário de empresa e de empregador doméstico e do financiamento da seguridade social, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 67, 'Direito Previdenciário', 'Salário de contribuição é o valor que serve de base de incidência das alíquotas das contribuições previdenciárias dos segurados, à exceção do segurado especial.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 68, 'Direito Previdenciário', 'Para o trabalhador, os valores relativos ao salário de contribuição que forem sonegados não serão computados para fins de cálculo de benefícios como aposentadoria, auxílio-doença, salário-maternidade ou mesmo pensão por morte.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 69, 'Direito Previdenciário', 'Em regra, o limite mínimo do salário de contribuição corresponde, para os segurados facultativos, ao piso salarial legal ou normativo da categoria.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 70, 'Direito Previdenciário', 'Quando a remuneração do trabalhador avulso, em determinado mês, não alcançar o salário mínimo, ele poderá complementar a sua contribuição visando o cômputo da competência desse mês como tempo de contribuição.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 71, 'Direito Previdenciário', 'O limite máximo do salário de contribuição será atualizado sempre que ocorrer alteração do valor dos benefícios previdenciários.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 72, 'Direito Previdenciário', 'Respeitados os direitos adquiridos, nenhum benefício previdenciário reajustado poderá exceder o limite máximo do salário de benefício na data do reajustamento.', 'Julgue os itens subsequentes, relativos ao salário de contribuição.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 73, 'Direito Previdenciário', 'Cabe ao INSS acompanhar a arrecadação das contribuições sociais e das contribuições instituídas a título de substituição.', 'Acerca de aspectos relacionados à arrecadação e ao recolhimento das contribuições destinadas à seguridade social, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 74, 'Direito Previdenciário', 'A multa incidente sobre os débitos de contribuições previdenciárias não pagas nos prazos previstos na legislação específica será calculada diariamente e não poderá extrapolar o percentual de 20%.', 'Acerca de aspectos relacionados à arrecadação e ao recolhimento das contribuições destinadas à seguridade social, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 75, 'Direito Previdenciário', 'Os segurados facultativos devem recolher a contribuição relativa a determinado mês, por iniciativa própria, até o dia 15 do mês subsequente àquele a que se refira a contribuição, inexistindo outra forma de efetuar esse recolhimento.', 'Acerca de aspectos relacionados à arrecadação e ao recolhimento das contribuições destinadas à seguridade social, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 76, 'Direito Previdenciário', 'O anistiado político que, durante algum tempo, ficou exilado no exterior em decorrência de ameaça de punição por motivo exclusivamente político poderá usar o tempo do exílio como tempo de serviço para efeito de aposentadoria, independentemente do recolhimento da contribuição previdenciária referente ao tempo do exílio.', 'Com referência a pensões especiais, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 77, 'Direito Previdenciário', 'Situação hipotética: Francisco, que recebe pensão especial por ter participado de operações bélicas durante a Segunda Guerra Mundial, foi convidado para assumir a secretaria de segurança pública de determinado estado da Federação. Assertiva: Nessa situação, Francisco não poderá cumular a pensão especial de ex-combatente com os rendimentos decorrentes do cargo de secretário, mas poderá optar por um ou outro rendimento.', 'Com referência a pensões especiais, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 78, 'Direito Previdenciário', 'As crianças vítimas de sequelas neurológicas decorrentes da síndrome congênita do zika vírus têm direito ao recebimento de uma pensão especial mensal e vitalícia que será devida pela secretaria de assistência social dos municípios em que elas residam, e que será paga com recursos orçamentários provenientes da União.', 'Com referência a pensões especiais, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 79, 'Direito Previdenciário', 'Situação hipotética: Paulo, que era portador de deficiência física decorrente da síndrome da talidomida e que, por esse motivo, recebia pensão especial há mais de quinze anos, faleceu recentemente em decorrência de complicações decorrentes dessa enfermidade. Até então, Paulo convivia em companhia da sua mãe e a pensão por ele recebida era a única fonte de renda familiar. Assertiva: nessa situação, a mãe de Paulo tem direito de receber pensão previdenciária decorrente da morte de seu filho Paulo.', 'Com referência a pensões especiais, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 80, 'Direito Previdenciário', 'O filho do seringueiro cujo pai tenha sido recrutado para trabalhar na produção de borracha nos seringais da região amazônica durante a Segunda Guerra Mundial e que comprovar o seu estado de carência econômica terá direito a receber o pagamento de pensão mensal vitalícia, cumulativo com o benefício concedido a seu pai.', 'Com referência a pensões especiais, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 81, 'Direito Previdenciário', 'O segurado do RGPS vítima de acidente de trabalho poderá exigir do INSS, além dos benefícios decorrentes do acidente de trabalho, o transporte do acidentado para tratamento fora do seu domicílio, quando necessário, assim como o fornecimento de instrumentos de auxílio para a sua locomoção quando a perda ou redução da capacidade funcional do segurado puder ser atenuada pelo seu uso.', 'Julgue os próximos itens, relativos a reabilitação profissional.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 82, 'Direito Previdenciário', 'Terá direito ao serviço de reabilitação profissional prestado pelo INSS, que tenha por objetivo proporcionar o reingresso ao mercado de trabalho, o segurado que ficar incapacitado parcial ou totalmente para o trabalho, independentemente do cumprimento do tempo de carência.', 'Julgue os próximos itens, relativos a reabilitação profissional.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 83, 'Direito Previdenciário', 'Situação hipotética: Flávio formalizou pedido de pensão por morte em decorrência do óbito do seu companheiro Rodrigo. Após a análise da documentação apresentada, o INSS indeferiu o pedido sob o argumento de que Flávio não era dependente economicamente de Rodrigo. Assertiva: Nessa situação, contra a decisão de indeferimento caberá recurso ordinário na via administrativa, recurso este que deverá ser julgado pela Junta de Recursos do Conselho de Recursos da Previdência Social.', 'Acerca da prescrição e dos recursos administrativos previdenciários, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 84, 'Direito Previdenciário', 'Situação hipotética: Haroldo se aposentou por tempo de contribuição em abril de 2018 e somente em setembro de 2022 constatou-se que o valor do seu benefício previdenciário estava sendo pago a menor desde a data da sua implantação. Assertiva: Nessa situação, não está prescrito o direito de Haroldo requerer a revisão do valor do seu benefício nem tampouco o pagamento das diferenças devidas a partir da sua implantação.', 'Acerca da prescrição e dos recursos administrativos previdenciários, julgue os itens subsequentes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 85, 'Direito Previdenciário', 'Situação hipotética: Mário, contador da empresa Silva & Silva Ltda., deixou de lançar mensalmente nos títulos próprios da contabilidade da empresa as quantias descontadas dos seus segurados, configurando com isso o crime de sonegação de contribuição previdenciária tipificado em artigo do Código Penal, razão por que contra ele foi movida ação judicial. Assertiva: Nessa situação, se Mário confessar espontaneamente o delito antes de proferida a sentença pertinente e recolher integralmente o valor sonegado, a sua pena será reduzida pela metade.', 'Julgue os itens seguintes, relativos aos crimes contra a seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 86, 'Direito Previdenciário', 'O crime de apropriação indébita previdenciária é crime comissivo comum, tendo em vista que qualquer pessoa pode deixar de repassar à previdência social as contribuições recolhidas dos contribuintes, no prazo e na forma legal ou convencional.', 'Julgue os itens seguintes, relativos aos crimes contra a seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 87, 'Direito Previdenciário', 'O servidor público estadual efetivo vinculado a RPPS poderá se filiar ao RGPS na condição de segurado facultativo, ainda que não esteja afastado sem vencimentos.', 'A respeito de Plano de Benefícios da Previdência Social, beneficiários, espécies de prestações, períodos de carência, salário de benefício e renda mensal do benefício, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 88, 'Direito Previdenciário', 'O indivíduo segurado do RGPS que obtiver a guarda judicial de uma criança de cinco anos de idade para fins de adoção terá direito ao benefício do salário-maternidade, o qual será pago diretamente pelo INSS.', 'A respeito de Plano de Benefícios da Previdência Social, beneficiários, espécies de prestações, períodos de carência, salário de benefício e renda mensal do benefício, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 89, 'Direito Previdenciário', 'Situação hipotética: Maria, que contribui para o RGPS na condição de empregada doméstica há dezessete anos ininterruptos, recentemente completou sessenta e dois anos de idade. Assertiva: Nessa situação, Maria tem direito ao benefício da aposentadoria, cujo valor do benefício será equivalente a 100% da média aritmética simples das últimas trinta e seis contribuições mensais efetivamente recolhidas.', 'A respeito de Plano de Benefícios da Previdência Social, beneficiários, espécies de prestações, períodos de carência, salário de benefício e renda mensal do benefício, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 90, 'Direito Previdenciário', 'Situação hipotética: Cláudio contribuiu paro o RGPS pelo período de sete anos e seis meses, quando então ficou incapacitado para o trabalho e entrou em gozo do benefício de auxílio por incapacidade temporária, condição na qual ele permaneceu por dois anos e dez meses. Assertiva: Nessa situação, devido ao tempo que ficou sem contribuir para o INSS em decorrência do benefício, Cláudio perdeu a sua qualidade de segurado, mas poderá recuperá-la após doze contribuições mensais ininterruptas.', 'A respeito de Plano de Benefícios da Previdência Social, beneficiários, espécies de prestações, períodos de carência, salário de benefício e renda mensal do benefício, julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 91, 'Direito Previdenciário', 'Manoel está habilitado para usufruir o seguro-desemprego.', 'Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:
I — Manoel: pescador artesanal de camarão.
II — José: pescador artesanal de crustáceo e músico empregado.
III — Flávio: pescador profissional de tainha.
IV — Maria: pescadora artesanal e beneficiária de pensão por morte.
Julgue a afirmação durante esse período.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 92, 'Direito Previdenciário', 'José, ainda que empregado, tem direito ao seguro-desemprego.', 'Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:
I — Manoel: pescador artesanal de camarão.
II — José: pescador artesanal de crustáceo e músico empregado.
III — Flávio: pescador profissional de tainha.
IV — Maria: pescadora artesanal e beneficiária de pensão por morte.
Julgue a afirmação durante esse período.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 93, 'Direito Previdenciário', 'Maria, ainda que beneficiária de pensão por morte, tem direito ao seguro-desemprego.', 'Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:
I — Manoel: pescador artesanal de camarão.
II — José: pescador artesanal de crustáceo e músico empregado.
III — Flávio: pescador profissional de tainha.
IV — Maria: pescadora artesanal e beneficiária de pensão por morte.
Julgue a afirmação durante esse período.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 94, 'Direito Previdenciário', 'Manoel, José e Maria, ao pleitearem o seguro-desemprego, deverão solicitá-lo ao IBAMA, ao passo que Flávio deverá solicitá-lo ao INSS.', 'Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:
I — Manoel: pescador artesanal de camarão.
II — José: pescador artesanal de crustáceo e músico empregado.
III — Flávio: pescador profissional de tainha.
IV — Maria: pescadora artesanal e beneficiária de pensão por morte.
Julgue a afirmação durante esse período.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 95, 'Direito Previdenciário', 'Flávio poderá usufruir o seguro-desemprego se o IBAMA declarar o defeso da tainha.', 'Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:
I — Manoel: pescador artesanal de camarão.
II — José: pescador artesanal de crustáceo e músico empregado.
III — Flávio: pescador profissional de tainha.
IV — Maria: pescadora artesanal e beneficiária de pensão por morte.
Julgue a afirmação durante esse período.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 96, 'Direito Previdenciário', 'O tempo de atividade rural reconhecido pelo INSS por intermédio de certidão de tempo de serviço é reconhecido para fins de compensação financeira previdenciária entre o RGPS e o RPPS, independentemente de indenização a cargo do servidor.', 'A respeito do RPPS, em especial das regras sobre contagem recíproca e compensação previdenciária, julgue os itens seguintes.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 97, 'Direito Previdenciário', 'O tempo de contribuição concomitante não gera direito adquirido à compensação financeira para efeito de aposentadoria.', 'A respeito do RPPS, em especial das regras sobre contagem recíproca e compensação previdenciária, julgue os itens seguintes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 98, 'Direito Previdenciário', 'Situação hipotética: Carlos contribuiu durante quinze anos para o RGPS, mas se aposentou como servidor vinculado ao RPPS da União. Assertiva: Nessa situação, o RGPS e o RPPS são considerados, respectivamente, como regime de origem e regime instituidor.', 'A respeito do RPPS, em especial das regras sobre contagem recíproca e compensação previdenciária, julgue os itens seguintes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 99, 'Direito Previdenciário', 'Veda-se a contagem de tempo de contribuição fictício, mas se permite a acumulação de tempo de contribuição municipal ou distrital com tempo de contribuição estadual ou federal.', 'A respeito do RPPS, em especial das regras sobre contagem recíproca e compensação previdenciária, julgue os itens seguintes.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 100, 'Assistência Social', 'A proteção social especial é um tipo de proteção que, entre outros objetivos, visa contribuir para a reconstrução de vínculos familiares e comunitários e a proteção de famílias e indivíduos para o enfrentamento de situações de violação de direitos.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 101, 'Assistência Social', 'Terá direito ao auxílio-inclusão a pessoa com deficiência física moderada ou grave, qualificada como segurado obrigatório do RGPS ou filiado a RPPS, que receba o BPC e passe a exercer atividade com remuneração limitada a dois salários mínimos.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 102, 'Assistência Social', 'No âmbito do Sistema Único de Assistência Social, compete à União efetuar o pagamento dos auxílios natalidade e funeral.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 103, 'Assistência Social', 'Situação hipotética: Carlos, estrangeiro, idoso maior de 65 anos, residente no país, é comprovadamente incapaz de prover a própria subsistência e não tem família no Brasil. Assertiva: Nessa situação, o fato de Carlos ser estrangeiro impede-lhe o direito ao BPC.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 104, 'Assistência Social', 'Situação hipotética: Jorge, com 65 anos de idade, e Márcia, também com 65 anos de idade, vivem em coabitação. Ela recebe benefício previdenciário cujo montante ultrapassa um quarto do salário mínimo. Assertiva: Nessa situação, o fato de Márcia receber benefício previdenciário no referido montante não retira de Jorge o direito ao BPC.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 105, 'Assistência Social', 'O critério de aferição da percepção da renda familiar é considerado suficiente pela lei para a concessão do BPC.', 'Julgue os próximos itens, referentes à organização da assistência social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 106, 'Direito Previdenciário', 'Os proventos de aposentadoria e as pensões estão limitados à remuneração do respectivo servidor no cargo efetivo em que se deu a aposentadoria ou que serviu de referência para a concessão da pensão.', 'A respeito das inovações trazidas pela Emenda Constitucional (EC) n.º 103/2019, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'A/B/C/D/E', 'Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 107, 'Direito Previdenciário', 'Desde a promulgação da referida EC, passou a ser obrigatória a instituição de RPPS por todos os entes federativos.', 'A respeito das inovações trazidas pela Emenda Constitucional (EC) n.º 103/2019, julgue os itens a seguir.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 108, 'Direito Previdenciário', 'Considera-se pessoa com deficiência aquela que tem impedimentos de longo prazo de diversas naturezas, inclusive sensorial, os quais, em interação com diversas barreiras, podem obstruir sua participação plena e efetiva na sociedade em igualdade de condições com as demais pessoas.', 'No tocante à aposentadoria da pessoa com deficiência segurada do RGPS julgue os seguintes itens.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 109, 'Direito Previdenciário', 'É assegurada a concessão de aposentadoria pelo RGPS ao segurado com deficiência aos 29 anos de tempo de contribuição, se homem, e aos 24 anos de tempo de contribuição, se mulher, no caso de segurado com deficiência leve.', 'No tocante à aposentadoria da pessoa com deficiência segurada do RGPS julgue os seguintes itens.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 110, 'Direito Previdenciário', 'É garantida a concessão de aposentadoria pelo RGPS à segurada com deficiência com 55 anos de idade, desde que cumprido tempo mínimo de contribuição de quinze anos e comprovada deficiência durante igual período.', 'No tocante à aposentadoria da pessoa com deficiência segurada do RGPS julgue os seguintes itens.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 111, 'Direito Previdenciário', 'O grau de deficiência para fins de concessão de aposentadoria poderá ser comprovado por diferentes meios, inclusive o testemunhal.', 'No tocante à aposentadoria da pessoa com deficiência segurada do RGPS julgue os seguintes itens.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 112, 'Direito Previdenciário', 'A renda mensal da aposentadoria por idade devida ao segurado com deficiência é calculada, em qualquer situação, aplicando-se, sobre o salário de benefício, o percentual de 100%.', 'No tocante à aposentadoria da pessoa com deficiência segurada do RGPS julgue os seguintes itens.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 113, 'Direito Previdenciário', 'As atividades de saúde são de relevância pública e sua organização obedecerá diversos princípios reitores, entre os quais o acesso universal; a descentralização, com direção única em cada esfera; e a participação da iniciativa privada na assistência à saúde, desde que obedecidos os princípios constitucionais.', 'Julgue os itens subsequentes, relativos a aspectos gerais da organização da seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 114, 'Direito Previdenciário', 'A assistência social é política que visa atender as necessidades básicas, independentemente de contribuição, e deve ser organizada de forma centralizada.', 'Julgue os itens subsequentes, relativos a aspectos gerais da organização da seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 115, 'Direito Previdenciário', 'A finalidade da previdência social é assegurar aos seus beneficiários meios de manutenção em situações adversas, tais como desemprego involuntário e encargos de família, garantida a preservação do valor dos benefícios e a universalidade de participação nos planos, mediante contribuição.', 'Julgue os itens subsequentes, relativos a aspectos gerais da organização da seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 116, 'Direito Previdenciário', 'A seguridade social obedecerá a diversos princípios, tais como a vedação à seletividade na prestação dos serviços e à redutibilidade do valor nominal dos benefícios.', 'Julgue os itens subsequentes, relativos a aspectos gerais da organização da seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 117, 'Direito Previdenciário', 'As propostas orçamentárias anuais ou plurianuais da seguridade social são elaboradas por comissão formada necessariamente por representantes das áreas da saúde, da previdência social e da assistência social.', 'Julgue os itens subsequentes, relativos a aspectos gerais da organização da seguridade social.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 118, 'Direito Previdenciário', 'Informações inseridas extemporaneamente no CNIS, excetuadas aquelas que forem retificadoras de dados anteriormente informados, somente serão aceitas se corroboradas por documentos que comprovem a sua regularidade.', 'Com relação ao Cadastro Nacional de Informações Sociais (CNIS), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 119, 'Direito Previdenciário', 'Não é prescindível a expedição de ato administrativo fundamentado para que as informações constantes na carteira profissional ou carteira de trabalho e previdência social sejam desconsideradas.', 'Com relação ao Cadastro Nacional de Informações Sociais (CNIS), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'A', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)

select id, 120, 'Direito Previdenciário', 'O INSS deverá solicitar ao filiado a apresentação de documentos comprobatórios de informações que não constarem no CNIS, inclusive aqueles expedidos por órgãos públicos ou certidões, vedada a sua obtenção diretamente do órgão ou da entidade responsável pela base de dados oficial.', 'Com relação ao Cadastro Nacional de Informações Sociais (CNIS), julgue os itens que se seguem.', null, '["Certo", "Errado"]'::jsonb, 'B', null from public.exams where slug='inss-2022-tecnico'

on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);

commit;
