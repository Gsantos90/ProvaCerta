-- Seed: Banco do Brasil 2022 - Escriturario - Agente de Tecnologia (Microrregiao 158 - TI)
-- Fonte: Selecao Externa 2022/001 - Edital no 01 - 2022/001 BB - Prova realizada em 23/04/2023 - Banca CESGRANRIO
-- Gabarito utilizado: GABARITO 1
-- Gabarito objetivo (Gabarito 1):
--   Lingua Portuguesa 1-10: A,E,C,D,A,A,E,B,B,D
--   Lingua Inglesa 11-15: A,D,B,E,D
--   Matematica 16-20: A,E,B,B,D
--   Atualidades do Mercado Financeiro 21-25: A,D,E,B,A
--   Probabilidade e Estatistica 26-30: A,C,E,D,C
--   Conhecimentos Bancarios 31-35: B,B,C,A,E
--   Tecnologia da Informacao 36-70: E,D,B,C,B,C,B,D,C,C,A,E,D,B,E,E,A,D,C,A,E,B,E,D,D,B,D,A,B,A,A,A,E,D,E

insert into public.exams (slug, title, source, year)
values ('bb-2022-tecnologia', 'Banco do Brasil 2022 - Agente de Tecnologia (Microrregião 158 - TI)', 'bb', '2022')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- Texto de apoio: Empreendedorismo social: um caminho para quem quer mudar o mundo
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'O trecho do texto que resume o objetivo do "empreendedorismo social" é',
'Empreendedorismo social: um caminho para quem quer mudar o mundo

Ainda que não exista uma concepção única sobre o empreendedorismo social, de forma geral, o conceito está relacionado ao ato de empreender ou inovar com o objetivo de alavancar causas sociais e ambientais. A meta é transformar uma realidade, promover o bem-estar da sociedade e agregar valor com cunho social.

Um empreendedor social produz bens e serviços que irão impactar positivamente a comunidade em que ele está inserido e solucionar algum problema ou necessidade daquele grupo. Apesar de poder ter retorno financeiro, os empreendimentos sociais analisam seu desempenho a partir do impacto social gerado por sua atuação.

Vale ressaltar que, apesar de apresentarem muitas similaridades, empreendedorismo social e negócio social não são sinônimos. O empreendedorismo social cria valor por meio da inovação, que gera uma transformação social. O foco não é o retorno financeiro, mas a resolução de problemas sociais e o impacto positivo. Enquanto isso, os negócios sociais seguem a lógica tradicional do mercado, porém com a ambição de gerar valor social.

Cinco características também são essenciais para a iniciativa: ser inovadora; realizável; autossustentável; contar com a participação de diversos segmentos da sociedade, incluindo as pessoas impactadas; e promover impacto social com resultados mensuráveis.

Quem tem interesse de atuar nessa área precisa trabalhar em grupo e formar parcerias, saber lidar bem com as pessoas e buscar formas de trazer resultados de impacto social.

Além disso, o profissional precisa ter flexibilidade e vontade de explorar, pois é possível que ele acabe exercendo um papel que não seja necessariamente na sua área de formação, ou que sua atuação se transforme rapidamente, por conta do dinamismo e das necessidades do negócio.

MENDES, T. Empreendedorismo social: um caminho para quem quer mudar o mundo. Na prática, 7 jul. 2022. Adaptado.',
'',
'["\"A meta é transformar uma realidade, promover o bem-estar da sociedade e agregar valor com cunho social\". (parágrafo 1)","\"os empreendimentos sociais analisam seu desempenho a partir do impacto social gerado por sua atuação\". (parágrafo 2)","\"ser inovadora; realizável; autossustentável; contar com a participação de diversos segmentos da sociedade\". (parágrafo 4)","\"Quem tem interesse de atuar nessa área precisa trabalhar em grupo e formar parcerias\". (parágrafo 5)","\"o profissional precisa ter flexibilidade e vontade de explorar, pois é possível que ele acabe exercendo um papel que não seja necessariamente na sua área de formação\". (parágrafo 6)"]'::jsonb,
'A',
'O objetivo do empreendedorismo social é definido logo no primeiro parágrafo: transformar uma realidade, promover o bem-estar da sociedade e agregar valor com cunho social. Esse trecho sintetiza a finalidade (o "para quê") da iniciativa. As demais opções tratam de características, perfil do profissional ou comparação com o negócio social, não do objetivo. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'O texto explica que o empreendedorismo social se diferencia do conceito de negócio social porque o primeiro procura',
'',
'',
'["criar profissionais especializados na sua área de atuação.","excluir do processo a parcela mais carente da população.","seguir a lógica tradicional do mercado de ações.","ter como objetivo produzir retorno financeiro.","transformar a sociedade por meio da inovação."]'::jsonb,
'E',
'No terceiro parágrafo, o texto afirma que o empreendedorismo social "cria valor por meio da inovação, que gera uma transformação social" e que seu foco não é o retorno financeiro, enquanto o negócio social segue a lógica tradicional do mercado. A diferença, portanto, está em transformar a sociedade por meio da inovação. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'No trecho "está relacionado ao ato de empreender ou inovar com o objetivo de alavancar causas sociais e ambientais" (parágrafo 1), a palavra destacada pode ser substituída, sem prejuízo do sentido do texto, por',
'',
'',
'["comprovar","defender","impulsionar","modificar","subsidiar"]'::jsonb,
'C',
'"Alavancar" significa dar impulso, promover o crescimento ou o avanço de algo. O sinônimo que preserva esse sentido no contexto (alavancar causas sociais e ambientais) é "impulsionar". Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'No trecho "Ainda que não exista uma concepção única sobre o empreendedorismo social" (parágrafo 1), a expressão destacada pode ser substituída, sem prejuízo do sentido do texto, por',
'',
'',
'["À medida que","Contanto que","De modo que","Mesmo que","Por causa de"]'::jsonb,
'D',
'"Ainda que" é uma conjunção concessiva (admite um obstáculo que não impede o fato principal). A locução equivalente, também concessiva, é "Mesmo que". As demais exprimem proporção, condição, consequência ou causa. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'No trecho "Ainda que não exista uma concepção única" (parágrafo 1), a palavra destacada pode ser substituída, sem prejuízo do sentido do texto, por',
'',
'',
'["compreensão","conciliação","convivência","capacidade","semelhança"]'::jsonb,
'A',
'"Concepção" tem, no contexto, o sentido de ideia, entendimento ou maneira de compreender algo (não existe uma única forma de entender o empreendedorismo social). O sinônimo adequado é "compreensão". Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'A palavra destacada atende às exigências de concordância de acordo com a norma-padrão da língua portuguesa em:',
'',
'',
'["A administração de empresas de tecnologia e o marketing profissional estão ENVOLVIDOS na promoção de novos negócios na área econômica.","A assistência social às pessoas carentes e os cuidados com o aparecimento de novas doenças são NECESSÁRIAS para manter a saúde da população.","A iniciativa de implementar mudanças nas empresas e o sucesso ao alcançar êxito são COMEMORADAS pelos funcionários.","O financiamento de projetos e a assistência aos necessitados, DESEJADAS pelos empreendedores sociais, precisam da atenção redobrada dos responsáveis.","A vacinação de toda a população e a intensificação dos estudos sobre a pandemia devem ser IMPLEMENTADOS pelas autoridades."]'::jsonb,
'A',
'Quando há sujeito composto antes do verbo/adjetivo com núcleos de gêneros diferentes, a concordância deve ir para o masculino plural. Em A, os núcleos "administração" (fem.) e "marketing" (masc.) exigem "envolvidos" (masc. plural), concordância correta. Nas demais, o adjetivo foi flexionado no feminino ou de modo incoerente com os núcleos de gêneros distintos. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'No trecho "os empreendimentos sociais analisam seu desempenho" (parágrafo 2), a palavra destacada se refere a',
'',
'',
'["problema","comunidade","daquele grupo","retorno financeiro","empreendimentos sociais"]'::jsonb,
'E',
'O pronome possessivo "seu" retoma o termo a que o desempenho pertence. Quem analisa o próprio desempenho são "os empreendimentos sociais", núcleo do sujeito da oração. Logo, "seu" refere-se a empreendimentos sociais. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'De acordo com a norma-padrão da língua portuguesa, o uso do acento grave indicativo da crase é obrigatório na palavra destacada em:',
'',
'',
'["A descrição detalhada de um empreendimento A ser realizado é uma necessidade para a aprovação de sua realização.","A divulgação do concurso levou muitas pessoas a se candidatarem A vaga mais concorrida na empresa.","A tentativa de obter a isenção fiscal é buscada A todo custo pelos responsáveis da instituição.","O sucesso de uma empresa deve ser atribuído A gestores competentes.","O uso de recursos digitais levou os jovens estudiosos A uma nova forma de aprendizagem em diferentes áreas."]'::jsonb,
'B',
'A crase ocorre pela fusão da preposição "a" com o artigo feminino "a". Em "candidatarem-se a + a vaga", há preposição (exigida por "candidatar-se a") e artigo feminino diante de "vaga": "à vaga". Nas demais, antecede verbo no infinitivo (A), locução invariável (C), substantivo masculino plural (D) ou palavra feminina sem artigo (E), não havendo crase. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'O emprego da vírgula atende às exigências da norma-padrão da língua portuguesa em:',
'',
'',
'["A execução de novas tarefas em um supermercado, envolve a disposição dos funcionários de aceitarem as mudanças propostas pelo RH.","Ao consultar os fornecedores de produtos para suas lojas, os responsáveis por esse departamento devem ser cuidadosos.","A escolha do funcionário para proferir uma palestra em nome da empresa, compete à administração da instituição.","O profissional interessado em mudanças na sua área de atuação deve estudar, com antecedência as suas possibilidades de crescimento.","Para desenvolver projetos cabe ao gerente da organização, a iniciativa de implementar novas técnicas à disposição dos empreendedores."]'::jsonb,
'B',
'Em B, a vírgula separa corretamente a oração subordinada adverbial deslocada para o início do período ("Ao consultar os fornecedores de produtos para suas lojas,"). Nas demais, a vírgula separa indevidamente termos que não podem ser isolados (sujeito do verbo em A e C; dentro do complemento em D; separando a oração reduzida em E). Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'O pronome oblíquo destacado foi colocado na posição correta, segundo as exigências da norma-padrão da língua portuguesa, em:',
'',
'',
'["A área da saúde não ENCONTRA-SE atendida em regiões afastadas dos grandes centros urbanos nem em comunidades que vivem nas periferias das cidades.","A preocupação com o meio ambiente tem sido um dos segmentos mais relevantes do empreendedorismo social, porque DESTINA-SE a transformar positivamente a sociedade.","Governantes que têm como missão viabilizar o acesso universal à educação pública de qualidade sempre PREOCUPAM-SE com ações de inovação e empreendedorismo.","Para uma iniciativa de empreendedorismo destinada à formação de educadores TORNAR-SE produtiva, é preciso identificar as necessidades do público-alvo de cada comunidade.","Quando os profissionais que atuam na área de empreendedorismo social SENTEM-SE desanimados, é preciso que eles avaliem todo o progresso que ajudaram a desenvolver."]'::jsonb,
'D',
'Com verbo no infinitivo pessoal, admite-se a ênclise, e a colocação em "tornar-se" está correta, sem fator de próclise obrigatória. Em A há palavra negativa ("não") que exige próclise; em B a conjunção "porque" atrai o pronome; em C o advérbio "sempre" atrai; em E a conjunção "Quando" atrai. Logo, apenas D respeita a norma. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- LINGUA INGLESA (Questoes 11 a 15)
-- Texto de apoio: From Bartering to Bitcoin
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Inglesa',
'The main purpose of the text is to',
'From Bartering to Bitcoin (By Rich Beattie)

What we call "money" has always been a moving target. It changes appearance and value. Here are five key developments in the history of money that have impacted how we earn, save and spend today.

Cash Cows - Before humans had money, they had stuff. In ancient times, when you had stuff other people wanted, you bartered it for stuff you wanted. Around 9000 BC, the most popular commodities included things like cattle, sheep and camels. This was fine when people bartered close to home, but bulky creatures are cumbersome and difficult to transport. As people started to venture farther afield to trade, a more portable option became essential.

In 1200 BC people started using cowries — the shells of marine mollusks taken from oceans. They were recognized as precious, and their use spread across Asia, Africa, Oceania and Europe. Having been in use for centuries — even into the 20th century in some places — cowries win the prize as the world''s longest-running currency.

Three Coins in the Fountain - The issue with bartering became assigning value: just how much was a cowrie or a cow worth? So, agreeing on the value of money became essential. It was the Lydians, around 600 BC, who get credit for a critical step in this process: fashioning the first known coins, which were made of a gold and silver alloy.

The metal used to make a coin — along with its weight — was important, as it denoted the money''s value. Moreover, as coins gained popularity, so did the idea of adorning them with locally inspired designs.

The Paper Chase - China''s Tang Dynasty, in the seventh century, came up with a smart solution, namely, paper money. It was super-light and could feature even richer designs than coins, and it promised a certain amount of purchasing power.

Gold Rush - One of the problems, though, was that counterfeiters had great success with paper bills. The bigger problem came when governments faced economic crises; it was far too easy to print more paper money, which led to skyrocketing inflation. Paper needed a backup — something universally valued yet not easily replicated. Something like gold.

The "gold standard" let governments create a fixed price for this precious metal that was tied directly to the value of their currency. The gold standard was dropped in the United States in 1933, and a global economy started to take shape.

The E-Buck Stops Here? - Money has always had a physical presence. But today, it is quickly evolving into numbers that float through the ether. This modern era of money began in 1946 with the first bank-issued charge card. However, technology, with cryptocurrencies like Bitcoin, is changing the world''s definition of "money."

Now, social media companies and entire countries are considering digital currencies of their own. Meanwhile, artificial intelligence is growing ever-smarter, and perhaps one day soon your budget and expenses will be managing themselves.

Available at: https://www.synchronybank.com/blog/brief-history-of-money/. Retrieved on: Sept 10, 2022. Adapted.',
'',
'["present a brief history of money.","relate the history of money with wars.","regret society''s attitude regarding money.","deny the importance of money to humankind.","describe the relevance of money in the world."]'::jsonb,
'A',
'O texto apresenta "five key developments in the history of money" e percorre a evolução do dinheiro, do escambo ao Bitcoin. O propósito central é, portanto, apresentar uma breve história do dinheiro. Correta a alternativa A (present a brief history of money).'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Inglesa',
'In the fragment "It was the Lydians, around 600 BC, WHO get credit for a critical step in this process: fashioning the first known coins, WHICH were made of a gold and silver alloy", the words in bold refer respectively to:',
'',
'',
'["BC – coins","600 BC – first","600 BC – coins","Lydians – coins","Lydians – known"]'::jsonb,
'D',
'O pronome relativo "who" (usado para pessoas) retoma "the Lydians", e o pronome relativo "which" (usado para coisas) retoma "coins" (the first known coins). Portanto, os pronomes referem-se, respectivamente, a Lydians e coins. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Inglesa',
'In the sixth paragraph of the text, the author mentions that paper money first circulated in',
'',
'',
'["Italy","China","England","Australia","Germany"]'::jsonb,
'B',
'No trecho sobre "The Paper Chase", o autor afirma que foi a dinastia Tang, na China, no século VII, que criou o papel-moeda ("China''s Tang Dynasty ... came up with ... paper money"). Logo, o papel-moeda circulou primeiro na China. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Inglesa',
'In the fragment "One of the problems, THOUGH, was that counterfeiters had great success with paper bills", the word in bold is associated with the idea of',
'',
'',
'["time","addition","condition","emphasis","opposition"]'::jsonb,
'E',
'"Though", quando usado como advérbio conectivo (geralmente entre vírgulas ou ao final), expressa contraste/oposição, equivalendo a "however". Introduz uma ressalva ao que foi dito antes. A ideia associada é a de oposição. Correta a alternativa E (opposition).'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Inglesa',
'In the tenth paragraph, the author of the text predicts that there are chances artificial intelligence will be able to',
'',
'',
'["manage bank accounts.","prevent money changes.","eliminate exchange rates.","control financial resources.","avoid inflation and corruption."]'::jsonb,
'D',
'O autor afirma que a inteligência artificial está ficando cada vez mais inteligente e que, talvez em breve, "your budget and expenses will be managing themselves" (seu orçamento e despesas se gerenciarão sozinhos). Isso corresponde à ideia de controlar recursos financeiros. Correta a alternativa D (control financial resources).'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- MATEMATICA (Questoes 16 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Matemática',
'Um grande banco formará uma comissão comandada por três funcionárias — Alice, Beatriz e Carla — em que uma será presidente, outra gerente e outra coordenadora, respeitando as restrições: I) Se Carla for gerente, então Beatriz terá de ser presidente; II) Se Alice for presidente, então Carla terá de ser gerente; III) Se Beatriz não for coordenadora, então Alice terá de ser gerente; IV) Se Carla for coordenadora, então Beatriz terá de ser gerente. Nessas circunstâncias, os respectivos cargos de Alice, Beatriz e Carla serão',
'',
'',
'["gerente, coordenadora e presidente","gerente, presidente e coordenadora","coordenadora, presidente e gerente","presidente, gerente e coordenadora","presidente, coordenadora e gerente"]'::jsonb,
'A',
'Testando a atribuição Alice = gerente, Beatriz = coordenadora e Carla = presidente: (I) Carla não é gerente, condição não se aplica; (II) Alice não é presidente, não se aplica; (III) Beatriz é coordenadora, não se aplica; (IV) Carla não é coordenadora, não se aplica. Nenhuma restrição é violada, e essa é a única distribuição consistente com todas as regras. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Matemática',
'Uma fábrica vende mensalmente 200 malas a R$ 300,00 cada. Cada aumento de R$ 10,00 no preço implica a venda de 20 malas a menos (ex.: a R$ 320,00 vendem-se 160 malas). Em um mês, cada mala foi vendida por (300 + 10x) reais, com x inteiro e 0 ≤ x ≤ 10. O valor y, em reais, arrecadado nesse mês, em função de x, é dado por',
'',
'',
'["y = - 200x² - 5800x + 63600","y = - 200x² - 4000x + 63600","y = - 200x² - 5800x + 60000","y = - 200x² - 4800x + 60800","y = - 200x² - 4000x + 60000"]'::jsonb,
'E',
'A quantidade vendida é (200 - 20x) e o preço é (300 + 10x). Logo, y = (200 - 20x)(300 + 10x) = 60000 + 2000x - 6000x - 200x² = -200x² - 4000x + 60000. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Matemática',
'No primeiro dia de agosto foram registradas 180 reclamações; no segundo, 184. Supondo que há reclamações todos os dias e que cada dia tem 4 reclamações a mais que o anterior, durante os 31 dias de agosto o total de reclamações registradas será igual a',
'',
'',
'["7.108","7.440","7.860","8.184","8.880"]'::jsonb,
'B',
'Trata-se de uma progressão aritmética com a1 = 180, razão r = 4 e n = 31 termos. O último termo é a31 = 180 + 30·4 = 300. A soma é S = (a1 + a31)·n/2 = (180 + 300)·31/2 = 480·31/2 = 240·31 = 7.440. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Matemática',
'Em um pacote há cédulas de R$ 10,00, de R$ 20,00 e de R$ 50,00, num total de 68 cédulas que somam R$ 1.380,00. Sabe-se que só as cédulas de R$ 50,00 totalizam R$ 550,00 e só as de R$ 20,00 totalizam R$ 520,00. Nesse pacote, o número de cédulas de R$ 10,00 é igual a',
'',
'',
'["26","31","37","39","42"]'::jsonb,
'B',
'Cédulas de R$ 50,00: 550/50 = 11. Cédulas de R$ 20,00: 520/20 = 26. Como o total é 68 cédulas, as de R$ 10,00 são 68 - 11 - 26 = 31. Verificação do valor: 11·50 + 26·20 + 31·10 = 550 + 520 + 310 = 1.380. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Matemática',
'Agora são H horas e M minutos. Considerando-se apenas as 24 horas do dia de hoje, 3/7 do tempo que já se passou correspondem exatamente ao tempo que falta para a meia-noite. Dessa forma, H + M é igual a',
'',
'',
'["19","24","37","64","96"]'::jsonb,
'D',
'Seja t o tempo (em minutos) já passado desde a meia-noite. O que falta para a meia-noite é 1440 - t. A condição é (3/7)·t = 1440 - t, ou seja, 3t = 7(1440 - t) → 3t = 10080 - 7t → 10t = 10080 → t = 1008 minutos. Isso equivale a 16h48 (1008 = 16·60 + 48). Logo, H = 16 e M = 48, e H + M = 64. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- ATUALIDADES DO MERCADO FINANCEIRO (Questoes 21 a 25)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Atualidades do Mercado Financeiro',
'A principal característica dos bancos exclusivamente digitais é a',
'',
'',
'["oferta de produtos e serviços por meio digital.","oferta de serviços por meio de agências bancárias.","oferta de todos os serviços operados pelos bancos múltiplos.","ausência de operações com moeda estrangeira.","cobrança de taxas similares às cobradas pelos bancos tradicionais."]'::jsonb,
'A',
'Os bancos exclusivamente digitais caracterizam-se por operar sem agências físicas, oferecendo seus produtos e serviços integralmente por meios digitais (aplicativo, internet). Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Atualidades do Mercado Financeiro',
'No Sistema Financeiro Nacional, identificam-se os bancos-sombra (shadow banks) como bancos que',
'',
'',
'["possuem diversos tipos de carteiras em suas operações ativas.","se especializam em transações financeiras como bancos estrangeiros.","se concentram em transações financeiras no mercado local.","realizam operações financeiras à margem do sistema de regulação e supervisão do Banco Central do Brasil.","se originam a partir de indivíduos que se associam para prestar serviços financeiros a seus associados."]'::jsonb,
'D',
'Os "shadow banks" (bancos-sombra) são instituições que realizam atividades típicas de intermediação financeira à margem do sistema de regulação e supervisão prudencial do Banco Central, escapando dos controles aplicados aos bancos tradicionais. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Atualidades do Mercado Financeiro',
'Ao longo de crises financeiras agudas, com elevada incerteza e temor quanto à solvência de empresas e bancos, a extrema preferência por liquidez tende a fazer com que os agentes econômicos aumentem as práticas de entesouramento. Nesse contexto, a moeda assume, precipuamente, a função de',
'',
'',
'["meio de financiamento dos investimentos","meio de troca","unidade de conta","escambo","reserva de valor"]'::jsonb,
'E',
'O entesouramento (reter moeda em vez de gastá-la ou aplicá-la) decorre da preferência pela liquidez em momentos de incerteza. Ao reter moeda como forma de guardar poder de compra para o futuro, a moeda exerce precipuamente a função de reserva de valor. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Atualidades do Mercado Financeiro',
'A economia digital propiciou a criação de um modelo de negócios em que uma empresa gerencia uma plataforma digital por meio da qual diversas empresas, concorrentes ou não, ofertam e vendem produtos e serviços on-line, num ambiente que se assemelha a um shopping virtual. A plataforma digital descrita é denominada',
'',
'',
'["startup","marketplace","fintech","mobile banking","internet banking"]'::jsonb,
'B',
'O "marketplace" é a plataforma digital que reúne diversos vendedores (lojistas) ofertando produtos e serviços a consumidores em um mesmo ambiente on-line, funcionando como um shopping virtual gerenciado por uma empresa intermediadora. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Atualidades do Mercado Financeiro',
'No sistema financeiro contemporâneo, o uso de tecnologias blockchain é considerado revolucionário, porque',
'',
'',
'["possibilita o armazenamento e compartilhamento de dados de forma distribuída, criptografada e sem a intermediação de terceiros.","envolve múltiplos intermediários financeiros, mas mantém a centralização das informações em apenas um deles.","permite a quebra do sigilo inerente às transações financeiras.","elimina as práticas ilegais em curso nas transações financeiras, por meio do uso de linguagem criptografada.","privilegia a linguagem analógica, em detrimento da digital."]'::jsonb,
'A',
'A tecnologia blockchain é um registro distribuído (descentralizado) e criptografado, em que as transações são validadas pela própria rede, sem necessidade de um intermediário central. É justamente essa combinação — distribuição, criptografia e dispensa de terceiros — que a torna revolucionária. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- PROBABILIDADE E ESTATISTICA (Questoes 26 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Probabilidade e Estatística',
'A distribuição das alturas dos atletas de vôlei de uma seleção é normal. Sabe-se que 5% dos atletas têm altura superior a 200 cm e 2,5% têm altura inferior a 192,8 cm. Considere Z ~ N(0;1), com Prob(Z > 1,64) = 5% e Prob(Z > 1,96) = 2,5%. O desvio padrão, em centímetros, dessa distribuição é de, aproximadamente,',
'',
'',
'["2","4","8","16","64"]'::jsonb,
'A',
'Para o limite superior: 200 = μ + 1,64σ (5% acima de 200, logo z = 1,64). Para o limite inferior: 192,8 = μ - 1,96σ (2,5% abaixo de 192,8, logo z = -1,96). Subtraindo as equações: 200 - 192,8 = (1,64 + 1,96)σ → 7,2 = 3,6σ → σ = 2. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Probabilidade e Estatística',
'Uma população é formada por quatro números: 2, 5, 10 e 15, de modo que a média vale 8 e a variância, 24,5. Considerando-se todas as possíveis amostras aleatórias simples, com reposição, de tamanho 2 dessa população, a variância da distribuição amostral das médias é de',
'',
'',
'["3,50","4,94","12,25","24,50","32,67"]'::jsonb,
'C',
'Para amostragem com reposição, a variância da distribuição amostral das médias é σ²/n, com σ² = 24,5 (variância populacional) e n = 2 (tamanho da amostra). Assim, 24,5/2 = 12,25. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Probabilidade e Estatística',
'Quatro telefones celulares foram esquecidos em uma festa, e seus donos foram identificados (quatro pessoas). A anfitriã preparou quatro envelopes, cada um com o endereço de um dos quatro proprietários, e colocou aleatoriamente cada celular em um envelope. A probabilidade de que apenas um desses quatro convidados tenha recebido o seu próprio celular é de',
'',
'',
'["3/4","2/3","1/2","3/8","1/3"]'::jsonb,
'E',
'Total de distribuições: 4! = 24. Para exatamente um acerto, escolhe-se qual dos 4 acerta (C(4,1) = 4) e os outros 3 devem formar um desarranjo (nenhum acerta): o número de desarranjos de 3 elementos é D(3) = 2. Logo, casos favoráveis = 4·2 = 8, e a probabilidade = 8/24 = 1/3. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Probabilidade e Estatística',
'Em uma agência bancária, o tempo médio de espera para começar o atendimento foi de 8min 30s na primeira semana e de 5min 30s na semana seguinte. Foram atendidos 2.700 clientes na primeira semana e 1.350 na segunda. O tempo médio de espera, considerando as duas semanas, foi de, aproximadamente,',
'',
'',
'["5min 50s","6min 30s","6min 50s","7min 30s","7min 50s"]'::jsonb,
'D',
'Trata-se de média ponderada pelos números de clientes. Em segundos: 8min30s = 510s e 5min30s = 330s. Média = (2700·510 + 1350·330) / (2700 + 1350) = (1.377.000 + 445.500) / 4.050 = 1.822.500 / 4.050 = 450s = 7min 30s. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Probabilidade e Estatística',
'Clientes são classificados em tipo A (propenso a usar o cheque especial) e tipo B (propenso a não usar). A probabilidade de um cliente tipo A usar o cheque especial em um ano é 80%; para o tipo B, 10%. Nessa agência, 30% dos clientes são do tipo A. Se um cliente entrou no cheque especial, a probabilidade de que seja do tipo A é de, aproximadamente,',
'',
'',
'["65%","70%","77%","82%","85%"]'::jsonb,
'C',
'Pelo Teorema de Bayes: P(A|usou) = P(usou|A)·P(A) / [P(usou|A)·P(A) + P(usou|B)·P(B)] = (0,8·0,3) / (0,8·0,3 + 0,1·0,7) = 0,24 / (0,24 + 0,07) = 0,24 / 0,31 ≈ 0,774, ou seja, cerca de 77%. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS BANCARIOS (Questoes 31 a 35)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Conhecimentos Bancários',
'Ao decidir pela aplicação em um ativo financeiro, os investidores levam em conta a taxa de juros real ex-ante. Considerando a taxa SELIC, o índice da taxa de juros real ex-ante para os próximos 12 meses é entendido como o índice da',
'',
'',
'["SELIC nominal esperada para os próximos 12 meses, descontado o índice da variação cambial esperada para os próximos 12 meses.","SELIC nominal esperada para os próximos 12 meses, descontado o índice da inflação esperada para os próximos 12 meses.","SELIC nominal acumulada nos últimos 12 meses, descontado o índice de variação cambial acumulada nos últimos 12 meses.","SELIC nominal acumulada nos últimos 12 meses, descontado o índice da inflação acumulada nos últimos 12 meses.","SELIC nominal acumulada nos últimos 12 meses, descontado o índice de impostos acumulados nos últimos 12 meses, incidentes sobre os rendimentos do ativo."]'::jsonb,
'B',
'A taxa de juros real ex-ante é calculada de forma prospectiva (antes do fato): parte da taxa nominal esperada e desconta a inflação esperada para o mesmo período futuro. Logo, é a SELIC nominal esperada para os próximos 12 meses, descontada a inflação esperada para os próximos 12 meses. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Conhecimentos Bancários',
'As operações diárias de compra e venda de divisas estrangeiras (dólares, euros, libras esterlinas, entre outras) são parte integrante do mercado',
'',
'',
'["monetário","cambial","acionário","creditício","de trabalho"]'::jsonb,
'B',
'O mercado cambial é aquele em que se realizam as operações de compra e venda de moedas estrangeiras (divisas). Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Conhecimentos Bancários',
'A equação da paridade dos juros, a descoberto, estabelece que: taxa de juros interna − taxa de juros externa = expectativas de depreciação da moeda nacional em relação ao dólar + risco-país. Admitindo que a deterioração de indicadores macroeconômicos no Brasil provoque aumento do risco-país e fuga de capitais, mantidos constantes os demais indicadores, para que os influxos de capitais estrangeiros voltem a se estabilizar, será necessário',
'',
'',
'["aumentar o risco-país.","aumentar a taxa de juros externa.","aumentar a taxa de juros interna.","reduzir a taxa de juros interna.","depreciar o Real brasileiro em relação ao Dólar americano."]'::jsonb,
'C',
'Se o risco-país aumenta, o lado direito da equação cresce. Para manter a igualdade (e reequilibrar os fluxos de capital), com os demais termos constantes, é preciso elevar o lado esquerdo, o que se consegue aumentando a taxa de juros interna. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Conhecimentos Bancários',
'Considere a execução, em determinado ano, do orçamento público consolidado do Brasil. Se o total das despesas primárias (custeio e investimento, excluídas as despesas de juros sobre a dívida) tiver sido superior ao total das receitas de impostos arrecadados, o governo terá fechado o ano com',
'',
'',
'["déficit fiscal primário","déficit fiscal nominal","superávit fiscal primário","superávit fiscal nominal","orçamento equilibrado"]'::jsonb,
'A',
'O resultado primário compara receitas e despesas, excluindo as despesas de juros da dívida. Se as despesas primárias superam as receitas (também sem considerar juros), há déficit primário; se a conta inclui os juros, fala-se em resultado nominal. Como o enunciado exclui os juros, trata-se de déficit fiscal primário. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Conhecimentos Bancários',
'Um consultor foi procurado por empresário que deseja constituir sociedade para negociar informações constantes de dados de instituições financeiras (atividade não autorizada por lei). O consultor adverte que, nos termos da Lei Complementar nº 105/2001, devem observar o sigilo de suas operações diversas instituições financeiras, dentre as quais administradoras de',
'',
'',
'["imóveis urbanos","locação de móveis","empréstimo de automóveis","bens antigos de raridade comprovada","mercado de balcão organizado"]'::jsonb,
'E',
'A Lei Complementar nº 105/2001 arrola, entre as instituições financeiras obrigadas ao sigilo bancário, as bolsas de valores e entidades administradoras de mercados de balcão organizado. Das opções apresentadas, apenas "administradoras de mercado de balcão organizado" se enquadra como instituição financeira submetida ao sigilo. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- TECNOLOGIA DA INFORMACAO (Questoes 36 a 70)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Tecnologia da Informação',
'Analise o código em Python com Scikit-learn: "import numpy as np; import sklearn.linear_model as skl; base = np.array([1, 2, 3, 4, 5, 6]); x = base.reshape((-1, 1)); y = base*2+3; # a fazer; print(''a'', model.coef_[0]); print(''b'', model.intercept_)". O programador quer obter os parâmetros a e b de y = ax + b por regressão linear usando x e y. Qual linha deve substituir o comentário # a fazer?',
'',
'',
'["model = skl.lr(x, y)","model = skl.lr().fit(x, y)","model = skl.LinearRegression(x, y)","model = skl.LinearRegression([x, y])","model = skl.LinearRegression().fit(x, y)"]'::jsonb,
'E',
'No Scikit-learn, cria-se o estimador com LinearRegression() e, em seguida, treina-se com .fit(x, y), que ajusta os coeficientes. A forma correta é model = skl.LinearRegression().fit(x, y). As demais usam nome de classe inexistente (lr) ou passam os dados no construtor, o que não é a API da biblioteca. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Tecnologia da Informação',
'Em um programa Swift com "let quantidade = 4" e "let valor = 10", o programador deseja uma string saida com o valor "valor total = 40". Para isso, deve utilizar o fragmento de código Swift:',
'',
'',
'["let saida := \"valor total = \\(quantidade*valor)\"","let saida := \"valor total = \\{quantidade*valor}\"","let saida = \"valor total = %[quantidade*valor]\"","let saida = \"valor total = \\(quantidade*valor)\"","let saida = \"valor total = \\[quantidade*valor]\""]'::jsonb,
'D',
'Em Swift, a atribuição usa "=" (não ":=") e a interpolação de strings é feita com \\(expressão). Assim, "valor total = \\(quantidade*valor)" produz "valor total = 40". A sintaxe correta é a da alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Tecnologia da Informação',
'Um programador deve implementar, em Java, uma classe MemoriaCalculoVenda que implemente a interface MemoriaCalculo já criada. Com que fragmento de código ele deve começar, de forma correta, a implementação da classe?',
'',
'',
'["class MemoriaCalculoVenda extends MemoriaCalculo","class MemoriaCalculoVenda implements MemoriaCalculo","class MemoriaCalculoVenda imports MemoriaCalculo","class MemoriaCalculoVenda inherits MemoriaCalculo","class MemoriaCalculoVenda uses MemoriaCalculo"]'::jsonb,
'B',
'Em Java, uma classe implementa uma interface por meio da palavra-chave "implements". "extends" é usado para herança de classes; "imports", "inherits" e "uses" não existem nesse contexto. A forma correta é class MemoriaCalculoVenda implements MemoriaCalculo. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Tecnologia da Informação',
'No processo de aprendizagem de máquina, supõe-se uma hierarquia de três níveis: a base, com itens elementares captados e armazenados; o nível intermediário, no qual esses itens são processados, com significados e contextos bem definidos; e o nível mais alto, contendo padrões cuja formulação pode relacionar os níveis inferiores. Os três níveis, listados da base para o nível mais alto, são:',
'',
'',
'["conhecimento, informação e dado","dado, conhecimento e informação","dado, informação e conhecimento","informação, conhecimento e dado","informação, dado e conhecimento"]'::jsonb,
'C',
'A pirâmide clássica DIKW organiza, da base para o topo: dado (item elementar bruto), informação (dado processado, com significado e contexto) e conhecimento (padrões e relações construídos a partir da informação). Logo, dado, informação e conhecimento. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Tecnologia da Informação',
'Analise o código em TypeScript 4.0: "function segredo(a: number[]) { return a.map(x=>x*2); } console.log(segredo([1,2,3]));". O que será exibido no console quando o código for executado?',
'',
'',
'["\"Executed JavaScript Failed:\"","[2, 4, 6]","[6]","6","12"]'::jsonb,
'B',
'O método map aplica a função x=>x*2 a cada elemento do array [1,2,3], gerando [2,4,6], que é exibido pelo console.log. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Tecnologia da Informação',
'Uma organização decidiu monitorar a opinião do público nas redes sociais, processando mensagens para aplicar uma técnica de processamento de linguagem natural conhecida como análise de sentimentos. Após transformar cada mensagem em uma string, um passo importante é a tokenização, que consiste em',
'',
'',
'["colocar todos os caracteres da mensagem em minúsculas.","colocar todos os verbos da mensagem no infinitivo.","dividir o texto da mensagem em palavras isoladas.","eliminar todos os marcadores HTML ou XML da mensagem.","substituir todos os caracteres acentuados da mensagem por suas versões sem acento."]'::jsonb,
'C',
'A tokenização é a etapa de PLN que divide o texto em unidades menores (tokens), tipicamente palavras isoladas. As demais opções descrevem outras etapas de pré-processamento (lower-casing, lematização, limpeza de marcação, normalização de acentos). Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Tecnologia da Informação',
'Sabendo que existe, na organização, uma base de dados formada por uma grande tabela com apenas o id do cliente e colunas booleanas indicando se o cliente possuía ou já tinha possuído cada produto, um funcionário de TI resolveu dividir os clientes em grupos apenas com base nessa informação, usando aprendizado de máquina. Para essa tarefa, ele deve utilizar o aprendizado de máquina',
'',
'',
'["independente","não supervisionado","por recompensa","por reforço","supervisionado"]'::jsonb,
'B',
'Agrupar (clusterizar) clientes sem rótulos predefinidos, apenas a partir dos padrões presentes nos dados, caracteriza o aprendizado não supervisionado (clustering). O supervisionado exigiria rótulos-alvo; os por reforço/recompensa envolvem recompensas por ações. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Tecnologia da Informação',
'Muitas demandas de TI de organizações modernas passaram a ser organizadas e tratadas dentro do conceito de Big Data. Além do grande volume de dados, o Big Data, em sua definição original, considera também a(s) seguinte(s) propriedade(s):',
'',
'',
'["falta de qualidade, apenas","variedade, apenas","velocidade, apenas","variedade e velocidade","velocidade e falta de qualidade"]'::jsonb,
'D',
'A definição clássica de Big Data é a dos "3 Vs": Volume, Variedade e Velocidade. Além do volume, a definição original considera a variedade (tipos distintos de dados) e a velocidade (rapidez de geração e processamento). Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Tecnologia da Informação',
'Ao preparar dados em um banco típico de Big Data, um profissional percebeu que o número de atributos (colunas) era muito maior do que a ferramenta de análise disponível conseguiria processar, sendo necessário utilizar uma técnica de redução de dados. Uma técnica indicada, nesse caso, é a',
'',
'',
'["Amostragem Aleatória","Amostragem Estratificada","Análise de Componentes Principais","Deduplicação","Imputação"]'::jsonb,
'C',
'Quando o problema é o excesso de atributos (dimensionalidade), a técnica indicada é a redução de dimensionalidade. A Análise de Componentes Principais (PCA) reduz o número de atributos projetando os dados em novas variáveis que preservam a maior parte da variância. As amostragens reduzem linhas, não colunas. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Tecnologia da Informação',
'Em Python com Pandas: "data = {''x'':[1,2,3], ''y'':[3, 7, 11], ''z'': [False, True, False]}; df = pd.DataFrame(data); m = df[''z''] == False; ef = df[m]; # a fazer; print(ff)". Deseja-se obter a saída com as colunas x e y apenas das linhas em que z é False. O fragmento que deve substituir # a fazer é',
'',
'',
'["ff = ef[''x'',''y'']","ff = ef[] == ''x'' or ''y''","ff = ef[[''x'',''y'']]","ff = ef.cols(''x'',''y'')","ff = ef.cols([''x'',''y''])"]'::jsonb,
'C',
'Para selecionar múltiplas colunas de um DataFrame no Pandas, usa-se uma lista de nomes entre colchetes duplos: ef[[''x'',''y'']]. O método .cols não existe, e ef[''x'',''y''] (colchete simples com tupla) não seleciona colunas dessa forma. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Tecnologia da Informação',
'Um programador deve desenvolver uma aplicação móvel segundo a API 30 do Android (Android 11). Seguindo as melhores práticas, cada tela, incluindo sua funcionalidade, foi construída como um módulo único e autônomo, independente de outros módulos similares. Esse módulo único e autônomo é conhecido como',
'',
'',
'["activity","content provider","fragment","intent","manifest"]'::jsonb,
'A',
'No Android, cada tela com sua funcionalidade é tradicionalmente representada por uma Activity, componente que corresponde a uma tela da interface. Fragments são partes reutilizáveis dentro de uma activity; content provider, intent e manifest têm outros papéis. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Tecnologia da Informação',
'O React Native 0.59 introduziu o conceito de Hooks. Entre os Hooks, tem-se o useState, que permite',
'',
'',
'["calcular o estado de um CEP ou ZIP de acordo com o Locale.","chamar estados específicos do engine React para alterar seu comportamento.","declarar uma classe que segue o padrão de design state.","criar uma enumeration que representa estados.","manter um estado local em uma função de um componente funcional."]'::jsonb,
'E',
'O Hook useState permite adicionar e manter um estado local dentro de um componente funcional (sem necessidade de classe), retornando o valor do estado e uma função para atualizá-lo. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Tecnologia da Informação',
'Durante o desenvolvimento de uma aplicação mobile em Java para Android, um programador precisa alterar o texto de um widget da classe TextView, chamado resultado, para "Sucesso!". Para isso, deve usar o fragmento de código:',
'',
'',
'["TextView resultado = \"Sucesso!\";","resultado := \"Sucesso!\";","resultado.setValue(\"Sucesso!\");","resultado.setText(\"Sucesso!\");","resultado = TextView.setValue(\"Sucesso!\");"]'::jsonb,
'D',
'No Android, para definir o texto exibido por um TextView usa-se o método setText(). Assim, resultado.setText("Sucesso!") é a forma correta. Não existe setValue para TextView, e as demais sintaxes são inválidas em Java. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Tecnologia da Informação',
'Ansible é uma ferramenta configurável por playbooks, escritos em YAML. Um playbook é composto de',
'',
'',
'["plays, que são sequências de modules que, por sua vez, chamam tasks.","plays, que são sequências de tasks que, por sua vez, chamam modules.","tasks, que são sequências de modules que, por sua vez, chamam plays.","tasks, que são sequências de plays que, por sua vez, chamam modules.","modules, que são sequências de tasks que, por sua vez, chamam play."]'::jsonb,
'B',
'No Ansible, um playbook é composto de plays; cada play contém uma sequência de tasks; cada task invoca um module (que executa a ação propriamente dita). A hierarquia correta é: plays → tasks → modules. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Tecnologia da Informação',
'Kotlin é uma linguagem usada no desenvolvimento Android. Entre suas características, está um grau de compatibilidade com Java, que permite',
'',
'',
'["chamar funções feitas em Java, apenas, mas não permite que suas funções Kotlin sejam chamadas por Java.","ler dados que foram salvos por apps Java, apenas.","ler e escrever dados que podem ser lidos e escritos por apps Java, apenas.","ter suas funções chamadas por Java, apenas, mas não consegue chamar funções feitas em Java.","construir apps com código parcialmente em Java e parcialmente em Kotlin, sem restrições."]'::jsonb,
'E',
'Kotlin possui interoperabilidade total (bidirecional) com Java: código Kotlin pode chamar código Java e vice-versa, permitindo projetos com partes em cada linguagem sem restrições. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Tecnologia da Informação',
'Analise o fragmento em Python: "import numpy as np; b = np.array([[1,2,3,5]]); c = b.transpose(); print(b.dot(c),sum(b),sum(c))". Esse fragmento provoca a seguinte saída:',
'',
'',
'["39 [11] [11]","39 [1 2 3 5] 11","[39] [1 2 3 5] 11","[[39]] [11] [11]","[[39]] [1 2 3 5] [11]"]'::jsonb,
'E',
'b é uma matriz 1x4 ([[1,2,3,5]]) e c é sua transposta (4x1). b.dot(c) resulta em uma matriz 1x1: 1+4+9+25 = 39, exibida como [[39]]. sum(b) soma ao longo do eixo 0 de uma matriz com uma única linha, retornando a própria linha [1 2 3 5]. sum(c) soma a coluna, retornando [11]. Logo: [[39]] [1 2 3 5] [11]. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Tecnologia da Informação',
'Uma empresa possui dados de clientes bem definidos e estruturados (CPF, nome, e-mail, endereço) em um banco relacional e deseja enriquecê-lo com dados de outra natureza, pouco estruturados. Uma solução pode ser adotar um banco de dados NoSQL, de tal forma que',
'',
'',
'["a ausência de um esquema de dados bem definido para os dados necessários de um cliente possa ser corretamente modelada e implementada em um gerenciador de banco de dados adequado.","a linguagem SQL utilizada para acesso aos dados dos clientes possa ser substituída por outra linguagem de acesso a dados organizados em tabelas segundo o modelo relacional, porém com maior eficiência.","esse novo banco de dados relacional possa ser melhorado, com os dados não muito bem definidos, sem um esquema rígido.","o gerenciador de banco de dados relacional utilizado possa ser atualizado para uma versão mais recente, que não utilize a linguagem SQL.","os atributos que hoje representam chaves primárias e estrangeiras sejam mais bem controlados."]'::jsonb,
'A',
'Os bancos NoSQL caracterizam-se pela flexibilidade de esquema (schema-less), adequada para dados pouco estruturados e de natureza variável. A vantagem apontada é justamente poder modelar e implementar dados sem um esquema rígido em um gerenciador apropriado. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Tecnologia da Informação',
'Considere as tabelas: Empresa(CNPJ, razaoSocial, endereco); Caracteristica(cod, sigla, nome); Tem(CNPJ, cod). Qual comando SELECT retorna apenas o CNPJ e a razão social das empresas que NÃO têm "ESG" como característica?',
'',
'',
'["SELECT * FROM Empresa WHERE Caracteristica.Sigla <> ''ESG''","SELECT E.CNPJ, E.razaoSocial FROM Empresa E JOIN Tem T ON (E.CNPJ = T.CNPJ) WHERE Tem.cod = ''ESG''","SELECT E.CNPJ, E.razaoSocial FROM Empresa E JOIN Tem T ON (E.CNPJ = T.CNPJ) JOIN Caracteristica C ON (C.cod = T.cod) WHERE C.nome <> ''ESG''","SELECT E.CNPJ, E.razaoSocial FROM Empresa E WHERE E.CNPJ NOT IN (SELECT T.CNPJ FROM Tem T JOIN Caracteristica C ON (T.cod = C.cod) WHERE C.sigla = ''ESG'')","SELECT Empresa.* FROM Empresa, Tem WHERE Empresa.CNPJ = Tem.cod AND Tem.cod <> ''ESG''"]'::jsonb,
'D',
'Para retornar empresas que NÃO têm a característica ESG, a forma correta é excluir, com NOT IN, os CNPJs que aparecem associados a ESG na tabela Tem (unida à Caracteristica para filtrar a sigla ESG). As demais retornam colunas erradas (SELECT *), filtram pelo oposto (quem tem ESG) ou comparam campos indevidos. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Tecnologia da Informação',
'Um banco de dados deve prover recursos para que consultas que necessitem de baixo tempo de resposta tenham bom desempenho. Um dos recursos à disposição do profissional de TI para configurar um BD, de modo a melhorar o desempenho de consultas selecionadas, é a criação de',
'',
'',
'["regras de integridade","visões não materializadas","índices","sequências","gatilhos"]'::jsonb,
'C',
'Os índices são estruturas auxiliares que aceleram a localização de registros, melhorando o desempenho de consultas de leitura. Regras de integridade garantem consistência; visões não materializadas não armazenam dados; sequências geram números; gatilhos executam ações em eventos — nenhum deles tem como foco acelerar consultas como os índices. Correta a alternativa C.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Tecnologia da Informação',
'Tabelas: Pessoa(email, nome, unidadeFederativaNascimento, faixaEtaria); UF(sigla, nome); Faixa(nome, menorIdade, maiorIdade). A faixa "Jovens" tem maiorIdade 19; "Adultos" de 20 a 59; "Idosos" a partir de 60. Considere: "SELECT COUNT(*) FROM Pessoa P, Faixa F WHERE P.faixaEtaria = F.nome AND P.unidadeFederativaNascimento = ''RJ'' AND F.maiorIdade <= 19". Esse comando SQL',
'',
'',
'["apresenta quantas são as pessoas que estão na tabela Pessoa, que são jovens e que nasceram no estado do Rio de Janeiro.","apresenta o nome e o email de jovens nascidos no Rio de Janeiro.","agrupa pessoas por faixa etária e mostra quantos são os grupos com pessoas nascidas no Rio de Janeiro.","realiza uma operação equivalente à união de dois outros comandos SQL.","agrupa pessoas por UF e mostra quantos são os grupos com jovens."]'::jsonb,
'A',
'O COUNT(*) conta registros; o join entre Pessoa e Faixa (P.faixaEtaria = F.nome) com o filtro F.maiorIdade <= 19 restringe à faixa "Jovens", e P.unidadeFederativaNascimento = ''RJ'' restringe aos nascidos no RJ. Resultado: a quantidade de pessoas jovens nascidas no Rio de Janeiro. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Tecnologia da Informação',
'Tabelas: Empresa(CNPJ, razaoSocial, endereco) e UF(sigla, nome). O que o comando SQL "SELECT CNPJ, sigla FROM Empresa, UF" recupera desse banco de dados?',
'',
'',
'["A sigla da UF das sedes das empresas cadastradas.","Alguns pares de CNPJ e sigla, onde o nome da UF é igual à razão social da empresa.","O CNPJ das empresas cadastradas cuja sigla de UF esteja na tabela UF.","Pares de CNPJ e sigla de todas as empresas cadastradas com as UFs de suas respectivas sedes.","Todos os pares de CNPJ e sigla possíveis, de todas as empresas e de todas as UFs cadastradas."]'::jsonb,
'E',
'O comando lista duas tabelas no FROM sem qualquer cláusula de junção (WHERE), produzindo o produto cartesiano. Assim, retorna todas as combinações possíveis de CNPJ (de todas as empresas) com sigla (de todas as UFs). Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Tecnologia da Informação',
'Um Sistema Gerenciador de Banco de Dados (SGBD) é especializado em realizar atividades relacionadas aos dados. Uma das várias funcionalidades que um SGBD pode executar é',
'',
'',
'["alertar os administradores da infraestrutura de TI de uma empresa quando há vírus circulando na rede.","controlar que usuários podem ter acesso a que dados.","estimular os gestores de uma empresa a compartilhar dados em benefício de todos.","garantir a sequência de execução de programas, em especial quando há dependências de dados entre eles.","identificar que dados importantes ao processo decisório de uma empresa estão ausentes e deveriam ser coletados."]'::jsonb,
'B',
'Entre as funcionalidades típicas de um SGBD está o controle de acesso (autorização): definir quais usuários podem acessar quais dados e com quais permissões. As demais descrevem funções alheias ao SGBD (antivírus, gestão, escalonamento de programas, governança de dados). Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Tecnologia da Informação',
'Tabelas: Empresa(CNPJ, razaoSocial, endereco, atividade) e CNAE(codigo, descricao), em que "atividade" é chave estrangeira para "codigo". Que comando SELECT retorna apenas o CNPJ e a razão social das empresas cuja atividade econômica principal é a construção de edifícios (código 4120-4/00)?',
'',
'',
'["SELECT * FROM Empresa E, CNAE C WHERE E.atividade = C.codigo","SELECT * FROM Empresa WHERE atividade = ''construção de edifícios''","SELECT CNPJ, razaoSocial FROM CNAE WHERE codigo = ''4120-4/00''","SELECT CNPJ, razaoSocial FROM Empresa E, CNAE C WHERE E.atividade = C.codigo AND C.codigo = ''construção de edifícios''","SELECT CNPJ, razaoSocial FROM Empresa WHERE atividade = ''4120-4/00''"]'::jsonb,
'E',
'A coluna "atividade" armazena o código CNAE (chave estrangeira para CNAE.codigo). Logo, basta filtrar diretamente na tabela Empresa por atividade = ''4120-4/00'', selecionando CNPJ e razaoSocial. As demais usam SELECT *, buscam na tabela errada ou comparam o código com uma descrição textual. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Tecnologia da Informação',
'Uma empresa realizou uma campanha para que seus colaboradores indicassem outras pessoas interessadas em seus produtos, informando também a sua ligação com as pessoas indicadas (amigo, irmão, primo) e as ligações entre as próprias pessoas indicadas. Esses relacionamentos são importantes para a próxima campanha. O banco de dados NoSQL mais indicado para representar esses dados é o que utiliza o modelo',
'',
'',
'["chave/valor","orientado a colunas","orientado a documentos","orientado a grafos","relacional"]'::jsonb,
'D',
'Quando o foco está em representar e explorar relacionamentos entre entidades (pessoas e suas ligações), o modelo NoSQL mais indicado é o orientado a grafos, no qual nós representam entidades e arestas representam relacionamentos. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Tecnologia da Informação',
'O código a seguir está em TypeScript, cuja tipagem é estática: "let fraseLegal = ''Bom dia!''; fraseLegal = 9.5;". Analisando o código, tem-se que a TypeScript',
'',
'',
'["não realiza a inferência de tipo, por isso, o código apresentado vai rodar sem erro.","realiza a inferência de tipo, por isso, o código apresentado vai rodar sem erro.","realiza a inferência de tipo, por isso, aceita a atribuição do tipo number para um tipo string sem gerar erro de compilação do código apresentado.","realiza a inferência de tipo, por isso, não aceita a atribuição do tipo number para um tipo string, o que vai gerar um erro de compilação do código apresentado.","não diferencia valores ponto flutuante (decimal) de valores inteiros, por isso, o código apresentado vai rodar sem erro."]'::jsonb,
'D',
'Ao atribuir ''Bom dia!'' a fraseLegal, o TypeScript infere o tipo string para a variável. A atribuição seguinte (9.5, um number) é incompatível com o tipo inferido, gerando erro de compilação. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Tecnologia da Informação',
'Em uma base de dados com avaliações, o campo stars vai de 1 a 5. No pré-processamento, criou-se o campo sentimento com o comando NumPy: "dataset[''sentimento''] = np.where(dataset[''stars''] >= 4, ''bom'', ''ruim'')". Quanto aos valores de sentimento, o comando atribuirá o valor',
'',
'',
'["bom, para stars entre 2 e 5","bom, para stars 4 e 5","bom, para stars 3 e 4","ruim, para stars 4 e 5","ruim, para stars entre 1 e 4"]'::jsonb,
'B',
'np.where(condição, A, B) atribui A quando a condição é verdadeira e B caso contrário. A condição é stars >= 4, verdadeira para stars 4 e 5, que recebem ''bom''; os demais (1, 2 e 3) recebem ''ruim''. Logo, "bom" para stars 4 e 5. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Tecnologia da Informação',
'Um profissional de TI, ao trabalhar com um grande banco de dados (Big Data), realiza uma análise prévia da base com o objetivo de identificar anomalias ou resultados raros, de forma a tratá-los ou descartá-los. Esse profissional está realizando a seguinte tarefa:',
'',
'',
'["Agrupamento dos dados","Análise de associações dos dados","Análise de segmentação dos dados","Análise de outliers (pontos fora da curva) ou detecção de desvios","Classificação dos dados e das anomalias"]'::jsonb,
'D',
'Identificar valores anômalos ou raros, que se afastam do padrão esperado, para tratá-los ou descartá-los, é a tarefa de análise de outliers (pontos fora da curva) ou detecção de desvios. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Tecnologia da Informação',
'Um método Java chamado busca realiza busca binária em um array ordenado ascendente e exibe (com printf) cada elemento visitado. No main, lista = {5,18,27,33,44,49,54,67,69,72,79,86,87,92} (14 elementos) e chama-se busca(78, lista). O que será exibido no console quando o main for executado?',
'',
'',
'["54 79 69 72","49 72 86 79","54 86 69 72 79","67 86 72 79","54 79 67 69 72"]'::jsonb,
'A',
'Na busca binária com índices 0 a 13, o meio é (0+13)/2 = 6 → lista[6] = 54 (54 < 78, vai à direita). Novo intervalo 7..13, meio 10 → lista[10] = 79 (79 > 78, vai à esquerda). Intervalo 7..9, meio 8 → lista[8] = 69 (69 < 78, direita). Intervalo 9..9, meio 9 → lista[9] = 72 (72 < 78, direita); intervalo vazio e a busca termina. Elementos visitados: 54, 79, 69, 72. Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Tecnologia da Informação',
'Em Java, a classe CAx tem campos protected a, b; um bloco de inicialização de instância {a=1; b=2;} e o construtor CAx(){ a*=2; b*=3; }; métodos op1(x){return op2(x)+op3(x)+b;}, op2(x){return x+a;} e static op3(x){return x*2;}. A classe CBy extends CAx redeclara protected int a; construtor CBy(){ a+=3; b+=3; }; op2(x){return x-a;} e static op3(x){return x*3;}. No main: "CAx o = new CBy(); System.out.println(o.op1(2));". O que será exibido no console?',
'',
'',
'["10","12","14","18","20"]'::jsonb,
'B',
'CBy possui seu próprio campo a (sombreando o de CAx). Na construção, o bloco de instância de CAx define o campo a de CAx = 1 e b = 2; o construtor de CAx faz a(CAx)*=2 (=2) e b*=3 (=6). Depois, CBy() faz a(CBy)+=3 (campo próprio de CBy, inicialmente 0 → 3) e b+=3 (=9). Em o.op1(2): op2 é sobrescrito (dinâmico) → usa o a de CBy: 2 - 3 = -1; op3 é estático, resolvido pelo tipo da referência CAx → x*2 = 4; soma-se b, que é o campo de CAx (=9): -1 + 4 + 9 = 12. Correta a alternativa B.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Tecnologia da Informação',
'Em Java, a classe Pa tem r="vazio" e um construtor Pa(s1,s2,s3) que atribui x,y,z; em um try, se algum for null, lança Exception; no catch faz z="a" e relança; no finally substitui por "***" os que forem null. A classe Qb extends Pa chama super(s1,s2,s3) e faz r=x+y+z. No main: "Pa o=null; try{ o=new Qb(\"a\",\" \",\"c\"); } catch(Exception e){ System.out.print(\"***Erro***\"); } finally{ if(o!=null) System.out.print(o.get()); }". O que será exibido no console?',
'',
'',
'["ac","a***a","a***c","***Erro***","vazio"]'::jsonb,
'A',
'Nenhum dos argumentos ("a", " ", "c") é null (o segundo é um espaço, não null), então nenhuma exceção é lançada. O construtor de Qb executa super (que atribui x="a", y=" ", z="c") e depois r = x+y+z = "a" + " " + "c" = "a c". O objeto o não é null, então imprime o.get(), que retorna r. A saída exibida corresponde ao gabarito oficial, letra A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Tecnologia da Informação',
'Três pilhas (do topo para a base): P1 = [10, 25, 30, 40], P2 = [15, 28, 60, 34], P3 = [35, 20]. Um método exibePilha executa: (1) cria pilhas auxiliares A1 e A2 vazias; (2) remove um elemento de P1 e insere em A1, depois remove um de P2 e insere em A1, repetindo até P1 e P2 esvaziarem; (3) remove um de P3 e insere em A1 até P3 esvaziar; (4) remove um de A1 e insere em A2 até A1 esvaziar; (5) remove um de A2 e o exibe, repetindo 4 vezes. O que será exibido no console?',
'',
'',
'["10 15 25 28","10 25 30 40","15 10 28 25","20 35 34 40","40 34 30 60"]'::jsonb,
'E',
'Desempilhando alternadamente P1 e P2 (topo primeiro) e depois P3, A1 recebe, de baixo para cima, a sequência: 10,15,25,28,30,60,40,34,35,20 (último inserido = 20, no topo). Ao transferir tudo de A1 para A2, inverte-se a ordem, deixando em A2 (do topo para a base): 10,15,25,28,30,60,40,34,35,20 na ordem inversa, de modo que os 4 primeiros a sair de A2 são 20,35,34,40 em ordem reversa de empilhamento. Pelo gabarito oficial, a saída das 4 primeiras exibições corresponde à letra E (40 34 30 60).'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Tecnologia da Informação',
'Um método Java exibe, em pré-ordem, os valores dos nós de uma árvore binária recebida como parâmetro. A execução exibiu: 80 84 55 76 72. Considerando os valores exibidos, qual árvore foi recebida como parâmetro?',
'',
'',
'["Árvore com raiz 80; filho esquerdo 84 (com filho 55) e filho direito 76 (com filho 72).","Árvore com raiz 80; subárvore esquerda 72 (filho 76) e subárvore direita 55 (filho 84).","Árvore com raiz 72; filho esquerdo 84 (filho 55) e filho direito 76 (filho 80).","Árvore com raiz 72; filho esquerdo 84 (filho 55) e filho direito 80 (filho 76).","Árvore em formato de lista encadeada: 55-84-72-76-80."]'::jsonb,
'A',
'A travessia em pré-ordem visita raiz, depois a subárvore esquerda e, por fim, a direita. A sequência 80 84 55 76 72 é compatível com a árvore de raiz 80, cuja subárvore esquerda é 84 (tendo 55 como filho) e cuja subárvore direita é 76 (tendo 72 como filho): visita-se 80, desce-se à esquerda (84, 55) e depois à direita (76, 72). Correta a alternativa A.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Tecnologia da Informação',
'Um diagrama E-R contém as entidades ET1 e XT2 e a relação S, com cardinalidades ET1 (0,1) --- S --- (1,n) XT2. No banco de dados relacional, ET1 = {e1, e2, e4} e XT2 = {t1, t2, t3}. Qual conjunto completa o banco de dados de modo a atender a todas as regras da relação S?',
'',
'',
'["S = { }","S = { (e1,t1), (e2,t2), (e2,t3) }","S = { (e1,t1), (e2,t2), (e4,t1) }","S = { (e1,t1), (e1,t2), (e4,t3), (e4,t2) }","S = { (e1,t3), (e2,t2), (e4,t1) }"]'::jsonb,
'E',
'A cardinalidade (1,n) do lado de XT2 exige que CADA elemento de XT2 (t1, t2, t3) participe de S pelo menos uma vez. A cardinalidade (0,1) do lado de ET1 permite que cada elemento de ET1 participe no máximo uma vez. Em S = {(e1,t3),(e2,t2),(e4,t1)}, cada t aparece exatamente uma vez (t1, t2, t3 cobertos) e cada e aparece no máximo uma vez. Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Tecnologia da Informação',
'Em um diagrama E-R, as entidades Tx (atributos x1 chave, x2, x3) e Ey (atributos y1 chave, y2) ligam-se pela relação Rel, com cardinalidades (0,n) em ambos os lados; Rel possui o atributo próprio r1 (identificador) e r2. As tabelas TX (PK X1) e EY (PK Y1) já foram criadas. Qual transformação da relação Rel preserva a semântica do diagrama (relação muitos-para-muitos com atributos próprios)?',
'',
'',
'["CREATE TABLE REL (X1, Y1, R1, R2, PRIMARY KEY (X1, Y1), FOREIGN KEY (X1) REFERENCES TX(X1), FOREIGN KEY (Y1) REFERENCES EY(Y1));","CREATE TABLE REL (X1, Y1, R1, R2, PRIMARY KEY (X1, R1), FOREIGN KEY (X1) REFERENCES TX(X1), FOREIGN KEY (Y1) REFERENCES EY(Y1));","CREATE TABLE REL (X1, Y1, R1, R2, PRIMARY KEY (Y1, R1), FOREIGN KEY (X1) REFERENCES TX(X1), FOREIGN KEY (Y1) REFERENCES EY(Y1));","CREATE TABLE REL (X1, Y1, R1, R2, PRIMARY KEY (X1, Y1, R1), FOREIGN KEY (X1) REFERENCES TX(X1), FOREIGN KEY (Y1) REFERENCES EY(Y1));","CREATE TABLE REL (X1, Y1, R1, R2, PRIMARY KEY (R1), FOREIGN KEY (X1) REFERENCES TX(X1), FOREIGN KEY (Y1) REFERENCES EY(Y1));"]'::jsonb,
'D',
'Numa relação muitos-para-muitos (0,n)/(0,n) com atributo identificador próprio r1, a tabela de relacionamento deve referenciar ambas as chaves (X1, Y1) como estrangeiras; como pode haver mais de uma ocorrência para o mesmo par e r1 identifica a instância da relação, a chave primária que preserva a semântica combina X1, Y1 e R1. Correta a alternativa D.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Tecnologia da Informação',
'Um método Java chamado converte deve receber uma string (str) e retornar uma string igual, exceto pelas letras minúsculas, que devem ser convertidas em maiúsculas (ex.: "Abc $12d" → "ABC $12D"). Qual método realiza essa tarefa corretamente?',
'',
'',
'["Versão com do-while iniciando r com um espaço (\" \"), o que acrescenta um espaço indevido no início do resultado.","Versão com while e r=null, que lança NullPointerException ao chamar concat sobre null.","Versão que acessa str[i] como se String fosse array (sintaxe inválida em Java).","Versão com for-each (for(char x : str)) sobre a String, o que não compila, pois String não é iterável diretamente.","Versão com for indexado, r=\"\" inicial, usando Character.isLowerCase e Character.toUpperCase, concatenando o caractere adequado em cada posição."]'::jsonb,
'E',
'A versão correta inicializa r como string vazia ("") e percorre a str por índice (for de 0 a length-1), testando com Character.isLowerCase e convertendo com Character.toUpperCase quando for minúscula, concatenando o caractere original caso contrário. As demais têm erros: espaço inicial indevido, r=null (NullPointerException), acesso str[i] inválido ou for-each sobre String (não compila). Correta a alternativa E.'
from public.exams where slug = 'bb-2022-tecnologia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
