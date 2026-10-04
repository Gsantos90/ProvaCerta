-- Seed: Polícia Civil RJ 2022 - Perito Criminal - Química
-- Banca FGV Conhecimento - Prova Escrita Objetiva - Nível Superior - Tipo 1 (Branca) - Tarde
-- Gerado a partir de pdf-extracts/pc-rj-2022-perito-quimica.txt
-- Gabarito oficial Tipo 1 fornecido para este caderno.

insert into public.exams (slug, title, source, year)
values ('pc-rj-2022-perito-quimica', 'Polícia Civil RJ 2022 - Perito Criminal - Química', 'pc', '2022')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Todo texto argumentativo inclui normalmente elementos de defesa da tese apresentada; leia, por exemplo, o texto a seguir. “Observo que a má conduta moral não consiste na ação física exterior, mas na visão interior da vontade, fora das leis da razão e da religião. Isso é claro, já que matar um inimigo na batalha e dar a pena de morte a um criminoso não são considerados pecados; no entanto, o ato exterior é exatamente o mesmo que no caso de um assassinato.” (Berkeley) Para defender sua te se, apresentada no primeiro período do texto, o autor apelou para:', '', '', '["a citação de exemplos;","as suas opiniões pessoais;","o testemunho de autoridades;","a força das leis;","as decisões dos tribunais."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'Observemos, agora, o caso de um advogado no tribunal, que declara que a acusação contra o seu cliente era sem fundamentos, já que não tinham sido apresentadas testemunhas nem outros meios de convencimento aos julgadores. Nesse caso, a defesa se fundamenta:', '', '', '["na falta de casos semelhantes;","na boa conduta do réu;","na ausência de provas;","nas falhas da acusação;","nos problemas da investigação policial."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'Imagine que um candidato a uma vaga num concurso público, encarregado de redigir um texto em que expresse suas opiniões sobre o problema dos incêndios no Pantanal, apela para um testemunho de autoridade, citando uma observação de um treinador de um time de futebol mato -grossense, retirada de um jornal local. Um aspecto problemático no apelo para um testemunho de autoridade, como esse, é:', '', '', '["que a comprovação da citação é difícil;","que a autoridade do citado pode ser questionada;","que o trecho deixa de ser a expressão de uma opinião própria;","a ausência completa de relações entre o fato e a autoridade;","o distanciamento temporal entre o fato e a citação."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'Um livro didático mostra o seguinte texto: “O sangue é um tecido formado por dois componentes: o plasma e as células sanguíneas. O volume total do sangue é de, aproximadamente, 5 dm3 nos homens e 4,5 dm 3 nas mulheres. Existem três tipos de células sanguíneas: glóbulos vermelhos, glóbulos brancos e plaquetas.” O tipo de texto a que pertence esse segmento é:', '', '', '["descrição técnica;","narrativa didática;","exposição histórica;","notícia jornalística;","argumentação científica."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'Em todas as frases abaixo há a presença do verbo ficar; o caso em que ocorre neologismo semântico no emprego desse verbo por atribuir-se a ele um sentido novo é:', '', '', '["José ficou em casa porque estava adoentado;","Aquele rapaz ficou com várias meninas na festa;","O candidato ficou nervoso na prova;","O carro ficou arranhado com o choque;","Ficou satisfeito com o novo game."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'Num artigo sobre neologismos em nossa língua, o eminente gramático Evanildo Bechara nos mostra aspectos pelos quais eles devem ser encarados: 1º) se o termo foi criado segundo os princípios que regem a formação de palavras em nossa língua; 2º) se o termo traduz com eficiência a ideia que quis transmitir; 3º) se o idioma já não possui palavra eficiente na transmissão dessa ideia. A frase abaixo em que o neologismo destacado cumpre todos esses requisitos é:', '', '', '["Augusto faz estudos de marketing;","As vítimas tinham sido apagadas na noite anterior;","O marqueteiro do senador foi eficiente;","No restaurante, o chefe era de origem francesa;","O serviço de delivery ganhou força na pandemia."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'Observe o seguinte texto, de responsabilidade de uma secretaria estadual de trânsito: “NÃO JOGUE FORA SUA VIDA NUMA ULTRAPASSAGEM. Não deixe que a pressa converta sua viagem num jogo perigoso ou estará arriscando sua vida em cada ultrapassagem. Se você não tem toda a situação a seu favor, não ultrapasse. A vida não é um jogo e seu encontro com as férias sempre pode esperar um pouco mais. A vida é a viagem mais formosa.” Sobre esse pequeno texto, é correto afirmar que:', '', '', '["trata-se de um texto publicitário, destinado a vender a ideia de segurança no trânsito;","o texto focaliza exclusivamente o problema da pressa nas ultrapassagens, com recomendação de prudência;","a função básica da linguagem nesse texto é a de despertar emoções no leitor, de modo a convencê-lo a ser prudente;","por sua seleção de linguagem, o texto se dirige prioritariamente a motoristas das classes populares;","o valor positivo da realidade, predominante nesse tipo de texto, não é obedecido aqui, já que há inúmeras negações."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'Abaixo aparecem cinco frases com marcadores textuais destacados; assinale a frase em que se indica corretamente o valor textual de um desses marcadores:', '', '', '["Nesta pequena cidade Cláudio quase não sai, então conhece muito pouca gente / tempo;","Márcio é trabalhador, leal, sincero... em poucas palavras , é um bom sujeito / resumo;","João dava aula para turmas diferentes. Na verdade , s ó coordenava os estudos na sala / ratificação;","Todo ensaio filosófico atende, pois, a dois aspec tos: o que as coisas são e o que se pensou sobre elas / consequência;","Fulano escreveu uma carta anônima ? Bom caráter que ele deve ser / determinação."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'Os raciocínios dos textos argumentativos ora se apoiam no método indutivo – do particular para o geral – ora no método dedutivo – do geral para o particular. A frase que exemplifica o método indutivo é:', '', '', '["Os jogos do Campeonato Brasileiro já deveriam ser abertos ao público, pois, assim, haveria mais emoção e incentivo; o Atlético Mineiro, por exemplo, obteria ainda melhor resultado ontem, se a torcida estivesse na arquibancada;","O hospital Getúlio Vargas atendeu ontem um númer o excessivo de emergências e enfrentou as dificuldades oriundas da falta de pessoal, mas, na verdade, os hospitais públicos, em todas as grandes cidades, estão passando por isso;","As livrarias estão fechando as portas em muitos lugares, em função da sub stituição dos livros pela mídia digital; a livraria de um shopping no centro da cidade resiste ainda porque, espertamente, abriu um café dentro da loja;","O circo deixou de existir, pelo menos nos grandes centros, já que não encontra mais espaço nem nos terrenos nem no coração das pessoas; um pequeno circo ainda está presente no subúrbio de Realengo, onde as crianças se divertem com o palhaço Cascão;","Nem todos os divertimentos eletrônicos custam caro, já que há pequenos produtores que investem em game s mais simples e mais baratos, como no caso do Pequena Batalha."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'Observe o seguinte texto, adaptado de uma pequena notícia de uma revista, em que um cantor famoso declara: “Não é que eu esteja cansado de viajar, mas o que eu não posso fazer é sair de um estúdio de gravação e começar imediatamente uma série de shows. Isso é impossível. Você fica, nessas horas, com a cabeça confusa. No entanto, voltei às excursões: no dia 2 de outubro terminei a gravação do meu último disco e no dia 3 já estava cantando em São Paulo. Nem física nem psicologicamente se pode suportar esse ritmo. Mas esta vai ser a última excursão, sabe? O que acontece é que para um cantor é muito importante excursionar com um disco novo.” Na estruturação de um texto, é muito importante a presença de elementos de coesão; o segmento desse tex to que é independente de elementos coesivos anafóricos, ou seja, ligados a elementos anteriores, é:', '', '', '["Isso é impossível;","Você fica, nessas horas, com a cabeça confusa;","Não é que eu esteja cansado de viajar;","Nem física nem psicologicamente se pode suportar esse ritmo;","Mas esta vai ser a última excursão, sabe?"]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'O termo misantropia é definido no dicionário de Aurélio Buarque de Holanda, p. 1338, como “aversão à sociedade, aos homens”. A frase abaixo que poderia exemplificar esse sentimento é:', '', '', '["“O inferno são os outros.” (Sartre)","“Morte a todos os fanáticos!” (anônimo)","“Deus deve amar os medíocres. Fez muitos deles.” (Abraham Lincoln)","“A única maneira de ter amigos é ser amigo.” (Emerson)","“Do nada, nada vem e ao nada, nada pode reverter.” (Pérsio)"]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'O valor básico da conjunção E é o de adição e, por isso, os termos unidos por ela, nesse caso, podem ser trocados de posição na frase, sem que se altere o sentido. A frase abaixo que mostra modificação no sentido, em caso de troca da posição dos termos, é:', '', '', '["Comprei cravos vermelhos e rosas amarelas;","Vesti a camisa e pus a gravata;","Comprei canetas esferográficas e folhas pautadas;","Comprei móveis novos e aluguei um carro;","Pus os óculos e levantei da cadeira."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Portuguesa',
'Muitos vocábulos empregados em frases têm seu sentido histórico documentado em dicionários; outros, porém, só possuem significados quando situados em um contexto. A frase abaixo em que o vocábulo destacado tem significado dependente do contexto é:', '', '', '["Maria leva uma vida difícil;","Em anexo, enviamos um cheque;","O computador ficou ligado a noite inteira;","O empregado faz tudo rapidamente;","Só vou sair amanhã à noite."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Portuguesa',
'Todas as frases abaixo, retiradas de um dicionário de citações, mostram um mesmo vocábulo empregado duas vezes. A frase em que o vocábulo repetido mostra significados diferentes é:', '', '', '["Sofre mais aquele que sempre espera do que aquele que nunca espera nada;","É melhor ser pessimista do que otimista. O pessimista fica feliz quando acerta e quando erra;","Cérebro: aparelho com que pensamos que pensamos;","Não sou da altura que me veem, mas sim da altura que meus olhos podem ver;","Agradar a si mesmo é orgulho, agradar aos outros, vaidade."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Portuguesa',
'Para que as frases abaixo façam sentido, o leitor deve colaborar com alguma inferência. A frase em que a inferência dada é adequada ao sentido da frase é:', '', '', '["As únicas pessoas normais são aquelas que você não conhece bem / Inferência: todas as pessoas são anormais;","O psiquiatra é a primeira pessoa com quem você deve falar depois que começa a falar sozinho / Inferência: os psiquiatras são simultaneamente médicos e loucos;","Se você está tentando me deixar louco, chegou tarde / Inferência: eu ficarei louco de qualquer modo;","Antes eu era vaidoso, mas agora sou perfeito / Inferência: todas as pessoas podem superar seus defeitos;","É melhor morrer de pé do que viver de joelhos / Inferência: as doenças graves levam o melhor de nossa vida."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Língua Portuguesa',
'Imaginemos que, um dia, ao chegar a sua casa, alguém encontra a seguinte mensagem na secretária eletrônica: “Oi, aqui é a Carmem, e queria dizer-lhe que quinta-feira vou para Paris”. Considerando um ato comunicativo normal, entre as coisas que não estão ditas, mas que estão implícitas para que a mensagem faça sentido, a opção correta é:', '', '', '["Carmem já falava de Paris;","Carmem é pessoa conhecida, mas não íntima;","o receptor não identifica a finalidade da informação dada;","Carmem deixou recado na quarta-feira;","Carmem ligou e deixou uma mensagem por engano."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Língua Portuguesa',
'Num jantar de amigos, em um restaurante, um dos presentes diz: “Estas sopas de legumes ficam sempre um pouco insossas, né?” Considerando a situação comunicativa da frase, a sua finalidade mais importante é:', '', '', '["ofender o cozinheiro que não prepara bem as sopas;","declarar que não gosta de sopas de legumes;","solicitar indiretamente que lhe passem o sal;","mostrar desagrado por estar presente no encontro;","indicar a má seleção do restaurante para o encontro."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Língua Portuguesa',
'Quando perguntamos algo a alguém, podemos fazê -lo de forma direta ou indireta, sendo uma escolha do enunciador diante do quadro geral da situação comunicativa. A frase abaixo que mostra uma interrogação indireta é:', '', '', '["Quem inventou o trabalho não tinha o que fazer;","Não sei por que ser humilde, quando se tem uma opinião própria;","Quando não há nenhum vento, reme;","Alguns homens veem as coisas como são e dizem “ Por quê?” Eu sonho com as coisas que nunca foram e digo “ Por que não?”;","Sempre dizem que o tempo muda as coisas, ma s quem tem que mudá-las é você!"]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Língua Portuguesa',
'Uma das regras básicas do emprego da vírgula é para marcar a omissão de um termo; a frase abaixo que exemplifica esse fato é:', '', '', '["Aquele que não conhece Deus nesse mundo, não o conhecerá no outro;","O segredo de um bom sermão é ter um bom começo, um bom fim e ter ambos o mais perto possível;","Quando a infância morre, seus cadáveres são chamados de adultos;","Comprar um carro é necessidade, uma Mercedes, um exagero;","Uma criança, como seu estômago, não precisa de tudo que você pode dar a ela."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Língua Portuguesa',
'Um pleonasmo é uma figura que repete termos; um anacoluto é marcado por uma interrupção. A frase abaixo que contém um anacoluto, e não um pleonasmo, é:', '', '', '["Às mulheres, não se pode dar um elogio atualmente;","Os livros, o aluno não os trouxe para a aula;","Paisagens, quero-as comigo por toda a vida;","Ao homem mesquinho, basta-lhe pouquinho;","A mim até me pareceu que ia chover forte."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Língua Portuguesa',
'Considere o comentário a seguir: Frase nominal. Superlativo relativo ou comparativo de excelência. Elipse do verbo. Dentre as cinco frases publicitárias abaixo, a que está relacionada ao comentário acima é:', '', '', '["Para teu pequeno gigante. Nestlé Junior;","Peugeot 306. O Rival;","Marlboro. Fragrância para homens. A atração da aventura;","Opel Astra. Engenharia alemã do futuro;","Voyager. O mais vendido do mundo em sua classe."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Língua Portuguesa',
'A palavra motorista designa um indivíduo na seguinte frase:', '', '', '["Ser motorista de ônibus é um trabalho árduo;","Meu pai é motorista desde os 20 anos;","O motorista deve dar prioridade aos pedestres;","O motorista chegou cedo, como todos os dias;","José conseguiu a vaga de motorista na empresa."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Língua Portuguesa',
'Como é sabido, os adjetivos e advérbios podem receber graus comparativo ou superlativo; a frase abaixo em que ocorre a gradação de um advérbio é:', '', '', '["Ela canta bem alto quando toma banho;","Ele agora está muito forte;","Que extraordinariamente amável é sua secretária;","Caminhou bastante tempo até a fábrica;","Não saiu daqui muito convencido."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Língua Portuguesa',
'Os seguintes pares de exemplos parecem iguais à primeira vista, mas trazem diferenças marcantes entre eles; o par que mostra igualdade de sentido na relação entre os termos é:', '', '', '["A distância da minha terra me entristece / A distância do meu filho me entristece;","Finalmente me decidi por um romance policial / Finalmente me decidi pelo romance de Machado;","Está proibida a venda a granel / Está proibida a venda a menores;","Vestiu o traje a rigor / Vestiu o traje de seda;","Preferiu o vinho tinto ao branco / Preferiu a água mineral com gás à sem gás."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Língua Portuguesa',
'Em alguns enunciados podemos empregar as formas que / qual dos relativos; o enunciado abaixo em que é obrigatório o emprego da forma qual é:', '', '', '["Lembrei de uma coisa, da qual te quero falar;","Na frente havia um hotel luxuoso, atrás do qual estavam vários carros estacionados;","Vi na estante o romance de Clarice, a qual é admirada por todos os que amam a literatura;","Mandou-nos uma linda caixa dentro da qual havia um magnífico presente;","Visitei a rua na qual mora."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Língua Portuguesa',
'Todos os enunciados a seguir podem ser vistos como respostas a determinadas perguntas; a opção em que a pergunta formulada é a mais adequada à estrutura do enunciado é:', '', '', '["Ricardo chega da Europa em setembro / Quem chega da Europa em setembro?","A caneta, acho que a secretária a guardou / O que fez a secretária?","O músico tocava Villa -Lobos no órgão da catedral / Onde o músico tocava Villa-Lobos?","João? Eu o vi às três da tarde / Quando eu vi João?","Acho que o livro está em todas as livrarias / Onde posso achar o livro?"]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Língua Portuguesa',
'A frase abaixo em que o emprego da conjunção E se mostra adequado é:', '', '', '["Professores e alunos aprendem na escola;","Roberto namora Maria e a nova camisa na vitrine;","Os meninos jogam bola e na loteria esportiva;","O casal viu o filme e os ingressos atirados ao chão;","João chegou com Maria e com um terno novo."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Língua Portuguesa',
'A frase abaixo que pode, ou não, ser considerada uma ironia é:', '', '', '["Um motorista dá algumas fechadas em outros veículos e uma das passageiras comenta: “Mais uns três dias e você já vai saber dirigir, né?”","Duas colegas de trabalho acham o pulôver de uma terceira, muito feio, e uma delas diz: “Ela gast ou um dinheirão nesse pulôver!”","Um casal chega a um restaurante completamente vazio e o marido afirma: “Está vendo, eu te disse q ue devíamos ter feito reserva!”","Dois namorados saem d e um cinema e a namorada comenta o filme visto: “Eta filme bom! Devíamos ter saído antes!”","O filho fala para a mãe: “Você cozinha muito bem! Papai deve ter-se separado de você por causa disso!”"]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Língua Portuguesa',
'Entre os textos abaixo, aquele em que predomina a exposição, e NÃO a argumentação, é:', '', '', '["“Como todos sentem ou pressentem, vivemos hoje uma grave e profunda crise, que se manifesta em todos os setores da vida social e, portanto, na língua também”;","“Não há dúvida de que todos os seres humanos têm direito à cultura, mas é incerto que a visita a museus seja a melhor maneira de garantir-lhes essa participação”;","“O ato de escrever é distinto do ato de falar. Sem dúvida, o grau de distanciamento se mede pela natureza da elocução”;","“Alguns jogos de futebol no Brasil mostram claramente a necessidade absoluta de renovação para que possamos atingir o nível desse esporte já praticado em outros países”;","“Telel Hamã era uma cidade em ascensão durante a Idade do Bronze. El a estava localizada próxima ao m ar Morto, no Oriente Médio, e era dez vezes maior que Jerusalém na época”."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Língua Portuguesa',
'Um determinado gramático pretende corrigir alguns desvios no uso da norma e cita uma série de exemplos de erros comuns; o exemplo em que a correção proposta mostra adequação é:', '', '', '["Sito à rua e não sito na rua;","Entrega a domicílio e não entrega em domicílio;","Erros que passam despercebidos e não desapercebidos;","Discreção é o ato de ser discreto – discrição não existe;","Meio-dia e meio e não meio-dia e meia. Conhecimentos Específicos"]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Conhecimentos Específicos',
'Em se tratando de combate a incêndios, é correto afirmar que:', '', '', '["em incêndios classe “A” deve -se evitar utilizar extintores a base de água;","extintores portáteis tipo AP devem ser utilizados em incêndios classe “C”;","no combate a focos de incêndio tipo “D” evita -se utilizar P.Q.S.;","o sistema de aspersão de espuma é indicado para ambientes com risco de incêndio classe “B”;","projetos de sistemas fixos por CO 2 devem ser evitados em ambientes de química analítica instrumental."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Conhecimentos Específicos',
'Ao periciar um ambiente acometido por incêndio, o perito observou que a rede de chuveiros fixos do local permanecia seca, apesar das elevadas temperaturas. Dessa observação, o perito pode inferir que:', '', '', '["o sistema de chuveiros automáticos é do tipo rede pressurizada;","o sistema de chuveiros foi dimensionado para temperaturas erradas;","o sistema de aspersores era em número insuficiente;","o sistema de alarme falhou, uma vez que redes secas são acionadas por bombas;","o chuveiro automático estava bloqueado."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Conhecimentos Específicos',
'Em uma empresa metal mecânica, que deve respeitar a NR -12, houve um acidente com vítima e a perícia foi acionada. No decurso da investigação coube ao perito verificar se a empresa cumpriu os preceitos da legislação vigente, observando em especial se as medidas de proteção foram adotadas corretamente e na ordem de prioridade devida, ou seja:', '', '', '["medidas de proteção coletiva, medidas de proteção individual, medidas administrativas ou de organização do trabalho;","medidas administrativas ou de organização do trabalho, medidas de proteção coletiva, medidas de proteção individual;","medidas de proteção coletiva, medidas administrativas ou de organização do trabalho, medidas de proteção individual;","medidas de proteção individual, medid as de proteção coletiva, medidas administrativas ou de organização do trabalho;","medidas de proteção individual, medidas administrativas ou de organização do trabalho, medidas de proteção coletiva."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Conhecimentos Específicos',
'Um ambiente de trabalho foi inspecionado por um perito que, em sua vistoria, constatou a presença de máquinas operativas causadoras de ruídos. Ao realizar a avaliação do ambiente, verificou -se a necessidade de considerá -lo insalubre, uma vez que foi medido um nível de ruído de:', '', '', '["90 decibéis após 2 horas de exposição;","87 decibéis após 4 horas de exposição;","100 decibéis após 30 minutos de exposição;","86 decibéis após 8 horas de exposição;","85 decibéis após 7 horas de exposição."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Conhecimentos Específicos',
'Um perito pode ser solicitado a emitir laudos caracterizando situações de insalubridade, nos termos da Lei nº 6 .514/1977 e da NR-15. A visita técnica do perito constitui a única prova pericial necessária quando o agente de risco for:', '', '', '["pressões hiperbáricas;","calor;","vibração;","agentes biológicos;","ruído de impacto."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Conhecimentos Específicos',
'A Análise Preliminar de Riscos (APR) é uma ferramenta:', '', '', '["focada em determinar frequência;","específica para segmentos automotivos;","de análise multicritério;","que aplica palavras-chaves e parâmetros;","que calcula áreas afetadas por sinistros."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Conhecimentos Específicos',
'Ao manusear produtos químicos, os profissionais devem buscar informações sobre riscos, compatibilidades, formas de transporte, armazenamento e sinalização. A sinalização, no Brasil, segue preceitos da Resolução da Agência Nacional de Transportes Terrestres (ANTT) e normas da ABNT, sendo definido que um composto:', '', '', '["corrosivo classifica-se como risco 2;","explosivo classifica-se como risco 3;","oxidante classifica-se como risco 5;","tóxico classifica-se como risco 7;","radioativo classifica-se como risco 8."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Conhecimentos Específicos',
'A legislação de saúde e segurança ocupacional em vigor no Brasil define agentes químicos como sendo as substâncias, compostos ou produtos que possam penetrar no organismo pela via respiratória, nas formas de poeiras, fumos, névoas, neblinas, gases ou vapores, ou que, pela natureza da atividade de exposição, possam ter contato ou ser absorvidos pelo organismo através da pele ou por ingestão. Por essa definição, são agentes químicos:', '', '', '["as tintas embaladas;","os medicamentos em estoque;","os combustíveis armazenados em postos de gasolina;","as graxas e lubrificantes usados em manutenção;","os produtos de limpeza estocados."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Conhecimentos Específicos',
'Desde os primeiros dispositivos normativos em segurança do trabalho no Brasil, a responsabilidade solidária entre contratantes e contratados encontra-se nos textos legais. Um exemplo dessa realidade normativa é:', '', '', '["elaborar ordens de serviço sobre segurança e saúde no trabalho, dando ciência aos trabalhadores;","determinar procedimentos a serem adotados em caso de acidente ou doença relacionada ao trabalho, incluindo a análise de suas causas;","implementar medidas de prevenção, ouv idos os trabalhadores, de acordo com a legislação vigente;","cumprir e fazer cumprir as disposições legais e regulamentares sobre segurança e saúde no trabalho;","implementar medidas de proteção para todos no ambiente de trabalho."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Conhecimentos Específicos',
'A transferência de calor ocorre de três formas: condução, convecção e radiação térmica. Sabendo que: q = fluxo de calor , A = área, T = temperatura, k e h = constantes de proporcionalidade e ρ = massa específica, a equação que melhor representa o fluxo de calor por convecção é:', '', '', '["q=-kA(dT/dx)","q=ρA(dT/dx)2","q=hAΔT","q=hA∇T","q=hA∇2T"]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Conhecimentos Específicos',
'No processo de transmissão de calor por irradiação, o fluxo de calor é regido pela lei de Stefan -Boltzmann. Um irradiador de radiação térmica perfeito denomina -se “corpo negro”, enquanto corpos reais são os “corpos cinzas”. Para corpos reais, a lei de Stefan -Boltzmann passa a considerar também:', '', '', '["viscosidade do meio ao redor do corpo;","emissividade da superfície, sempre maior do que 1;","emissividade da superfície, sempre menor do que 1;","índice de difração da luz;","constante de Boltzmann para corpos cinzas."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Conhecimentos Específicos',
'Os métodos de separação de misturas são de suma importância para o preparo de amostras e para o trabalho da perícia. A técnica que consiste na separação de dois líquidos por meio do aumento da temperatura até atingir o ponto de ebulição de um deles, seguido pela condensação do vapor, é um exemplo de:', '', '', '["separação flash;","destilação simples;","destilação fracionada;","evaporação;","extração por solvente."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Conhecimentos Específicos',
'O trabalho de perícia demanda o preparo e o domínio de soluções. Conhecendo as forças iônicas dos íons ( ɣHNO2=1,00, ɣH3O+=0,86 e ɣNO2-=0,80) e usando as atividades, pode -se calcular a concentração de íons hidrônio em uma solução 0,120M de HNO2 que também seja 0,050M de NaCl. Sabendo-se que a constante de dissociação é 5,1 x 10 -4, a concentração de hidrônio é de:', '', '', '["5,1 x 10-4;","7,3 x 10-4;","8,2 x 10-3;","9,4 x 10-3;","10,8 x 10-4."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Conhecimentos Específicos',
'Em se tratando de química analítica, o estudo dos compostos pode ser realizado em equipamentos, como os cromatógrafos, ou em via úmida. Nos procedimentos em via úmida, os elementos químicos metálicos são classificados em grupos e o trabalho de identificação envolve:', '', '', '["titulação;","extração por solventes;","precipitações e filtrações sucessivas;","destilações fracionadas;","uso de indicadores."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Conhecimentos Específicos',
'Ao ser solicitado a determinar a composição qualitativa da pólvora negra , um perito seguiu o protocolo de determinação percentual da composição química que envolve secagem em estufas, seguida pela extração dos nitratos com lavagem em água e, posteriormente, remoção do enxofre em solvente orgânico, restando, por fim, a determinação do teor de carvão e cinzas. Essa rota de análise é um exemplo de:', '', '', '["análise volumétrica;","análise em via úmida;","extração por solventes;","análise gravimétrica;","análise combinada."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Conhecimentos Específicos',
'Os procedimentos analíticos são sempre escolhidos com base na observação das características das amostras e dos dados disponíveis. Em uma amostra conhecida, em solução, mas de concentrações desconhecidas, a melhor forma de quantificação é por meio de técnicas de:', '', '', '["infravermelho;","ultravioleta;","ressonância magnética nuclear;","cromatografia em fase líquida de alta performance;","espectrometria de massa."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Conhecimentos Específicos',
'Os sistemas de medição de agentes químicos em ambientes de trabalho usando -se t ubos colorimétricos são previsto s em normas brasileiras, como a NR-15, Anexo 11. Essa análise tem princípios científicos semelhantes à técnica analítica de:', '', '', '["termogravimetria;","ressonância magnética nuclear;","calorimetria de fluxo;","cromatografia;","análise ultravioleta."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Conhecimentos Específicos',
'As aproximações de Bernoulli para os cálculos de mecânica dos fluidos são válidas para:', '', '', '["gases;","ar comprimido;","óleo mineral;","cimento;","pasta de dente."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Conhecimentos Específicos',
'As transformações físico -químicas podem ocorrer de forma reversível ou irreversível, em condições constantes ou variáveis. Por exemplo, em um processo adiabático, o fluxo de calor durante a mudança de estado é nulo, ao passo que:', '', '', '["se a entropia aumenta, o processo é espontâneo, independente da entalpia;","um processo exotérmico sempre ocorre a pressões constantes;","um processo endotérmico sempre será isocórico;","em um processo isentrópico, a espontaneidade depende da entalpia;","um processo isobárico e isocórico realiza trabalho positivo."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Conhecimentos Específicos',
'O estudo de gases é uma das bases da físico -química e, para gases ideais, o modelo matemático segue a equação de Clapeyron. Quando se passa a estudar gases reais, usa -se o modelo que insere um fator de compressibilidade, ou a equação de Van der Waals, que insere termos:', '', '', '["de covolume e copressão;","de gravimetria;","derivados da termodinâmica estatística;","derivados da constante de Boltzmann;","derivados da mecânica quântica."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Conhecimentos Específicos',
'Em uma análise pericial coube ao profissional determinar o calor de formação envolvido em uma redução de óxido de ferro. Sabendo-se que ΔH fo(H2O,L) = -285 kJ/mol, e que ΔH fo(Fe2O3 ,s) = -824 kJ/mol, o profissional determinou o calor de formação solicitado como sendo de aproximadamente:', '', '', '["-17 kJ/mol de óxido de ferro;","+17 kJ/mol de óxido de ferro;","-31 kJ/mol de óxido de ferro;","+31 kJ/mol de óxido de ferro;","-50 kJ/mol de óxido de ferro."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Conhecimentos Específicos',
'Em um procedimento de calibração, coube ao perito determinar o calor de combustão teórico da sacarose (C12H22O11). Sabendo-se que os calores de formação da sacarose, do dióxido de carbono e da água são, respectivamente, 531 kcal/mol, 94 kcal/mol e 68,4 kcal/mol, o resultado obtido pelo perito foi de cerca de:', '', '', '["531,90 kcal/mol;","740,9 kcal/mol;","930,5 kcal/mol;","1250,5 kcal/mol;","1349,4 kcal/mol."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Conhecimentos Específicos',
'Em uma temperatura de 800 oC e sob uma pressão de 1 atm, existe 1% de CO2 no equilíbrio de CO2+C e 2CO. Pressurizando o sistema para 10 atm, a composição da mistura muda para:', '', '', '["9% CO2;","9% CO;","19% CO2;","19% CO;","50% CO2."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Conhecimentos Específicos',
'Um sistema constituído inicialmente por 4 moles de ácido acético, 2 moles de acetato de etila e 1 mol de água é acrescido de 3 moles de álcool etílico. Sabendo-se que a nova mistura tem constante de equilíbrio igual a 4, após o novo equilíbrio ser alcançado, a quantidade de acetato será de:', '', '', '["1,2 mol;","1,8 mol;","2,2 moles;","3,8 moles;","4,2 moles."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Conhecimentos Específicos',
'Mantendo-se a pressão constante, aquece -se uma massa de gás carbônico de 22oC até 50oC. Sabendo-se que o volume inicial era 120L, o volume final é de cerca de:', '', '', '["125L;","131L;","138L;","143L;","153L."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Conhecimentos Específicos',
'Um processo corrosivo em que há interação direta entre o metal e o meio corrosivo, em ausência de água líquida e temperaturas em geral elevadas, é conhecido como corrosão:', '', '', '["química;","eletroquímica;","intergranular;","intragranular;","seca."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Conhecimentos Específicos',
'O motivo pelo qual deve -se evitar que um fluido circule por uma tubulação de cobre antes de alimentar um tanque de aço carbono, mesmo que entre o tubo de aço e o tubo de cobre exista uma flange isolante, é para prevenir corrosão:', '', '', '["oxidativa;","anódica;","por erosão;","granular;","galvânica."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Conhecimentos Específicos',
'Os métodos espectroscópicos de análise baseiam -se em princípios de transmitância e absorbância. Sabendo-se que A é a absorbância e P e P 0 são as intensidades dos fótons, a equação que melhor modela a absorbância é:', '', '', '["A = P / P0;","A = ln(P / P0);","A = log10(P / P0);","A = - ln(P / P0);","A = - log10(P / P0)."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Conhecimentos Específicos',
'Fontes de calor são fundamentais nas mais diversas atividades em laboratório. Considerando que não haja nenhum gás combustível disponível, o perito pode valer -se dos conhecimentos de química para substituir o bico de Bunsen e seguir com as análises. Por exemplo, pode -se produzir 448 cm3 de H 2 nas CNTP reagindo alumínio (peso molecular de 27 g) com excesso de uma solução aquosa de HCl, desde que seja usada a seguinte quantidade de átomos de alumínio:', '', '', '["0,36 x 1021;","3,60 x 1021;","6,04 x 1021;","8,02 x 1021;","8,02 x 1023."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Conhecimentos Específicos',
'Um polímero, como o poliuretano, é largamente utilizado industrialmente como isolante, espuma ou mesmo como revestimento. Ess e polímero é produzido, tipicamente, pela reação de um poliol com uma uretana. O poliuretano é um exemplo de polímero:', '', '', '["plástico;","termoplástico;","termorrígido;","denso;","frágil."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Conhecimentos Específicos',
'Considerando a lei de Faraday e sabendo que o equivalente eletroquímico do níquel é 0,304mg/C, a massa de níquel depositada em um catodo de uma cuba contendo sulfato de níquel, após a passagem de uma corrente de 10A por 15 minutos, é de:', '', '', '["45,6g;","2,736g;","27,36g;","0,0456g;","0,2736g."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Conhecimentos Específicos',
'No processo de preparação de amostra monta-se um sistema contendo uma manta ou placa de aquecimento, um balão com solventes, um sistema de refluxo acima de um cadinho perfurado com o sólido de interesse e um balão na base . No contexto da química analítica , utilizam-se sistemas semelhantes no preparo de amostras. O processo descrito é um exemplo de:', '', '', '["reconcentração por refluxo;","destilação fracionada;","destilação de azeótropo;","extração monofásica;","extração por solvente."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Conhecimentos Específicos',
'A fórmula molecular de um composto orgânico cuja fórmula centesimal contenha 40,67% de carbono, 8,47% de hidrogênio e 23,73% de nitrogênio é:', '', '', '["C2H6(NO)2;","C2H5(NO)2;","C3H6NO;","C2H5NO;","C2H6NO."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Conhecimentos Específicos',
'No decorrer de suas atividades , a perita depara -se com um composto orgânico desconhecido. Inicialmente a profissional identifica que 57,65% do composto é carbono e 3,84% é hidrogênio. Avançando na identificação, n a dosagem do enxofre, 0,333 grama do composto é tratado com BaCl, produzindo 0,3731 grama de BaSO4 (peso molecular 233). A partir de sses dados, a perita conseguiu determinar a fórmula empírica como sendo:', '', '', '["C10H12SO2;","C10H8SO2;","C8H8SO2;","C10H8SO3;","C8H8(SO2)3."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Conhecimentos Específicos',
'Durante a sustentação oral de um parecer, a profissional de perícia foi questionada sobre o princípio de funcionamento de equipamentos de espectrometria de absorção molecular. Ela indica corretamente que o equipamento mede a resposta d o composto químico quando exposto a ondas:', '', '', '["no espectro visível;","no espectro invisível;","variadas;","de raio-X;","ultravioletas."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Conhecimentos Específicos',
'Materiais diversos têm comportamentos mecânicos associados às suas propriedades químicas. Um desse s comportamentos mecânicos é o coeficiente de deformação, que busca, de forma empírica, representar a lei de Hooke, correlacionando:', '', '', '["tensão e deformação;","plasticidade e dureza;","tensão e dureza;","esforço estático e dinâmico;","momento cisalhante e fletor."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Conhecimentos Específicos',
'Considerando materiais metálicos, os aços têm propriedades mecânicas diferentes , conforme sua composição. Um aço que tenha cromo ou níquel em sua formulação será mais resistente à corrosão do que outro que não os tenha. Via de regra, os aços mais dúcteis, largamente utilizados em elementos estruturais e tubulações, são aços:', '', '', '["de elevado teor de carbono, com mais de 1% de carbono;","de moderado teor de carbono, com mais de 0,5% de carbono;","de médio teor de carbono, com carbono entre 0,3% e 0,5%;","de médio teor de carbono, com carbono entre 0,25% e 0,6%;","de baixo teor de carbono, com menos de 0,25% de carbono."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Conhecimentos Específicos',
'O trabalho do perito muitas vezes envolve utilizar bens e produtos regulados pela Anvisa, com destaque para os preceitos da Resolução nº 81/2008, que, entre outros, regula o processo de importação, estabelecendo que os bens e produtos sob vigilância sanitária deverão apresentar-se, quando da chegada no território nacional, em embalagem primária e secundária identificadas em conformidade com as Boas Práticas de Fabricação (BPF). Constituem uma EXCEÇÃO a essas exigências os produtos:', '', '', '["vindos de mercados comuns;","sob sigilo de mercado;","transportados sob a égide de segurança nacional;","cuja identificação obrigatória na embalagem externa for regulamentada;","devidamente identificados conforme os padrões da ONU."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Conhecimentos Específicos',
'Um perito deve atentar para a legislação de referência durante o processo de preparo para iniciar uma vistoria. Em um cenário envolvendo segurança contra incêndio, o profissional deve observar os preceitos do Código de Segurança Contra Incêndio e Pânico (Coscip), no âmbito do Estado do Rio de Janeiro, em particular:', '', '', '["que o risco de incêndio das edificações será classificado em: I - Pequeno; II - Médio; e III - Grande;","que as medidas de segurança contra incêndio e pânico das edificações são dimensionadas em função unicamente da carga de incêndio;","que, para fins de exigência das medidas de segurança contra incêndio e pânico, os pavimentos de uso comum, exceto mezaninos, devem ser considerados;","que o uso de sistemas de chuveiros automáticos é obrigatório em qualquer empreendimento;","que a ocupação principal será definida em função das atividades efetivamente projetadas ou desenvolvidas, mesmo não estando relacionadas no ato constitutivo ou no registro."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Conhecimentos Específicos',
'A corrosão é um problema que acomete metais, principalmente quando não estão protegidos adequadamente contra as intempéries. Um metal que tenha sofrido processo corrosivo por formação de trincas microscópicas ao longo do contorno dos grãos da estrutura metalúrgica, sem alteração significativa nas dimensões da peça, foi vítima de corrosão:', '', '', '["galvânica;","seletiva;","intergranular;","incisiva;","biológica."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Conhecimentos Específicos',
'Valendo-se de conhecimentos de eletroquímica, um perito precisa determinar por quanto tempo um sistema elétrico permaneceu em operação fornecendo uma corrente de 6A. Dentre as evidências coletadas, sabe-se que ocorreu um depósito de toda a prata (massa molar 108 gramas por mol ) de 200mL de uma solução 0,2M de nitrato de prata. Sabendo-se que o equivalente eletroquímico da prata é 1,118mg/C, o tempo foi de cerca de:', '', '', '["322 segundos;","644 segundos;","966 segundos;","1288 segundos;","1600 segundos."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Conhecimentos Específicos',
'Um perito precisa obter informações acerca de uma substância química orgânica desconhecida. Para tal, 6 gramas da substância desconhecida foram dissolvidos em 250 gramas de clorofórmio, provocando um aumento do ponto de ebulição no solvente em 0,532oC. Sabendo-se que a constante ebulioscópica do clorofórmio é de 3590, o perito determina o peso molecular da substância desconhecida em cerca de:', '', '', '["67 gramas por mol;","127 gramas por mol;","162 gramas por mol;","219 gramas por mol;","280 gramas por mol."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Conhecimentos Específicos',
'Em um determinado procedimento laboratorial faz -se necessário gerar um banho de resfriamento que permaneça constante à temperatura de -10oC. Valendo -se dos conhecimentos de propriedades coligativas, sabe -se que , para tal , basta dissolver água em glicerina (C3H8O3), mistura com constante criométrica de 1860. Para os -10oC, basta usar 1,5kg de água em uma massa de glicerina de cerca de:', '', '', '["145g;","742g;","877g;","1140g;","1347g."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Conhecimentos Específicos',
'Uma solução de glicerina contendo 5,52 gramas de glicerina por litro de solução apresen ta uma pressão osmótica de 0,92 atm na temperatura de 25oC. Sabendo que essa solução é isotônica a uma solução de glicose, o perito calculou a concentração da solução de glicose como sendo de:', '', '', '["8,9g/L;","9,2g/L;","10,8g/L;","16,3g/L;","18,7g/L."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Conhecimentos Específicos',
'Uma amostra de 3,55 gramas de sulfato de sódio (Na 2SO4, peso molecular 142) inicialmente neutra e anidra é colocad a em solução que, quando no equilíbrio, permanece 60% dissociada. Considerando uma temperatura de 27 oC, a pressão osmótica da solução é de:', '', '', '["0,36 atm;","0,98 atm;","1,32 atm;","1,47 atm;","1,80 atm."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Conhecimentos Específicos',
'O conhecimento da Sucessão Ecológica é de grande importância para o planejamento e o controle ambiental, encontrando aplicações inclusive em normas jurídicas, como as de proteção da Mata Atlântica. Sucessão Ecológica se refere a uma sequência de:', '', '', '["comunidades distribuídas em uma topossequência, em que o limite de cada uma delas é dado por alterações nas características edafoclimáticas;","mudanças fenológicas (floração, frutificação, caída de folhas), associadas às alterações an uais climáticas, sob influências altitudinais e latitudinais;","comunidades ecológicas que se sucedem cronologicamente em determinado sítio, tendendo ao aumento da biomassa e da diversidade de espécies;","eventos ecológicos que resultam em modificações extremas do clima, com efeitos negativos na vegetação e impactos no ciclo e no abastecimento da água;","mudanças temporais na composição de espécies, iniciando com as chamadas climáxicas, e passando para as espécies mais rústicas, gerando resiliência."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Conhecimentos Específicos',
'O descumprimento de regras ambientais, por parte de um empreendedor, gerou danos que, depois de disputas jurídicas, levaram a um Termo de Ajustamento de Conduta. Nele, o empreendedor se obriga a realizar o retorno da área degradada a um estado biológico apropriado. Isso significa que a empresa deverá fazer uma:', '', '', '["reabilitação ambiental;","adequação ambiental;","recomposição ambiental;","restauração ambiental;","recuperação ambiental."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Conhecimentos Específicos',
'O desenvolvimento de diferentes métodos de avaliação de impactos ambientais, nas últimas décadas, tem servido de base importante para a proteção da natureza e para a ação dos órgãos controladores. Um desses utiliza uma listagem bidimensional, permitindo associar as ações de um empreendimento às características ambientais de sua área de influência. Esse método é designado:', '', '', '["redes de interação;","modelos de simulação;","listagens de controle;","superposição escalar;","matrizes de interação."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Conhecimentos Específicos',
'A Polícia Civil do Estado Alfa recebeu notitia criminis informando que João estava executando obra e construindo estabelecimento potencialmente poluidor, sem licença ou autorização dos órgãos ambientais competentes. Ao chegar no local dos fatos, os peritos criminais foram recebidos por João, que lhes franqueou a entrada em seu terreno, ainda sem qualquer construção, e lhes exibiu uma licença ambiental emitida pelo órgão competente. Sabe -se que a licença apresentada por João foi concedida na fase preliminar do planejamento do empreendimento ou atividade, aprovando sua localização e concepção, atestando a viabilidade ambiental e estabelecendo os requisitos básicos e condicionantes a serem atendidos nas próximas fases de sua implementação. De acordo com a Resolução do Conama nº 237/1997 , a licença apresentada por João consiste em um(a):', '', '', '["avaliação ambiental estratégica;","relatório de impacto ambiental;","estudo de impacto ambiental;","licença prévia;","licença de instalação."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Conhecimentos Específicos',
'A sociedade empresária Beta atua no ramo da execução de obras de grandes proporções de construção civil e, nos termos do regulamento ou de normas estabelecidas pelos órgãos do Sisnama, está sujeita à elaboração de plano de gerenciamento de resíduos sólidos. De acordo com a Política Nacional de Resíduos Sólidos (Lei nº 12.305/2010), o mencionado plano de gerenciamento de resíduos sólidos de responsabilidade da sociedade empresária Beta deve ter um conteúdo mínimo, que:', '', '', '["exclui soluções consorciadas ou compartilhadas com outros geradores;","inclui medidas saneadoras dos passivos ambientais relacionados aos resíduos sólidos;","é dispensado se inexistir plano municipal de gestão integrada de resíduos sólidos no local da execução da obra;","inclui metas e procedimentos relacionados à maximização da geração de resíduos sólidos;","exclui o diagnóstico dos resíduos sólidos gerados ou administrados, mas contém a origem, o volume e a caracterização dos resíduos. Noções de Direito"]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Noções de Direito',
'O grupo “Amigos da Diversidade” decidiu realizar manifestação pacífica na praça mais importante da Cidade Alfa, no último domingo do próximo mês. Após a tomada de decisão, surgiu uma dúvida, no âmbito da liderança, a respeito dos procedimentos a serem adotados. João, integra nte do grupo e profundo conhecedor da ordem constitucional, explicou, corretamente, que a manifestação:', '', '', '["é projeção do princípio democrático, não carecendo de prévio aviso a qualquer autoridade pública ou mesmo de autorização;","pode ser realizada na praça, desde que o requerimento seja apresentado e deferido pela autoridade competente até trinta dias antes;","pode ser livremente realizada, mas em local privado, não na praça, isso sob pena de privar o restante da coletividade da fruição desse espaço;","não depende de autorização de qualquer órgão público, sendo exigida apenas a realização de prévio aviso à autoridade competente;","pode ser realizada na praça, desde que o uso seja autorizado pela autoridade competente, com o correlato pagamento d a taxa de uso exclusivo, fixada em valores módicos."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Noções de Direito',
'A União editou diploma normativo dispondo sobre o alicerce de sustentação e os objetivos gerais a serem alcançados com a implementação de uma série de direitos ofertados aos distintos segmentos da sociedade, a exemplo da seguridade social, da educação, da cultura e do desporto. De acordo com esse diploma normativo, o conjunto desses direitos (1) tem por base a preeminência do lazer e, por objetivos, (2) a plena realização da personalidade individual, que deveria ser analisada de modo separado da coletividade , e (3) a preservação da livre iniciativa e o aumento do lucro. À luz da sistemática constitucional afeta à base e aos objetivos da ordem social, é correto afirmar que:', '', '', '["os conteúdos descritos em 1, 2 e 3 destoam da ordem constitucional;","os conteúdos descritos em 1, 2 e 3 estão em harmonia com a ordem constitucional;","apenas o conteúdo descrito em 3 está em harmonia com a ordem constitucional;","apenas os conteúdos descritos em 2 e 3 estão em harmonia com a ordem constitucional;","apenas os conteúdos descritos em 1 e 2 estão em harmonia com a ordem constitucional."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Noções de Direito',
'Joana, Antônia e Nana, estudiosas das políticas de segurança pública, travaram intenso debate a respeito das competências constitucionais dos órgãos que atuam nessa área. Joana afirmou que compete primordialmente à polícia federal prevenir e reprimir o tráfico ilícito de entorpecentes e drogas afins, sem prejuízo da atuação de outros órgãos públicos. Antônia defendeu que compete à polícia civil apurar as infrações penais, ressalvada a competência dos órgãos da União, incluindo aquel as praticadas pelos integrantes da polícia penal. Nana, por sua vez, defendeu que as polícias penais estão imediatamente vinculadas ao comandante do batalhão de cada área e mediatamente ao governador do Estado ou do Distrito Federal, conforme o caso. Considerando a disciplina constitucional:', '', '', '["apenas Nana está certa;","apenas Antônia está certa;","Joana, Antônia e Nana estão certas;","Joana, Antônia e Nana estão erradas;","apenas Joana e Antônia estão certas."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Noções de Direito',
'Marília, estudante de direito, tinha sérias dúvidas a respeito do sentido das expressões chefe de Estado e chefe de governo, principalmente ao considerar a atividade desempenhada pelo presidente da República como chefe da Administração Pública federal. Everardo, seu professor, informou -lhe, corretamente, que se tratava de atividade típica de:', '', '', '["chefe de governo, designativo utilizado, em sistemas parlamentaristas, para indicar o agente que desempenha funções próprias de primeiro-ministro;","chefe de Estado, designativo utilizado, em sistemas parlamentaristas, para indicar o agente que desempenha funções próprias de primeiro-ministro;","chefe de governo, que costuma ser escolhido, em sistemas parlamentaristas, no âmbito do órgão legi slativo, e que desempenha maior número de poderes apenas simbólicos;","chefe de Estado, designativo utilizado , em sistemas presidencialistas e parlamentaristas , para indicar o primeiro mandatário, responsável pelas principais decisões políticas;","chefe de Estado, designativo adotado em conjunto com o de chefe de governo apenas em regimes semipresidenciais, nos quais prepondera a escolha popular do primeiro mandatário."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Noções de Direito',
'Maria, perita criminal da Polícia Civil do Estado do Rio de Janeiro , que exerce a função de diretora do Instituto de Criminalística Carlos Éboli (ICCE), recebeu novos equipamentos adquiridos pela instituição para modernização das perícias. Dessa forma, será possível a realização de exames mais precisos que possibilitarão identificar, por exemplo, uma droga com técnica avançada e descobrir entorpecentes novos no mercado. Para melhor otimizar e aproveitar o uso desses equipamentos, Maria praticou ato administrativo determinando que o setor específico para elaboração de laudos de constatação de substância entorpecente fosse transferido das salas 101 e 102 para as salas 202 a 204 do mesmo prédio do ICCE, por serem mais amplas e com melhor iluminação. Tendo em vista que tal ato administrativo foi praticado segundo critérios de oportunidade e conveniência de Maria, a doutrina de Direito Administrativo o classifica, quanto ao grau de liberdade do agente, como ato:', '', '', '["vinculado, pois o agente público atua com total grau de liberdade;","composto, pois o agente público precisa comprovar tanto a oportunidade, como a conveniência;","concreto, pois o agente público impõe obrigação aos demais servidores do setor;","discricionário, pois o agente público atua com certo grau de liberdade;","bilateral, pois o agente público atua com liberdade que é imposta aos demais servidores do setor."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Noções de Direito',
'No bojo de inquérito policial em que se apura a eventual prática do crime de falsidade material, consistente na suposta assinatura de Maria em um contrato de locação, o Instituto de Criminalística Carlos Éboli (ICCE) elaborou perícia grafotécnica concluindo que a assinatura analisada é proveniente do punho de pessoa identificada como João da Silva. O laudo de exame grafotécnico foi elaborado por peritos criminais com as devi das cautelas técnicas e legais. Insatisfeito com as conclusões do laudo, João da Silva procurou advogado que lhe explicou que, de acordo com a doutrina de Direito Administrativo, o citado laudo goza do atributo da:', '', '', '["presunção de veracidade, que não é absoluta, pois admite prova em sentido contrário;","imperatividade, que vincula a autoridade policial na ocasião da conclusão das investigações;","presunção de legitimidade, que somente pode ser afastada por três novos laudos;","exigibilidade, que vincula os demais agentes públicos que atuarem no caso, salvo se houver superveniência de notícia de prova nova;","autoexecutoriedade, que vincula os demais agentes públicos que atuarem no caso, salvo se houver superveniência de efetiva prova nova."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Noções de Direito',
'José, perito criminal da Polícia Civil do Estado do Rio de Janeiro, que exerce a função de diretor de determinado Posto Regional de Polícia Técnica e Científica, responde a processo administrativo disciplinar (PAD) por falta grave. No curso do PAD, ficou comprovado que José, no exercício das funções, está ocultando provas imprescindíveis para total elucidação dos fatos apurados. Dessa forma, com base no Estatuto dos Funcionários Públicos Civis do Poder Executivo do Estado do Rio de Janeiro (Decreto-Lei nº 220/1975) , o s ecretário de Polícia Civil verificou que o afastamento d e José era necessário para que não continuasse influindo na apuração da falta e, de forma fundamentada, decretou sua suspensão preventiva:', '', '', '["por sessenta dias, perí odo no qual José fará jus ao recebimento de sua remuneração com valor proporcional ao seu tempo de serviço e não poderá manter consigo sua arma, distintivo e carteira funcional;","por cento e vinte dias, período no qual José fará jus ao recebimento de su a remuneração com valor proporcional ao seu tempo de contribuição e serão recolhidos seus bens patrimoniais, como arma, distintivo e carteira funcional;","como medida acautelatória, e José terá sua arma, distintivo, carteira funcional ou qualquer outro b em patrimonial que mantenha mediante cautela devidamente recolhidos, caso tal providência ainda não tenha sido tomada;","como medida de antecipação de pena , e José terá sua arma devidamente recolhida, caso tal providência ainda não tenha sido tomada , sendo mantidos consigo os demais bens patrimoniais, como distintivo e carteira funcional;","como medida cautelar, e será vedado o recolhimento da arma, do distintivo, da carteira funcional ou de qualquer outro bem patrimonial público que José mantiver mediante cautela por força de prerrogativa legal."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Noções de Direito',
'João foi vítima de homicídio doloso causado por envenenamento e seu corpo foi levado ao Instituto Médico Legal da Polícia Civil do Estado Alfa, para realização de exame necroscópico. Após ser dada entrada do corpo no IML, a policial civil que fazia atendimento aos cidadãos informou aos filhos de João que o corpo de seu pai estaria liberado, no máximo, na manhã do dia seguinte, razão pela qual já poderiam providenciar o velamento e o sepultamento para a tarde do dia seguinte. Os familiares de João, assim, ad otaram todas as medidas para a realização do enterro no dia seguinte. Por divergência interna entre as equipes de peritos legistas de plantão no IML, consistente em desentendimento sobre quem seria o responsável por fazer a perícia em razão do horário de e ntrada do cadáver, o corpo de João somente foi liberado cinco dias depois. Os filhos de João buscaram atendimento na Defensoria Pública, alegando que sofreram danos materiais e morais em razão da demora injustificada para liberação do corpo de seu pai, sen do- lhes informado que era:', '', '', '["viável o ajuizamento de ação indenizatória em face da Polícia Civil estadual, mediante comprovação da culpa ou do dolo dos policiais envolvidos;","viável o ajuizamento de ação indenizatória em face do Estado Alfa, independ entemente de comprovação da culpa ou do dolo dos policiais envolvidos;","viável o ajuizamento de ação indenizatória diretamente em face dos policiais envolvidos, independentemente da comprovação da culpa ou do dolo, assegurado o direito de regresso contra a Polícia Civil estadual;","inviável o ajuizamento de ação indenizatória em face do legitimado, pois a Administração Pública não está vinculada à conduta de seus servidores, exceto se praticarem algum crime no exercício das funções;","inviável o aju izamento de ação indenizatória em face do legitimado, pois não houve dolo ou culpa dos policiais envolvidos, que deverão responder tão somente na esfera disciplinar."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Noções de Direito',
'Em relação à chamada “quebra da cadeia de custódia”, é correto afirmar que:', '', '', '["a incompletude dos documentos importa em quebra da cadeia de custódia, ainda que hígidos o exercício da ampla defesa e do contraditório;","a quebra da cadeia de custódia refere -se à idoneidade do caminho que deve ser percorrido pela prova até sua análise pelo perito;","a quebra da cadeia de custódia importa no reconhecimento de interferência circunstancial durante o trâmite processual, resultando na imprestabilidade da prova;","a comprovação acerca de qualquer adulteração no procedimento probatório e consequente quebra da cadeia de custódia compete ao Ministério Público;","a não identificação de elementos que demonstrem cabalmente a adulteração de d ocumentos não leva à quebra da cadeia de custódia, caso viável o exercício da ampla defesa e do contraditório."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Noções de Direito',
'A inquirição de mulher em situação de violência doméstica e familiar ou de testemunha de violência doméstica, quando se tratar de crime contra a mulher, deverá observar a:', '', '', '["garantia de que, apenas em hipóteses excepcionais, a mulher em situação de violência doméstica e familiar terá contato direto com investigados ou suspeitos e pessoas a eles relacionadas;","garantia de que, apenas em hipóteses excepcionais, familiares e testemunhas da mulher em situação de violência doméstica e fa miliar terão contato direto com investigados ou suspeitos e pessoas a eles relacionadas;","salvaguarda da integridade física, psíquica e emocional da depoente, considerada a sua condição peculiar de pessoa em situação de desenvolvimento psicológico;","inquirição direta pela autoridade judiciária ou policial, vedada a intermediação por terceira pessoa, em razão do cenário de violência doméstica e familiar;","não revitimização da mulher, evitando sucessivas inquirições sobre o mesmo fato nos âmbitos cri minal, cível e administrativo, bem como questionamentos sobre a vida privada."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 91, 'Noções de Direito',
'A coleta, a guarda provisória e a preservação de material com vestígios de violência serão realizadas pelo:', '', '', '["Instituto Médico Legal ou Centro de Atenção Psicossocial mais próximo;","Instituto de Criminalística ou hospital de campanha mais próximo;","Instituto Médico Legal ou por serviço credenciado do sistema de saúde mais próximo;","Instituto de Criminalística ou unidade de Polícia Técnico - Científica civil ou militar;","Instituto Médico Legal ou unidade de pronto atendi mento mais próxima."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 92, 'Noções de Direito',
'Sobre o uso de algemas, é correto afirmar que:', '', '', '["é possível o uso de algema de calcanhar, acompanhada ou não das algemas de pulso, para evitar o risco de fuga do réu;","não é possível seu uso no réu durante a Sessão Plenária do Júri, em razão do risco de influência dos jurados;","a opinião de policiais responsáveis pela escolta sobre a garantia da segurança dos presentes é irrelevante;","a necessidade de preservar a integridade física dos próprios policiais não pode ser invocada como fundamento válido;","não é possível seu uso no réu durante a realização da oitiva na audiência de custódia."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 93, 'Noções de Direito',
'Quando da ocorrência de fato violento no curso de operações policiais, a autoridade policial, ao tomar conhecimento da ocorrência de lesão corporal ou homicídio decorrente de oposição à intervenção policial, deverá observar as seguintes diretrizes básicas:', '', '', '["requisitar imediato deslocamento de equipe de apoio policial, para garantir o isolamento da vítima ou do corpo da vítima, caso ainda não tenha sido providenciado;","requisitar o concurso da Polícia Técnico-Científica, que deverá recolher para perícia todo material capaz de determinar a causa e a autoria do respectivo fato;","em caso de lesão corporal, a vítima deve ser socorrida prioritariamente pela polícia, devendo ser acompanhada, sempre que possível, por membro da família;","caberá à Polícia Técnico -Científica dirigir -se ao local, independentemente de provocação, para o colhimento de todas as provas disponíveis;","requisitar aos policiais envolvidos, quando necessárias à formação de seu convencimento, as perícias pertinen tes, inclusive laudos prévios, quando viáveis."]'::jsonb,
'B', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 94, 'Noções de Direito',
'Em relação à prova pericial no delito de furto qualificado pelo rompimento de obstáculo, é correto afirmar que:', '', '', '["não pode ser s ubstituída por outro meio de prova caso os vestígios do delito tenham desaparecido ou se tornem indisponíveis;","não pode ser substituída pela prova testemunhal caso o delito apurado não deixe vestígios sensíveis;","pode ser substituída pela prova documental se o produto do furto detiver origem controlada e puder ser individualizado;","pode ser substituída pela prova testemunhal caso o produto do furto tenha sido restituído à vítima ou a seu real proprietário;","pode ser substituída por outro meio de prova se as circunstâncias do crime não permitirem a confecção do laudo."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 95, 'Noções de Direito',
'A respeito do tema consumação e tentativa, é correto afirmar que:', '', '', '["o estupro de vulnerável se consuma com a prática de ato de libidinagem específico ofensivo à dignidade sexual da vítima;","a tentativa incruenta é modalidade de crime tentado no qual a vítima sofre ferimentos;","quanto mais perto da consumação, maior será a fração redutora, pois menor a reprovabilidade da conduta;","nos crimes de tipo misto alternativo, a prática de um do s verbos já é suficiente para a consumação da infração;","a aferição da quantidade de pena a ser reduzida pela tentativa decorre da culpabilidade do agente."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 96, 'Noções de Direito',
'O tipo penal é a ferramenta fundamental para limitar o poder punitivo do Estado e determinar a liberdade de conduta dos cidadãos. Compõem o conceito de sujeitos da conduta típica:', '', '', '["autor, réu e juiz;","juiz, promotor, defensor e réu;","sujeito ativo, sujeito passivo e o Estado;","juiz, promotor e réu;","agente, vítima e testemunha."]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 97, 'Noções de Direito',
'Constituem elementos do tipo objetivo:', '', '', '["elementos descritivo e normativo;","objeto material e objeto jurídico;","conduta verbal e sujeito;","ação ou omissão e elementares;","núcleo do tipo e verbo do tipo."]'::jsonb,
'A', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 98, 'Noções de Direito',
'Do ponto de vista legislativo, constitui espécie de crime contra a vida:', '', '', '["lesão corporal seguida de morte;","abandono de recém-nascido com resultado morte;","maus-tratos com resultado morte;","instigação, auxílio ou induzimento à automutilação;","tortura com resultado morte."]'::jsonb,
'D', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 99, 'Noções de Direito',
'O delito de violação de domicílio configura -se modalidade qualificada quando praticado:', '', '', '["mediante destreza;","com rompimento de obstáculo;","mediante ardil;","em vigilância epidemiológica;","durante a noite."]'::jsonb,
'E', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 100, 'Noções de Direito',
'Sobre o delito de ameaça, é correto afirmar que:', '', '', '["o sujeito ativo tem o objetivo de alcançar uma ação ou inação da vítima;","quando praticado no âmbito de violência doméstica, a ação penal é pública incondicionada;","quando exercido no curso de inquérit o policial configura crime contra a Administração Pública;","o fato de alguém estar sob o efeito de álcool afasta a possibilidade de configuração do delito;","a chamada “ameaça condicionada” configura o delito de constrangimento ilegal. Realização"]'::jsonb,
'C', ''
from public.exams where slug = 'pc-rj-2022-perito-quimica'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
