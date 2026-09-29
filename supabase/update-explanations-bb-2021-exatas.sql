-- ============================================================
-- Explicacoes (explanation) das questoes de EXATAS da prova
-- Banco do Brasil 2021 - Agente Comercial (Prova A) - Gabarito 1
-- Escopo: Matematica (16-20) e Matematica Financeira (26-30)
-- ============================================================
-- Uso: rode no SQL Editor do Supabase APOS o seed-bb-2021.sql.
-- Casa cada questao por slug do exame + numero.

-- ============================================================
-- MATEMATICA (16 a 20)
-- ============================================================

update public.questions q set explanation =
'Total 1000; 430 nao querem nenhum => 570 querem pelo menos um. Somando interessados: 270 + 400 = 670. Os que aparecem em ambos foram contados duas vezes: ambos = 670 - 570 = 100. Percentual = 100/1000 = 10%. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 16;

update public.questions q set explanation =
'Fibonacci: T(n+2) = T(n+1) + T(n). De T(2020) = T(2019) + T(2018) vem p = T(2019) + m, logo T(2019) = p - m. Entao T(2021) = T(2020) + T(2019) = p + (p - m) = 2p - m. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 17;

update public.questions q set explanation =
'Igualando os modelos: 1000 e^(kx) = 10^(2x+3) = 10^3 * 10^(2x). Como 1000 = 10^3, resta e^(kx) = 10^(2x) => kx = 2x ln 10 => k = 2 ln 10 = ln(10^2) = ln 100. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 18;

update public.questions q set explanation =
'Comprimento apos n passos: (b - a)/2^n, com b - a = 5 - 1 = 4. Exige 4/2^n < 10^(-3) => 2^n > 4000. Como 2^11 = 2048 e 2^12 = 4096 > 4000, o menor n e 12. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 19;

update public.questions q set explanation =
'Sistema: 16d + 20u = 488 e 30d + 25u = 790 (d = preco da embalagem dupla, u = unitaria). Resolvendo, d = 18 e u = 10. Preco por unidade na dupla = 18/2 = 9. Desconto por unidade = (10 - 9)/10 = 10%. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 20;

-- ============================================================
-- MATEMATICA FINANCEIRA (26 a 30)
-- ============================================================

update public.questions q set explanation =
'A taxa acumulada no ano nao pode passar de 8,36%. Ja aplicados 5%, a nova taxa i sobre C2 deve satisfazer (1,05)(1 + i) = 1,0836 => 1 + i = 1,0836/1,05 = 1,032 => i = 3,20%. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 26;

update public.questions q set explanation =
'Corrigindo os 4 depositos de R$ 10.000 (jan/2018 a jan/2021) ate jan/2023 a 10% a.a.: 10000*(1,611 + 1,464 + 1,331 + 1,21) = 56.160. Falta 65.000 - 56.160 = 8.840 em jan/2023. O deposito de jan/2022 rende 1 ano (x1,1): 8.840/1,1 = 8.036,36, que esta no intervalo R$ 8.000 a R$ 8.199. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 27;

update public.questions q set explanation =
'Principal R$ 25.000. Multa 2% = 500. Juros simples 0,2% ao dia por 12 dias = 2,4% = 600. Total = 25.000 + 500 + 600 = R$ 26.100,00. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 28;

update public.questions q set explanation =
'Fator acumulado em 2 anos: 1,21 * 1,96 = 2,3716. A taxa equivalente i por periodo satisfaz (1 + i)^2 = 2,3716 => 1 + i = raiz(2,3716) = 1,54 => i = 54%. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 29;

update public.questions q set explanation =
'Valor financiado PV = 20.000 + 660 = 20.660; i = 3% a.m.; n = 24; (1,03)^24 = 2,033. Sistema PRICE (prestacoes iguais): PMT = PV * i * (1+i)^n / ((1+i)^n - 1) = 20.660 * 0,03 * 2,033 / (2,033 - 1) ~= 1.220. Como as parcelas sao iguais, a 2a prestacao tambem vale aproximadamente R$ 1.220,00. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'bb-2021-a-comercial' and q.number = 30;
