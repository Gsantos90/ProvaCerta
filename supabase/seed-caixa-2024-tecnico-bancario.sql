-- Seed: CAIXA 2024 - Técnico Bancário Novo - Prova 1 - Gabarito 1
-- Concurso Público - Edital nº 01/2024/NM - Provas aplicadas em 26/05/2024
-- 60 questões objetivas. Gabarito oficial informado pelo usuário.
-- 1-A,2-B,3-E,4-B,5-C,6-D,7-A,8-B,9-E,10-C,
-- 11-A,12-C,13-C,14-B,15-D,16-D,17-A,18-A,19-C,20-B,
-- 21-E,22-C,23-D,24-B,25-E,26-B,27-D,28-E,29-A,30-B,
-- 31-A,32-C,33-C,34-A,35-D,36-B,37-E,38-A,39-D,40-D,
-- 41-A,42-B,43-C,44-A,45-C,46-C,47-B,48-C,49-D,50-A,
-- 51-D,52-B,53-B,54-E,55-D,56-E,57-E,58-C,59-E,60-D.

insert into public.exams (slug, title, source, year)
values ('caixa-2024-tecnico-bancario', 'CAIXA 2024 - Técnico Bancário Novo', 'caixa', '2024')
on conflict (slug) do update set title = excluded.title;

-- CONHECIMENTOS BÁSICOS: LÍNGUA PORTUGUESA (1-5)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa', 'Um trecho do texto que enumera benefícios da redução do uso de combustíveis fósseis é:',
'Transporte movido a energia limpa tem a necessidade de investimento para o combate às mudanças climáticas\n\nA mobilidade urbana se tornou a maior tendência mundial da indústria automotiva. Você já se imaginou morando em uma cidade onde os setores público e privado promovem projetos com veículos elétricos para transporte público, redução de custos, de ruídos, de poluentes causadores do aquecimento global e de mudanças climáticas para que o transporte público funcione de verdade? Imagine as pessoas se deslocando, com facilidade, para vários bairros de metrô ou transporte a energia limpa interligados. Para aqueles que optam por pedalar, estão à disposição mais de 700 quilômetros de ciclovias espalhadas por todos os cantos. Tudo isso parece utopia, mas não é.\n\nEssa cidade existe e se chama Estocolmo, capital da Suécia, que ganhou o prêmio de Cidade Verde Europeia em 2010. Ela apresenta a maior percentagem de veículos não poluentes na Europa, e 75% da rede de transportes públicos recorrem a energias renováveis. Até 2050, o governo planeja ficar completamente livre de combustíveis fósseis, o que significa que todas as emissões relacionadas ao aquecimento público e privado, aos veículos e ao uso da eletricidade serão reduzidas a zero. Isso significa uma enorme contribuição à redução do aquecimento global.\n\nO uso de energia limpa é muito mais vantajoso para os consumidores. A energia limpa é mais econômica, eficiente e competitiva que os combustíveis fósseis. Para exemplificar, a eficiência de um veículo movido a energia elétrica supera os 80%, enquanto os movidos a combustão não ultrapassam os 20%. Isso sem levar em consideração que os veículos elétricos possuem menos peças e têm menor custo de manutenção, se comparados aos de combustão.\n\nComo esperado, a China lidera essa agenda do uso de energia limpa para a mobilidade urbana. Para acompanhar as tendências de desenvolvimento sustentável, Paris liderou na COP21 as assinaturas de medidas para promover energia limpa e mobilidade urbana elétrica em conjunto com mil cidades do mundo. Paris, Londres, Milão e Oslo foram exemplos, ao criar as zonas de baixa emissão de poluentes produzidos pelos combustíveis fósseis.\n\nO cenário de avanço pelo mundo é muito promissor. O Brasil, de forma ainda tímida, começa a se inserir nesse cenário global. Algumas cidades e estados brasileiros estão tomando a frente para acelerar o processo de desenvolvimento de veículos elétricos e sustentáveis.\n\nSão Paulo, a maior cidade brasileira, foi a primeira a ter parte de sua frota transformada em veículos elétricos em novembro de 2019. A cidade apresentou lotes de 15 ônibus 100% elétricos distribuídos pela cidade. De acordo com a montadora, os ônibus elétricos proporcionam custos operacionais 70% menores em relação ao ônibus convencional a diesel. Os veículos entregues são de piso baixo e trazem ar-condicionado, conexão wi-fi, tomadas USB, monitoramento por câmeras e dispositivo de acesso a cadeirantes, conforme especificações técnicas da SPTrans.\n\nGONÇALVES, D. Revista Fórum Brasil de Gestão Ambiental. Disponível em: https://revistafbga.com.br/transporte-movido-a-energia-limpa/. Acesso em: 2 mar. 2024. Adaptado.', '',
'["Você já se imaginou morando em uma cidade onde os setores público e privado promovem projetos com veículos elétricos para transporte público, redução de custos, de ruídos, de poluentes causadores do aquecimento global e de mudanças climáticas para que o transporte público funcione de verdade?","Essa cidade existe e se chama Estocolmo, capital da Suécia, que ganhou o prêmio de Cidade Verde Europeia em 2010. Ela apresenta a maior percentagem de veículos não poluentes na Europa","Paris liderou na COP21 as assinaturas de medidas para promover energia limpa e mobilidade urbana elétrica em conjunto com mil cidades do mundo.","Paris, Londres, Milão e Oslo foram exemplos, ao criar as zonas de baixa emissão de poluentes produzidos pelos combustíveis fósseis.","O cenário de avanço pelo mundo é muito promissor. O Brasil, de forma ainda tímida, começa a se inserir nesse cenário global."]'::jsonb, 'A', 'A alternativa A enumera diretamente a redução de custos, ruídos, poluentes e efeitos climáticos, apresentando vários benefícios em sequência.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa', 'Em sua progressão temática, depois de informar que algumas cidades e estados brasileiros estão acelerando o processo de desenvolvimento de veículos elétricos e sustentáveis, o texto desenvolve a ideia de que', '', '',
'["a energia limpa é mais econômica, eficiente e competitiva que os combustíveis fósseis.","a maior cidade brasileira transformou parte de sua frota em veículos elétricos em novembro de 2019, com redução de custos operacionais em relação ao uso do diesel.","a mobilidade urbana se tornou a maior tendência mundial da indústria automotiva, com projetos de construção de veículos elétricos.","uma cidade europeia, que já tem 75% da rede de transportes públicos movida a energias renováveis, ganhou um prêmio ambiental em 2010.","várias cidades europeias estão tomando medidas para promover energia limpa e baixa emissão de poluentes produzidos pelos combustíveis fósseis."]'::jsonb, 'B', 'Após mencionar o avanço brasileiro, o texto particulariza o caso de São Paulo, sua frota elétrica e a redução dos custos operacionais dos ônibus.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa', 'O segundo parágrafo do texto desempenha, em relação ao primeiro parágrafo, a função de expressar uma', '', '',
'["adição","condição","consequência","contraposição","exemplificação"]'::jsonb, 'E', 'O segundo parágrafo exemplifica a cidade descrita no primeiro: apresenta Estocolmo como uma cidade que já adota energia limpa e transportes renováveis.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa', 'A vírgula está empregada plenamente de acordo com as exigências da norma-padrão da língua portuguesa em:', '', '',
'["A preservação do planeta deve ser considerada, uma das prioridades da humanidade, porque é um dos grandes desafios para a manutenção da vida na Terra.","A redução do uso de plástico, ao abolir as sacolas não recicláveis no comércio, representa não só uma economia no dia a dia mas também a proteção da natureza.","As impressões em papel devem ser evitadas, porque atualmente, a preservação das árvores é essencial à vida humana.","O grande aumento nos níveis de chuva em determinadas regiões, pode ser atribuído ao processo de aquecimento global, e às mudanças climáticas.","Os veículos movidos por energia limpa, representam um incrível progresso na busca por reduzir a poluição atmosférica, nas grandes cidades do mundo."]'::jsonb, 'B', 'A alternativa B isola corretamente a oração adverbial intercalada; as demais apresentam vírgulas separando termos que não devem ser separados, como sujeito e predicado.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa', 'O acento grave indicador de crase está empregado, de acordo com a norma-padrão da língua portuguesa, na palavra destacada em:', '', '',
'["A bicicleta é a principal alternativa para à diminuição de poluentes que causam o aquecimento global.","A capacidade de deslocamento da população motiva-a à buscar o aprimoramento contínuo dos transportes e enfrentar a realidade diária.","A redução do uso de gasolina, agente poluidor da mais alta intensidade, pode ser conseguida com o incentivo à produção de carros elétricos.","As causas do aquecimento global podem ser minimizadas se houver a intervenção dos órgãos governamentais que garantam acessibilidade à pessoas vulneráveis.","O combate à mudanças climáticas requer grande investimento dos países para a renovação da frota de transporte público."]'::jsonb, 'C', 'Em ''incentivo à produção'', a preposição exigida por ''incentivo'' encontra o artigo feminino de ''produção'', formando a crase. Não há crase antes de verbo, pronome sem artigo ou substantivo usado sem artigo.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- CONHECIMENTOS BÁSICOS: LÍNGUA INGLESA (6-10)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Inglesa', 'Paragraphs 1 through 3 indicate that', 'The new cost of living in New Mexico\n\nALBUQUERQUE, N.M. — Prices are going up in New Mexico, especially at the grocery store. A recent study found the average New Mexican family is spending up to $286 on groceries per week – and even more when children are involved.\n\nAccording to the U.S. Bureau of Labor Statistics, the average price for a pound of ground beef was $5.56 last month. That’s about 20 cents cheaper than back in July, but almost a full dollar more expensive than in January 2020 – right before the pandemic hit. It’s a similar trend for milk, but a gallon is only about 50 cents more expensive than four years ago.\n\nEggs are half the price of what they were last winter, but that’s because there was an avian flu outbreak. Most produce items, like tomatoes and bananas, have stayed around the same price for several years now. That’s probably a good thing, because snacks are getting more expensive. Data shows the average bag of potato chips is almost $2 more expensive than four years ago. The price of chocolate chip cookies is also up almost 40%. All of those small increments add up.\n\nWhile it’s not likely there will be a major drop in grocery prices soon, there is some potentially good news when it comes to your housing budget. Officials with the Apartment Association of New Mexico say there are at least 40 housing projects under construction in the Albuquerque area. That is expected to bring at least 5,000 rental units to the market in the coming months. State leaders are pitching in too, with several new bills opening up millions of dollars in funding for even more housing projects. The average rent in Albuquerque is sitting at $1,340 a month – about $400 higher than in January 2020. Economists suggest an increased housing supply could reduce prices for everyone.\n\nThere is also evidence that wage growth is happening. Data from the U.S. Bureau of Labor Statistics showed average hourly earnings increased by 1.4% since last January. It’s worth noting wage growth rates have surpassed inflation rates since last February.\n\nAvailable at: https://www.kob.com/new-mexico/the-new-cost-of-living-in-new-mexico/. Retrieved on: Mar 1, 2024. Adapted.', '',
'["New Mexican families are now less numerous, therefore food provision is cheaper.","the consumption of beef and vegetables has increased, along with their prices.","an avian flu outbreak is affecting the prices of milk and eggs nowadays.","some food items are now more expensive than they were before the pandemic.","popular snacks have had the smallest price increase in the last four years."]'::jsonb, 'D', 'The text states that beef, milk, snacks and cookies cost more than before the pandemic, although eggs and produce follow different trends. Therefore some food items are more expensive.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Inglesa', 'In paragraph 4, the fragment “While it’s not likely there will be a major drop in grocery prices soon” conveys the idea that it is', '', '',
'["improbable for grocery items to become significantly cheaper in the near future.","certain that grocery products will become much cheaper in the long term.","mandatory that grocery prices be drastically reduced immediately.","disadvantageous for grocery articles to become considerably cheaper eventually.","imperceptible that grocery prices should be substantially reduced."]'::jsonb, 'A', '“Not likely” means improbable or unlikely, and “soon” refers to the near future.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Inglesa', 'In paragraph 4, the section “there are at least 40 housing projects under construction” means that new residential units', '', '',
'["have just been finished.","are currently being built.","might eventually be built.","couldn’t be finished.","are temporarily suspended."]'::jsonb, 'B', 'The expression “under construction” means that the projects are currently being built.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Inglesa', 'In the fragment of paragraph 4 “The average rent in Albuquerque is […] about $400 higher than in January 2020”, the word “higher” can be replaced, with no change in meaning, by', '', '',
'["cheaper","better","taller","more manageable","more expensive"]'::jsonb, 'E', 'In this context, “higher rent” means a rent that is more expensive.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Inglesa', 'The excerpt of paragraph 5 “wage growth rates have surpassed inflation rates since last February” informs that', '', '',
'["inflation rates have enlarged people’s income.","inflation rates are lower now than last February.","salaries have increased beyond inflation.","salaries have reduced because of inflation.","salaries have been considerably affected by inflation."]'::jsonb, 'C', '“Wage growth has surpassed inflation” means that salaries have grown at a higher rate than inflation.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS BÁSICOS: MATEMÁTICA FINANCEIRA (11-15)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Matemática Financeira', 'Uma empresa investiu R$ 300.000,00 em uma aplicação com prazo de 50 dias, a uma taxa de juro de 0,9% ao mês, no regime de juros simples. Considere mês comercial (30 dias) para essa operação, em todo o período. Em seguida, investiu todo o montante da operação anterior, em outra aplicação, a uma taxa de juro composto de 1,0% ao mês, durante dois meses, resgatando todo o montante dessa segunda aplicação. Considerando-se o valor inicial da 1ª aplicação e o valor final da 2ª aplicação, o valor, em reais, que mais se aproxima do total de juros obtidos pela empresa é igual a', '', '',
'["10.620,00","10.840,00","11.420,00","12.151,00","12.440,00"]'::jsonb, 'A', 'Na primeira aplicação, o juro simples é 300.000 × 0,009 × (50/30) = 4.500, resultando em 304.500. Na segunda, o montante é 304.500 × 1,01² = 310.620, aproximadamente. O juro total é 10.620.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Matemática Financeira', 'Para compor o capital de giro de sua empresa, um empresário tomou um empréstimo de R$ 100.000,00, em janeiro de 2024, a uma taxa de juro composto de 4% ao mês. Em março de 2024, após exatos 2 meses, efetuou o primeiro pagamento da dívida, pagando metade do saldo devedor. Em abril não efetuou qualquer pagamento, mas pretende quitar toda a dívida em maio de 2024, após exatos 4 meses. Considerando-se esse fluxo de capitais, o valor mais próximo, em reais, do saldo devedor desse empréstimo, em maio de 2024, é de', '', '',
'["57.934,00","58.193,00","58.493,00","58.943,00","59.806,00"]'::jsonb, 'C', 'Após dois meses, o saldo é 100.000 × 1,04². Ao pagar metade, resta metade desse saldo. Essa metade capitaliza por mais dois meses: 50.000 × 1,04⁴ = aproximadamente R$ 58.493.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Matemática Financeira', 'Uma determinada quantia foi emprestada a um cliente em janeiro de 2024, a uma taxa de 20% ao mês, no regime de juros compostos. Em fevereiro de 2024, não houve pagamentos. Em março de 2024, exatamente dois meses após a data do empréstimo, o cliente pagou R$ 1.440,00. E um mês após, em abril de 2024, pagou R$ 1.728,00, quitando a dívida. O valor do empréstimo realizado em janeiro de 2024, em reais, foi igual a', '', '',
'["1.800,00","1.900,00","2.000,00","2.100,00","2.200,00"]'::jsonb, 'C', 'O pagamento de abril equivale ao saldo após três meses: 1.728/1,2³ = 1.000. O pagamento de março, trazido ao início, é 1.440/1,2² = 1.000. Assim, o empréstimo inicial era 2.000.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Matemática Financeira', 'Um cliente comprou um imóvel no valor de R$ 600.000,00. Para isso, pagou 20% desse valor de entrada, em dezembro de 2023, e financiou o restante em prestações mensais no Sistema de Amortização Constante (SAC), a uma taxa de 0,5% ao mês, em um prazo de 20 anos, com a primeira prestação para janeiro de 2024 e a última para dezembro de 2043. Considere que a prestação mensal será composta de juros, amortização e uma taxa fixa de R$ 100,00 mensais (no ano de 2024) referente ao seguro. A soma das 12 primeiras prestações será igual a', '', '',
'["53.080,00","53.340,00","53.760,00","53.900,00","53.960,00"]'::jsonb, 'B', 'O saldo financiado é 480.000 e a amortização mensal no SAC é 480.000/240 = 2.000. Os juros caem de 2.400 no primeiro mês para 2.290 no décimo segundo; somando juros, amortizações e R$100 de seguro em cada parcela, chega-se a R$53.340.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Matemática Financeira', 'Em um certo país, a lei exige que sejam exibidas a taxa mensal e a taxa anual equivalente, no regime de juros compostos, junto ao preço do produto que será financiado. Considerando-se que um estabelecimento cobra uma taxa de juro mensal de 5% ao mês, essa taxa anual é, aproximadamente, de', '', '',
'["34%","48%","60%","80%","96%"]'::jsonb, 'D', 'A taxa efetiva anual é (1,05)¹² − 1. Como 1,05⁶ ≈ 1,34, então 1,05¹² ≈ 1,34² ≈ 1,80, resultando em aproximadamente 80% ao ano.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS BÁSICOS: PROBABILIDADE E ESTATÍSTICA (16-20)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Noções de Probabilidade e Estatística', 'A mediana dos valores da carteira de Finanças Sustentáveis da Caixa, em bilhões de reais, é, aproximadamente:', 'Valores: Comercial 31,9; FIES 51,7; Habitação 523,8; Minha Casa Minha Vida 9,5; Rural 8,4; Saneamento e Infraestrutura 95,4.', '',
'["120","62","52","42","31"]'::jsonb, 'D', 'Ordenando os seis valores, 8,4; 9,5; 31,9; 51,7; 95,4; 523,8, a mediana é a média dos dois centrais: (31,9 + 51,7)/2 = 41,8, aproximadamente 42.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Noções de Probabilidade e Estatística', 'Em 2023, o Bolsa Família pagou aproximadamente R$ 118 bilhões, beneficiando cerca de 24 milhões de famílias durante nove meses. O valor médio recebido por família durante todo o período foi, aproximadamente, de', '', '',
'["5.000,00","7.000,00","10.000,00","11.000,00","12.000,00"]'::jsonb, 'A', 'Dividindo R$118 bilhões por 24 milhões de famílias, obtém-se 118.000/24 ≈ R$4.917, valor aproximado de R$5.000 por família.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Noções de Probabilidade e Estatística', 'A probabilidade de um brasileiro adulto investir é de 36%; entre esses, 1 a cada 4 investe na poupança. Em uma população de 140 milhões de adultos, quantos milhões investem na poupança?', '', '',
'["12,6","35,0","50,4","54,0","85,4"]'::jsonb, 'A', 'Primeiro, 36% de 140 milhões = 50,4 milhões de investidores. Um quarto desse grupo investe na poupança: 50,4/4 = 12,6 milhões.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Noções de Probabilidade e Estatística', 'A cada dia são feitas 200 mil simulações de financiamentos e 2.000 contratos são assinados. A probabilidade de que um par aleatório de simulações independentes resulte em pelo menos um novo contrato assinado é', '', '',
'["50,00%","2,00%","1,99%","1,98%","0,01%"]'::jsonb, 'C', 'A probabilidade de uma simulação gerar contrato é 2.000/200.000 = 0,01. Para duas simulações, pelo menos uma: 1 − (0,99)² = 0,0199, ou 1,99%.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Noções de Probabilidade e Estatística', 'O gerente possui quatro contas com saldos de R$30 mil, R$50 mil, R$50 mil e R$70 mil. O coeficiente de variação dos saldos é, aproximadamente:', '', '',
'["14,14%","28,28%","44,44%","58,58%","64,64%"]'::jsonb, 'B', 'A média é 50. Os desvios são −20, 0, 0 e 20; o desvio-padrão populacional é 20/√2 ≈ 14,14. O coeficiente de variação é 14,14/50 ≈ 28,28%.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS BÁSICOS: COMPORTAMENTOS ÉTICOS E COMPLIANCE (21-25)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Comportamentos Éticos e Compliance', 'Segundo o Código de Ética, Conduta e Integridade da CEF, reuniões com agentes públicos envolvendo pessoas externas à CEF deverão ser registradas em', '', '',
'["apontamento","anotação","agenda","arquivo","ata"]'::jsonb, 'E', 'A regra de integridade exige o registro formal das reuniões com agentes públicos; o documento indicado é a ata.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Comportamentos Éticos e Compliance', 'Sociedade empresária com problemas de trabalho degradante solicita financiamento à Caixa. Nos termos da Política de Responsabilidade Social, Ambiental e Climática, o financiamento', '', '',
'["terá deferimento, devido ao número de empregos que serão gerados.","ocorrerá de acordo com a estrutura econômica da região.","será vedado, pela existência do problema trabalhista indicado.","entrará na fila por ordem de protocolo.","constará do planejamento da instituição."]'::jsonb, 'C', 'A política da Caixa veda operações com situações de trabalho degradante; o problema trabalhista impede o financiamento.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Comportamentos Éticos e Compliance', 'A LGPD estabelece que o encarregado atua como canal de comunicação entre controlador, titulares dos dados e a', '', '',
'["ANP","ANAC","ANEEL","ANPD","ANVISA"]'::jsonb, 'D', 'A Autoridade Nacional de Proteção de Dados (ANPD) é o órgão com o qual o encarregado se comunica sobre o tratamento de dados pessoais.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Comportamentos Éticos e Compliance', 'Ao pedir que um amigo ultrapasse os demais clientes na fila, o técnico bancário viola o princípio da', '', '',
'["publicidade","moralidade","hierarquia","dignidade da pessoa humana","eficiência"]'::jsonb, 'B', 'Favorecer amigo em detrimento da ordem de atendimento viola a moralidade administrativa e a impessoalidade.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Comportamentos Éticos e Compliance', 'Segundo a Carta Circular nº 4.001/2020, é exemplo de situação relacionada a operações em espécie', '', '',
'["concentração de depósitos ou transferência eletrônica, excluídos boletos.","saques em quinze dias úteis acima dos limites, para evitar comunicações.","saques de conta que recebe diversos depósitos eletrônicos de uma origem, em longo período.","depósitos únicos de baixos valores em terminais próximos, sempre para uma conta.","depósitos em espécie em contas de clientes que negociam bens de luxo ou alto valor."]'::jsonb, 'E', 'A norma inclui depósitos ou aportes em espécie em contas de clientes que atuam com bens de luxo ou de alto valor como situação que merece monitoramento.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS ESPECÍFICOS: CONHECIMENTOS BANCÁRIOS (26-40)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Bancários', 'Depósito de joias valiosas como garantia pela amortização total de um empréstimo é denominado', '', '',
'["aval","penhor","fiança","hipoteca","alienação fiduciária"]'::jsonb, 'B', 'Penhor é a garantia real constituída pela entrega ou vinculação de bem móvel, como joias, ao pagamento da dívida.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Bancários', 'A principal força competitiva imposta pelas fintechs aos bancos tradicionais provém da', 'Fintechs são startups de tecnologia financeira que oferecem pagamentos, renegociação, transferências, seguros e investimentos por canais digitais.', '',
'["poder de negociação dos fornecedores","poder de negociação dos compradores","monopólio dos novos entrantes","ameaça de entrada ou entrada efetiva de novos concorrentes no setor","rivalidade entre concorrentes tradicionalmente estabelecidos"]'::jsonb, 'D', 'Pela análise das cinco forças de Porter, fintechs são novos concorrentes que entram no setor e ameaçam as instituições tradicionais.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Bancários', 'Na estrutura organizacional da Caixa, a decisão final sobre linhas estratégicas, diretrizes empresariais e orientação geral dos negócios cabe ao', '', '',
'["Diretoria executiva","Presidência","Corregedoria","Ouvidoria","Conselho de Administração"]'::jsonb, 'E', 'O Conselho de Administração é o órgão colegiado responsável pelas diretrizes estratégicas e pela orientação geral dos negócios da empresa.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Bancários', 'No Sistema Financeiro Nacional, a Caixa Econômica Federal é instituição cuja função principal é', '', '',
'["operadora","reguladora","supervisora","normativa","de autoridade monetária"]'::jsonb, 'A', 'A Caixa atua como instituição operadora do Sistema Financeiro Nacional, oferecendo e executando serviços e operações financeiras.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Bancários', 'As Reservas Bancárias formam parte expressiva do mercado', '', '',
'["cambial","monetário","de crédito","de capitais","de criptomoedas"]'::jsonb, 'B', 'Reservas Bancárias e operações de liquidez estão relacionadas ao mercado monetário, no qual se formam as taxas de curto prazo.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Conhecimentos Bancários', 'É exemplo de política monetária não convencional a', '', '',
'["compra recorrente, pelo Banco Central, de títulos de longo prazo do Tesouro Nacional.","redução da taxa de redesconto do Banco Central.","redução das reservas bancárias mediante venda de títulos de curto prazo.","aumento do depósito compulsório sobre depósitos à vista.","aumento da base monetária mediante emissão primária de moeda."]'::jsonb, 'A', 'A compra de títulos de longo prazo pelo Banco Central é uma política não convencional, associada à expansão quantitativa de liquidez.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Conhecimentos Bancários', 'Mantidos os demais fatores constantes, contribui para o aumento da razão dívida pública/PIB o', '', '',
'["compromisso com superávits fiscais primários","redução dos gastos do governo","aumento da taxa básica de juros de curto prazo (Selic)","maior arrecadação tributária","maiores taxas de crescimento econômico"]'::jsonb, 'C', 'A elevação da Selic aumenta o custo de carregamento da dívida pública, pressionando a razão dívida/PIB para cima.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Conhecimentos Bancários', 'Quando o Banco Central compra títulos públicos em operação compromissada, ele', '', '',
'["eleva preços e pressiona juros para cima","aumenta liquidez e pressiona juros para cima","aumenta liquidez e pressiona juros para baixo","reduz liquidez e pressiona juros para baixo","reduz preços e pressiona juros para baixo"]'::jsonb, 'C', 'A compra de títulos injeta recursos no sistema bancário, aumenta a liquidez das reservas e reduz a pressão sobre a taxa de juros de curto prazo.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Conhecimentos Bancários', 'Uma desvalorização real do real em relação ao dólar implica diretamente', '', '',
'["aumento do poder de compra do dólar sobre bens e serviços brasileiros","aumento dos déficits em transações correntes","redução da competitividade das exportações brasileiras","redução dos índices de preços no Brasil em relação aos EUA","redução da taxa nominal Real/Dólar"]'::jsonb, 'A', 'A desvalorização real torna os bens brasileiros relativamente mais baratos para compradores estrangeiros e aumenta o poder de compra do dólar sobre esses bens.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Conhecimentos Bancários', 'A taxa de referência entre real e dólar mais utilizada no mercado de câmbio brasileiro é a taxa', '', '',
'["Selic","Referencial","cambial direta","Ptax","Swap"]'::jsonb, 'D', 'A Ptax é a taxa de câmbio de referência divulgada pelo Banco Central e amplamente utilizada no mercado brasileiro.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Conhecimentos Bancários', 'A mineração de Bitcoin consiste em', '', '',
'["emitir novos Bitcoins garantindo expansão da oferta","validar os registros eletrônicos das transações no blockchain","controlar a quantidade emitida para sustentar o valor","alterar registros prévios no blockchain","disputar a compra de Bitcoins na emissão"]'::jsonb, 'B', 'A mineração valida transações e registra novos blocos no blockchain; a recompensa pode incluir novos Bitcoins, mas essa não é sua definição principal.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Conhecimentos Bancários', 'Em uma OPA para fechamento de capital, são aceitos pela CVM os critérios de avaliação:', '', '',
'["patrimônio líquido a preço de mercado, apenas","patrimônio líquido a preço de mercado e fluxo de caixa descontado, apenas","fluxo de caixa descontado e múltiplos de mercado, apenas","patrimônio líquido a preço de mercado, fluxo de caixa descontado e múltiplos de mercado, apenas","patrimônio líquido contábil, patrimônio líquido a preço de mercado, fluxo de caixa descontado e múltiplos de mercado"]'::jsonb, 'E', 'O laudo de avaliação pode considerar todos os critérios listados: patrimônio líquido contábil, valor de mercado, fluxo de caixa descontado e múltiplos de mercado.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Conhecimentos Bancários', 'Uma administradora de consórcio deve enviar periodicamente informações contábeis sobre suas operações ao', '', '',
'["Banco Central do Brasil (BCB)","Conselho Nacional de Previdência e Consórcio (CNPC)","Conselho Monetário Nacional (CMN)","Comissão de Valores Mobiliários (CVM)","Superintendência de Seguros Privados (Susep)"]'::jsonb, 'A', 'Administradoras de consórcio são supervisionadas pelo Banco Central, que recebe suas informações contábeis e operacionais.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Conhecimentos Bancários', 'Título emitido por sociedade por ações, de crédito privado, renda fixa, registrado na CVM, com juros periódicos e principal no vencimento é uma', '', '',
'["Certificado de Depósito Bancário (CDB)","Ação","Tesouro Direto","Debênture","Fundo de Renda Fixa"]'::jsonb, 'D', 'A debênture é título de dívida emitido por sociedade por ações para captar recursos no mercado de capitais.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Conhecimentos Bancários', 'Segundo a Lei nº 8.036/1990, o trabalhador poderá movimentar a conta do FGTS quando', '', '',
'["for despedido sem justa causa, excluídas rescisão indireta, culpa recíproca e força maior","tiver idade igual ou superior a 65 anos","permanecer dois anos fora do regime do FGTS","tiver aposentadoria concedida pela Previdência Social","for acometido, ou seu dependente, de qualquer doença grave"]'::jsonb, 'D', 'A aposentadoria é hipótese legal de movimentação da conta vinculada do FGTS. As demais alternativas restringem ou alteram indevidamente as hipóteses legais.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- CONHECIMENTOS ESPECÍFICOS: TECNOLOGIA DA INFORMAÇÃO E COMUNICAÇÃO (41-45)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Conhecimentos de Tecnologia da Informação e Comunicação', 'Para acessar a caixa postal de entrada e pastas de mensagens no servidor por canal seguro, o protocolo é', '', '',
'["IMAPS","HTTP","SMTPS","POP3","DNS"]'::jsonb, 'A', 'IMAPS é a versão segura do IMAP, usada para acessar e sincronizar mensagens armazenadas no servidor.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Conhecimentos de Tecnologia da Informação e Comunicação', 'O mecanismo de segurança que assegura que a origem dos dados ou entidade associada é quem afirma ser é a', '', '',
'["envelope digital","assinatura digital","cifragem simétrica","hash de mensagem","autorização de acesso"]'::jsonb, 'B', 'A assinatura digital autentica a autoria e a integridade de uma mensagem, permitindo verificar a identidade de quem a assinou.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Conhecimentos de Tecnologia da Informação e Comunicação', 'As Redes Adversárias Generativas (GAN) caracterizam-se por', '', '',
'["serem usadas exclusivamente para classificação de imagens","consistirem apenas em gerador de ruídos e rede classificatória","serem compostas por duas redes neurais: uma discriminadora e outra geradora","serem incapazes de aprender com dados não supervisionados","não poderem gerar conteúdo linguístico"]'::jsonb, 'C', 'Uma GAN combina uma rede geradora, que cria amostras, e uma discriminadora, que tenta distinguir amostras reais de geradas.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Conhecimentos de Tecnologia da Informação e Comunicação', 'Candidatos adequados ao modelo ágil de desenvolvimento são, apenas', 'P1 prioriza necessidades do cliente e assume responsabilidade; P2 trabalha com flexibilidade, experimentação, aprendizado contínuo e interação com o cliente; P3, P4 e P5 apresentam características de modelos mais tradicionais ou inadequados ao ágil.', '',
'["P1 e P2","P1 e P3","P2 e P3","P3 e P4","P4 e P5"]'::jsonb, 'A', 'P1 e P2 valorizam cliente, adaptação, colaboração e aprendizado contínuo, princípios centrais do desenvolvimento ágil.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Conhecimentos de Tecnologia da Informação e Comunicação', 'Um tipo de arquivo de áudio tratado por aplicativo de codificação e decodificação é o', '', '',
'["AVCHD","JPEG-1","MPEG-1 Layer 3","Windows Media Video","Portable Network Graphic"]'::jsonb, 'C', 'MPEG-1 Layer 3, conhecido como MP3, é um formato de áudio comprimido. AVCHD e WMV são formatos de vídeo e PNG é imagem.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS ESPECÍFICOS: COMPORTAMENTOS DIGITAIS (46-50)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Conhecimentos e Comportamentos Digitais', 'No Lean Manufacturing, a ocorrência que comprova a aplicação do princípio Valor é', '', '',
'["consolidação de fases para eliminar ações que não agregam benefício, como marketing exagerado","produção em lote sem tarefas que causem atrasos","verificação de que design, funcionalidade, marca, tecnologia e preço atendem às necessidades reais do cliente","verificação de que nenhuma fase foi repassada ao cliente sem demanda","fluxo de trabalho testado e reexaminado quanto a desperdícios"]'::jsonb, 'C', 'Valor é definido pelo cliente; portanto, o princípio é atendido quando produto, funcionalidade, marca, tecnologia e preço correspondem às necessidades reais do cliente.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Conhecimentos e Comportamentos Digitais', 'A abordagem de liderança que cria oportunidades, oferece suporte, reconhece conquistas e dá autonomia à equipe é orientada para a', '', '',
'["tarefa","relação","mudança","personalidade","externo"]'::jsonb, 'B', 'O foco descrito está no relacionamento, no bem-estar, na confiança, no reconhecimento e no desenvolvimento das pessoas.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Conhecimentos e Comportamentos Digitais', 'Em relação ao papel da Inteligência Emocional na gestão, NÃO se pode associá-la', '', '',
'["a um apelo intuitivo","ao desempenho","à mensuração e ao mapeamento de alta validade por meio do QI","ao conhecimento das próprias emoções","à automotivação"]'::jsonb, 'C', 'Inteligência Emocional não se confunde com QI; a alternativa C atribui a mensuração da IE ao quociente de inteligência, associação inadequada.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Conhecimentos e Comportamentos Digitais', 'Nas duas situações apresentadas, o profissional P sai da empresa para criar seu negócio e Q desenvolve projeto dentro da empresa. Verifica-se que', '', '',
'["P pratica empreendedorismo na própria empresa e Q intraempreendedorismo em negócio próprio","P pratica empreendedorismo internacional e Q inovação","P pratica empreendedorismo estratégico e Q imitação","P pratica empreendedorismo assumindo maior risco e Q intraempreendedorismo colaborativo","ambos praticam a mesma modalidade, apenas com decisões diferentes"]'::jsonb, 'D', 'P cria e assume o risco do próprio negócio, caracterizando empreendedorismo; Q inova dentro da empresa, caracterizando intraempreendedorismo.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Conhecimentos e Comportamentos Digitais', 'O gerente que privilegia observação refletida e conceitualização abstrata, cria modelos teóricos e se interessa por ideias abstratas tem estilo de aprendizagem denominado', '', '',
'["assimilação","acomodação","convergência","divergência","compreensão súbita"]'::jsonb, 'A', 'No modelo de Kolb, o estilo assimilador combina observação reflexiva e conceituação abstrata, valorizando modelos teóricos.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- CONHECIMENTOS ESPECÍFICOS: ATENDIMENTO BANCÁRIO (51-60)
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Atendimento Bancário', 'Para superar objeções de adiamento como “deixe-me pensar” ou “tenho que falar com meu chefe”, o vendedor deve', '', '',
'["convencer sobre o problema e o valor, retornando à determinação de necessidades","confrontar o cliente e pedir esclarecimentos","reconhecer que o serviço não atende ao fim e aumentar seu valor perceptível","solicitar compromisso com ação futura, como reunião com o chefe ou decisor","tratar o cliente como oponente e retirar o foco da questão financeira"]'::jsonb, 'D', 'Objeções de adiamento devem ser transformadas em um próximo passo concreto, como agendar reunião com o decisor ou estabelecer uma data de retorno.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Atendimento Bancário', 'No clientocentrismo, o maior desafio para criar um mindset centrado no cliente é a', '', '',
'["coleta de dados demográficos","falta de cultura organizacional centrada no cliente e de líderes que a estimulem","personalização mediante incentivos na primeira compra","cocriação de valor","medição de satisfação e fidelização"]'::jsonb, 'B', 'A mudança cultural exige liderança que modele, estimule e dissemine o foco no cliente; esse é o principal desafio de mentalidade.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Atendimento Bancário', 'Oferecer material rico esperando que o cliente retribua com a contratação exemplifica o gatilho mental da', '', '',
'["escassez","reciprocidade","aprovação social","autoridade e afeição","compromisso e coerência"]'::jsonb, 'B', 'Reciprocidade é a tendência de retribuir um benefício recebido, que é justamente o efeito buscado ao oferecer o material rico.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Atendimento Bancário', 'A experiência de atendimento grosseiro, que forma imagem negativa da organização, ilustra um', '', '',
'["gargalo","deserção","incidente crítico","flor de serviço","momento de verdade"]'::jsonb, 'E', 'Momento de verdade é o contato em que o cliente forma percepção sobre a qualidade da organização; a experiência relatada foi decisiva para a avaliação negativa.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Atendimento Bancário', 'Personalização de conteúdo e publicidade direcionada para públicos específicos aplicam o conceito de', '', '',
'["fidelidade","reposicionamento","recuperação do serviço","segmentação de mercado","vantagem competitiva sustentável"]'::jsonb, 'D', 'Segmentação divide o mercado em grupos com características e necessidades semelhantes, permitindo comunicação direcionada.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Atendimento Bancário', 'Na escala de lealdade de Payne, é potencial o cliente que pode ser persuadido a negociar; é defensor o cliente que recomenda ativamente. Portanto, P e Q são', '', '',
'["defensor e adepto","comprador e parceiro","comprador e potencial","parceiro e prospectivo","potencial e defensor"]'::jsonb, 'E', 'Na escala, prospectivo/potencial é quem pode ser convertido; defensor é quem recomenda ativamente a organização.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Atendimento Bancário', 'Segundo a Resolução CMN nº 4.860/2020, a Ouvidoria tem por finalidade', '', '',
'["realizar atendimento habitual em qualquer canal","atender e solucionar em primeira instância","atuar como canal entre Banco Central e clientes, inclusive arbitragem","atuar como canal entre Banco Central e clientes, inclusive conciliação","atuar como canal entre a instituição e clientes, inclusive mediação"]'::jsonb, 'E', 'A Ouvidoria é canal de comunicação entre a própria instituição e seus clientes e usuários, podendo atuar na mediação de conflitos.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Atendimento Bancário', 'Conforme as leis de atendimento prioritário, os funcionários devem garantir atendimento', '', '',
'["para pessoas a partir dos 65 anos","para pessoas com crianças de até 10 anos","a acompanhantes de pessoas idosas, de forma independente","especial a partir de 85 anos, preferencialmente","especial aos maiores de 75 anos, preferencialmente"]'::jsonb, 'C', 'O acompanhante ou atendente pessoal da pessoa idosa deve ser atendido junto e acessoriamente ao titular, conforme o Estatuto da Pessoa Idosa.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Atendimento Bancário', 'Nos termos da Lei nº 13.146/2015, a avaliação da deficiência, quando necessária, será', '', '',
'["indicativa","vinculada","histórica","presumida","biopsicossocial"]'::jsonb, 'E', 'A Lei Brasileira de Inclusão determina avaliação biopsicossocial, realizada por equipe multiprofissional e interdisciplinar, quando necessária.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Atendimento Bancário', 'Entre os princípios da Política Nacional das Relações de Consumo está o', '', '',
'["conscientização do papel financeiro das organizações para preservar lucratividade","implementação de instrumentos para diminuir endividamento de famílias vulneráveis","verificação de medidas protetivas ao crédito para bens duráveis","fomento de ações direcionadas à educação financeira e ambiental dos consumidores","incentivo à poupança para melhorar a aposentadoria"]'::jsonb, 'D', 'O Código de Defesa do Consumidor inclui como princípio o fomento de ações de educação financeira e ambiental dos consumidores.'
from public.exams where slug = 'caixa-2024-tecnico-bancario'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
