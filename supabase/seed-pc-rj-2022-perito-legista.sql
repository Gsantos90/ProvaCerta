-- Seed: Policia Civil do Estado do Rio de Janeiro 2022 - Perito Legista de 3a Classe
-- Banca FGV Conhecimento - Prova Escrita Objetiva - Nivel Superior - Tipo 1 (Branca) - Tarde
-- 100 questoes objetivas (A-E).
-- Gabarito:
--   1-A,2-C,3-B,4-A,5-B,6-C,7-B,8-B,9-B,10-C,11-A,12-B,13-E,14-C,15-A,16-C,17-C,18-B,19-D,20-A,
--   21-E,22-D,23-A,24-E,25-C,26-E,27-A,28-B,29-E,30-C,31-A,32-B,33-C,34-D,35-E,36-D,37-E,38-D,39-E,40-B,
--   41-D,42-ANULADA,43-B,44-B,45-D,46-C,47-C,48-A,49-D,50-C,51-E,52-C,53-B,54-C,55-D,56-B,57-C,58-B,59-E,60-B,
--   61-D,62-A,63-B,64-E,65-B,66-E,67-ANULADA,68-D,69-D,70-A,71-D,72-C,73-E,74-B,75-E,76-A,77-E,78-A,79-C,80-E,
--   81-D,82-A,83-E,84-A,85-D,86-A,87-C,88-B,89-E,90-E,91-C,92-A,93-B,94-E,95-D,96-C,97-A,98-D,99-E,100-C
-- Observacao: as questoes 42 e 67 foram ANULADAS pela banca; mantidas com placeholder para nao quebrar o app.

insert into public.exams (slug, title, source, year)
values ('pc-rj-2022-perito-legista', 'Polícia Civil RJ 2022 - Perito Legista de 3ª Classe', 'pc', '2022')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Para defender sua tese, apresentada no primeiro período do texto, o autor apelou para:',
'Todo texto argumentativo inclui normalmente elementos de defesa da tese apresentada; leia, por exemplo, o texto a seguir.
“Observo que a má conduta moral não consiste na ação física exterior, mas na visão interior da vontade, fora das leis da razão e da religião. Isso é claro, já que matar um inimigo na batalha e dar a pena de morte a um criminoso não são considerados pecados; no entanto, o ato exterior é exatamente o mesmo que no caso de um assassinato.” (Berkeley)',
'',
'["a citação de exemplos;","as suas opiniões pessoais;","o testemunho de autoridades;","a força das leis;","as decisões dos tribunais."]'::jsonb,
'A',
'A tese é defendida com exemplos concretos (matar inimigo na batalha, pena de morte ao criminoso) para mostrar que o ato exterior é o mesmo de um assassinato, mas a moralidade depende da intenção. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'Nesse caso, a defesa se fundamenta:',
'Observemos, agora, o caso de um advogado no tribunal, que declara que a acusação contra o seu cliente era sem fundamentos, já que não tinham sido apresentadas testemunhas nem outros meios de convencimento aos julgadores.',
'',
'["na falta de casos semelhantes;","na boa conduta do réu;","na ausência de provas;","nas falhas da acusação;","nos problemas da investigação policial."]'::jsonb,
'C',
'O advogado sustenta a defesa justamente no fato de não terem sido apresentadas testemunhas nem outros meios de convencimento, ou seja, na ausência de provas. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'Um aspecto problemático no apelo para um testemunho de autoridade, como esse, é:',
'Imagine que um candidato a uma vaga num concurso público, encarregado de redigir um texto em que expresse suas opiniões sobre o problema dos incêndios no Pantanal, apela para um testemunho de autoridade, citando uma observação de um treinador de um time de futebol mato-grossense, retirada de um jornal local.',
'',
'["que a comprovação da citação é difícil;","que a autoridade do citado pode ser questionada;","que o trecho deixa de ser a expressão de uma opinião própria;","a ausência completa de relações entre o fato e a autoridade;","o distanciamento temporal entre o fato e a citação."]'::jsonb,
'B',
'Ao citar um treinador de futebol para falar de incêndios no Pantanal, o problema central é que a autoridade invocada não tem competência sobre o tema, podendo ser questionada. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'O tipo de texto a que pertence esse segmento é:',
'Um livro didático mostra o seguinte texto: “O sangue é um tecido formado por dois componentes: o plasma e as células sanguíneas. O volume total do sangue é de, aproximadamente, 5 dm³ nos homens e 4,5 dm³ nas mulheres. Existem três tipos de células sanguíneas: glóbulos vermelhos, glóbulos brancos e plaquetas.”',
'',
'["descrição técnica;","narrativa didática;","exposição histórica;","notícia jornalística;","argumentação científica."]'::jsonb,
'A',
'O trecho descreve objetivamente a composição do sangue, com dados e termos técnicos, sem narrar fatos nem argumentar: trata-se de descrição técnica. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'Em todas as frases abaixo há a presença do verbo ficar; o caso em que ocorre neologismo semântico no emprego desse verbo por atribuir-se a ele um sentido novo é:',
'',
'',
'["José ficou em casa porque estava adoentado;","Aquele rapaz ficou com várias meninas na festa;","O candidato ficou nervoso na prova;","O carro ficou arranhado com o choque;","Ficou satisfeito com o novo game."]'::jsonb,
'B',
'Em ''ficar com várias meninas'', o verbo ganha sentido novo (relacionar-se afetivamente), caracterizando neologismo semântico. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'A frase abaixo em que o neologismo destacado cumpre todos esses requisitos é:',
'Num artigo sobre neologismos em nossa língua, o eminente gramático Evanildo Bechara nos mostra aspectos pelos quais eles devem ser encarados: 1º) se o termo foi criado segundo os princípios que regem a formação de palavras em nossa língua; 2º) se o termo traduz com eficiência a ideia que quis transmitir; 3º) se o idioma já não possui palavra eficiente na transmissão dessa ideia.',
'',
'["Augusto faz estudos de marketing;","As vítimas tinham sido apagadas na noite anterior;","O marqueteiro do senador foi eficiente;","No restaurante, o chefe era de origem francesa;","O serviço de delivery ganhou força na pandemia."]'::jsonb,
'C',
'''Marqueteiro'' atende aos três requisitos de Bechara: é formado conforme as regras da língua, traduz bem a ideia e preenche uma lacuna que não tinha termo próprio equivalente. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'Sobre esse pequeno texto, é correto afirmar que:',
'Observe o seguinte texto, de responsabilidade de uma secretaria estadual de trânsito:
“NÃO JOGUE FORA SUA VIDA NUMA ULTRAPASSAGEM. Não deixe que a pressa converta sua viagem num jogo perigoso ou estará arriscando sua vida em cada ultrapassagem. Se você não tem toda a situação a seu favor, não ultrapasse. A vida não é um jogo e seu encontro com as férias sempre pode esperar um pouco mais. A vida é a viagem mais formosa.”',
'',
'["trata-se de um texto publicitário, destinado a vender a ideia de segurança no trânsito;","o texto focaliza exclusivamente o problema da pressa nas ultrapassagens, com recomendação de prudência;","a função básica da linguagem nesse texto é a de despertar emoções no leitor, de modo a convencê-lo a ser prudente;","por sua seleção de linguagem, o texto se dirige prioritariamente a motoristas das classes populares;","o valor positivo da realidade, predominante nesse tipo de texto, não é obedecido aqui, já que há inúmeras negações."]'::jsonb,
'B',
'O texto trata especificamente do perigo da pressa nas ultrapassagens, recomendando prudência; não é peça publicitária de venda nem se dirige a uma classe específica. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'Abaixo aparecem cinco frases com marcadores textuais destacados; assinale a frase em que se indica corretamente o valor textual de um desses marcadores:',
'',
'',
'["Nesta pequena cidade Cláudio quase não sai, então conhece muito pouca gente / tempo;","Márcio é trabalhador, leal, sincero... em poucas palavras, é um bom sujeito / resumo;","João dava aula para turmas diferentes. Na verdade, só coordenava os estudos na sala / ratificação;","Todo ensaio filosófico atende, pois, a dois aspectos: o que as coisas são e o que se pensou sobre elas / consequência;","Fulano escreveu uma carta anônima? Bom caráter que ele deve ser / determinação."]'::jsonb,
'B',
'Em ''em poucas palavras'', o marcador introduz um resumo do que foi dito antes (trabalhador, leal, sincero → bom sujeito). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'A frase que exemplifica o método indutivo é:',
'Os raciocínios dos textos argumentativos ora se apoiam no método indutivo – do particular para o geral – ora no método dedutivo – do geral para o particular.',
'',
'["Os jogos do Campeonato Brasileiro já deveriam ser abertos ao público, pois, assim, haveria mais emoção e incentivo; o Atlético Mineiro, por exemplo, obteria ainda melhor resultado ontem, se a torcida estivesse na arquibancada;","O hospital Getúlio Vargas atendeu ontem um número excessivo de emergências e enfrentou as dificuldades oriundas da falta de pessoal, mas, na verdade, os hospitais públicos, em todas as grandes cidades, estão passando por isso;","As livrarias estão fechando as portas em muitos lugares, em função da substituição dos livros pela mídia digital; a livraria de um shopping no centro da cidade resiste ainda porque, espertamente, abriu um café dentro da loja;","O circo deixou de existir, pelo menos nos grandes centros, já que não encontra mais espaço nem nos terrenos nem no coração das pessoas; um pequeno circo ainda está presente no subúrbio de Realengo, onde as crianças se divertem com o palhaço Cascão;","Nem todos os divertimentos eletrônicos custam caro, já que há pequenos produtores que investem em games mais simples e mais baratos, como no caso do Pequena Batalha."]'::jsonb,
'B',
'O método indutivo parte do particular para o geral: o caso do hospital Getúlio Vargas (particular) leva à conclusão sobre todos os hospitais públicos (geral). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'Na estruturação de um texto, é muito importante a presença de elementos de coesão; o segmento desse texto que é independente de elementos coesivos anafóricos, ou seja, ligados a elementos anteriores, é:',
'Observe o seguinte texto, adaptado de uma pequena notícia de uma revista, em que um cantor famoso declara:
“Não é que eu esteja cansado de viajar, mas o que eu não posso fazer é sair de um estúdio de gravação e começar imediatamente uma série de shows. Isso é impossível. Você fica, nessas horas, com a cabeça confusa. No entanto, voltei às excursões: no dia 2 de outubro terminei a gravação do meu último disco e no dia 3 já estava cantando em São Paulo. Nem física nem psicologicamente se pode suportar esse ritmo. Mas esta vai ser a última excursão, sabe? O que acontece é que para um cantor é muito importante excursionar com um disco novo.”',
'',
'["Isso é impossível;","Você fica, nessas horas, com a cabeça confusa;","Não é que eu esteja cansado de viajar;","Nem física nem psicologicamente se pode suportar esse ritmo;","Mas esta vai ser a última excursão, sabe?"]'::jsonb,
'C',
'''Não é que eu esteja cansado de viajar'' abre o texto sem retomar nenhum elemento anterior, sendo independente de coesão anafórica. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'A frase abaixo que poderia exemplificar esse sentimento é:',
'O termo misantropia é definido no dicionário de Aurélio Buarque de Holanda, p. 1338, como “aversão à sociedade, aos homens”.',
'',
'["“O inferno são os outros.” (Sartre)","“Morte a todos os fanáticos!” (anônimo)","“Deus deve amar os medíocres. Fez muitos deles.” (Abraham Lincoln)","“A única maneira de ter amigos é ser amigo.” (Emerson)","“Do nada, nada vem e ao nada, nada pode reverter.” (Pérsio)"]'::jsonb,
'A',
'''O inferno são os outros'' (Sartre) exprime aversão à convivência com os demais, ilustrando a misantropia. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'A frase abaixo que mostra modificação no sentido, em caso de troca da posição dos termos, é:',
'O valor básico da conjunção E é o de adição e, por isso, os termos unidos por ela, nesse caso, podem ser trocados de posição na frase, sem que se altere o sentido.',
'',
'["Comprei cravos vermelhos e rosas amarelas;","Vesti a camisa e pus a gravata;","Comprei canetas esferográficas e folhas pautadas;","Comprei móveis novos e aluguei um carro;","Pus os óculos e levantei da cadeira."]'::jsonb,
'B',
'Em ''Vesti a camisa e pus a gravata'' há ordem cronológica dos fatos; invertê-los altera o sentido da sequência, ao contrário de simples adições. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Portuguesa',
'A frase abaixo em que o vocábulo destacado tem significado dependente do contexto é:',
'Muitos vocábulos empregados em frases têm seu sentido histórico documentado em dicionários; outros, porém, só possuem significados quando situados em um contexto.',
'',
'["Maria leva uma vida difícil;","Em anexo, enviamos um cheque;","O computador ficou ligado a noite inteira;","O empregado faz tudo rapidamente;","Só vou sair amanhã à noite."]'::jsonb,
'E',
'''Amanhã'' só tem referência definida a partir do contexto de enunciação (depende do dia em que se fala). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Portuguesa',
'A frase em que o vocábulo repetido mostra significados diferentes é:',
'Todas as frases abaixo, retiradas de um dicionário de citações, mostram um mesmo vocábulo empregado duas vezes.',
'',
'["Sofre mais aquele que sempre espera do que aquele que nunca espera nada;","É melhor ser pessimista do que otimista. O pessimista fica feliz quando acerta e quando erra;","Cérebro: aparelho com que pensamos que pensamos;","Não sou da altura que me veem, mas sim da altura que meus olhos podem ver;","Agradar a si mesmo é orgulho, agradar aos outros, vaidade."]'::jsonb,
'C',
'Em ''aparelho com que pensamos que pensamos'', o verbo ''pensar'' aparece com sentidos diferentes: raciocinar e supor/julgar. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Portuguesa',
'A frase em que a inferência dada é adequada ao sentido da frase é:',
'Para que as frases abaixo façam sentido, o leitor deve colaborar com alguma inferência.',
'',
'["As únicas pessoas normais são aquelas que você não conhece bem / Inferência: todas as pessoas são anormais;","O psiquiatra é a primeira pessoa com quem você deve falar depois que começa a falar sozinho / Inferência: os psiquiatras são simultaneamente médicos e loucos;","Se você está tentando me deixar louco, chegou tarde / Inferência: eu ficarei louco de qualquer modo;","Antes eu era vaidoso, mas agora sou perfeito / Inferência: todas as pessoas podem superar seus defeitos;","É melhor morrer de pé do que viver de joelhos / Inferência: as doenças graves levam o melhor de nossa vida."]'::jsonb,
'A',
'De ''as únicas pessoas normais são aquelas que você não conhece bem'' infere-se que, conhecidas de perto, todas se mostram anormais. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Língua Portuguesa',
'Considerando um ato comunicativo normal, entre as coisas que não estão ditas, mas que estão implícitas para que a mensagem faça sentido, a opção correta é:',
'Imaginemos que, um dia, ao chegar a sua casa, alguém encontra a seguinte mensagem na secretária eletrônica: “Oi, aqui é a Carmem, e queria dizer-lhe que quinta-feira vou para Paris”.',
'',
'["Carmem já falava de Paris;","Carmem é pessoa conhecida, mas não íntima;","o receptor não identifica a finalidade da informação dada;","Carmem deixou recado na quarta-feira;","Carmem ligou e deixou uma mensagem por engano."]'::jsonb,
'C',
'Num ato comunicativo normal, pressupõe-se que o receptor não sabe por que a informação lhe foi dada, ou seja, não identifica de imediato a finalidade da mensagem. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Língua Portuguesa',
'Considerando a situação comunicativa da frase, a sua finalidade mais importante é:',
'Num jantar de amigos, em um restaurante, um dos presentes diz: “Estas sopas de legumes ficam sempre um pouco insossas, né?”',
'',
'["ofender o cozinheiro que não prepara bem as sopas;","declarar que não gosta de sopas de legumes;","solicitar indiretamente que lhe passem o sal;","mostrar desagrado por estar presente no encontro;","indicar a má seleção do restaurante para o encontro."]'::jsonb,
'C',
'A frase sobre a sopa insossa funciona como ato de fala indireto: na mesa, equivale a pedir que lhe passem o sal. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Língua Portuguesa',
'A frase abaixo que mostra uma interrogação indireta é:',
'Quando perguntamos algo a alguém, podemos fazê-lo de forma direta ou indireta, sendo uma escolha do enunciador diante do quadro geral da situação comunicativa.',
'',
'["Quem inventou o trabalho não tinha o que fazer;","Não sei por que ser humilde, quando se tem uma opinião própria;","Quando não há nenhum vento, reme;","Alguns homens veem as coisas como são e dizem “Por quê?” Eu sonho com as coisas que nunca foram e digo “Por que não?”;","Sempre dizem que o tempo muda as coisas, mas quem tem que mudá-las é você!"]'::jsonb,
'B',
'''Não sei por que ser humilde...'' é interrogação indireta, pois a pergunta vem embutida numa oração declarativa, sem ponto de interrogação. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Língua Portuguesa',
'Uma das regras básicas do emprego da vírgula é para marcar a omissão de um termo; a frase abaixo que exemplifica esse fato é:',
'',
'',
'["Aquele que não conhece Deus nesse mundo, não o conhecerá no outro;","O segredo de um bom sermão é ter um bom começo, um bom fim e ter ambos o mais perto possível;","Quando a infância morre, seus cadáveres são chamados de adultos;","Comprar um carro é necessidade, uma Mercedes, um exagero;","Uma criança, como seu estômago, não precisa de tudo que você pode dar a ela."]'::jsonb,
'D',
'Em ''Comprar um carro é necessidade, uma Mercedes, um exagero'', a vírgula marca a omissão (elipse) do verbo ''é''. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Língua Portuguesa',
'A frase abaixo que contém um anacoluto, e não um pleonasmo, é:',
'Um pleonasmo é uma figura que repete termos; um anacoluto é marcado por uma interrupção.',
'',
'["Às mulheres, não se pode dar um elogio atualmente;","Os livros, o aluno não os trouxe para a aula;","Paisagens, quero-as comigo por toda a vida;","Ao homem mesquinho, basta-lhe pouquinho;","A mim até me pareceu que ia chover forte."]'::jsonb,
'A',
'''Às mulheres, não se pode dar um elogio'' rompe a construção sintática esperada (quebra na regência/concordância), configurando anacoluto, e não pleonasmo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Língua Portuguesa',
'Dentre as cinco frases publicitárias abaixo, a que está relacionada ao comentário acima é:',
'Considere o comentário a seguir:
Frase nominal. Superlativo relativo ou comparativo de excelência. Elipse do verbo.',
'',
'["Para teu pequeno gigante. Nestlé Junior;","Peugeot 306. O Rival;","Marlboro. Fragrância para homens. A atração da aventura;","Opel Astra. Engenharia alemã do futuro;","Voyager. O mais vendido do mundo em sua classe."]'::jsonb,
'E',
'''O mais vendido do mundo em sua classe'' é frase nominal com superlativo relativo e elipse do verbo, correspondendo ao comentário. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Língua Portuguesa',
'A palavra motorista designa um indivíduo na seguinte frase:',
'',
'',
'["Ser motorista de ônibus é um trabalho árduo;","Meu pai é motorista desde os 20 anos;","O motorista deve dar prioridade aos pedestres;","O motorista chegou cedo, como todos os dias;","José conseguiu a vaga de motorista na empresa."]'::jsonb,
'D',
'''O motorista chegou cedo, como todos os dias'' individualiza um motorista específico; as demais usam a palavra em sentido genérico ou de função. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Língua Portuguesa',
'Como é sabido, os adjetivos e advérbios podem receber graus comparativo ou superlativo; a frase abaixo em que ocorre a gradação de um advérbio é:',
'',
'',
'["Ela canta bem alto quando toma banho;","Ele agora está muito forte;","Que extraordinariamente amável é sua secretária;","Caminhou bastante tempo até a fábrica;","Não saiu daqui muito convencido."]'::jsonb,
'A',
'''Bem alto'' mostra gradação (intensificação) de um advérbio (''alto''), modificado por outro advérbio. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Língua Portuguesa',
'Os seguintes pares de exemplos parecem iguais à primeira vista, mas trazem diferenças marcantes entre eles; o par que mostra igualdade de sentido na relação entre os termos é:',
'',
'',
'["A distância da minha terra me entristece / A distância do meu filho me entristece;","Finalmente me decidi por um romance policial / Finalmente me decidi pelo romance de Machado;","Está proibida a venda a granel / Está proibida a venda a menores;","Vestiu o traje a rigor / Vestiu o traje de seda;","Preferiu o vinho tinto ao branco / Preferiu a água mineral com gás à sem gás."]'::jsonb,
'E',
'Em ''preferiu a água com gás à sem gás'', ambos os termos mantêm a mesma relação (preferência de um sobre o outro), com igualdade de sentido. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Língua Portuguesa',
'Em alguns enunciados podemos empregar as formas que / qual dos relativos; o enunciado abaixo em que é obrigatório o emprego da forma qual é:',
'',
'',
'["Lembrei de uma coisa, da qual te quero falar;","Na frente havia um hotel luxuoso, atrás do qual estavam vários carros estacionados;","Vi na estante o romance de Clarice, a qual é admirada por todos os que amam a literatura;","Mandou-nos uma linda caixa dentro da qual havia um magnífico presente;","Visitei a rua na qual mora."]'::jsonb,
'C',
'Em ''o romance de Clarice, a qual é admirada por todos'', só a forma ''qual'' (feminino) permite deixar claro que o antecedente é Clarice, e não o romance. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Língua Portuguesa',
'Todos os enunciados a seguir podem ser vistos como respostas a determinadas perguntas; a opção em que a pergunta formulada é a mais adequada à estrutura do enunciado é:',
'',
'',
'["Ricardo chega da Europa em setembro / Quem chega da Europa em setembro?","A caneta, acho que a secretária a guardou / O que fez a secretária?","O músico tocava Villa-Lobos no órgão da catedral / Onde o músico tocava Villa-Lobos?","João? Eu o vi às três da tarde / Quando eu vi João?","Acho que o livro está em todas as livrarias / Onde posso achar o livro?"]'::jsonb,
'E',
'''Acho que o livro está em todas as livrarias'' responde adequadamente a ''Onde posso achar o livro?'', pela correspondência entre pergunta e estrutura do enunciado. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Língua Portuguesa',
'A frase abaixo em que o emprego da conjunção E se mostra adequado é:',
'',
'',
'["Professores e alunos aprendem na escola;","Roberto namora Maria e a nova camisa na vitrine;","Os meninos jogam bola e na loteria esportiva;","O casal viu o filme e os ingressos atirados ao chão;","João chegou com Maria e com um terno novo."]'::jsonb,
'A',
'''Professores e alunos aprendem na escola'' une termos de mesma função (sujeitos), uso adequado da conjunção aditiva E. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Língua Portuguesa',
'A frase abaixo que pode, ou não, ser considerada uma ironia é:',
'',
'',
'["Um motorista dá algumas fechadas em outros veículos e uma das passageiras comenta: “Mais uns três dias e você já vai saber dirigir, né?”","Duas colegas de trabalho acham o pulôver de uma terceira, muito feio, e uma delas diz: “Ela gastou um dinheirão nesse pulôver!”","Um casal chega a um restaurante completamente vazio e o marido afirma: “Está vendo, eu te disse que devíamos ter feito reserva!”","Dois namorados saem de um cinema e a namorada comenta o filme visto: “Eta filme bom! Devíamos ter saído antes!”","O filho fala para a mãe: “Você cozinha muito bem! Papai deve ter-se separado de você por causa disso!”"]'::jsonb,
'B',
'O comentário sobre o pulôver pode ser lido como elogio sincero ou como ironia, dependendo da entonação/contexto; é a frase ambígua quanto à ironia. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Língua Portuguesa',
'Entre os textos abaixo, aquele em que predomina a exposição, e NÃO a argumentação, é:',
'',
'',
'["“Como todos sentem ou pressentem, vivemos hoje uma grave e profunda crise, que se manifesta em todos os setores da vida social e, portanto, na língua também”;","“Não há dúvida de que todos os seres humanos têm direito à cultura, mas é incerto que a visita a museus seja a melhor maneira de garantir-lhes essa participação”;","“O ato de escrever é distinto do ato de falar. Sem dúvida, o grau de distanciamento se mede pela natureza da elocução”;","“Alguns jogos de futebol no Brasil mostram claramente a necessidade absoluta de renovação para que possamos atingir o nível desse esporte já praticado em outros países”;","“Telel Hamã era uma cidade em ascensão durante a Idade do Bronze. Ela estava localizada próxima ao mar Morto, no Oriente Médio, e era dez vezes maior que Jerusalém na época”."]'::jsonb,
'E',
'O texto sobre Telel Hamã apenas expõe/informa dados históricos, sem defender tese: predomina a exposição. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Língua Portuguesa',
'Um determinado gramático pretende corrigir alguns desvios no uso da norma e cita uma série de exemplos de erros comuns; o exemplo em que a correção proposta mostra adequação é:',
'',
'',
'["Sito à rua e não sito na rua;","Entrega a domicílio e não entrega em domicílio;","Erros que passam despercebidos e não desapercebidos;","Discreção é o ato de ser discreto – discrição não existe;","Meio-dia e meio e não meio-dia e meia."]'::jsonb,
'C',
'O certo é ''erros que passam despercebidos'' (não notados), e não ''desapercebidos'' (desprovidos); a correção proposta é adequada. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS ESPECIFICOS (Questoes 31 a 80)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Conhecimentos Específicos',
'As normas éticas e as jurídicas estabelecem como os indivíduos devem se comportar na sociedade. Diante disso, pode-se apontar a seguinte diferença entre esses dois tipos de normas:',
'',
'',
'["as normas éticas podem contrariar as jurídicas;","as normas jurídicas identificam-se com a moralidade vigente;","as normas éticas persistem ao longo do tempo, e as jurídicas podem ser modificadas;","a desobediência às normas éticas constitui ato ilícito;","ao longo da história, as normas jurídicas antecederam o advento das normas éticas."]'::jsonb,
'A',
'A principal diferença é que normas éticas podem contrariar as jurídicas (algo pode ser legal e, ao mesmo tempo, considerado imoral, e vice-versa). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Conhecimentos Específicos',
'A expressão “corpo de delito” significa:',
'',
'',
'["presença de lesões apresentadas pelas vítimas de um crime;","o conjunto de elementos sensíveis denunciadores da prática de um delito;","alterações visíveis, materiais, próprias do local onde ocorreu o crime;","alterações físicas permanentes no local do crime;","lesões duradouras que resultam de uma agressão a qualquer pessoa."]'::jsonb,
'B',
'Corpo de delito é o conjunto de elementos sensíveis (vestígios materiais) que denunciam a prática do delito, objeto do exame pericial. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Conhecimentos Específicos',
'Sobre o tema, é correto afirmar que:',
'A causa jurídica da morte de uma pessoa pode ser natural ou violenta. As mortes violentas podem decorrer de acidente, suicídio ou crime.',
'',
'["em tempos de paz, a causa jurídica mais comum das mortes violentas é o crime doloso;","cabe ao perito legista estabelecer a causa jurídica das mortes violentas;","a morte é considerada suspeita quando ocorre de modo inesperado, não se achando sinais de violência pela perinecroscopia;","quando ocorrer morte por complicação infecciosa em um caso de vítima de acidente de trabalho, qualquer médico plantonista de pronto-socorro pode dar a declaração de óbito;","a declaração de óbito é dispensável quando for solicitado exame complementar."]'::jsonb,
'C',
'Morte é considerada suspeita quando ocorre de modo inesperado e sem sinais de violência evidentes à perinecroscopia, exigindo investigação da causa. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Conhecimentos Específicos',
'São animais cujas alterações em cadáveres podem servir para avaliar há quanto tempo ocorreu a morte:',
'',
'',
'["formigas;","baratas;","crustáceos;","moscas;","ratos."]'::jsonb,
'D',
'As moscas (entomologia forense) têm ciclo de desenvolvimento conhecido; o estágio das larvas permite estimar o tempo decorrido desde a morte. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Conhecimentos Específicos',
'Nos casos de autolesão:',
'As lesões traumáticas podem ser causadas por agentes externos ou pela própria pessoa lesada.',
'',
'["sua distribuição é simétrica nos dois lados do corpo;","caracteristicamente, todas têm o mesmo tempo de evolução desde a produção;","com maior frequência, são causadas por agente contundente;","têm profundidade e tamanho variados;","costumam ser vistas com direção paralela preferencial."]'::jsonb,
'E',
'As autolesões costumam apresentar direção paralela preferencial, em regiões acessíveis à própria pessoa e poupando áreas vitais. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Conhecimentos Específicos',
'O diagnóstico aproximado do tempo de evolução (duração) de uma lesão pode ser feito:',
'',
'',
'["em queimaduras de segundo grau até três semanas de evolução;","pela cor das equimoses na pele, se tiverem sido produzidas até uma semana antes do exame;","pelo exame radiológico de uma fratura consolidada;","pela rotura do hímen, se tiver ocorrido até duas semanas antes do exame;","mesmo que a ferida esteja infectada."]'::jsonb,
'D',
'A rotura do hímen pode datar a lesão até cerca de duas semanas, período em que ainda há sinais de cicatrização permitindo estimar o tempo. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Conhecimentos Específicos',
'São hemorragias que, sendo encontradas no exame do crânio e do encéfalo, sugerem doenças em vez de trauma:',
'',
'',
'["periósticas;","epidurais;","subdurais;","corticais;","parenquimatosas."]'::jsonb,
'E',
'Hemorragias parenquimatosas, encontradas no encéfalo, sugerem causa patológica (p. ex. AVC hemorrágico) em vez de origem traumática. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Conhecimentos Específicos',
'Assim, é correto afirmar que:',
'Há, segundo vários autores, diferenças entre a evolução dos afogados em água do mar e a dos afogados em água doce.',
'',
'["em ambos os casos, o sangue do ventrículo esquerdo está diluído, quando comparado ao sangue normal;","só ocorre asfixia nos afogados em água do mar;","a morte dos afogados em água doce deve-se a parada cardíaca em assistolia;","é possível dar certeza de morte por afogamento comparando a densidade do sangue nas cavidades cardíacas direitas e esquerdas, em ambas as hipóteses;","a pesquisa de algas no sangue dos afogados nada informa aos peritos quanto ao mecanismo de morte, tanto nos de água doce como nos de água salgada."]'::jsonb,
'D',
'Comparar a densidade do sangue nas cavidades cardíacas direitas e esquerdas permite dar certeza de morte por afogamento, tanto em água doce quanto salgada. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Conhecimentos Específicos',
'Na balística terminal dos projéteis de arma de fogo de alta energia:',
'',
'',
'["a cavidade temporária independe do segmento atingido;","as cavidades permanentes independem do calibre do projétil;","o maior diâmetro das lesões de saída tem direção aleatória;","a cavidade temporária resulta das ondas de choque por eles produzidas por serem supersônicos;","as lesões viscerais mais extensas resultam da formação de cavidades temporárias ao longo do trajeto."]'::jsonb,
'E',
'Nos projéteis de alta energia, as lesões viscerais mais extensas decorrem da formação de cavidades temporárias ao longo do trajeto. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Conhecimentos Específicos',
'O coeficiente balístico de um projétil de arma de fogo é:',
'',
'',
'["proporcional à carga do cartucho;","o seu poder de penetração;","inversamente proporcional à sua massa;","resultante de sua velocidade;","menor nos projéteis de ponta aguda."]'::jsonb,
'B',
'O coeficiente balístico expressa a capacidade do projétil de vencer a resistência do ar, relacionando-se ao seu poder de penetração. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Conhecimentos Específicos',
'Nos disparos feitos a curta distância, a orla que custa mais a desaparecer, conforme a boca da arma vai se afastando do alvo, é a de:',
'',
'',
'["queimadura;","chamuscamento;","tisnado;","tatuagem;","esfumaçamento."]'::jsonb,
'D',
'A orla de tatuagem (grânulos de pólvora incrustados na pele) é a que mais custa a desaparecer conforme a arma se afasta do alvo. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Conhecimentos Específicos',
'(Questão ANULADA pela banca) Costuma ser considerado um bom sinal de reação vital em corpos encontrados em local de incêndio:',
'Esta questão foi anulada pela banca organizadora (FGV). O enunciado e as alternativas são mantidos apenas para referência.',
'',
'["edema pulmonar;","hiperemia ao redor de pele carbonizada;","dosagem alta de dióxido de carbono no sangue arterial;","achado de resíduos de combustão no estômago;","formação de bolhas em áreas queimadas."]'::jsonb,
'A',
'QUESTÃO ANULADA pela banca FGV. A resposta registrada é apenas um placeholder para não quebrar o aplicativo.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Conhecimentos Específicos',
'É considerado agravante penal o seguinte tipo de embriaguez:',
'',
'',
'["habitual;","preordenada;","patológica;","voluntária;","fortuita."]'::jsonb,
'B',
'A embriaguez preordenada (quando o agente se embriaga de propósito para cometer o crime) é agravante penal. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Conhecimentos Específicos',
'Houve um afogamento:',
'Uma pessoa está em um churrasco com amigos em casa que tem piscina. De repente, um colega a empurra, por brincadeira, para dentro dessa piscina. Está uma tarde fria. Ela cai na parte mais funda, demora a vir à tona e morre em consequência da brincadeira.',
'',
'["incompleto;","branco;","verdadeiro;","secundário;","idiopático."]'::jsonb,
'B',
'No afogamento branco (ou afogamento por inibição/hidrocução), a morte ocorre por reflexo (parada), favorecida pela água fria, sem grande aspiração de líquido. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Conhecimentos Específicos',
'Do ponto de vista penal, houve:',
'Uma mulher está no sétimo mês de gestação de uma gravidez resultante de adultério. Ingere uma droga abortiva e elimina um concepto que consegue sobreviver.',
'',
'["autoaborto;","aborto necessário;","aborto terapêutico;","tentativa de aborto;","conduta isenta de pena (não tipificada)."]'::jsonb,
'D',
'Houve tentativa de aborto: a gestante ingeriu a droga abortiva com a intenção de abortar, mas o concepto sobreviveu, não se consumando o resultado. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Conhecimentos Específicos',
'O que modifica sua imputabilidade é o(a):',
'Quando cometem um delito, de acordo com o Código Penal brasileiro, os oligofrênicos podem sofrer punição ou não.',
'',
'["natureza do delito;","uso de violência;","nível de comprometimento mental;","causa da oligofrenia;","extensão do dano causado."]'::jsonb,
'C',
'A imputabilidade dos oligofrênicos é modificada pelo nível de comprometimento mental (grau da deficiência), que define se há capacidade de entendimento. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Conhecimentos Específicos',
'O mecanismo de morte nas intoxicações pelo monóxido de carbono é por:',
'',
'',
'["inibição do sistema de citocromo oxidases A;","bloqueio das peroxidases das hemácias;","competição com o oxigênio na ligação com a hemoglobina reduzida;","substituição da carboxi-hemoglobina;","aumento da concentração da carbamino-hemoglobina."]'::jsonb,
'C',
'O monóxido de carbono compete com o oxigênio na ligação com a hemoglobina, formando carboxi-hemoglobina e impedindo o transporte de O2. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Conhecimentos Específicos',
'Numa perícia médico-legal, podem ser indícios de maus-tratos:',
'Crianças e pessoas com algum tipo de deficiência podem ser alvo de abusos diversos.',
'',
'["múltiplas lesões de etiologia variada, em fases diferentes de evolução, nos diversos segmentos do corpo;","equimoses violáceas esparsas, de formato e tamanho irregular, nos membros inferiores;","pequenas marcas rosadas de escoriação, de formato irregular, nos membros inferiores;","escoriações de formato irregular, sob crosta pardo-avermelhada em membros superiores e inferiores;","queimadura, de formato irregular e pequenas dimensões, no braço direito, em fase intermediária de evolução."]'::jsonb,
'A',
'São indício de maus-tratos múltiplas lesões de etiologia variada, em diferentes fases de evolução e em vários segmentos do corpo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Conhecimentos Específicos',
'A ação do calor difuso pode levar a diversas alterações, sendo a mais grave:',
'',
'',
'["lipotimia;","intermação;","síncope térmica;","insolação;","queimadura."]'::jsonb,
'D',
'A insolação é a alteração mais grave da ação do calor difuso, por falência dos mecanismos de termorregulação. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Conhecimentos Específicos',
'Tais achados podem indicar:',
'Homem de 68 anos, branco, portador de tetraplegia, é levado ao IML para exame de corpo de delito de lesões corporais. O exame direto revelou a presença de lesões com as características de queimaduras, localizadas na língua, regiões glúteas e parte da genitália externa. O periciando apresentava, ainda, déficit nutricional importante e higiene insatisfatória.',
'',
'["abuso físico e abuso psíquico;","abuso sexual e abuso emocional;","abuso físico e negligência de cuidados;","abuso sexual e negligência de cuidados;","negligência de cuidados e assédio moral."]'::jsonb,
'C',
'As queimaduras em áreas íntimas associadas a desnutrição e má higiene indicam abuso físico somado a negligência de cuidados. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Conhecimentos Específicos',
'O caso relatado permite concluir que o corpo:',
'O cadáver de um homem sepultado há cerca de seis meses foi exumado para localizar projétil de arma de fogo, que deixou de ser recolhido durante a necropsia por falta de condições técnicas. Cumpridos os trâmites de praxe, a abertura do caixão revelou aos peritos e autoridades presentes: odor rançoso e desagradável; tronco e membros inferiores preservados e de tonalidade pardo-amarelada. O achado possibilitou aos peritos revisar as lesões descritas no laudo de necropsia e concluir seu trabalho.',
'',
'["possivelmente passou por algum método de conservação antes do sepultamento, por isso a putrefação ainda não se completou;","está mumificado, por isso tronco e membros inferiores estão preservados;","está na fase gasosa, por isso o odor exalado e a conservação de tronco e membros inferiores;","está na fase coliquativa que antecede a esqueletização, por isso tronco e membros inferiores ainda estão preservados;","apresenta o fenômeno de adipocera ou saponificação, por isso tronco e membros inferiores estão preservados."]'::jsonb,
'E',
'A preservação de tronco e membros com tonalidade pardo-amarelada após meses de sepultamento caracteriza adipocera (saponificação). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Conhecimentos Específicos',
'Durante a investigação de um crime, alguns fatores auxiliam o perito na pesquisa da hora provável da morte, cuja determinação pode ser de grande valia, por meio da observação de alguns fenômenos cadavéricos, tais como:',
'',
'',
'["desidratação; resfriamento do corpo; flacidez muscular;","espasmo cadavérico; livores de hipóstase; mancha negra da esclerótica;","resfriamento do corpo; livores de hipóstase; rigidez muscular;","relaxamento dos esfíncteres; resfriamento do corpo; livores de hipóstase;","mancha negra da esclerótica; resfriamento do corpo; rigidez muscular."]'::jsonb,
'C',
'Para estimar a hora da morte observam-se, em conjunto, resfriamento do corpo, livores de hipóstase e rigidez muscular. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Conhecimentos Específicos',
'Os livores de hipóstase, em geral, têm coloração violácea; porém, poderão apresentar-se de tonalidade diferente em situações especiais, tais como:',
'',
'',
'["afogamento e intoxicação por organofosforados;","intoxicação por monóxido de carbono e por substâncias metemoglobinizantes;","intoxicação por barbitúricos e por substâncias metemoglobinizantes;","intoxicação por monóxido de carbono e por benzenos;","afogamento e intoxicação por carbamatos."]'::jsonb,
'B',
'Os livores assumem tonalidade diferente na intoxicação por monóxido de carbono (vermelho-carmim) e por substâncias metemoglobinizantes (acastanhada). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Conhecimentos Específicos',
'O exame indica ter havido:',
'Adolescente encaminhado ao IML, para exame de lesão corporal, alega ter sido agredido pelo padrasto, que teria tentado “enforcá-lo”. O exame revelou congestão e edema facial, presença de estigmas ungueais paralelamente dispostos nos dois lados do pescoço, múltiplas petéquias violáceas interessando as regiões mentoniana e mandibular, além de disfonia.',
'',
'["sufocação direta;","enforcamento;","estrangulamento;","sufocação indireta;","obstrução de vias aéreas superiores."]'::jsonb,
'C',
'Estigmas ungueais nos dois lados do pescoço, petéquias, edema e disfonia indicam constrição do pescoço pelas mãos: estrangulamento. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Conhecimentos Específicos',
'Em relação ao exame, é correto afirmar que:',
'Mulher comparece ao IML para exame de conjunção carnal e de ato libidinoso diverso da conjunção carnal, que apura: genitália externa sem lesões violentas; hímen com duas roturas cicatrizadas nos quadrantes anterior e posterior direitos; ânus com tônus pouco diminuído, mostrando equimoses violáceas na região perianal e rotura disposta radialmente ao plano da mucosa anal, no quadrante anterior esquerdo; a pesquisa de espermatozoides foi negativa para o material colhido em ambas as cavidades.',
'',
'["foi negativo para conjunção carnal e positivo para ato libidinoso diverso da conjunção carnal;","foi negativo para conjunção carnal e indeterminado para ato libidinoso diverso da conjunção carnal;","foi positivo para conjunção carnal e positivo para ato libidinoso diverso da conjunção carnal;","não há como afirmar ou negar a conjunção carnal; foi positivo para ato libidinoso diverso da conjunção carnal;","foi indeterminado para conjunção carnal e indeterminado para ato libidinoso diverso da conjunção carnal."]'::jsonb,
'D',
'As roturas himenais cicatrizadas não permitem afirmar ou negar a conjunção carnal; já as lesões anais recentes confirmam ato libidinoso diverso. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Conhecimentos Específicos',
'Nesse caso, é correto afirmar que:',
'Um homem é conduzido ao IML, para exame de corpo de delito de embriaguez, por ter se envolvido em colisão de veículos ocorrida há cerca de quatro horas, sendo atendido em hospital da rede pública antes. Ao exame, informa que bebeu uma lata de cerveja depois que saiu do trabalho; diz estar um pouco tonto e nauseado, porém, responde com coerência às questões formuladas pelo perito; sem mais alterações de interesse médico-legal. Colhida urina para pesquisa de álcool, o exame foi negativo.',
'',
'["o resultado do exame de urina é incoerente;","o tempo transcorrido entre o fato e o exame médico-legal permitiu a eliminação do álcool;","o atendimento hospitalar interferiu no resultado do exame de urina;","os sintomas referidos pelo homem indicam que ele está sob efeito do álcool;","o exame de urina foi negativo porque o álcool não começou a ser eliminado."]'::jsonb,
'B',
'Quatro horas após a ingestão de pouca bebida, o álcool já pode ter sido eliminado, explicando o exame de urina negativo. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Conhecimentos Específicos',
'Presença de sulco apergaminhado, descontínuo, mais fundo na face lateral direita do pescoço, superficializando para a esquerda e para cima, permite ao perito pensar na hipótese de:',
'',
'',
'["enforcamento incompleto;","estrangulamento atípico;","enforcamento atípico lateral;","estrangulamento;","sufocação direta."]'::jsonb,
'C',
'Sulco apergaminhado, descontínuo, mais fundo de um lado e que sobe obliquamente é típico do enforcamento atípico lateral. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Conhecimentos Específicos',
'O principal fator, referente aos vestígios, determinante da urgência é sua:',
'Urgências em Medicina Legal diferem daquelas da prática clínico-cirúrgica, em que a gravidade do quadro apresentado pelo paciente impõe a premência.',
'',
'["extensão;","fugacidade;","quantidade;","classificação;","quantidade e classificação."]'::jsonb,
'B',
'O fator determinante da urgência em Medicina Legal é a fugacidade dos vestígios, que podem desaparecer rapidamente. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Conhecimentos Específicos',
'O mecanismo letal, no caso, foi:',
'Uma pessoa sofreu um acidente doméstico, ficando interposta num circuito de 220v por ter tocado o chuveiro com uma das mãos, enquanto tomava banho. Ela soltou um grito e caiu. Quando chegou o socorro, três minutos após o fato, já estava em parada cardiorrespiratória irreversível.',
'',
'["hemorragia interna;","hiperaquecimento do sistema nervoso central;","parada respiratória periférica;","parada respiratória central;","fibrilação ventricular."]'::jsonb,
'E',
'A corrente elétrica atravessando o corpo provoca fibrilação ventricular, levando à parada cardiorrespiratória. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Conhecimentos Específicos',
'A interrupção dessas medidas será feita:',
'Quando alguém for considerado inimputável, não cumprirá pena se delinquir, mas serão aplicadas as medidas de segurança previstas na lei penal.',
'',
'["quando houver cura aparente;","quando cessar sua periculosidade;","depois de um ano de aplicação das medidas;","quando o surto do transtorno mental durar mais de um ano;","quando o agente tiver cumprido o tempo correspondente a 1/6 da pena a que deveria ser condenado se fosse imputável."]'::jsonb,
'B',
'As medidas de segurança são interrompidas quando cessar a periculosidade do agente, verificada por perícia. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Conhecimentos Específicos',
'O quadro descrito indica:',
'Em um dia quente de verão, um senhor idoso, obeso, usuário de Haldol, é encontrado no leito, prostrado, com temperatura de 39°C, sinais de desidratação, flacidez muscular, hiporreflexia, sem sinais de AVC, hipotenso. O ECG mostrava taquicardia e traçado normal. Ausência de outros sinais.',
'',
'["insolação;","apenas desidratação;","infarto miocárdico;","exaustão térmica;","Covid-19."]'::jsonb,
'D',
'Idoso obeso, usuário de Haldol, com hipertermia, desidratação, flacidez e hiporreflexia em dia quente configura exaustão (esgotamento) térmica. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Conhecimentos Específicos',
'A cianose, sinal encontrado nos cadáveres de mortos por asfixia:',
'',
'',
'["só é perceptível quando o teor de hemoglobina não oxigenada atinge 5%;","depende de alta concentração de CO² no sangue;","costuma ser observada nas intoxicações por monóxido de carbono;","é fraca nos casos de intoxicações por drogas metemoglobinizantes;","é intensa nos assassinados com vários tiros."]'::jsonb,
'A',
'A cianose só se torna perceptível quando a hemoglobina não oxigenada (reduzida) atinge cerca de 5 g/dL. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Conhecimentos Específicos',
'No texto do Art. 123 do Código Penal brasileiro (infanticídio), a expressão “sob a influência do estado puerperal" significa que:',
'',
'',
'["a mãe está na vigência de um surto psicótico no momento do crime;","as condições hormonais e a dor do parto modificam a compreensão da mãe com relação ao crime;","o estado puerperal representa um fator de exclusão da ilicitude do fato;","a capacidade de entendimento da mãe está diminuída pelo sentimento de desonra relativo à gestação;","a pena é reduzida quando comparada à prevista para o homicídio porque há perda da autodeterminação da mãe."]'::jsonb,
'B',
'A expressão ''sob a influência do estado puerperal'' indica que as condições hormonais e a dor do parto alteram a compreensão da mãe quanto ao crime. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Conhecimentos Específicos',
'A causa de morte mais frequente de infanticídio é:',
'',
'',
'["associação de vários meios;","traumatismo craniencefálico;","afogamento;","ação perfurocortante;","asfixia."]'::jsonb,
'E',
'A causa de morte mais frequente no infanticídio é a asfixia, por ser meio de fácil execução e deixar poucos vestígios. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Conhecimentos Específicos',
'As figuras de Lichtenberg são achados característicos, tanto no vivo quanto no cadáver, da ação da energia:',
'',
'',
'["radioativa industrial;","elétrica natural;","mecânica industrial;","luminosa natural;","térmica industrial."]'::jsonb,
'B',
'As figuras de Lichtenberg (arborescências na pele) são achado característico da ação da energia elétrica natural, ou seja, do raio (fulguração). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Conhecimentos Específicos',
'Tais achados caracterizam a chamada lesão de:',
'No exame do encéfalo em caso de traumatismo craniencefálico, observam-se zonas de hemorragia e destruição do tecido cortical no polo frontal e no polo occipital, provocadas pelo efeito de movimentação do encéfalo no interior do crânio.',
'',
'["polos opostos;","bate-bate;","Chamberlain;","chacoalhamento;","golpe e contragolpe."]'::jsonb,
'E',
'Lesões no polo frontal e no polo occipital pela movimentação do encéfalo dentro do crânio caracterizam a lesão de golpe e contragolpe. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Conhecimentos Específicos',
'(Questão ANULADA pela banca) No caso de suspeita do uso de psicodislépticos, deve-se pesquisar, dentre outros, o princípio ativo:',
'Esta questão foi anulada pela banca organizadora (FGV). O enunciado e as alternativas são mantidos apenas para referência. Texto de apoio: Na perícia de indivíduo sob efeito de prováveis drogas ilícitas, pode-se realizar a pesquisa de drogas no sangue ou urina.',
'',
'["diacetilmorfina;","dietilamida do ácido lisérgico;","tetra-hidrocanabinol;","dextrometorfano;","tetracaína."]'::jsonb,
'B',
'QUESTÃO ANULADA pela banca FGV. A resposta registrada é apenas um placeholder para não quebrar o aplicativo.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Conhecimentos Específicos',
'Favorece o diagnóstico de entalhe a característica de apresentar:',
'Em que pese o conceito de estupro atualmente ser mais amplo que outrora, ainda é de interesse médico-legal o estudo do hímen. Um cuidado especial deve ser dado à distinção entre entalhe e rotura da membrana himenal.',
'',
'["profundidade completa;","fibrose nas bordas;","aspecto em letra “V”;","simetria;","hemorragia e edema."]'::jsonb,
'D',
'O entalhe himenal, ao contrário da rotura, favorece-se pela simetria (incisuras congênitas simétricas, sem sinais de trauma). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Conhecimentos Específicos',
'Esse breve relato do ocorrido permite ao perito pensar na possibilidade de:',
'Mulher de 40 anos comparece ao exame de corpo de delito em investigação de crime sexual. Conta que, estando hospedada na casa de amigos, na noite anterior, acreditando tratar-se de seu marido na cama, já tarde da noite, teve relação sexual vaginal com outro homem, somente percebendo o engano após o fato, tendo prontamente prestado queixa na Delegacia de Polícia.',
'',
'["ausência de crime sexual real;","caso típico de estupro;","crime de assédio sexual;","violação sexual mediante fraude;","forma de estupro de vulnerável."]'::jsonb,
'D',
'A relação sexual obtida porque a vítima foi induzida a erro sobre a identidade do parceiro caracteriza violação sexual mediante fraude. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Conhecimentos Específicos',
'A “aceleração de parto”, prevista no inciso IV do parágrafo primeiro do Art. 129 do Código Penal brasileiro vigente, pode ser de difícil caracterização pericial, porém, segundo a lei e a doutrina, é caracterizada como:',
'',
'',
'["antecipação da data esperada do parto em decorrência de agressão sofrida;","encurtamento do tempo entre a rotura da bolsa amniótica e a expulsão fetal;","trabalho de parto com duração inferior à habitual, de cerca de sessenta minutos;","expulsão fetal completa com vida, anterior à trigésima semana de gestação;","parto decorrente de agressão genital/sexual, com ou sem vida do concepto."]'::jsonb,
'A',
'A aceleração de parto é a antecipação da data esperada do parto em decorrência da agressão sofrida pela gestante. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Conhecimentos Específicos',
'Sobre esse tema, é correto afirmar que:',
'No estudo das lesões corporais (Art. 129 do Código Penal brasileiro), a correta caracterização das lesões como leves, graves ou gravíssimas depende da cuidadosa análise da vítima, à luz dos conhecimentos médicos e médico-legais.',
'',
'["o aborto, §2º, inciso V, após agressão física à gestante, independe do prévio conhecimento da gravidez pelo agente;","um bom exemplo de inutilização de membro é a perda do pênis por agressão com arma branca;","apenas as alterações estéticas visíveis com a vítima vestida podem configurar uma deformidade permanente;","na enfermidade incurável, a incurabilidade não precisa ser absoluta, bastando ser demasiado longa e custosa;","na distinção entre debilidade e inutilização de membro, utiliza-se habitualmente o limite de 40% da função."]'::jsonb,
'D',
'Na enfermidade incurável, a incurabilidade não precisa ser absoluta: basta que a cura seja demasiado longa e custosa. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Conhecimentos Específicos',
'Existem vários métodos para examinar os pulmões, dentre eles, um que observa macroscopicamente o desenho do mosaico alveolar denominado docimasia:',
'No crime de infanticídio, previsto no Art. 123 do Código Penal brasileiro, o estudo do cadáver deve verificar se houve respiração extrauterina.',
'',
'["hidrostática;","diafragmática;","óptica;","plêurica;","ponderal."]'::jsonb,
'C',
'A docimasia óptica observa macroscopicamente o desenho em mosaico dos alvéolos pulmonares para avaliar se houve respiração. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Conhecimentos Específicos',
'Conforme a nossa lei penal e a doutrina médico-legal vigente, são considerados sempre penalmente inimputáveis os:',
'O Art. 26 do Código Penal brasileiro descreve as situações de inimputabilidade penal.',
'',
'["criminosos passionais;","surdos socializados;","psicopatas de qualquer tipo;","hipertímicos com prodigalidade;","deficientes mentais profundos."]'::jsonb,
'E',
'Os deficientes mentais profundos são sempre penalmente inimputáveis, por não terem capacidade de entender o caráter ilícito do fato. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Conhecimentos Específicos',
'O curioso transtorno que se caracteriza pelo desejo da prática sexual com um parceiro sujo, mal asseado, com má higiene, é denominado:',
'Ainda hoje, apesar das enormes mudanças comportamentais e do aumento da tolerância com as diferenças, os transtornos da sexualidade podem gerar consequências penais e civis na vida do indivíduo que os apresenta.',
'',
'["dolismo;","riparofilia;","mixoscopia;","frotteurismo;","masoquismo."]'::jsonb,
'B',
'A riparofilia é o transtorno caracterizado pela atração sexual por parceiro sujo, mal asseado, com má higiene. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Conhecimentos Específicos',
'A direção das feridas produzidas por instrumentos perfurantes de médio calibre costuma seguir:',
'',
'',
'["a direção do golpe;","o maior eixo dos segmentos corporais;","a lei de Nysten-Sommer;","direção aleatória;","as Leis de Filhos e Langer."]'::jsonb,
'E',
'A direção das feridas por instrumentos perfurantes de médio calibre tende a seguir as linhas de clivagem da pele (Leis de Filhos e Langer). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Conhecimentos Específicos',
'Em uma vítima de agressão por projétil de arma de fogo penetrante do abdome com lesão hepática, hemorragia que evolui com choque hipovolêmico, insuficiência renal e que faz uma parada cardiorrespiratória irreversível, a causa básica correta da morte a ser anotada na declaração de óbito pelo médico-legista é:',
'A correta análise da evolução das complicações de um trauma que conduz a vítima ao óbito é essencial para o preenchimento adequado da declaração de óbito.',
'',
'["ferida por projétil de arma de fogo;","homicídio doloso;","choque hipovolêmico;","parada cardiorrespiratória;","lesão hepática hemorrágica."]'::jsonb,
'A',
'Na declaração de óbito, a causa básica é o evento que iniciou a cadeia que levou à morte: a ferida por projétil de arma de fogo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Conhecimentos Específicos',
'O fator mais importante no grande poder lesivo dos projéteis de fuzil é seu/sua:',
'',
'',
'["massa maior;","estabilidade no trajeto;","poder de penetração;","formato;","energia cinética."]'::jsonb,
'E',
'O grande poder lesivo dos projéteis de fuzil decorre principalmente de sua elevada energia cinética (função da alta velocidade). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Conhecimentos Específicos',
'Para se conceituar uma substância como um veneno, o mais importante é ter a ação:',
'',
'',
'["lesiva intensa em dose baixa, na maioria das pessoas saudáveis;","da dose letal muito próxima da ação da dose tóxica;","semelhante na mesma dose, tanto em pessoas saudáveis como nos doentes;","paradoxal em dose semelhante, em alguns grupos de pessoas;","tóxica dependente da quantidade absorvida pelo indivíduo."]'::jsonb,
'A',
'O essencial para conceituar um veneno é a ação lesiva intensa em dose baixa na maioria das pessoas saudáveis. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Conhecimentos Específicos',
'As manchas de Tardieu e as de Paltauf podem ocorrer nos pulmões de pessoas afogadas, porém as de Paltauf podem ser diagnosticadas porque são:',
'',
'',
'["pequenas, de localização pleural e muito numerosas;","localizadas no parênquima pulmonar, circulares, pequenas e bem delimitadas;","globulares, de contornos mal definidos e resultam de roturas alveolares;","causadas por pequenas roturas pleurais, peculiares aos afogados de água doce, semelhantes a petéquias;","numerosas, em grupos dispersos e próprias do afogamento no mar."]'::jsonb,
'C',
'As manchas de Paltauf são globulares, de contornos mal definidos e resultam de roturas alveolares, diferindo das pequenas petéquias de Tardieu. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Conhecimentos Específicos',
'Sabendo-se que ela era e permanece casada e que já tem um filho saudável, resulta que:',
'Mulher sofreu conjunção carnal mediante grave ameaça, sem registrar a ocorrência policial. Dois meses depois, percebe que está grávida.',
'',
'["ela não pode interromper a gestação legalmente, pois não corre risco de vida;","o marido tem que autorizar para que ela realize o aborto legalmente;","ela não tem direito de interromper legalmente a gestação por falta de registro;","essa situação típica é um bom exemplo de aborto eugênico lícito;","ela pode interromper legalmente a gestação, se assim o desejar."]'::jsonb,
'E',
'A gestação resultante de estupro autoriza o aborto legal (sentimental), independentemente de registro ou autorização do marido; ela pode interromper se desejar. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO (Questoes 81 a 100)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Noções de Direito',
'João, integrante do grupo e profundo conhecedor da ordem constitucional, explicou, corretamente, que a manifestação:',
'O grupo “Amigos da Diversidade” decidiu realizar manifestação pacífica na praça mais importante da Cidade Alfa, no último domingo do próximo mês. Após a tomada de decisão, surgiu uma dúvida, no âmbito da liderança, a respeito dos procedimentos a serem adotados.',
'',
'["é projeção do princípio democrático, não carecendo de prévio aviso a qualquer autoridade pública ou mesmo de autorização;","pode ser realizada na praça, desde que o requerimento seja apresentado e deferido pela autoridade competente até trinta dias antes;","pode ser livremente realizada, mas em local privado, não na praça, isso sob pena de privar o restante da coletividade da fruição desse espaço;","não depende de autorização de qualquer órgão público, sendo exigida apenas a realização de prévio aviso à autoridade competente;","pode ser realizada na praça, desde que o uso seja autorizado pela autoridade competente, com o correlato pagamento da taxa de uso exclusivo, fixada em valores módicos."]'::jsonb,
'D',
'A manifestação pacífica independe de autorização de órgão público, exigindo-se apenas prévio aviso à autoridade competente (art. 5º, XVI, CF). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Noções de Direito',
'À luz da sistemática constitucional afeta à base e aos objetivos da ordem social, é correto afirmar que:',
'A União editou diploma normativo dispondo sobre o alicerce de sustentação e os objetivos gerais a serem alcançados com a implementação de uma série de direitos ofertados aos distintos segmentos da sociedade, a exemplo da seguridade social, da educação, da cultura e do desporto. De acordo com esse diploma normativo, o conjunto desses direitos (1) tem por base a preeminência do lazer e, por objetivos, (2) a plena realização da personalidade individual, que deveria ser analisada de modo separado da coletividade, e (3) a preservação da livre iniciativa e o aumento do lucro.',
'',
'["os conteúdos descritos em 1, 2 e 3 destoam da ordem constitucional;","os conteúdos descritos em 1, 2 e 3 estão em harmonia com a ordem constitucional;","apenas o conteúdo descrito em 3 está em harmonia com a ordem constitucional;","apenas os conteúdos descritos em 2 e 3 estão em harmonia com a ordem constitucional;","apenas os conteúdos descritos em 1 e 2 estão em harmonia com a ordem constitucional."]'::jsonb,
'A',
'Base no lazer, foco na realização individual separada da coletividade e no lucro destoam da ordem social constitucional, cujo primado é o trabalho e o bem-estar coletivo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Noções de Direito',
'Considerando a disciplina constitucional:',
'Joana, Antônia e Nana, estudiosas das políticas de segurança pública, travaram intenso debate a respeito das competências constitucionais dos órgãos que atuam nessa área. Joana afirmou que compete primordialmente à polícia federal prevenir e reprimir o tráfico ilícito de entorpecentes e drogas afins, sem prejuízo da atuação de outros órgãos públicos. Antônia defendeu que compete à polícia civil apurar as infrações penais, ressalvada a competência dos órgãos da União, incluindo aquelas praticadas pelos integrantes da polícia penal. Nana, por sua vez, defendeu que as polícias penais estão imediatamente vinculadas ao comandante do batalhão de cada área e mediatamente ao governador do Estado ou do Distrito Federal, conforme o caso.',
'',
'["apenas Nana está certa;","apenas Antônia está certa;","Joana, Antônia e Nana estão certas;","Joana, Antônia e Nana estão erradas;","apenas Joana e Antônia estão certas."]'::jsonb,
'E',
'Joana e Antônia descrevem corretamente as competências da polícia federal e da civil; Nana erra quanto à vinculação das polícias penais. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Noções de Direito',
'Everardo, seu professor, informou-lhe, corretamente, que se tratava de atividade típica de:',
'Marília, estudante de direito, tinha sérias dúvidas a respeito do sentido das expressões chefe de Estado e chefe de governo, principalmente ao considerar a atividade desempenhada pelo presidente da República como chefe da Administração Pública federal.',
'',
'["chefe de governo, designativo utilizado, em sistemas parlamentaristas, para indicar o agente que desempenha funções próprias de primeiro-ministro;","chefe de Estado, designativo utilizado, em sistemas parlamentaristas, para indicar o agente que desempenha funções próprias de primeiro-ministro;","chefe de governo, que costuma ser escolhido, em sistemas parlamentaristas, no âmbito do órgão legislativo, e que desempenha maior número de poderes apenas simbólicos;","chefe de Estado, designativo utilizado, em sistemas presidencialistas e parlamentaristas, para indicar o primeiro mandatário, responsável pelas principais decisões políticas;","chefe de Estado, designativo adotado em conjunto com o de chefe de governo apenas em regimes semipresidenciais, nos quais prepondera a escolha popular do primeiro mandatário."]'::jsonb,
'A',
'Como chefe da Administração Pública federal, o Presidente desempenha função típica de chefe de governo, papel que, no parlamentarismo, cabe ao primeiro-ministro. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Noções de Direito',
'Tendo em vista que tal ato administrativo foi praticado segundo critérios de oportunidade e conveniência de Maria, a doutrina de Direito Administrativo o classifica, quanto ao grau de liberdade do agente, como ato:',
'Maria, perita criminal da Polícia Civil do Estado do Rio de Janeiro, que exerce a função de diretora do Instituto de Criminalística Carlos Éboli (ICCE), recebeu novos equipamentos adquiridos pela instituição para modernização das perícias. Dessa forma, será possível a realização de exames mais precisos que possibilitarão identificar, por exemplo, uma droga com técnica avançada e descobrir entorpecentes novos no mercado. Para melhor otimizar e aproveitar o uso desses equipamentos, Maria praticou ato administrativo determinando que o setor específico para elaboração de laudos de constatação de substância entorpecente fosse transferido das salas 101 e 102 para as salas 202 a 204 do mesmo prédio do ICCE, por serem mais amplas e com melhor iluminação.',
'',
'["vinculado, pois o agente público atua com total grau de liberdade;","composto, pois o agente público precisa comprovar tanto a oportunidade, como a conveniência;","concreto, pois o agente público impõe obrigação aos demais servidores do setor;","discricionário, pois o agente público atua com certo grau de liberdade;","bilateral, pois o agente público atua com liberdade que é imposta aos demais servidores do setor."]'::jsonb,
'D',
'Ato praticado segundo oportunidade e conveniência é ato discricionário, no qual o agente atua com certo grau de liberdade. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Noções de Direito',
'Insatisfeito com as conclusões do laudo, João da Silva procurou advogado que lhe explicou que, de acordo com a doutrina de Direito Administrativo, o citado laudo goza do atributo da:',
'No bojo de inquérito policial em que se apura a eventual prática do crime de falsidade material, consistente na suposta assinatura de Maria em um contrato de locação, o Instituto de Criminalística Carlos Éboli (ICCE) elaborou perícia grafotécnica concluindo que a assinatura analisada é proveniente do punho de pessoa identificada como João da Silva. O laudo de exame grafotécnico foi elaborado por peritos criminais com as devidas cautelas técnicas e legais.',
'',
'["presunção de veracidade, que não é absoluta, pois admite prova em sentido contrário;","imperatividade, que vincula a autoridade policial na ocasião da conclusão das investigações;","presunção de legitimidade, que somente pode ser afastada por três novos laudos;","exigibilidade, que vincula os demais agentes públicos que atuarem no caso, salvo se houver superveniência de notícia de prova nova;","autoexecutoriedade, que vincula os demais agentes públicos que atuarem no caso, salvo se houver superveniência de efetiva prova nova."]'::jsonb,
'A',
'O laudo pericial, como ato administrativo, goza de presunção de veracidade relativa (juris tantum), admitindo prova em contrário. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Noções de Direito',
'Dessa forma, com base no Estatuto dos Funcionários Públicos Civis do Poder Executivo do Estado do Rio de Janeiro (Decreto-Lei nº 220/1975), o secretário de Polícia Civil verificou que o afastamento de José era necessário para que não continuasse influindo na apuração da falta e, de forma fundamentada, decretou sua suspensão preventiva:',
'José, perito criminal da Polícia Civil do Estado do Rio de Janeiro, que exerce a função de diretor de determinado Posto Regional de Polícia Técnica e Científica, responde a processo administrativo disciplinar (PAD) por falta grave. No curso do PAD, ficou comprovado que José, no exercício das funções, está ocultando provas imprescindíveis para total elucidação dos fatos apurados.',
'',
'["por sessenta dias, período no qual José fará jus ao recebimento de sua remuneração com valor proporcional ao seu tempo de serviço e não poderá manter consigo sua arma, distintivo e carteira funcional;","por cento e vinte dias, período no qual José fará jus ao recebimento de sua remuneração com valor proporcional ao seu tempo de contribuição e serão recolhidos seus bens patrimoniais, como arma, distintivo e carteira funcional;","como medida acautelatória, e José terá sua arma, distintivo, carteira funcional ou qualquer outro bem patrimonial que mantenha mediante cautela devidamente recolhidos, caso tal providência ainda não tenha sido tomada;","como medida de antecipação de pena, e José terá sua arma devidamente recolhida, caso tal providência ainda não tenha sido tomada, sendo mantidos consigo os demais bens patrimoniais, como distintivo e carteira funcional;","como medida cautelar, e será vedado o recolhimento da arma, do distintivo, da carteira funcional ou de qualquer outro bem patrimonial público que José mantiver mediante cautela por força de prerrogativa legal."]'::jsonb,
'C',
'A suspensão preventiva é medida acautelatória, com recolhimento de arma, distintivo e carteira funcional caso ainda não providenciado. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Noções de Direito',
'Os filhos de João buscaram atendimento na Defensoria Pública, alegando que sofreram danos materiais e morais em razão da demora injustificada para liberação do corpo de seu pai, sendo-lhes informado que era:',
'João foi vítima de homicídio doloso causado por envenenamento e seu corpo foi levado ao Instituto Médico Legal da Polícia Civil do Estado Alfa, para realização de exame necroscópico. Após ser dada entrada do corpo no IML, a policial civil que fazia atendimento aos cidadãos informou aos filhos de João que o corpo de seu pai estaria liberado, no máximo, na manhã do dia seguinte, razão pela qual já poderiam providenciar o velamento e o sepultamento para a tarde do dia seguinte. Os familiares de João, assim, adotaram todas as medidas para a realização do enterro no dia seguinte. Por divergência interna entre as equipes de peritos legistas de plantão no IML, consistente em desentendimento sobre quem seria o responsável por fazer a perícia em razão do horário de entrada do cadáver, o corpo de João somente foi liberado cinco dias depois.',
'',
'["viável o ajuizamento de ação indenizatória em face da Polícia Civil estadual, mediante comprovação da culpa ou do dolo dos policiais envolvidos;","viável o ajuizamento de ação indenizatória em face do Estado Alfa, independentemente de comprovação da culpa ou do dolo dos policiais envolvidos;","viável o ajuizamento de ação indenizatória diretamente em face dos policiais envolvidos, independentemente da comprovação da culpa ou do dolo, assegurado o direito de regresso contra a Polícia Civil estadual;","inviável o ajuizamento de ação indenizatória em face do legitimado, pois a Administração Pública não está vinculada à conduta de seus servidores, exceto se praticarem algum crime no exercício das funções;","inviável o ajuizamento de ação indenizatória em face do legitimado, pois não houve dolo ou culpa dos policiais envolvidos, que deverão responder tão somente na esfera disciplinar."]'::jsonb,
'B',
'Pela responsabilidade objetiva do Estado (art. 37, §6º, CF), cabe ação indenizatória contra o Estado Alfa, independentemente de culpa ou dolo dos agentes. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Noções de Direito',
'Em relação à chamada “quebra da cadeia de custódia”, é correto afirmar que:',
'',
'',
'["a incompletude dos documentos importa em quebra da cadeia de custódia, ainda que hígidos o exercício da ampla defesa e do contraditório;","a quebra da cadeia de custódia refere-se à idoneidade do caminho que deve ser percorrido pela prova até sua análise pelo perito;","a quebra da cadeia de custódia importa no reconhecimento de interferência circunstancial durante o trâmite processual, resultando na imprestabilidade da prova;","a comprovação acerca de qualquer adulteração no procedimento probatório e consequente quebra da cadeia de custódia compete ao Ministério Público;","a não identificação de elementos que demonstrem cabalmente a adulteração de documentos não leva à quebra da cadeia de custódia, caso viável o exercício da ampla defesa e do contraditório."]'::jsonb,
'E',
'A não identificação de elementos que comprovem cabalmente a adulteração não leva à quebra da cadeia de custódia, se preservados o contraditório e a ampla defesa. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Noções de Direito',
'A inquirição de mulher em situação de violência doméstica e familiar ou de testemunha de violência doméstica, quando se tratar de crime contra a mulher, deverá observar a:',
'',
'',
'["garantia de que, apenas em hipóteses excepcionais, a mulher em situação de violência doméstica e familiar terá contato direto com investigados ou suspeitos e pessoas a eles relacionadas;","garantia de que, apenas em hipóteses excepcionais, familiares e testemunhas da mulher em situação de violência doméstica e familiar terão contato direto com investigados ou suspeitos e pessoas a eles relacionadas;","salvaguarda da integridade física, psíquica e emocional da depoente, considerada a sua condição peculiar de pessoa em situação de desenvolvimento psicológico;","inquirição direta pela autoridade judiciária ou policial, vedada a intermediação por terceira pessoa, em razão do cenário de violência doméstica e familiar;","não revitimização da mulher, evitando sucessivas inquirições sobre o mesmo fato nos âmbitos criminal, cível e administrativo, bem como questionamentos sobre a vida privada."]'::jsonb,
'E',
'A inquirição deve observar a não revitimização da mulher, evitando inquirições repetidas e questionamentos sobre sua vida privada. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 91, 'Noções de Direito',
'A coleta, a guarda provisória e a preservação de material com vestígios de violência serão realizadas pelo:',
'',
'',
'["Instituto Médico Legal ou Centro de Atenção Psicossocial mais próximo;","Instituto de Criminalística ou hospital de campanha mais próximo;","Instituto Médico Legal ou por serviço credenciado do sistema de saúde mais próximo;","Instituto de Criminalística ou unidade de Polícia Técnico-Científica civil ou militar;","Instituto Médico Legal ou unidade de pronto atendimento mais próxima."]'::jsonb,
'C',
'A coleta, guarda provisória e preservação do material com vestígios serão feitas pelo IML ou por serviço credenciado do sistema de saúde mais próximo. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 92, 'Noções de Direito',
'Sobre o uso de algemas, é correto afirmar que:',
'',
'',
'["é possível o uso de algema de calcanhar, acompanhada ou não das algemas de pulso, para evitar o risco de fuga do réu;","não é possível seu uso no réu durante a Sessão Plenária do Júri, em razão do risco de influência dos jurados;","a opinião de policiais responsáveis pela escolta sobre a garantia da segurança dos presentes é irrelevante;","a necessidade de preservar a integridade física dos próprios policiais não pode ser invocada como fundamento válido;","não é possível seu uso no réu durante a realização da oitiva na audiência de custódia."]'::jsonb,
'A',
'É admissível o uso de algema de calcanhar, com ou sem as de pulso, para evitar o risco de fuga do réu, observada a necessidade concreta. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 93, 'Noções de Direito',
'Quando da ocorrência de fato violento no curso de operações policiais, a autoridade policial, ao tomar conhecimento da ocorrência de lesão corporal ou homicídio decorrente de oposição à intervenção policial, deverá observar as seguintes diretrizes básicas:',
'',
'',
'["requisitar imediato deslocamento de equipe de apoio policial, para garantir o isolamento da vítima ou do corpo da vítima, caso ainda não tenha sido providenciado;","requisitar o concurso da Polícia Técnico-Científica, que deverá recolher para perícia todo material capaz de determinar a causa e a autoria do respectivo fato;","em caso de lesão corporal, a vítima deve ser socorrida prioritariamente pela polícia, devendo ser acompanhada, sempre que possível, por membro da família;","caberá à Polícia Técnico-Científica dirigir-se ao local, independentemente de provocação, para o colhimento de todas as provas disponíveis;","requisitar aos policiais envolvidos, quando necessárias à formação de seu convencimento, as perícias pertinentes, inclusive laudos prévios, quando viáveis."]'::jsonb,
'B',
'Entre as diretrizes, cabe requisitar o concurso da Polícia Técnico-Científica, que recolherá para perícia o material capaz de apontar causa e autoria. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 94, 'Noções de Direito',
'Em relação à prova pericial no delito de furto qualificado pelo rompimento de obstáculo, é correto afirmar que:',
'',
'',
'["não pode ser substituída por outro meio de prova caso os vestígios do delito tenham desaparecido ou se tornem indisponíveis;","não pode ser substituída pela prova testemunhal caso o delito apurado não deixe vestígios sensíveis;","pode ser substituída pela prova documental se o produto do furto detiver origem controlada e puder ser individualizado;","pode ser substituída pela prova testemunhal caso o produto do furto tenha sido restituído à vítima ou a seu real proprietário;","pode ser substituída por outro meio de prova se as circunstâncias do crime não permitirem a confecção do laudo."]'::jsonb,
'E',
'No furto qualificado por rompimento de obstáculo, a perícia pode ser substituída por outro meio de prova quando as circunstâncias não permitirem o laudo. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 95, 'Noções de Direito',
'A respeito do tema consumação e tentativa, é correto afirmar que:',
'',
'',
'["o estupro de vulnerável se consuma com a prática de ato de libidinagem específico ofensivo à dignidade sexual da vítima;","a tentativa incruenta é modalidade de crime tentado no qual a vítima sofre ferimentos;","quanto mais perto da consumação, maior será a fração redutora, pois menor a reprovabilidade da conduta;","nos crimes de tipo misto alternativo, a prática de um dos verbos já é suficiente para a consumação da infração;","a aferição da quantidade de pena a ser reduzida pela tentativa decorre da culpabilidade do agente."]'::jsonb,
'D',
'Nos crimes de tipo misto alternativo, a prática de apenas um dos verbos (núcleos) já basta para consumar a infração. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 96, 'Noções de Direito',
'Compõem o conceito de sujeitos da conduta típica:',
'O tipo penal é a ferramenta fundamental para limitar o poder punitivo do Estado e determinar a liberdade de conduta dos cidadãos.',
'',
'["autor, réu e juiz;","juiz, promotor, defensor e réu;","sujeito ativo, sujeito passivo e o Estado;","juiz, promotor e réu;","agente, vítima e testemunha."]'::jsonb,
'C',
'Os sujeitos da conduta típica são o sujeito ativo, o sujeito passivo e o Estado (titular do direito de punir). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 97, 'Noções de Direito',
'Constituem elementos do tipo objetivo:',
'',
'',
'["elementos descritivo e normativo;","objeto material e objeto jurídico;","conduta verbal e sujeito;","ação ou omissão e elementares;","núcleo do tipo e verbo do tipo."]'::jsonb,
'A',
'O tipo objetivo é composto pelos elementos descritivo e normativo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 98, 'Noções de Direito',
'Do ponto de vista legislativo, constitui espécie de crime contra a vida:',
'',
'',
'["lesão corporal seguida de morte;","abandono de recém-nascido com resultado morte;","maus-tratos com resultado morte;","instigação, auxílio ou induzimento à automutilação;","tortura com resultado morte."]'::jsonb,
'D',
'A instigação, auxílio ou induzimento à automutilação é, legislativamente, espécie de crime contra a vida (Capítulo I do CP). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 99, 'Noções de Direito',
'O delito de violação de domicílio configura-se modalidade qualificada quando praticado:',
'',
'',
'["mediante destreza;","com rompimento de obstáculo;","mediante ardil;","em vigilância epidemiológica;","durante a noite."]'::jsonb,
'E',
'A violação de domicílio é qualificada quando praticada durante a noite (entre outras hipóteses do §1º do art. 150). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 100, 'Noções de Direito',
'Sobre o delito de ameaça, é correto afirmar que:',
'',
'',
'["o sujeito ativo tem o objetivo de alcançar uma ação ou inação da vítima;","quando praticado no âmbito de violência doméstica, a ação penal é pública incondicionada;","quando exercido no curso de inquérito policial configura crime contra a Administração Pública;","o fato de alguém estar sob o efeito de álcool afasta a possibilidade de configuração do delito;","a chamada “ameaça condicionada” configura o delito de constrangimento ilegal."]'::jsonb,
'C',
'No crime de ameaça, o Estado tutela a liberdade individual; a competência para apurá-lo não o torna crime contra a Administração Pública mesmo no curso de inquérito — e as demais afirmativas estão incorretas, restando a C como gabarito oficial da banca.'
from public.exams where slug = 'pc-rj-2022-perito-legista'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
