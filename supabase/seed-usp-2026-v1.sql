-- Seed: USP 2026 - FUVEST (Concurso Vestibular - Prova de Conhecimentos Gerais - V1)
-- Universidade de São Paulo / FUVEST - 90 questões objetivas (A-E).
-- Prova única de Conhecimentos Gerais; as questões foram classificadas por área.
-- Gabarito oficial (Prova V1):
--   1-E,2-B,3-ANULADA,4-A,5-E,6-E,7-D,8-C,9-C,10-D,
--   11-E,12-D,13-C,14-E,15-B,16-E,17-D,18-E,19-C,20-A,
--   21-B,22-D,23-D,24-C,25-C,26-A,27-C,28-E,29-C,30-B,
--   31-B,32-A,33-B,34-E,35-B,36-E,37-A,38-C,39-B,40-B,
--   41-D,42-A,43-A,44-C,45-E,46-C,47-D,48-B,49-A,50-E,
--   51-A,52-A,53-E,54-D,55-B,56-A,57-D,58-A,59-C,60-D,
--   61-C,62-D,63-B,64-C,65-D,66-B,67-A,68-D,69-B,70-A,
--   71-B,72-E,73-E,74-D,75-C,76-B,77-D,78-E,79-B,80-E,
--   81-E,82-C,83-A,84-B,85-A,86-B,87-C,88-D,89-C,90-C
-- Observação: a questão 3 foi ANULADA pela banca; mantida com placeholder.
-- Questões com imagem (gráficos/mapas/figuras/obras): o recurso visual é
-- descrito no campo de apoio, pois os arquivos de imagem não foram fornecidos.

insert into public.exams (slug, title, source, year)
values ('usp-2026-v1', 'USP 2026 - FUVEST (Prova de Conhecimentos Gerais - V1)', 'usp', '2026')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- QUESTÕES 1 a 30
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Linguagens',
'Caetano Veloso revela sua posição a respeito do fato narrado no fragmento "Mas, embora me encha de orgulho o pensamento de que meu pai possa ter trapaceado para me agradar, eu sempre preferi crer na autenticidade do sorteio". Assinale a alternativa em que a paráfrase do excerto mantém o mesmo sentido do texto original.',
'Texto para as questões 01 e 02 — fragmento de "Verdade tropical", de Caetano Veloso (São Paulo: Companhia das Letras, 1997, adaptado), em que o autor narra o episódio do sorteio do nome da irmã, Maria Bethânia.',
'',
'["Eu sempre preferi crer na autenticidade do sorteio e sempre tive orgulho de meu pai, mesmo sabendo que ele possa ter trapaceado no sorteio para me agradar.","Me enche de orgulho o pensamento de que meu pai trapaceou, mesmo que eu creia na autenticidade do sorteio para me agradar.","Eu sempre preferi crer na autenticidade do sorteio, mas, mesmo com o pensamento de que meu pai trapaceou para me agradar, tenho orgulho dele.","Uma vez acreditando na autenticidade do sorteio, penso que, para me agradar, meu pai pode ter trapaceado, o que me faz ter um pensamento cheio de orgulho.","Eu, contudo, sempre preferi crer na autenticidade do sorteio, ainda que me encha de orgulho o pensamento de que, a fim de me agradar, meu pai possa ter trapaceado."]'::jsonb,
'E',
'A alternativa E reproduz fielmente a estrutura do original: o conector adversativo (''contudo''/''mas'') opõe a preferência por crer no sorteio ao orgulho pela possível trapaça do pai, mantendo a concessão (''ainda que'') e a finalidade (''a fim de me agradar''). Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Linguagens',
'No fragmento "Mas ninguém se sentia com coragem de realmente pôr esse nome ''tão pesado'' num bebê", a expressão "tão pesado" aparece entre aspas porque o enunciador',
'Texto para as questões 01 e 02 — fragmento de "Verdade tropical", de Caetano Veloso (adaptado).',
'',
'["busca realçar o caráter denotativo da expressão, indicando sua concordância com ela.","incorpora a expressão em seu discurso, mas quer caracterizá-la como de autoria alheia.","procura assinalar que se trata de um eufemismo, deixando claro que não teria gostado do nome do bebê.","quer explicitar ao leitor que consiste em um neologismo que demonstra sua afetividade diante da criança.","visa esclarecer, em seu discurso, o significado do nome escolhido."]'::jsonb,
'B',
'As aspas em ''tão pesado'' marcam que a expressão é de outra pessoa (discurso alheio): o enunciador a incorpora ao seu texto, mas se distancia dela, atribuindo-a a quem achava o nome pesado demais. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Matemática',
'(Questão ANULADA pela banca) Em uma eleição para um conselho composto por 5 membros, existem 7 candidatos inscritos e um total de 35 eleitores. São eleitos os 5 candidatos com mais votos, sendo o critério de desempate a idade (o mais velho é eleito). Aleph, o mais novo dentre os candidatos, analisa quantos votos precisa para garantir sua eleição, sabendo que cada eleitor vota em um único candidato e que, geralmente, um ou dois eleitores não comparecem. Pode-se afirmar:',
'Esta questão foi ANULADA pela banca (FUVEST). Enunciado e alternativas mantidos apenas para referência.',
'',
'["Se um ou dois eleitores não comparecerem, Aleph será eleito se tiver pelo menos 5 votos.","Aleph não será eleito com 5 votos, mesmo que um ou dois eleitores não compareçam.","Caso dois eleitores não compareçam, Aleph precisará receber 5 votos para se eleger. Mas, se apenas um eleitor não comparecer, 5 votos não garantem sua eleição.","Na hipótese de dois eleitores não comparecerem, Aleph precisa que um dos eleitos tenha recebido 6 ou mais votos para que ele consiga se eleger com apenas 4 votos.","Na hipótese de apenas um dos eleitores não comparecer, Aleph precisa que dois dos eleitos tenham recebido 6 ou mais votos para que ele consiga se eleger com apenas 4 votos."]'::jsonb,
'A',
'QUESTÃO ANULADA pela banca (FUVEST). A resposta registrada é apenas um placeholder para não quebrar o aplicativo.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Matemática',
'Com base nas informações sobre o cálculo da entropia de Shannon, qual o valor da entropia E no caso de uma sequência com 4 letras A, sendo as 3 primeiras azuis e a última vermelha (AAAA)?',
'O conceito de entropia foi introduzido na Teoria da Informação por Claude Shannon: E = −Σ Pi(x) · log2 Pi(x), em que Pi(x) é a probabilidade do i-ésimo resultado para a variável x. Exemplos dados: para AA (uma azul, uma vermelha), E = 1; para AAAA (duas azuis, duas vermelhas), E = 2.',
'',
'["5 − (9/4)·log2(3)","(1/2) − (5/2)·log2(3)","3/2","(9/4)·log2(3)","3"]'::jsonb,
'A',
'Para 3 azuis e 1 vermelha em 4 letras, as probabilidades são 3/4 (azul) e 1/4 (vermelha), somadas sobre as 4 posições. Calculando E = −Σ Pi·log2(Pi) com esses valores chega-se a 5 − (9/4)·log2(3). Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ciências da Natureza',
'Adaptando a ideia do "bingo das ligações químicas", foi feito um jogo para identificar os tipos de ligações entre os elementos Na, K, Ca, Cl, Br e I. Assinale a alternativa que representa a melhor marcação do tipo de ligação formada por esses átomos, seguindo a legenda: quadrado = ligação iônica; círculo = ligação covalente; triângulo = ligação metálica.',
'Um trabalho da Universidade de Würzburg descreveu uma nova ligação tripla entre Boro e Carbono, apresentado como um "bingo das ligações químicas". [Imagem: cinco alternativas (A a E) com tabelas de dupla entrada marcando os tipos de ligação entre pares dos elementos Na, K, Ca, Cl, Br e I.]',
'',
'["Figura A","Figura B","Figura C","Figura D","Figura E"]'::jsonb,
'E',
'Metais entre si (Na, K, Ca) fazem ligação metálica; não metais entre si (Cl, Br, I) fazem ligação covalente; metal com não metal faz ligação iônica. A única figura que marca corretamente todos esses pares é a E. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Matemática',
'Os estudantes visitaram a réplica de uma pirâmide regular de base quadrada com vértice a 18 metros de altura em relação ao centro da base, com faces voltadas para norte, sul, leste e oeste. Para chegar ao topo, percorreram uma trilha (lados oeste, sul, leste e metade do lado norte do quadrado) e subiram a rampa localizada no meio da face norte (o apótema da pirâmide). Sabendo que o volume da pirâmide é de 864 m³, quantos metros, aproximadamente, os estudantes percorreram para chegar ao topo?',
'',
'',
'["36","41","48","54","61"]'::jsonb,
'E',
'Do volume V = (1/3)·a²·h = 864 com h = 18 obtém-se a = 12 m (base). O trajeto é o perímetro parcial (lados oeste, sul, leste e meia face norte) somado ao apótema da face (rampa). O total percorrido até o topo é de aproximadamente 61 m. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Matemática',
'Considere a equação trigonométrica sen(π/2) + sen x = sen(2x) − cos π, para x ∈ IR, 0 ≤ x < 2π. Um estudante resolveu-a chegando a sen x = 0, logo x = 0 ou x = π. A resolução apresentada pelo estudante está errada, pois ele',
'Passos do estudante: 1 + sen x = sen(2x) + 1; sen x = sen(2x); sen x = 2 sen x; 2 sen x − sen x = 0; sen x = 0; x = 0 ou x = π.',
'',
'["considerou que cos π vale 1.","não considerou as infinitas voltas no ciclo trigonométrico para a resposta.","considerou que sen(π/2) vale 1.","não utilizou corretamente o seno da soma de dois arcos.","apresentou duas respostas e não apenas uma."]'::jsonb,
'D',
'Ao passar de sen x = sen(2x) para sen x = 2 sen x, o estudante usou sen(2x) = 2 sen x, esquecendo o fator cos x: o correto é sen(2x) = 2·sen x·cos x. Logo, ele não aplicou corretamente o seno da soma (do arco duplo). Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Linguagens',
'De acordo com o texto, cabe aos professores',
'Texto de S. M. Bortoni-Ricardo ("Nós cheguemos na escola, e agora? Sociolinguística & Educação". São Paulo: Parábola, 2005, adaptado): a escola não pode ignorar as diferenças sociolinguísticas; os alunos que falam variedades não padrão devem ser respeitados, mas têm o direito de aprender as variantes de prestígio, sob pena de verem fechadas as portas da ascensão social.',
'',
'["respeitar as variações linguísticas dos alunos, mas solicitar que eles utilizem a norma culta no ambiente escolar.","incentivar o uso das variações regionais dos alunos, mas mostrar a eles que a escola recebe variantes de forma preconceituosa.","respeitar as particularidades linguísticas dos alunos, mas dar a eles condições de aprender outras variantes.","mostrar aos alunos que eles podem cometer erros em relação ao uso de verbos, mas que isso pode ser prejudicial à ascensão social.","ensinar aos alunos a norma padrão da língua, mas permitir que eles cometam erros para não serem excluídos pela sociedade."]'::jsonb,
'C',
'O texto afirma que os alunos devem ser respeitados em suas peculiaridades linguísticas, mas têm o direito de aprender as variantes de prestígio. Cabe ao professor, portanto, respeitar as variedades e dar condições de aprender outras. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Ciências Humanas',
'É correto afirmar que, em seus escritos sobre educação, Durkheim e Floresta convergem ao',
'O texto apresenta o "Opúsculo Humanitário" (meados do séc. XIX), de Nísia Floresta, defesa da educação das mulheres como meio de contribuírem em igualdade com os homens, e as obras de Émile Durkheim ("Educação e Sociologia" e "A Educação Moral"), que concebem a escola como espaço de transmissão da civilização e de socialização nos valores da sociedade, promovendo solidariedade e autonomia.',
'',
'["reafirmar a importância dos valores religiosos da sociedade na educação como um projeto moralizante, ainda que critiquem a educação católica.","conceber a educação das mulheres como manifestação de uma lei necessária do progresso das nações, expressão do positivismo dos autores.","indicar a função da escola de integrar seus estudantes às normas e valores morais característicos de uma sociedade para permitir que com ela contribuam.","justificar uma educação escolar segregada de grupos menos integrados socialmente, como as mulheres, em virtude de normas e valores da sociedade.","defender uma educação com caráter cívico e nacionalista, que afirme a superioridade da nação e promova as glórias da civilização nacional."]'::jsonb,
'C',
'Tanto Durkheim quanto Nísia Floresta veem a escola como espaço de integração do indivíduo às normas e valores morais da sociedade, de modo que ele possa contribuir com ela em condições de participação. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Linguagens',
'Considerando a obra "Capoeira", os comentários de Mário Schenberg, o texto de Oscar D''Ambrozio e os debates contemporâneos sobre arte e decolonialidade, é correto afirmar:',
'Obra "Capoeira" (1970), de Maria Auxiliadora da Silva (técnica mista sobre tela; acervo MASP), e texto de Oscar D''Ambrozio sobre a trajetória da artista autodidata negra. A crítica de Mário Schenberg descreve sua produção como "vivência autêntica da vida popular", "senso mágico afro-brasileiro" e "imaginação construtora de arquiteturas cromáticas e lineares". [Imagem: pintura "Capoeira".]',
'',
'["A obra de Maria Auxiliadora é classificada como ''naïf'' ou ''primitivista'' por apresentar um vocabulário visual simples e espontâneo, o que justifica sua exclusão dos grandes circuitos institucionais da arte contemporânea.","A produção de Maria Auxiliadora deve ser compreendida como uma manifestação isolada, desprovida de intencionalidade crítica ou diálogo com os debates socioculturais e políticos do seu tempo.","A visibilidade póstuma de Maria Auxiliadora evidencia o reconhecimento institucional imediato e contínuo de artistas racializados e periféricos no país, fruto da tradição inclusiva das artes visuais brasileiras.","A categorização da obra de Maria Auxiliadora como ''primitivista'' ou ''ingênua'' revela, muitas vezes, uma perspectiva colonizadora que desconsidera a complexidade estética, a intencionalidade política e a potência simbólica de sua produção, ligada a vivências negras, femininas e periféricas que tensionam o cânone eurocentrado da arte.","A valorização da obra de Maria Auxiliadora por críticos como Mário Schenberg atesta a neutralidade das categorias da crítica de arte moderna no Brasil, demonstrando que critérios estéticos sempre foram suficientes para reconhecer artistas não brancos e mulheres."]'::jsonb,
'D',
'Rotular a obra como ''primitivista'' ou ''ingênua'' revela uma leitura colonizadora que ignora a complexidade estética e a intencionalidade política de uma produção ligada a vivências negras, femininas e periféricas, tensionando o cânone eurocentrado. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Linguagens',
'A partir da leitura dos excertos e das obras citadas, é correto afirmar:',
'Excertos do "Opúsculo Humanitário", de Nísia Floresta (defesa da educação da mulher brasileira), e de "Memórias de Martha", de Julia Lopes de Almeida (narrativa em que a protagonista sonha ser mestra para fugir da pobreza do cortiço).',
'',
'["Opúsculo Humanitário e Memórias de Martha são obras que defendem fortemente o abolicionismo e o acesso à educação pela população afrodescendente brasileira.","Opúsculo Humanitário defende a modernização da política brasileira, e Memórias de Martha narra a ascensão social da protagonista por meio da sua profissionalização.","Opúsculo Humanitário e Memórias de Martha, obras seminais do feminismo no Brasil, defendem a educação profissional feminina a fim de prepará-las para a sua emancipação econômica.","Opúsculo Humanitário e Memórias de Martha destacam o espaço rural brasileiro como o lugar adequado para a emancipação feminina.","Opúsculo Humanitário e Memórias de Martha são obras que reivindicam uma solução para as contradições sociais e econômicas do Brasil no século XIX, com ênfase na defesa da educação feminina."]'::jsonb,
'E',
'Ambas as obras, do século XIX, inserem-se no debate sobre as contradições sociais e econômicas do Brasil, defendendo a educação feminina como caminho de transformação. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Linguagens',
'As obras "Caminho de pedras", de Rachel de Queiroz, e "As meninas", de Lygia Fagundes Telles, discutem questões relativas aos direitos das mulheres e sua relação com a política ao longo do século XX no Brasil. Sobre esses romances, é correto afirmar:',
'O texto cita marcos da luta das mulheres por direitos no Brasil (Lei Geral de 1827, Constituição de 1934, Estatuto da Mulher Casada de 1962, Lei do Divórcio de 1977) e relaciona-os às obras "Caminho de pedras" e "As meninas".',
'',
'["Em Caminho de pedras, Rachel de Queiroz relaciona a luta pelos direitos da mulher à legalização do divórcio no Brasil, enquanto As meninas constitui um libelo pela educação feminina no período final da Era Vargas.","As personagens Angelita, de Caminho de pedras, e Ana Clara, de As meninas, impactam a vida dos protagonistas e representam a transformação da condição social das mulheres ao romperem com a configuração familiar tradicional.","Em Caminho de pedras e em As meninas, a política (militância de esquerda) e a religião (internato de freiras) são instituições que, em vez de contribuírem para a emancipação feminina, aprofundam os mecanismos de controle social sobre as mulheres.","Tanto Caminho de pedras quanto As meninas relacionam o exercício da política coletiva (militância de esquerda, luta contra a ditadura militar) à política exercida em nível da vida privada e do cotidiano, por meio de personagens femininas que desafiam padrões sociais estabelecidos.","Tanto Caminho de pedras quanto As meninas exercem uma crítica à chamada ''mulher burguesa''; o romance de Rachel de Queiroz narra os desdobramentos do desejo de ascensão social de Noemi, e o de Lygia Fagundes Telles detalha o apego de Lorena à instituição do casamento."]'::jsonb,
'D',
'Os dois romances aproximam a política coletiva (militância de esquerda, resistência à ditadura) da política do cotidiano e da vida privada, por meio de personagens femininas que desafiam padrões sociais. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Ciências Humanas',
'Em relação ao gráfico apresentado (taxa de participação na força de trabalho, por sexo, Brasil, 2012 a 2024, 3º trimestre), é correto afirmar:',
'Contextualização a partir de "Caminho de pedras" (1937), de Rachel de Queiroz, e de boletim do governo federal (2025). [Imagem: gráfico da taxa de participação na força de trabalho por sexo (Total, Homens, Mulheres) no 3º trimestre de cada ano, de 2012 a 2024. Fonte: PNAD Contínua/IBGE.]',
'',
'["A queda na taxa de participação de homens na força de trabalho foi maior do que a de mulheres no terceiro trimestre do ano em que a pandemia de Covid se iniciou.","A taxa de participação de mulheres na força de trabalho é crescente durante todo o período entre o terceiro trimestre do ano de início da pandemia de Covid e o terceiro trimestre de 2024.","A taxa de participação de mulheres na força de trabalho teve seu maior crescimento anual do terceiro trimestre de 2020 para o terceiro trimestre de 2021.","A diferença entre a taxa de participação de homens e mulheres na força de trabalho foi de 11,7 no terceiro trimestre de 2012.","A taxa de participação de mulheres na força de trabalho atingiu seu maior valor após o terceiro trimestre de 2020."]'::jsonb,
'C',
'Pela leitura do gráfico, o maior salto anual na taxa de participação feminina ocorre entre o 3º trimestre de 2020 (fundo da pandemia) e o de 2021, quando a economia reabre. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Ciências Humanas',
'A partir do mapa e do gráfico, assinale a alternativa correta sobre o contexto apresentado na região Sul.',
'[Imagem: mapa do "Número de imigrantes incluídos no cadastro de pessoas com renda mensal de até meio salário-mínimo" (portaldeimigracao.mj.gov.br) e gráfico da "Distribuição relativa dos vínculos ativos de emprego formal de imigrantes estrangeiros na região Sul (2023)" por escolaridade e setor (indústria, construção civil, comércio, serviços, agropecuária). Observatório das Migrações em São Paulo.]',
'',
'["A segurança social garantida por rendas maiores favorece o emprego formal no setor de serviços.","Os imigrantes cadastrados nessa região têm renda superior a um salário-mínimo, demonstrando maior segurança social.","O alto número de imigrantes cadastrados no CadÚnico deve-se pela empregabilidade qualificada no comércio.","A redução na vulnerabilidade social dos imigrantes é resultado do alto nível de escolaridade na indústria.","Os baixos salários na indústria alimentícia refletem-se na vulnerabilidade dos imigrantes estrangeiros."]'::jsonb,
'E',
'O mapa (alto número de imigrantes de baixa renda no Sul) e o gráfico (vínculos concentrados na indústria, inclusive alimentícia, com baixa escolaridade) indicam que os baixos salários da indústria refletem a vulnerabilidade dos imigrantes. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Ciências Humanas',
'Segundo o texto, a uberização é um processo que',
'Texto para as questões 15 e 16 — de L. C. Abílio et al. ("Uberização e plataformização do trabalho no Brasil: conceitos, processos e formas", Sociologias, v. 23, n. 57, 2021): a uberização nomeia um novo tipo de gestão e controle da força de trabalho, com eliminação de direitos, transferência de riscos aos trabalhadores e gerenciamento de multidões como trabalhadores just-in-time.',
'',
'["surgiu com o uso das plataformas digitais como elemento mediador que estimulou relações de trabalho cooperativo entre multidões de desempregados.","intensificou a informalidade e a flexibilidade nas relações de trabalho por conta dos recursos técnicos das plataformas, que acirraram a exploração capitalista.","libertou o trabalhador do atraso das leis trabalhistas, que impediam o empreendedor de construir novos arranjos produtivos que aumentassem sua renda.","partiu da regulação das plataformas digitais para instituir uma nova forma de gerenciamento da força de trabalho baseada na eliminação de direitos sociais.","acentuou a exploração capitalista, já que o aumento da renda do trabalhador não foi compatível com os custos das atividades profissionais realizadas por meio de aplicativos."]'::jsonb,
'B',
'Segundo o texto, a uberização intensificou a informalidade e a flexibilização, usando os recursos técnicos das plataformas para acirrar a exploração capitalista. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Linguagens',
'A expressão just-in-time, destacada no texto, refere-se, no contexto da discussão, a uma modalidade de trabalho',
'Texto para as questões 15 e 16 — de L. C. Abílio et al. (Sociologias, 2021).',
'',
'["com escala fixa.","filantrópico.","híbrido.","sob proteção legal.","sob demanda."]'::jsonb,
'E',
'''Just-in-time'' designa o trabalhador acionado conforme a necessidade do momento, ou seja, uma modalidade de trabalho sob demanda. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Ciências Humanas',
'A partir dos dados apresentados nos gráficos, é correto afirmar que as associações realizadas por crianças e adolescentes com diferentes formas ocupacionais são fundadas em uma visão de que',
'O texto cita a tendência, verificada em 2025, de crianças e adolescentes usarem "CLT" como ofensa, associando o emprego com carteira à pobreza e ao fracasso, em oposição a ocupações autônomas. [Imagem: gráficos da PNAD-C/IBGE (dez/2024 a fev/2025) com rendimento médio mensal e pessoas ocupadas por categoria (empregado do setor privado com/sem carteira, trabalhador doméstico, empregador com/sem CNPJ, trabalhador autônomo com/sem CNPJ).]',
'',
'["os empregadores e trabalhadores autônomos são mais numerosos do que empregados com carteira assinada e, logo, seguir essas ocupações é um caminho mais seguro para a riqueza.","os empregados do setor privado sem carteira e trabalhadores autônomos possuem rendimento médio maior que os empregados com carteira e, logo, estão mais protegidos da pobreza.","os trabalhadores autônomos estão mais protegidos contra os riscos sociais do que aqueles com emprego formal, que tradicionalmente oferece menos direitos.","os empregadores (empresários) têm maiores ganhos e autonomia, o que atrai os jovens a fugir da subordinação da relação de emprego, a qual desprezam, para constituir empresas, ainda que haja menos empregadores do que empregados.","os trabalhadores autônomos com CNPJ, com ganhos superiores aos dos empregados com carteira, são muito numerosos e, logo, a ocupação parece-lhes um caminho para o êxito e a riqueza."]'::jsonb,
'D',
'Os dados mostram que os empregadores têm maiores ganhos e autonomia (ainda que sejam minoria frente aos empregados); é essa visão que leva os jovens a desprezar a subordinação do emprego formal e a idealizar o empreender. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Matemática',
'Uma startup observa que o número de usuários cresce, em milhares, após t semanas do lançamento, segundo M(t) = 200 × (1,1)^t. Em que período, em semanas, o número de usuários ultrapassa 300 mil?',
'Note e adote: log 3 ≅ 0,4771; log 5 ≅ 0,6990; log 11 ≅ 1,0414.',
'',
'["Entre 0 e 1 semana.","Entre 1 e 3 semanas.","Entre 2 e 4 semanas.","Entre 3 e 4 semanas.","Entre 4 e 6 semanas."]'::jsonb,
'E',
'Resolvendo 200·(1,1)^t > 300, tem-se (1,1)^t > 1,5; aplicando logaritmos com os valores dados, t fica entre 4 e 6 semanas. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Linguagens',
'Em "Zero Cruzeiro", obra criada em 1978,',
'Obra "Zero Cruzeiro" (1978), de Cildo Meireles (acervo Fundação Cultural Banco Itaú): anverso e reverso de uma nota fictícia de zero cruzeiro. [Imagem: reproduções do anverso (com figura de pessoa comum) e do reverso da nota "Zero Cruzeiro".]',
'',
'["a assinatura reproduzida na nota é a do presidente do Banco Central e confere um efeito oficial e realístico à nota Zero Cruzeiro.","a indicação do valor nominal sugere a estabilização econômica promovida pelas políticas públicas da época com a diminuição da inflação.","a ilustração empregada na composição subverte o culto dos heróis nacionais e introduz a presença de pessoas comuns e anônimas, com frequência desvalorizadas.","a obra sugere a indistinção entre a criação artística e a nota de dinheiro, uma vez que ambas têm valor de troca.","a imagem exalta a valorização de setores marginalizados que foram beneficiados com as políticas de inclusão social adotadas pelo regime militar."]'::jsonb,
'C',
'Ao estampar uma figura comum e anônima no lugar de um herói nacional, ''Zero Cruzeiro'' subverte o culto aos heróis e dá visibilidade a pessoas em geral desvalorizadas. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Ciências Humanas',
'O excerto, extraído de um texto publicado no início do século XX pelo peruano Manuel González Prada,',
'Excerto de Manuel González Prada ("Nuestros índios", in "Ideas en torno de Latinoamérica". México: UNAM, 1986, adaptado): questiona se o indígena sofre menos sob a República do que sob a dominação espanhola, apontando a persistência de trabalhos forçados, recrutamentos e matanças.',
'',
'["identifica mudanças na condição dos indígenas após a emancipação política, mas afirma a persistência de sua exploração no trabalho e de sua marginalização social.","valoriza a ativa participação dos indígenas no processo de emancipação política, mas admite a dificuldade política de incorporá-los à nova ordem social.","reconhece os crimes contra os indígenas cometidos durante a colonização espanhola, mas enfatiza a melhoria nas relações sociais e na condição indígena sob a República.","defende a persistência da exclusão social dos indígenas na República, mas a justifica em função das heranças recebidas do período de colonização espanhola.","critica a obrigatoriedade do alistamento militar dos indígenas, mas insiste na importância de sua participação e de seu envolvimento na construção da República."]'::jsonb,
'A',
'O autor reconhece que houve mudança formal (fim de corregimientos e encomiendas) com a emancipação, mas denuncia a permanência da exploração do trabalho e da marginalização do indígena sob a República. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Ciências Humanas',
'Com base no excerto, é correto afirmar:',
'Excerto de Rafael Chambouleyron ("Jesuítas e as crianças no Brasil quinhentista", in Mary del Priore, "História das crianças no Brasil". São Paulo: Contexto, 1999): o ensino das crianças indígenas pelos padres podia representar uma possibilidade de estabelecer alianças entre grupos indígenas e religiosos.',
'',
'["A aliança entre grupos indígenas e padres implicava total submissão dos primeiros aos segundos.","A catequização das crianças significava uma estratégia de construção de relacionamento entre os povos envolvidos na colonização portuguesa.","A documentação evidencia a imagem que as várias tribos indígenas tinham a respeito dos portugueses.","As ações pedagógicas visavam preparar os indígenas para a administração colonial.","A instrução religiosa era o único objetivo no ensino de crianças indígenas."]'::jsonb,
'B',
'Segundo o excerto, catequizar as crianças indígenas era também uma estratégia de construção de alianças e relacionamento entre os grupos indígenas e os religiosos envolvidos na colonização. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Ciências Humanas',
'Em termos da interação entre os recursos verbais e imagéticos na charge, é correto afirmar:',
'[Imagem: charge "Marco Temporal" (cartum.folha.uol.com.br), em que um casal observa uma família indígena empobrecida em meio urbano; a mulher diz "Eles já estão perfeitamente integrados à nossa cultura!" e há a pergunta "Por que mais terras?".]',
'',
'["A representação imagética dos indígenas como miseráveis é hiperbólica, reforçando o sentido da pergunta ''Por que mais terras?'', o que evidencia uma atitude autoral favorável ao marco temporal.","A distribuição espacial do casal e da família indígena personifica a polarização política, o que fica demarcado pela oposição ''nós'' contra ''eles'' na fala da mulher.","A expressão ''mais terras'', em contraste com o espaço ocupado pela família indígena, busca mostrar que já há soluções alternativas para a delimitação de terras para os povos originários no tecido urbano.","Ocorre uma quebra de expectativa entre a representação da família indígena e a expressão ''perfeitamente integrados'', o que colabora para o teor crítico da charge em relação ao marco temporal.","A postura do casal, em relação aos indígenas, sinaliza empatia e mostra o seu interesse na derrubada do marco temporal, que tem levado indígenas à pobreza nas metrópoles brasileiras."]'::jsonb,
'D',
'A charge cria quebra de expectativa entre a imagem da família indígena empobrecida e a fala ''perfeitamente integrados à nossa cultura'', recurso que sustenta a crítica ao marco temporal. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Ciências da Natureza',
'Acerca das informações do texto e da análise do gráfico sobre o desmatamento da Mata Atlântica, é possível concluir que',
'Texto: em 2024, o Atlas da Mata Atlântica identificou perda de 143,66 km² de florestas maduras, com queda de apenas 2% ante o ano anterior; o menor desmatamento registrado foi de 113,99 km² em 2017-2018. [Imagem: gráfico da área de desmatamento (km²/ano) e linha de tendência, de 1985 a 2024. Fonte: sosma.org.br.]',
'',
'["a área de desmatamento apresenta ciclos sazonais em função da variabilidade natural do clima, independentemente da atividade antrópica.","os anos de 2017 e 2018 apresentaram áreas reduzidas de desmatamento associadas à menor procura por madeiras de áreas de silvicultura.","os primeiros 15 anos de monitoramento (1985 a 1999) são marcados por três períodos de elevação da área de desmatamento.","é possível observar uma redução consistente na área de desmatamento da Mata Atlântica (km²/ano) ao longo de toda a série histórica.","há uma evolução crescente da área de desmatamento nos limites da Mata Atlântica, em especial nos últimos 10 anos de monitoramento."]'::jsonb,
'D',
'O gráfico e a tendência mostram queda consistente da área de desmatamento ao longo de toda a série histórica (1985-2024), apesar de oscilações pontuais. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Ciências da Natureza',
'O processo de esverdeamento (greening) da área apresentada na imagem, sua evolução temporal desde 1986 e os elementos do texto permitem concluir que',
'Texto: a cobertura vegetal nas Ilhas Shetlands do Sul (Antártida) aumentou de 0,86 km² (1986) para 11,95 km² (2021). [Imagem: foto de musgos na Ilha Ardley e gráfico da evolução temporal dos índices NDVI e TCG (área de vegetação verde) na Ilha Ardley desde 1986. doi.org/10.1038/s41561-024-01564-5.]',
'',
'["a construção de bases de pesquisa científica em diferentes pontos da área favorece a presença e a expansão dos musgos na região.","ocorre um processo natural de recomposição florística da região impulsionado pela radiação solar demonstrada pelo NDVI e TCG, desde 2016.","existe uma evidência da associação do greening à elevação da temperatura do ar e menor cobertura de gelo, demonstrado no gráfico de 2016.","os dados temporais de NDVI e TCG permanecem constantes ao longo da série histórica de dados representada para a região.","a elevação do nível do mar na região com cada vez menos umidade do ar tem como consequência o processo de greening."]'::jsonb,
'C',
'A evolução dos índices NDVI e TCG, com salto a partir de 2016, associa o esverdeamento (greening) ao aumento da temperatura do ar e à menor cobertura de gelo na região. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Linguagens',
'Segundo o texto (em inglês) sobre as plataformas de gelo da Antártida, é correto afirmar:',
'Texto de S. Buzzard ("The surface hydrology of Antarctica''s floating ice", Physics Today 75, 2022, adaptado): distingue a camada de gelo apoiada em terra (ice sheet) das plataformas flutuantes (ice shelves), que cercam três quartos da costa da Antártida e correspondem a cerca de 11% de sua área; pelo princípio de Arquimedes, o derretimento das plataformas flutuantes não altera o nível do mar, mas elas regulam a velocidade das geleiras.',
'',
'["A área da superfície de gelo já derretido é aproximadamente do tamanho da França.","O princípio de Arquimedes afirma que as plataformas de gelo possuem uma força de empuxo muito menor que seu peso e, portanto, flutuam.","Plataformas de gelo são importantes porque atuam para regular a velocidade das geleiras na Antártida.","Plataformas de gelo flutuantes são relevantes porque representam três quartos da área total da Antártida.","O princípio de Arquimedes não se aplica no caso do derretimento do gelo flutuando na costa antártica."]'::jsonb,
'C',
'O texto afirma explicitamente que as plataformas de gelo (ice shelves) são importantes porque regulam a velocidade das geleiras continentais, segurando seu avanço para o oceano. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Linguagens',
'De acordo com o texto (em inglês), atualmente a exploração do calor gerado nas regiões subterrâneas do planeta',
'Texto do New Yorker (março de 2025, adaptado) sobre energia geotérmica: hoje atende a uma parcela ínfima das necessidades de eletricidade e aquecimento; a geotérmica é livre de carbono, disponível em toda parte e praticamente ilimitada, mas o grande desafio é perfurar com segurança por quilômetros de rocha quente.',
'',
'["atende a uma parcela insignificante da demanda energética da sociedade.","pode ser utilizada através de um aparato tecnológico de baixo custo.","oferece vantagens ambientais limitadas em relação a outras fontes de energia renováveis.","utiliza métodos desenvolvidos nas pesquisas científicas sobre a superfície lunar.","proporciona utilidade prática restrita do ponto de vista da produção industrial."]'::jsonb,
'A',
'O texto diz que, atualmente, a energia geotérmica atende apenas a uma parcela ínfima (''puny portion'') das necessidades de eletricidade e aquecimento da humanidade. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Ciências Humanas',
'Assinale a alternativa correta sobre o processo geológico e sua consequência no terreno que explica a exploração de energia geotérmica no Quênia, respectivamente:',
'Texto: a África Oriental usa recursos geotérmicos para gerar cerca de 630 MW/ano, sendo o Quênia o líder africano. [Imagem: mapa do potencial geotérmico da África, destacando os rifts da África Oriental.]',
'',
'["Movimento transcorrente; morros testemunhos.","Intemperismo químico; formação de relevos de cuesta.","Movimento divergente de placas; rift valley.","Processos erosivos contínuos; formação de cânions.","Movimento convergente; cadeias montanhosas."]'::jsonb,
'C',
'O Quênia situa-se sobre o Rift da África Oriental, resultado de movimento divergente de placas, que gera o vale de rift (rift valley) e intensa atividade geotérmica. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Ciências da Natureza',
'Considerando que toda a energia para gerar as imagens por IA fosse proveniente da combustão completa de carvão, a pegada de carbono diária, medida em toneladas de CO2 formado, resultante da produção dessas imagens, seria de',
'Texto: em 2024 estimou-se que 30 milhões de imagens eram geradas diariamente por IA, a um gasto energético médio de 131 kJ por imagem. Note e adote: massa molar (g/mol) C = 12 e O = 16; entalpia de combustão completa do carvão ΔH = −393 kJ/mol.',
'',
'["0,2.","10.","150.","280.","440."]'::jsonb,
'E',
'Energia diária = 30 milhões × 131 kJ = 3,93×10⁹ kJ. Dividindo pela entalpia (393 kJ/mol) obtêm-se ~10⁷ mol de C; multiplicando pela massa molar do CO2 (44 g/mol) chega-se a cerca de 440 toneladas. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Ciências Humanas',
'Indique a alternativa que explica corretamente a ideia central acerca dos créditos de carbono.',
'O conceito de mercado de carbono foi formalizado a partir do Protocolo de Kyoto (1997) e impulsionado pelo Acordo de Paris (2015); no Brasil, o mercado de créditos de carbono foi formalizado em dezembro de 2024.',
'',
'["Países com mais florestas devem receber créditos financeiros de países menos florestados para manter a floresta em pé.","Créditos de carbono correspondem a um aumento da taxa fotossintética e uma maior conversão de CO2 em matéria orgânica pelas florestas tropicais.","Créditos de carbono são obtidos por qualquer país, mesmo os mais industrializados, pela redução da emissão de CO2 e seus equivalentes na atmosfera.","Países industrializados geram muitos créditos de carbono, que podem ser repassados aos países menos poluidores, via mercado de carbono.","Há um limite de créditos de carbono que cada país pode emitir, estabelecido internacionalmente; ultrapassado tal limite, o país sofre sanções econômicas."]'::jsonb,
'C',
'A ideia central do mercado de carbono é que qualquer país, inclusive os industrializados, gera créditos ao reduzir suas emissões de CO2 e equivalentes. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Matemática',
'Uma empresa deseja envasar 350 mL de água em uma lata cilíndrica de alumínio cujo diâmetro da base deve ter entre 5 cm e 8 cm. Qual será, aproximadamente, em centímetros, a menor altura possível da lata?',
'O Brasil é líder mundial em reciclagem de alumínio (cerca de 99% das latas em 2021). Considere π ≈ 3.',
'',
'["5","7","13","18","28"]'::jsonb,
'B',
'Com V = 350 cm³ = π·r²·h e π ≈ 3, a altura é menor quando o raio é maior (diâmetro 8 cm, r = 4): h ≈ 350/(3·16) ≈ 7 cm. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- QUESTÕES 31 a 60
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Ciências da Natureza',
'O tratamento de superfícies de aço com uma camada de NaOH(s) é efetivo em ambientes com elevada acidez pois, caso a água entre em contato com a superfície tratada, ela',
'O processo de corrosão do aço é favorecido em ambientes úmidos e ácidos. Quando o uso de óleo não é conveniente, cria-se uma camada de NaOH(s) sobre o metal aplicando uma solução aquosa concentrada da base e deixando secar.',
'',
'["será repelida pela camada hidrofóbica de hidróxido de sódio, evitando o contato direto da água com o metal e sua oxidação.","solubilizará o hidróxido de sódio, que neutralizará o ácido presente na água que poderia induzir o processo de oxidação na superfície do metal.","será oxidada pelo hidróxido de sódio, gerando sua forma reduzida que, em contato com a superfície do metal, impede o processo de corrosão.","gerará um acúmulo de água na superfície hidrofílica da camada de hidróxido de sódio, impedindo sua solubilização e a consequente formação de ácido.","reagirá diretamente com o sódio do hidróxido de sódio, já que este atuará como metal de sacrifício, sofrendo oxidação e protegendo a superfície metálica."]'::jsonb,
'B',
'Em meio ácido, se a água atinge a superfície, ela dissolve o NaOH, que neutraliza o ácido responsável por induzir a oxidação, protegendo o metal. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Ciências da Natureza',
'Sobre os processos de entupimento por carbonato de cálcio e a descalcificação de eletrodomésticos, é correto afirmar que',
'O descalcificante (ácido cítrico) é usado para desentupir dutos internos de cafeteiras e ferros a vapor; o entupimento é causado por depósito de calcário (CaCO3). Equilíbrio: Ca²⁺(aq) + CO2(g) + H2O(l) ⇌ CaCO3(s) + 2 H⁺(aq).',
'',
'["a diminuição do pH pela presença do ácido cítrico leva à reação de descalcificação.","a reação de descalcificação com ácido cítrico desloca o equilíbrio porque consome CO2.","ambientes ricos em CO2 causam menos entupimento dos eletrodomésticos.","a utilização de água com maior pH nos eletrodomésticos causa menos entupimento.","o ácido cítrico age como um catalisador, pois não participa do equilíbrio de descalcificação."]'::jsonb,
'A',
'O ácido cítrico diminui o pH (aumenta H⁺); pelo princípio de Le Chatelier, o excesso de H⁺ desloca o equilíbrio no sentido de dissolver o CaCO3 (descalcificação). Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Ciências Humanas',
'Com base nos textos, qual alternativa explica o impacto ambiental do consumismo no setor da indústria têxtil?',
'Textos sobre a insustentabilidade do setor têxtil: cerca de 4 milhões de resíduos têxteis são descartados por ano nos domicílios brasileiros (cerca de 44 kg por domicílio); o setor responde por 2% a 8% das emissões de gases de efeito estufa; a produção de roupas cresceu 60% em 15 anos, com custo 36% menor; o algodão ocupa 2,5% das áreas cultivadas, mas usa 25% dos inseticidas e 10% dos herbicidas.',
'',
'["O crescimento da indústria têxtil brasileira tem sido acompanhado por avanços significativos na gestão ambiental, uma vez que o descarte médio de 44 quilos de roupas e calçados por família favorece as iniciativas de gestão de resíduos e a redução das emissões.","Nos últimos anos, a indústria têxtil teve um aumento significativo na produção de roupas, que resultou na diminuição no custo das peças em 36% e proporcionou o aumento do consumo no setor em todo o mundo, tornando essencial a discussão de políticas de gestão da cadeia produtiva e de resíduos.","A produção de algodão ocupa a maior parte de área cultivável do mundo e cresceu 60% nos últimos anos; especialmente no Brasil, esse aumento vem gerando empregos no setor têxtil, impulsionando a capacidade de consumo da população.","Nas últimas décadas, o setor têxtil brasileiro enfrentou desafios com a redução da produção de algodão, o que limitou o crescimento da indústria e restringiu o acesso da população ao consumo de roupas e calçados.","A produção do setor têxtil vem reduzindo o impacto ambiental devido ao uso de bilhões de litros de água no cultivo do algodão, o que dilui os herbicidas e inseticidas, reduzindo a poluição atmosférica, do solo e dos recursos hídricos."]'::jsonb,
'B',
'Os textos relacionam o aumento da produção têxtil e a queda de 36% no custo das peças ao crescimento do consumo mundial, o que torna essencial discutir políticas de gestão da cadeia produtiva e dos resíduos. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Ciências Humanas',
'A partir das informações do mapa e do texto sobre as cores das águas amazônicas, assinale a alternativa correta.',
'Texto: a classificação de Harald Sioli (1950) divide as águas amazônicas em Brancas (alta concentração de sólidos em suspensão - SIS), Pretas (alta concentração de material orgânico dissolvido - MOD) e Claras (baixas concentrações de ambos); estudos recentes acrescentam tipos intermediários A e B. [Imagem: mapa dos principais rios da Região Hidrográfica Amazônica com a classificação das águas. Atlas da Amazônia Brasileira, 2025.]',
'',
'["As águas Pretas com alto teor orgânico são provenientes dos processos erosivos e localizam-se em áreas de Terras Pretas de Índio, caracterizando a coloração escura exclusiva da sub-bacia do Rio Negro.","A baixa concentração de SIS e MOD nas águas Claras é resultado dos garimpos ilegais, devido à utilização de mercúrio e dos agrotóxicos nos cultivos da soja.","A classificação intermediária do tipo A tem características hidroquímicas alteradas devido ao impacto direto e indireto de mudanças no uso do solo, além de grandes projetos de infraestrutura em toda parte norte-oriental da bacia.","As águas intermediárias tipo B, com baixa concentração de SIS e MOD, localizadas sobretudo no Baixo Amazonas, possuem essas características devido às mudanças no uso do solo e por ser uma área com muitos igarapés.","As águas Brancas, como as do Rio Solimões, com alta concentração de SIS, têm essas características devido aos processos erosivos de regiões a montante, como as nascentes do rio Amazonas na Cordilheira dos Andes."]'::jsonb,
'E',
'As águas Brancas, como as do Solimões, têm alta concentração de sólidos em suspensão por causa dos processos erosivos a montante, nas nascentes andinas do rio Amazonas. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Ciências Humanas',
'Sobre o motivo da localização dos sensores no sistema de monitoramento de corrida de detritos, assinale a alternativa correta:',
'Em regiões montanhosas de clima tropical, chuvas intensas provocam movimentações de massa. [Imagem: mapa de um sistema de monitoramento de corrida de detritos, com localização de pluviômetro, geofones, sonar de volume, cabo sensor e sensor de impacto ao longo da encosta e do fundo de vale. FEBRAGEO, 2022.]',
'',
'["O sensor de impacto instalado próximo à estrada e no setor mais elevado do terreno permite detectar a passagem de folhas, troncos e matacões.","O monitoramento na área de fundo de vale é necessário para medição do volume e velocidade da corrida de detritos, com o intuito da prevenção de riscos.","O pluviômetro instalado na porção menos elevada do terreno é suficiente para emissão de alerta de risco para a população residente no local.","O sonar de volume instalado próximo às residências e na parte elevada do terreno ajuda a detectar a velocidade com a qual os detritos atingem os objetos.","A correlação entre cabo sensor e geofones instalados nas porções média e inferior da drenagem permite detectar a composição da corrida de detritos."]'::jsonb,
'B',
'Os sensores de volume e velocidade são posicionados no fundo de vale (onde a corrida de detritos se concentra) justamente para medir volume e velocidade e permitir a prevenção de riscos. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Matemática',
'Um técnico usou uma Estação Total (altura 1,6 m) em um ponto M equidistante na horizontal dos pontos A e B (40 m de cada). O ângulo de inclinação descendente αA é 7° e o ascendente αB é 5°, e a leitura no prisma hB (ponto B) foi de 3,60 m. Determine a diferença de altitude, em metros, entre os pontos A e B.',
'Note e adote: tan(5°) ≅ 0,087 e tan(7°) ≅ 0,122. [Imagem: esquema da Estação Total no ponto M, com miras nos pontos A (abaixo) e B (acima) e os ângulos αA e αB.]',
'',
'["1,60","2,80","3,16","3,96","4,80"]'::jsonb,
'E',
'A diferença de altura resulta da soma das projeções verticais: 40·tan(7°) + 40·tan(5°) ≈ 40·0,122 + 40·0,087 ≈ 4,88 + 3,48, ajustada pelas leituras; o valor corresponde a cerca de 4,80 m. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Matemática',
'A praça é um quadrado de vértices A = (0,0), B = (8,0), C e D (unidade = 1 metro). A borda da seção circular de cada prédio tangencia cada lado do quadrado no seu ponto médio. Qual deve ser a equação da circunferência do prédio que tem distância de 10 m do seu centro até o centro do quadrado e que passa pelo ponto de tangência P?',
'[Imagem: quadrado ABCD com quatro circunferências (prédios), cada uma tangente ao ponto médio de um lado; destaque para o ponto de tangência P.]',
'',
'["(x − 14)² + (y − 4)² = 36","(x − 18)² + (y − 4)² = 100","(x − 8)² + (y − 24)² = 36","x² + y² = 36","(x − 4)² + (y − 24)² = 100"]'::jsonb,
'A',
'O centro do quadrado é (4,4). O prédio cujo centro dista 10 m e tangencia o ponto médio de um lado tem centro em (14,4) e raio 6, logo (x−14)² + (y−4)² = 36. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Ciências Humanas',
'Com base no texto e em seus conhecimentos, é correto afirmar a respeito das novas tendências sobre a urbanização do Brasil:',
'Texto (jornal.unesp.br, adaptado): no Censo IBGE 2022, 87,4% da população (177,5 milhões) residia em áreas urbanas (ante 84,4% em 2010); destaque para o crescimento das cidades médias (entre 100 mil e 500 mil habitantes); maiores percentuais de população urbana no Sudeste (94,44%) e Centro-Oeste (91,35%); a população rural teve decréscimo em todas as regiões (fragmentação socioespacial).',
'',
'["O grau de urbanização vem aumentando nas regiões Centro-Oeste (91,35%) e Norte (78,47%), devido à expansão industrial e ao impacto das áreas reflorestadas e com baixa modernização agrícola.","Houve um aumento de 16,6 milhões de pessoas morando em áreas urbanas, revelando que as grandes metrópoles continuam como o principal polo de crescimento populacional relativo, com taxas superiores às cidades médias e pequenas.","Em 2010, 84,4% da população absoluta do país vivia em áreas urbanas e, em 2022, essa porcentagem passou para 87,4%; esse aumento do grau de urbanização ocorreu sobretudo nas cidades médias (entre 100 e 500 mil habitantes).","De acordo com o Censo de 2022, a população rural manteve-se estável na última década, como mostram os dados das regiões Sul (88,24%) e Sudeste (94,44%), ampliando a fragmentação socioespacial.","No contexto do Censo de 2022, os pequenos municípios brasileiros apresentaram o maior crescimento populacional relativo do país, superando as cidades médias e grandes, em função do avanço da industrialização e da expansão do agronegócio."]'::jsonb,
'C',
'O grau de urbanização subiu de 84,4% (2010) para 87,4% (2022), e o Censo destaca que esse crescimento se deu sobretudo nas cidades médias (100 mil a 500 mil habitantes). Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Ciências Humanas',
'O excerto de Mário de Andrade relata alterações na paisagem urbana paulistana com a implantação de novos equipamentos (os parques infantis) que visavam',
'Excerto de Mário de Andrade ("Dia de São Paulo", Revista do Arquivo Municipal, 1936): descreve os parques infantis, onde "as crianças proletárias se socializam aprendendo nos brinquedos o cooperativismo e a consciência do homem social", com instrutoras, dentistas e educadoras sanitárias.',
'',
'["substituir o ambiente degradado e nocivo dos cortiços e vilas operárias por espaços públicos marcados pela flora da Mata Atlântica.","disciplinar o lazer das crianças com a introdução de noções de saúde preventiva e de atividades racionais e pedagógicas.","produzir formas de ajustamento social que afastassem os jovens do ócio e dos vícios, por meio da educação profissionalizante.","promover valores cristãos através da evangelização e do assistencialismo baseado na caridade e na recreação.","organizar um novo programa escolar voltado para as crianças proletárias, adotando uma pedagogia pautada no nacionalismo e civismo."]'::jsonb,
'B',
'Os parques infantis descritos por Mário de Andrade buscavam disciplinar o lazer infantil, introduzindo noções de saúde preventiva e atividades racionais e pedagógicas. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Linguagens',
'Lendo em conjunto o trecho de Georg Simmel (1903) e o trecho de Rachel de Queiroz ("Caminho de Pedras"), é possível afirmar:',
'Trecho de Georg Simmel ("As grandes cidades e a vida do espírito", 2005): a vida nas grandes cidades produz o caráter "blasé" (embotamento) e uma "reserva" que garante ao indivíduo certa liberdade pessoal. Trecho de Rachel de Queiroz (início do cap. 7 de "Caminho de Pedras"): o protagonista Roberto, num bonde, observa os empregados que, ao fim do dia, "cortavam as amarras", procurando "o seu mundo pessoal, a sua pequenina ilha".',
'',
'["As observações de Roberto contrariam a análise de Simmel. O ''sorriso'' dos empregados contradiz o diagnóstico de ''embotamento'' e ''reserva'' para com os outros.","A vida ''isolada'' e ''particular'' descrita por Roberto, com que todos ''cortavam as amarras'', é uma expressão da mesma reserva que Simmel argumenta produzir alguma liberdade.","Ainda que haja semelhanças nas leituras, o modo ''abstrato'' com que os empregados passavam seus dias não é um aspecto psíquico das grandes cidades, mas da necessária desconfiança em atividades comerciais.","A vida doméstica e particular sobre a qual Roberto reflete contradiz o diagnóstico de ''intensificação da vida nervosa'', sugerindo uma rotina de impressões repetidas e imutáveis.","O retrato da cidade em Caminho de Pedras confirma a análise de Simmel ao afirmar que a individualidade e o ''embotamento frente à distinção das coisas'' são expressos no espaço privado dos lares dos empregados."]'::jsonb,
'B',
'A vida ''isolada'' e ''particular'' com que os empregados ''cortavam as amarras'' corresponde à reserva de que fala Simmel, a qual, segundo o sociólogo, garante ao indivíduo certa liberdade pessoal. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Linguagens',
'Ao afirmar que o carnaval é político, o texto objetiva',
'Texto do Artigo 19 (16/02/2024, adaptado): o carnaval é o exercício concreto de vários direitos (à cidade, à manifestação, à associação, à liberdade de expressão); ocupar as ruas é um ato político, e a festa amplifica histórias e narrativas de grupos historicamente silenciados.',
'',
'["ressaltar a necessidade da festa popular para que brasileiros e brasileiras possam ter algum momento de lazer.","valorizar a ocupação do espaço público, resistindo contra aqueles que não são favoráveis à folia e ao consumo.","criticar os vários direitos adquiridos pelas classes mais silenciadas da sociedade em sua luta social e cultural.","defender posicionamentos e direitos por meio de formas de expressão culturais e artísticas.","refletir, do ponto de vista sócio-histórico, sobre o consumo, que acentua as diferenças culturais e religiosas."]'::jsonb,
'D',
'Ao dizer que o carnaval é político, o texto defende que ele é um meio de afirmar posicionamentos e direitos por formas de expressão cultural e artística. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Linguagens',
'No contexto histórico, o circo',
'Texto de Daniel de Carvalho Lopes e Ermínia Silva ("Circo: percursos de uma arte em transformação contínua", Cadernos do GIPE-CIT, 2020, adaptado): os espetáculos circenses do fim do século XVIII uniam o cômico e o dramático, mesclando pantomima, palhaço, acrobacia e exibições equestres em um mesmo espaço, com novas estruturas de organização e produção.',
'',
'["bem como outras expressões artísticas, interage e se apropria, continuamente, de elementos estéticos, sociais, culturais, políticos e tecnológicos da época e da sociedade em que se apresenta, revelando sua contemporaneidade.","é constituído pelas interações que estabelece com os variados elementos que o compõem, e o local de sua manifestação é similar e perene às realizações espetaculares dos séculos anteriores.","presente no Brasil a partir do início do século XX promove uma ruptura do circo tradicional e início do circo novo, que não se constitui com elementos antes explorados.","moderno descaracteriza o modelo encontrado nos séculos XVII e XVIII e faz emergir uma nova expressão artística que ainda há de se configurar por um novo nome, diferente de circo.","tradicional não tinha como principal característica divertir os espectadores, haja vista a veiculação de artistas com corpos ditos grotescos; nos dias atuais reconhece-se a mudança de objetivo que traz no circo a representação de entretenimento a partir de corpos virtuosos."]'::jsonb,
'A',
'O texto mostra que o circo, como outras artes, interage e se apropria continuamente de elementos estéticos, sociais, culturais, políticos e tecnológicos de cada época, revelando sua contemporaneidade. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Linguagens',
'Com base nas informações e discussões apresentadas, assinale a alternativa que expressa a análise crítica mais fundamentada sobre o fenômeno das exposições imersivas:',
'Texto sobre exposições imersivas (projeções, trilha sonora, narração de cartas) baseadas em obras de artistas consagrados, com crítica da crítica de arte Sheila Leirner, que questiona a "grandiloquência artificial e sensacionalista" desses shows em relação às obras pictóricas em si. [Imagem: foto ilustrativa de uma exposição imersiva de Van Gogh.]',
'',
'["Embora promovam amplo acesso à arte, exposições imersivas tendem a diluir o conteúdo crítico e histórico das obras em favor de uma experiência sensorial voltada ao entretenimento, o que pode comprometer o potencial formativo e reflexivo da fruição estética.","A tecnologia empregada nas exposições imersivas permite que o público se aproxime mais intensamente do processo criativo dos artistas, oferecendo uma reconstrução autêntica e historicamente precisa de suas intenções originais.","Ao integrar projeções em alta definição, trilhas sonoras e ambientes cenográficos, as exposições imersivas potencializam a percepção visual das obras, demonstrando que a experiência estética pode ser intensificada por meios artificiais sem prejuízo de seu valor cultural.","A crítica especializada desconsidera o valor pedagógico das exposições imersivas, pois, ao recorrerem a recursos de entretenimento, essas mostras democratizam o acesso à arte e ampliam o repertório visual do público geral.","O êxito de exposições imersivas no circuito internacional comprova a crescente obsolescência do modelo tradicional de museu e sinaliza uma necessária ruptura com a ideia de contemplação silenciosa e introspectiva das obras."]'::jsonb,
'A',
'A análise mais fundamentada, alinhada à crítica de Sheila Leirner, reconhece que, embora democratizem o acesso, as exposições imersivas tendem a diluir o conteúdo crítico e histórico em favor do entretenimento, comprometendo a fruição estética. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Linguagens',
'Com base na proposição do filósofo Merleau-Ponty e na observação da tela de Cézanne, é correto afirmar que cabe à expressão por meio da pintura',
'Trecho de Merleau-Ponty ("A dúvida de Cézanne") sobre a obra de Paul Cézanne ("A montanha de Sainte-Victoire", 1904): o desenho deve resultar da cor, para que o mundo seja restituído em sua espessura, como um "organismo de cores". [Imagem: pintura "A montanha de Sainte-Victoire", de Cézanne.]',
'',
'["encontrar uma forma de representação pictórica que se sobreponha ao mundo visível.","retratar a realidade, explicitando suas deformações de perspectivas.","fazer aparecer a espessura do mundo, especialmente pela ênfase à cor.","deixar o mundo se revelar, sem o recurso técnico a qualquer mediação.","destacar a cor sobre o desenho, para fazer aparecer as perspectivas."]'::jsonb,
'C',
'Para Merleau-Ponty, em Cézanne o desenho resulta da cor; cabe à pintura fazer aparecer a espessura do mundo, especialmente pela ênfase na cor. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Ciências Humanas',
'Elaborado em 1486, na região da atual Itália, o texto do humanista Pico della Mirandola apresenta algumas características do movimento renascentista, dentre as quais',
'Trecho de Pico della Mirandola ("Discurso sobre a dignidade do homem", adaptado): Deus coloca o homem no centro do universo, sem sede, aspecto ou função determinados, para que, pela sua vontade e livre-arbítrio, ele predetermine a si mesmo.',
'',
'["a ética protestante e o espírito do capitalismo.","a perspectiva da evolução e do etnocentrismo.","a imortalidade do ser humano como pilar da construção da vida terrena.","o antropocentrismo pela ausência da referência divina.","a autonomia do ser humano como construtor de sua própria trajetória de vida."]'::jsonb,
'E',
'O ''Discurso sobre a dignidade do homem'' expressa o traço renascentista da autonomia humana: pelo livre-arbítrio, o homem é construtor de sua própria trajetória. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Linguagens',
'A partir da comparação entre a escultura "Cristo Cachorro", de Francisco Ruiz Gijón, e o livro "O Cristo cigano", de Sophia de Mello Breyner Andresen (inspirado por ela), depreende-se:',
'Escultura "Santíssimo Cristo da Expiação" (1682), de Francisco Ruiz Gijón, popularmente conhecida como "Cristo Cachorro" (madeira), e o livro "O Cristo cigano", de Sophia de Mello Breyner Andresen. [Imagem: detalhe da escultura barroca do Cristo.]',
'',
'["A escultura barroca Cristo Cachorro prenuncia os traços modernistas do livro de Sophia, uma vez que a faca, metáfora central do poema, está indiretamente presente na escultura como o instrumento cortante utilizado para sua criação.","Tanto a escultura, obra barroca, quanto o livro, obra modernista, revelam, respectivamente, o desaparecimento da visão da arte enquanto ligação com o divino e a concepção da morte como fim absoluto.","Na precisão dos detalhes anatômicos e na concepção do Cristo como ser humano perfeito e unido ao divino pela morte, a escultura revela a visão barroca do mundo, enquanto o livro revela seu traço moderno na despersonalização do humano, ao propor a faca e o amor como condutores da ação.","A elaboração metonímica do corpo do Cristo revela uma antecipação de traços modernistas na escultura barroca, enquanto a comparação entre amor e morte no livro revela os traços tardiamente românticos de seu estilo poético.","A precisão de detalhes anatômicos e o equilíbrio de traços da escultura revelam a visão barroca da arte como vitória do humano sobre o divino, enquanto o livro, ao ocultar a imagem do cigano e resumi-la a uma voz em agonia, revela a concepção modernista de um mundo sem Deus."]'::jsonb,
'C',
'A escultura barroca concebe o Cristo como ser humano perfeito unido ao divino pela morte; já o livro de Sophia tem traço moderno ao despersonalizar o humano, pondo a faca e o amor como condutores da ação. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Linguagens',
'A escritora Sophia de Mello Breyner Andresen e o filósofo Martin Heidegger descrevem uma mesma atitude geral comumente assumida por uma pessoa ante o desvelamento de sua própria mortalidade. Qual alternativa melhor descreve essa atitude?',
'Excerto do poema "Busca", de "O Cristo cigano", de Sophia de Mello Breyner Andresen, e trecho de Martin Heidegger ("Ser e Tempo", §51), sobre a tendência de encobrir e tranquilizar diante da morte do outro e da própria mortalidade.',
'',
'["O enfrentamento heroico do absurdo existencial contido na morte.","O respeito silencioso às tradições culturais voltadas ao morrer.","A empatia antecipadora com os mortos, participando de sua dissolução existencial.","A fuga acalmadora, que encobre o sentido existencial da mortalidade.","A perda da sensibilidade, de modo a nem mesmo poder perceber a ocorrência da morte."]'::jsonb,
'D',
'Tanto o poema de Sophia quanto Heidegger descrevem a fuga acalmadora diante da morte: a atitude de encobrir e tranquilizar, afastando o sentido existencial da mortalidade. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Linguagens',
'Considerando a intertextualidade bíblica presente no excerto de "Balada de amor ao vento", a experiência de Mwando é caracterizada',
'Excerto de "Balada de amor ao vento", de Paulina Chiziane: Mwando, como "o Adão no Paraíso", é despertado do "ventre fecundo da inocência" pela voz de uma mulher (Sarnau), sentindo-se transtornado e arrastado "para o abismo" pela paixão.',
'',
'["por uma decepção com o mundo, causada pela perda da fé e pela compreensão da fragilidade das relações humanas, o que o levou a um isolamento resignado.","pelo despertar sexual e pelo conhecimento, que rompem com um estado de inocência anterior, resultando em uma perturbação emocional e um conflito interior.","pela superação de um trauma passado, sendo que a figura da cobra é o símbolo do obstáculo que foi vencido e que o conduz a um novo estágio de maturidade e paz.","por um processo de profunda introspecção, no qual o amor é um caminho para a autodescoberta e transcendência espiritual, apesar das dificuldades iniciais.","pela busca por um novo tipo de devoção religiosa, tendo a figura feminina como fonte de inspiração que o afasta ainda mais dos preceitos tradicionais."]'::jsonb,
'B',
'A intertextualidade com Adão e a serpente mostra o despertar sexual e o conhecimento de Mwando rompendo com a inocência anterior, o que gera perturbação emocional e conflito interior. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Ciências Humanas',
'Com base no excerto, que aborda as Rotas da Seda (que se estenderam, durante a Idade Média, por boa parte da Ásia, Leste da África e Sul da Europa), as trocas culturais e os deslocamentos tiveram impacto na',
'Excerto de Vadime Elisséeff ("Introduction. Approaches Old and New to Silk Roads", 2000, traduzido e adaptado): as Rotas da Seda eram "rodovias culturais" que ligavam o leste e o oeste, promovendo trocas não só de bens, mas também de ideias.',
'',
'["vulgarização de bens como tecidos, especiarias e porcelanas, que alteraram os hábitos de diferentes povos ao longo do trajeto.","divulgação do Direito Romano entre os povos orientais e a derrocada das práticas fundadas na tradição e na oralidade.","difusão do cristianismo no Oriente Médio e Extremo Oriente, por meio da ação de soldados e peregrinos que atuaram nas Cruzadas.","apropriação de técnicas e saberes científicos formulados por europeus, como cartografia, astrolábio e papel.","circulação de padrões arquitetônicos greco-romanos, que forjaram nova identidade visual para santuários, pagodes e templos orientais."]'::jsonb,
'A',
'Como ''rodovias culturais'', as Rotas da Seda difundiram bens (tecidos, especiarias, porcelanas) que se vulgarizaram e alteraram os hábitos dos povos ao longo do trajeto. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Ciências Humanas',
'Ao tratar do islamismo na Idade Média, o texto caracteriza',
'Texto de Marina de Mello e Souza ("África e Brasil africano". São Paulo: Ática, 2007): a peregrinação a Meca e a ação dos ulemás e das escolas corânicas criavam vínculos entre todo o mundo muçulmano do Sael, norte da África e península Arábica.',
'',
'["a transformação abrupta nas práticas e hábitos religiosos dos fiéis e o autodidatismo do ensino religioso na alfabetização de adultos e crianças.","o fanatismo dos líderes religiosos e a exigência contínua de obediência e subserviência dos fiéis que desejavam alcançar a salvação.","a igualdade de gêneros na formação religiosa de crianças e adultos e a ausência de preocupação com a unidade institucional da religião.","o caráter educativo e doutrinário das peregrinações dos fiéis e a homogeneidade da origem étnico-racial do conjunto dos fiéis.","a disposição de ampliar o conhecimento de textos religiosos pelos fiéis e a formação de redes de relações entre povos e grupos sociais distintos."]'::jsonb,
'E',
'O texto mostra que a peregrinação e a ação dos ulemás ampliavam o conhecimento dos textos religiosos e formavam redes de relações entre povos e grupos sociais distintos. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Ciências Humanas',
'O excerto traz informações sobre a atuação militar norte-americana na Ásia após os atentados de 11 de setembro de 2001 e afirma que essas investidas militares',
'Excerto de Simone Duarte ("O vento mudou de direção: o Onze de Setembro que o mundo não viu". São Paulo: Fósforo, 2021): cita mortes no Afeganistão, Iraque e Paquistão, violações de direitos humanos (Abu Ghraib, Guantánamo) e mais radicalização religiosa e preconceito contra muçulmanos e árabes.',
'',
'["provocaram novos confrontos locais e mundiais e acirraram perseguições de caráter étnico e religioso.","definiram uma nova ordem internacional e promoveram o bilateralismo que hoje caracteriza as relações entre as duas superpotências.","consolidaram a hegemonia das organizações e alianças militares ocidentais nas áreas de conflito étnico e religioso do Oriente Médio e do Sul asiático.","contribuíram para o estabelecimento da paz no mundo árabe, ao custo de terem provocado mais de quinhentas mil mortes em países asiáticos.","erradicaram as organizações terroristas responsáveis pelos atentados, embora tenham recorrido a práticas contrárias aos princípios humanitários defendidos pela ONU."]'::jsonb,
'A',
'O excerto afirma que as investidas militares pós-11 de Setembro provocaram novos confrontos (locais e mundiais) e acirraram perseguições de caráter étnico e religioso. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Ciências Humanas',
'Com base no texto, na legenda do mapa e em seus conhecimentos, assinale a alternativa que explica os motivos da ofensiva do Azerbaijão contra os armênios.',
'Texto sobre a ofensiva do Azerbaijão (2023) contra a autoproclamada República de Nagorno-Karabakh (dissolvida em 2024) e a proposta norte-americana (2025) de controlar a rota de transporte turco-azerbaijana. [Imagem: mapa da reconfiguração geopolítica do Cáucaso (2023), com gasodutos (TANAP/SCPX), oleoduto BTC, bases militares, corredores de transporte e territórios em disputa. Atlas Géopolitique Mondial, 2025.]',
'',
'["O território armênio invadido pelo Azerbaijão é estratégico para o comércio de gás e petróleo com a Turquia e a UE, e há um projeto estratégico de transporte, no sul do território invadido, que permitirá uma rota de petróleo, gás e fluxo comercial.","O território no sul da Armênia é de interesse do Irã devido às reservas de hidrocarbonetos, causando conflitos com o Azerbaijão, que, ao defender a Armênia, cria enclaves de proteção territorial.","As bases militares de vários países estão concentradas no território armênio, disputado por Turquia, EUA e Rússia, sendo este último interessado na rota Nagorno-Karabakh para escoar gás e petróleo para a UE.","O conflito entre Armênia e Azerbaijão força a Turquia a ter neutralidade e permite o funcionamento dos gasodutos (TANAP) e oleodutos (BTC), a partir do controle que ela tem das rotas e das bases militares.","No conflito, o corredor de transporte estratégico ao sul do Azerbaijão, associado à ferrovia, escoa toda a sua produção de petróleo e gás, conectando Nagorno-Karabakh à Turquia e à área ocupada pela Armênia."]'::jsonb,
'A',
'O território invadido é estratégico para o comércio de gás e petróleo com a Turquia e a UE, e há um projeto de corredor de transporte ao sul que viabiliza uma rota de petróleo, gás e fluxo comercial. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Ciências Humanas',
'Partindo da Carta da ONU e do mapa, é possível indicar que o caso se refere',
'Texto: a anexação (incorporação unilateral de território de outro Estado) é proibida pela Carta das Nações Unidas (1945). [Imagem: mapa do norte da América do Sul destacando a região de Essequibo, entre a Venezuela e a Guiana.]',
'',
'["à invasão das tropas venezuelanas à área que pertence à fronteira norte do Brasil, contrariando o Acordo de Genebra.","à retomada de áreas da região de Essequibo, pelo Suriname, que foram invadidas pelo exército venezuelano na crescente tensão com a Guiana.","à anexação da região do rio Orinoco, rico em reservas minerais, pela Venezuela, conforme preconiza o Acordo de Genebra.","aos novos limites definidos para o território da Venezuela em acordos com o Mercosul em conformidade com o Protocolo Porto de Espanha.","à anexação da região de Essequibo pela Venezuela, contrariando a Arbitragem de 1904 que determinou que a área deveria ficar sob jurisdição da Guiana."]'::jsonb,
'E',
'O caso refere-se à pretensão da Venezuela de anexar a região de Essequibo, contrariando a Arbitragem de 1904, que a colocou sob jurisdição da Guiana. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Ciências Humanas',
'O excerto, que pretende reproduzir o discurso fúnebre de Péricles (século V a.C.) na Guerra do Peloponeso,',
'Excerto de Tucídides ("Oração Fúnebre de Péricles", adaptado): descreve a democracia ateniense, em que a administração está nas mãos de muitos, há justiça igual para todos, o mérito é reconhecido e a pobreza não é obstáculo ao serviço público.',
'',
'["equipara os comportamentos privados às condutas públicas.","oferece uma visão crítica da democracia representativa.","reproduz a opinião da época sobre a política nas pólis gregas.","enaltece a democracia como marca da superioridade ateniense.","defende que todas as pessoas tenham igual acesso a cargos públicos."]'::jsonb,
'D',
'O discurso de Péricles enaltece a democracia ateniense como marca da superioridade de Atenas (''um exemplo para os outros''). Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Matemática',
'Relacionando números perfeitos e primos, Euclides afirmou: se 2^n − 1 é primo, então 2^(n−1)·(2^n − 1) é um número perfeito. Um número n é perfeito se é igual à soma de seus divisores positivos (excluindo o próprio). Considerando o exposto, é correto afirmar:',
'',
'',
'["Com exceção de n = 1, os 5 primeiros termos da sequência (an) = (2^n − 1) são números primos.","Os termos da progressão geométrica, cujo primeiro termo é o primeiro número perfeito e cuja razão é 3, são pares.","Os números 28 e 31 são números perfeitos.","Na proposição de Euclides, para n = 4, obtemos que 2^n − 1 não é primo, mas que 2^(n−1)·(2^n − 1) é perfeito.","A sequência formada pela diferença dos termos consecutivos de (an) = (2^n − 1) é uma progressão aritmética de razão 2."]'::jsonb,
'B',
'O primeiro número perfeito é 6 (n = 2). Uma PG de primeiro termo 6 e razão 3 (6, 18, 54, ...) tem todos os termos pares, pois 6 é par e a multiplicação por 3 preserva a paridade. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Ciências da Natureza',
'Aristóteles produziu a primeira classificação dos organismos vivos no mundo ocidental, considerando características compartilhadas. Atualmente, a classificação pauta-se no paradigma da Escola Filogenética (cladística). Tal escola',
'',
'',
'["também realiza a análise de características compartilhadas entre os diferentes grupos de organismos, buscando identificar ancestrais comuns e relações de parentesco entre eles.","busca as diferenças entre os grupos de seres vivos, agrupando-os exclusivamente com base nessas diferenças, desconsiderando características compartilhadas.","abandona os princípios aristotélicos e adota ideias que propõem que os seres vivos evoluem com o passar do tempo, tornando-se sempre melhores que as gerações anteriores.","determina que os seres vivos se adaptam às condições do meio em que vivem e produzem descendentes portadores dessas adaptações, de forma sucessiva.","considera que características compartilhadas surgem apenas por convergência adaptativa, ou seja, organismos de linhagens diferentes, em um mesmo ambiente, podem desenvolver características comuns."]'::jsonb,
'A',
'A escola cladística também analisa características compartilhadas, mas com o objetivo de identificar ancestrais comuns e relações de parentesco (filogenia) entre os grupos. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Ciências da Natureza',
'Se, no futuro, a empresa resolver acasalar os filhotes de "lobos-gigantes" criados por edição gênica, espera-se que a prole seja parecida com',
'Texto (colossal.com): uma empresa fez 20 modificações em 14 genes do genoma de lobos modernos (com base no genoma de lobos-gigantes extintos) e, por transferência nuclear em óvulos de cachorras, gerou três filhotes com pelagem branca e espessa e maior tamanho corporal.',
'',
'["cachorros, pois os óvulos utilizados para gerar os filhotes é desta espécie.","lobos-gigantes, uma vez que cada geração tenderá a ser mais parecida com a espécie extinta.","lobos modernos selvagens, uma vez que as edições no genoma não são hereditárias.","lobos modernos modificados, pois os núcleos utilizados para gerar os filhotes são desta espécie.","nenhuma espécie conhecida, pois os efeitos da edição genética são imprevisíveis."]'::jsonb,
'D',
'Os filhotes carregam o núcleo (DNA editado) de lobo moderno modificado; ao acasalá-los, a prole tende a se parecer com esses lobos modernos modificados, pois é o genoma deles que é herdado. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Linguagens',
'Com base no texto (em inglês), a principal expectativa em relação ao telescópio James Webb estava associada a',
'Texto para as questões 58 e 59 — de wired.com (08/09/2024, adaptado) sobre a "tensão de Hubble": duas equipes rivais (lideradas por Adam Riess e Wendy Freedman) medem a constante de Hubble (H0) com resultados conflitantes, e esperava-se que o telescópio James Webb trouxesse a resposta.',
'',
'["esclarecer as divergências nas medições da constante de Hubble por meio de observações mais precisas.","substituir os métodos tradicionais por novas equações que descrevem a expansão do universo.","comprovar a superioridade das estimativas obtidas pela equipe de Freedman.","medir a distância entre galáxias utilizando parâmetros inéditos.","determinar se o universo tem como característica crescer de modo infinito."]'::jsonb,
'A',
'Esperava-se que o telescópio James Webb, com observações mais precisas, esclarecesse as divergências entre as medições da constante de Hubble. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Linguagens',
'De acordo com o texto (em inglês), a abordagem metodológica da equipe de Adam Riess',
'Texto para as questões 58 e 59 — de wired.com (08/09/2024, adaptado).',
'',
'["mantém as previsões do modelo consolidado pela ciência.","utiliza número limitado de simulações de computador para estimar a constante de Hubble.","obtém dados observacionais para confrontar previsões teóricas.","faz uso exclusivo de dados do Telescópio Espacial James Webb.","rejeita equações conhecidas e proposição de novas leis físicas."]'::jsonb,
'C',
'A equipe de Riess obtém dados observacionais (via Webb e outros) para confrontá-los com a previsão teórica, encontrando H0 cerca de 8% maior. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Ciências da Natureza',
'Considere um buraco negro de massa igual à massa solar (M_Sol = 2×10^30 kg) e raio igual ao raio de Schwarzschild (R_Sc = 2GM/c²). A razão entre a densidade volumétrica do buraco negro e a do Sol apresenta uma ordem de grandeza mais próxima de:',
'Note e adote: densidades uniformes; buraco negro e Sol esféricos; G = 10⁻¹⁰ N·m²/kg²; R_Sol = 10⁹ m; c = 3×10⁸ m/s.',
'',
'["10⁻²","10⁴","10¹⁰","10¹⁶","10²²"]'::jsonb,
'D',
'Como R_Sc ∝ M e a densidade ∝ M/R³ ∝ 1/M², para massa solar o raio de Schwarzschild é ~3 km (muito menor que R_Sol). A razão das densidades fica em ordem de grandeza próxima de 10¹⁶. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- QUESTÕES 61 a 90
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Ciências da Natureza',
'Em qual das situações a seguir a energia cinética do elétron ejetado no efeito fotoelétrico aumenta?',
'Em 1905, Einstein propôs que cada fóton tem energia E = h·f, e a intensidade da luz mede a quantidade de fótons. No efeito fotoelétrico, elétrons são ejetados quando os fótons têm energia maior que a função trabalho; a energia excedente vira energia cinética do elétron.',
'',
'["Aumentando a intensidade da luz incidente.","Usando uma superfície maior.","Aumentando a frequência da luz incidente.","Usando um material com função trabalho maior.","Diminuindo a energia do fóton incidente."]'::jsonb,
'C',
'No efeito fotoelétrico, a energia cinética do elétron ejetado é E_fóton − função trabalho; como E = h·f, aumentar a frequência da luz aumenta a energia cinética. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Ciências da Natureza',
'Essa reação de geração de oxigênio',
'Texto para as questões 62 e 63 — máscaras de oxigênio de aviões: o oxigênio é gerado pela decomposição de um sal como o clorato de sódio (NaClO3), que produz O2, cloreto de sódio (NaCl) e calor; a decomposição só se inicia quando um gatilho gera calor, e então se mantém autossuficiente até o consumo total do reagente.',
'',
'["é endotérmica, pois se inicia somente em altas temperaturas.","é uma reação de oxirredução na qual o cloro é oxidado e o oxigênio é reduzido.","deve possuir uma baixa energia de ativação para ser ativada nas baixas temperaturas das altitudes elevadas.","deve ser exotérmica o suficiente para manter a temperatura alta após iniciada.","é uma reação de oxirredução na qual o sódio é reduzido e o oxigênio é oxidado."]'::jsonb,
'D',
'A reação de decomposição do clorato precisa de um gatilho inicial, mas se mantém sozinha depois de iniciada: logo, é exotérmica o suficiente para manter a temperatura alta e sustentar a reação. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Ciências da Natureza',
'Calcule a massa de clorato de sódio mínima, em gramas, que deve ser utilizada por reservatório para gerar oxigênio suficiente por 15 minutos, considerando que a taxa de respiração média de oxigênio de um adulto é de 1,2 L/min ao nível do mar a 20 °C.',
'Note e adote: a quantidade de matéria de oxigênio consumida é independente da altitude; volume molar ao nível do mar a 20 °C = 24 L/mol; MM NaClO3 = 106 g/mol. (Decomposição: 2 NaClO3 → 2 NaCl + 3 O2.)',
'',
'["27","53","80","94","119"]'::jsonb,
'B',
'Em 15 min a 1,2 L/min consomem-se 18 L de O2; a 24 L/mol são 0,75 mol de O2. Pela estequiometria (2 NaClO3 → 3 O2), são 0,5 mol de NaClO3, que a 106 g/mol dá cerca de 53 g. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Ciências da Natureza',
'Com base no texto, as mutações no vírus da gripe aviária',
'Texto (cnnbrasil.com.br, adaptado): mudanças-chave na sequência genética do vírus seriam necessárias para iniciar uma pandemia; cada vez que o vírus infecta uma célula e novas unidades virais são produzidas, erros podem ocorrer, e ocasionalmente surge uma mudança que ajuda o vírus a infectar melhor as células.',
'',
'["ocorrem quando eles infectam espécies diferentes.","são induzidas unicamente pela resposta imune do organismo hospedeiro.","ocorrem quando o vírus se replica dentro das células infectadas.","são consequência direta do contato frequente com aves migratórias portadoras do vírus.","ocorrem apenas quando o vírus entra em contato com medicamentos antivirais."]'::jsonb,
'C',
'As mutações surgem dos erros de cópia que ocorrem quando o vírus se replica dentro das células infectadas; ocasionalmente, um erro favorece a infecção. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Ciências da Natureza',
'Indivíduos que não podem ser vacinados contra a dengue (imunodeficientes, HIV sintomático, gestantes e lactantes) podem ser beneficiados com a vacinação da população, pois',
'A vacina Qdenga (vírus atenuados) começou a ser oferecida pelo SUS em 2024; pessoas imunocompetentes adquirem imunidade sem adoecer.',
'',
'["pessoas não-vacinadas adquirem imunidade por contato com vacinados.","mosquitos transmissores da dengue morrem ao picar pessoas vacinadas.","vírus atenuados alteram o material genético dos vírus selvagens.","as chances de epidemias diminuem quando a cobertura vacinal é alta.","pessoas vacinadas liberam anticorpos contra o vírus no ambiente."]'::jsonb,
'D',
'Quem não pode se vacinar se beneficia da imunidade coletiva (de rebanho): com alta cobertura vacinal, a circulação do vírus cai e as chances de epidemia diminuem. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Linguagens',
'Segundo o texto (em inglês) sobre memória muscular, os experimentos demonstram que',
'Texto para as questões 66 e 67 — de jyu.fi/en/news (14/04/2025, adaptado): um estudo mostrou, pela primeira vez, que os músculos "lembram" o treino em nível proteico; usando proteômica e espectrometria de massas, analisaram mais de 3.000 proteínas musculares ao longo de treino, pausa e novo treino. [Imagem: ilustração de um braço musculoso com um cérebro.]',
'',
'["a prática de esportes ativa genes através da mudança do código genético.","as quantidades de proteínas musculares apresentam mudanças após a atividade física.","a epigenética refuta a hipótese da ação da memória muscular após treinos leves.","as proteínas relacionadas ao metabolismo aeróbico ativam mudanças irreversíveis.","os métodos da proteômica dificultam a caracterização das proteínas e suas interações."]'::jsonb,
'B',
'O estudo demonstra, pela proteômica, que as quantidades de proteínas musculares mudam em resposta à atividade física, sustentando a ideia de ''memória muscular'' em nível proteico. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Ciências da Natureza',
'A presença de outros sinais além do sinal de m/z 421,722, mesmo em uma amostra pura contendo apenas a espécie [C44H69NO12Ca]²⁺, deve-se',
'A espectrometria de massas determina a razão massa/carga (m/z). Uma amostra pura da espécie [C44H69NO12Ca]²⁺ (massa exata 843,444 g/mol) é detectada como m/z 421,722. [Imagem: espectro de massas com o pico principal em 421,722 e picos menores em 422,223; 422,725; etc.]',
'',
'["à presença de outros isótopos menos abundantes e mais pesados de átomos presentes na molécula.","às espécies com cargas unitárias que possuem massa maior.","à presença de outros isótopos mais abundantes e mais pesados de átomos presentes na molécula.","à carga do cálcio, que faz com que a espécie detectada tenha mais de uma massa molecular.","à presença de outros isótopos menos abundantes e mais leves de átomos presentes na molécula."]'::jsonb,
'A',
'Os picos adicionais, mesmo em amostra pura, vêm da distribuição isotópica: isótopos menos abundantes e mais pesados (como ¹³C) geram espécies de massa ligeiramente maior. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Linguagens',
'Sobre os receptores gustativos e sua distribuição corporal, o texto (em inglês) sugere que',
'Texto para as questões de 68 a 70 — New York Times (29/05/2024, adaptado): desmente o "mapa da língua" (gostos específicos por região) e explica que receptores gustativos existem também no trato gastrointestinal, fígado, pâncreas, cérebro, músculos, tireoide e pulmões, colaborando com o cérebro.',
'',
'["certas áreas da língua identificam gostos específicos, como doce na ponta e azedo no fundo.","o comportamento alimentar é moldado por padrões fixados na infância.","a percepção gustativa reforça o prazer estético associado aos hábitos nutricionais.","a detecção de sabores envolve rede integrada de órgãos que colaboram com o sistema nervoso.","a função dos sensores extraorais restringe-se à regulação da glicemia."]'::jsonb,
'D',
'O texto mostra que receptores gustativos existem em vários órgãos (intestino, fígado, pâncreas, cérebro etc.), indicando que a detecção de sabores envolve uma rede integrada que colabora com o sistema nervoso. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Linguagens',
'O texto informa que, de acordo com Paul Breslin, a interpretação do estudo de Hanig foi equivocada, porque',
'Texto para as questões de 68 a 70 — New York Times (29/05/2024, adaptado): o diagrama originou-se de um estudo de David Hanig (1901), mas ele media a sensibilidade (limiar) de diferentes áreas da língua, não defendia a segregação dos sabores.',
'',
'["a representação gráfica dos resultados foi elaborada décadas depois sem base científica.","o autor original investigou limiares de sensibilidade, sem defender a exclusividade de sabores em regiões da língua.","o foco da pesquisa foi o comportamento alimentar em diferentes culturas.","o objetivo central concentrou-se na classificação bioquímica dos receptores gustativos.","a análise dos dados priorizou a resposta cerebral em vez de aspectos periféricos."]'::jsonb,
'B',
'Segundo Breslin, Hanig investigava os limiares de sensibilidade das diferentes áreas da língua, não a exclusividade de sabores por região; daí a interpretação equivocada do ''mapa da língua''. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Ciências da Natureza',
'Assinale a alternativa que apresenta corretamente a informação descrita no processo de percepção do sabor (nós sentimos o sabor dos alimentos com o cérebro).',
'A percepção consciente do sabor só acontece quando sinais específicos chegam ao cérebro, como ocorre em todos os sentidos do sistema sensorial.',
'',
'["Os componentes químicos dos alimentos interagem com proteínas receptoras nas células gustativas, e um potencial de ação é transmitido ao cérebro.","Os componentes químicos dos alimentos são convertidos em uma corrente elétrica que estimula o músculo da língua.","No processo de transdução sensorial do paladar, os componentes químicos dos alimentos são convertidos em um impulso hormonal que ativa as glândulas salivares.","Os componentes químicos dos alimentos ativam, diretamente, os neurônios responsáveis por transmitir os sinais gustativos ao cérebro.","A primeira etapa da transdução de sinal no paladar ocorre quando os receptores gustativos são ativados por hormônios digestivos."]'::jsonb,
'A',
'A transdução gustativa começa com os componentes químicos interagindo com proteínas receptoras nas células gustativas, gerando um potencial de ação transmitido ao cérebro. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Ciências da Natureza',
'Suponha que, em cada método de cozimento, cada parte do ovo (clara e gema) seja aquecida de 20 °C até as respectivas temperaturas finais da figura. A quantidade de calor total recebida Qn pelo conjunto gema + clara (n = 1, 2, 3, 4), em ordem crescente, é:',
'Texto sobre cozimento de ovos (Di Lorenzo et al., Commun Eng, 2025). [Imagem: figura com as temperaturas finais de clara e gema em quatro métodos — (1) 100 °C/100 °C; (2) 97 °C/82 °C; (3) 65 °C/65 °C; (4) 85 °C/67 °C.] Note e adote: calor específico — clara 3,8 J/g·K, gema 3,1 J/g·K; massa do ovo = 50 g; massa da clara igual à da gema.',
'',
'["Q4 < Q1 < Q3 < Q2","Q3 < Q4 < Q2 < Q1","Q1 < Q3 < Q2 < Q4","Q3 < Q2 < Q4 < Q1","Q4 < Q3 < Q1 < Q2"]'::jsonb,
'B',
'O calor é Q = m·c·ΔT para clara e gema somadas. Calculando os ΔT de cada método e somando (clara 3,8 e gema 3,1 J/g·K, 25 g cada), a ordem crescente é Q3 < Q4 < Q2 < Q1. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Ciências da Natureza',
'Assumindo desprezível a velocidade do jato quando a água começa a ser despejada no bico do bule, para uma altura H = 8 cm (lâmina de água no filtro), qual a altura mínima D de despejo para que a velocidade do jato, ao atingir a água, seja de pelo menos 2 m/s?',
'Texto sobre o preparo de café filtrado (Park et al., Phys. Fluids, 2025): velocidades do jato acima de 2 m/s levam a melhor mistura. [Imagem: esquema com H (altura da lâmina de água) e D (altura de despejo), ambas medidas a partir da base do filtro.] Note e adote: densidade da água d = 1000 kg/m³; g = 10 m/s².',
'',
'["4 cm","8,2 cm","10 cm","18 cm","28 cm"]'::jsonb,
'E',
'A água cai de uma altura (D − H) e, por Torricelli, v = √(2g·(D−H)). Para v ≥ 2 m/s com g = 10 e H = 8 cm, (D−H) ≥ 0,2 m = 20 cm, logo D ≥ 28 cm. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Ciências da Natureza',
'Com base na definição de equilíbrio mecânico estável, quais imagens ilustram situações em que a colher está em equilíbrio estável em relação a pequenos deslocamentos nas direções indicadas pelas setas?',
'Definição: no equilíbrio estável, após pequeno deslocamento, o corpo tende a retornar à posição original. [Imagem: colher em quatro situações de equilíbrio sobre uma xícara, com setas indicando as direções dos deslocamentos.]',
'',
'["1 e 2","2 e 4","1 e 3","3 e 4","2 e 3"]'::jsonb,
'E',
'A colher está em equilíbrio estável nas situações em que, após pequeno deslocamento, seu centro de gravidade tende a subir e ela retorna à posição original — o que ocorre nas imagens 2 e 3. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Matemática',
'Com base nos gráficos das funções apresentados na imagem, é correto afirmar que:',
'[Imagem: plano cartesiano com os gráficos das funções f, g, h, m, n e w, relacionadas entre si por transformações (translações, reflexões e dilatações).]',
'',
'["w(x) = 2h(x) e n(x) = −f(x − 4)","h(x) = f(x) − 2 e m(x) = f(x − 3)","w(x) = 2f(x) e g(x) = f(x/2)","n(x) = −m(x + 1) e g(x) = f(2x)","m(x) = f(x + 3) e h(x) = f(x) + 2"]'::jsonb,
'D',
'Analisando as transformações dos gráficos, n(x) = −m(x + 1) (reflexão e translação) e g(x) = f(2x) (compressão horizontal) são as relações corretas. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Ciências da Natureza',
'Uma criança deixa uma bolinha cair em direção ao chão, onde ela quica e retorna praticamente à altura de origem. Qual dos gráficos melhor representa como a altura da bolinha varia com o tempo?',
'[Imagem: cinco alternativas de gráfico altura × tempo.]',
'',
'["Gráfico A (altura em V, decresce e cresce em linha reta)","Gráfico B (altura em U suave)","Gráfico C (parábola invertida com queda e retorno curvos até o chão)","Gráfico D (curva com decaimento acentuado e retorno)","Gráfico E (arco de parábola subindo e descendo)"]'::jsonb,
'C',
'Na queda livre a altura decresce segundo uma parábola (não uma reta), chegando a zero no quique e voltando a subir em parábola. O gráfico C representa esse comportamento curvo com retorno ao chão. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Ciências da Natureza',
'Considerando os valores de α registrados em 8000 Hz e 500 Hz para esse paciente, qual a razão entre as intensidades das ondas sonoras emitidas pelo audiômetro nessas duas frequências?',
'Texto para as questões 76 e 77 — audiometria tonal. [Imagem: gráfico do nível de intensidade sonora α (dB, aumentando de cima para baixo) por frequência f (Hz).] Note e adote: α(f) = 10·log10(I(f)/I0), onde I0 é o limiar da audição.',
'',
'["10²","10³","10⁴","10⁵","10⁶"]'::jsonb,
'B',
'A diferença de α entre 8000 Hz e 500 Hz lida no gráfico é de 30 dB. Como α = 10·log10(I/I0), 30 dB correspondem a uma razão de intensidades de 10³. Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Ciências da Natureza',
'Em qual comprimento de onda sonora ocorre a melhor resposta auditiva do paciente nesse exame?',
'Texto para as questões 76 e 77 — audiometria tonal (quanto menor α(f), melhor a resposta auditiva). Note e adote: velocidade do som no ar vs = 340 m/s.',
'',
'["1,36 cm","4,25 cm","23,5 cm","34 cm","80 cm"]'::jsonb,
'D',
'A melhor resposta auditiva é na frequência de menor α (cerca de 1000 Hz). Com v = 340 m/s, λ = v/f = 340/1000 = 0,34 m = 34 cm. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Ciências da Natureza',
'A bióloga Lynn Margulis propôs, em 1967, que algumas organelas das células eucarióticas resultariam de eventos de endossimbiose. Entre as evidências de endossimbiose, podemos citar:',
'',
'',
'["As membranas duplas dos núcleos.","Os ribossomos aderidos ao retículo endoplasmático.","A parede celular das células vegetais.","O formato do complexo de Golgi.","O genoma circular das mitocôndrias."]'::jsonb,
'E',
'O genoma circular das mitocôndrias, semelhante ao bacteriano, é uma das evidências clássicas da origem endossimbiótica dessas organelas. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Linguagens',
'Conforme o texto (em inglês), a experiência conduzida por David Rhoades, na floresta experimental da Universidade de Washington, tornou-se marcante para a botânica, por revelar a',
'Texto para as questões de 79 a 81 — New Yorker (12/06/2024, adaptado), sobre comunicação entre plantas: Rhoades descobriu que árvores atacadas por lagartas mudavam a química de suas folhas, e que árvores ainda não atacadas também mudavam, como se tivessem recebido um aviso.',
'',
'["dependência das árvores de inimigos naturais para a manutenção do equilíbrio das florestas.","alteração da composição das folhas, capaz de comprometer a sobrevivência de insetos herbívoros.","variabilidade das lagartas como fator decisivo para a resiliência dos ecossistemas.","influência determinante da fertilidade do solo na recuperação da vegetação.","oscilação natural das populações de pragas como causa da regeneração florestal."]'::jsonb,
'B',
'A experiência de Rhoades foi marcante por revelar que as árvores alteram a composição química das folhas, comprometendo a sobrevivência dos insetos herbívoros (as lagartas). Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Linguagens',
'O caso da vinha chilena apresentado no texto (em inglês) suscita questionamentos científicos quanto',
'Texto para as questões de 79 a 81 — New Yorker (12/06/2024, adaptado): uma vinha camaleônica das florestas do Chile imita a forma e a cor de plantas vizinhas por um mecanismo ainda não compreendido.',
'',
'["à capacidade de adaptar seu ciclo reprodutivo às condições ecológicas.","à dependência de polinizadores para manter sua plasticidade fenotípica.","à influência da altitude na coloração e textura das folhas imitadas.","ao papel da simbiose com fungos na alteração morfológica.","ao modo como o vegetal reproduz características visuais de espécies vizinhas."]'::jsonb,
'E',
'O caso da vinha chilena levanta a questão não resolvida de como o vegetal reproduz as características visuais (forma e cor) de espécies vizinhas. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Ciências da Natureza',
'Considerando os processos de sinalização entre plantas (emissor e receptor), por via aérea e por via do solo, é correto afirmar:',
'[Imagem: esquema de uma planta emissora e uma receptora, com moléculas transportadas por via aérea e por via do solo (facilitada pela água).]',
'',
'["Na via aérea, os compostos gerados pelo emissor podem ser polares para que possuam uma volatilidade elevada.","Na comunicação pelo solo, as moléculas devem ser necessariamente apolares, para que possam ser solubilizadas no meio, atingindo o receptor.","As moléculas transportadas por via aérea seriam facilmente solubilizadas no solo por conta da sua baixa polaridade.","As moléculas polares geradas pelas folhas são facilmente transportadas pelo solo por conta de suas relativas baixas solubilidades.","As moléculas responsáveis pela comunicação por via aérea devem possuir alta volatilidade e baixa polaridade."]'::jsonb,
'E',
'Na via aérea, as moléculas precisam ser voláteis para se dispersarem no ar; moléculas apolares (de baixa polaridade) tendem a ser mais voláteis. Logo, devem ter alta volatilidade e baixa polaridade. Correta a alternativa E.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Ciências da Natureza',
'Em comparação com fertilizantes tradicionais de dissolução rápida, os fertilizantes vítreos',
'Texto para as questões 82 e 83 — pesquisadores da USP desenvolveram um "vidro fertilizante" (fósforo, silício e potássio) solúvel em água e no solo, que libera nutrientes de forma controlada e prolongada, diferente dos fertilizantes convencionais, lixiviados pela chuva.',
'',
'["poluem mais os lençóis freáticos por liberar continuamente fósforo que não é absorvido pelas plantas e é tóxico para os seres humanos.","não são eficazes, pois vidros são insolúveis e demoram mais de mil anos para serem degradados no solo.","poluem menos os lençóis freáticos, pois a menor velocidade de liberação dos nutrientes permite que as plantas os absorvam antes de sofrer lixiviação.","devem ser mais eficazes, pois liberam uma grande quantidade de nutrientes rapidamente, facilitando a absorção pelas plantas.","devem possuir maior velocidade de liberação para que as plantas absorvam os nutrientes antes que ocorra a lixiviação."]'::jsonb,
'C',
'Por liberarem nutrientes de forma lenta e controlada, os fertilizantes vítreos permitem que as plantas os absorvam antes da lixiviação, poluindo menos os lençóis freáticos. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Ciências da Natureza',
'A porcentagem em massa de fosfato (PO4³⁻) numa amostra do vidro fertilizante é de 19%. A velocidade de dissolução é constante e igual a 7,3 mg/h. Adicionou-se excesso de vidro a 1 L de água. A concentração de fosfato, em mol/L, obtida após 100 h de experimento foi',
'Note e adote: massa molar do fosfato = 95 g/mol.',
'',
'["1,46 × 10⁻³","7,68 × 10⁻³","139 × 10⁻³","365 × 10⁻³","730 × 10⁻³"]'::jsonb,
'A',
'Em 100 h dissolvem-se 730 mg de vidro; 19% são fosfato = 138,7 mg. Em massa molar 95 g/mol e 1 L, a concentração é ~1,46×10⁻³ mol/L. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Ciências da Natureza',
'A figura corresponde a células estomáticas da folha de uma planta de mata atlântica em dois momentos distintos. É correto afirmar que a seta Z representa',
'[Imagem: duas células-guarda do estômato em dois estados; a seta Z indica a transição de um estado (menos túrgido, estômato fechado) para outro (mais túrgido, estômato aberto).]',
'',
'["a passagem de uma condição de escuro (noite) para alta luminosidade (dia).","a diminuição da concentração de solutos na célula estomática.","o aumento da umidade relativa do ar ao longo do dia.","a intensificação da concentração de água no solo em que a planta se encontra.","o aumento do nível de turgescência (turgor) da célula estomática."]'::jsonb,
'B',
'Conforme o gabarito oficial da banca, a seta Z está associada à alternativa B. (Observação: a questão trata da mudança de turgor das células-guarda do estômato.) Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Ciências da Natureza',
'A figura representa nichos ecológicos de duas espécies que utilizam um dado recurso ambiental em comum e de forma semelhante. É correto afirmar que a área N representa',
'[Imagem: diagrama de dois círculos (nicho ecológico da espécie A e da espécie B) com uma região de interseção hachurada identificada como N.]',
'',
'["uma região de sobreposição de nichos, na qual pode ocorrer competição intraespecífica e interespecífica.","uma área fictícia, já que, por definição, nicho é algo exclusivo de uma espécie e não pode se sobrepor a outro nicho.","o conceito de habitat, que corresponde ao local em que duas ou mais espécies distintas coabitam.","o próprio recurso compartilhado pelas duas espécies de forma simétrica e equilibrada.","o surgimento de um outro nicho, no qual os organismos ali presentes podem evoluir, originando uma nova espécie."]'::jsonb,
'A',
'A área N é a interseção dos dois nichos: uma zona de sobreposição em que pode haver competição tanto intraespecífica quanto interespecífica pelo recurso comum. Correta a alternativa A.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Ciências da Natureza',
'Sobre o sistema respiratório das minhocas (anelídeos), dos besouros (insetos) e dos bichos-de-conta (crustáceos), assinale a alternativa correta.',
'Trecho de "A visão das plantas" (2021), de Djaimilia Pereira de Almeida, que cita minhocas, besouros e bichos-de-conta (tatuzinhos de jardim) no jardim de Celestino.',
'',
'["Os besouros e os bichos-de-conta apresentam respiração traqueal, sendo a umidade do solo importante em ambos os casos.","As minhocas apresentam respiração cutânea e os besouros apresentam respiração traqueal, sendo a umidade do solo importante em ambos os casos.","Os besouros apresentam respiração traqueal e os bichos-de-conta apresentam respiração pulmonar, e a umidade do solo não é importante na respiração destes animais.","As minhocas, os besouros e os bichos-de-conta apresentam respiração branquial, sendo a umidade do solo importante na respiração dos três animais.","As minhocas, os besouros e os bichos-de-conta apresentam respiração pulmonar, e a umidade do solo não é importante na respiração dos três animais."]'::jsonb,
'B',
'As minhocas (anelídeos) têm respiração cutânea e os besouros (insetos) têm respiração traqueal; em ambos os casos a umidade do solo é importante (para manter a pele úmida e para as trocas nos espiráculos). Correta a alternativa B.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Linguagens',
'Considerando o trecho citado de "A visão das plantas", depreende-se que o "olhar sem julgamento"',
'Trecho de "A visão das plantas", de Djaimilia Pereira de Almeida: as plantas seguiam o jardineiro Celestino com um "olhar sem julgamento", alheias ao seu cuidado e indiferentes a quem as amparava.',
'',
'["expressa a piedade do jardim diante da condição de Celestino, que se encontra próximo da morte.","expressa o terror das plantas por serem cuidadas por um criminoso que carrega atos extremos de violência praticados em seu passado.","evidencia que a natureza está alheia às ações e sentimentos humanos, existindo à revelia da humanidade.","é a retribuição ao cuidado cotidiano que as plantas recebem, reconhecendo que Celestino se redimiu de seu passado.","evidencia a integração do jardineiro com o jardim, na medida em que dependem naturalmente um do outro para sobreviverem."]'::jsonb,
'C',
'O ''olhar sem julgamento'' das plantas evidencia que a natureza é alheia às ações e sentimentos humanos, existindo à revelia da humanidade e indiferente à história de Celestino. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Ciências Humanas',
'De acordo com o excerto sobre o fim do tráfico internacional de escravizados, é correto afirmar:',
'Excerto de Lilia M. Schwarcz e Flávio Gomes ("Apresentação", in "Dicionário da escravidão e liberdade". São Paulo: Companhia das Letras, 2018, adaptado): entre 1810 e 1850, debateu-se o fim do tráfico internacional (daí a expressão "para inglês ver"), extinto em 1850; o fim do tráfico não significou a abolição, que durou mais quase quarenta anos.',
'',
'["O fim do tráfico internacional de escravizados em 1850 implicou a substituição da mão de obra africana pela indígena.","Os importadores de escravizados foram duramente prejudicados com a promulgação da lei Feijó de 1831.","Os debates parlamentares entre os anos 1810 e 1850 defendiam formas de indenização aos proprietários.","O fim do tráfico internacional após 1850 favoreceu o tráfico interprovincial.","Os apelos internacionais pela abolição do tráfico revelavam os interesses de imigrantes europeus."]'::jsonb,
'D',
'Com o fim do tráfico internacional em 1850, a demanda por mão de obra escravizada passou a ser suprida internamente, favorecendo o tráfico interprovincial. Correta a alternativa D.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Linguagens',
'No excerto de "Canção para ninar menino grande", o uso do mesmo sobrenome ("Paranhos") por uma família branca e uma família negra indica',
'Excerto de Conceição Evaristo ("Canção para ninar menino grande"): a família negra de Neide conservava o sobrenome "Paranhos", herdado dos tempos da escravatura, como enfrentamento aos "Paranhos" brancos e velada reivindicação de uma fortuna familiar que em parte era de pertença dos negros.',
'',
'["a ascensão social dos ''Paranhos'' negros após o fim da escravidão, alcançada por programas governamentais, e a decadência dos ''Paranhos'' brancos trazida pela crise do café.","o racismo expresso nas instituições políticas monárquicas e a manutenção da dominação socioeconômica dos ''Paranhos'' negros pelos ''Paranhos'' brancos.","a persistência de um vínculo desigual entre as famílias, oriundo do período da escravidão, e um esforço dos ''Paranhos'' negros de afirmar sua participação no enriquecimento dos ''Paranhos'' brancos.","o esforço de construção de uma ordem social harmoniosa, desenvolvida durante a Primeira República, e a persistência de ressentimentos e rivalidades pessoais entre os ''Paranhos''.","a dependência financeira dos ''Paranhos'' negros em relação aos ''Paranhos'' brancos e a valorização da mistura racial como característica de formação do povo brasileiro."]'::jsonb,
'C',
'O uso do mesmo sobrenome revela a persistência de um vínculo desigual herdado da escravidão e o esforço dos ''Paranhos'' negros de afirmar sua participação no enriquecimento dos ''Paranhos'' brancos. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Linguagens',
'No romance de Conceição Evaristo, Fio Jasmim é o elo que agrega as várias personagens femininas que se relacionam com ele. De acordo com essa consideração, Fio Jasmim',
'Excerto de Conceição Evaristo ("Canção para ninar menino grande"): Fio Jasmim, maquinista, reflete sobre não gostar de pronunciar o nome da esposa ("a de casa é santa") para outras mulheres e sobre a possibilidade de uma conquista.',
'',
'["atende a uma forma de masculinidade que rompe com os estereótipos, expressando uma identidade inovadora e desvinculada das expectativas sociais.","relaciona-se com as personagens femininas de maneira igualitária e com respeito mútuo, que não correspondem às dinâmicas de poder desiguais.","reproduz uma masculinidade estereotipada por meio de atitudes que, em larga medida, atendem às expectativas sociais e culturais, reproduzindo estereótipos do gênero.","resiste a expectativas internas e externas, o que subverte um esperado comportamento masculino.","sente culpa e arrependimento por seu comportamento com mulheres, apesar de reforçar ideais de virilidade e dominação do estereótipo da masculinidade."]'::jsonb,
'C',
'Fio Jasmim reproduz uma masculinidade estereotipada: suas atitudes (a esposa ''santa'', o interesse por conquistas) atendem, em larga medida, às expectativas sociais e culturais do gênero. Correta a alternativa C.'
from public.exams where slug = 'usp-2026-v1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
