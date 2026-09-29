-- Seed: Banco do Brasil 2021 - Escriturario - Agente Comercial (Prova A)
-- Fonte: Selecao Externa 2021/001 - Edital no 01 - 2021/001 BB, de 23 de junho de 2021
-- Prova realizada em 26/09/2021 - Banca CESGRANRIO
-- Gabarito utilizado: GABARITO 1 (Prova A) - ordem original do caderno de questoes
-- Gabarito objetivo (Gabarito 1):
--   Lingua Portuguesa 1-10: C,D,B,D,E,C,B,E,D,E
--   Lingua Inglesa 11-15: B,C,E,D,C
--   Matematica 16-20: A,D,E,D,C
--   Atualidades do Mercado Financeiro 21-25: B,A,B,C,A
--   Matematica Financeira 26-30: C,A,C,A,B
--   Conhecimentos Bancarios 31-40: C,E,A,C,D,D,A,C,B,E
--   Conhecimentos de Informatica 41-55: C,B,D,C,D,C,D,B,B,A,A,C,E,E,B
--   Vendas e Negociacao 56-70: E,C,B,D,E,B,C,D,A,B,E,A,B,C,A

insert into public.exams (slug, title, source, year)
values ('bb-2021-a-comercial', 'Banco do Brasil 2021 - Agente Comercial (Prova A)', 'bb', '2021-A')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- Texto de apoio: Privacidade digital: quais sao os limites
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Língua Portuguesa',
'Um argumento que justifica a tese de que "pensar em privacidade digital é (quase) utópico" (parágrafo 2) aparece em',
'Privacidade digital: quais são os limites

Atualmente, somos mais de 126,4 milhões de brasileiros usuários de internet, representando cerca de 69,8% da população com 10 anos ou mais. Ao redor do mundo, cerca de 4 bilhões de pessoas usam a rede mundial, sendo que 2,9 bilhões delas fazem isso pelo smartphone.

Nesse cenário, pensar em privacidade digital é (quase) utópico. Uma vez na rede, a informação está registrada para sempre: deixamos rastros que podem ser descobertos a qualquer momento.

Ainda assim, mesmo diante de tamanha exposição, essa é uma discussão que precisa ser feita. Ela é importante, inclusive, para trazer mais clareza e consciência para os usuários. Vale lembrar, por exemplo, que não são apenas as redes sociais que expõem as pessoas. Infelizmente, basta ter um endereço de e-mail para ser rastreado por diferentes empresas e provedores.

A questão central não se resume somente à política de privacidade das plataformas X ou Y, mas, sim, ao modo como cada sociedade vem paulatinamente estruturando a sua política de proteção de dados.

A segurança da informação já se transformou em uma área estratégica para qualquer tipo de empresa. Independentemente da demanda de armazenamento de dados de clientes, as organizações têm um universo de dados institucionais que precisam ser salvaguardados.

Estamos diante de uma realidade já configurada: a coleta de informações da internet não para, e esse é um caminho sem volta. Agora, a questão é: nós, clientes, estamos prontos e dispostos a definir o limite da privacidade digital? O interesse maior é nosso! Esse limite poderia ser dado pelo próprio consumidor, se ele assim quiser? O conteúdo é realmente do usuário?

Se considerarmos a atmosfera das redes sociais, muito possivelmente não. Isso porque, embora muitas pessoas não saibam, a maioria das redes sociais prevê que, a partir do momento em que um conteúdo é postado, ele faz parte da rede e não é mais do usuário.

Daí a importância da conscientização. É preciso que tanto clientes como empresas busquem mais informação e conteúdo técnico sobre o tema. Às organizações, cabe o desafio de orientar seus clientes, já que, na maioria das vezes, eles não sabem quais são os limites da privacidade digital.

Vivemos em uma época em que todo mundo pode falar permanentemente o que quer. Nesse contexto, a informação deixou de ser algo confiável e cabe a cada um de nós aprender a ler isso e se proteger. Precisamos de consciência, senso crítico, responsabilidade e cuidado para levar a internet a um outro nível. É fato que ela não é segura, a questão, então, é como usá-la de maneira mais inteligente e contribuir para fortalecer a privacidade digital? Essa é uma causa comum a todos os usuários da rede.

Disponível em: <https://digitalks.com.br/artigos/privacidade-digital-quais-sao-os-limites>. 7/04/2019. Acesso em: 3 fev. 2021. Adaptado.',
'',
'["\"A questão central não se resume somente à política de privacidade das plataformas X ou Y\" (parágrafo 4)","\"A segurança da informação já se transformou em uma área estratégica para qualquer tipo de empresa\" (parágrafo 5)","\"a partir do momento em que um conteúdo é postado, ele faz parte da rede e não é mais do usuário\" (parágrafo 7)","\"É preciso que tanto clientes como empresas busquem mais informação e conteúdo técnico sobre o tema\" (parágrafo 8)","\"Precisamos de consciência, senso crítico, responsabilidade e cuidado para levar a internet a um outro nível.\" (parágrafo 9)"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Língua Portuguesa',
'Depois de questionar se o conteúdo que circula nas redes é realmente propriedade do usuário (parágrafo 6), o texto desenvolve a ideia de que',
'Consulte o texto "Privacidade digital: quais são os limites" apresentado na questão 1.',
'',
'["a maior parte dos usuários no mundo acessa a internet por meio de um smartphone.","a segurança da informação já se transformou em uma área estratégica para as empresas.","as empresas e os provedores conseguem rastrear os usuários por meio de endereço de e-mail.","as organizações devem conscientizar os clientes em relação aos limites da privacidade digital.","as pessoas deixam rastros na rede que podem ser descobertos a qualquer momento."]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Língua Portuguesa',
'O trecho em que a palavra destacada expressa uma opinião do autor é',
'Consulte o texto "Privacidade digital: quais são os limites" apresentado na questão 1.',
'',
'["\"Atualmente, somos mais de 126,4 milhões de brasileiros\" (parágrafo 1)","\"Infelizmente, basta ter um endereço de e-mail para ser rastreado\" (parágrafo 3)","\"modo como cada sociedade vem paulatinamente estruturando a sua política\" (parágrafo 4)","\"Independentemente da demanda de armazenamento de dados de clientes\" (parágrafo 5)","\"época em que todo mundo pode falar permanentemente o que quer.\" (parágrafo 9)"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Língua Portuguesa',
'No trecho "Às organizações, cabe o desafio de orientar seus clientes, já que, na maioria das vezes, eles não sabem quais são os limites da privacidade digital" (parágrafo 8), a expressão destacada (já que) expressa a noção de',
'Consulte o texto "Privacidade digital: quais são os limites" apresentado na questão 1.',
'',
'["condição","finalidade","concessão","causalidade","comparação"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Língua Portuguesa',
'A palavra ou a expressão a que se refere o termo em destaque está corretamente explicitada entre colchetes em:',
'Consulte o texto "Privacidade digital: quais são os limites" apresentado na questão 1.',
'',
'["\"sendo que 2,9 bilhões delas fazem isso pelo smartphone\" (parágrafo 1) - [rede mundial]","\"Ela é importante, inclusive, para trazer mais clareza e consciência para os usuários.\" (parágrafo 3) - [exposição]","\"Isso porque, embora muitas pessoas não saibam, a maioria das redes sociais prevê que, a partir do momento\" (parágrafo 7) - [redes sociais]","\"a partir do momento em que um conteúdo é postado, ele faz parte da rede e não mais do usuário\" (parágrafo 7) - [momento]","\"É fato que ela não é segura, a questão, então, é como usá-la de maneira mais inteligente\" (parágrafo 9) - [internet]"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Língua Portuguesa',
'No trecho "Esse limite poderia ser dado pelo próprio consumidor, se ele assim quiser?" (parágrafo 6), a forma verbal destacada (poderia) expressa a noção de',
'Consulte o texto "Privacidade digital: quais são os limites" apresentado na questão 1.',
'',
'["dever","certeza","hipótese","obrigação","necessidade"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Língua Portuguesa',
'De acordo com as exigências da norma-padrão da língua portuguesa, a concordância verbal está corretamente empregada na forma destacada em:',
'',
'',
'["Para entender o público das plataformas digitais, analisaram-se, durante dez semanas, o comportamento de jovens considerados viciados em aplicativos.","Em grupos de jovens usuários de redes sociais, constataram-se inúmeras situações de dependência crônica do uso de aparelhos celulares.","Nos serviços de ouvidoria das empresas de comunicação, atendem-se a reclamações de todos os tipos sobre falhas nas conexões telefônicas.","Nas análises sobre privacidade dos usuários, atribuem-se corretamente aos aplicativos de conversas a maior responsabilidade pela situação atual.","Com base em dados estatísticos, estimam-se que os jovens sejam os maiores responsáveis pela navegação nas redes sociais."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Língua Portuguesa',
'O grupo de palavras que atende às exigências relativas ao emprego ou não do hífen, segundo o Vocabulário Ortográfico da Língua Portuguesa, é',
'',
'',
'["extra-escolar / médico-cirurgião","bem-educado / vagalume","portarretratos / dia a dia","arco-íris / contra-regra","subutilizar / sub-reitor"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Língua Portuguesa',
'De acordo com a norma-padrão da língua portuguesa, o emprego do acento grave indicativo da crase é obrigatório na palavra destacada em:',
'',
'',
'["A exigência de entrar em contato com instituições financeiras obrigou o cliente a criar senhas para ter acesso aos serviços bancários.","A falta de leis sobre privacidade digital exige que os indivíduos se preparem para enfrentar a invasão do acesso a suas vidas privadas.","A revolução da tecnologia da informação modificou a realidade social, penetrando em todas as esferas da atividade humana.","As pesquisas tecnológicas são indispensáveis devido a importância de solucionar problemas causados pela invasão de dados.","O surgimento das redes sociais e dos sites de compartilhamento conduziu as pessoas a novas situações de risco na sociedade atual."]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Língua Portuguesa',
'O pronome destacado foi utilizado na posição correta, segundo as exigências da norma-padrão da língua portuguesa, em:',
'',
'',
'["A associação brasileira de mercados financeiros publicou uma diretriz de segurança, na qual mostra-se a necessidade de adequação de proteção de dados.","A segurança da informação já transformou-se em uma área estratégica para qualquer tipo de empresa.","Naquele evento, ninguém tinha-se incomodado com o palestrante no início do debate a respeito de privacidade digital.","Apesar das dificuldades encontradas, sempre referimo-nos com cuidado aos nossos dados pessoais, como CPF, RG, e-mail, para proteção da vida privada.","Quando a privacidade dos dados bancários é mantida, como nos garantem as instituições, ficamos tranquilos."]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- LINGUA INGLESA (Questoes 11 a 15)
-- Texto de apoio: Robots, the next generation of soccer players
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Língua Inglesa',
'According to the second paragraph, the concept of robotic soccer players emerged',
'Robots, the next generation of soccer players

If you think a robot will steal your job, you are not alone. Soccer players should be worried too. The next Messi probably won''t be of flesh and blood but plastic and metal.

The concept emerged during the conference "Workshop on grand challenges in artificial intelligence," held in Tokyo in 1992, and independently, in 1993, when Professor Alan Mackworth from the University of Bristol in Canada described an experiment with small soccer players in a scientific article.

Over 40 teams already participated in the first RoboCup tournament in 1997, and the competition is held every year. The RoboCup Federation wants to play and win a game against a real-world cup humans'' team by 2050.

The idea behind artificially intelligent players is to investigate how robots perceive motion and communicate with each other. Physical abilities like walking, running, and kicking the ball while maintaining balance are crucial to improving robots for other tasks like rescue, home, industry, and education.

Designing robots for sports requires much more than experts in state-of-the-art technology. Humans and machines do not share the same skills. Engineers need to impose limitations on soccer robots to imitate soccer players as much as possible and ensure following the game''s rules.

RoboCup Soccer Federation, the "FIFA" of robots, which supports five leagues, imposes restrictions on players'' design and rules of the game. Each has its own robot design and game rules to give room for different scientific goals. The number of players, their size, the ball type, and the field dimensions are different for each league.

In the humanoid league the players are human-like robots with human-like senses. However, they are rather slow. Many of the skills needed to fully recreate actual soccer player movements are still in the early stages of research.

The game becomes exciting for middle and small size leagues. The models are much simpler; they are just boxes with a cyclopean eye. Their design focuses on team behavior: recognizing an opponent, cooperating with team members, receiving and giving a standard FIFA size ball.

Today, soccer robots are entirely autonomous. They wireless "talk" to each other, make decisions regarding strategy in real-time, replace an "injured" player, and shoot goals. The only person in a RoboCup game is the referee. The team coaches are engineers in charge of training the RoboCups'' artificial intelligence for fair play: the robots don''t smash against each other or pull their shirts.

The next RoboCup competition will soon be played, virtually, with rules that will allow teams to participate without establishing physical contact.

Available at: <https://www.ua-magazine.com/2021/05/12/robots-the-next-generation-of-soccer-players>. Retrieved on: July 4th, 2021. Adapted.',
'',
'["in 1997","in the 1990s","before the 1990s","in the beginning of the 20th century","in the beginning of the 21st century"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Língua Inglesa',
'In the sentence fragment of the fifth paragraph "Designing robots for sports requires much more than experts in state-of-the-art technology", the words in bold (Designing / experts) can be replaced, without any change in meaning, by the following words:',
'Consulte o texto "Robots, the next generation of soccer players" apresentado na questão 11.',
'',
'["drawing / scholars","creating / amateurs","planning / specialists","finishing / professionals","manufacturing / engineers"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Língua Inglesa',
'In the text fragment of the sixth paragraph "RoboCup Soccer Federation, the "FIFA" of robots, which supports five leagues, imposes restrictions on players'' design and rules of the game", the word which refers to',
'Consulte o texto "Robots, the next generation of soccer players" apresentado na questão 11.',
'',
'["game","FIFA","players","leagues","RoboCup Soccer Federation"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Língua Inglesa',
'In paragraph 7, the word However in the fragment "In the humanoid league, the players are human-like robots with human-like senses. However, they are rather slow" can be replaced, without change in meaning, by',
'Consulte o texto "Robots, the next generation of soccer players" apresentado na questão 11.',
'',
'["unless","indeed","furthermore","nevertheless","consequently"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Língua Inglesa',
'In paragraph 9, there is the information that in RoboCup competitions the game referee and the team coaches are',
'Consulte o texto "Robots, the next generation of soccer players" apresentado na questão 11.',
'',
'["humanoids","computers","real people","robotic engineers","virtual mechanisms"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA (Questoes 16 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Matemática',
'Antes de iniciar uma campanha publicitária, um banco fez uma pesquisa, entrevistando 1000 de seus clientes, sobre a intenção de adesão aos seus dois novos produtos. Dos clientes entrevistados, 430 disseram que não tinham interesse em nenhum dos dois produtos, 270 mostraram-se interessados no primeiro produto, e 400 mostraram-se interessados no segundo produto. Qual a porcentagem do total de clientes entrevistados que se mostrou interessada em ambos os produtos?',
'',
'',
'["10%","15%","20%","25%","30%"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Matemática',
'A sequência de Fibonacci é bastante utilizada para exemplificar sequências definidas por recorrência, ou seja, sequências em que se pode determinar um termo a partir do conhecimento de termos anteriores. No caso da sequência de Fibonacci, escreve-se que T(n+2) = T(n+1) + T(n) e, desse modo, pode-se obter um termo qualquer conhecendo-se os dois termos anteriores. Considerando o exposto acima, determine o termo T(2021) da sequência de Fibonacci, sabendo que T(2018) = m e T(2020) = p.',
'',
'',
'["(p + m)/2","(p − m)/2","p + 2m","2p − m","2m − 2p"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Matemática',
'J modelou um problema de matemática por uma função exponencial do tipo a(x) = 1000·e^(kx), e L, trabalhando no mesmo problema, chegou à modelagem b(x) = 10^(2x+3). Considerando-se que ambos modelaram o problema corretamente, e que ln x = log(e) x, qual o valor de k?',
'',
'',
'["ln 2","ln 3","ln 10","ln 30","ln 100"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Matemática',
'O método da bisseção é um algoritmo usado para encontrar aproximações das raízes de uma equação. Começa-se com um intervalo [a,b], que contém uma raiz, e, em cada passo do algoritmo, reduz-se o intervalo pela metade, usando-se um teorema para determinar se a raiz está à esquerda ou à direita do ponto médio do intervalo anterior. Ou seja, após o passo 1, obtém-se um intervalo de comprimento (b−a)/2; após o passo 2, de comprimento (b−a)/4; e após o passo n, de comprimento (b−a)/2^n. Esse processo continua até que o intervalo obtido tenha comprimento menor que o erro máximo desejado para a aproximação. Para aplicar esse método no intervalo [1,5], quantos passos serão necessários para obter-se um intervalo de comprimento menor que 10^(−3)?',
'',
'',
'["9","10","11","12","13"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Matemática',
'Uma loja vende um produto em dois tipos de embalagem: unitária (com uma unidade do produto) e dupla (com duas unidades do produto). Em certo mês, foram vendidas 16 embalagens duplas e 20 unitárias, gerando uma receita para a loja de R$ 488,00. No mês seguinte, foram vendidas 30 embalagens duplas e 25 unitárias, gerando uma receita de R$ 790,00. Qual foi a porcentagem do desconto dado em cada unidade do produto ao se comprar a embalagem dupla?',
'',
'',
'["5%","8%","10%","12%","15%"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- ATUALIDADES DO MERCADO FINANCEIRO (Questoes 21 a 25)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Atualidades do Mercado Financeiro',
'Uma das funções desempenhadas pela moeda é a de reserva de valor, no entanto, a moeda não é o único ativo que desempenha tal função. O motivo que faz com que os cidadãos retenham moeda como reserva de valor é o fato de ela',
'',
'',
'["oferecer um rendimento a seu detentor.","possuir liquidez absoluta.","prestar algum serviço ao seu possuidor.","propiciar um aumento no seu valor.","ser protegida contra inflação."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Atualidades do Mercado Financeiro',
'O Registrato é um sistema criado em 2014 e administrado pelo Banco Central, que permite aos cidadãos terem acesso pela internet a relatórios contendo informações sobre',
'',
'',
'["seus relacionamentos com as instituições financeiras, suas operações de crédito e operações de câmbio.","suas receitas e despesas realizadas em todas as instituições financeiras onde têm conta-corrente.","seus dados registrados junto aos serviços de proteção de crédito.","seus relacionamentos interpessoais com pessoas da mesma família (ex: pai, filho e irmão, entre outros) que também possuem contas-correntes.","seus contratos de prestação de serviço firmados na esfera cível."]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Atualidades do Mercado Financeiro',
'Um token físico, no contexto de transações bancárias, é um dispositivo eletrônico que possui um botão de ativação e um pequeno visor. O token permite gerar senhas aleatórias, temporárias e numéricas (por exemplo, de seis dígitos). Essa senha é utilizada para dar mais segurança às transações bancárias realizadas via internet. No passado, os bancos comerciais disponibilizavam esses pequenos dispositivos aos seus clientes, de modo que pudessem ser afixados a um chaveiro. Mais recentemente, nos últimos 10 anos, esses dispositivos foram sendo gradativamente substituídos para a grande maioria dos clientes, por um',
'',
'',
'["dispositivo que continua com apenas essa funcionalidade, porém um pouco maior, mas que ainda assim cabe em um bolso de camisa.","aplicativo de cada banco, instalado e configurado no celular do correntista.","porta-moedas eletrônico, semelhante aos cartões que dão acesso a meios de transporte.","cartão de crédito que permite autorizar operações por aproximação.","sensor específico para captura de impressões digitais."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Atualidades do Mercado Financeiro',
'A partir do início de 2021, começou a primeira fase de implantação do open banking (sistema financeiro aberto) no Brasil. As instituições financeiras participantes devem obedecer a regras definidas pelo Banco Central e pelo Conselho Monetário Nacional. O open banking tem, entre outros, o objetivo de',
'',
'',
'["criar um mercado eletrônico exclusivo para operação das fintechs.","permitir que mais instituições participem como bancos comerciais do mercado brasileiro, abrindo esse mercado.","possibilitar o compartilhamento de informações, mediante autorização expressa de cada cliente, e a movimentação de suas respectivas contas bancárias, entre diferentes instituições financeiras.","controlar as operações de concessão de crédito de cada instituição financeira participante autorizada pelo Banco Central, dando mais transparência ao setor.","recomendar a utilização de um sistema de informações único, de código aberto, para gestão de contas-correntes e suas movimentações, de modo a ser adotado por todas as instituições financeiras em operação no Brasil."]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Atualidades do Mercado Financeiro',
'Uma investidora está querendo saber a relação entre a blockchain e o bitcoin. Em sua pesquisa, ela esclareceu sua dúvida, ao descobrir que',
'',
'',
'["blockchain é o meio utilizado para registrar e armazenar transações de bitcoin.","blockchain é a tecnologia de inteligência artificial aplicada na bitcoin.","bitcoin é uma moeda digital e blockchain é uma moeda em blocos.","bitcoin é tecnologia usada para implementar a blockchain.","bitcoin e blockchain são duas formas de implementar criptomoedas."]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA FINANCEIRA (Questoes 26 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Matemática Financeira',
'Um negociador de investimentos de uma instituição financeira pergunta ao gerente de tal instituição qual a taxa de juros anual máxima que pode oferecer a um cliente investidor, e o gerente afirma que ficará satisfeito com uma taxa anual máxima de 8,36%. O negociador entra em contato com o cliente que pretende investir um capital C1 e diz que, ao final de um ano, ele receberá C2, que corresponde a C1 acrescido de 5,00% de juros, mas não tem sucesso nessa negociação inicial. O negociador resolve aplicar uma nova taxa sobre C2, mas sem ultrapassar a taxa anual máxima que está autorizado a oferecer. Qual o valor máximo da taxa a ser aplicada sobre C2?',
'',
'',
'["2,16%","2,24%","3,20%","7,96%","16,72%"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Matemática Financeira',
'Um cliente montou uma estratégia financeira, aplicando parte de seu décimo terceiro salário, sempre no início de janeiro, de 2018 a 2021: R$ 10.000,00 em jan/2018, jan/2019, jan/2020 e jan/2021. A partir da orientação financeira de um especialista, ele conseguiu obter nesse período, com essas aplicações, uma taxa de retorno de 10% ao ano, sempre na comparação com o ano anterior. Ele pretende atingir o valor total acumulado de 65 mil reais no início de jan/2023. Considerando-se que essa taxa de retorno se mantenha, o valor mínimo, em reais, que esse cliente precisará depositar em Jan/2022, para atingir a meta em Jan/2023, a partir das aproximações dadas, pertence ao intervalo: (Dados: 1,1^5 = 1,611; 1,1^4 = 1,464; 1,1^3 = 1,331.)',
'',
'',
'["R$ 8.000,00 a R$ 8.199,00","R$ 8.200,00 a R$ 8.399,00","R$ 8.400,00 a R$ 8.599,00","R$ 8.600,00 a R$ 8.799,00","R$ 8.800,00 a R$ 8.999,00"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Matemática Financeira',
'Devido às oscilações de receita em seu negócio durante a pandemia, um cliente vai precisar pagar um boleto, cujo principal (até a data de vencimento) é de R$ 25.000,00, com 12 dias de atraso. Nesse caso, são cobrados adicionalmente, sobre o valor do principal, dois encargos: 2% de multa, mais juros simples de 0,2% ao dia. Por causa dos juros altos, o cliente procurou seu gerente, que não conseguiu uma solução menos custosa. Com isso, nas condições dadas, o cliente deverá pagar nessa operação um valor total de',
'',
'',
'["R$ 25.600,00","R$ 25.800,00","R$ 26.100,00","R$ 26.300,00","R$ 26.500,00"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Matemática Financeira',
'Um cliente fez um investimento de R$ 100.000,00 em janeiro de 2019, comprando cotas de um fundo imobiliário, o que lhe proporcionou uma taxa de retorno de 21%, ao final de 12 meses de aplicação. Em janeiro de 2020, buscando maior rentabilidade, procurou um especialista financeiro indicado pelo seu gerente, que lhe recomendou aplicar todo o montante da operação anterior em renda variável. O cliente fez conforme recomendado, o que lhe proporcionou um retorno de 96% em 12 meses, resgatando o novo montante em janeiro de 2021. Considerando-se um sistema de juros compostos, a taxa de retorno equivalente, obtida em cada período de 12 meses pelo cliente, de janeiro de 2019 a janeiro de 2021, foi igual a',
'',
'',
'["54%","56%","58%","60%","62%"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Matemática Financeira',
'Devido à pandemia, um microempreendedor precisou tomar um empréstimo no valor de R$ 20.000,00, em dez/2020, a ser pago em 24 prestações mensais iguais e postecipadas no sistema PRICE, de modo que a primeira fosse paga em jan/21, e a última, em dez/22. Considere que o Banco cobre R$ 660,00 de taxas, que serão financiadas juntamente com o valor do empréstimo, por escolha do cliente, e que a taxa de juros cobrada, devido ao risco da operação, seja de 3% ao mês. Desconsiderando-se o IOF na operação e supondo-se que a primeira prestação foi paga na data de vencimento, o valor da segunda prestação, em sua respectiva data de vencimento será de, aproximadamente, (Dados: 1,03^24 = 2,033.)',
'',
'',
'["R$ 1.120,00","R$ 1.220,00","R$ 1.320,00","R$ 1.420,00","R$ 1.520,00"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CONHECIMENTOS BANCARIOS (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Conhecimentos Bancários',
'No Brasil, o órgão responsável pela fiscalização do Sistema Financeiro Nacional é o',
'',
'',
'["Conselho Monetário Nacional","Ministério da Economia","Banco Central do Brasil","Banco do Brasil","Banco Nacional de Desenvolvimento Econômico e Social (BNDES)"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Conhecimentos Bancários',
'A crise econômica causada pela pandemia do novo coronavírus provocou a maior fuga de capitais da história do Brasil. Dados do Banco Central mostram que os investidores estrangeiros retiraram US$ 31,7 bilhões do mercado brasileiro de títulos e ações só em março, abril e maio de 2020, somando R$ 50,9 bilhões nos últimos 12 meses (o maior índice da série histórica do BC). Considerando-se os efeitos sanitários, econômicos e sociais decorrentes da pandemia da Covid-19 na economia global, o principal fator que justifica tamanha fuga de capitais do Brasil no ano passado é o(a)',
'',
'',
'["aumento desenfreado da dívida externa brasileira.","aumento das taxas de juros no mercado internacional.","necessidade de recursos, no estrangeiro, para financiar as pesquisas científicas de vacinas contra o coronavírus.","manipulação das taxas de câmbio nos mercados globais.","maior percepção de risco, por parte dos estrangeiros, em investir em ativos denominados em moeda brasileira."]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Conhecimentos Bancários',
'O principal impacto decorrente da enorme fuga de capitais do Brasil em 2020, descrita na reportagem mencionada anteriormente, foi o(a)',
'Considere o texto sobre a fuga de capitais do Brasil em 2020 apresentado na questão 32.',
'',
'["expressiva desvalorização do real brasileiro","queda das taxas de juros internas","aumento do preço das ações na Bovespa","valorização dos ativos brasileiros","aumento da dívida interna do Tesouro"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Conhecimentos Bancários',
'A Emenda Constitucional no 106, de 7 de maio de 2020, conhecida como o "Orçamento de Guerra", instituiu diversas medidas para enfrentamento da calamidade pública nacional decorrente da pandemia da Covid-19. Dentre elas, o Banco Central do Brasil ficou autorizado, temporariamente, a operar com instrumentos de política monetária considerados não convencionais. A medida de política monetária não convencional, por parte do Banco Central do Brasil, que poderia ter estimulado a redução das taxas de juros de longo prazo no ano passado é a',
'',
'',
'["redução da taxa de juros básica de curto prazo (Selic)","venda de títulos públicos e privados no mercado secundário","compra de títulos públicos e privados no mercado secundário","redução do percentual dos depósitos compulsórios","venda de títulos mediante operações compromissadas"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Conhecimentos Bancários',
'Dentre as escolhas mais populares de investimentos, a caderneta de poupança é uma das opções mais utilizadas pelos brasileiros, sendo considerada um investimento de renda fixa. São também investimentos de renda fixa',
'',
'',
'["as Ações","as Opções","as Commodities","os CDB","os ETF de Ações"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Conhecimentos Bancários',
'O Banco do Brasil (BB) oferece diversas linhas de crédito destinadas a custear os dispêndios realizados pelos produtores rurais. A modalidade de crédito rural, oferecida pelo BB, destinada ao beneficiamento, custeio e industrialização da produção é denominada',
'',
'',
'["Funcafé Custeio","Custeio Agropecuário","Pronamp Custeio","Pronaf Agroindústria","Crédito Rural Pronaf Custeio"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Conhecimentos Bancários',
'Um anúncio do Banco do Brasil oferecia financiamento de veículos (novos ou usados), possibilitando toda a contratação pelo App BB. A nota em asterisco (*) destacava que, além da análise cadastral, a aprovação do crédito estava sujeita às "demais condições do produto". Uma dessas condições diz respeito à garantia do financiamento que, no caso, será o próprio veículo a ser comprado pelo devedor. Trata-se de uma forma de garantia denominada',
'',
'',
'["alienação fiduciária","aval","penhor mercantil","fiança","hipoteca"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Conhecimentos Bancários',
'A revista inglesa The Economist publica periodicamente o famoso Índice do Big Mac, que consiste em avaliar os preços, em dólares, do conhecido sanduíche em diferentes países. Considerando-se que, na edição de 12 de janeiro de 2021, os cálculos da The Economist mostravam que o preço, em dólares, do Big Mac no Brasil estava cerca de 30% mais barato do que o sanduíche similar vendido e cotado, também em dólares, nos Estados Unidos, o resultado indicava que o real brasileiro estava',
'',
'',
'["valorizado em relação ao dólar","sobrevalorizado em relação ao dólar","subvalorizado em relação ao dólar","com alinhamento nominal em relação ao dólar","na paridade real do poder de compra em relação ao dólar"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Conhecimentos Bancários',
'H é correntista da instituição financeira XYZ e mantém com esta instituição relação estável, com movimentação de recursos monetários correspondente a cem salários mínimos por ano. A partir de 2019, sua movimentação anual passou a ser de mil e duzentos salários mínimos, com aportes mensais de cem salários mínimos. A partir das regras apresentadas na Carta-Circular no 4001/2020 do Banco Central do Brasil, nesse caso, as operações devem ser monitoradas como situações relacionadas com operações em espécie, em moeda nacional, com a utilização de contas de',
'',
'',
'["aplicações","depósitos","fundos","garantia","preferência"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Conhecimentos Bancários',
'B é gerente de determinada instituição financeira e recebe, como tarefa laboral, a responsabilidade de convencer os clientes a investirem na aquisição de ações de sociedade empresária que busca abrir seu capital em bolsa de valores. Após vários contatos, B consegue bater a sua meta pessoal, tendo conquistado um número significativo de novos clientes, bem como auxiliar seus colegas de setor para que alcancem o mesmo objetivo. A esse respeito, e de acordo com o Código de Ética do Banco do Brasil, o oferecimento de serviços e produtos deve ocorrer com',
'',
'',
'["individualidade","comedimento","parcialidade","limitação","diligência"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CONHECIMENTOS DE INFORMATICA (Questoes 41 a 55)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Conhecimentos de Informática',
'Existem soluções de hardware e software que buscam minimizar as chances de um ataque a sistemas computacionais ser bem-sucedido. Dentre tais soluções de segurança, há uma que monitora o tráfego de entrada e saída de rede, funcionando como um filtro de pacotes, permitindo ou não a sua liberação a partir de um conjunto de regras específicas. Essa solução é o',
'',
'',
'["Antimalware","Dispositivo USB","Firewall","Phishing","SQL injection"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Conhecimentos de Informática',
'O armazenamento de dados ou informações em sistemas computacionais é possível com a utilização de arquivos, que servem como importante suporte tecnológico para o atendimento das diversas demandas dos usuários. Do ponto de vista técnico, esses arquivos podem ser considerados',
'',
'',
'["abstrações feitas pelo sistema operacional das características lógicas das informações armazenadas.","coleções nomeadas de informações relacionadas que são gravadas em memória secundária do computador.","organizações físicas de pastas em um dispositivo de armazenamento volátil.","imagens construídas utilizando os formatos jpeg, png ou bmp para identificá-los.","sequências de caracteres organizados em linhas e possivelmente em páginas, quando forem arquivos de vídeo."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Conhecimentos de Informática',
'A gravação de vídeos digitais gera, em boa parte das vezes, arquivos com tamanho aumentado, o que é um desafio para a sua transmissão ou armazenamento em disco. Para contornar esse problema, existem formas de compactação e descompactação de vídeos chamadas codecs. Um codec é baseado em um algoritmo que explora algum tipo de redundância no conteúdo do arquivo como forma de reduzir seu tamanho com a menor perda possível. Um dos tipos de codec de vídeo é o',
'',
'',
'["BMP","JPEG","MP3","MPEG","UNICODE"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Conhecimentos de Informática',
'Devido à pandemia, muitos funcionários de um determinado banco precisaram trabalhar de casa. O setor de TI determinou o uso de um mecanismo seguro que conectasse, via internet pública, o computador do funcionário, em sua casa, com a rede privada da instituição financeira, bloqueando o acesso de terceiros ao trânsito de informações. Para garantir a segurança dessa conexão, essa instituição deve adotar a tecnologia de rede conhecida como',
'',
'',
'["HTTP","PGP","VPN","WEK","WPA2"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Conhecimentos de Informática',
'As informações sobre um processo essencial de determinado banco nunca foram documentadas, porém são conhecidas implicitamente por seus muitos funcionários. Responsável por recuperar e documentar esse conhecimento, um funcionário protagonizou uma iniciativa para que os próprios funcionários criassem a documentação, instalando e gerenciando um site baseado na tecnologia Wiki na intranet desse banco. Qual a principal característica dos Wikis?',
'',
'',
'["Gerar documentação em PDF automaticamente, facilitando a criação de documentos distribuíveis.","Manter um fórum de discussões estruturado em forma de árvore e orientado a assuntos.","Transformar, rapidamente, documentos Word em páginas Web.","Permitir que o leitor de uma página Web edite seu conteúdo.","Gerenciar listas de discussão feitas por e-mail e guardar seu conteúdo."]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Conhecimentos de Informática',
'Um funcionário de um banco foi incumbido de acompanhar o perfil dos clientes de um determinado produto por meio da Análise de Dados, de forma a aprimorar as atividades de marketing relativas a esse produto. Para isso, ele utilizou a variável classe social desses clientes, coletada pelo banco, que tem os valores A, B, C, D e E, sem referência a valores contínuos. Sabendo-se que essa é uma escala ordinal, qual é a medida de tendência central adequada para analisar essa variável?',
'',
'',
'["média aritmética","média geométrica","mediana","quartis","variância"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Conhecimentos de Informática',
'O serviço de buscas do Google é um dos mais usados em todo o mundo. Para as pesquisas, o mais comum é a pessoa informar livremente algumas palavras e verificar se o resultado atende às suas expectativas. Como solicitar corretamente ao Google que seja pesquisada uma correspondência exata da frase "Prédio mais alto do Brasil"?',
'',
'',
'["/Prédio mais alto do Brasil/","-Prédio -mais -alto -do -Brasil","#Prédio #mais #alto #do #Brasil","\"Prédio mais alto do Brasil\"","exato (\"Prédio mais alto do Brasil\")"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Conhecimentos de Informática',
'O envio e o recebimento de mensagens de correio eletrônico são atividades corriqueiras. No entanto, há situações em que as mensagens enviadas são devolvidas com um aviso de que não puderam ser entregues ao destinatário. Um dos motivos que justificam a não entrega de uma mensagem de correio eletrônico ao destinatário é porque',
'',
'',
'["a estação de trabalho que o destinatário utiliza está desligada.","a caixa postal de correio eletrônico do destinatário atingiu algum limite predeterminado de tamanho, como por exemplo, em bytes.","o destinatário possui muitos endereços de correio eletrônico cadastrados no domínio internet.","o destinatário não estava utilizando a sua estação de trabalho no momento do recebimento da mensagem de correio eletrônico.","o destinatário estava utilizando muitos programas ativos na estação de trabalho no momento do recebimento da mensagem de correio eletrônico."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Conhecimentos de Informática',
'A Segurança da Informação é uma preocupação permanente dos agentes comerciais, principalmente em relação a assuntos contratuais e financeiros e às facilidades advindas dos meios digitais. Os recursos providos pelas áreas de TI das empresas, no que se refere à segurança da informação, incluem a irretratabilidade, que deve garantir a',
'',
'',
'["manutenção exata e completa do conteúdo das mensagens desde a origem até o destino.","impossibilidade de negar a autoria de uma mensagem.","possibilidade do acesso a qualquer mensagem quando necessário.","impossibilidade de os conteúdos das mensagens serem lidos e compreendidos por pessoas não autorizadas.","impossibilidade de o destinatário negar o recebimento de uma mensagem."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Conhecimentos de Informática',
'O agente comercial de uma empresa elaborou uma planilha no software Microsoft Excel para lançar os débitos de seus clientes. Ele a configurou para controlar automaticamente as seguintes regras: a) admitir, apenas, débitos entre R$ 40.000,00 e R$ 110.000,00; e b) destacar, em cor diferente, os débitos entre R$ 90.000,00 e R$ 110.000,00. Quais são os recursos do Microsoft Excel que o agente comercial deverá utilizar, respectivamente, para obter esse controle?',
'',
'',
'["Validação de dados; Formatação condicional","Formatação condicional; Gerenciador de cenários","Verificação de erros; Teste de hipóteses","Função de consolidação; Formatação condicional","Classificar e Filtrar; Validação de dados"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 51, 'Conhecimentos de Informática',
'Um funcionário de um determinado banco, ao ser designado para trabalhar no data center da instituição, identificou problemas de segurança. Por essa razão, formulou duas propostas de melhoria: instalar um controle de acesso biométrico nas portas do data center, que estavam sempre abertas, e exigir que as senhas do servidor principal, que nunca expiravam, fossem trocadas a cada 30 dias. Pelo tipo de controle que implementam, as melhorias propostas pelo funcionário são classificadas, respectivamente, como',
'',
'',
'["física e processual","física e tecnológica","processual e física","processual e tecnológica","tecnológica e processual"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 52, 'Conhecimentos de Informática',
'Muitos códigos maliciosos aproveitam-se de um recurso do Windows 10 que possibilita a execução de um programa presente em um dispositivo de armazenamento USB imediatamente após a sua conexão ao computador. Esse recurso, que pode ser desativado, é conhecido como',
'',
'',
'["inicialização automática","execução automática","reprodução automática","atualização automática","configuração automática"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 53, 'Conhecimentos de Informática',
'O Mozilla Firefox apresentou uma página de resultado de uma pesquisa na Web na qual o usuário deseja procurar uma palavra específica. Para fazer isso, o usuário pode acessar a caixa de texto de procura na página, pressionando, em conjunto, as teclas',
'',
'',
'["Ctrl e T","Ctrl e N","Ctrl e P","Ctrl e S","Ctrl e F"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 54, 'Conhecimentos de Informática',
'No código de práticas de segurança da informação, recomenda-se que o acesso ao ambiente operacional (área de trabalho) do computador seja bloqueado quando o usuário do sistema se ausentar do seu posto de trabalho. O atalho do teclado no Windows 10 para fazer esse bloqueio requer o pressionamento combinado das teclas',
'',
'',
'["Ctrl e C","Ctrl e Z","Alt e F4","logotipo do Windows e D","logotipo de Windows e L"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 55, 'Conhecimentos de Informática',
'A segurança da informação deve fazer parte da postura dos colaboradores da empresa no dia a dia de trabalho. Com o objetivo de garantir a autoria dos seus documentos digitais, o colaborador deve executar o processo de assinatura digital para cada documento criado. A assinatura digital é criada pelo signatário do documento com o uso da sua chave',
'',
'',
'["pública","privada","simétrica","compartilhada","certificada"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- VENDAS E NEGOCIACAO (Questoes 56 a 70)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 56, 'Vendas e Negociação',
'Atualmente, os sistemas de informação fornecem dados pormenorizados a respeito dos clientes em potencial, o que permite o planejamento de ações customizadas de vendas, tais como',
'',
'',
'["apuração dos valores de divulgação em canais de rádio e tevê.","aumento do custo de aquisição pelos produtos adquiridos.","divulgação de ferramentas digitais como QR code e hot sites.","propostas de descontos em série para o público em geral.","postagens nas mídias sociais segundo os temas de interesse dos usuários"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 57, 'Vendas e Negociação',
'Poucos clientes conhecem suficientemente o mercado financeiro, de modo a avaliar se o seu analista de investimentos conseguiu os melhores retornos para os seus fundos investidos. Sendo assim, verifica-se que este serviço é rico em atributos de',
'',
'',
'["procura e resiliência","tangibilidade e variabilidade","confiança e experiência","risco sensorial e psicológico","risco social e temporal"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 58, 'Vendas e Negociação',
'Das cinco dimensões da qualidade do serviço - confiabilidade, tangibilidade, sensibilidade, segurança e empatia -, a confiabilidade tem constantemente se mostrado como o fator mais importante na avaliação da qualidade do serviço pelos clientes de um banco. Isso ocorre porque a confiabilidade é uma medida de',
'',
'',
'["favorecimento da discrepância entre o desempenho de um fornecedor e as expectativas do cliente, já que evidencia a situação do momento.","resultado, já que os clientes a avaliam depois da experiência de serviço, diferentemente das outras dimensões, que são medidas de processo.","controle, que traça as mudanças quantitativas no desempenho do serviço em uma variável específica relativa a um padrão predefinido.","causa-efeito, que relaciona problemas específicos do serviço a diferentes categorias de causas subjacentes.","excedente do consumidor, que identifica a diferença entre o preço real pago e a percepção do cliente sobre o valor do produto."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 59, 'Vendas e Negociação',
'Em 26 de março de 2021, o Banco do Brasil informou a seus clientes que suas agências passariam a operar das 10h às 14h, seguindo determinação da Febraban, para proteger funcionários, clientes e a sociedade, diante do avanço da pandemia. O Banco informou também que, em algumas praças, o atendimento começaria mais cedo, às 9h, exclusivamente para idosos, gestantes, pessoas com deficiência e para pagamento de benefícios do INSS. Essa decisão de atender mais cedo alguns clientes está embasada na noção de',
'',
'',
'["cenário de serviço","recuperação do serviço","promoção de vendas","segmentação de mercado","mapa de percepções"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 60, 'Vendas e Negociação',
'Sr. X precisava planejar a comercialização de um serviço para um cliente exigente, que demanda a personalização e o serviço de alto contato. Para isso, ele planejou em sua estratégia comercial',
'',
'',
'["reduzir a variação nas operações e na entrega do serviço.","garantir a intangibilidade do processo do serviço.","encorajar o cliente a realizar operações por internet ou caixa automático.","introduzir sofisticada rede de canais de distribuição eletrônicos.","interagir pessoalmente com o cliente ao longo da prestação do serviço."]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 61, 'Vendas e Negociação',
'K é correntista do Banco S e possui cartões de crédito e de débito expedidos pela instituição financeira. Diante de dificuldades momentâneas, não conseguiu cobrir o total das despesas realizadas com o seu cartão de crédito. No dia do vencimento, o banco, mediante autorização contratual, retirou da conta corrente de K o valor mínimo para efeito de pagamento parcial da dívida. Houve contestação, que foi indeferida pelo órgão interno do banco. Segundo as regras do Código de Defesa do Consumidor, Lei no 8.078/1990, essa norma contratual deve ser considerada',
'',
'',
'["abusiva, por retirar o poder de controle das finanças do correntista.","regular, pois não se fundamenta em poder superior do banco.","questionável, pois quebra a isonomia entre os contratantes.","passível de impugnação administrativa.","ampla demais, por não conter previsão de valor a ser debitado."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 62, 'Vendas e Negociação',
'Um dos princípios básicos de um bom atendimento é que ele seja considerado parte integrante de um processo mais amplo e que gere a satisfação do cliente. Preocupada com os baixos índices de satisfação manifestados por seus clientes, a diretoria de um banco contratou uma consultoria para avaliar a qualidade dos serviços prestados nas agências. O relatório apresentado pelos consultores apontou problemas relacionados às instalações e aos equipamentos das agências. Considerando as cinco dimensões da qualidade de serviços, esses problemas apontados estão relacionados à dimensão',
'',
'',
'["Empatia","Segurança","Tangibilidade","Confiabilidade","Responsividade"]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 63, 'Vendas e Negociação',
'O Instagram é uma rede social baseada em imagens, e o Twitter limita a escrita a 280 caracteres. Talvez por isso, o marketing digital seja comumente associado ao uso de imagens e vídeos. No entanto, o uso de texto é muito importante e decisivo na atração de consumidores em plataformas como websites, blogs e e-mail. O uso de conteúdo textual informativo e atraente, otimizado para persuadir consumidores a comprarem os produtos de uma empresa é denominado',
'',
'',
'["recall","ebooking","copyright","copywriting","cooperating"]'::jsonb,
'D'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 64, 'Vendas e Negociação',
'Um motorista estava preocupado com os pneus de seu carro. Ele decidiu realizar uma busca na internet usando o termo "pneus velhos". Como resultado, o buscador trouxe várias opções de sites e vídeos. Ele escolheu o vídeo "Qual a hora de trocar os pneus de seu carro?", que mostrava um técnico das lojas XYZ falando sobre características de pneus, medidas de conservação e a hora de trocá-los. O motorista utilizou as informações do vídeo e percebeu que deveria trocar os pneus dianteiros. Inevitavelmente, ele pensou em procurar uma loja XYZ. Nesse caso, a ação da XYZ é um exemplo de',
'',
'',
'["Inbound Marketing","Outbound Marketing","Promoção de Vendas","Programa de Fidelidade","Marketing de Criatividade"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 65, 'Vendas e Negociação',
'A empresa YYZ contratou consultores para levantar os impactos gerados por suas atividades. Os consultores constataram: a política de capacitação ampliou a formação de 45% dos funcionários; a instalação de painéis fotovoltaicos fez com que toda a energia consumida naquele ano fosse gerada a partir de fonte renovável; a taxa de reciclagem de resíduos cresceu 50%; e a empresa obteve lucro acima da média histórica e distribuiu bônus a funcionários e fornecedores alinhados à preservação ambiental. Com base nesses dados, o diagnóstico foi de que a empresa exerce impacto líquido positivo sobre o Tripé da Sustentabilidade. Dessa forma, a YYZ é classificada como um negócio',
'',
'',
'["neutro","reparador","sustentável","fundamental","insustentável"]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 66, 'Vendas e Negociação',
'O cliente da empresa W, procurando um produto no site dessa empresa, ficou em dúvida sobre as especificações técnicas, entrou no chat online e teve suas dúvidas sanadas. Não efetuou a compra, mas uma semana depois baixou o aplicativo W e, mesmo sem voltar ao site, passou a receber informações sobre as mudanças de preço do produto. No final do mês decidiu acionar o aplicativo e realizar a compra, optando pela retirada do produto na loja física próxima de sua casa. Dias depois recebeu mensagem no smartphone indicando que já poderia retirar a encomenda. Na semana seguinte, recebeu mensagem com pedido de avaliação e deu nota 9 ao atendimento. Nesse caso, identifica-se que a empresa W utiliza um modelo de negócios denominado',
'',
'',
'["Rede","Multinível","Multicanal","Horizontal","Omnichannel"]'::jsonb,
'E'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 67, 'Vendas e Negociação',
'LL é aposentada pelo regime geral de previdência, recebendo o valor através de repasse do INSS. Três meses após a primeira parcela, recebe por telefone várias ofertas de empréstimos mediante consignação em folha e não aceita nenhum. Dois meses depois, o comprovante de pagamento constava desconto por empréstimo consignado. Dirige-se ao INSS, que informa qual banco requereu a inscrição. A aposentada apresenta requerimento ao banco para obter os documentos do empréstimo, sem qualquer resposta. Nos termos da Resolução CMN no 3.694/2009, as instituições financeiras, na contratação de operações e na prestação de serviços, devem assegurar',
'',
'',
'["fornecimento de contratos e documentos pertinentes aos atos praticados","composição dos danos causados, desde que por ordem judicial","declarações de idoneidade moral e financeira","divulgação de cadastros positivos ou negativos requeridos por fornecedores","recebimento de documentos de forma física, mesmo em dependência exclusivamente eletrônica"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 68, 'Vendas e Negociação',
'KO é gerente Júnior de um banco e atua no contato direto com clientes que têm pouca experiência em investimentos financeiros. Buscando promoção, realiza vários cursos de atualização, inclusive de educação financeira, e passa a oferecer indicações de investimento aos correntistas sob sua responsabilidade. Alguns clientes não possuem renda para propiciar saldos destinados a investimentos no momento em que são contatados. O supervisor de KO identifica a situação e o adverte da perda de tempo com clientes que não gerariam lucros imediatos ao banco. Nos termos da Resolução no 4.539, de 24 de novembro de 2016, verifica-se que a instituição financeira',
'',
'',
'["deve privilegiar os clientes que gerem recursos imediatos.","deve apresentar a todos os clientes os produtos financeiros disponíveis.","deve preocupar-se com a formação de clientela futura.","pode criar segmentos especiais para atendimento privilegiado e secreto.","pode discriminar seus clientes livremente, analisando sua renda como dado essencial para produzir lucro."]'::jsonb,
'B'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 69, 'Vendas e Negociação',
'A partir da análise do banco de dados da agência, o atendente bancário pode realizar vendas sugestivas, identificando as informações sobre o cliente para',
'',
'',
'["diminuir os juros cobrados dos correntistas.","informar sobre a carga tributária dos investimentos.","propor o acesso a novos produtos do banco.","retirar os dados do mailing da companhia.","sugerir mudanças no horário das visitas à agência."]'::jsonb,
'C'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 70, 'Vendas e Negociação',
'O profissionalismo em vendas e atendimento implica uma série de procedimentos por parte do bancário, entre os quais a',
'',
'',
'["aprendizagem e a qualificação constantes","cobrança por privilégios no trabalho","exigência de maior remuneração","potencialidade do seu ego","prioridade a seus interesses pessoais"]'::jsonb,
'A'
from public.exams where slug = 'bb-2021-a-comercial'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
