-- Seed: UERJ 2025 - Vestibular Estadual (2o Exame de Qualificacao - 08/09/2024)
-- Universidade do Estado do Rio de Janeiro - 60 questoes objetivas (A-D).
-- Secao "Texto Base" cadastrada como materia "Literatura" (conforme solicitado).
-- Lingua Estrangeira (23-27): usada a versao de INGLES.
-- Gabarito oficial:
--   1-A,2-B,3-D,4-C,5-D,6-B,7-A,8-C,
--   9-D,10-D,11-C,12-B,13-B,14-A,15-B,16-A,17-A,18-B,19-B,20-C,21-B,22-B,
--   23-D,24-C,25-B,26-C,27-A (Ingles),
--   28-C,29-D,30-A,31-D,32-A,33-C,34-B,
--   35-B,36-B,37-A,38-ANULADA,39-A,40-D,41-C,42-A,43-B,44-D,45-D,46-C,
--   47-C,48-B,49-C,50-A,51-C,52-D,53-B,54-A,55-D,56-A,57-D,58-B,59-B,60-A
-- Observacao: a questao 38 foi ANULADA pela banca; mantida com placeholder.
-- Questoes com imagem (graficos/mapas/charges/fotos): o recurso visual e descrito
-- no campo de apoio, pois os arquivos de imagem nao foram fornecidos.

insert into public.exams (slug, title, source, year)
values ('uerj-2025-eq2', 'UERJ 2025 - Vestibular Estadual (2º Exame de Qualificação)', 'uerj', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LITERATURA / TEXTO BASE (Questoes 1 a 8)
-- Texto de apoio: "Por que o pensamento linear pode ser um problema
-- na sua vida", de Kit Yates (adaptado de bbc.com).
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Literatura',
'Na cidade do Rio de Janeiro, a população já experimentou sensação térmica de 55 °C. Com base nos dados do texto, essa mesma temperatura, em graus Fahrenheit, corresponde a:',
'TEXTO BASE — "Por que o pensamento linear pode ser um problema na sua vida" (Kit Yates, adaptado de bbc.com).
Para converter de Celsius para Fahrenheit, você precisa multiplicar a temperatura em Celsius por 1,8 e adicionar 32.',
'',
'["131","158","212","273"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Literatura',
'Na imagem, a divisão da História como conhecimento sobre experiências de sociedades e povos está representada de maneira linear, ratificando a afirmação do fragmento do texto. Essa divisão da História é derivada da seguinte concepção:',
'"Mas é aí que está o problema: estamos tão familiarizados com o conceito de linearidade que impomos nossa referência de visão linear sobre o que observamos no mundo real." (l. 15-16)
[Imagem: linha do tempo "Divisão da História" dividida linearmente em 1-Pré-história, 2-Idade Antiga, 3-Idade Média, 4-Idade Moderna e 5-Idade Contemporânea. Adaptado de mundoeducacao.uol.com.br.]',
'',
'["antropocêntrica","eurocêntrica","materialista","naturalista"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Literatura',
'Com o emprego do verbo parecer, na primeira frase do trecho, o autor faz uso de modalização. Neste caso, a modalização produz o efeito de:',
'"E parece que a melhor explicação para a nossa dependência excessiva da linearidade vem da sala de aula. Pesquisas mostram que nossa propensão para assumir a linearidade surge muito antes de deixarmos a escola." (l. 23-25)',
'',
'["expor uma opinião contrária","recusar um indício duvidoso","apresentar um saber coletivo","evitar uma afirmação categórica"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Literatura',
'Um exemplo de processo que não obedece a relações lineares simples é observado na fermentação alcoólica. Na ausência de oxigênio, as leveduras envolvidas nesse processo, durante uma fase denominada log, crescem exponencialmente, sofrendo reações químicas catabólicas. Nessa fase, tais reações ocorrem no seguinte componente das células de leveduras:',
'',
'',
'["núcleo","lisossoma","citoplasma","mitocôndria"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Literatura',
'Com base na análise da tabela, o mês M em que a dívida desse cartão atinge juros de 100% é:',
'Em 2024, o governo brasileiro limitou os juros do cartão de crédito, cobrados quando não se paga o valor integral de uma fatura. Com o limite estabelecido, não se pode ultrapassar a cobrança de 100% de juros sobre a dívida do cartão. Observe na tabela os fatores F que, aplicados à dívida de um cartão de crédito, determinam o valor da dívida total até o mês M.
M (meses):  1    2    3    4    5    6    7    8    9    10   11   12
F (fatores): 1,15 1,32 1,52 1,75 2,01 2,31 2,66 3,06 3,52 4,05 4,65 5,35',
'',
'["8","7","6","5"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Literatura',
'Ao longo dos parágrafos, o autor analisa vários eventos não lineares, para, na conclusão do texto, apresentar sua tese central, citada acima. Esse modo de encaminhar a argumentação é denominado:',
'"Vivemos em um mundo não linear, mas estamos tão acostumados a pensar em linhas retas que muitas vezes nem percebemos." (l. 34-35)',
'',
'["alusivo","indutivo","dialético","dedutivo"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Literatura',
'As distâncias, em linha reta, entre Paris e as cidades de Bordeaux e Toulouse são de 500 e 590 quilômetros, respectivamente. Com base na análise dos mapas, observa-se que o pensamento linear é inadequado para calcular o tempo de viagem de trem entre a capital francesa e essas duas cidades. Uma característica das duas cidades que explica essa inadequação é:',
'A França possui um sistema ferroviário com cerca de 30 000 quilômetros de extensão, dos quais aproximadamente 2 700 quilômetros são linhas de alta velocidade. Os mapas referem-se ao transporte de trens na França em 2017.
[Imagem: Mapa 1 — linhas de trem de alta velocidade (em azul); Mapa 2 — tempo de viagem (de 1h a 6h) variável conforme o tipo de linha férrea, destacando Paris, Bordeaux e Toulouse. Adaptado de sncf-reseau.com e usinenouvelle.com.]',
'',
'["posição relativa na rede técnica","relevância política na escala nacional","localização absoluta na topografia plana","importância industrial na hierarquia urbana"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Literatura',
'Considerando os dados, a constante cinética da reação, em L/mol.s, corresponde a:',
'A reação química elementar de decomposição do dióxido de nitrogênio, representada a seguir, é um exemplo de modelo cinético não linear: 2 NO2 (g) → 2 NO (g) + O2 (g).
[Imagem: gráfico da velocidade da reação (mol/L.s) em função da concentração de NO2 (mol/L), com curva não linear passando por velocidade 0,08 em concentração 0,4.]',
'',
'["0,1","0,3","0,5","0,7"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- LINGUAGENS (Questoes 9 a 22)
-- Referem-se ao livro QUINCAS BORBA, de Machado de Assis
-- (Rio de Janeiro: EdUERJ, 2024; 1a ed. 1891).
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Linguagens',
'No primeiro parágrafo do romance, o personagem manifesta uma percepção do mundo que revela uma postura de:',
'As questões 09 a 22 referem-se ao livro QUINCAS BORBA, de Machado de Assis (Rio de Janeiro: EdUERJ, 2024), publicado pela primeira vez em 1891.
Capítulo I
"Rubião fitava a enseada – eram oito horas da manhã. Quem o visse, com os polegares metidos no cordão do chambre, à janela de uma grande casa de Botafogo, cuidaria que ele admirava aquele pedaço de água quieta; mas, em verdade, vos digo que pensava em outra coisa. Cotejava o passado com o presente. Que era, há um ano? Professor. Que é agora? Capitalista. Olha para si, para as chinelas (umas chinelas de Túnis, que lhe deu recente amigo, Cristiano Palha), para a casa, para o jardim, para a enseada, para os morros e para o céu; e tudo, desde as chinelas até o céu, tudo entra na mesma sensação de propriedade."',
'',
'["idealização da vida urbana","interesse pelo convívio íntimo","busca de respeito profissional","fascínio pela ostentação pessoal"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Linguagens',
'Em Quincas Borba, os personagens se movimentam no contexto de emergência do capitalismo no Brasil. Em relação a esse contexto, o protagonista Rubião pode ser melhor identificado pela seguinte figura de linguagem:',
'',
'',
'["antítese","hipérbole","eufemismo","metonímia"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Linguagens',
'O trecho acima sustenta a filosofia do Humanitismo, defendida por Quincas Borba. Essa filosofia faz caricatura dos princípios deterministas do século XIX. Com base nessa filosofia, os indivíduos podem se sentir autorizados à seguinte prática:',
'Capítulo VI
"– (...) Ao vencido, ódio ou compaixão; ao vencedor, as batatas.
– Mas a opinião do exterminado?
– Não há exterminado. Desaparece o fenômeno; a substância é a mesma. Nunca viste ferver água? Hás de lembrar-te que as bolhas fazem-se e desfazem-se de contínuo, e tudo fica na mesma água. Os indivíduos são essas bolhas transitórias.
– Bem; a opinião da bolha...
– Bolha não tem opinião. Aparentemente, há nada mais contristador que uma dessas terríveis pestes que devastam um ponto do globo? E, todavia, esse suposto mal é um benefício, não só porque elimina os organismos fracos, incapazes de resistência, como porque dá lugar à observação, à descoberta da droga curativa."',
'',
'["valorizar o luxo","neutralizar o vício","defender a guerra","pregar a tolerância"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Linguagens',
'A expressão suportar com filosofia denota o seguinte sentimento:',
'Capítulo XI
"Faleceu ontem o Sr. Joaquim Borba dos Santos, tendo suportado a moléstia com singular filosofia. Era homem de muito saber, e cansava-se em batalhar contra esse pessimismo amarelo e enfezado que ainda nos há de chegar aqui um dia; é a moléstia do século. A última palavra dele foi que a dor era uma ilusão (...)."',
'',
'["espanto","aceitação","animosidade","constrangimento"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Linguagens',
'O trecho acima se refere à relação entre Cristiano Palha e sua esposa, Sofia Palha. A necessidade do marido de "mostrar aos outros as suas venturas particulares" configura-se como uma contradição. A contradição se forma porque:',
'Capítulo XXXV
"Ia muita vez ao teatro sem gostar dele, e a bailes, em que se divertia um pouco – mas ia menos por si que para aparecer com os olhos da mulher, os olhos e os seios. Tinha essa vaidade singular; decotava a mulher sempre que podia, e até onde não podia, para mostrar aos outros as suas venturas particulares."',
'',
'["a vontade da esposa é reprimida","a intimidade do casal é exposta","a intenção do marido sobressai","o amor da relação desaparece"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Linguagens',
'Em sua produção literária, Machado de Assis denuncia a violência da sociedade escravagista. Na cena descrita acima, um elemento que ressalta essa violência é uma diferença existente entre os dois homens negros. O que permite a ação do outro preto mencionado no texto é a sua:',
'Capítulo XLVII
"Na esquina da Rua dos Ourives deteve-o um ajuntamento de pessoas, e um préstito singular. Um homem, judicialmente trajado, lia em voz alta um papel, a sentença. Havia mais o juiz, um padre, soldados, curiosos. Mas, as principais figuras eram dois pretos. Um deles, mediano, magro, tinha as mãos atadas, os olhos baixos, a cor fula, e levava uma corda enlaçada no pescoço; as pontas do baraço iam nas mãos de outro preto. (...) Eis o réu que sobe à forca. Passou pela turba um frêmito. O carrasco pôs mãos à obra."',
'',
'["função","origem","instrução","personalidade"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Linguagens',
'Com base na trajetória de Cristiano Palha, essa descrição enfatiza que o perfil desse personagem se constitui a partir de:',
'Capítulo LV
"A última hipótese trouxe à fisionomia do Palha um elemento novo, que não sei como chame. Desapontamento? (...) Vá desapontamento. Misturem-lhe o pesar da separação, não esqueçam a cólera que primeiro trovejou surdamente, e não faltará quem ache que a alma deste homem é uma colcha de retalhos. Pode ser; moralmente as colchas inteiriças são tão raras!"
No trecho, observa-se a reação de Cristiano Palha à decisão de Rubião de voltar para Minas, o que faz o narrador se referir à sua alma como uma colcha de retalhos.',
'',
'["emoções sustentadas pelo impulso","atitudes pautadas pelo oportunismo","posicionamentos articulados pelo idealismo","princípios estabelecidos pelo conhecimento"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Linguagens',
'O narrador do romance, em diversos momentos, explicita que está escrevendo uma obra de ficção, o que representa um processo literário chamado metaficção. Uma passagem deste capítulo que evidencia esse processo é:',
'Capítulo LXIX',
'',
'["É de saber que tinham decorrido oito meses desde o princípio do capítulo anterior, e muita coisa estava mudada.","Rubião estremeceu; a suposição de que naquele Quincas Borba podia estar a alma do outro nunca se lhe varreu inteiramente do cérebro.","Atrás dos motivos de recusa, vieram outros contrários. E se o negócio rendesse? Se realmente lhe multiplicasse o que tinha?","Não se admirava de nada. Se um dia acordasse imperador, só se admiraria da demora do Ministério em vir cumprimentá-lo."]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Linguagens',
'"Conversar com os seus botões" é uma metáfora gasta, um clichê. No trecho, essa metáfora é revitalizada pois passa por um processo de:',
'Capítulo CXLII
"A expressão ''Conversar com os seus botões'', parecendo simples metáfora, é frase de sentido real e direto. Os botões operam sincronicamente conosco; formam uma espécie de senado, cômodo e barato, que vota sempre as nossas moções."',
'',
'["ampliação","oposição","restrição","injunção"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Linguagens',
'Com o comentário acima, o narrador sintetiza um conflito presente em todo o romance. Esse conflito se estabelece entre os seguintes aspectos:',
'Capítulo CXLVIII
"Uma só pessoa, o Dr. Camacho, posto julgasse que os bigodes e a pera ficavam muito bem ao amigo, ponderou que era de bom aviso não alterar o rosto, verdadeiro espelho da alma, cuja firmeza e constância devia reproduzir."',
'',
'["ordem e desordem","essência e aparência","juventude e maturidade","individualismo e solidariedade"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Linguagens',
'O narrador, em vários capítulos, emprega a metáfora do abismo, antecipando o seguinte problema sofrido por Rubião:',
'Capítulo CLV
"Espalhou-se a nova mania de Rubião. Alguns, não o encontrando nas horas do delírio, faziam experiências, a ver se era verdadeiro o boato; encaminhavam a conversação para os negócios de França e do imperador. Rubião resvalava ao abismo, e convencia-os."',
'',
'["falência","loucura","solidão","traição"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Linguagens',
'D. Fernanda é a única personagem do romance dotada de "simpatia universal", fazendo com que atue como elemento de contraste em relação às demais personagens. Uma passagem do romance que ilustra esse contraste está transcrita em:',
'Capítulo CLXXXVIII',
'',
'["D. Fernanda levou o marido para um gabinete, e, à força de beijos, consolou-o daquele golpe. Ao almoço, já ele sorria, ainda que de um sorriso pálido;","No domingo seguinte, D. Fernanda foi à igreja de Santo Antônio dos Pobres. Acabada a missa, viu surgir do movimento dos fiéis que se cumprimentavam entre si, ou saudavam o altar, nada menos que o primo, ereto, risonho, gravemente trajado, estendendo-lhe a mão.","A compaixão de D. Fernanda tinha-a impressionado muito; achou-lhe um quê distinto e nobre, e advertiu que se a outra, sem relações estreitas nem antigas com Rubião, assim se mostrava interessada, era de bom tom não ser menos generosa.","Quincas Borba acudiu ao chamado, não pulando, nem alegre. D. Fernanda inclinou-se, perguntou-lhe pelo amigo, se estava longe, se queria ir vê-lo."]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Linguagens',
'Em (1) e (2), o narrador apresenta a perspectiva de Rubião acerca da constelação do Cruzeiro do Sul; em (3), o narrador apresenta a própria perspectiva sobre esse conjunto de estrelas. A perspectiva de Rubião e a do narrador podem ser caracterizadas, respectivamente, como:',
'(1) Capítulo XLI
"Tinha razão, deviam separar-se; só lhe pedia uma coisa, duas coisas; a primeira é que não esquecesse aqueles dez minutos sublimes; a segunda é que, todas as noites, às dez horas, fitasse o Cruzeiro, ele o fitaria também, e os pensamentos de ambos iriam achar-se ali juntos,"
(2) Capítulo XCVII
"Quando cansou, olhou para o céu; lá estava o Cruzeiro... Oh! Se ela houvesse consentido em fitar o Cruzeiro! Outra teria sido a vida de ambos. A constelação pareceu confirmar este modo de sentir, fulgurando extraordinariamente;"
(3) Capítulo CCI
"Mas, vendo a morte do cão narrada em capítulo especial, é provável que me perguntes se ele, se o seu defunto homônimo é que dá o título ao livro, (...) Eia! Chora os dois recentes mortos, se tens lágrimas. Se só tens riso, ri-te! É a mesma coisa. O Cruzeiro, que a linda Sofia não quis fitar, como lhe pedia Rubião, está assaz alto para não discernir os risos e as lágrimas dos homens."',
'',
'["flexível – rígida","crédula – cética","individual – social","ousada – conformista"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Linguagens',
'A frase do narrador de Quincas Borba que melhor se associa à declaração acima é a seguinte:',
'"A realidade é boa, o realismo é que não presta para nada." A declaração acima foi publicada por Machado de Assis num artigo de jornal.',
'',
'["A imaginação não podia mais, e a realidade próxima atraiu-lhe a vista.","Já é muito concertar farrapos de realidade.","Rubião, na rua, voltou a cabeça para todos os lados, a realidade apossava-se dele e o delírio esvaía-se.","Rubião precisava de um pedaço de corda que o atasse à realidade, porque o espírito sentia-se outra vez presa da vertigem."]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- LINGUA ESTRANGEIRA - INGLES (Questoes 23 a 27)
-- Texto de apoio: "The dangers of preconceived judgement: look
-- beyond stereotypes" (Patrick Turner, adaptado de appgecet.co.in).
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Língua Estrangeira (Inglês)',
'The title of the text recommends a way of behaving in relation to stereotypes. An example of such recommendation is clearly expressed in:',
'TEXTO DE APOIO (Inglês) — "The dangers of preconceived judgement: look beyond stereotypes" (Patrick Turner, adaptado de appgecet.co.in). O título do texto recomenda um modo de agir em relação aos estereótipos.',
'',
'["We are all guilty of making snap judgements about others (l. 1-2)","It refers to the action of making lightning-fast judgements (l. 8)","As amusing as it may seem, such judgements can have real-life consequences. (l. 11-12)","We should strive to give people a fair chance before passing judgement. (l. 21)"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Língua Estrangeira (Inglês)',
'The verb forms underlined above express different ideas due to their tenses. These ideas are, respectively:',
'"But have you ever wondered why it''s important not to judge someone before getting to know them? Do you ever consider that?" (l. 3-4) — formas verbais destacadas: "have you ever wondered" e "Do you ever consider".',
'',
'["repetition before the present – result in the present","result in the present – experience up to the present","experience up to the present – behaviour in the present","behaviour in the present – repetition before the present"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Língua Estrangeira (Inglês)',
'In line 8, the term thin slice refers to judgement that is characterized as:',
'TEXTO DE APOIO (Inglês) — "The dangers of preconceived judgement: look beyond stereotypes" (Patrick Turner).',
'',
'["uncommon","impulsive","impartial","unclear"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Língua Estrangeira (Inglês)',
'The expression from the text that means "imagine oneself in somebody else''s situation" is:',
'TEXTO DE APOIO (Inglês) — "The dangers of preconceived judgement: look beyond stereotypes" (Patrick Turner).',
'',
'["judge a book by its cover (l. 1)","see the true beauty in diversity. (l. 14)","put yourself in their shoes (l. 18-19)","think outside the box. (l. 28)"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Língua Estrangeira (Inglês)',
'In the last paragraph, the author offers suggestions so that severe criticism can be avoided. One of these suggestions is:',
'TEXTO DE APOIO (Inglês) — "The dangers of preconceived judgement: look beyond stereotypes" (Patrick Turner).',
'',
'["question preconceptions","broaden possibilities","reveal imperfections","discover insecurities"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA (Questoes 28 a 34)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Matemática',
'No gráfico, está indicada a comparação entre os números de acidentes de trânsito, ocorridos durante o mês de março, nas avenidas A, B, C e D. Em abril foi feito outro gráfico, na mesma escala, e observou-se que o número de acidentes, de março para abril, reduziu pela metade em duas dessas avenidas, sem se alterar nas duas outras. O gráfico que representa a comparação entre os números de acidentes, nessas avenidas, em abril é:',
'[Imagem: gráfico de barras de março — avenida A = 4 acidentes, B = 2, C = 2, D = 1. As alternativas (A) a (D) apresentam gráficos de barras com diferentes combinações de valores para abril.]',
'',
'["A=2, B=1, C=1, D=1","A=4, B=2, C=1, D=1","A=2, B=2, C=1, D=1","A=2, B=1, C=1, D=1 (variação)"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Matemática',
'Um fabricante reduziu a embalagem de seus sucos, mantendo o preço de venda, que era de R$ 10,00 por unidade. Na tabela estão apresentadas informações do custo do produto para o fabricante, antes e depois da redução. O aumento percentual do lucro do fabricante, por unidade, em relação ao custo foi igual a:',
'Preço de venda por unidade: R$ 10,00 (mantido).
Antes da redução: capacidade 250 ml; custo da embalagem R$ 2,50; custo do conteúdo R$ 2,50.
Depois da redução: capacidade 200 ml; custo da embalagem R$ 2,00; custo do conteúdo R$ 2,00.',
'',
'["25%","30%","45%","50%"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Matemática',
'Considere o triângulo retângulo ABC. Sabe-se que: BC é perpendicular a AC; AD é a bissetriz do ângulo CAB; o ângulo ABC é igual a 30º; BD mede 20 cm. A razão AC/DC é igual a:',
'[Imagem: triângulo retângulo ABC com ângulo reto em C; ângulo em B = 30º; ponto D sobre BC, com AD bissetriz do ângulo CAB; BD = 20 cm.]',
'',
'["√3","√2","(√3)/2","(√2)/2"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Matemática',
'Um professor de educação física realiza regularmente a medição da altura de seus alunos. Na turma A, que tem 25 alunos, quando um aluno saiu e outro entrou, o professor fez nova medição. Ao final, observou que: a altura dos alunos que não saíram não mudou; a altura do aluno que entrou era 1,82 m; a nova média das alturas dos alunos aumentou em 1 cm. A altura, em metros, do aluno que saiu dessa turma é:',
'',
'',
'["1,72","1,67","1,62","1,57"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Matemática',
'Observe os gráficos das funções reais f e g, definidas por f(x) = 2^x e g(x) = (1/8)^(x−1), sendo x ∈ IR. Sendo A(x0, y0) o ponto de interseção desses gráficos, (x0, y0) é:',
'[Imagem: gráficos das funções exponenciais f(x) = 2^x (crescente) e g(x) = (1/8)^(x−1) (decrescente), com ponto de interseção A(x0, y0) no primeiro quadrante.]',
'',
'["(3/4, raiz quarta de 8)","(3/2, raiz quadrada de 8)","(3/4, raiz quarta de 2)","(3/2, raiz quadrada de 2)"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Matemática',
'Uma pessoa tem no bolso, exatamente, sete notas de valores diferentes: 2, 5, 10, 20, 50, 100 e 200 reais. Essa pessoa retira do bolso, ao acaso, apenas três dessas notas. O número total de retiradas diferentes em que as três notas somam valor maior que 50 reais é igual a:',
'',
'',
'["29","30","31","32"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Matemática',
'No pião representado, VAB é a seção meridiana de um cone circular reto, e a geratriz do cone mede 12 cm. Assim, VA = VB = 12 cm e AB é o diâmetro da base do cone. Ao ser lançado, esse pião cai sobre o plano horizontal e rola, sem deslizar, com a sua geratriz apoiada nesse plano. O pião dá apenas uma volta completa em torno do seu eixo, descrevendo o setor circular AVP de centro V e ângulo central de 120º. A medida do diâmetro AB, em centímetros, é igual a:',
'[Imagem: pião (cone) com geratriz VA = VB = 12 cm; ao rolar sem deslizar, descreve no plano um setor circular de centro V e ângulo central de 120º.]',
'',
'["6","8","10","12"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CIENCIAS DA NATUREZA (Questoes 35 a 46) - Q38 ANULADA
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Ciências da Natureza',
'Vários parasitas heteroxenos obrigatórios, para completar seu ciclo de vida, se associam a vetores artrópodes que se alimentam de sangue humano. Uma vantagem decorrente desse tipo de associação é:',
'',
'',
'["transmissão por ovos","encontro entre hospedeiros","formação de cistos teciduais","hipertrofia de órgãos reprodutores"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Ciências da Natureza',
'Durante um treino, quatro posições ocupadas pelos corredores A e B, deslocando-se em movimento uniforme, foram verificadas em intervalos sucessivos de 10 segundos. Após 60 segundos do início do treino, a distância, em metros, entre os corredores é igual a:',
'Posições (corredor A / corredor B): posição 1 = 0 m / 0 m; posição 2 = 30 m / 40 m; posição 3 = 60 m / 80 m; posição 4 = 90 m / 120 m. Os intervalos entre as posições são de 10 segundos.',
'',
'["30","60","90","120"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Ciências da Natureza',
'A tri-iodotironina e a tiroxina são hormônios produzidos pela tireoide, conhecidos, respectivamente, como T3 e T4, em função do número de átomos de iodo presentes em cada molécula. Em relação ao T4, o hormônio T3 apresenta maior número de átomos do seguinte elemento químico:',
'[Imagem: fórmulas estruturais da tri-iodotironina (T3), com 3 átomos de iodo, e da tiroxina (T4), com 4 átomos de iodo.]',
'',
'["hidrogênio","nitrogênio","oxigênio","carbono"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Ciências da Natureza',
'(Questão ANULADA pela banca) A bioluminescência consiste na produção de luz por alguns seres vivos, dentre eles os besouros comumente chamados de vaga-lumes. Esses insetos são capazes de controlar a frequência e a intensidade da luz que emitem, o que varia de uma espécie para outra. Os vaga-lumes utilizam a bioluminescência no processo de:',
'Esta questão foi ANULADA pela banca (UERJ/DSEA). Enunciado e alternativas mantidos apenas para referência.',
'',
'["predação","mimetismo","reprodução","camuflagem"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Ciências da Natureza',
'Para determinar a potência dissipada por um equipamento industrial, verificou-se a relação entre a corrente elétrica i, em ampères, e a tensão U, em volts, aferidas no circuito. O valor da tensão x, correspondente à corrente de 5 A, não foi registrado. Nesse circuito, quando i = 5 A, a potência instantânea dissipada pelo equipamento, em watts, é igual a:',
'[Imagem: gráfico linear de tensão U (V) em função da corrente i (A), passando pela origem; para i = 1 A, U = 5 V; a tensão x corresponde a i = 5 A.]',
'',
'["125","150","175","200"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Ciências da Natureza',
'O mineral apatita, utilizado como matéria-prima na produção de fertilizantes, contém diferentes sais de cálcio, dentre eles o Ca3(PO4)2. Nesse sal, o ânion presente é denominado:',
'',
'',
'["hipofosfato","hipofosfito","fosfito","fosfato"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Ciências da Natureza',
'As duas bombas lançadas em 1945 apresentavam como material físsil os átomos urânio-235 e plutônio-239. Comparando os núcleos desses dois átomos, a maior quantidade de nêutrons observada corresponde a:',
'As questões 41 e 42 referem-se ao filme Oppenheimer (vencedor do Oscar de melhor filme em 2024), que retrata o desenvolvimento das duas primeiras bombas atômicas no contexto da Segunda Guerra Mundial. Adaptado de cartacapital.com.',
'',
'["150","146","145","143"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Ciências da Natureza',
'Considere que toda a energia liberada em um intervalo de tempo de 1 s pelas duas bombas corresponde a 1,5 × 10^14 J. O gráfico que representa a potência média dessas bombas ao explodirem é:',
'As questões 41 e 42 referem-se ao filme Oppenheimer. [Imagem: quatro alternativas de gráfico U(V) × i(A); a potência média é constante (reta horizontal) no valor 1,5 × 10^5 até 10^9.]',
'',
'["gráfico constante (reta horizontal) em 1,5 × 10^5 até 10^9","reta crescente de 0 até (10^9; 1,5 × 10^5)","reta decrescente de (0; 1,5 × 10^5) até 10^9","curva crescente côncava até (10^9; 1,5 × 10^5)"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Ciências da Natureza',
'Anelídeos oligoquetos se locomovem por meio de movimentos peristálticos, no interior de túneis por eles construídos. Para que esse tipo de locomoção ocorra, é fundamental a seguinte característica morfológica:',
'',
'',
'["patas articuladas","líquido celomático","canais ambulacrários","exoesqueleto calcário"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Ciências da Natureza',
'O CO2 produzido na respiração atua no equilíbrio do pH do sangue, conforme a equação: CO2 (aq) + H2O (l) ⇌ H+ (aq) + HCO3- (aq). Em um estudo, foi analisada a alteração que quatro fármacos podem produzir sobre esse equilíbrio. A concentração de íons HCO3-, no equilíbrio, é aumentada quando o seguinte fármaco entra em contato com o sangue:',
'Fármacos e respectivos valores de pH: W = 3; X = 5; Y = 7; Z = 9.',
'',
'["W","X","Y","Z"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Ciências da Natureza',
'Para variar em 60 °C a temperatura de m quilogramas de água, foi utilizada toda a energia produzida pela queima de 100 g de etanol. Para essas condições, considere: poder calorífico do etanol igual a 30,00 kJ/g; calor específico da água igual a 4,20 J/g °C. O valor de m, em quilogramas, é aproximadamente igual a:',
'',
'',
'["36","24","18","12"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Ciências da Natureza',
'Admita que determinada doença hereditária autossômica pode apresentar duas formas distintas: uma causada pelo gene dominante A e outra causada pelo gene recessivo b, estando cada gene localizado em cromossomos distintos. Sendo um casal duplamente heterozigoto para esses dois genes, a probabilidade de seus filhos apresentarem as duas formas da doença corresponde a:',
'',
'',
'["16,25%","17,25%","18,75%","19,75%"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- CIENCIAS HUMANAS (Questoes 47 a 60)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Ciências Humanas',
'A localização espacial dos estados alemães com índice de satisfação com a vida inferior a 7,0 é explicada, principalmente, pelos processos socioeconômicos ocorridos no país no período de:',
'[Imagem: mapa "Nível de satisfação individual com a vida na Alemanha (2016)", escala de 0 a 10, com índices por estado — os menores índices (inferiores a 7,0) concentram-se no leste do país. Adaptado de reddit.com.]',
'',
'["1918-1933","1933-1949","1949-1990","1990-2020"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Ciências Humanas',
'O romance Quincas Borba, publicado em livro em 1891, possui como cenário o Rio de Janeiro, na segunda metade do século XIX. A passagem transcrita indica, por parte de Rubião, o apego ao seguinte aspecto do contexto da época:',
'"O criado esperava teso e sério. Era espanhol; e não foi sem resistência que Rubião o aceitou das mãos de Cristiano; por mais que lhe dissesse que estava acostumado aos seus crioulos de Minas, e não queria línguas estrangeiras em casa, o amigo Palha insistiu, demonstrando-lhe a necessidade de ter criados brancos. Rubião cedeu com pena. O seu bom pajem, que ele queria pôr na sala, como um pedaço da província, nem o pôde deixar na cozinha, onde reinava um francês, Jean, foi degradado a outros serviços." (MACHADO DE ASSIS, Quincas Borba. Rio de Janeiro: EdUERJ, 2024.)',
'',
'["valorização do progresso","trabalho de escravizados","modernização de hábitos","defesa do republicanismo"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Ciências Humanas',
'O artista Caco Galhardo faz uma crítica a comportamentos sociais de diversas sociedades contemporâneas, apresentando relações entre passado e futuro. De acordo com a charge, a condição que impacta diretamente no comportamento social contemporâneo é:',
'[Imagem: charge de Caco Galhardo intitulada "A antiga civilização do tempo desperdiçado", em que arqueólogos observam fósseis e comentam: "Pela posição dos fósseis, trata-se de um grupo que morreu procurando um bom filme nos canais de streaming." Adaptado de Folha de S. Paulo, 22/05/2024.]',
'',
'["demanda política de propaganda","hierarquização classista de mercado","tecnologia digital de entretenimento","imposição cultural de empregabilidade"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Ciências Humanas',
'De acordo com o autor, o fracasso dos chineses no futebol deve ser atribuído à seguinte característica presente naquela sociedade:',
'Texto de Marcelo Ninio (adaptado de O Globo, 22/11/2022) sobre a ausência da seleção chinesa nas Copas do Mundo. O autor argumenta que a centralização e o sistema centrado na obediência, embora eficazes para metas econômicas, militares e tecnológicas, não favorecem a criatividade exigida pelo futebol.',
'',
'["autoritarismo político","nacionalismo ufanista","controle populacional","sentimento xenofóbico"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 51, 'Ciências Humanas',
'Em abril de 2024, comemorou-se o cinquentenário da Revolução dos Cravos, episódio marcante da história contemporânea de Portugal. Alfredo Cunha retratou em suas fotografias manifestações dessa revolução. Dentre as fotografias do artista, a que está diretamente vinculada a rupturas com as heranças imperialistas europeias é:',
'Texto de Luís Pedro Nunes (adaptado de "25 de Abril de 1974, quinta-feira". Lisboa: Tinta-da-china, 2023), sobre o pós-25 de Abril em Portugal.
[Imagem: quatro fotografias de Alfredo Cunha. A alternativa (C) mostra manifestantes com faixa "FIM DA GUERRA COLONIAL".]',
'',
'["foto (A): multidão em manifestação com faixas de solidariedade","foto (B): estátua/monumento com pichações contra o fascismo","foto (C): manifestantes com faixa ''Fim da guerra colonial''","foto (D): populares sobre veículo militar comemorando"]'::jsonb,
'C'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 52, 'Ciências Humanas',
'A pirâmide etária que representa o país mencionado na reportagem é:',
'Reportagem (adaptado de lemonde.fr, 20/12/2023) sobre o projeto de lei de imigração na França, em que a maior federação patronal afirma que, até 2050, o país precisará de milhões de trabalhadores estrangeiros.
[Imagem: quatro pirâmides etárias (A a D). A França é representada por uma pirâmide de país desenvolvido, com base estreita e topo relativamente alargado (envelhecimento populacional), correspondente à alternativa D.]',
'',
'["pirâmide (A): base larga e topo estreito (população jovem)","pirâmide (B): base larga com estreitamento irregular","pirâmide (C): formato intermediário em transição","pirâmide (D): base estreita, corpo largo e topo relativamente alargado (população envelhecida)"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 53, 'Ciências Humanas',
'Em menos de duas décadas, verifica-se uma alteração logística na exportação de grãos no território brasileiro. Essa alteração é explicada, principalmente, pelo seguinte processo socioespacial:',
'Texto de Vinicius Neder (adaptado de O Globo, 05/11/2023) sobre o avanço do Arco Norte na exportação de grãos.
[Imagem: gráfico "O caminho das exportações de grãos" (participação % de Arco Norte e Arco Sul nas exportações de soja e milho), de 2009 a 2022; o Arco Norte sobe de 16,6% para 37,1%.]',
'',
'["utilização de modernas tecnologias de cultivo","incorporação de novos espaços produtivos","eliminação de antigas práticas predatórias","recuperação de velhas ferrovias de carga"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 54, 'Ciências Humanas',
'As grandes enchentes que afetaram Porto Alegre, nos anos de 1941 e 2024, mencionadas na reportagem, indicam a incidência desse problema na capital gaúcha. Na atualidade, o agravamento desse problema está relacionado ao contexto de:',
'Reportagem (cnnbrasil.com.br) sobre as enchentes de 1941 e 2024 em Porto Alegre, com imagens aéreas do Mercado Público. Em 1941 o nível do Guaíba chegou a cerca de 4,76 m; em maio de 2024 ultrapassou 5 m.
[Imagem: fotos aéreas comparativas do Mercado Público de Porto Alegre em 1941 e 2024.]',
'',
'["intensificação da crise climática","exploração de recursos minerais","degradação do bioma do Pampa","permeabilização do solo da cidade"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 55, 'Ciências Humanas',
'A mobilização política de povos indígenas garantiu direitos para essas populações na Constituição Brasileira promulgada em 1988. Naquele contexto, a garantia do direito constitucional apresentado na fotografia representou a defesa da ideia de:',
'[Imagem: fotografia (Beto Ricardo/ISA) de lideranças de várias etnias ocupando o auditório do PMDB durante as negociações do capítulo sobre os indígenas na Constituição, em 1988, com faixa "Constituintes! Queremos nossos direitos! Não à aculturação". Adaptado de Folha de S. Paulo, 14/02/2024.]',
'',
'["estatização","apropriação","emancipação","autodeterminação"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 56, 'Ciências Humanas',
'De acordo com o mapa, entre 2013 e 2023, vários Estados europeus tiveram aumento de sua população absoluta. Considerando a dinâmica populacional desse continente, essa variação está associada ao seguinte processo demográfico:',
'[Imagem: mapa "Variação do total populacional nacional (2013-2023)" na Europa, com faixas de variação percentual de -42% a +22%. Adaptado de reddit.com.]',
'',
'["saldo migratório positivo","índice de fertilidade ascendente","crescimento vegetativo negativo","taxa de mortalidade descendente"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 57, 'Ciências Humanas',
'O autor da charge ironiza o resultado da conferência ao apontar uma possível contradição de alguns países participantes. Essa contradição envolve os seguintes fatores:',
'Nos dias 1º e 2 de novembro de 2023, ocorreu no Reino Unido a Conferência de Segurança sobre Inteligência Artificial (IA).
[Imagem: charge de KAL (adaptado de economist.com, 02/11/2023) em que RU, UE, China e EUA declaram que a IA representa risco catastrófico para a humanidade, enquanto cada um pensa em desenvolvê-la primeiro.]',
'',
'["direitos humanos – ordenamentos jurídicos","acordos comerciais – práticas monopolistas","desenvolvimento econômico – poderio militar","posicionamento diplomático – interesse estratégico"]'::jsonb,
'D'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 58, 'Ciências Humanas',
'A reportagem relata um fenômeno que é espacialmente diferenciado. Isso se deve a uma situação de:',
'Reportagem de Selma Schmidt (adaptado de O Globo, 07/01/2024) sobre a Nova Holanda (Complexo da Maré, Rio de Janeiro): telhados mais baratos (alumínio e fibrocimento) aquecem mais, e os moradores de áreas carentes sofrem mais os efeitos do calor do que os de localidades mais nobres.',
'',
'["inversão térmica","injustiça ambiental","poluição atmosférica","macrocefalia urbana"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 59, 'Ciências Humanas',
'As estações de trem representaram um modelo exitoso de investimento em meios de transporte, no decorrer dos séculos XIX até meados do século XX. A desativação da Estação Ferroviária Leopoldina, no início do século XXI, decorre do seguinte aspecto das transformações urbanas na cidade do Rio de Janeiro:',
'Texto de Quintino Gomes Freire (adaptado de diariodorio.com, 18/03/2015) sobre a Estação Ferroviária Leopoldina (inaugurada em 1926, antiga Barão de Mauá), que deixou de ser usada para embarque de passageiros em 2002.
[Imagem: fotografia histórica da fachada da Estação Leopoldina.]',
'',
'["crescimento de ações para a ocupação de periferias e favelas","deslocamento de verbas para a circulação de automóveis e ônibus","ordenamento de iniciativas para a geração de empregos e serviços","aprimoramento de práticas para a integração de indústrias e finanças"]'::jsonb,
'B'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 60, 'Ciências Humanas',
'Considerando o contexto histórico de sua gravação, as duas principais ideias que explicam a referência à Bahia são:',
'Questão baseada na canção "Back in Bahia [De volta à Bahia]", de Gilberto Gil (letra disponível em letras.mus.br). A canção foi gravada originalmente em 1972, por Gilberto Gil, no momento mais repressivo dos governos militares vigentes no Brasil entre 1964 e 1984. O eu lírico, estando em Londres, relembra com saudade a Bahia e reflete sobre a experiência de ter partido para poder voltar.',
'',
'["exílio e reelaboração","conformismo e negação","passadismo e resignação","ressentimento e projeção"]'::jsonb,
'A'
from public.exams where slug = 'uerj-2025-eq2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
