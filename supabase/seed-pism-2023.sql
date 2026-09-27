-- Seed: PISM 2023-1 (Modulo 1 - 1o Dia)
-- Fonte: Caderno de Provas PISM - Modulo I - 1o Dia, prova realizada em 09/12/2023 (trienio 2023-2025)
-- Gabarito objetivo: LP 1-5 E,B,D,B,C | Geografia 6-10 B,C,D,B,E | Matematica 11-15 C,A,C,D,B | Quimica 16-20 E,D,E,C,D
-- Observacao: as questoes 6, 7, 10, 11, 14 e 15 dependem de figuras. O campo support_image referencia
-- arquivos que ainda precisam ser adicionados em /public (nomes sugeridos abaixo).

insert into public.exams (slug, title, source, year)
values ('pism-2023-1', 'PISM 2023-1', 'pism', '2023-1')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 5)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Língua Portuguesa',
'Qual o principal propósito comunicativo do texto I?',
'TEXTO I

Projeto de lei sobre "Dia Contra o Racismo no Futebol" avança no Rio; data relembra "Resposta Histórica" do Vasco
A medida ainda depende de segunda discussão na Alerj para ser aprovada
Lance! — Publicada em 26/05/2023, Rio de Janeiro (RJ)

O futebol brasileiro está avançando para ter o "Dia da Resposta Histórica Contra o Racismo" em seu calendário. Na última quinta-feira (25), o projeto de autoria dos deputados Verônica Lima (PT), Felipinho Ravis (SDD) e Andrezinho Ceciliano (PT) foi aprovado em primeira discussão pela Assembleia Legislativa do Estado do Rio de Janeiro (Alerj).

Se aprovada também em segunda discussão pela Assembleia, a "Resposta Histórica Contra o Racismo no Futebol" será no dia 07 de abril. O projeto foi inserido na votação após o caso de racismo contra Vinicius Júnior, na Espanha, durante o jogo entre Valencia e Real Madrid.

A escolha pelo 07 de abril não foi por acaso. A data é em alusão ao ofício escrito por José Augusto Prestes, presidente do Vasco da Gama em 1924, para a Associação Metropolitana de Esportes Athleticos (AMEA) – reconhecida como "Resposta Histórica" e um marco na luta contra o racismo no futebol.

Criada por clubes da elite do Rio de Janeiro, a AMEA barrou, em abril de 1924, a inscrição do Vasco da Gama na Associação. A filiação dependeria da exclusão de todos os 12 jogadores, negros e operários, que não apresentavam "condições sociais para o convívio esportivo". Assim, no dia 07, José Augusto Prestes, presidente do clube, enviou a Resposta Histórica se recusando a dispensá-los.

CONFIRA O OFÍCIO
Rio de Janeiro, 7 de Abril de 1924.
Officio No 261
Exmo. Snr. Dr. Arnaldo Guinle, M. D. Presidente da Associação Metropolitana de Esportes Athleticos. As resoluções divulgadas hoje pela Imprensa, tomadas em reunião de ontem pelos altos poderes da Associação a que V. Exa. tão dignamente preside, colocam o Club de Regatas Vasco da Gama numa tal situação de inferioridade, que absolutamente não pode ser justificada, nem pelas deficiências do nosso campo, nem pela simplicidade da nossa sede, nem pela condição modesta de grande numero dos nossos associados.
Os privilégios concedidos aos cinco clubs fundadores da A.M.E.A., e a forma porque será exercido o direito de discussão a voto, e feitas as futuras classificações, obrigam-nos a lavrar o nosso protesto contra as citadas resoluções. Quanto á condição de eliminarmos doze dos nossos jogadores das nossas equipes, resolveu por unanimidade a Directoria do C.R. Vasco da Gama não a dever aceitar, por não se conformar com o processo porque foi feita a investigação das posições sociais desses nossos consócios, investigação levada a um tribunal onde não tiveram nem representação nem defesa.
Estamos certos que V. Exa. será o primeiro a reconhecer que seria um acto pouco digno da nossa parte, sacrificar ao desejo de fazer parte da A.M.E.A., alguns dos que lutaram para que tivéssemos entre outras vitórias, a do Campeonato de Foot-Ball da Cidade do Rio de Janeiro de 1923. São esses doze jogadores, jovens, quase todos brasileiros, no começo de sua carreira, e o acto publico que os pode macular, nunca será praticado com a solidariedade dos que dirigem a casa que os acolheu, nem sob o pavilhão que eles com tanta galhardia cobriram de glorias.
Nestes termos, sentimos ter que comunicar a V. Exa. que desistimos de fazer parte da A.M.E.A. Queira V. Exa. acceitar os protestos da maior consideração estima de quem tem a honra de subscrever. De V. Exa. Atto Vnr., Obrigado!
José Augusto Prestes — Presidente.

Disponível em: https://www.lance.com.br/fora-de-campo/projeto-de-lei-sobre-dia-contra-o-racismo-no-futebol-avanca-no-rio-data-relembra-resposta-historica-do-vasco.html. Acesso em: 10 jun. 2023. Adaptado para fins didáticos.',
'',
'["Denunciar a situação de racismo vivida pelo jogador de futebol Vinicius Junior na Europa.","Divulgar resposta histórica do presidente do Vasco para a Associação Metropolitana de Esportes Athleticos.","Expor as medidas que o Rio de Janeiro vem tomando para diminuir os casos de racismo.","Narrar o racismo no futebol vivido no século XX, em que negros e operários não podiam participar de grandes clubes.","Relatar o que está em discussão na Alerj, a criação de um dia para o combate ao racismo no futebol."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Língua Portuguesa',
'Pela análise do texto I, em específico do ofício enviado por José Augusto Prestes, presidente do Vasco da Gama em 1924, para a Associação Metropolitana de Esportes Athleticos, infere-se que, do ponto de vista linguístico, ele',
'Consulte o Texto I (ofício de José Augusto Prestes) apresentado na questão 1.',
'',
'["adota um nível acentuado de informalidade, em função do seu destinatário.","apresenta expressões que sofreram variação no decorrer da história.","desconsidera o uso da norma padrão da língua portuguesa para documentos oficiais.","ignora, na produção do texto, as características básicas do gênero ofício.","valoriza o estrangeirismo em detrimento do uso da língua portuguesa."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Língua Portuguesa',
'O principal argumento apresentado pelo presidente do Vasco da Gama para não acatar a proposta da Associação Metropolitana de Esportes Athleticos de exclusão dos doze jogadores do time foi/foram',
'Consulte o Texto I (ofício de José Augusto Prestes) apresentado na questão 1.',
'',
'["a relação injustificada entre as deficiências do campo e a simplicidade da sede do time com o desempenho dos jogadores julgados.","as decisões divulgadas pela imprensa colocam o Vasco da Gama em uma situação de inferioridade perante a outros clubes.","o consentimento da Associação de elite do futebol do Rio de Janeiro em conceder privilégios aos cincos clubes que a fundaram.","o fato do processo contra a posição social deles ter sido feito sem direito de defesa e representação, além de terem contribuído com títulos recentes do clube.","o relacionamento profissional conflituoso entre ele e o presidente da A.M.E.A, divulgado pela imprensa."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Língua Portuguesa',
'Tomando como referência as informações contidas no texto II, é possível afirmar que na primeira estrofe do poema "Dias de kizomba", texto III, Conceição Evaristo utilizou a estratégia de grafar o prenome de Abdias do Nascimento, dividindo-o com o uso dos parênteses, no intuito de',
'TEXTO II

Abdias do Nascimento (São Paulo, 1914 – Rio de Janeiro, 2011)
Abdias nasceu em 1914, na cidade de Franca, interior do estado de São Paulo. Migrou para a capital no início dos anos 1930 e logo começou a tomar parte em eventos organizados pela Frente Negra Brasileira (FNB), fundada em 1931. [...].
Em 1944, após longa viagem pelo interior do Brasil e por parte da América Latina, Abdias criou o Teatro Experimental do Negro (TEN) – movimento artístico, político e cultural que aglutinou intelectuais e artistas negros e negras importantes no cenário afro-brasileiro [...].
A articulação artística e política de Abdias foi constante, sempre denunciando o racismo e propondo debates. [...].
Abdias manteve também um papel essencial durante os trabalhos da Assembleia Constituinte Brasileira de 1946, chamando a atenção para o necessário e urgente combate ao racismo no país. [...].
Faleceu em 2011, aos 97 anos.
Fonte: GOMES, Flávio dos Santos; LAURIANO, Jaime; SCHWARCZ, Lilia Moritz. Enciclopédia Negra. São Paulo: Companhia das Letras, 2021, p. 22-23.

TEXTO III

Dias de kizomba

Ab(dias) de lutas e não dias de luto.
Um homem como Abdias,
estrela incandescente,
não morre.

A sua luz
cor negra zagaia
feriu a branca consciência
de uma democracia racial
nula e vil.

Um homem como Abdias,
estrela Nascimento,
Zumbi eternizado,
não morre.

A sua luta
Ziguezagueia
d''África à diáspora
espalhando sementes baobás
em cada uma/ um de nós.

Fonte: EVARISTO, Conceição. Poemas da recordação e outros movimentos. Rio de Janeiro: Malê, 2017, p. 58-59.',
'',
'["demonstrar a plenitude dos dias de lutas com a presença do militante.","enfatizar que, mesmo sem Abdias, os dias serão de \"lutas\" e não de \"luto\".","intensificar que os dias de luta de Abdias foram pela \"democracia racial\".","ironizar, fazendo referência ao dito popular \"dias de luta, dias de glória\".","saudar os dias sem o militante, podendo substituir o termo \"ab\" por \"ave\"."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Língua Portuguesa',
'Entre os recursos estilísticos empregados por Conceição Evaristo em seu poema, pode-se afirmar que ela utiliza uma',
'Consulte o Texto III (poema "Dias de kizomba", de Conceição Evaristo) apresentado na questão 4.',
'',
'["personificação, uma vez que afirma que Abdias não morre, atribuindo a ele características animadas.","metonímia, uma vez que faz analogia entre os termos semelhantes \"lutas\" e \"luto\" por meio da troca das vogais –o/–a.","metáfora, uma vez que atribui características de estrela – com luz própria e eterna – a Abdias Nascimento.","hipérbole, uma vez que a afirmação de que Abdias espalhou sementes \"em cada uma/um de nós\" é exagerada.","anáfora, uma vez que a repetição do verso \"Um homem como Abdias\" cria um efeito de cacofonia, reforçando a posição crítica da autora."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- GEOGRAFIA (Questoes 6 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Geografia',
'O ano de 2022 marcou a continuidade da expansão do desmatamento no Brasil. De acordo com o Relatório Anual do Desmatamento do Brasil, elaborado pelo MAPBIOMAS, houve um aumento de 22,3% da área desmatada em relação a 2021, o equivalente a mais de 2 milhões de hectares. Há, porém, uma grande heterogeneidade espacial nesses dados. No ano de 2023, até o mês de agosto, a situação é a apresentada no mapa e nas estatísticas de apoio. Com base nos dados de desmatamento em território brasileiro, nos últimos anos, afirma-se que:',
'Fonte: MAPBIOMAS. Relatório Anual de Desmatamento no Brasil. (Mapa de alertas de desmatamento 2023 — áreas acima de 50 ha — com estatísticas de janeiro a agosto de 2023.)',
'/pism-2023-1-questao-6.png',
'["Os municípios do MATOPIBA apresentaram taxas de desmatamento da Floresta Amazônica extremamente baixas.","A região da AMACRO pode ser considerada a nova fronteira de desmatamento da Amazônia, devido à ação do setor agropecuário.","Após os índices recordes em 2021, os municípios do Pantanal apresentam taxas de desmatamento baixas em 2023.","Os municípios da Mata Atlântica mantiveram o histórico de taxas de desmatamento extremamente altas no ano de 2023.","Os dados do Pará mostram porque a mineração foi a atividade que mais promoveu desmatamento no ano de 2023."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Geografia',
'Sobre as voçorocas, sabe-se que:',
'TEXTO
Voçoroca: entenda o fenômeno geológico que pode fazer uma cidade brasileira desaparecer
G1 – 29/03/2023 – 07h32
Um fenômeno geológico pode fazer desaparecer a cidade de Buriticupu, que fica a 417km de São Luís, no Maranhão. São enormes abismos provocados pela chamada "voçoroca", que acontece em áreas onde a vegetação é escassa e não protege o solo.
A cidade convive com a voçoroca, palavra de origem tupi-guarani que significa terra rasgada, há mais de 30 anos. E a situação piora no período chuvoso. Atualmente, são 26 buracos gigantes avançando sobre a cidade. Alguns desses abismos têm até 70 metros de profundidade e 500 metros de comprimento. [...]
Fonte: https://g1.globo.com/ma/maranhao/noticia/2023/03/29/as-crateras-que-ameacam-engolir-cidade-no-maranhao-veja-fotos-do-fenomeno.ghtml',
'/pism-2023-1-questao-7.png',
'["As voçorocas são fenômenos típicos de regiões subdesenvolvidas, onde a tecnologia de exploração dos recursos naturais é incipiente, como no Brasil.","As voçorocas são causadas pelo processo de erosão laminar e, durante o período de chuvas, é capaz de remover grandes quantidades de sedimentos.","Uma das consequências do avanço das voçorocas é o assoreamento dos cursos d''água coletores, devido ao transporte de sedimentos pelas chuvas.","As voçorocas são fenômenos exclusivamente urbanos, pois o concreto e o asfalto impermeabilizam o solo, deixando-o menos suscetível à erosão.","A voçoroca é um fenômeno raro no Brasil, ocorrendo apenas na região semiárida, devido às intensas chuvas que sucedem o período de seca."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Geografia',
'Notoriamente, o Brasil é dotado de contextos paisagísticos dos mais diversos e exuberantes, moldados pela interação entre clima, rochas, solos, vegetação e relevo em seu vasto território. Dentre os domínios morfoclimáticos brasileiros, a citação a seguir se refere ao:',
'"Em sua região nuclear, ocupa predominantemente maciços planaltos de estrutura complexa, dotados de superfícies aplainadas de cimeira, e um conjunto significativo de planaltos sedimentares compartimentados, situados em níveis que variam entre 300 e 1700 m de altitude. [...] Possui drenagens perenes para os cursos d''água principais e secundários, envolvendo, porém, o desaparecimento temporário dos caminhos d''água de menor ordem de grandeza por ocasião do período seco do meio do ano. [...] A aparência xeromórfica de muitas espécies é falsa [...]. As plantas lenhosas seriam, portanto, uma flora de evolução integrada com as condições dos climas e solos dos trópicos úmidos sujeitos a forte sazonalidade."
Fonte: AB''SABER, A. Os Domínios de Natureza do Brasil: Potencialidades Paisagísticas. Ed. Bertrand Brasil: São Paulo, 2003, p. 18-19.',
'',
'["Domínio Amazônico.","Domínio das Araucárias.","Domínio das Caatingas.","Domínio dos Cerrados.","Domínio das Pradarias."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Geografia',
'Os aquíferos são importantes mananciais de recursos hídricos, cada vez mais utilizados pela população. Apesar do custo relativamente elevado para exploração, as águas subterrâneas tendem a possuir qualidade mais adequada aos usos humanos em comparação com as superficiais. Sobre os aquíferos e as águas subterrâneas, é CORRETO afirmar que:',
'',
'',
'["O uso das águas subterrâneas é mais comum nas cidades do que em zonas rurais, uma vez que o investimento necessário para exploração dos aquíferos é mais elevado do que aquele para exploração de rios e lagos (águas superficiais).","Lixões irregulares e vazamentos nas redes de condutos sanitários estão entre as principais fontes de contaminação dos aquíferos nas cidades, enquanto o uso de fossas rudimentares e agrotóxicos são os contaminantes principais nas zonas rurais.","A proteção das nascentes é fundamental para a boa qualidade das águas subterrâneas, sendo necessário garantir a integridade das suas áreas de preservação permanente, que são capazes de reter boa parte dos contaminantes.","Aquíferos rasos devem ser priorizados na exploração de água para o abastecimento público, pois são mais resistentes à contaminação pela percolação no solo de materiais tóxicos advindos das atividades humanas superficiais.","As águas subterrâneas são mais sensíveis ao aquecimento global do que as águas superficiais, já que podem estar armazenadas nos aquíferos há centenas ou até milhares de anos, o que faz com que sua reposição seja muito lenta."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Geografia',
'O consumo de energia pelos diferentes meios de transporte (aviação, caminhões, carros tradicionais e Sport Utility Vehicles – SUVs) e atividades industriais (energia e indústria pesada) são importantes emissores de gás carbônico para a atmosfera. Assinale a alternativa CORRETA sobre a emissão de gás carbônico entre 2010 e 2021:',
'Gráfico: Crescimento das emissões de CO2 entre 2010 e 2021, em milhões de toneladas. Carros tradicionais: -308; Aviação e transporte: 163; Caminhões: 184; Indústria pesada: 623; SUVs: 674; Energia: 1.371. *Considerando apenas emissões relacionadas à energia. Fonte: IEA (Agência Internacional de Energia). Disponível em: https://www.biznews.com.br/ Acesso em 05/07/2023.',
'/pism-2023-1-questao-10.png',
'["Os carros tradicionais emitem pouco gás carbônico, por serem movidos a partir de fontes de energia limpa.","A aviação e o transporte são movidos por combustível especial com tecnologia voltada à redução de emissão de gás carbônico.","Os caminhões emitem pouco gás carbônico, pois o diesel, principal combustível utilizado por eles, provém de fontes de energia limpa.","A soma entre o crescimento de emissões de gás carbônico da categoria \"aviação e transporte\" com a de \"caminhões\" ultrapassa a de \"indústria pesada\".","Os carros de modelo SUVs são um dos principais responsáveis pela emissão de gás carbônico, devido ao seu alto consumo de combustíveis de origem fóssil."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA (Questoes 11 a 15)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Matemática',
'Um salão retangular está sendo ladrilhado com peças hexagonais regulares. O pedreiro já assentou a primeira fila. Os triângulos são recortes da peça hexagonal buscando ter a menor perda de material possível. Pelos cálculos do pedreiro, a sala totalmente ladrilhada terá 7 filas como esta. O número mínimo de peças de ladrilhos hexagonais que devem ser comprados para cobrir completamente o chão da sala é',
'Figura: primeira fila de ladrilhos hexagonais regulares assentada em um salão retangular, com triângulos recortados das peças hexagonais nas bordas.',
'/pism-2023-1-questao-11.png',
'["28.","32.","38.","40.","42."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Matemática',
'Considere os números m, n e p representados, respectivamente, pelos pontos M, N e P na reta real, em que M está entre -1 e 0, N está sobre 0, e P está entre 1 e 2 (próximo de 2). O número m · n − p pertence ao intervalo',
'Figura: reta real com os pontos M (entre -1 e 0), N (sobre 0) e P (entre 1 e 2, próximo de 2).',
'/pism-2023-1-questao-12.png',
'["]−∞, −1[","]−1, 0[","]0, 1[","]1, 2[","]2, +∞["]'::jsonb,
'A'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Matemática',
'Um laboratório está analisando dois tipos de materiais, cujas massas em função do tempo t, em dias contados a partir do início da observação, são dadas, em gramas, por f(t) = (1/9)^(t+3) e g(t) = (1/27)^(2t−6). Depois de quantos dias após o início da observação os dois materiais terão a mesma massa?',
'',
'',
'["3","5","6","9","15"]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Matemática',
'Em um jogo de vôlei, o levantador de um time toca a bola no ponto A quando ela está a 2 metros de altura do chão e faz um levantamento paralelo à rede, acionando um de seus atacantes. A bola perfaz uma trajetória parabólica, como esboçado na figura, atingindo seu ponto mais alto a 3,35 metros de altura do chão, no ponto B, e o atacante golpeia a bola no ponto C. A que altura, em metros, do chão a bola está quando o atacante a toca?',
'Figura: trajetória parabólica da bola em um plano cartesiano; ponto A em (0, 2), ponto mais alto B a 3,35 m de altura (em x = 3) e ponto C em x = 4.',
'/pism-2023-1-questao-14.png',
'["2,25","2,75","3,05","3,20","3,35"]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Matemática',
'No triângulo ABC, retângulo em B, constrói-se o retângulo DEFG de diagonal 10 cm, conforme a figura. O lado AD do triângulo AED mede 9 cm e o lado GC do triângulo GFC mede 4 cm. A área do retângulo DEFG, em centímetros quadrados, mede',
'Figura: triângulo ABC retângulo em B, com o retângulo DEFG inscrito (diagonal 10 cm); AD = 9 cm no triângulo AED e GC = 4 cm no triângulo GFC.',
'/pism-2023-1-questao-15.png',
'["28.","48.","60.","80.","87."]'::jsonb,
'B'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- QUIMICA (Questoes 16 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Química',
'Os sais inorgânicos são uma classe de substâncias comumente encontradas em nosso cotidiano, como, por exemplo, o cloreto de sódio (sal de cozinha), o sulfato de cálcio (giz) e o bicarbonato de amônio (sal amoníaco). A partir das afirmações sobre a estrutura desses compostos assinale a alternativa INCORRETA.',
'',
'',
'["O amônio é um cátion de fórmula NH4+, formado por quatro átomos de hidrogênio e um átomo de nitrogênio e possuindo carga elétrica positiva igual a +1.","O bicarbonato é um ânion de fórmula HCO3-, formado por três elementos químicos diferentes e possuindo carga elétrica igual a -1.","O cálcio é um metal que forma um cátion de fórmula Ca2+, formado por apenas um átomo de cálcio e possuindo carga elétrica igual a +2.","O cloreto é um ânion de fórmula Cl-, formado por apenas um átomo de cloro e possuindo carga elétrica igual a -1.","O sulfato é um ânion de fórmula SO4 2-, constituído de 4 átomos de sódio e possuindo carga elétrica igual a -2."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Química',
'A água sólida (gelo) funde na temperatura constante de 0 °C. No entanto, durante a fusão, uma fonte externa deve fornecer calor para que todo o gelo se transforme em água líquida. Processo semelhante ocorre em 100 °C quando, durante a ebulição, a água líquida se transforma em gás. A partir dessas informações assinale a alternativa INCORRETA.',
'',
'',
'["A energia cinética média das moléculas após a fusão é menor do que a energia cinética média das moléculas após a ebulição.","Após o processo de fusão a energia cinética das moléculas pode aumentar pelo aumento da temperatura do líquido.","Durante a fusão toda a energia absorvida é usada na quebra das ligações de hidrogênio no sólido.","No estado líquido as moléculas de água não estão ligadas entre si por ligações de hidrogênio, pois todas as ligações intermoleculares foram rompidas.","No gelo todas as moléculas de água estão ligadas umas às outras por ligações de hidrogênio, não havendo molécula livre."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Química',
'A tabela periódica é uma ferramenta muito útil para a classificação dos elementos químicos. Nela, os elementos estão organizados em ordem crescente de _____________, em colunas verticais chamadas de ________ e em fileiras horizontais conhecidas como ______. Por exemplo, o elemento químico fósforo encontra-se localizado no ____________ da tabela. Indique a alternativa que completa corretamente o texto acima:',
'',
'',
'["Massa atômica, linhas, grupos, terceiro grupo.","Número atômico, períodos, grupos, segundo grupo.","Número de elétrons, isótopos, linhas, segundo grupo.","Número de massa, grupos, períodos, segundo período.","Número de prótons, grupos, períodos, terceiro período."]'::jsonb,
'E'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Química',
'O aumento de temperatura em alimentos ou bebidas causa alterações que podem ser classificadas como transformações físicas ou químicas. Considere os seguintes processos: I. Assar um bolo; II. Adoçar um café; III. Derreter uma pedra de gelo; IV. Cozinhar um ovo. Cada um desses processos I, II, III e IV corresponde a um tipo de transformação classificada respectivamente como:',
'',
'',
'["física, física, química e química.","física, química, física e física.","química, física, física e química.","química, física, química e física.","química, química, física e química."]'::jsonb,
'C'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Química',
'Propriedades físicas como o ponto de fusão, ponto de ebulição e densidade são propriedades específicas das substâncias e por isso podem ser utilizadas tanto para diferenciá-las quanto para identificá-las. Abaixo estão mostrados três tubos de ensaio de mesmo tamanho e diâmetro. Cada um contém a mesma massa de água, etanol anidro e etanol hidratado, porém não se sabe em qual tubo encontram-se cada uma das substâncias, uma vez que todas são incolores e translúcidas. Sabendo-se que na mesma temperatura de 20 °C a densidade da água é 0,998 g/mL, do etanol anidro é 0,789 g/mL e do etanol hidratado 0,812 g/mL, qual substância encontra-se nos tubos 1, 2 e 3, respectivamente (do tubo com maior volume ocupado ao de menor)?',
'Figura: três tubos de ensaio de mesmo tamanho e diâmetro (1, 2 e 3), cada um com a mesma massa de líquido, ocupando volumes diferentes.',
'/pism-2023-1-questao-20.png',
'["Água, etanol anidro e etanol hidratado.","Água, etanol hidratado, etanol anidro.","Etanol anidro, água e etanol hidratado.","Etanol anidro, etanol hidratado e água.","Etanol hidratado, água e etanol anidro."]'::jsonb,
'D'
from public.exams where slug = 'pism-2023-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
