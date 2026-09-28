-- Seed: Banco do Brasil 2022 - Escriturario - Agente Comercial (Prova A)
-- Fonte: Selecao Externa 2022/001 - Edital no 01 - 2022/001 BB - Prova realizada em 23/04/2023 - Banca CESGRANRIO
-- Gabarito utilizado: GABARITO 4 (Prova A)
-- Gabarito objetivo (Gabarito 4):
--   Lingua Portuguesa 1-10: D,D,A,C,E,B,A,D,B,E
--   Lingua Inglesa 11-15: A,D,D,E,A
--   Matematica 16-20: B,D,A,C,B
--   Atualidades do Mercado Financeiro 21-25: D,B,C,E,A
--   Matematica Financeira 26-30: C,E,B,B,D
--   Conhecimentos Bancarios 31-40: C,D,A,B,D,E,C,A,C,D
--   Conhecimentos de Informatica 41-55: C,C,D,B,D,E,B,D,B,A,C,A,B,D,B
--   Vendas e Negociacao 56-70: B,D,B,C,E,A,E,B,B,A,C,C,D,D,E

insert into public.exams (slug, title, source, year)
values ('bb-2022-a-comercial', 'Banco do Brasil 2022 - Agente Comercial (Prova A)', 'bb', '2022-A')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- Texto de apoio: A historia do metodo braile
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Língua Portuguesa',
'Diferentemente do método de Barbier, o método de Haüy',
'A história do método braile

Ler no escuro. Quem já tentou sabe que é impossível. Mas foi exatamente a isso que um francês chamado Louis Braille dedicou a vida. Nascido em Coupvray, uma pequena aldeia nos arredores de Paris, em 1809, desde cedo ele mostrou muito interesse pelo trabalho do pai. Pouco depois de completar 3 anos, o menino começou a brincar na selaria do pai, cortando pequenas tiras de couro. Uma tarde, uma sovela, instrumento usado para perfurar o couro, escapou-lhe da mão e atingiu o seu olho esquerdo. O resultado foi uma infecção que, seis meses depois, afetaria também o olho direito. Aos 5 anos, o garoto estava completamente cego.

A tragédia não o impediu, porém, de frequentar a escola por dois anos e de se tornar ainda um aluno brilhante. Por essa razão, ele ganhou uma bolsa de estudos no Instituto Nacional para Jovens Cegos, em Paris, um colégio interno fundado por Valentin Haüy (1745-1822). Além do currículo normal, Haüy introduzira um sistema especial de alfabetização, no qual letras de forma impressas em relevo, em papelão, eram reconhecidas pelos contornos. Em 1821, aos 12 anos, conheceu um método inventado pouco antes por Charles Barbier de La Serre, oficial do Exército francês.

O método Barbier, também chamado escrita noturna, era um código de pontos e traços em relevo impressos também em papelão. Destinava-se a enviar ordens cifradas a sentinelas em postos avançados. Estes decodificariam a mensagem até no escuro. Mas, como a ideia não pegou na tropa, Barbier adaptou o método para a leitura de cegos, com o nome de grafia sonora. O sistema permitia a comunicação entre os cegos, pois com ele era possível escrever, algo que o método de Haüy não possibilitava. O de Barbier era fonético: registrava sons e não letras. Dessa forma, as palavras não podiam ser soletradas.

Pesquisando a fundo a grafia sonora, Braille percebeu suas limitações e pôs-se a aperfeiçoá-la. Em 1824, seu método estava pronto. Primeiro, eliminou os traços, para evitar erros de leitura; em seguida, criou uma célula de seis pontos, divididos em duas colunas de três pontos cada, que podem ser combinados de 63 maneiras diferentes.

Em 1826, aos 17 anos, ainda estudante, Braille começou a dar aulas. O braile é lido passando-se a ponta dos dedos sobre os sinais de relevo. Aplica-se a qualquer língua, sem exceção, e também à estenografia, à música e às notações científicas em geral.

Louis Braille morreu de tuberculose em 1852, com apenas 43 anos. Temia que seu método desaparecesse com ele, mas, finalmente, em 1854 foi oficializado pelo governo francês.

ATANES, Silvio. Super Interessante. Disponível em: https://super.abril.com.br/historia/. Acesso em: 23 out. 2022. Adaptado.',
'',
'["era conhecido como grafia sonora.","impossibilitava soletrar palavras.","possibilitava a escrita.","usava letras em relevo.","apresentava pontos e traços."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Língua Portuguesa',
'A partir da leitura do texto, constata-se que Braille',
'',
'',
'["começou a dar aulas quando atingiu a maioridade.","foi adotado por Valentin Haüy depois da tragédia.","queria seguir o ofício do pai.","estudou com bolsa de estudos.","trabalhava em selarias quando criança."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Língua Portuguesa',
'Considere a expressão em destaque da seguinte passagem do parágrafo 3: "O método Barbier, também chamado escrita noturna, era um código de pontos e traços em relevo impressos também em papelão. Destinava-se a enviar ordens cifradas a sentinelas em postos avançados. Estes decodificariam a mensagem até no escuro." No trecho, por meio do processo de coesão textual, a expressão destacada (Estes) retoma',
'',
'',
'["\"grafia sonora\"","\"a ideia\"","\"um código de pontos e traços em relevo impressos também em papelão\"","\"ordens cifradas\"","\"a mensagem\""]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Língua Portuguesa',
'Em "No ano seguinte, foi apresentado ao mundo, na Exposição Internacional de Paris, por ordem do imperador Napoleão III (1808-1873), que programou ainda uma série de concertos de piano com ex-alunos de Braille" (parágrafo 7), a palavra em destaque apresenta o mesmo sentido que em:',
'',
'',
'["A reglete ainda é usada por deficientes visuais.","Os restos mortais de Braille ainda estão no Panthéon.","Louis Braille criou um método revolucionário e ainda era excelente pianista.","Vencer barreiras relacionadas à acessibilidade ainda é um desafio.","O método Braille ainda era desconhecido por muitas pessoas."]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Língua Portuguesa',
'O trecho do parágrafo 4 "Pesquisando a fundo a grafia sonora, Braille percebeu suas limitações e pôs-se a aperfeiçoá-la" pode ser reescrito, sem alterar o sentido que apresenta no texto, como:',
'',
'',
'["Se pesquisasse a fundo a grafia sonora, Braille perceberia suas limitações e pôr-se-ia a aperfeiçoá-la.","Apesar de pesquisar a fundo a grafia sonora, Braille percebia suas limitações e punha-se a aperfeiçoá-la.","Para pesquisar a fundo a grafia sonora, Braille percebeu suas limitações e pôs-se a aperfeiçoá-la.","Embora pesquisasse a fundo a grafia sonora, Braille percebeu suas limitações e pôs-se a aperfeiçoá-la.","Quando pesquisava a fundo a grafia sonora, Braille percebeu suas limitações e pôs-se a aperfeiçoá-la."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Língua Portuguesa',
'A frase em que a palavra destacada respeita as regras da concordância nominal de acordo com a norma-padrão da língua portuguesa é:',
'',
'',
'["O sistema de códigos de Braille tinha menas limitações que o de Barbier.","Os alunos ficavam meio desorientados com o método de Barbier.","Hoje, Braille e seu método são muitos conhecidos.","Depois do acidente, Braille e sua família não ficaram só.","Há bastante razões para se considerar Braille um herói nacional."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Língua Portuguesa',
'De acordo com a norma-padrão da língua portuguesa, o sinal indicativo de crase está corretamente empregado em:',
'',
'',
'["Todos estavam à espera de que o valor de Braille fosse reconhecido.","Ele queria ensinar à todos os alunos o seu sistema de escrita.","Braille foi forçado à superar sua cegueira.","O professor referiu-se à um aluno brilhante: Braille.","Braille não foi reconhecido até que se consolidasse à oficialização de seu método."]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Língua Portuguesa',
'Em "Mas, como a ideia não pegou na tropa, Barbier adaptou o método para a leitura de cegos" (parágrafo 3), a oração destacada apresenta o valor semântico de',
'',
'',
'["consequência","proporção","fim","causa","tempo"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Língua Portuguesa',
'No trecho do parágrafo 2, "conheceu um método inventado pouco antes por Charles Barbier de La Serre, oficial do Exército francês", a vírgula está empregada com a mesma função que em:',
'',
'',
'["No Instituto Nacional para Jovens Cegos, Braille desenvolveu seus estudos.","Escrita noturna, método de Barbier, não teve sucesso quando criado.","A cegueira não o impediu, no entanto, de estudar.","Perspicaz, Braille percebeu falhas no método de Barbier.","A infecção, seis meses depois, afetou o segundo olho de Braille."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Língua Portuguesa',
'O pronome oblíquo átono está colocado de acordo com a norma-padrão da língua portuguesa em:',
'',
'',
'["Braille recebia os alunos e sempre auxiliava-os com o método criado.","Quantos impressionaram-nos como Braille?","Me surpreende a história de vida de Braille.","Seu método não trouxe-lhe reconhecimento em vida.","O menino cego aos cinco anos tornar-se-ia um herói nacional na França."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- LINGUA INGLESA (Questoes 11 a 15)
-- Texto de apoio: Fed's Jefferson says inflation is U.S. central bank's most worrisome problem
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Língua Inglesa',
'In the section of last paragraph "it remains uncertain how that will work, and in the meantime inflation remains elevated", the expression "in the meantime" is synonymous with',
'Fed''s Jefferson says inflation is U.S. central bank''s most worrisome problem

Inflation is the most serious problem facing the Federal Reserve and "may take some time" to address, Fed Governor Philip Jefferson said on Tuesday in his first public remarks since joining the U.S. central bank''s governing body.

"Restoring price stability may take some time and will likely result in a period of below-trend growth," Jefferson told a conference in Atlanta, joining the current Fed consensus for continued interest rate increases to battle price pressures.

"I want to assure you that my colleagues and I are resolute that we will bring inflation back down to 2% ... We are committed to taking the further steps necessary."

Monetary policy that stabilizes inflation "can produce long-term, noninflationary economic expansions ... that economic history suggests is an ideal framework or environment for inclusive growth," Jefferson said.

Fed Chair Jerome Powell has admitted that the central bank''s intent to slow economic growth will cause economic "pain" and likely increased unemployment, but that the worst outcome would be to let inflation take root.

In his remarks, Jefferson said there are reasons to think rigid conditions in the labor market are already easing. That could help reduce salary growth, Jefferson said, and there were indications as well that "supply bottlenecks have, finally, begun to resolve," and could also help slow down price increases.

But it remains uncertain how that will work, and in the meantime "inflation remains elevated, and this is the problem that concerns me most," Jefferson said. "Inflation creates economic burdens for households and businesses, and everyone feels its effects."

Available at: https://www.reuters.com/markets/us/. Retrieved on: Oct 4, 2022. Adapted.',
'',
'["for now","always","in the past","sometimes","in the future"]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Língua Inglesa',
'The main purpose of the text is to',
'',
'',
'["inform that the U.S. central bank''s monetary policy has already decreased inflation to 2%.","show that controlling inflation is a minor concern, compared to unemployment.","argue that slowing the economic growth will definitely cause inflation to take root.","indicate that inflation is a serious problem, and it needs to be adequately dealt with.","suggest that restoring price stability will certainly increase inflation."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Língua Inglesa',
'The fragment of last paragraph "Inflation creates economic burdens for households and businesses" means that inflation',
'',
'',
'["promotes savings and investments.","supports institutions and jobs.","alleviates families and jobs.","oppresses families and companies.","stimulates institutions and commerce."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Língua Inglesa',
'In the segment of 5th paragraph "the worst outcome would be to let inflation take root", the words "would be" signal',
'',
'',
'["an inevitable destiny","an indefinite present","a certain future","a definite past","a hypothetical possibility"]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Língua Inglesa',
'In the fragment of 5th paragraph "the worst outcome would be to let inflation take root", the expression "take root" could be replaced, with no change in meaning, by',
'',
'',
'["become established.","be disconsidered.","be extinguished.","become inactive.","come to an agreement."]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA (Questoes 16 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Matemática',
'As 2023 assertivas a seguir estão escritas em um caderno. 1) Só 1 assertiva é falsa neste caderno. 2) Só 2 assertivas são falsas neste caderno. 3) Só 3 assertivas são falsas neste caderno. ... n) Só n assertivas são falsas neste caderno. ... 2022) Só 2022 assertivas são falsas neste caderno. 2023) Só 2023 assertivas são falsas neste caderno. Considerando-se essas 2023 assertivas, o número de assertivas verdadeiras é',
'',
'',
'["0","1","2023","2022","1011"]'::jsonb,
'B',
'As assertivas se contradizem entre si: cada uma afirma um número diferente de assertivas falsas, então no máximo uma pode ser verdadeira.
Se exatamente uma é verdadeira, então há 2022 falsas. Logo a assertiva verdadeira é justamente a de número 2022 ("Só 2022 assertivas são falsas").
Verificação: as outras 2022 assertivas ficam falsas, o que é coerente. Portanto o número de assertivas verdadeiras é 1 (alternativa B).'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Matemática',
'J convenceu o diretor de um curso preparatório a abrir uma turma especialmente para o concurso em que ele pretende se inscrever. O diretor estabeleceu a seguinte condição: uma sala com 70 lugares (capacidade para até 70 estudantes) será disponibilizada para a turma, desde que cada estudante, incluindo J, pague mensalmente R$ 660,00, mais R$ 30,00 por cada lugar vago. Para que o curso tenha arrecadação mensal máxima com essa turma, ela deverá ter exatamente x estudantes. Dividindo-se x por 5, obtém-se resto igual a',
'',
'',
'["4","3","0","1","2"]'::jsonb,
'D',
'Seja n o número de estudantes. Os lugares vagos são (70 − n), então cada um paga 660 + 30·(70 − n).
Arrecadação: R(n) = n·[660 + 30·(70 − n)] = n·(2760 − 30n) = 2760n − 30n².
É uma parábola com concavidade para baixo; o máximo ocorre no vértice n = −2760 / (2·(−30)) = 2760/60 = 46.
Logo x = 46 estudantes. Dividindo 46 por 5: 46 = 5·9 + 1, resto = 1 (alternativa D).'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Matemática',
'A sequência dos primeiros 2100 números inteiros positivos foi disposta em uma tabela de 7 colunas. As linhas de número ímpar recebem só seis números da sequência, a partir da Coluna 1, ficando a Coluna 7 vazia; já as linhas de número par também recebem só seis números, mas a partir da Coluna 2, ficando a Coluna 1 vazia. Sendo assim, os números 1808 e 2023 estão escritos, respectivamente, nas seguintes colunas:',
'',
'',
'["3 e 2","6 e 2","6 e 4","3 e 3","6 e 3"]'::jsonb,
'A',
'Cada linha (par ou ímpar) recebe exatamente 6 números. Então a linha de um número N é dada por ⌈N/6⌉ e a posição dentro da linha é p = N − 6·(linha − 1).
Para 1808: linha = ⌈1808/6⌉ = 302 (par, pois começa na Coluna 2). Posição: 1808 − 6·301 = 1808 − 1806 = 2. Numa linha par a posição 1 fica na Coluna 2, a 2 na Coluna 3 → Coluna 3.
Para 2023: 6·337 = 2022, então 2023 é o 1º número da linha 338 (par). Posição 1 na linha par → Coluna 2.
Portanto, 1808 está na Coluna 3 e 2023 na Coluna 2 (alternativa A).'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Matemática',
'Um investidor muito supersticioso escolhe, mensalmente, um conjunto de três tipos de investimento para aplicar alguma quantia. Ele toma por regra dispor apenas dos mesmos nove tipos de investimentos e nunca repetir, em um mesmo mês, o mesmo conjunto de três tipos já usados em qualquer mês anterior. Considerando-se as condições descritas, o número máximo de meses em que o investidor poderá fazer esses investimentos é',
'',
'',
'["35","48","84","60","56"]'::jsonb,
'C',
'A ordem dos três tipos escolhidos não importa (é um conjunto), então é uma combinação de 9 elementos tomados 3 a 3.
C(9,3) = 9! / (3!·6!) = (9·8·7)/(3·2·1) = 504/6 = 84.
Como cada mês usa um conjunto distinto, o número máximo de meses é 84 (alternativa C).'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Matemática',
'Três novas agências de um banco estão sendo criadas. Todos os armários são idênticos e têm o mesmo preço, o mesmo ocorrendo com as mesas e com as cadeiras. Agência X: 4 armários, 7 mesas, 10 cadeiras, custo total R$ 7500. Agência Y: 1 armário, 2 mesas, 3 cadeiras, custo total R$ 2080. Agência Z: 2 armários, 2 mesas, 2 cadeiras, custo total = ? O custo total da compra do material para a Agência Z, em R$, é de',
'',
'',
'["2.740,00","2.520,00","2.200,00","2.380,00","2.460,00"]'::jsonb,
'B',
'Sejam a, m e c os preços do armário, da mesa e da cadeira. Do enunciado:
(X) 4a + 7m + 10c = 7500
(Y) a + 2m + 3c = 2080  →  multiplicando por 4: 4a + 8m + 12c = 8320
Subtraindo (X) de 4·(Y): (4a+8m+12c) − (4a+7m+10c) = 8320 − 7500 → m + 2c = 820, logo 2m + 4c = 1640.
A Agência Z custa 2a + 2m + 2c = 2·(a + 2m + 3c) − (2m + 4c) = 2·2080 − 1640 = 4160 − 1640 = 2520.
Portanto, R$ 2.520,00 (alternativa B).'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- ATUALIDADES DO MERCADO FINANCEIRO (Questoes 21 a 25)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Atualidades do Mercado Financeiro',
'O Internet banking facilita a realização de transações bancárias, mas também oferece risco para usuários finais que são pessoas naturais. Para minimizar os riscos, o Banco Central do Brasil determina que os participantes provedores de conta transacional do Pix devem estabelecer limites máximos de valor para iniciação de um Pix com finalidade de compra ou de transferência. Os participantes poderão, a seu critério, ofertar funcionalidade para que o usuário final possa solicitar que o período noturno compreenda o período entre',
'',
'',
'["1 hora e 7 horas","0 hora e 7 horas","21 horas e 6 horas","22 horas e 6 horas","23 horas e 6 horas"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Atualidades do Mercado Financeiro',
'Existem grupos que trabalham cooperativamente para validar as transações na Blockchain, por meio da solução de cálculos complexos, e que concordam em dividir, proporcionalmente, recompensas de bloco entre eles, de acordo com sua contribuição nesse trabalho. Tais grupos são denominados',
'',
'',
'["pools de distribuição","pools de mineração","grupos de data lake","redes de extração","cooperativas de blocos"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Atualidades do Mercado Financeiro',
'Quando um indivíduo, ao comprar um produto em uma loja, efetua o pagamento utilizando papel-moeda (cash), a moeda estará cumprindo, nessa operação, a função de',
'',
'',
'["precaução","financiamento","meio de troca","unidade de medida de valor","reserva de valor"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Atualidades do Mercado Financeiro',
'No Brasil, uma característica do modelo de negócios dos bancos na era digital é a',
'',
'',
'["menor oferta de produtos e serviços aos clientes.","lentidão dos canais de comunicação.","maior proximidade física com os clientes nas agências bancárias.","dispensa de regulação por parte do Banco Central do Brasil.","disseminação das plataformas on-line."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Atualidades do Mercado Financeiro',
'O Banco Central tem dedicado atenção às entidades identificadas como shadow banking (bancos sombra). Essas entidades já se encontram sob alguma regulação e supervisão, feita por autoridades com jurisdição nacional, como a(o)',
'',
'',
'["CVM","Open finance","Banco Caixa Econômica","Banco do Brasil","Banco SICRED"]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA FINANCEIRA (Questoes 26 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Matemática Financeira',
'Um cliente tem duas opções para investir R$ 100.000,00 em um prazo de 2 anos. A primeira opção oferece um retorno de 12% ao ano no regime de juros compostos, mas há cobrança de 15% de imposto sobre os juros proporcionados pelo investimento. Já a segunda opção oferece um retorno de 10% ao ano no regime de juros compostos, mas sem qualquer cobrança de imposto. Ao escolher a opção mais lucrativa, ao final de exatos dois anos de investimento, esse cliente receberá a mais, em relação à opção menos lucrativa, uma quantia, em R$, igual a',
'',
'',
'["4.440,00","2.940,00","624,00","824,00","1.524,00"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Matemática Financeira',
'Um banco oferece para um cliente um investimento que lhe proporcionará uma taxa de juros de 1% ao mês, no regime de juros compostos. Esse mesmo banco também disponibiliza uma linha de crédito chamada cheque especial, cobrando uma taxa de juros de 4% ao mês, no regime de juros compostos. Para esse cliente, a diferença entre a taxa anual do cheque especial e a taxa anual do investimento oferecido é (Dado: 1,01^12 = 1,1268; 1,04^12 = 1,6010)',
'',
'',
'["60,10%","48,68%","12,68%","36,00%","47,42%"]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Matemática Financeira',
'O capital de um cliente do segmento ultra-especial ficou aplicado durante 50 dias a uma taxa de juros simples de 1,5% ao mês. Ao final desse prazo, o cliente resgatou tudo e pagou R$ 4.500,00, referentes a 22,5% de imposto de renda sobre os juros proporcionados pelo investimento. Considerando-se o mês com 30 dias, o valor aplicado nessa operação, em R$, foi',
'',
'',
'["950.000,00","800.000,00","450.000,00","700.000,00","750.000,00"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Matemática Financeira',
'Uma empresa tomou um empréstimo de R$ 50.000,00 em janeiro de 2022, a uma taxa de juros compostos de 5% ao mês. Para amortizar parte da dívida, a empresa pagou R$ 30.000,00 em março de 2022, e R$ 20.000,00 em abril de 2022. No que se refere a esse empréstimo, o valor, em R$, do saldo devedor dessa empresa, em maio de 2022, era, aproximadamente,',
'',
'',
'["7.201,00","6.700,00","3.625,00","3.806,00","6.381,00"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Matemática Financeira',
'A empresa XYZ planeja comprar um equipamento em janeiro de 2023, cujo preço à vista é R$ 300.000,00, pagando com uma entrada e mais duas parcelas. A entrada (primeira parcela) será paga em janeiro de 2023 (no ato da compra); a segunda parcela, em janeiro de 2024, no valor de R$ 150.000,00; e a terceira parcela, em janeiro de 2025, também no valor de R$ 150.000,00. Considerando-se a equivalência financeira a juros compostos, se a taxa de juros cobrada pelo vendedor é de 10% ao ano, o valor da entrada, em R$, será, aproximadamente,',
'',
'',
'["63.000,00","54.280,00","20.000,00","39.670,00","48.750,00"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CONHECIMENTOS BANCARIOS (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Conhecimentos Bancários',
'Um consultor financeiro capta clientela para investir em instituição financeira legalmente autorizada a funcionar pelo Banco Central do Brasil. Em determinado momento, é informado de que um dos indivíduos indicados estaria realizando operações de aportes de recursos em descompasso com sua capacidade financeira. Nos termos da Carta Circular no 4.001, de 29 de janeiro de 2020, os fatos descritos pertinentes aos aportes constituem a ocorrência de indícios de suspeita de lavagem de dinheiro para fins dos procedimentos relacionados às suas atividades financeiras de',
'',
'',
'["análise","exclusão","monitoramento","bloqueio","interdição"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Conhecimentos Bancários',
'Uma funcionária de determinada instituição financeira segue religião de matriz africana, fato conhecido dos demais colegas de trabalho. Após reunião com a equipe, é surpreendida com afirmações desairosas em relação aos que são integrantes da referida religião. Essa situação não ocorreria facilmente no Banco do Brasil, uma vez que, nos termos do seu Código de Ética, as relações devem ser pautadas pelo respeito a várias diferenças, dentre as quais figuram as diferenças',
'',
'',
'["alteradas","preventivas","pessoais","religiosas","cambiais"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Conhecimentos Bancários',
'Um pesquisador em ciências da informação busca descobrir como os vários sistemas financeiros nacionais tratam a proteção dos seus bancos de dados contra ataques cibernéticos. Nos termos da Resolução CMN no 4.658, de 26 de abril de 2018, que dispõe sobre a política de segurança cibernética aplicável às instituições financeiras, devem ser observados, no mínimo, os controles específicos, incluindo os voltados para a rastreabilidade da informação, que busquem garantir a segurança das',
'',
'',
'["informações sensíveis","questões litigiosas","relações empresariais","situações sigilosas","bases financeiras"]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Conhecimentos Bancários',
'Se os preços das mercadorias produzidas no Brasil e nos Estados Unidos forem calculados em uma mesma moeda comum (por exemplo, em Dólar americano) e, na pressuposição de que todos os demais fatores permaneçam constantes, uma desvalorização real da moeda brasileira em relação ao Dólar americano',
'',
'',
'["manterá inalterados os preços dos produtos exportados do Brasil para os Estados Unidos.","barateará relativamente os produtos exportados do Brasil para os Estados Unidos.","desestimulará as exportações brasileiras para os Estados Unidos.","tornará relativamente mais baratas as viagens turísticas dos brasileiros para os Estados Unidos.","encarecerá relativamente os produtos exportados do Brasil para os Estados Unidos."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Conhecimentos Bancários',
'Considere o conceito de paridade relativa real do poder de compra. Considere, também, que, no início de um determinado período, a taxa de câmbio nominal R$/US$ seja igual à paridade relativa real do poder de compra. Nesse contexto, para que a paridade relativa real do poder de compra (ou seja, a taxa de câmbio real R$/US$) fique constante, entre o início e o final daquele período, será preciso que a taxa de desvalorização nominal do Real brasileiro em relação ao Dólar americano seja',
'',
'',
'["livremente cotada no mercado de câmbio, sem relação com as taxas de inflação brasileira e americana, acumuladas no período.","igual à taxa de inflação americana acumulada no período.","igual à diferença entre as taxas de inflação americana e brasileira, acumuladas no período.","igual à diferença entre as taxas de inflação brasileira e americana, acumuladas no período.","igual à taxa de inflação brasileira acumulada no período."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Conhecimentos Bancários',
'A função principal das operações de Tesouraria bancária é',
'',
'',
'["gerenciar as atividades de marketing, publicidade e propaganda da instituição financeira.","aumentar a carteira de serviços financeiros oferecidos aos clientes.","aprimorar a qualidade de atendimento aos clientes.","ampliar o uso de serviços digitais nas transações financeiras.","administrar os fluxos de despesas e receitas da instituição financeira, visando a controlar os gastos e a maximizar os lucros."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Conhecimentos Bancários',
'A oferta da moeda (meios de pagamento M1) no Brasil tende a se expandir se as autoridades monetárias',
'',
'',
'["diminuírem os impostos indiretos incidentes sobre os bens de investimento.","aumentarem os dividendos pagos pelas empresas públicas.","comprarem liquidamente títulos públicos em operações de mercado aberto.","aumentarem a taxa de recolhimento de reserva compulsória sobre os depósitos nos bancos.","aumentarem a taxa do redesconto dos empréstimos de liquidez."]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Conhecimentos Bancários',
'No caso de um regime de taxa de câmbio fixa entre o Real e o Dólar americano, verifica-se que as',
'',
'',
'["taxas de juros no Brasil e nos Estados Unidos seriam muito próximas, se houvesse muita mobilidade de capital financeiro entre esses dois países.","taxas de câmbio entre o Real e a moeda europeia seriam fixas.","diferenças de taxa de inflação entre o Brasil e os Estados Unidos não alterariam a taxa de câmbio real entre as moedas desses dois países.","políticas monetárias expansionistas nos Estados Unidos causariam recessão no Brasil.","políticas monetárias no Brasil e nos Estados Unidos seriam sempre contracionistas."]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Conhecimentos Bancários',
'Considerando-se o atual regime cambial brasileiro, uma redução pronunciada da taxa de juros dos Estados Unidos, relativamente à taxa de juros no Brasil, tenderia a fazer com que',
'',
'',
'["as importações brasileiras originárias dos Estados Unidos fossem cambialmente desestimuladas.","os fluxos de capitais financeiros brasileiros para os Estados Unidos aumentassem.","a moeda brasileira, o Real, se valorizasse cambialmente em relação ao Dólar americano.","as exportações brasileiras para os Estados Unidos fossem cambialmente estimuladas.","as reservas brasileiras de divisas em Dólar americano diminuíssem."]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Conhecimentos Bancários',
'O Conselho Monetário Nacional (CMN) é um órgão importante do Sistema Financeiro Nacional. As atribuições do CMN são inúmeras, entre as quais',
'',
'',
'["emitir títulos do CMN, responsabilizando-se pelo seu resgate.","autorizar o funcionamento das instituições financeiras operando no país.","regular os serviços de compensação de cheques e outros papéis.","autorizar a emissão de papel moeda.","determinar, via Comitê de Política Monetária, a taxa de juros Selic."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CONHECIMENTOS DE INFORMATICA (Questoes 41 a 55)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Conhecimentos de Informática',
'Uma equipe está utilizando o Microsoft Teams e deseja-se agrupar as conversas dessa equipe por assunto, formando um tópico de discussão. Para isso, é necessário criar, para essa equipe, um(a)',
'',
'',
'["Sub-equipe","Atividade","Canal","Grupo","Reunião"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Conhecimentos de Informática',
'A ferramenta de Webmail viabiliza o uso do serviço de correio eletrônico de empresas utilizando um navegador Web. Após a composição de uma nova mensagem, o usuário deve fazer a submissão do formulário para o servidor Web que, por sua vez, fará a submissão do conteúdo da mensagem para a fila do servidor de correio eletrônico. Os protocolos de comunicação utilizados nestas duas etapas são, respectivamente,',
'',
'',
'["HTTP e POP3","SMTP e POP3","HTTP e SMTP","SMTP e HTTP","POP3 e SMTP"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Conhecimentos de Informática',
'Sejam os seguintes dados de uma planilha confeccionada no Excel 365, na coluna A (CODPECA) e coluna B (VALOR): P101 R$ 5,00; P102 R$ 13,00; P103 R$ 2,00; P104 R$ 26,00; P105 R$ 7,00; P106 R$ 10,00. Na célula C10 dessa planilha, está inserida a seguinte fórmula: =CONT.SE(B2:B6;"<=R$ 10,00"). Ao executar essa fórmula, o valor que aparecerá na célula C10 é',
'',
'',
'["6","5","2","3","4"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Conhecimentos de Informática',
'Os mecanismos de segurança combinam técnicas e ações de segurança para prover a proteção de usuários e de dados. O mecanismo de segurança que consiste em definir as ações que uma determinada entidade pode executar, ou a quais informações essa entidade pode ter acesso, é o de',
'',
'',
'["confidencialidade","autorização","identificação","integridade","autenticação"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Conhecimentos de Informática',
'As estações de trabalho de uma empresa estão sujeitas a ataques. Uma boa prática de segurança é utilizar uma amostra biométrica para se conectar aos dispositivos, aplicativos, serviços on-line e redes. O Windows 10 possui um recurso de segurança de entrada que possibilita usar uma amostra biométrica do rosto, da íris e da impressão digital, ou, ainda, um PIN (Personal Identification Number). Tal recurso é o',
'',
'',
'["Enhanced Authentication","Enhanced Login","Windows Security","Windows Hello","Advanced Login"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Conhecimentos de Informática',
'Um colaborador de uma empresa precisa restaurar uma versão específica de um documento que está sendo editado no aplicativo Word do Microsoft Office 365. Para verificar as versões do documento que estão disponíveis para a restauração, o colaborador deve selecionar o menu',
'',
'',
'["Revisão, selecionar a opção Controlar Alterações e selecionar a opção Somente as Minhas.","Revisão, selecionar a opção Controlar Alterações e selecionar a opção De todas as Pessoas.","Arquivo, escolher a opção Histórico e selecionar a opção Controle de Versões.","Arquivo, escolher a opção Sobre e selecionar a opção Controle de Versões.","Arquivo, escolher a opção Informações e selecionar a opção Histórico de Versões."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Conhecimentos de Informática',
'O som de uma música pode ser digitalizado e armazenado em um arquivo de computador. Suponha que em seu computador exista um arquivo de áudio que contém uma música e que foi codificado em um determinado formato (ex: MP3). Para poder reproduzir esse arquivo de áudio, no seu computador, é necessário ter um(a)',
'',
'',
'["ligação com a internet em funcionamento.","programa que faça a decodificação correta do arquivo.","bom monitor de vídeo.","microfone adequado.","programa antivírus atualizado e em funcionamento."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Conhecimentos de Informática',
'O Google Drive é uma das várias ferramentas da empresa Google que existem na nuvem. Essa ferramenta é particularmente adequada para',
'',
'',
'["realizar reuniões remotas via internet em tempo real.","realizar apresentações ao vivo via internet.","administrar agendas.","compartilhar arquivos de qualquer formato.","enviar e receber mensagens de correio eletrônico."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Conhecimentos de Informática',
'Sistemas de suporte à decisão podem ser utilizados no nível gerencial de uma empresa e também no nível estratégico. Os sistemas de apoio à decisão no nível estratégico de uma empresa via de regra utilizam apenas dados',
'',
'',
'["externos, do mercado onde a empresa atua, complementados por dados detalhados dos concorrentes da empresa.","internos, da própria empresa, complementados por dados externos, do mercado onde a empresa atua.","internos, da própria empresa.","externos, do mercado onde a empresa atua.","detalhados, dos concorrentes da empresa."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Conhecimentos de Informática',
'Os sistemas de arquivos permitem a organização dos dados em arquivos e pastas nos dispositivos de armazenamento. O sistema de arquivos nativo do Windows 10 que permite o armazenamento de um arquivo com mais de 8GB de dados é o',
'',
'',
'["NTFS","FAT32","ReiserFS","EXT4","FAT16"]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 51, 'Conhecimentos de Informática',
'Uma situação que ocorre no dia a dia da utilização de correio eletrônico é uma pessoa A (emissor), após enviar uma mensagem X para uma outra pessoa B (destinatário), receber uma resposta automática que informa que a caixa de correio do destinatário está cheia. Isso significa que a(o)',
'',
'',
'["espaço ocupado pela mensagem X é muito grande, e seu envio não foi autorizado pela infraestrutura do emissor.","quantidade máxima de mensagens que podem ser recebidas pelo destinatário naquele dia foi atingida.","espaço ocupado por mensagens na caixa de correio do destinatário atingiu o limite autorizado.","quantidade de mensagens na caixa de correio do destinatário atingiu o limite autorizado.","quantidade de mensagens enviadas pelo emissor atingiu o limite autorizado."]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 52, 'Conhecimentos de Informática',
'Sistemas de inteligência de negócio fornecem várias funcionalidades analíticas. Dentre essas funcionalidades, está a conhecida como dashboard, que é uma ferramenta',
'',
'',
'["visual, para apresentar dados de desempenho pré-definidos pelos usuários.","que permite aos usuários criar relatórios com tabelas de cruzamento de dados, do tipo pivot-table, a partir de parâmetros que são definidos previamente.","de consulta ad-hoc em SQL aos dados mantidos no data warehouse da empresa, por meio de técnicas no-code ou low-code.","de mineração de dados que permite fazer previsões sobre o desempenho da empresa.","que permite operações OLAP ad-hoc e é ligada diretamente ao banco de dados centralizado e operacional da empresa."]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 53, 'Conhecimentos de Informática',
'Uma prática comum e recomendada para proteção de estações de trabalho é que programas do tipo antivírus e antimalware sejam mantidos atualizados. Essas atualizações são necessárias principalmente para que esses programas',
'',
'',
'["sejam executados de forma mais rápida e eficiente.","possam identificar vírus e problemas mais recentes.","possuam uma interface moderna com o usuário.","ocupem o menor espaço possível em disco.","funcionem, porque versões desatualizadas não funcionam."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 54, 'Conhecimentos de Informática',
'Segundo o Resumo Técnico do Censo da Educação Superior 2020, publicado pelo INEP, em 2020, pela primeira vez, o número de ingressantes de graduação na modalidade de ensino a distância (EaD) superou o de ingressantes na modalidade presencial. A modalidade de EaD, atualmente, é uma opção real para o estudante de graduação brasileiro, graças a características que facilitam o acesso ao saber, como a(o)',
'',
'',
'["uso de vias de mão única para a comunicação entre docente e discente.","sincronismo e a delimitação física do espaço geográfico dos encontros entre docente e discentes.","eliminação da necessidade da interação social para a aprendizagem.","autoaprendizagem mediada por recursos didáticos em diferentes suportes de informação.","supervisão direta do docente por meio de sistemas tecnológicos inibidores da autonomia."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 55, 'Conhecimentos de Informática',
'A utilização de computadores compartilhados aumenta o nível de risco da segurança da informação. Para reduzir tais riscos, pode-se ativar a navegação privativa, que não salva as informações de navegação, como histórico e cookies. Para navegar de forma privativa no Mozilla Firefox, o usuário deve abrir uma nova janela privativa, pressionando a seguinte combinação de teclas:',
'',
'',
'["Ctrl+Shift+A","Ctrl+Shift+P","Ctrl+N","Ctrl+P","Ctrl+T"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- VENDAS E NEGOCIACAO (Questoes 56 a 70)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 56, 'Vendas e Negociação',
'Um cliente da instituição financeira M.O. apresenta reclamação sobre lançamentos indevidos na sua conta corrente sobre os quais solicitou esclarecimento. A instituição quedou-se inerte, tendo o cliente renovado seu pleito por vinte outras vezes, esgotados os meios normais de acesso ao cliente previstos. Nos termos da Resolução CMN no 4.860, de 23 de outubro de 2020, o caso deve merecer a intervenção da',
'',
'',
'["Corregedoria da instituição","Ouvidoria da instituição","Presidência da instituição","Auditoria da instituição","Diretoria da instituição"]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 57, 'Vendas e Negociação',
'Um indivíduo é correntista de determinada instituição financeira que lhe apresenta proposta para investimento no mercado de renda variável, apresentando o mercado de capitais como capaz de superar o rendimento fixo de várias aplicações financeiras, sem apresentar as desvantagens e perigos desse setor da economia. Nesse contexto, nos termos da Lei no 8.078/1990, a atuação dos prepostos da instituição financeira estaria violando a regra da',
'',
'',
'["conservação de valores","capacidade econômica","lucratividade planejada","informação adequada","menor onerosidade"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 58, 'Vendas e Negociação',
'D é um deficiente visual e necessita realizar atendimento presencial em determinada agência bancária. Dirige-se ao local onde possui conta corrente com seu acompanhante vidente, que também necessita do mesmo serviço. Ao ingressar no estabelecimento, verifica a existência de longa fila. O gerente da agência, constatando a necessidade do correntista, pessoalmente disponibiliza um caixa, que presta os serviços a D, bem como ao seu acompanhante. Nos termos da Lei no 13.146, de 06 de julho de 2015, a providência do gerente',
'',
'',
'["é medida sem proteção pelo estatuto legal.","realiza o direito a receber atendimento prioritário.","confronta com o princípio da igualdade entre os correntistas.","caracteriza um privilégio que deve ser reprimido.","está em dissonância com o posto na norma por privilegiar o acompanhante."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 59, 'Vendas e Negociação',
'Um consultor levantou o desempenho dos canais de vendas remotos de cinco empresas ao longo de uma semana. Empresa V: 480 compras iniciadas, 400 finalizadas. Empresa W: 600 iniciadas, 380 finalizadas. Empresa X: 800 iniciadas, 450 finalizadas. Empresa Y: 450 iniciadas, 330 finalizadas. Empresa Z: 580 iniciadas, 430 finalizadas. Com base nesses dados, a menor taxa de abandono foi registrada pela empresa',
'',
'',
'["Z","Y","V","W","X"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 60, 'Vendas e Negociação',
'Um vendedor do departamento de seguros de um banco foi chamado para atender um cliente que desejava informações a respeito de renovação de apólice de seguro de vida. Antes de encontrá-lo, o vendedor foi orientado pelo supervisor a acessar uma base de dados com informações pessoais dos clientes que o banco mantinha ilicitamente. Ao explorar essa base, o vendedor descobriu que o cliente era acometido de uma enfermidade crônica e alterou sua estratégia de negociação, impondo condições mais desfavoráveis ao cliente. O problema ético observado nesse caso é caracterizado como',
'',
'',
'["conflito de interesses","desafio tácito","propina","aliciamento","espionagem"]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 61, 'Vendas e Negociação',
'A gerência de uma agência bancária analisou os padrões de qualidade no atendimento aos clientes ao longo de um mês, e, como resultado, iniciou uma série de treinamentos focados na execução dos serviços prometidos aos clientes de forma segura e precisa. Dessa forma, a gerência está propondo tratar da dimensão da qualidade denominada',
'',
'',
'["confiabilidade","tangibilidade","entrega","empatia","resposta"]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 62, 'Vendas e Negociação',
'A empresa X fabrica bijuterias de prata há mais de dez anos e conseguiu um empréstimo bancário que será usado em ações para ampliar as suas vendas. A diretora de marketing decidiu que parte dos recursos será gasto em novas estratégias de comunicação e solicitou uma proposta de inbound marketing. A proposta que atende à solicitação da diretora e corresponde a uma ação de inbound marketing é a seguinte:',
'',
'',
'["Montar uma rede própria de lojas e tratar internamente de todo o processo de comercialização das bijuterias para fortalecer o marketing de relacionamento.","Solicitar aos engenheiros de produto que eles desenvolvam ligas de prata mais resistentes e apresentar essa nova característica do produto em propagandas.","Contratar consultores para a avaliação de todo o processo produtivo, visando à redução dos custos de produção e à redução dos preços.","Reunir os revendedores espalhados por todo o país via videoconferência e promover um treinamento focado em argumentos de persuasão.","Produzir vídeos que ensinam como manter e customizar bijuterias de prata e disponibilizar esse material para livre acesso em redes sociais."]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 63, 'Vendas e Negociação',
'Uma característica do atendimento bancário, que interfere decisivamente na percepção dos clientes, é a inseparabilidade – cuja importância se manifesta no fato de que o prestador de serviço é o serviço. Sendo assim, para administrar corretamente essa característica, o agente comercial deve estar preparado para',
'',
'',
'["tornar tangíveis os serviços ofertados aos clientes.","orientar os clientes na escolha de produtos adequados.","assumir totalmente os fatos que ocorrem em sua agência.","completar o estoque pleno dos serviços prestados.","compreender seus próprios benefícios e anseios."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 64, 'Vendas e Negociação',
'O diretor de um banco está preocupado com a jornada do cliente e tem concentrado atenção na fase da assimilação, a qual considera a mais importante. Levando-se em conta o caminho dos 5As do cliente, na fase de assimilação, o consumidor',
'',
'',
'["passa a dar preferência por uma marca específica e torna-se leal a essa marca.","é exposto às marcas a partir de experiências, anúncios e recomendações.","processa as mensagens das marcas e é atraído por algumas dessas mensagens.","pesquisa mais informações a respeito das marcas ofertadas no mercado.","decide qual marca e onde comprar o produto ou serviço desejado."]'::jsonb,
'B'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 65, 'Vendas e Negociação',
'Na sua prática publicitária para venda de um produto/serviço, uma instituição bancária vem adotando gatilhos mentais. Ela acionou o gatilho da escassez e da urgência quando ofereceu um(a)',
'',
'',
'["compra de um número limitado de cotas de um fundo agrícola, disponível para o cliente apenas nas 48 horas subsequentes ao oferecimento.","exposição de cases, entrevistas com especialistas do banco com conteúdos informativos para conhecer a sua marca.","plano de previdência de acordo com a renda do cliente que foi contratado por cinco de seus colegas.","recomendação de um especialista em finanças pessoais que já trabalhou com o pessoal da empresa do cliente para a compra de um seguro de vida.","e-book gratuito e um podcast sobre investimentos para os clientes que se subscrevem em seu canal/plataforma."]'::jsonb,
'A'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 66, 'Vendas e Negociação',
'Uma instituição bancária criou três contas únicas que não existiam no mercado financeiro: Digital, para movimentação exclusiva pelos seus canais de conveniência; Universitária, para pessoas que estão cursando o Ensino Superior; e Agrícola, para produtores rurais, com concessão de crédito e benefícios exclusivos. Essa ação é denominada',
'',
'',
'["vantagem competitiva sustentável","hospitalidade","estratégia de posicionamento","tecnografia","personalização em massa"]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 67, 'Vendas e Negociação',
'Para aumentar o valor percebido pelo cliente, o agente comercial deve reduzir os custos da transação, incluindo aqueles que vão além dos fatores financeiros, como, por exemplo, o',
'',
'',
'["preço dos produtos ofertados pelos concorrentes.","parcelamento do total investido, quando houver.","desgaste emocional até a definição do negócio.","impacto da aquisição no orçamento familiar.","montante em dinheiro investido ao longo do tempo."]'::jsonb,
'C'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 68, 'Vendas e Negociação',
'Frequentemente, os bancos realizam pesquisas de satisfação dos clientes com o objetivo de',
'',
'',
'["monitorar o trabalho que vem dos seus fornecedores.","fortalecer a vigilância sobre a equipe de atendimento.","acompanhar o passo a passo do cotidiano de suas equipes.","aperfeiçoar o atendimento prestado por seus funcionários.","fornecer parâmetros éticos para suas ações sociais."]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 69, 'Vendas e Negociação',
'O diretor operacional de um banco destacou que, para tomar decisões estratégicas inteligentes, é preciso entender como o esforço de vendas está alinhado às variáveis do ambiente interno do sistema de marketing organizacional, tais como as seguintes:',
'',
'',
'["condições econômicas e tecnologia","competição e ambiente físico","demografia e fatores legais e políticos","estrutura de preços e sistema de distribuição","fatores socioculturais e planejamento do produto"]'::jsonb,
'D'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 70, 'Vendas e Negociação',
'Na venda de um cartão de crédito, um corretor ficou preocupado em ajudar o cliente a identificar os riscos da decisão de compra. Para tanto, enfatizou três aspectos: o cliente não perderia dinheiro se fizesse essa compra; esse cartão seria aceito sempre e onde o cliente desejasse; os colegas de trabalho do cliente aprovariam a escolha dessa bandeira renomada. Esses três argumentos podem minimizar três tipos de riscos percebidos na pré-compra:',
'',
'',
'["estratégico, operacional, de conformidade","ergonômico, mecânico, sensorial","físico, sensorial, temporal","psicológico, físico, biológico","financeiro, funcional, social"]'::jsonb,
'E'
from public.exams where slug = 'bb-2022-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
