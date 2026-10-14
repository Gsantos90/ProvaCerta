-- Insert-only: never updates or deletes existing exams or questions.
-- UERJ 2026, 2º Exame de Qualificação, 31/08/2025, Inglês.
begin;
do $guard$ begin
 if exists (select 1 from public.exams where slug='uerj-2026-eq2') then
  raise exception 'UERJ 2026 EQ2 already exists: no changes applied';
 end if;
end $guard$;
insert into public.exams(slug,title,source,year) values
 ('uerj-2026-eq2','UERJ 2026 · 2º Exame de Qualificação · Inglês','uerj','2026');
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation)
select e.id,v.* from public.exams e cross join (values
(1,'Física','Dentre os muitos nomes fundamentais ao pensamento filosófico e científico, encontra-se o de Arquimedes (287 a.C.-212 a.C.). Conta-se que, ao observar o deslocamento da água quando entrou em sua banheira para tomar banho, ele inferiu como determinar as quantidades de ouro e prata em uma coroa. Entusiasmado, saiu nu pelas ruas gritando “Eureca!”. A partir dessa descoberta, formulou-se o princípio de Arquimedes, baseado no conceito de:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q1.png"]','["empuxo", "impulso", "pressão", "inércia"]'::jsonb,'A',null),
(2,'Biologia','Outro nome importante ao pensamento filosófico e científico é o de Charles Darwin (1809-1882), que elaborou um dos conceitos de evolução. Em sua época, Darwin defendeu que todos os casos de evolução biológica sempre produzem o seguinte resultado:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q2.png"]','["melhoria genética", "mutações progressivas", "espécies mais complexas", "descendência com modificação"]'::jsonb,'D',null),
(3,'Filosofia','Marcelo Viana cita o filósofo inglês Bertrand Russell, para quem, enquanto a ciência diz o quanto não sabemos, a teologia garante que sabemos o que ignoramos. Já a filosofia, segundo este autor, se dedica à seguinte perspectiva:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q3.png"]','["sustentação da fé", "valorização da dúvida", "aceitação da verdade", "produção do consenso"]'::jsonb,'B',null),
(4,'Língua Portuguesa','Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. (l. 27-28) No trecho, os dois-pontos têm valor equivalente ao da seguinte expressão:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q4.png"]','["ou seja", "ou melhor", "além disso", "sendo assim"]'::jsonb,'A',null),
(5,'Química','Fractais são um tipo de forma geométrica encontrada nos cristais de gelo que compõem os flocos de neve. Admita que um fractal apresente massa igual a 9,0 × 10⁻⁴ g e que seja formado apenas por moléculas de água. Nesse fractal, o número de moléculas de água é igual a:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q5.png", "/uerj-2026-eq2/apoio-p39.png"]','["5,0 × 10¹⁸", "4,0 × 10¹⁸", "3,0 × 10¹⁹", "2,0 × 10¹⁹"]'::jsonb,'C',null),
(6,'Matemática','O chamado conjunto de Cantor, formado pelos infinitos pontos que são os extremos de segmentos de retas, gera uma curva que é um fractal. Esse conjunto é resultante da remoção, infinitas vezes, do terço central de segmentos de reta. No apoio oficial, apresentam-se os quatro primeiros passos da obtenção desses pontos. No passo 6 desse exemplo, a quantidade de pontos que são os extremos dos segmentos formados é:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q6.png"]','["32", "64", "128", "256"]'::jsonb,'B',null),
(7,'História','A ciência contra o negacionismo O negacionismo científico e o obscurantismo intelectual tiveram ao menos um efeito colateral positivo: um despertar da comunidade científica para a importância da comunicação com a sociedade. É notável o aumento da participação de pesquisadores, médicos e acadêmicos na divulgação da ciência e no combate às fake news no decorrer da pandemia de covid-19, tanto pelos meios tradicionais de comunicação (servindo como fontes de informações confiáveis para a imprensa, por exemplo), quanto por iniciativas pessoais nas redes sociais. “A defesa das vacinas é o nosso último front . Se não conseguirmos convencer as pessoas de que as vacinas são seguras e que elas precisam se vacinar, vai ficar muito difícil defender qualquer coisa com base na ciência daqui pra frente”, diz João Henrique Rafael Junior, membro da União Pró-Vacina, da Universidade de São Paulo de Ribeirão Preto. Herton Escobar Adaptado de jornal.usp.br, 22/01/2021. Nos últimos anos, em diversas sociedades, os ataques à ciência alimentam posturas negacionistas e reações a elas. No contexto da reportagem, a defesa da confiabilidade das vacinas foi realizada, principalmente, pela validação prévia com base no procedimento científico de:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q7.png"]','["teorização", "observação", "comparação", "experimentação"]'::jsonb,'D',null),
(8,'Geografia','Observe no apoio o quadro “O confuso mundo do esporte internacional nas Ilhas Britânicas”. No texto base, menciona-se a formação do Estado-nação. As imagens são exemplares para compreender que Estado e nação são conceitos distintos e polissêmicos e indicam a existência de Estados plurinacionais. As unidades espaciais disputam competições esportivas com diferentes configurações, ora reunidas, ora separadas. A “confusão” referida no título está vinculada ao fato de as imagens englobarem, simultaneamente, as seguintes unidades espaciais:','Filosofia e ciência, juntas desde a Antiguidade
Quando fiz o ensino médio, em Portugal no final dos anos 1970, o currículo incluía duas disciplinas
obrigatórias: português e filosofia. Creio que ambas continuam obrigatórias por lá. Elas me abriram
horizontes que talvez eu não tivesse alcançado de outra forma.
Um de meus temas favoritos era a filosofia da ciência. Foi assim que tomei conhecimento de Henri
Poincaré (1854-1912) e de suas ideias sobre a natureza do raciocínio matemático. A matemática é uma
ciência notável porque é, ao mesmo tempo, dedutiva (rigorosa) e indutiva (criadora de conhecimento):
todos os fatos são consequências lógicas de algumas afirmações fundamentais, chamadas “axiomas”.
Mas os teoremas, como o de Pitágoras, dizem coisas que vão muito além dos axiomas. Como isso é
possível, de onde surge esse conhecimento?
Foi na aula de filosofia, e não de matemática, que ouvi falar pela primeira vez dos objetos maravilhosos
que depois seriam chamados “fractais”. A palavra ainda não era conhecida: o livro A geometria fractal da
natureza, de Benoît Mandelbrot (1924-2010), que a criou e popularizou, só foi publicado (em inglês) uns
anos depois. Mas os fractais já assombravam matemáticos e filósofos desde o século XIX. Como não ficar
fascinado com o floco de neve de Helge von Koch (1870-1924), em que todo (!) ponto é uma “esquina”
onde não existe reta tangente? Dez anos depois eu me tornaria pesquisador, e a matemática dos fractais
seria (e é até hoje) um de meus maiores interesses de pesquisa.
Como adquirimos conhecimento? E o que podemos conhecer? A realidade é objetiva ou uma mera
representação subjetiva? As questões da epistemologia me ajudaram, anos depois, a entender melhor o
significado da mecânica quântica. As aulas me instigaram a ler mais sobre temas filosóficos, e assim conheci
a excelente História da filosofia ocidental, de Bertrand Russell (1872-1970), um dos livros mencionados
quando ele ganhou o prêmio Nobel de Literatura, em 1950. Por meio dele me interessei pelo pensamento
cristão antigo e medieval. Pelos grandes pensadores da Igreja e sua busca pela divindade por meio da
razão aliada à fé. Pelo modo como o humanismo emergiu dessa busca, no fim da Idade Média. Pela nova
aliança entre a ciência e a filosofia, que redesenhou o mundo no Renascimento. A gênese, mais tarde,
do Estado-nação e de outras ideias fundamentais que moldaram a história das relações internacionais,
magistralmente contada por Henry Kissinger (1923-2023) em Diplomacia (2012).
Para Russell, a filosofia é uma “terra sem dono” entre a ciência e a teologia: tal como esta, lida com
questões inacessíveis ao método científico, mas usando a razão no lugar do dogma. “A ciência diz-nos
o que sabemos, e é pouco [...]; a teologia induz a crer dogmaticamente que temos conhecimento onde
realmente só temos ignorância”, explica. “Ensinar a viver sem certeza e sem ser paralisado pela hesitação
é talvez a dádiva mais importante da filosofia do nosso tempo a quem estuda.” Essas palavras de 1945 são
mais relevantes do que nunca em nossos dias.
Marcelo Viana
Histórias da matemática: da contagem nos dedos à inteligência artificial. São Paulo: Tinta-da-China Brasil, 2024.','["/uerj-2026-eq2/apoio-p3.png", "/uerj-2026-eq2/q8.png"]','["três Estados-territoriais e duas nações", "cinco Estados-territoriais e três nações", "dois Estados-territoriais e quatro nações", "quatro Estados-territoriais e cinco nações"]'::jsonb,'C',null),
(9,'Língua Portuguesa','O romance é dividido em quatro partes – o preço, quitação, posse e resgate –, elementos que organizam a relação entre Aurélia e Fernando. Com base nesses elementos, a relação entre os personagens pode ser caracterizada sobretudo como:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q9.png"]','["burocrática", "comercial", "política", "judicial"]'::jsonb,'B',null),
(10,'Língua Portuguesa','No geral conceito, esse único filho varão devia ser o amparo da família, órfã de seu chefe natural. Não o entendiam assim aquelas três criaturas, que se desviviam pelo ente querido. Seu destino resumia-se em fazê-lo feliz; não que elas pensassem isto e fossem capazes de o exprimir ; mas faziam-no. O trecho faz referência à relação entre Fernando e sua mãe e irmãs. Nele, o verbo “desviver”, com base em seu uso e nos elementos que o formam, expressa ideia de:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q10.png"]','["anulação", "gradação", "regressão", "transgressão"]'::jsonb,'A',null),
(11,'Língua Portuguesa','José de Alencar constrói, em Aurélia, um perfil de mulher independente e livre, capaz de comprar um marido ao invés de se submeter a ele. O narrador do romance, no entanto, frequentemente a diminui, ao mesmo tempo que a engrandece, como se observa em:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q11.png"]','["A natureza dotara Aurélia com a inteligência viva e brilhante da mulher de talento que, se não atinge ao vigoroso raciocínio do homem, tem a preciosa ductilidade de prestar-se a todos os assuntos, por mais diversos que sejam.", "Suspeito eu porém que a explicação dessa singularidade já ficou assinalada. Aurélia amava mais seu amor do que seu amante; era mais poeta do que mulher; preferia o ideal ao homem.", "− Meu voto mais ardente, Aurélia, sonho dourado de minha vida, era conquistar uma posição brilhante para depô-la aos pés da única mulher que amei neste mundo.", "Com uma existência calma e um amor feliz, Aurélia teria sido meiga esposa e mãe extremosa. Atravessaria o mundo como tantas outras mulheres envoltas nesse cândido enlevo das ilusões, que são a alva pura do anjo, peregrino na terra."]'::jsonb,'A',null),
(12,'Língua Portuguesa','Não era a moça que ali estava à janela; mas uma estátua ou, com mais propriedade, a figura de cera do mostrador de um cabeleireiro da moda. [...] O Lemos, que andava sempre metido na roda dos rapazes, veio a saber do aparecimento da bisca da rua de Santa Teresa. Entendeu o árdego velhinho que, em sua qualidade de tio, cabia-lhe um certo direito de primazia sobre esse bem de família. Seguindo os apelos da mãe, Aurélia procura conseguir um casamento. Nesse momento, como mostra o trecho, o narrador se vale de determinadas metáforas para descrever a personagem. Essas metáforas produzem o sentido de:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q12.png"]','["alienação", "exaltação", "reificação", "dissimulação"]'::jsonb,'C',null),
(13,'Língua Portuguesa','Durante um mês, Aurélia inebriou-se da suprema felicidade de viver amante e amada. [...] Seria difícil conhecer a quem mais adorava a gentil menina, e de quem mais vivia, se do homem que a visitava todos os dias ao cair da tarde, se do ideal que sua imaginação copiara daquele modelo. Como Pigmalião ela tinha cinzelado uma estátua e, talvez, [...], se apaixonasse por sua criatura [...]. Pigmalião e Galateia, de Jean-Léon Gérôme, 1860. greciantiga.org O personagem mítico Pigmalião, decepcionado com o comportamento feminino, esculpe uma imagem de mulher e acaba se apaixonando por sua obra. De modo similar, Aurélia, já casada, manda pintar um retrato de Fernando, no qual destaca uma expressão honesta que deseja reconhecer no marido. Na construção da narrativa, essa imagem idealizada, cultivada desde que Aurélia conheceu Fernando, acaba por assumir a função de:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q13.png"]','["fortalecer a decisão tomada por Aurélia", "resguardar Aurélia da angústia cotidiana", "liberar Fernando do compromisso assumido", "antecipar a transformação sofrida por Fernando"]'::jsonb,'D',null),
(14,'Língua Portuguesa','Quando Seixas convenceu-se de que não podia casar com Aurélia, revoltou-se contra si próprio. Não se perdoava a imprudência de apaixonar-se por uma moça pobre e quase órfã, imprudência a que pusera remate o pedido de casamento. O rompimento deste enlace irrefletido era para ele uma coisa irremediável, fatal; mas o seu procedimento o indignava. Havia nessa contradição da consciência de Seixas com a sua vontade uma anomalia psicológica, da qual não são raros os exemplos na sociedade atual. O falseamento de certos princípios da moral, dissimulado pela educação e conveniência sociais, vai criando esses aleijões de homens de bem. A expressão “aleijões de homens de bem”, empregada pelo narrador, serve tanto para homens de hoje como de ontem. Com base no trecho, a expressão designa aqueles homens que, em relação à ideia de moral e bons costumes, têm a postura de:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q14.png"]','["defesa, mas ignoram o contexto político", "crítica, mas se submetem a padrões instituídos", "defesa, mas privilegiam os próprios interesses", "crítica, mas controlam o comportamento alheio"]'::jsonb,'C',null),
(15,'Língua Portuguesa','Tornemos à câmara nupcial, onde se representa a primeira cena do drama original, de que apenas conhecemos o prólogo. Os dois atores ainda conservam a mesma posição em que os deixamos. A cena transcrita acima retoma o momento em que Aurélia diz a Fernando que o comprou. Essa cena exemplifica uma ocorrência de metaficção que se manifesta da seguinte forma:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q15.png"]','["o narrador assume sua condição de narrador", "o romance se compara com outro romance", "o leitor se identifica com o personagem", "o autor relata sua experiência de escritor"]'::jsonb,'A',null),
(16,'Língua Portuguesa','Depois desse pranto que o desafogou, Seixas aproximou-se da elegante escrivaninha de mirapininga, e a abriu. Ainda chegou a puxar a pasta de chamalote escarlate. Na aba superior, dentro de um florão branco, aparecia bordado em debuxo de ouro o seu monograma, F. R. S., entrelaçados. Esteve a olhar maquinalmente essas letras que se lhe afiguravam um enigma. Como na fábula antiga, a esfinge o estupidava. Que significação tinha isso depois do desenlace que momentos antes o havia arremessado à maior abjeção? A esfinge é uma criatura mitológica presente em algumas culturas. Na tragédia grega Édipo Rei, de Sófocles, uma esfinge exige que viajantes decifrem um enigma para que não sejam devorados. Recém-casado, Seixas se vê diante de um enigma, já que as atitudes de Aurélia apontavam para uma contradição entre os seguintes elementos:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q16.png"]','["realidade e fantasia", "humilhação e cuidado", "pessimismo e otimismo", "avareza e desprendimento"]'::jsonb,'B',null),
(17,'Língua Portuguesa','− Dizem que a água no vinho faz de duas bebidas excelentes uma péssima. O mesmo acontece à mistura da virtude com o vício. Torna o homem um ente híbrido. Nem bom, nem mau. Nem digno de ser amado, nem tão vil que se lhe evite o contágio. Compreendo o que deve sentir uma mulher... o que sentiu uma amiga minha, quando conheceu que amava um desses homens equívocos, produtos da sociedade moderna. Alencar construiu Fernando com uma característica principal, subentendida na fala acima, de Aurélia. Trata-se da seguinte característica:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q17.png"]','["liberalidade", "ambiguidade", "excentricidade", "superficialidade"]'::jsonb,'B',null),
(18,'Língua Portuguesa','No trecho, ao refletir a respeito das inclinações poéticas de seu tempo, o escritor José de Alencar revela o seguinte ponto de vista:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.

Frequentemente, em seus versos, Seixas falava de estrelas, flores e brisas, de que tirava imagens para exprimir a graça da mulher e as emoções do amor. Pura imitação: como em geral os poetas da civilização, ele não recebia da realidade essas impressões, e sim de uma variada leitura. Originais somente são aqueles engenhos que se infundem na natureza, musa inexaurível porque é divina. Para isso, é preciso ou nascer nas idades primitivas ou desprezar a sociedade e refugiar-se na solidão.','["/uerj-2026-eq2/apoio-p10.png", "/uerj-2026-eq2/q18.png"]','["submissão à Europa", "valorização da tradição", "exaltação dos modismos", "rejeição ao convencionalismo"]'::jsonb,'D',null),
(19,'Língua Portuguesa','Na frase sublinhada, identificam-se, respectivamente, os seguintes recursos de organização de ideias:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.

Frequentemente, em seus versos, Seixas falava de estrelas, flores e brisas, de que tirava imagens para exprimir a graça da mulher e as emoções do amor. Pura imitação: como em geral os poetas da civilização, ele não recebia da realidade essas impressões, e sim de uma variada leitura. Originais somente são aqueles engenhos que se infundem na natureza, musa inexaurível porque é divina. Para isso, é preciso ou nascer nas idades primitivas ou desprezar a sociedade e refugiar-se na solidão.','["/uerj-2026-eq2/apoio-p10.png", "/uerj-2026-eq2/q19.png"]','["causalidade e gradação", "gradação e comparação", "comparação e contra-argumentação", "contra-argumentação e causalidade"]'::jsonb,'C',null),
(20,'Língua Portuguesa','− Talvez nunca lhe acontecesse refletir sobre esse problema social, continuou Fernando. O senhor tem o direito de despedir o cativo, quando lhe aprouver? − Creio que ninguém porá isso em dúvida, respondeu Aurélia. − Então entende que depois de privar-se um homem de sua liberdade, de o rebaixar ante a própria consciência, de o haver transformado em um instrumento, é lícito, a pretexto de alforria, abandonar essa criatura a quem sequestraram da sociedade? Eu penso o contrário. A escravidão se apresenta hoje, ao nosso espírito, sob um aspecto repugnante. [...] Como todas as instituições sociais que têm radicação profunda na história do mundo e se prendem à natureza humana, a escravidão não se extingue por ato de poder ; e sim pela caducidade moral, pela revolução lenta e soturna das ideias. É preciso que seque a raiz, para faltar às ideias a seiva nutritiva. José de Alencar CARVALHO, José M. de. (Org.) Cartas de Erasmo. Rio de Janeiro: ABL, 2009. No diálogo entre Aurélia e Fernando, encontra-se subentendido um argumento de José de Alencar sobre o regime escravocrata. Com base nesse diálogo e no trecho citado de uma crônica do autor, infere-se que, para este, o fim da escravidão deveria acontecer da seguinte forma:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q20.png"]','["legalmente", "parcialmente", "urgentemente", "progressivamente"]'::jsonb,'D',null),
(21,'Língua Portuguesa','− E o que há de mais inverossímil que a própria verdade?, retorquiu Aurélia, repetindo uma frase célebre. Sei de uma moça... Se alguém escrevesse a sua história, diriam como o senhor : “É impossível! Esta mulher nunca existiu”. Entretanto eu a conheci. Considerando que verossimilhança significa “semelhante à verdade”, a pergunta de Aurélia é um exemplo da seguinte figura de linguagem:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q21.png"]','["paradoxo", "hipérbole", "metonímia", "eufemismo"]'::jsonb,'A',null),
(22,'Língua Portuguesa','Lia os mesmos livros que ela; os pensamentos de ambos encontravam-se nas páginas que um já tinha percorrido, e confundiam-se. Aplaudiam reciprocamente ou censuravam. No século XIX, o livro adquiriu no Brasil, ainda que para uma pequena parcela da população, um significado importante em termos de formação cultural. Várias passagens do romance indicam que Aurélia e Seixas são leitores e valorizam livros. No caso do trecho citado, o livro assume a seguinte representação metafórica para os personagens:','As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.','["/uerj-2026-eq2/q22.png"]','["fuga da realidade", "espaço de convívio", "disputa de opinião", "desejo de conhecimento"]'::jsonb,'B',null),
(23,'Inglês','The theme of the article is the importance of philosophy in people’s daily lives. To address this importance, the following strategy is used:','The critical importance of philosophy
in contemporary life
In an age dominated by rapid technological advances and shifting social paradigms, philosophy often finds
itself sidelined in favor of more immediate and practical concerns. In fact, it’s often criticized as society
has a tendency to view it as of little service today. Yet, its role in contemporary life is not just essential but
transformative.
One of the most significant roles philosophy plays in our lives is in the search for meaning. Modern life, with
its pace and distractions, often leaves individuals feeling disconnected or uncertain about their purpose.
Here, philosophy offers a roadmap. Philosophers like Søren Kierkegaard and Jean-Paul Sartre tackled
questions of existential meaning, reminding us that our lives have significance only insofar as we define
it for ourselves. Whether through Stoicism’s emphasis on control or existentialism’s focus on freedom,
philosophy provides tools to help us navigate this fundamental question in life. Philosophy is not merely
a theoretical discipline; it is a vital tool for navigating the complexities of modern existence. Thus, from
refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas,
providing a basis for addressing the issues that shape our lives.
Critical thinking - the ability to analyze and evaluate information, ideas, and arguments - is perhaps one
of the most valuable skills philosophy can offer. In today’s world, where information is abundant but often
contradictory or misleading, philosophy trains us to think deeply and logically. This is especially important
nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen
as more relevant than rational discourse.
Ethics, a key area of philosophy, goes hand-in-hand with critical thinking. Philosophy’s engagement with
moral questions forces us to confront the complexities of right and wrong. Philosophy challenges us to
examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. This
is particularly important in a multicultural society where ethical norms may vary. Moreover, philosophical
reasoning provides intellectual tools to engage with moral issues and resolve them thoughtfully, making it
an indispensable skill in both personal and professional life.
Actually, the modern world faces many moral challenges that transcend national borders, such as
refugee rights, climate justice, and the ethics of global trade. Eventually, philosophers have contributed
significantly to understanding these global issues, reminding us of our shared humanity and responsibility.
By drawing on philosophical insights from diverse traditions, we can develop a more inclusive and ethical
approach to global challenges.
All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions,
but it remains an important tool for our existence. It doesn’t just address abstract issues; it is practical in
helping us deal with personal struggles. The Stoic philosophers, for example, developed techniques for
handling life’s challenges with resilience and composure. They taught us that suffering is a part of life, but
how we respond to it is within our control. The Roman philosopher Cicero acknowledges this when he
says, “There is, I assure you, a medical art for the soul. It is philosophy, whose aid need not be sought, as in
bodily diseases, from outside ourselves. We must endeavour with all our resources and all our strength to
become capable of doctoring ourselves.”
Adaptado de philosophy.institute.','["/uerj-2026-eq2/apoio-p16.png", "/uerj-2026-eq2/q23.png"]','["explain origin", "assess evolution", "highlight benefits", "predict tendencies"]'::jsonb,'C',null),
(24,'Inglês','According to the text, the following aspect of philosophy is undervalued by society:','The critical importance of philosophy
in contemporary life
In an age dominated by rapid technological advances and shifting social paradigms, philosophy often finds
itself sidelined in favor of more immediate and practical concerns. In fact, it’s often criticized as society
has a tendency to view it as of little service today. Yet, its role in contemporary life is not just essential but
transformative.
One of the most significant roles philosophy plays in our lives is in the search for meaning. Modern life, with
its pace and distractions, often leaves individuals feeling disconnected or uncertain about their purpose.
Here, philosophy offers a roadmap. Philosophers like Søren Kierkegaard and Jean-Paul Sartre tackled
questions of existential meaning, reminding us that our lives have significance only insofar as we define
it for ourselves. Whether through Stoicism’s emphasis on control or existentialism’s focus on freedom,
philosophy provides tools to help us navigate this fundamental question in life. Philosophy is not merely
a theoretical discipline; it is a vital tool for navigating the complexities of modern existence. Thus, from
refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas,
providing a basis for addressing the issues that shape our lives.
Critical thinking - the ability to analyze and evaluate information, ideas, and arguments - is perhaps one
of the most valuable skills philosophy can offer. In today’s world, where information is abundant but often
contradictory or misleading, philosophy trains us to think deeply and logically. This is especially important
nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen
as more relevant than rational discourse.
Ethics, a key area of philosophy, goes hand-in-hand with critical thinking. Philosophy’s engagement with
moral questions forces us to confront the complexities of right and wrong. Philosophy challenges us to
examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. This
is particularly important in a multicultural society where ethical norms may vary. Moreover, philosophical
reasoning provides intellectual tools to engage with moral issues and resolve them thoughtfully, making it
an indispensable skill in both personal and professional life.
Actually, the modern world faces many moral challenges that transcend national borders, such as
refugee rights, climate justice, and the ethics of global trade. Eventually, philosophers have contributed
significantly to understanding these global issues, reminding us of our shared humanity and responsibility.
By drawing on philosophical insights from diverse traditions, we can develop a more inclusive and ethical
approach to global challenges.
All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions,
but it remains an important tool for our existence. It doesn’t just address abstract issues; it is practical in
helping us deal with personal struggles. The Stoic philosophers, for example, developed techniques for
handling life’s challenges with resilience and composure. They taught us that suffering is a part of life, but
how we respond to it is within our control. The Roman philosopher Cicero acknowledges this when he
says, “There is, I assure you, a medical art for the soul. It is philosophy, whose aid need not be sought, as in
bodily diseases, from outside ourselves. We must endeavour with all our resources and all our strength to
become capable of doctoring ourselves.”
Adaptado de philosophy.institute.','["/uerj-2026-eq2/apoio-p16.png", "/uerj-2026-eq2/q24.png"]','["utility", "flexibility", "objectivity", "complexity"]'::jsonb,'A',null),
(25,'Inglês','Philosophy has the capacity to engage in a vast range of subjects and perspectives. This is emphasized in the sentence below:','The critical importance of philosophy
in contemporary life
In an age dominated by rapid technological advances and shifting social paradigms, philosophy often finds
itself sidelined in favor of more immediate and practical concerns. In fact, it’s often criticized as society
has a tendency to view it as of little service today. Yet, its role in contemporary life is not just essential but
transformative.
One of the most significant roles philosophy plays in our lives is in the search for meaning. Modern life, with
its pace and distractions, often leaves individuals feeling disconnected or uncertain about their purpose.
Here, philosophy offers a roadmap. Philosophers like Søren Kierkegaard and Jean-Paul Sartre tackled
questions of existential meaning, reminding us that our lives have significance only insofar as we define
it for ourselves. Whether through Stoicism’s emphasis on control or existentialism’s focus on freedom,
philosophy provides tools to help us navigate this fundamental question in life. Philosophy is not merely
a theoretical discipline; it is a vital tool for navigating the complexities of modern existence. Thus, from
refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas,
providing a basis for addressing the issues that shape our lives.
Critical thinking - the ability to analyze and evaluate information, ideas, and arguments - is perhaps one
of the most valuable skills philosophy can offer. In today’s world, where information is abundant but often
contradictory or misleading, philosophy trains us to think deeply and logically. This is especially important
nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen
as more relevant than rational discourse.
Ethics, a key area of philosophy, goes hand-in-hand with critical thinking. Philosophy’s engagement with
moral questions forces us to confront the complexities of right and wrong. Philosophy challenges us to
examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. This
is particularly important in a multicultural society where ethical norms may vary. Moreover, philosophical
reasoning provides intellectual tools to engage with moral issues and resolve them thoughtfully, making it
an indispensable skill in both personal and professional life.
Actually, the modern world faces many moral challenges that transcend national borders, such as
refugee rights, climate justice, and the ethics of global trade. Eventually, philosophers have contributed
significantly to understanding these global issues, reminding us of our shared humanity and responsibility.
By drawing on philosophical insights from diverse traditions, we can develop a more inclusive and ethical
approach to global challenges.
All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions,
but it remains an important tool for our existence. It doesn’t just address abstract issues; it is practical in
helping us deal with personal struggles. The Stoic philosophers, for example, developed techniques for
handling life’s challenges with resilience and composure. They taught us that suffering is a part of life, but
how we respond to it is within our control. The Roman philosopher Cicero acknowledges this when he
says, “There is, I assure you, a medical art for the soul. It is philosophy, whose aid need not be sought, as in
bodily diseases, from outside ourselves. We must endeavour with all our resources and all our strength to
become capable of doctoring ourselves.”
Adaptado de philosophy.institute.','["/uerj-2026-eq2/apoio-p16.png", "/uerj-2026-eq2/q25.png"]','["Thus, from refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas, providing a basis for addressing the issues that shape our lives. (l. 11-13)", "In today’s world, where information is abundant but often contradictory or misleading, philosophy trains us to think deeply and logically. (l. 15-16)", "Philosophy challenges us to examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. (l. 20-21)", "All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions, but it remains an important tool for our existence. (l. 30-31)"]'::jsonb,'A',null),
(26,'Inglês','This is especially important nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen as more relevant than rational discourse. (l. 16-18) The underlined words express, respectively, the following meanings:','The critical importance of philosophy
in contemporary life
In an age dominated by rapid technological advances and shifting social paradigms, philosophy often finds
itself sidelined in favor of more immediate and practical concerns. In fact, it’s often criticized as society
has a tendency to view it as of little service today. Yet, its role in contemporary life is not just essential but
transformative.
One of the most significant roles philosophy plays in our lives is in the search for meaning. Modern life, with
its pace and distractions, often leaves individuals feeling disconnected or uncertain about their purpose.
Here, philosophy offers a roadmap. Philosophers like Søren Kierkegaard and Jean-Paul Sartre tackled
questions of existential meaning, reminding us that our lives have significance only insofar as we define
it for ourselves. Whether through Stoicism’s emphasis on control or existentialism’s focus on freedom,
philosophy provides tools to help us navigate this fundamental question in life. Philosophy is not merely
a theoretical discipline; it is a vital tool for navigating the complexities of modern existence. Thus, from
refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas,
providing a basis for addressing the issues that shape our lives.
Critical thinking - the ability to analyze and evaluate information, ideas, and arguments - is perhaps one
of the most valuable skills philosophy can offer. In today’s world, where information is abundant but often
contradictory or misleading, philosophy trains us to think deeply and logically. This is especially important
nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen
as more relevant than rational discourse.
Ethics, a key area of philosophy, goes hand-in-hand with critical thinking. Philosophy’s engagement with
moral questions forces us to confront the complexities of right and wrong. Philosophy challenges us to
examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. This
is particularly important in a multicultural society where ethical norms may vary. Moreover, philosophical
reasoning provides intellectual tools to engage with moral issues and resolve them thoughtfully, making it
an indispensable skill in both personal and professional life.
Actually, the modern world faces many moral challenges that transcend national borders, such as
refugee rights, climate justice, and the ethics of global trade. Eventually, philosophers have contributed
significantly to understanding these global issues, reminding us of our shared humanity and responsibility.
By drawing on philosophical insights from diverse traditions, we can develop a more inclusive and ethical
approach to global challenges.
All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions,
but it remains an important tool for our existence. It doesn’t just address abstract issues; it is practical in
helping us deal with personal struggles. The Stoic philosophers, for example, developed techniques for
handling life’s challenges with resilience and composure. They taught us that suffering is a part of life, but
how we respond to it is within our control. The Roman philosopher Cicero acknowledges this when he
says, “There is, I assure you, a medical art for the soul. It is philosophy, whose aid need not be sought, as in
bodily diseases, from outside ourselves. We must endeavour with all our resources and all our strength to
become capable of doctoring ourselves.”
Adaptado de philosophy.institute.','["/uerj-2026-eq2/apoio-p16.png", "/uerj-2026-eq2/q26.png"]','["manner – time", "reason – manner", "time – comparison", "comparison – reason"]'::jsonb,'B',null),
(27,'Inglês','In the last paragraph, a quote from the Roman philosopher Cicero is presented. Considering suffering, this quote describes philosophy as an instrument of:','The critical importance of philosophy
in contemporary life
In an age dominated by rapid technological advances and shifting social paradigms, philosophy often finds
itself sidelined in favor of more immediate and practical concerns. In fact, it’s often criticized as society
has a tendency to view it as of little service today. Yet, its role in contemporary life is not just essential but
transformative.
One of the most significant roles philosophy plays in our lives is in the search for meaning. Modern life, with
its pace and distractions, often leaves individuals feeling disconnected or uncertain about their purpose.
Here, philosophy offers a roadmap. Philosophers like Søren Kierkegaard and Jean-Paul Sartre tackled
questions of existential meaning, reminding us that our lives have significance only insofar as we define
it for ourselves. Whether through Stoicism’s emphasis on control or existentialism’s focus on freedom,
philosophy provides tools to help us navigate this fundamental question in life. Philosophy is not merely
a theoretical discipline; it is a vital tool for navigating the complexities of modern existence. Thus, from
refining personal beliefs to sharpening our critical thinking, philosophy encompasses different areas,
providing a basis for addressing the issues that shape our lives.
Critical thinking - the ability to analyze and evaluate information, ideas, and arguments - is perhaps one
of the most valuable skills philosophy can offer. In today’s world, where information is abundant but often
contradictory or misleading, philosophy trains us to think deeply and logically. This is especially important
nowadays, as we live in an age of social media and instant communication, and emotional appeals are seen
as more relevant than rational discourse.
Ethics, a key area of philosophy, goes hand-in-hand with critical thinking. Philosophy’s engagement with
moral questions forces us to confront the complexities of right and wrong. Philosophy challenges us to
examine the principles behind our judgments, helping us make informed, consistent, and fair decisions. This
is particularly important in a multicultural society where ethical norms may vary. Moreover, philosophical
reasoning provides intellectual tools to engage with moral issues and resolve them thoughtfully, making it
an indispensable skill in both personal and professional life.
Actually, the modern world faces many moral challenges that transcend national borders, such as
refugee rights, climate justice, and the ethics of global trade. Eventually, philosophers have contributed
significantly to understanding these global issues, reminding us of our shared humanity and responsibility.
By drawing on philosophical insights from diverse traditions, we can develop a more inclusive and ethical
approach to global challenges.
All in all, philosophy may seem like an abstract or outdated discipline in the face of contemporary questions,
but it remains an important tool for our existence. It doesn’t just address abstract issues; it is practical in
helping us deal with personal struggles. The Stoic philosophers, for example, developed techniques for
handling life’s challenges with resilience and composure. They taught us that suffering is a part of life, but
how we respond to it is within our control. The Roman philosopher Cicero acknowledges this when he
says, “There is, I assure you, a medical art for the soul. It is philosophy, whose aid need not be sought, as in
bodily diseases, from outside ourselves. We must endeavour with all our resources and all our strength to
become capable of doctoring ourselves.”
Adaptado de philosophy.institute.','["/uerj-2026-eq2/apoio-p16.png", "/uerj-2026-eq2/q27.png"]','["self-development", "self-assurance", "self-respect", "self-healing"]'::jsonb,'D',null),
(28,'Matemática','Observe no gráfico do apoio a distribuição de frequências das notas de matemática de 20 alunos de uma turma. A média aritmética das notas de matemática de todos os alunos dessa turma é:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q28.png"]','["6,2", "6,4", "6,6", "6,8"]'::jsonb,'B',null),
(29,'Matemática','A parábola representada no apoio intersecta os eixos coordenados nos pontos A (1, 0), B (−1, 0) e C (0, −1). Essa parábola é o gráfico da função quadrática f definida pela seguinte sentença:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q29.png"]','["f(x) = x² − 1", "f(x) = x² + 1", "f(x) = −x² − 1", "f(x) = −x² + 1"]'::jsonb,'A',null),
(30,'Matemática','Um lojista comprou 625 camisas e vendeu cada uma delas por x reais. O custo de sua compra foi igual ao valor exato da venda de 500 camisas. Com a venda de todas as camisas, o percentual de lucro obtido pelo lojista, em relação ao custo, foi:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q30.png"]','["15%", "20%", "25%", "30%"]'::jsonb,'C',null),
(31,'Matemática','Considere o seno e o cosseno de um ângulo α do segundo quadrante do círculo trigonométrico representado no apoio. Se sen α = 3/4, o valor de cos α é:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q31.png"]','["√7/4", "1/4", "−√7/4", "−1/4"]'::jsonb,'C',null),
(32,'Matemática','Observe no apoio o retângulo PQRS com lados PQ = 8 cm e PS = 3 cm. O ponto T é a interseção do lado RS com o segmento PU, sendo TS = 5 cm. O ponto U, que define o triângulo RUT, pertence à reta QR. A área do triângulo RUT, em cm², é igual a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q32.png"]','["27/10", "25/7", "13/10", "11/7"]'::jsonb,'A',null),
(33,'Matemática','O tetraedro ABCD tem altura AD e base ABC inscrita em um círculo de diâmetro AB, conforme mostra a ilustração do apoio. Todo triângulo inscrito em um círculo que tem um dos lados igual ao diâmetro é retângulo. Considere que AC = 6 cm, BC = 8 cm e BD = 10√2. O volume desse tetraedro, em cm³, é igual a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q33.png"]','["240", "120", "90", "80"]'::jsonb,'D',null),
(34,'Matemática','Em um grupo de 40 pessoas adultas, 18 têm mais de 50 anos e 25 têm curso superior. Dentre aquelas com mais de 50, há 8 que não têm curso superior. Se uma pessoa escolhida ao acaso tem curso superior, a probabilidade de ela ter mais de 50 anos é:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q34.png"]','["3/4", "1/4", "3/5", "2/5"]'::jsonb,'D',null),
(35,'Física','Em um experimento, verificou-se a relação entre a tensão, em volts, e a corrente elétrica, em ampères, nos resistores R₁ e R₂. Observe o gráfico no apoio. A resistência, em ohms, equivalente da associação em série de R₁ e R₂ é igual a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q35.png"]','["20", "30", "40", "50"]'::jsonb,'D',null),
(36,'Biologia','Seres humanos podem contrair malária ao serem picados por mosquitos Anopheles que transmitem protozoários do gênero Plasmodium . Após entrar na corrente sanguínea do hospedeiro humano, esses parasitas se alojam, de início, no interior de um tipo de célula onde se multiplicam várias vezes de forma assexuada, aumentando seu número rapidamente. A célula em que esses parasitas inicialmente se alojam é denominada:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q36.png"]','["neutrófilo", "macrófago", "hepatócito", "condroblasto"]'::jsonb,'C',null),
(37,'Química','O que são “terras raras”? “Terras raras” são um conjunto de elementos químicos essenciais na fabricação de compostos usados em tecnologias de energia limpa. A possibilidade de exploração desses elementos na área de um vulcão extinto há 120 milhões de anos no sul de Minas Gerais tem potencial para colocar o Brasil na posição de protagonista da transição energética. Adaptado de g1.globo.com, 21/06/2025. Dentre os elementos “terras raras”, encontra-se o neodímio, de número atômico igual a 60. O subnível mais energético dos átomos desse elemento corresponde a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q37.png", "/uerj-2026-eq2/apoio-p39.png"]','["4f", "5f", "6s", "7s"]'::jsonb,'A',null),
(38,'Biologia','A partir da análise do gráfico, observa-se que o consumo de palatinose, comparado ao de sacarose, promove o seguinte efeito no organismo humano:','Estudo da concentração de glicose no sangue após consumo de sacarose ou palatinose. A palatinose apresenta digestão e absorção mais lentas.','["/uerj-2026-eq2/apoio-p22.png", "/uerj-2026-eq2/q38.png"]','["maiores concentrações de insulina", "picos elevados de monossacarídeos", "períodos curtos de energia disponível", "menores oscilações do nível glicêmico"]'::jsonb,'D',null),
(39,'Química','Admita que toda a glicose formada pelo consumo de sacarose e de palatinose seja imediatamente absorvida pelo sangue. Nos primeiros 30 minutos, a menor velocidade média de formação de glicose, em mol/L.min, é igual a:','Estudo da concentração de glicose no sangue após consumo de sacarose ou palatinose. A palatinose apresenta digestão e absorção mais lentas.','["/uerj-2026-eq2/apoio-p22.png", "/uerj-2026-eq2/q39.png"]','["2,5 × 10⁻⁵", "4,1 × 10⁻⁵", "6,3 × 10⁻⁵", "8,0 × 10⁻⁵"]'::jsonb,'A',null),
(40,'Biologia','Musgos são plantas briófitas restritas a ambientes úmidos. Uma característica que explica essa distribuição limitada é a presença, nessas plantas, de:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q40.png"]','["raízes profundas", "sistemas vasculares", "gametas flagelados", "nectários desenvolvidos"]'::jsonb,'C',null),
(41,'Física','Os recipientes W, X, Y e Z, de capacidades térmicas desprezíveis, possuem o mesmo volume de um mesmo líquido nas temperaturas de 20 °C, 55 °C, 75 °C e 90 °C, respectivamente. Admita que o conteúdo dos quatro recipientes seja misturado, sem perda de calor, em um único recipiente termicamente isolado. A temperatura de equilíbrio térmico dessa mistura, em °C, é igual a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q41.png"]','["30", "35", "45", "60"]'::jsonb,'D',null),
(42,'Química','Na tabela do apoio estão apresentadas as fórmulas estruturais de quatro compostos com propriedades antioxidantes que correspondem à vitamina E: I, alfatocoferol; II, betatocoferol; III, gamatocoferol; IV, deltatocoferol. Analisando as fórmulas estruturais, verifica-se isomeria plana entre os seguintes tocoferóis:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q42.png"]','["I e II", "II e III", "III e IV", "IV e I"]'::jsonb,'B',null),
(43,'Física','O fenômeno da dilatação anômala da água permite que lagos congelados durante o inverno sejam capazes de manter vida aquática no seu interior em função da seguinte propriedade da água:','Gráficos de volume e densidade da água em função da temperatura, ilustrando a dilatação anômala da água.','["/uerj-2026-eq2/apoio-p24.png", "/uerj-2026-eq2/q43.png"]','["menor volume no ponto de fusão", "maior flutuabilidade no estado sólido", "mínimo empuxo em temperaturas baixas", "máxima densidade no ponto de congelamento"]'::jsonb,'B',null),
(44,'Física','A temperatura, em ºC, que corresponde ao volume mínimo da água é:','Gráficos de volume e densidade da água em função da temperatura, ilustrando a dilatação anômala da água.','["/uerj-2026-eq2/apoio-p24.png", "/uerj-2026-eq2/q44.png"]','["0", "2", "4", "6"]'::jsonb,'C',null),
(45,'Química','A fórmula molecular C₂₂H₃₀Cl₂N₁₀ corresponde ao digliconato de clorexidina, substância antisséptica descrita no enunciado. Considere um medicamento que consiste em uma solução alcoólica na concentração de 5 g/L dessa substância. Nesse medicamento, a concentração em quantidade de matéria de digliconato de clorexidina, em mol/L, é aproximadamente de:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q45.png", "/uerj-2026-eq2/apoio-p39.png"]','["0,01", "0,02", "0,03", "0,04"]'::jsonb,'A',null),
(46,'Física','Em fevereiro de 2023, um terremoto ocorrido na península de Anatólia sacudiu a fronteira entre Síria e Turquia. Admita as energias liberadas: terremoto, 7,9 × 10¹⁵ J; bomba atômica de Hiroshima, 2,0 × 10¹² J. A ordem de grandeza da razão entre as energias liberadas pelo terremoto e pela bomba corresponde a:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q46.png"]','["10³", "10⁴", "10⁵", "10⁶"]'::jsonb,'B',null),
(47,'História','Observe os quadrinhos no apoio oficial. A partir de seu conteúdo, identifica-se uma contradição entre os seguintes aspectos relativos à sociedade estadunidense:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q47.png"]','["valores políticos históricos e intolerância", "sistemas religiosos nacionais e intransigência", "iniciativas militares governamentais e liberalismo", "interesses econômicos empresariais e protecionismo"]'::jsonb,'A',null),
(48,'História','Manifestação em Nova York contra a Guerra do Vietnã, 16/03/1967. No cartaz, lê-se: “Crianças não nascem para serem queimadas”. fotografia.folha.uol.com.br No dia 30 de abril de 1975, a cidade de Saigon, atual Ho Chi Minh, então capital do Vietnã do Sul, foi ocupada pelo Exército norte-vietnamita e pelos vietcongues. Era o fim da Guerra do Vietnã. Com o fim do conflito, o Vietnã do Norte alcançou seu objetivo estratégico: reunificar o país sob um regime comunista, criando a atual República Socialista do Vietnã, o que contrariava diretamente os interesses dos E.U.A., que buscavam conter a expansão do comunismo na região. A Guerra do Vietnã deixou marcas profundas na sociedade norte-americana: milhares de mortes, descrédito das instituições políticas e uma política externa mais cautelosa nas décadas seguintes. Adaptado de fpabramo.org.br. Em abril de 2025, completaram-se 50 anos do fim da Guerra do Vietnã. O envio de tropas pelo governo dos E.U.A., em apoio ao governo do Vietnã do Sul, iniciou-se em 1965. Com base na foto e no texto, para a sociedade norte-americana, essa guerra influenciou diretamente a seguinte ação:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q48.png"]','["defesa dos direitos civis", "gestão da indústria bélica", "revisão da bipolaridade internacional", "cerceamento das liberdades constitucionais"]'::jsonb,'A',null),
(49,'Geografia','Observe no apoio o mapa “As mais baixas temperaturas já registradas em graus Celsius”. A intensidade das baixas temperaturas, verificada no hemisfério Norte em comparação com o Sul, é explicada, principalmente, pelo seguinte fator climático:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q49.png"]','["altitude", "vegetação", "maritimidade", "continentalidade"]'::jsonb,'D',null),
(50,'História','Observe os quadrinhos de Jacques Tardi no apoio. O livro Era a guerra de trincheiras é uma história em quadrinhos sobre a Primeira Guerra Mundial (1914-1918), baseada em testemunhos de sobreviventes. De acordo com o fragmento reproduzido, a abordagem do autor sobre o cotidiano desse conflito explicitou, principalmente, uma conjuntura de:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q50.png"]','["priorização de alvos civis", "hierarquização de corpos militares", "aceleração da ocupação territorial", "modernização da corrida armamentista"]'::jsonb,'D',null),
(51,'Geografia','O Cade − Conselho Administrativo de Defesa Econômica − abriu recentemente uma investigação contra 33 gigantes multinacionais. A partir de um acordo de leniência, o órgão descobriu que as empresas compartilhavam informações sensíveis dos trabalhadores sobre salários, benefícios como plano de saúde, transporte, dentre outras informações trabalhistas. Segundo o órgão, há “indícios de infração à ordem econômica”. A conduta anticompetitiva teria ocorrido, pelo menos, a partir de 2004 e durado até, pelo menos, o início de 2021. Adaptado de veja.abril.com.br, 17/10/2024. A conduta das multinacionais, investigada pelo Cade, fere a legislação brasileira referente à concorrência empresarial. Trata-se da seguinte infração à ordem econômica:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q51.png"]','["formação de cartel", "constituição de oligopólio", "organização de monopólio", "implementação de dumping"]'::jsonb,'A',null),
(52,'História','Revolta comunista de 1935 Movimento armado, também conhecido como Intentona Comunista. Esta última designação foi cunhada pelos meios oficiais militares com uma intenção depreciativa, já que o termo intentona significa “intento louco, plano insensato”. O movimento foi deflagrado a 23 de novembro de 1935, em Natal, pelos sargentos, cabos e soldados do 21º Batalhão de Caçadores. No dia 24 de novembro, sublevou-se o 29º Batalhão de Caçadores, sediado na Vila Militar de Socorro, a 18 km de Recife. No dia 27, a revolta eclodiu no Rio de Janeiro, então Distrito Federal, no 3º Regimento de Infantaria, na Praia Vermelha, e na Escola de Aviação Militar, no Campo dos Afonsos. Todos esses levantes foram promovidos em nome de uma revolução popular e da Aliança Nacional Libertadora (ANL). Alzira A. de Abreu Adaptado de atlas.fgv.br. As polarizações políticas ampliaram-se no período entre as grandes guerras (1918-1939), afetando inclusive as forças armadas em diversas sociedades. No Brasil, as repercussões da revolta comunista de 1935 estabeleceram um contexto favorável à seguinte ação:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q52.png"]','["liberação da propaganda fascista", "implantação do regime do Estado Novo", "reformulação do código de Direito Civil", "reestruturação da legislação trabalhista"]'::jsonb,'B',null),
(53,'Geografia','Observe no apoio o mapa de novos projetos de fabricação de microchips nos Estados Unidos, com investimentos superiores a US$ 1 bilhão em fevereiro de 2024. O governo federal estadunidense vem estimulando a recente mudança no padrão locacional de fabricação dos microchips para seu setor de informática. Essa política territorial busca, prioritariamente, atingir o seguinte objetivo estratégico:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q53.png"]','["reduzir custos laborais", "estatizar empresas globais", "preservar a segurança nacional", "diversificar a produção industrial"]'::jsonb,'C',null),
(54,'História','Observe os quadrinhos da cartunista Laerte no apoio. Neles, tematiza-se uma das contradições das relações de trabalho em sociedades capitalistas contemporâneas. Essa contradição é estabelecida entre os seguintes processos:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q54.png"]','["corte de investimentos − progresso científico", "restrição de direitos − modernização tecnológica", "precarização da salubridade − expansão industrial", "racionalização da exploração − especulação financeira"]'::jsonb,'B',null),
(55,'Geografia','Uma nova região metropolitana, ainda em formação no estado do Rio de Janeiro, é a da Bacia de Campos, que integra 12 municípios, com uma população de aproximadamente 1,3 milhão de habitantes e três capitais regionais (Campos dos Goytacazes, Macaé e Cabo Frio). A metropolização do litoral fluminense é tema de tese de doutorado, defendida na UFRJ em março de 2023. Segundo o autor, no processo de integração entre os municípios da região, é possível identificar parâmetros de metropolização previstos pelo IBGE. Adaptado de odia.ig.com.br, 10/12/2024. Para identificar a aglomeração urbana em formação, citada na notícia, um parâmetro relevante é:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q55.png"]','["renda dos bairros periféricos", "intensidade dos fluxos pendulares", "qualidade dos transportes públicos", "magnitude dos investimentos industriais"]'::jsonb,'B',null),
(56,'Geografia','Observe o gráfico “Pessoas indígenas por situação de domicílios” no apoio. A divulgação dos resultados do Censo Demográfico 2022 pelo IBGE tem revelado mudanças importantes na composição e distribuição da população brasileira na década de 2020. As mudanças indicadas no gráfico, para os residentes em áreas urbanas, são justificadas, diretamente, pelo seguinte fator:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q56.png"]','["redução de migrações internas", "integração de condições sanitárias", "homogeneização do padrão etário", "valorização do autorreconhecimento étnico"]'::jsonb,'D',null),
(57,'Geografia','Citando suposta censura nas redes sociais, a Meta – companhia dona do Facebook, Instagram e Whatsapp – anunciou que vai se aliar ao governo do presidente eleito dos Estados Unidos, Donald Trump, para pressionar países que buscam regular o ambiente digital. Segundo o dono da Meta, Mark Zuckerberg: “Vamos trabalhar com o presidente Trump para pressionar os governos ao redor do mundo que estão perseguindo empresas americanas e pressionando para censurar mais”. Zuckerberg argumentou que a Europa está “institucionalizando a censura”, que os países latino-americanos têm “tribunais secretos que podem ordenar que empresas retirem coisas discretamente” e que a China “proibiu nossos aplicativos”. Adaptado de agenciabrasil.ebc.com.br, 07/01/2025. O ministro Alexandre de Moraes, do Supremo Tribunal Federal, afirmou que as redes sociais somente continuarão a operar no Brasil se respeitarem as leis vigentes no país, independentemente de “bravatas de dirigentes irresponsáveis”. “Pelo mundo não podemos falar, mas, no Brasil, eu tenho absoluta certeza e convicção que o Supremo Tribunal Federal não vai permitir que as big techs, as redes sociais, continuem sendo instrumentalizadas para discursos de ódio, nazismo, fascismos, racismo, misoginia, homofobia e discursos antidemocráticos”, frisou o magistrado. Adaptado de g1.globo.com, 08/01/2025. As declarações presentes nas reportagens expressam posturas distintas a respeito da regulação das redes sociais pelo Estado. As declarações do empresário e do ministro são divergentes no que se refere à seguinte atribuição do Estado-nação:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q57.png"]','["soberania jurídico-territorial", "controle ideológico-partidário", "normatização técnico-financeira", "hierarquização político-administrativa"]'::jsonb,'A',null),
(58,'História','Sistema métrico decimal Elaborado na França, após a Revolução Francesa, o sistema métrico decimal pretendia satisfazer a necessidade de reordenamento das centenas de unidades de pesos e medidas que havia no território francês. Implementado em 1795, o sistema tornou-se obrigatório naquele país apenas a partir de 1840, para, em seguida, ser adotado em diversos países europeus. Portugal viria a adotar o sistema francês em 1852, atendendo decreto que previa um prazo de dez anos para que entrasse em vigor. No Brasil, o sistema métrico foi instituído por meio da lei imperial de 26 de junho de 1862, que previa a substituição das antigas referências pelas novas, também num período de dez anos. Em represália a tal determinação, houve manifestações em várias províncias do Nordeste, com quebra de pesos e balanças nas feiras, entre os anos de 1874 e 1875, num episódio que ficou conhecido como revoltas dos Quebra-Quilos. Adaptado de historialuso.an.gov.br. Os Quebra-Quilos Na vila de Fagundes, em Campina Grande, a feira popular iniciava suas atividades naquele sábado, 7 de novembro de 1874. Seria um dia como os outros até o momento que, em protesto, manifestantes começaram a reclamar em voz alta. Proclamavam que, naquele dia, frente à imposição do novo sistema de pesos e medidas, não aconteceriam negócios. Ninguém comprava, ninguém vendia; portanto, os impostos não seriam pagos. Ali todos os novos instrumentos de pesos e medidas do sistema métrico decimal foram destruídos. Agindo assim, pretendiam eliminar, ainda que simbolicamente, aqueles instrumentos que substituíam as variadas referências concretas por outras abstratas e desconhecidas. Tais reações, iniciadas na Paraíba e que se alastraram pelas províncias de Pernambuco, Alagoas, Rio Grande do Norte e Ceará, ficariam conhecidas como as revoltas dos Quebra-Quilos. Jeanne Abi-Ramia Adaptado de multirio.rj.gov.br. A implantação do sistema métrico decimal ocorreu ao longo do século XIX em diversos países, gerando resistências, conforme abordado nos textos. As revoltas dos Quebra-Quilos denotaram a oposição entre os seguintes aspectos de utilização de sistemas de medidas:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q58.png"]','["cooperação científica − desenvolvimento industrial", "racionalização tributária − liberdade comercial", "padronização mundial − tradicionalismo local", "modernização fiscal − reacionarismo classista"]'::jsonb,'C',null),
(59,'Geografia','Observe no apoio o mapa “Projeção da variação absoluta da população total em idade de trabalho — 2023–2050 (em milhões)” e as quatro curvas de crescimento populacional. Considerando os quantitativos apresentados, a curva correspondente ao país com maior decréscimo absoluto da população total em idade de trabalho é:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q59.png"]','["Gráfico A — ver apoio oficial", "Gráfico B — ver apoio oficial", "Gráfico C — ver apoio oficial", "Gráfico D — ver apoio oficial"]'::jsonb,'C',null),
(60,'História','Porta do Não Retorno, na cidade de Uidá, Benim. A Porta foi inaugurada pela Unesco em 1995. Em uma grande plataforma, o monumento abriga um arco colocado em dois grandes postes, como um arco do triunfo. É decorado com baixos-relevos representando escravizados com suas mãos acorrentadas atrás das costas, caminhando em fila indiana em direção aos navios negreiros. O monumento, pintado principalmente em ocre e branco, simboliza a dispersão dos povos africanos e, ao mesmo tempo, celebra o retorno à terra dos antepassados representados por duas estátuas de Egun-Egun , comumente chamados de “retornados”, que encarnam os espíritos dos mortos. Nesse sentido, o memorial também evoca a sabedoria e a paz recuperada. Para alguns, esse monumento é um elemento de orgulho; para outros, é a expressão do fracasso africano e o símbolo da dominação europeia. Gbègnidaho Achille Zohoun Adaptado de periodicos.ufba.br, março/2023. A Porta do Não Retorno estabelece conexões entre o passado e o presente, especialmente para sociedades africanas. De acordo com o texto, as opiniões sobre esse monumento oscilam entre o “orgulho” e o “fracasso”. Tais opiniões estão associadas, respectivamente, aos seguintes processos históricos:','Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.','["/uerj-2026-eq2/q60.png"]','["homogenização da etnicidade − inferiorização cultural", "enaltecimento da diáspora − subordinação política", "judicialização do genocídio − rejeição internacional", "reconhecimento da barbárie − espoliação econômica"]'::jsonb,'D',null)
) as v(number,subject,text,support,support_image,options,answer,explanation) where e.slug='uerj-2026-eq2';
commit;
