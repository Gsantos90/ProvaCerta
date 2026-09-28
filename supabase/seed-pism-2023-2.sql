-- Seed: PISM 2023-2 (Modulo 1 - 2o Dia)
-- Fonte: Caderno de Provas PISM 2023 - Modulo I - 2o Dia, prova realizada em 04/12/2022 (trienio 2023-2025)
-- Gabarito objetivo OFICIAL (COPESE/UFJF): Literaturas 1-5 B,E,A,C,D | Biologia 6-10 A,B,A,E,A | Fisica 11-15 E,D,D,B,C | Historia 16-20 A,C,B,E,ANULADA
-- Observacao 1: a questao 20 foi ANULADA pela banca; mantida no banco com uma alternativa para nao quebrar o app.
-- Observacao 2: as questoes 11, 15 e 17 dependem de figuras. O campo support_image referencia
-- arquivos que ainda precisam ser adicionados em /public (nomes sugeridos abaixo).

insert into public.exams (slug, title, source, year)
values ('pism-2023-2', 'PISM 2023-2', 'pism', '2023-2')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LITERATURAS (Questoes 1 a 5)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Literaturas',
'O poema do escritor moçambicano José Craveirinha apresenta como tema principal:',
'TEXTO I

NINGUÉM
José Craveirinha

Andaimes
Até o décimo quinto andar
Do moderno edifício de betão armado

O ritmo
florestal dos ferros erguidos
arquitetonicamente no ar
e um transeunte curioso
que pergunta:
– Já caiu alguém dos andaimes?

O pausado ronronar
dos motores a óleos pesados
e a tranquila resposta do senhor empreiteiro:
– Ninguém. Só dois pretos.

Fonte: CRAVEIRINHA, José. Antologia Poética. Belo Horizonte: Editora da UFMG, 2010, p. 35.',
'',
'["A crítica à poluição gerada pelos motores a óleo.","A denúncia da gentrificação causada pelas grandes construções.","A descrição do processo de trabalho na construção civil.","O processo de apagamento e desumanização de trabalhadores negros.","A modernidade dos prédios como resultado da exploração negra."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Literaturas',
'Pode-se estabelecer uma relação de interdiscursividade entre os poemas de José Craveirinha e Oswald de Andrade, considerando:',
'TEXTO I

NINGUÉM
José Craveirinha

Andaimes
Até o décimo quinto andar
Do moderno edifício de betão armado

O ritmo
florestal dos ferros erguidos
arquitetonicamente no ar
e um transeunte curioso
que pergunta:
– Já caiu alguém dos andaimes?

O pausado ronronar
dos motores a óleos pesados
e a tranquila resposta do senhor empreiteiro:
– Ninguém. Só dois pretos.

Fonte: CRAVEIRINHA, José. Antologia Poética. Belo Horizonte: Editora da UFMG, 2010, p. 35.

TEXTO II

VÍCIO DA FALA
Oswald de Andrade

Para dizerem milho dizem mio
Para melhor dizem mió
Para pior pió
Para telha dizem teia
Para telhado dizem teiado
E vão fazendo telhados.

Fonte: ANDRADE, O. Poesias Reunidas. 5ª ed. Civilização Brasileira, 1978, p. 89.',
'',
'["A situação social e cultural do profissional de construção civil.","O preconceito linguístico ao desconsiderar a segunda parte do par milho-mio.","O desrespeito do empreiteiro face ao trabalho braçal do pedreiro.","A mobilização de recursos linguísticos típicos dos canteiros de obras.","O machismo presente na condição de trabalho de homens em edificações."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Literaturas',
'O poema de Conceição Evaristo mobiliza diferentes recursos expressivos para reiterar a relação entre o sujeito poético e seus familiares, dentre eles:',
'TEXTO III

VOZES-MULHERES
Conceição Evaristo

A voz de minha bisavó
ecoou criança
nos porões do navio.
ecoou lamentos
de uma infância perdida.

A voz de minha avó
ecoou obediência
aos brancos-donos de tudo.

A voz de minha mãe
ecoou baixinho revolta
no fundo das cozinhas alheias
debaixo das trouxas
roupagens sujas dos brancos
pelo caminho empoeirado
rumo à favela.

A minha voz ainda
ecoa versos perplexos
com rimas de sangue
e
fome.

A voz de minha filha
recolhe todas as nossas vozes
recolhe em si
as vozes mudas caladas
engasgadas nas gargantas.

A voz de minha filha
recolhe em si
a fala e o ato.
O ontem – o hoje – o agora.
Na voz de minha filha
se fará ouvir a ressonância
o eco da vida-liberdade.

Fonte: EVARISTO, Conceição. Poemas de recordação e outros movimentos, 3. ed. Rio de Janeiro: Malê, 2017, p. 24-25.',
'',
'["O paralelismo ao iniciar estrofes.","O pleonasmo ao repetir as ações de diálogos.","A antítese entre a voz da mãe e da filha.","O eufemismo ao atenuar situações de violência.","A personificação das vozes ecoadas."]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Literaturas',
'Nos versos apresentados de Noémia Sousa, o sujeito poético tematiza:',
'TEXTO IV

Canção fraterna
Noémia Sousa

Irmão negro de voz quente
o olhar magoado,
diz-me:
Que séculos de escravidão
geraram tua voz dolente?
Quem pôs o mistério e a dor
em cada palavra tua?
E a humilde resignação
na tua triste canção?
E o poço de melancolia
No fundo do seu olhar?
Foi vida? o desespero? o medo?
Diz-me aqui, em segredo,
irmão negro.

Porque a tua canção é sofrimento
e a tua voz sentimento
e magia.
Há nela a nostalgia
da liberdade perdida,
a morte das emoções proibidas,
e a saudade de tudo que foi teu
e já não é.

Diz-me, irmão negro,
Quem fez a vida assim...
Foi a vida? o desespero? o medo?
Mas mesmo encadeado, irmão,
que estranho feitiço o teu!
A tua voz dolente chorou
de dor e saudade,
gritou de escravidão e veio murmurar à minha alma ferida
que a tua triste canção dorida
não é só tua, irmão de voz de veludo
e olhos de luar...
Veio, de manso murmurar
que a tua canção é minha.

Fonte: SOUSA, Noémia. Sangue Negro. F. Mendonça & N. Saúte (org.). Ed. Associação dos escritores Moçambicanos. Moçambique: CIEDIMA, 1998, p. 74-75.',
'',
'["A Fraternidade entre os moçambicanos subalternizados.","A subjugação do homem negro, fruto de anos de escravidão.","A nostalgia de um passado mítico e idealizado.","A saudade de uma África pré-colonial, livre, mas melancólica.","A canção que evoca um passado idílico."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Literaturas',
'Nos trechos apresentados do diário Quarto de despejo: diário de uma favelada, de Carolina Maria de Jesus, observa-se:',
'TEXTO V

QUARTO DE DESPEJO
Carolina Maria de Jesus

23 DE MAIO
Levantei de manhã triste porque estava chovendo. (...) O barraco está numa desordem horrivel. E que eu não tenho sabão para lavar as louças. Digo louça por hábito. Mas é (sic) as latas. Se tivesse sabão eu ia lavar as roupas. Eu não sou desmazelada. Se ando suja é devido a reviravolta da vida de um favelado. Cheguei a conclusão que quem não tem de ir pro céu, não adianta olhar para cima. E igual a nós que não gostamos da favela, mas somos obrigados a residir na favela.
[...]
Antigamente era a macarronada o prato mais caro. Agora é o arroz e feijão que suplanta a macarronada. São os novos ricos. Passou para o lado dos fidalgos. Até vocês, feijão e arroz, nos abandona! Vocês que eram os amigos dos marginais, dos favelados, dos indigentes. Vejam só. Até o feijão nos esqueceu. Não está ao alcance dos infelizes que estão no quarto de despejo. Quem não nos despresou (sic) foi o fubá.
Mas as crianças não gostam de fubá. Quando puis a comida o João sorriu. Comeram e não aludiram a (sic) cor negra do feijão. Porque negra é a nossa vida. Negro é tudo que nos rodeia.
[...]
24 DE JULHO
O Seu João veio buscar as folhas de batatas. Eu disse-lhe:
—Se eu pudesse mudar desta favela! Tenho a impressão, que estou no inferno.
...Sentei ao sol para escrever. A filha da Silvia, uma menina de seis anos, passava e dizia:
—Está escrevendo, negra fidida (sic)! A mãe ouvia e não repreendia. São as mães que instigam.

Fonte: JESUS, Carolina Maria de. Quarto de despejo: diário de uma favelada. São Paulo: Ática, 2014.',
'',
'["O incipiente surgimento de uma solidariedade negra, como se lê em: \"Porque negra é a nossa vida. Negro é tudo que nos rodeia\".","A defesa da Negritude como autoafirmação da identidade negra, como se lê em: \"Porque negra é a nossa vida. Negro é tudo que nos rodeia\".","O racismo estrutural da sociedade brasileira, como se observa em \"A mãe ouvia e não repreendia. São as mães que instigam\".","A falta de uma conscientização da condição do negro na sociedade brasileira, como se compreende em \"Comeram e não aludiram a (sic) cor negra do feijão\".","As complexas relações entre classe e raça presentes em \"Não está ao alcance dos infelizes que estão no quarto de despejo\"."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- BIOLOGIA (Questoes 6 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Biologia',
'O citoesqueleto da célula eucariota é composto de três tipos de filamentos proteicos: os microtúbulos, os microfilamentos e os filamentos intermediários. Esses filamentos participam de diversas funções celulares. Sobre as funções dos componentes do citoesqueleto sabe-se que os',
'',
'',
'["microtúbulos dão suporte para estruturas como as microvilosidades ou microvilos.","microfilamentos formam os componentes contráteis das células musculares.","microfilamentos são formados pela proteína globular actina em associação com a tubulina.","filamentos intermediários participam da formação dos fusos meiótico e mitótico nas divisões celulares.","filamentos intermediários participam da formação de centríolos, cílios e flagelos e junções intercelulares."]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Biologia',
'No estudo da Biologia, utiliza-se o método científico, que inclui vários passos, dentre eles: a escolha do problema analisado, a formulação ou não de hipóteses, a observação, a descrição, o registro dos dados e a análise desses dados, que podem refutar ou confirmar a hipótese inicial, respondendo, assim, ao problema questionado. O método científico confere à Ciência um caráter',
'',
'',
'["dinâmico, uma vez que informações veiculadas pela mídia e redes sociais são relevantes.","dinâmico, uma vez que está em constante testagem e reavaliação.","dinâmico, uma vez que qualquer pessoa leiga pode dar sua opinião.","fixo, uma vez que o problema não pode ser novamente questionado.","fixo, uma vez que somente cientistas podem fazer questionamentos."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Biologia',
'Nas células ocorrem importantes atividades metabólicas, sendo o metabolismo o conjunto de reações químicas responsáveis pela manutenção da vida. Essas atividades são realizadas em estruturas ou organelas celulares. Considere as organelas e as funções principais: 1) lisossomos — a) secreção e empacotamento; 2) vacúolo — b) digestão intracelular; 3) complexo golgiense — c) inativação de substâncias tóxicas à célula; 4) peroxissomos — d) síntese e transporte de lipídios; 5) retículo endoplasmático — e) digestão intracelular e controle osmótico. Considerando as colunas acima, a organela',
'',
'',
'["\"2\" tem como função a letra \"e\" e ocorre em células vegetais.","\"1\" tem como função a letra \"a\" e ocorre nas células animais.","\"4\" tem como função a letra \"c\" e ocorre somente nas células animais.","\"3\" tem como função a letra \"d\" e ocorre em células vegetais e animais.","\"5\" tem como função a letra \"b\" e ocorre em células animais e vegetais."]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Biologia',
'O tecido nervoso apresenta as funções de recepção, análise e integração de estímulos internos e externos, desencadeando respostas adequadas. Apesar da complexidade de suas funções, o tecido nervoso é composto basicamente por dois tipos de células: os neurônios e os gliócitos. Em relação aos neurônios',
'',
'',
'["os gliócitos, além de protegerem e nutrirem os neurônios, também desempenham a função de interligá-los para a condução do impulso nervoso.","possuem axônios e dendritos que são regiões ramificadas que permitem a transmissão bidirecional do impulso nervoso.","possuem corpo celular onde se encontra o núcleo desta célula, não apresentando, no entanto, organelas citoplasmáticas.","seu meio intracelular em repouso possui alta concentração de íons de sódio, o que confere uma carga positiva em relação ao meio externo.","podem apresentar axônios mielinizados, o que aumenta a velocidade de transmissão do impulso nervoso."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Biologia',
'Tendo em vista as desigualdades sociais que limitam o acesso de um significativo contingente da população brasileira a uma dieta balanceada, a popular combinação de arroz com feijão, na proporção adequada, pode ser uma fonte barata de proteínas (e outras substâncias) de boa qualidade para o nosso corpo. As proteínas são importantes ao bom funcionamento do organismo humano porque',
'',
'',
'["atuam como catalisadores biológicos que aumentam a velocidade de reações químicas.","formam a celulose e constituem as fibras vegetais, que estimulam o peristaltismo intestinal.","formam o colesterol, usado na síntese dos hormônios sexuais.","não são afetadas por variações de temperatura e pH.","têm grande poder de dissolução dos sais minerais."]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- FISICA (Questoes 11 a 15)  |  Considere g = 10 m/s2
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Física',
'(Considere g = 10 m/s²) A figura mostra o gráfico da velocidade instantânea em função do tempo para um pequeno avião monomotor que sobrevoa a cidade de Juiz de Fora. Encontre a distância total percorrida pelo avião no intervalo entre t = 0 e t = 10 s.',
'Gráfico: velocidade instantânea v (m/s) em função do tempo t (s). De 0 a 5,0 s a velocidade é constante em 30 m/s; de 5,0 s a 10 s a velocidade é constante em 40 m/s.',
'/pism-2023-2-questao-11.png',
'["150 m","200 m","300 m","350 m","400 m"]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Física',
'(Considere g = 10 m/s²) Um estudante deixa cair uma mochila de um balão que flutua a uma altura de 320 m. No mesmo instante em que a mochila inicia um movimento de queda livre, o balão começa a subir com uma velocidade constante de 2,0 m/s. Calcule a altura em que se encontra o balão quando a mochila chega ao solo.',
'',
'',
'["328 m","336 m","352 m","384 m","448 m"]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Física',
'(Considere g = 10 m/s²) Considere um rio que possui uma largura de 120 m e uma correnteza de velocidade constante. Ao navegar neste rio, em relação às margens, um barco motorizado tem velocidade máxima de 12 m/s quando desce o rio e de 8 m/s quando o sobe. Supondo agora que o barco seja mantido perpendicular à direção da correnteza e que se desloque com a sua velocidade máxima, o tempo mínimo de travessia de uma margem à outra do rio é de',
'',
'',
'["30 s.","15 s.","12 s.","10 s.","6 s."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Física',
'(Considere g = 10 m/s²) Uma equipe de estudantes montou uma engenhoca para elevar uma massa de 60 kg a uma altura de 7,5 m. Utilizando um motor com potência de consumo elétrico de 300 W, conseguiram realizar esta tarefa em meio minuto. De acordo com esse resultado, a equipe deve concluir que o rendimento desse motor é de',
'',
'',
'["5%.","50%.","67%.","75%.","100%."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Física',
'(Considere g = 10 m/s²) Um mestre de obras montou o sistema de polias mostrado na figura para elevar tijolos até o segundo andar de uma construção. Os tijolos, juntamente com o suporte de apoio, têm massa total igual a 120 kg. Assinale a intensidade F mínima da força externa exercida para baixo na corda, de forma a poder elevar os tijolos e o suporte de apoio.',
'Figura: sistema de polias (associação de polias móveis e fixa) usado para elevar um suporte com tijolos de massa total 120 kg; a força F é aplicada para baixo na corda.',
'/pism-2023-2-questao-15.png',
'["1200 N","600 N","400 N","300 N","200 N"]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- HISTORIA (Questoes 16 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'História',
'A rainha-mãe, na sociedade Kush na Antiguidade, era chamada de Candace. Seu papel político estava associado a:',
'"O sistema de realeza que se desenvolveu em Kush tinha algumas vantagens em relação ao sistema rígido de sucessão direta, pois eliminava o perigo de um sucessor indesejável, quer se tratasse de um rei na minoridade, quer de uma personalidade impopular. A incorporação de novos membros à família real era assegurada pelo sistema de adoção, enquanto os vários contrapesos e controles inerentes, bem como a proeminência da rainha-mãe e a importância atribuída à legitimidade da descendência, garantiam a sua continuidade no poder."
Fonte: A. M. ALI HAKEM. A civilização de Napata e Méroe. In: MOKHTAR, G. (coord.). História Geral da África. v. 2: A África Antiga. São Paulo - Paris: Ática – UNESCO, 1983.',
'',
'["Promover a distribuição do poder político, religioso e econômico nas mãos de mulheres guerreiras.","Legitimar o poder real por meio do exercício de sua autoridade religiosa concedida diretamente por deuses.","Garantir o funcionamento da realeza na função de conselheira do rei por meio do sistema de adoção.","Liderar o exército constituído por mulheres na luta contra invasores do território ocupado pelo Império Kush.","Convencer as mulheres da sociedade a serem insubmissas aos seus esposos, contestando o patriarcalismo."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'História',
'As imagens (Deuses egípcios; Estátua de Hatshepsut com traços femininos e um nemés, o símbolo dos reis, na cabeça; O escriba desconhecido; O Faraó e os Camponeses) retratam diferentes personagens que compunham a antiga sociedade egípcia e aspectos de seu imaginário. Sobre a civilização que se desenvolveu no Egito Antigo, é CORRETO afirmar que:',
'Imagens de apoio: "Deuses egípcios"; "Estátua de Hatshepsut, com traços femininos e um nemés, o símbolo dos reis, na cabeça"; "O escriba desconhecido"; "O Faraó e os Camponeses".',
'/pism-2023-2-questao-17.png',
'["A estrutura social do Egito Antigo era flexível, com inúmeras possibilidades de mobilidade entre seus integrantes.","Embora o faraó \"ideal\" fosse um homem, o Egito também chegou a ser governado por mulheres na Antiguidade.","Em virtude do predomínio da Teocracia e do monoteísmo, o Estado egípcio proibia outras formas de religiosidade.","Por não conhecer a linguagem escrita, a única forma de transmissão do conhecimento de seus habitantes era a oralidade.","Tendo em vista o predomínio no território egípcio de um solo naturalmente fértil, os latifundiários se tornaram a classe social mais próspera da região."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'História',
'O texto refere-se ao Islamismo na atualidade. Sobre o surgimento do Islamismo ocorrido no século VII, é CORRETO afirmar que:',
'"De acordo com reportagem publicada no jornal Folha de São Paulo, em 08 de novembro de 2022, é possível afirmar, com base em estimativa do Pew Research Center (organização americana de pesquisa sobre fé e religiosidade), que os muçulmanos são em torno de 24% da população mundial. Em 2050, a previsão é que a diversidade do mundo islâmico alcançará o índice de 30% de uma população global estimada em 8 bilhões de pessoas."
Fonte: BALLOUSIER, Anna Virginia. Mundo com 8 bilhões será mais religioso, e muçulmanos colarão nos cristãos. Folha de São Paulo, 08/11/2022.',
'',
'["O Islamismo foi influenciado por religiões como o Judaísmo e o Cristianismo, combinando com tradições religiosas de tribos da Península Arábica.","O Islamismo, de tradição monoteísta, foi construído a partir da liderança de Alá, profeta da causa árabe e articulador da unificação dos povos beduínos.","A expansão do islamismo foi notada, efetivamente, após as Cruzadas, quando ocorre a unificação das tribos arábicas e a construção do Império Árabe.","De tradição monoteísta, o Islamismo se desenvolveu a partir das interações com a expansão marítima e comercial da civilização fenícia e o desenvolvimento mercantil.","A noção de Guerra Santa, presente no processo de expansão do islamismo, começou a ser empregada no século XXI, como reação ao crescimento do preconceito contra muçulmanos."]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'História',
'Considerando os violentos processos de extermínio e de aculturação dos tupi no Brasil, no contexto do colonialismo a partir do século XV, o texto mostra que',
'"Meu xará, carioca da Tijuca, foi ao Pará surfar a pororoca, em um rio infestado de piranhas e jacarés. Nas margens, viu jaguares, quatis e capivaras. No céu, sobrevoavam araras, tucanos e urubus. Enquanto estava lá, bebeu suco de caju e de maracujá. Comeu pipoca, mandioca, carne de tatu e de paca. Visitou uma taba amazônica e foi cutucado por um curumim curioso. Dormiu em uma oca cheia de cupim e ficou com o corpo coberto de perebas. Foi atendido por um pajé. Depois de algum tempo, quando já estava na pindaíba, voltou para casa."
Fonte: https://agenciabrasil.ebc.com.br/cultura/noticia/2014-12/tupi-deu-importantes-contribuicoes-ao-portugues. Acesso em 13 jun. 2023.',
'',
'["a impossibilidade de a narrativa apresentada se efetivar é indicativo de que os processos de extermínio e aculturação dos tupi foram bem-sucedidos em suas missões.","a permanência de contribuições dos tupi na língua portuguesa evidencia um processo de resistência ao extermínio e uma aculturação que não foi plenamente efetivada.","a tentativa de aculturação dos tupi esbarrou no encantamento dos colonizadores com as línguas faladas no território colonizado, o que refletiu no enfraquecimento dos processos de extermínio.","a questão cultural dos tupi não foi objeto dos processos de extermínio por parte do colonialismo europeu, que se preocupou apenas em modificar estruturas políticas e econômicas em seus processos de aculturação.","a presença das palavras dos tupi no vocabulário atual demonstra que os processos de extermínio e aculturação por parte dos colonizadores ocorreu de forma a preservar a língua, que era o mais importante para esse povo."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'História',
'(QUESTÃO ANULADA pela banca COPESE/UFJF) Assinale a frase que sintetiza o texto:',
'"Com que palavra denominaríamos essa grande evolução que levou a mais ciência, mais conhecimentos, mais domínio do mundo natural, maior amor pela beleza (...). A herança da civilização greco-romana, o clima temperado, as terras férteis (...) favoreceram os homens que se tinham concentrado na Europa Ocidental. Mas também não faltaram as dificuldades: umas naturais, como a peste negra, outras provocadas pelo jogo das competições políticas, econômicas e religiosas (...) desafios que foram vencidos com coragem e com gênio. A história do movimento a que me refiro é a história desses desafios e dessas respostas. A recuperação demográfica, os progressos técnicos, a aventura marítima, um novo conceito de beleza (...). Mas a mais elementar obrigação de lucidez conduz-nos a declarar que os séculos XV e XVI viram, de certo modo, um aumento do obscurantismo (...) tempos de ódio, de lutas terríveis, de processos insensatos, do massacre dos povos americanos e das execuções da Inquisição."
Fonte: Adaptado de DELUMEAU, Jean. A Civilização... Lisboa: Estampa, 1984, p. 19-22.',
'',
'["A Reforma criou suas raízes na crise do feudalismo.","A Heresia é uma ruptura com o pensamento dominante da época.","A Propriedade é a causa de todas as guerras e derramamento de sangue.","O Renascimento surge aos nossos olhos como um oceano de contradições.","O Mercantilismo minou a autoridade da Igreja e revelou os tesouros da arte."]'::jsonb,
'D',
'Esta questão foi ANULADA pela banca organizadora (COPESE/UFJF) no gabarito oficial do PISM 2023 - Módulo 1 - Dia 2. Portanto, não há alternativa considerada correta; ela foi mantida aqui apenas para preservar a numeração da prova.'
from public.exams where slug = 'pism-2023-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
