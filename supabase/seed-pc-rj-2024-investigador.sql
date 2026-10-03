-- Seed: Policia Civil do Estado do Rio de Janeiro 2024 - Investigador Policial de 3a Classe
-- Banca FGV - Prova de Conhecimentos - Nivel Medio - Tipo 1 (Branca) - 100 questoes
-- Gabarito oficial (Tipo 1):
--  1-D  2-C  3-A  4-E  5-B  6-D  7-A  8-D  9-A 10-E
-- 11-A 12-E 13-B 14-C 15-B 16-D 17-B 18-A 19-B 20-A
-- 21-C 22-D 23-C 24-E 25-A 26-E 27-E 28-A 29-C 30-A
-- 31-D 32-B 33-C 34-A 35-A 36-B 37-E 38-A 39-D 40-D
-- 41-C 42-E 43-D 44-A 45-A 46-C 47-E 48-B 49-C 50-A
-- 51-D 52-C 53-A 54-D 55-A 56-B 57-B 58-C 59-E 60-D
-- 61-E 62-E 63-C 64-A 65-B 66-E 67-D 68-E 69-C 70-D
-- 71-A 72-B 73-C 74-C 75-A 76-D 77-E 78-A 79-B 80-D
-- 81-E 82-D 83-B 84-A 85-A 86-C 87-B 88-C 89-D 90-B
-- 91-C 92-C 93-C 94-A 95-D 96-D 97-A 98-E 99-D 100-?
-- Observacao: o gabarito da questao 100 nao foi fornecido; preencher quando disponivel.

insert into public.exams (slug, title, source, year)
values ('pc-rj-2024-investigador', 'Polícia Civil RJ 2024 - Investigador Policial de 3ª Classe', 'pc', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Texto 1: "Investigação é o ato ou efeito de investigar, busca, pesquisa. Ou seja, investigação criminal pode ser definida como a atividade preliminar de produzir e colher elementos de convicção acerca da materialidade, de autoria ou participação referente a um fato tido como criminoso" (Jus.com.br). O texto 1 pode ser classificado como:',
'',
'',
'["argumentativo, já que defende uma ideia;","expositivo, já que mostra como se faz uma investigação;","narrativo, pois relata as etapas de um processo investigativo;","descritivo, já que define o termo \"investigação\";","expositivo-argumentativo, visto que expõe fatos."]'::jsonb,
'D',
'O texto 1 tem natureza descritiva/definitória: parte da palavra "investigação" e apresenta o seu significado ("ato ou efeito de investigar"), definindo o termo e, em seguida, o conceito de investigação criminal. Não defende tese, não narra etapas nem ensina a fazer. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'No segmento "Investigação é o ato ou efeito de investigar, busca, pesquisa. Ou seja, investigação criminal pode ser definida como a atividade preliminar de produzir e colher elementos de convicção...", há três ocorrências da preposição DE sem que nenhuma delas seja solicitada por termo anterior. A frase abaixo em que a preposição DE tem valor gramatical, ou seja, é exigência de um termo anterior, é:',
'',
'',
'["Não pedi a empresário nenhum que chegasse com malas DE dólares em minha casa;","Ninguém quer ser mulher DE malandro. O Brasil não precisa sofrer gol para depois marcar;","Tenho certeza DE que, no Brasil, mais jovens fumaram maconha do que gente comeu carne;","Os gerentes do banco, como diz o ditado, estão mais perdidos que cachorro em dia DE mudança;","Beijar a boca DE uma mulher bonita é fácil."]'::jsonb,
'C',
'Em "Tenho certeza DE que...", a preposição DE é exigida (regida) pelo substantivo "certeza" ("ter certeza de algo"), caracterizando regência nominal. Nas demais, o DE tem valor nocional (de conteúdo, posse, especificação) e não é exigido por um termo antecedente. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'"Investigação é o ato ou efeito de investigar, busca, pesquisa". Para que esse período inicial do texto 1 mostre construção uniforme e adequada, sua estruturação deveria ser:',
'',
'',
'["Investigação é o ato ou efeito de investigar, buscar, pesquisar;","Investigação é o ato ou efeito de investigação, busca, pesquisa;","Investigação é o ato ou efeito de investigar, buscar e de pesquisa;","Investigar é o ato ou efeito de investigar, de busca e de pesquisa;","Investigação é o ato ou efeito de investigação, de busca e de pesquisa."]'::jsonb,
'A',
'Para haver paralelismo (uniformidade) na enumeração, os três termos regidos por "de" devem pertencer à mesma classe. Como o primeiro é o verbo "investigar", os demais também devem ser verbos no infinitivo: "investigar, buscar, pesquisar". Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'"...a atividade preliminar de produzir e colher elementos de convicção..."; esse segmento do texto 1 traz dois infinitivos sublinhados (produzir e colher). A substituição adequada desses verbos pelos substantivos cognatos correspondentes é:',
'',
'',
'["atividade preliminar de produção e colhida de elementos;","atividade preliminar de produção e coleta de elementos;","atividade preliminar de produto e coleta de elementos;","atividade preliminar de produto e colheita de elementos;","atividade preliminar de produção e colheita de elementos."]'::jsonb,
'E',
'Os substantivos cognatos (abstratos, de ação) correspondentes a "produzir" e "colher" são, respectivamente, "produção" e "colheita". "Produto" é resultado concreto (não a ação), "coleta" e "colhida" não são os cognatos diretos de "colher" nesse par. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'No texto 1, a expressão "ou seja" serve para:',
'',
'',
'["corrigir uma falha no segmento anterior;","ampliar informações sobre algo que foi dito antes;","repetir uma informação importante anterior;","definir termos anteriormente expressos;","alterar dados já fornecidos."]'::jsonb,
'B',
'A expressão "ou seja" introduz uma reformulação explicativa que amplia e detalha a informação dada antes: após definir "investigação", o texto passa a esclarecer o que é "investigação criminal". Não corrige, não repete literalmente, não altera dados. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'Texto 2: "Os policiais militares são os primeiros a chegar ao local do crime, para isolar a área e preservar as provas..." As formas "isolar" e "preservar" poderiam também aparecer no plural ("isolarem" e "preservarem"). A frase abaixo em que há dupla possibilidade de concordância do termo destacado é:',
'',
'',
'["Quem inventou o trabalho não tinha o que fazer;","Só quem é superficial conhece a si mesmo;","Uma descoberta consiste em ver o que todo mundo já viu e pensar o que ninguém pensou;","A família é um conjunto de pessoas que se defendem em bloco e se atacam em particular;","Originalidade é a arte de esconder suas fontes."]'::jsonb,
'D',
'Em "A família é um conjunto de pessoas que se defendem...", o verbo pode concordar com o núcleo "conjunto" (singular: "se defende") ou com o especificador "de pessoas" (plural: "se defendem"), caracterizando concordância facultativa (silepse de número). As demais não admitem essa dupla concordância. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'"Os policiais militares são os primeiros a chegar ao local do crime, para isolar a área e preservar as provas." Se transformarmos as orações reduzidas sublinhadas (isolar a área e preservar as provas) em orações desenvolvidas, a forma adequada será:',
'',
'',
'["para que isolem a área e preservem as provas;","para o isolamento da área e preservação das provas;","para isolarem a área e preservarem as provas;","para que isolassem a área e preservassem as provas;","para que isolem a área e para preservação das provas."]'::jsonb,
'A',
'A oração reduzida de infinitivo com valor final ("para isolar... e preservar...") desenvolve-se com a conjunção final "para que" + verbo no presente do subjuntivo, concordando com o sujeito (policiais): "para que isolem a área e preservem as provas". O tempo deve ser o presente (não o pretérito "isolassem") para manter o sentido e a correlação. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'Observe a frase final do texto 2: "O corpo é recolhido pelo Instituto Médico Legal (IML)". Essa frase se mostra estranha na estruturação do texto porque:',
'',
'',
'["não foi informado anteriormente o número de vítimas;","o leitor desconhece o tipo de crime cometido;","o leitor não sabe o sexo das vítimas;","a referência anterior está no plural: vítimas;","se ignora a localização do crime referido."]'::jsonb,
'D',
'A frase final emprega "o corpo" (singular), mas o texto, até então, referia-se a "vítimas" (plural) e "familiares das vítimas". Há, portanto, incoerência de número entre a referência anterior (plural) e a retomada (singular), o que torna a frase estranha. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'Texto 3 (sobre a prisão de um traficante após investigação da PCDF): "Uma investigação complexa da Polícia Civil do Distrito Federal (PCDF) que durou 16 meses resultou na prisão do homem apontado como o maior traficante de cocaína da capital..." Nesse segmento, o adjetivo sublinhado (complexa) tem a função de:',
'',
'',
'["valorizar, indiretamente, o trabalho da polícia;","justificar o pouco tempo dedicado à investigação;","mostrar o preparo intelectual dos agentes policiais;","indicar uma opinião do jornal sobre a prisão realizada;","informar a população sobre o trabalho diário da polícia."]'::jsonb,
'A',
'Ao qualificar a investigação como "complexa" (e associá-la aos 16 meses de duração e ao êxito na prisão), o texto valoriza indiretamente o trabalho da polícia, destacando a dificuldade superada. Não justifica pouco tempo (ao contrário, foram 16 meses) nem expressa juízo sobre a prisão em si. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'A palavra "vulgo", presente no texto 3, tem por sinônimos apelido ou alcunha. A frase abaixo em que os termos destacados são sinônimos é:',
'',
'',
'["São coisas em comum que fazem relacionamentos agradáveis, mas são as diferenças que os tornam interessantes;","Não incorremos em cabotinismo ou ufanismo ao afirmar que o Mobral é o mais bem-sucedido programa de educação de adultos do mundo;","Não quero participar da batalha de adjetivos para rotular como plena, relativa, popular ou social a democracia;","Nós somos o que repetidamente fazemos. Excelência, assim, não é um ato, mas um hábito;","Eu fui tão culpado quanto a maioria das pessoas nesta indústria (cinema) por gastar rolos de filmes baleando indivíduos anônimos e desimportantes."]'::jsonb,
'E',
'Em "indivíduos anônimos e desimportantes", os dois adjetivos destacados funcionam como sinônimos no contexto (pessoas sem nome, sem relevância). Nas demais, os termos destacados são antônimos ou apenas enumerações distintas (agradáveis/interessantes, cabotinismo/ufanismo, ato/hábito), não sinônimos. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'No texto 3, há a substituição de um termo inicial (cocaína) por outro de valor geral (drogas). O mesmo acontece em:',
'',
'',
'["O que é uma erva daninha senão uma planta cujas virtudes ainda não foram descobertas?","O maior segredo é não haver mistério algum;","Uma gafe é apenas uma verdade dita na hora errada;","A história da pintura é uma história de pessoas que veem a obra de forma distinta das outras;","A corrupção não é uma invenção brasileira, mas a impunidade é muito nossa."]'::jsonb,
'A',
'Em "O que é uma erva daninha senão uma planta...", o termo específico "erva daninha" é retomado por um termo de valor mais geral, "planta" (hiperônimo), tal como "cocaína" foi retomado por "drogas". Nas demais não há essa relação de termo específico substituído por termo genérico. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'Texto 4 (sobre o inquérito policial, de caráter metalinguístico). O texto 4 parte da análise da língua para o entendimento de algo. A frase abaixo em que essa preocupação com a língua está ausente é:',
'',
'',
'["No Rio, os alunos dizem colar, mas na Bahia é pescar;","O nome preconceito abrange uma série de problemas;","A gíria registra maneiro em lugar de elegante;","O nome Amazonas tem documentação histórica;","O dicionário registra um conjunto de palavras."]'::jsonb,
'E',
'A metalinguagem ocorre quando se fala sobre a própria língua (vocábulos, nomes, gírias, sinônimos). Em "O dicionário registra um conjunto de palavras", a frase trata do dicionário como objeto/obra, não analisa um termo da língua em si; não há reflexão metalinguística sobre uma palavra específica. As demais discutem termos ("colar/pescar", "preconceito", "maneiro/elegante", "Amazonas"). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Portuguesa',
'"...fazer indagações, investigações, pesquisas, perquirições, de natureza filosófica ou científica; investigar, indagar, pesquisar, esquadrinhar." Esse segmento final do primeiro parágrafo do texto 4 mostra:',
'',
'',
'["uma série de sinônimos;","uma definição e sinônimos;","informações sobre a origem do vocábulo;","classificações variadas de um mesmo vocábulo;","um conjunto de definições."]'::jsonb,
'B',
'O segmento apresenta primeiro uma definição ("fazer indagações, investigações... de natureza filosófica ou científica") e, em seguida, uma série de sinônimos do verbo inquirir ("investigar, indagar, pesquisar, esquadrinhar"). Logo, combina definição e sinônimos. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Portuguesa',
'A expressão do texto 4 "fazer indagações" equivale a indagar; a substituição adequada de fazer + substantivo por um só verbo de valor equivalente é:',
'',
'',
'["O réu fez exclamações durante o interrogatório / expressou-se;","O advogado fez reclamações sobre a validade do processo / questionou;","O policial fez alusão a um outro ponto obscuro / aludiu;","O depoente fez referência a alguém mais / referendou;","O menino fez piadas sobre o assunto / apiedou-se."]'::jsonb,
'C',
'A locução "fazer alusão" equivale ao verbo "aludir" (fazer referência indireta). Nas demais, o verbo proposto não corresponde à locução: "fazer exclamações" não é "expressar-se" de modo específico; "fazer reclamações" é "reclamar" (não "questionar"); "fazer referência" é "referir-se" (não "referendar"); "fazer piadas" é "gracejar" (não "apiedar-se"). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Portuguesa',
'Partindo da frase "O deputado apresentou um projeto de lei", as opções abaixo mostram explicitação de componentes da frase inicial. A opção em que o processo de explicitação está corretamente identificado é:',
'',
'',
'["O deputado do PSDB apresentou um projeto de lei / acréscimo de um complemento nominal;","O deputado José Freitas apresentou um projeto de lei / aposição de um nome próprio;","O deputado apresentou um novo projeto de lei / adverbialização;","O deputado apresentou de repente um projeto de lei / complemento de objeto direto;","O deputado apresentou um projeto de lei, que será bastante útil / oração coordenada."]'::jsonb,
'B',
'Em "O deputado José Freitas apresentou...", o nome próprio "José Freitas" explicita o termo "o deputado" por meio de aposição (aposto especificativo). As demais classificações estão erradas: "do PSDB" é adjunto adnominal (não complemento nominal); "novo" é adjunto adnominal (não adverbialização); "de repente" é adjunto adverbial (não objeto direto); e "que será bastante útil" é oração subordinada adjetiva (não coordenada). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Língua Portuguesa',
'"...fazer indagações, investigações, pesquisas, perquirições..." Nesse segmento do texto 4, há uma série de vírgulas empregadas pela mesma razão da que ocorre na seguinte frase:',
'',
'',
'["Cansa-se de ser herói, mas não se cansa de ser rico;","Se uma mulher quer fazer uma coisa, não há homem que consiga impedi-la;","Querendo abolir a pena de morte, que comecem os senhores assassinos;","Eu sou um homem honrado: nunca assassinei, nunca roubei, nunca violei, salvo em minha imaginação;","Para alcançar o bem, mais vale habilidade que sabedoria."]'::jsonb,
'D',
'No segmento do texto 4, as vírgulas separam termos de mesma função em uma enumeração. Em "nunca assassinei, nunca roubei, nunca violei", as vírgulas também separam elementos enumerados (orações coordenadas assindéticas em série). Nas demais, as vírgulas marcam oração adversativa, deslocamento de oração subordinada ou adjunto antecipado. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Língua Portuguesa',
'Texto 5 (sobre o investigador de crimes cibernéticos). O texto 5 deve ser classificado predominantemente como:',
'',
'',
'["publicitário, pois faz propaganda da atividade policial;","informativo, pois dá a conhecer fatos novos;","normativo, pois indica regras a serem seguidas;","didático, pois ensina como proceder;","metalinguístico, pois indica significados de palavras."]'::jsonb,
'B',
'O texto 5 apresenta e descreve a atividade do investigador de crimes cibernéticos (o que faz, onde atua, que habilidades requer), levando ao leitor informações sobre esse campo, sem fazer propaganda, estabelecer normas, ensinar passo a passo ou analisar a língua. É, portanto, predominantemente informativo. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Língua Portuguesa',
'"Esse pessoal pode trabalhar para agências policiais e empresas privadas e também pode ser conhecido como técnico em computação forense." Há duas ocorrências do conectivo E com valor de adição; a frase abaixo em que esse conectivo mostra valor diferente é:',
'',
'',
'["A crítica é fácil, e a arte é difícil;","Quando penso que Mozart na minha idade já estava morto, fico mais sério e pensativo;","Quando viu que tinha ladrão no filme, Maria Antônia, imediata e precavidamente, tirou os brincos das orelhinhas e guardou na bolsa;","Eu usei o mesmo terno e o mesmo diálogo durante seis anos. Só trocava o título do filme e a mocinha;","Eu pego as lendas e as transformo em coisas comuns; Mozart pega as coisas comuns e as transforma em lendas."]'::jsonb,
'A',
'Em "A crítica é fácil, e a arte é difícil", o "e" liga ideias contrastantes (crítica fácil x arte difícil), assumindo valor adversativo (equivalente a "mas"), e não de simples adição. Nas demais, o "e" tem valor aditivo (ou de adição/consequência). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Língua Portuguesa',
'No segmento do texto 5, de todos os termos destacados (Esse pessoal; nesse campo; da lei; as pessoas; as habilidades), o único que tem antecedente claramente identificado é:',
'',
'',
'["Esse pessoal;","nesse campo;","da lei;","as pessoas;","as habilidades."]'::jsonb,
'B',
'"Nesse campo" retoma, de forma clara, a expressão anterior "computação forense"/a área mencionada, tendo antecedente identificável no texto. Os demais termos ("esse pessoal", "da lei", "as pessoas", "as habilidades") não têm, no segmento, um antecedente expresso e preciso ao qual se refiram. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Língua Portuguesa',
'No texto 5 há a ocorrência de uma redundância no emprego de "e também", pois a presença somente do E já seria suficiente. A opção abaixo em que os termos destacados NÃO mostram redundância é:',
'',
'',
'["Nem todos chegaram à mesma conclusão;","A conclusão final da CPI não foi bem recebida;","Os fregueses ganharam grátis um presente;","A prova foi antecipada para antes do prazo;","A população deve aprender a conviver junto com a Covid."]'::jsonb,
'A',
'"Nem todos chegaram à mesma conclusão" não contém redundância: "nem todos" é construção legítima e necessária. Nas demais há pleonasmo vicioso: "conclusão final", "ganhar grátis", "antecipada para antes" e "conviver junto" repetem desnecessariamente a ideia. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Língua Portuguesa',
'No texto 5, o trecho "e também pode ser conhecido como técnico em computação forense" não está bem estruturado, pois não deveria estar ligado por E ao trecho anterior, por não tratar de assunto a ele relacionado. O mesmo acontece em:',
'',
'',
'["Quem diz que o futebol não tem lógica não entende de futebol e não sabe o que é lógica;","O mundo é um livro e aquele que viaja lê apenas uma página;","Camping é o modo que a natureza tem de promover o negócio hoteleiro e o turista é alguém que viaja para ver coisas diferentes;","Você é um ser espiritual imerso em uma experiência humana e não um ser humano em busca de uma experiência espiritual;","A vida espiritual nos remove do mundo cotidiano e nos leva a um aprofundamento nesse mundo."]'::jsonb,
'C',
'Em "Camping é o modo que a natureza tem de promover o negócio hoteleiro e o turista é alguém que viaja para ver coisas diferentes", o "e" une duas afirmações sem relação direta entre si (uma sobre camping/hotelaria e outra sobre o turista), reproduzindo o mesmo defeito de coesão do texto 5. Nas demais, as orações ligadas por "e" mantêm relação temática clara. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Língua Portuguesa',
'"Quando membros do público denunciam crimes cibernéticos, um investigador de crimes cibernéticos participa da investigação." Nesse segmento há repetição indevida de termos que poderia ser evitada, mantendo-se o conteúdo original, do seguinte modo:',
'',
'',
'["Quando membros do público denunciam crimes cibernéticos, um investigador desses crimes cibernéticos participa da investigação;","Quando membros do público denunciam, um investigador de crimes cibernéticos participa da investigação;","Quando membros do público denunciam crimes, um investigador de crimes cibernéticos participa da investigação;","Quando membros do público denunciam crimes cibernéticos, um investigador desses crimes participa da investigação;","Quando membros do público denunciam crimes, um investigador desses crimes participa da investigação."]'::jsonb,
'D',
'A repetição de "crimes cibernéticos" é evitada substituindo-se a segunda ocorrência por "desses crimes" (anáfora que retoma a primeira), preservando integralmente o conteúdo: "...denunciam crimes cibernéticos, um investigador desses crimes participa da investigação". As opções que apagam "cibernéticos" na primeira ocorrência (B, C, E) alteram o conteúdo, e a opção A mantém a redundância. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Língua Portuguesa',
'Em "O grande mal do Brasil tem sido o crime sem castigo...", a locução "sem castigo" pode ser substituída por "impune". A frase abaixo em que uma substituição de uma locução por um adjetivo foi feita de forma adequada é:',
'',
'',
'["O melhor equipamento de segurança já inventado foi um espelho retrovisor com um carro de polícia refletido nele / seguro;","Cadeia é castigo e não colônia de férias / festiva;","Não é permitido fazer em nome de outro o que não podemos fazer em nosso nome / alheio;","Um diamante é um pedaço de carvão que se saiu bem sob pressão / carbonizado;","A noite é a mãe dos pensamentos / pensativa."]'::jsonb,
'C',
'"Em nome de outro" equivale ao adjetivo "alheio" (que pertence a outrem), substituição semanticamente adequada. Nas demais, o adjetivo não traduz a locução: "colônia de férias" não é "festiva"; "sob pressão" não é "carbonizado"; "dos pensamentos" não é "pensativa"; e "equipamento de segurança" não é "seguro" no sentido pretendido. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Língua Portuguesa',
'Todas as frases abaixo são construídas por dois segmentos, com algum tipo de pontuação entre eles; a substituição adequada dessa pontuação por uma conjunção, de modo a preservar o sentido da frase, é:',
'',
'',
'["Deus fez o campo. O homem fez a cidade / portanto;","A natureza não se engana nunca; somos nós que nos enganamos / no entanto;","A felicidade consiste em ser feliz. Não consiste em fazer crer aos demais que o somos / pois;","Sucesso é conseguir o que você quer. Felicidade é gostar do que você conseguiu / embora;","Milhares de velas podem ser acesas de uma única vela e a vida da vela não será encurtada. Felicidade nunca diminui ao ser compartilhada / assim como."]'::jsonb,
'E',
'Entre os dois segmentos do item E há uma relação de comparação/semelhança: assim como a vela não se encurta ao acender outras, a felicidade não diminui ao ser compartilhada. A locução conjuntiva comparativa "assim como" preserva adequadamente esse sentido. Nas demais, a conjunção proposta não traduz a relação lógica original: "portanto" (conclusão) não cabe entre campo/cidade; "no entanto" (oposição) não é a melhor correspondência no item B; "pois" (causa) não cabe entre as definições de felicidade; "embora" (concessão) não cabe entre sucesso/felicidade. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Língua Portuguesa',
'Uma das marcas da estruturação adequada de um texto é a adequação lógica entre seus componentes, salvo em textos de humor. A frase abaixo que mostra ilogicidade é:',
'',
'',
'["Antigamente as coisas eram piores, mas foram piorando;","Nunca faça hoje o que você pode adiar para amanhã;","Ninguém está nos negócios por diversão, mas isso não quer dizer que não há diversão nos negócios;","Pessoas persistentes começam seu sucesso onde os outros terminam com fracasso;","Uma empresa que trata mal seus funcionários trata mal seus clientes."]'::jsonb,
'A',
'"Antigamente as coisas eram piores, mas foram piorando" é ilógica: se já eram "piores", não poderiam "piorar" ainda mais a partir de um estado que o próprio enunciado coloca como contraste ("mas"). A contradição entre "eram piores" e "foram piorando" quebra a lógica. As demais são coerentes (ainda que espirituosas). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Língua Portuguesa',
'A frase abaixo em que todos os vocábulos pertencem à linguagem formal é:',
'',
'',
'["Pagar a dívida externa com a desgraça interna não dá pé;","O Brasil é um investimento, uma fazenda que o homem da cidade comprou, lá nos confins do Judas, para ganhar dinheiro;","O Mundial de Futebol é competição e competição é guilhotina. Quem perder, dança;","Temos que fazer sacrifícios de cabo a rabo, ou seja, do governo até o operário;","Não me considero um jogador violento. O problema é que às vezes fico nervoso e tenho reações inesperadas."]'::jsonb,
'E',
'A alternativa E emprega vocabulário inteiramente formal, sem gírias ou expressões coloquiais. As demais contêm expressões informais/coloquiais: "não dá pé", "confins do Judas", "quem perder, dança", "de cabo a rabo". Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Língua Portuguesa',
'Em todas as frases abaixo foram empregadas palavras de carga semântica negativa (sublinhadas); a forma adequada de modificar esse valor negativo por um vocábulo positivo ou atenuador de sentido equivalente é:',
'',
'',
'["Timbalada é o \"roll\" do rock. É a ausência de grunhidos da guitarra e a evidência da bateria / berros;","O marido abandonou a mulher depois de 15 anos de casados / largou;","É uma pobre ilusão achar que o consumo de quinquilharias vai nos fazer modernos / bugigangas;","Empanturrei-me de comida mineira em Barbacena / Enchi-me;","Pessoas espertas tomam atitudes estúpidas por razões amorosas / impensadas."]'::jsonb,
'E',
'Trocar "estúpidas" por "impensadas" atenua a carga negativa, mantendo o sentido (atitudes irrefletidas). Nas demais, o vocábulo proposto não atenua: "berros" é tão ou mais negativo que "grunhidos"; "largou" mantém/intensifica a ideia negativa de "abandonou"; "bugigangas" equivale a "quinquilharias" (negativo); "enchi-me" não é mais positivo que "empanturrei-me". Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Língua Portuguesa',
'Todas as frases abaixo mostram locuções adverbiais sublinhadas; a frase em que a locução destacada foi substituída de forma adequada por um advérbio é:',
'',
'',
'["Nenhum banco morre de repente / repentinamente;","As mudanças nunca ocorrem sem inconvenientes, até mesmo do pior para o melhor / complexamente;","Repreende o amigo em segredo e elogia-o em público / descaradamente;","Um homem muito lido nunca cita com precisão / necessariamente;","O sol se põe de novo a cada noite / repetidamente."]'::jsonb,
'A',
'A locução adverbial "de repente" equivale ao advérbio "repentinamente", substituição semanticamente correta. Nas demais, o advérbio não corresponde à locução: "sem inconvenientes" não é "complexamente"; "em segredo" não é "descaradamente"; "com precisão" não é "necessariamente"; "de novo" é "novamente", não "repetidamente". Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Língua Portuguesa',
'Em cada frase abaixo há uma oração reduzida sublinhada; a substituição INDEVIDA dessa oração por uma forma nominal equivalente é:',
'',
'',
'["Para resolver problemas do país, eu conversaria até com o demônio / Para a solução dos problemas do país;","Protegendo os macacos, estaremos protegendo a nós mesmos, porque eles são os animais mais próximos do homem / Com a proteção aos macacos;","Estarão os brasileiros menos preparados que os bolivianos para participar de um regime democrático? / para a repartição de um regime democrático?","Não basta salvar focas e baleias. É preciso garantir a vida das crianças / a garantia da vida das crianças;","Eu não vou me opor à proposta de transformar a Amazônia em patrimônio da humanidade / de transformação da Amazônia em patrimônio da humanidade."]'::jsonb,
'C',
'A substituição indevida está em trocar "participar de um regime democrático" por "repartição de um regime democrático": "participar" corresponde a "participação", não a "repartição", que muda completamente o sentido. Nas demais, as formas nominais ("solução", "proteção", "garantia", "transformação") preservam o sentido das orações reduzidas. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Língua Portuguesa',
'"A investigação de um crime pode demorar muito ou pouco tempo, conforme a complexidade da cena do crime, daí que seja absolutamente indispensável que o investigador possa dispor do tempo necessário e que seja possuidor de treinamento capaz de torná-lo eficiente." Sobre a estruturação desse texto, a afirmação adequada é:',
'',
'',
'["o termo \"de um crime\" mostra o mesmo papel textual de \"de treinamento\";","o conector \"conforme\" pode ser adequadamente substituído por \"dada a\";","o termo \"daí que\" indica uma confirmação da frase anterior;","o pronome \"lo\" em \"torná-lo\" se refere a \"treinamento\";","os adjetivos \"necessário\" e \"eficiente\" se referem a \"investigador\"."]'::jsonb,
'A',
'Os termos "de um crime" (em "a investigação de um crime") e "de treinamento" (em "possuidor de treinamento") desempenham o mesmo papel textual: ambos são termos preposicionados que completam o sentido de um substantivo, especificando-o. Por isso, a afirmação adequada é a da letra A. As demais são incorretas: "conforme" tem valor de conformidade/proporção, não equivalendo a "dada a" (causa); "daí que" indica consequência, não confirmação; o pronome "lo" em "torná-lo" refere-se ao investigador (e não a "treinamento"); e "necessário" refere-se a "tempo" e "eficiente" ao investigador. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO CONSTITUCIONAL (Questoes 31 a 45)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Noções de Direito Constitucional',
'Maria é brasileira nata e João é alemão, residente no Brasil há cinco anos. A respeito dos direitos de ambos à luz da Constituição Federal, é correto afirmar que:',
'',
'',
'["João, por ser estrangeiro, não possui qualquer direito fundamental enquanto estiver em território nacional;","Maria e João possuem exatamente os mesmos direitos, inclusive os direitos políticos;","apenas João pode exercer direitos políticos, por ser estrangeiro naturalizável;","Maria e João têm assegurados os direitos e garantias fundamentais, mas, em regra, apenas Maria pode exercer direitos políticos;","nenhum dos dois pode exercer direitos políticos, pois estes são exclusivos de brasileiros naturalizados."]'::jsonb,
'D',
'O art. 5º, caput, da CF/88 assegura os direitos e garantias fundamentais a brasileiros e estrangeiros residentes no país, de modo que Maria e João têm esses direitos. Já os direitos políticos (votar e ser votado) são, em regra, reservados aos nacionais; o estrangeiro não os exerce (salvo o português equiparado). Logo, apenas Maria pode exercê-los. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Noções de Direito Constitucional',
'O Partido Alfa deseja ter acesso aos recursos do fundo partidário e ao tempo de propaganda gratuita no rádio e na televisão. Nos termos da Constituição Federal, para tanto, deverá, alternativamente, obter nas eleições para a Câmara dos Deputados o apoiamento mínimo exigido ou:',
'',
'',
'["eleger pelo menos 10 senadores em pelo menos um terço das unidades da Federação;","eleger pelo menos 15 Deputados Federais distribuídos em pelo menos um terço das unidades da Federação;","obter o registro de seus estatutos no Tribunal de Justiça do respectivo Estado;","eleger pelo menos um Governador de Estado em qualquer unidade da Federação;","alcançar 10% dos votos válidos no primeiro turno da eleição presidencial."]'::jsonb,
'B',
'A cláusula de desempenho (art. 17, §3º, da CF/88, com a redação da EC 97/2017) condiciona o acesso ao fundo partidário e à propaganda gratuita, alternativamente, à obtenção de percentual mínimo de votos válidos distribuídos pela Federação ou à eleição de pelo menos 15 Deputados Federais distribuídos em pelo menos um terço das unidades da Federação. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Noções de Direito Constitucional',
'Considere as seguintes penas: 1. perda da liberdade; 2. prestação de serviços à comunidade; 3. obrigação de reparar o dano; 4. perda de bens. Nos termos da Constituição Federal, podem passar da pessoa do condenado, podendo a obrigação ser estendida aos sucessores e contra eles executada, até o limite do valor do patrimônio transferido, apenas as penas indicadas em:',
'',
'',
'["1 e 2;","1 e 3;","3 e 4;","2 e 4;","1 e 4."]'::jsonb,
'C',
'Pelo princípio da intranscendência (art. 5º, XLV, da CF/88), nenhuma pena passará da pessoa do condenado; contudo, a obrigação de reparar o dano e a decretação do perdimento de bens podem ser estendidas aos sucessores e contra eles executadas, até o limite do patrimônio transferido. São, portanto, as penas 3 e 4. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Noções de Direito Constitucional',
'João requereu administrativamente o acesso a informações a seu respeito constantes de banco de dados de entidade governamental, bem como a retificação desses dados, tendo o pedido sido negado. Nos termos da Constituição Federal, o remédio constitucional cabível para assegurar o conhecimento e a retificação dessas informações é:',
'',
'',
'["o habeas data;","o habeas corpus;","o mandado de segurança coletivo;","a ação popular;","o mandado de injunção."]'::jsonb,
'A',
'O habeas data (art. 5º, LXXII, da CF/88) é o remédio destinado a assegurar o conhecimento de informações relativas à pessoa do impetrante, constantes de registros ou bancos de dados de entidades governamentais ou de caráter público, bem como a retificação desses dados. É exatamente a hipótese narrada. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Noções de Direito Constitucional',
'Determinado Estado da Federação pretende legislar sobre matéria inserida na competência legislativa concorrente entre a União, os Estados e o Distrito Federal. À luz da Constituição Federal, no âmbito dessa competência concorrente, cabe à União:',
'',
'',
'["estabelecer normas gerais;","legislar de forma plena e exclusiva, afastando a atuação estadual;","suplementar a legislação estadual naquilo que for de interesse local;","delegar sua competência aos Municípios mediante lei complementar;","exercer apenas competência residual, após a atuação dos Estados."]'::jsonb,
'A',
'No âmbito da competência legislativa concorrente (art. 24 da CF/88), a competência da União limita-se a estabelecer normas gerais (§1º), cabendo aos Estados a competência suplementar (§2º). A existência de norma geral federal não exclui a competência estadual suplementar. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Noções de Direito Constitucional',
'Os moradores de determinado Município desejam apresentar à Câmara Municipal um projeto de lei de iniciativa popular sobre assunto de interesse específico da cidade. Nos termos da Constituição Federal, a iniciativa popular pode ser exercida pela apresentação de projeto de lei à Câmara Municipal, desde que subscrito por, no mínimo:',
'',
'',
'["1% do eleitorado nacional;","5% do eleitorado municipal;","10% do eleitorado estadual;","1% do eleitorado municipal, distribuído em cinco bairros;","0,3% do eleitorado municipal."]'::jsonb,
'B',
'Nos termos do art. 29, XIII, da CF/88, a iniciativa popular de projetos de lei de interesse específico do Município, da cidade ou de bairros exige a manifestação de, pelo menos, cinco por cento do eleitorado. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Noções de Direito Constitucional',
'Determinada autoridade pretende nomear Joana, pessoa de sua confiança e sem concurso público, para o exercício de atribuições de direção, chefia e assessoramento em órgão da Administração. Nos termos da Constituição Federal, essa nomeação, sem concurso público, é admitida quando se tratar de:',
'',
'',
'["cargo efetivo de nível superior;","emprego público de confiança;","função temporária por tempo indeterminado;","cargo vitalício;","cargo em comissão, declarado em lei de livre nomeação e exoneração."]'::jsonb,
'E',
'A regra constitucional é o acesso aos cargos públicos mediante concurso (art. 37, II, da CF/88). A exceção que dispensa concurso são os cargos em comissão, declarados em lei de livre nomeação e exoneração, destinados às atribuições de direção, chefia e assessoramento (art. 37, II e V). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Noções de Direito Constitucional',
'João, motorista de determinado Município, conduzia veículo oficial a serviço quando, de forma imprudente, atropelou um pedestre, causando-lhe graves lesões. Nos termos da Constituição Federal, acerca da responsabilidade civil pelos danos causados, é correto afirmar que:',
'',
'',
'["o Município responde objetivamente pelos danos causados, independentemente de comprovação de culpa de João, assegurado o direito de regresso contra ele em caso de dolo ou culpa;","a vítima somente poderá acionar João, por ser o causador direto do dano;","o Município responde apenas se comprovada a sua culpa na escolha ou na fiscalização do servidor;","a responsabilidade é exclusivamente subjetiva, exigindo prova de dolo do Município;","não há responsabilidade do Município, por se tratar de ato pessoal de João."]'::jsonb,
'A',
'Pelo art. 37, §6º, da CF/88, as pessoas jurídicas de direito público respondem objetivamente (teoria do risco administrativo) pelos danos que seus agentes, nessa qualidade, causarem a terceiros, independentemente de culpa. Assegura-se o direito de regresso contra o agente nos casos de dolo ou culpa. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Noções de Direito Constitucional',
'Acerca das funções institucionais da polícia federal e da polícia civil, nos termos da Constituição Federal, é correto afirmar que:',
'',
'',
'["a polícia civil exerce o policiamento ostensivo e a preservação da ordem pública;","a polícia federal é responsável pelo patrulhamento ostensivo das rodovias estaduais;","as polícias civis exercem as funções de polícia marítima, aeroportuária e de fronteiras;","a polícia federal destina-se a apurar infrações penais contra a ordem política e social ou em detrimento de bens, serviços e interesses da União, bem como outras infrações cuja prática tenha repercussão interestadual ou internacional;","compete à polícia civil a defesa externa do País e a segurança das fronteiras."]'::jsonb,
'D',
'O art. 144, §1º, I, da CF/88 estabelece que a polícia federal se destina a apurar infrações penais contra a ordem política e social ou em detrimento de bens, serviços e interesses da União ou de suas entidades, bem como outras infrações cuja prática tenha repercussão interestadual ou internacional. As demais atribuem equivocadamente funções de outras polícias à civil ou à federal. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Noções de Direito Constitucional',
'A seguridade social é um dos pilares da ordem social na Constituição Federal. Nos termos do texto constitucional, a seguridade social compreende um conjunto integrado de ações de iniciativa dos Poderes Públicos e da sociedade, destinadas a assegurar os direitos relativos:',
'',
'',
'["à educação, à cultura e ao desporto;","ao trabalho, à moradia e ao lazer;","à ciência, à tecnologia e à inovação;","à saúde, à previdência e à assistência social;","à segurança pública, à defesa civil e ao meio ambiente."]'::jsonb,
'D',
'Nos termos do art. 194 da CF/88, a seguridade social compreende um conjunto integrado de ações de iniciativa dos Poderes Públicos e da sociedade, destinadas a assegurar os direitos relativos à saúde, à previdência e à assistência social. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Noções de Direito Constitucional',
'Para a instalação de obra ou atividade potencialmente causadora de significativa degradação do meio ambiente, a Constituição Federal exige, na forma da lei, a elaboração de:',
'',
'',
'["licença de operação definitiva, dispensado qualquer estudo técnico;","autorização exclusiva do Poder Legislativo federal;","estudo prévio de impacto ambiental, a que se dará publicidade;","parecer facultativo do Ministério Público, sem caráter vinculante;","mera comunicação ao órgão ambiental, após o início das obras."]'::jsonb,
'C',
'Incumbe ao Poder Público, para assegurar a efetividade do direito ao meio ambiente ecologicamente equilibrado, exigir, na forma da lei, para instalação de obra ou atividade potencialmente causadora de significativa degradação do meio ambiente, estudo prévio de impacto ambiental, a que se dará publicidade (art. 225, §1º, IV, da CF/88). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Noções de Direito Constitucional',
'A respeito da proteção da criança e do adolescente, nos termos da Constituição Federal, é correto afirmar que é dever da família, da sociedade e do Estado assegurar à criança, ao adolescente e ao jovem, com absoluta prioridade, os direitos fundamentais a eles inerentes. Essa prioridade:',
'',
'',
'["é mera recomendação de caráter programático, sem força normativa;","depende de regulamentação por lei complementar para produzir efeitos;","aplica-se apenas aos adolescentes em conflito com a lei;","somente vincula a família, não alcançando o Estado;","é determinação constitucional de observância obrigatória por família, sociedade e Estado."]'::jsonb,
'E',
'O art. 227 da CF/88 impõe à família, à sociedade e ao Estado o dever de assegurar à criança, ao adolescente e ao jovem, com absoluta prioridade, o rol de direitos fundamentais ali previstos. Trata-se de norma constitucional de observância obrigatória, não de simples recomendação programática. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Noções de Direito Constitucional',
'A organização político-administrativa da República Federativa do Brasil admite alterações na composição dos entes federativos. Nos termos da Constituição Federal, os Estados podem:',
'',
'',
'["desligar-se da Federação, mediante plebiscito, para formar país independente;","ser extintos por decreto do Presidente da República, por motivo de segurança nacional;","transformar-se em Territórios Federais por ato do Governador;","incorporar-se entre si, subdividir-se ou desmembrar-se para se anexarem a outros ou formarem novos Estados ou Territórios Federais, mediante aprovação da população diretamente interessada e do Congresso Nacional;","alterar livremente seus limites territoriais por acordo entre os respectivos Governadores."]'::jsonb,
'D',
'O art. 18, §3º, da CF/88 permite que os Estados se incorporem entre si, se subdividam ou se desmembrem para se anexarem a outros ou formarem novos Estados ou Territórios Federais, mediante aprovação da população diretamente interessada, por plebiscito, e do Congresso Nacional, por lei complementar. Não há direito de secessão. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Noções de Direito Constitucional',
'A cidadania pode ser compreendida em uma acepção ativa (direito de votar e de participar) e em uma acepção passiva (direito de ser votado). Determinado cidadão teve restringida apenas a sua cidadania na acepção passiva. Isso significa que esse cidadão:',
'',
'',
'["está inelegível, mas pode votar;","perdeu totalmente seus direitos políticos;","está impedido de votar, mas pode ser votado;","teve suspenso o direito de alistamento eleitoral;","perdeu a nacionalidade brasileira."]'::jsonb,
'A',
'A cidadania passiva corresponde à capacidade eleitoral passiva, ou seja, ao direito de ser votado (elegibilidade). Restringir apenas essa acepção significa tornar o cidadão inelegível, preservando-se, porém, a capacidade eleitoral ativa (o direito de votar). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Noções de Direito Constitucional',
'Determinado órgão público passou a exigir o pagamento de uma taxa de expediente como condição para o recebimento e processamento de petições e requerimentos dos cidadãos em defesa de direitos. Nos termos da Constituição Federal, essa exigência é:',
'',
'',
'["inconstitucional, pois são assegurados a todos, independentemente do pagamento de taxas, o direito de petição aos Poderes Públicos em defesa de direitos e a obtenção de certidões;","constitucional, desde que o valor da taxa seja módico;","constitucional, por se tratar de contraprestação de serviço público específico e divisível;","constitucional, desde que prevista em ato administrativo do próprio órgão;","inconstitucional apenas se a taxa for exigida de pessoas comprovadamente pobres."]'::jsonb,
'A',
'O art. 5º, XXXIV, da CF/88 assegura a todos, independentemente do pagamento de taxas, o direito de petição aos Poderes Públicos em defesa de direitos ou contra ilegalidade ou abuso de poder, bem como a obtenção de certidões. A cobrança descrita é, portanto, inconstitucional. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO ADMINISTRATIVO (Questoes 46 a 60)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Noções de Direito Administrativo',
'A respeito da avaliação de políticas públicas pela Administração Pública, no exercício de suas competências, é correto afirmar que a Administração pode:',
'',
'',
'["deixar de avaliar suas políticas públicas, por se tratar de atividade meramente política;","avaliar as políticas públicas apenas quando houver determinação do Poder Judiciário;","realizar a avaliação de políticas públicas, com a divulgação dos resultados, na forma da lei;","transferir integralmente a avaliação a entidades privadas, sem qualquer controle;","restringir o acesso aos resultados da avaliação, por serem sigilosos em regra."]'::jsonb,
'C',
'A avaliação de políticas públicas integra o dever de eficiência e de publicidade da Administração (art. 37, caput, da CF/88). Cabe à Administração realizá-la e divulgar seus resultados, na forma da lei, assegurando transparência. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Noções de Direito Administrativo',
'A Lei nº 14.133/2021 (Lei de Licitações e Contratos Administrativos) relaciona expressamente os princípios que regem as licitações e os contratos administrativos. Entre esses princípios, incluem-se:',
'',
'',
'["a anterioridade e a irretroatividade tributárias;","a insignificância e a bagatela;","a anualidade orçamentária e a não afetação de receitas;","a presunção de inocência e o contraditório diferido;","a segregação de funções e o desenvolvimento nacional sustentável."]'::jsonb,
'E',
'O art. 5º da Lei nº 14.133/2021 arrola, entre os princípios aplicáveis às licitações e contratos, a segregação de funções e o desenvolvimento nacional sustentável, ao lado de legalidade, impessoalidade, moralidade, publicidade, eficiência, interesse público, probidade administrativa, igualdade, planejamento, transparência, eficácia, motivação, vinculação ao edital, julgamento objetivo, entre outros. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Noções de Direito Administrativo',
'Determinado servidor público estável, após o devido processo, poderá perder o cargo em algumas hipóteses previstas na Constituição Federal. Entre essas hipóteses, inclui-se a perda do cargo mediante:',
'',
'',
'["ato discricionário da chefia imediata, sem necessidade de motivação;","procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa;","simples decurso do prazo de estágio probatório;","decisão administrativa irrecorrível, dispensado o contraditório;","requerimento de qualquer cidadão, mediante representação ao Tribunal de Contas."]'::jsonb,
'B',
'O art. 41, §1º, III, da CF/88 prevê que o servidor público estável poderá perder o cargo mediante procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa. As demais hipóteses de perda do cargo (decisão judicial transitada em julgado e PAD com ampla defesa) exigem igualmente o devido processo. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Noções de Direito Administrativo',
'A Secretaria de Estado de Polícia Civil editou resolução dispondo sobre o detalhamento de procedimentos internos para o cumprimento de uma lei estadual, sem inovar na ordem jurídica nem criar direitos ou obrigações novos. Essa atuação é manifestação do:',
'',
'',
'["poder hierárquico, em sentido estrito;","poder de polícia administrativa;","poder normativo (ou regulamentar);","poder disciplinar;","poder constituinte derivado."]'::jsonb,
'C',
'A edição de atos gerais e abstratos destinados a dar fiel execução à lei, detalhando procedimentos sem inovar originariamente na ordem jurídica, é expressão do poder normativo (regulamentar) da Administração. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Noções de Direito Administrativo',
'A competência administrativa apresenta determinadas características que a distinguem de outros institutos. Entre as características da competência administrativa, é correto apontar que ela é, em regra:',
'',
'',
'["imprescritível, improrrogável e irrenunciável;","prescritível, transferível e renunciável;","negociável, prorrogável e disponível;","transferível por simples acordo entre os agentes;","renunciável a critério de conveniência do agente."]'::jsonb,
'A',
'A competência administrativa é, em regra, de exercício obrigatório, intransferível (salvo delegação e avocação nos termos da lei), imprescritível (não se perde pelo não uso), improrrogável e irrenunciável, pois decorre de lei e é fixada no interesse público. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Noções de Direito Administrativo',
'Joana é servidora pública e foi designada para o exercício de função de confiança em determinado órgão. Nos termos da Constituição Federal, as funções de confiança devem ser exercidas, exclusivamente, por:',
'',
'',
'["qualquer pessoa indicada pela autoridade, servidora ou não;","particulares contratados temporariamente;","servidores ocupantes exclusivamente de cargo em comissão;","servidores ocupantes de cargo efetivo;","empregados de empresas terceirizadas."]'::jsonb,
'D',
'Nos termos do art. 37, V, da CF/88, as funções de confiança devem ser exercidas exclusivamente por servidores ocupantes de cargo efetivo (ao passo que os cargos em comissão podem ser preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Noções de Direito Administrativo',
'Determinado órgão público pretende contratar serviço técnico especializado de natureza predominantemente intelectual, com profissional de notória especialização, no valor de R$ 800.000,00, para trabalho de inquestionável singularidade. Nos termos da Lei nº 14.133/2021, essa contratação deve ocorrer, em regra, por meio de:',
'',
'',
'["licitação na modalidade pregão;","dispensa de licitação em razão do valor;","inexigibilidade de licitação, por inviabilidade de competição;","concurso público para provimento de cargo;","leilão administrativo."]'::jsonb,
'C',
'A contratação de serviços técnicos especializados de natureza predominantemente intelectual, com profissionais ou empresas de notória especialização, para objeto singular, caracteriza inviabilidade de competição, enquadrando-se na inexigibilidade de licitação (art. 74, III, da Lei nº 14.133/2021). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Noções de Direito Administrativo',
'No âmbito do controle externo exercido com o auxílio do Tribunal de Contas do Estado do Rio de Janeiro (TCE-RJ), compete a este apreciar, para fins de registro, a legalidade dos atos de admissão de pessoal, a qualquer título, na administração direta e indireta, incluídas as fundações instituídas e mantidas pelo Poder Público, excetuadas:',
'',
'',
'["as nomeações para cargo de provimento em comissão;","as contratações por tempo determinado;","as admissões de empregados públicos;","as concessões de aposentadorias;","as reintegrações determinadas por decisão judicial."]'::jsonb,
'A',
'Por simetria com o art. 71, III, da CF/88, compete ao Tribunal de Contas apreciar, para fins de registro, a legalidade dos atos de admissão de pessoal, a qualquer título, excetuadas as nomeações para cargo de provimento em comissão. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Noções de Direito Administrativo',
'Durante operação policial, um investigador do Estado Alfa, em serviço, teve disparo acidental de sua arma de fogo, atingindo e ferindo um transeunte. Acerca da responsabilidade civil pelo dano, é correto afirmar que:',
'',
'',
'["o próprio investigador responde diretamente perante a vítima, por culpa exclusiva;","não há responsabilidade a ser apurada, por se tratar de caso fortuito;","a vítima deve acionar o superior hierárquico do investigador;","o Estado Alfa responde objetivamente pelo dano, pela teoria do risco administrativo, assegurado o direito de regresso em caso de dolo ou culpa;","a responsabilidade do Estado é subjetiva, exigindo prova de dolo da autoridade máxima."]'::jsonb,
'D',
'O dano foi causado por agente público (investigador), nessa qualidade, a terceiro. Incide a responsabilidade civil objetiva do Estado (art. 37, §6º, da CF/88), pela teoria do risco administrativo, independentemente de culpa, com direito de regresso contra o agente nos casos de dolo ou culpa. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Noções de Direito Administrativo',
'Agentes municipais, com fundamento em legislação local, determinaram a remoção de food trucks que estavam estacionados irregularmente em via pública, por desrespeito às normas de uso e ocupação do espaço urbano. Essa atuação da Administração é manifestação do:',
'',
'',
'["poder de polícia;","poder hierárquico;","poder disciplinar;","poder regulamentar;","poder constituinte."]'::jsonb,
'A',
'A limitação e o condicionamento do exercício de atividades privadas em prol do interesse público (uso e ocupação do espaço urbano), com a adoção de medidas como a remoção de bens irregularmente instalados em via pública, caracterizam o exercício do poder de polícia administrativa. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Noções de Direito Administrativo',
'Joana, servidora pública estadual, precisa ausentar-se do serviço para realizar prova de concurso em curso de nível superior (faculdade). À luz do regime estatutário aplicável (Decreto Estadual nº 3.044/1980 e normas correlatas), em relação a essa ausência, é correto afirmar que:',
'',
'',
'["a ausência configura falta grave, punível com suspensão;","será permitido faltar ao serviço, sem prejuízo dos vencimentos e demais direitos, mediante comprovação, nos dias de prova;","a ausência somente é permitida se descontada integralmente da remuneração;","a servidora deve compensar as horas em dobro;","a ausência depende de autorização discricionária, podendo ser negada sem motivação."]'::jsonb,
'B',
'A legislação estatutária estadual, em consonância com a proteção ao direito à educação, admite que o servidor se ausente, sem prejuízo de vencimentos e demais direitos, para a realização de provas, mediante a devida comprovação. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Noções de Direito Administrativo',
'Determinado policial civil cometeu transgressão disciplinar de natureza leve, tendo sido advertido verbalmente por seu superior. Nos termos do regime disciplinar aplicável (Decreto-Lei nº 218/1975 e normas correlatas), em relação a essa penalidade, é correto afirmar que:',
'',
'',
'["a advertência verbal não constitui penalidade disciplinar;","a penalidade de advertência é cabível para transgressões leves, prescrevendo a pretensão punitiva em dois anos;","a advertência somente pode ser aplicada por escrito e após processo administrativo completo;","a advertência verbal implica automaticamente a perda do cargo;","a prescrição da advertência ocorre em cinco anos."]'::jsonb,
'B',
'A advertência é a mais branda das penalidades disciplinares, cabível para transgressões de natureza leve. No regime estadual aplicável, a pretensão punitiva relativa a tais penalidades prescreve em dois anos. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Noções de Direito Administrativo',
'Determinado servidor público estadual contraiu matrimônio e requereu o afastamento a que faz jus em razão do casamento. Nos termos do Estatuto dos Funcionários Públicos Civis do Poder Executivo do Estado do Rio de Janeiro (Decreto-Lei nº 220/1975 e normas correlatas), o servidor poderá afastar-se, sem prejuízo da remuneração e considerando-se de efetivo exercício, pelo período de:',
'',
'',
'["dois dias;","cinco dias;","oito dias;","quinze dias;","trinta dias."]'::jsonb,
'C',
'O Estatuto estadual assegura ao servidor o afastamento, sem prejuízo da remuneração e como de efetivo exercício, por oito dias consecutivos em razão de casamento (licença-gala). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Noções de Direito Administrativo',
'Determinado investigador tornou-se portador de incapacidade física parcial que o impede de desempenhar as atribuições específicas de seu cargo, embora possa exercer outras compatíveis com sua limitação. Nos termos do regime estatutário aplicável (Decreto nº 2.479/1979 e normas correlatas), esse servidor deverá ser:',
'',
'',
'["aposentado compulsoriamente, de imediato;","exonerado por incapacidade;","demitido a bem do serviço público;","posto em disponibilidade remunerada por tempo indeterminado;","readaptado em cargo ou função compatível com sua limitação."]'::jsonb,
'E',
'A readaptação é a investidura do servidor em cargo ou função mais compatível com sua capacidade física ou mental, verificada em inspeção médica, quando houver limitação que o impeça de exercer as atribuições do cargo atual, mas lhe permita desempenhar outras. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Noções de Direito Administrativo',
'Determinado policial civil é acusado da prática de falta funcional punível com a pena de demissão. Nos termos do regime disciplinar aplicável (Decreto-Lei nº 218/1975 e normas correlatas), a aplicação dessa penalidade deve ser precedida de:',
'',
'',
'["mera sindicância verbal, dispensado o contraditório;","decisão exclusiva do Secretário de Segurança, sem instrução;","parecer facultativo da corregedoria, sem oitiva do acusado;","processo administrativo disciplinar, por comissão composta de três investigadores e presidida por delegado de polícia, assegurados o contraditório e a ampla defesa;","julgamento pelo Tribunal de Justiça."]'::jsonb,
'D',
'Para a aplicação de penalidade grave como a demissão, exige-se processo administrativo disciplinar, conduzido por comissão (composta, no regime aplicável, de três investigadores presidida por delegado de polícia), com observância do contraditório e da ampla defesa. A alternativa que reproduz essa exigência corresponde ao gabarito oficial (letra D).'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO PENAL (Questoes 61 a 75)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Noções de Direito Penal',
'Ao descobrir que um professor havia assediado sua filha, um pai dirigiu-se à escola e agrediu fisicamente o docente, causando-lhe lesões corporais de natureza leve, com o propósito de "fazer justiça com as próprias mãos". Desconsiderando eventuais causas de exclusão, a conduta do pai configura, em tese:',
'',
'',
'["estrito cumprimento de dever legal;","legítima defesa de terceiro;","estado de necessidade;","mero exercício regular de direito;","exercício arbitrário das próprias razões em concurso material com lesão corporal leve."]'::jsonb,
'E',
'Ao fazer "justiça com as próprias mãos" para satisfazer pretensão que supõe legítima, em vez de recorrer às vias legais, o pai pratica o crime de exercício arbitrário das próprias razões (art. 345 do CP). A violência empregada, geradora de lesões leves, caracteriza também a lesão corporal (art. 129), respondendo o agente pelos dois crimes em concurso material. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Noções de Direito Penal',
'Um adolescente com 17 anos e 11 meses de idade praticou conduta de homicídio. Considerando a teoria adotada pelo Código Penal para a definição do tempo do crime, é correto afirmar que o agente:',
'',
'',
'["responde penalmente como adulto, por ter praticado crime hediondo;","responde penalmente, pois o resultado morte ocorreu quando já era maior de idade;","é inimputável somente se o resultado ocorrer antes dos 18 anos;","responde por ato infracional e por crime, cumulativamente;","não responde penalmente, pois, pela teoria da atividade, considera-se praticado o crime no momento da ação, quando ainda era menor de 18 anos."]'::jsonb,
'E',
'O art. 4º do CP adota a teoria da atividade: considera-se praticado o crime no momento da ação ou omissão, ainda que outro seja o momento do resultado. Como o agente contava com 17 anos e 11 meses ao tempo da conduta, era inimputável (art. 27 do CP), não respondendo penalmente, mas por ato infracional perante o ECA. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Noções de Direito Penal',
'Um indivíduo com 17 anos e 11 meses de idade iniciou a execução de um sequestro, mantendo a vítima em cativeiro por vários dias, de modo que a privação da liberdade se prolongou até depois de ele completar 18 anos de idade. Considerando a natureza permanente do crime e a teoria do tempo do crime, é correto afirmar que o agente:',
'',
'',
'["não responde penalmente, pois iniciou a execução quando ainda era menor;","responde apenas por ato infracional;","responde penalmente, pois, no crime permanente, a conduta se protrai no tempo, e parte da execução ocorreu quando o agente já era imputável;","é inimputável, por aplicação do princípio do in dubio pro reo;","responde penalmente somente pela metade da pena."]'::jsonb,
'C',
'No crime permanente, a consumação se prolonga no tempo enquanto perdura a situação ilícita (manutenção da vítima em cativeiro). Assim, embora a execução tenha se iniciado durante a menoridade, ela prosseguiu depois de o agente completar 18 anos, de modo que, ao tempo em que ainda praticava a conduta, já era imputável e responde penalmente. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Noções de Direito Penal',
'A Lei nº 12.015/2009 revogou o art. 214 do Código Penal (atentado violento ao pudor) e passou a reunir as condutas de conjunção carnal e de outros atos libidinosos em um único tipo penal, o estupro (art. 213). O fenômeno pelo qual a conduta antes prevista no art. 214 continua sendo crime, agora enquadrada no art. 213, denomina-se:',
'',
'',
'["princípio da continuidade normativo-típica;","abolitio criminis;","novatio legis in mellius;","princípio da insignificância;","retroatividade benéfica da lei penal."]'::jsonb,
'A',
'Quando uma lei revoga um tipo penal mas a conduta permanece criminosa, deslocada para outro dispositivo, ocorre o princípio da continuidade normativo-típica: não há abolitio criminis, pois o fato continua sendo crime. Foi o que se deu com o antigo atentado violento ao pudor, absorvido pelo tipo de estupro. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Noções de Direito Penal',
'Um agente consular da Grécia, no exercício de suas funções no Brasil, praticou um furto de bem pertencente a particular, conduta sem relação com o exercício de suas atividades consulares. Acerca da aplicação da lei penal, é correto afirmar que o agente consular:',
'',
'',
'["não responde pela lei penal brasileira, por gozar de imunidade diplomática absoluta;","responde pela lei penal brasileira, pois a imunidade consular é funcional e não abrange crimes comuns estranhos ao exercício do cargo;","somente responde se houver autorização do Estado grego;","é julgado exclusivamente pela Corte Internacional de Justiça;","está isento de pena por força de tratado internacional."]'::jsonb,
'B',
'A imunidade dos agentes consulares é funcional (relativa), restrita aos atos praticados no exercício das funções consulares, diferentemente da imunidade diplomática. Como o furto é crime comum e estranho às funções, o cônsul responde normalmente pela lei penal brasileira. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Noções de Direito Penal',
'Determinados tipos penais descrevem várias condutas (núcleos verbais) separadas pela conjunção "ou", de modo que a prática de mais de um desses verbos, no mesmo contexto fático e contra o mesmo objeto material, configura crime único. Esses são os denominados crimes de ação múltipla ou de conteúdo variado, aos quais se aplica o princípio da:',
'',
'',
'["especialidade;","subsidiariedade;","consunção;","continuidade delitiva;","alternatividade."]'::jsonb,
'E',
'Nos crimes de ação múltipla (ou de conteúdo variado), em que o tipo descreve diversos núcleos verbais, a prática de mais de uma conduta no mesmo contexto, contra o mesmo objeto, caracteriza crime único por força do princípio da alternatividade. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Noções de Direito Penal',
'Existem tipos penais em que o legislador, ao descrever a conduta, equipara a forma tentada à consumada, prevendo a mesma pena tanto para quem consuma quanto para quem apenas tenta praticar o crime (como no caso em que o tipo pune "praticar ou tentar praticar" determinada conduta). Tais delitos são denominados crimes de:',
'',
'',
'["mera conduta;","perigo abstrato;","consumação antecipada por natureza culposa;","empreendimento (ou de atentado);","dano eventual."]'::jsonb,
'D',
'Os crimes de empreendimento (ou de atentado) são aqueles em que o próprio tipo penal equipara a conduta tentada à consumada, cominando-lhes a mesma pena, de modo que não se admite a figura da tentativa como causa de diminuição. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Noções de Direito Penal',
'Um agente, com intenção de matar a vítima, aplicou-lhe golpes que a levaram ao estado de inconsciência. Supondo-a morta, lançou o corpo em um rio para ocultá-lo, vindo a vítima a falecer, de fato, por afogamento. Acerca desse quadro, é correto afirmar que se trata de:',
'',
'',
'["erro sobre a pessoa, respondendo o agente por tentativa;","crime impossível, por absoluta impropriedade do objeto;","aberratio ictus, com unidade de resultado;","desistência voluntária seguida de crime culposo;","dolo geral (ou erro sucessivo), respondendo o agente por homicídio doloso consumado."]'::jsonb,
'E',
'Trata-se do chamado dolo geral (aberratio causae ou erro sucessivo): o agente, querendo matar, realiza uma primeira conduta que supõe ter causado a morte e, em seguida, pratica segunda conduta (lançar o corpo no rio) que efetivamente mata a vítima. O erro sobre o nexo causal é irrelevante, respondendo o agente por homicídio doloso consumado. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Noções de Direito Penal',
'O iter criminis (caminho do crime) compreende fases interna e externa. Integra a fase interna do iter criminis, não punível por si só, a etapa de:',
'',
'',
'["execução;","consumação;","resolução (cogitação e deliberação interna do agente);","exaurimento;","preparação materializada em atos externos."]'::jsonb,
'C',
'A fase interna do iter criminis corresponde à cogitação/resolução, que ocorre na mente do agente (ideação e deliberação), não sendo punível. As fases externas são a preparação, a execução e a consumação (além do eventual exaurimento). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Noções de Direito Penal',
'Hélios, com intenção de matar, desferiu diversas facadas em Eros, atingindo-o em regiões vitais e esgotando os atos de execução que pretendia praticar. Em seguida, por circunstâncias alheias à sua vontade e à vista da aproximação de terceiros, Hélios cessou a agressão e acabou socorrendo a vítima, que sobreviveu. Diante desse quadro, é correto afirmar que Hélios responde por:',
'',
'',
'["desistência voluntária, respondendo apenas pelos atos já praticados;","arrependimento eficaz, com exclusão da tentativa;","arrependimento posterior, com redução de pena;","crime tentado (homicídio tentado), pois o resultado morte não se produziu por circunstâncias alheias à sua vontade;","fato atípico, por ausência de resultado."]'::jsonb,
'D',
'A desistência voluntária e o arrependimento eficaz pressupõem que o agente, voluntariamente, interrompa a execução ou impeça o resultado. No caso, Hélios já havia esgotado os atos executórios que pretendia e cessou a conduta por circunstâncias alheias à sua vontade (aproximação de terceiros); o resultado morte não se produziu por fatores externos. Logo, responde por homicídio tentado (art. 14, II, do CP). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Noções de Direito Penal',
'Perseu, pretendendo subtrair um aparelho celular, apoderou-se da bolsa de uma vítima na qual acreditava estar o aparelho. Ao abri-la posteriormente, constatou que não havia celular, mas outros bens de valor, dos quais se apropriou. Acerca desse fato, é correto afirmar que Perseu:',
'',
'',
'["não responde por crime algum, por erro sobre o objeto;","responde por furto, pois o erro sobre o objeto material é acidental e irrelevante, tendo subtraído coisa alheia móvel;","responde por crime impossível, por impropriedade absoluta do objeto;","responde apenas por tentativa de furto;","deve ser absolvido por atipicidade da conduta."]'::jsonb,
'A',
'O erro sobre o objeto (error in objecto) é erro acidental e irrelevante para a tipificação: Perseu quis e efetivamente subtraiu coisa alheia móvel, consumando o furto (art. 155 do CP), independentemente de o bem ser outro que não o pretendido. Pelo gabarito oficial, a alternativa correta é a letra A, que afirma a responsabilidade por furto diante da irrelevância do erro acidental sobre o objeto.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Noções de Direito Penal',
'Três agentes combinaram a prática de um furto em uma residência. Durante a execução, um deles, por iniciativa própria e sem o conhecimento dos demais, matou o vigia do local para assegurar a subtração. Acerca da responsabilidade dos agentes que haviam combinado apenas o furto, é correto afirmar que:',
'',
'',
'["todos respondem igualmente por latrocínio, por força da teoria monista absoluta;","respondem pelo crime menos grave que quiseram praticar (furto), aplicando-se a cooperação dolosamente distinta, aumentada a pena se o resultado mais grave era previsível;","respondem por homicídio culposo;","não respondem por crime algum, por ausência de dolo;","respondem por latrocínio na forma tentada."]'::jsonb,
'B',
'Aplica-se a regra da cooperação dolosamente distinta (art. 29, §2º, do CP): quando algum dos concorrentes quis participar de crime menos grave, ser-lhe-á aplicada a pena deste, aumentada até a metade se o resultado mais grave era previsível. Assim, os que combinaram o furto respondem por furto, não pelo latrocínio praticado isoladamente por outro agente. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Noções de Direito Penal',
'Calíope, com uma única ação, efetuou disparo de arma de fogo contra Erato, com a intenção de matá-lo. O projétil, após atingir Erato, perfurou também Euterpe, que estava atrás da vítima, vindo ambos a falecer. Considerando que havia desígnios autônomos ou não, mas tratando-se de uma única conduta com dois resultados, é correto afirmar que, em regra, Calíope responde em:',
'',
'',
'["concurso material;","crime único, por aberratio ictus;","concurso formal (uma só conduta e dois ou mais resultados);","concurso aparente de normas;","crime continuado."]'::jsonb,
'C',
'Uma única conduta (um disparo) que produz dois resultados (duas mortes) caracteriza, em regra, o concurso formal (art. 70 do CP): o agente, mediante uma só ação, pratica dois ou mais crimes. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Noções de Direito Penal',
'Eros, após ingerir voluntariamente grande quantidade de bebida alcoólica, embriagou-se e, nesse estado, agrediu sua companheira. Acerca dos efeitos dessa embriaguez voluntária e não preordenada sobre a responsabilidade penal, é correto afirmar que:',
'',
'',
'["a embriaguez voluntária exclui a imputabilidade e isenta Eros de pena;","a embriaguez voluntária reduz a pena pela metade, como atenuante obrigatória;","a embriaguez voluntária ou culposa, pela teoria da actio libera in causa, não exclui a imputabilidade penal, respondendo o agente pelo crime;","a embriaguez transforma o crime doloso em culposo;","a embriaguez afasta o dolo e configura caso fortuito."]'::jsonb,
'C',
'Pelo art. 28, II, do CP, a embriaguez voluntária ou culposa, pelo álcool ou substância de efeitos análogos, não exclui a imputabilidade penal (teoria da actio libera in causa). Somente a embriaguez completa e proveniente de caso fortuito ou força maior pode isentar de pena. Assim, Eros responde pelo crime. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Noções de Direito Penal',
'Édipo agrediu fisicamente sua mãe, que, além do vínculo familiar, exerce a função de juíza de direito, no âmbito doméstico e em razão de desavença pessoal. Acerca da incidência da Lei nº 11.340/2006 (Lei Maria da Penha), é correto afirmar que:',
'',
'',
'["a lei incide, pois configura violência doméstica e familiar contra a mulher, baseada no gênero, independentemente da profissão da vítima;","a lei não incide, por ser a vítima autoridade pública;","a lei somente incide se a vítima for financeiramente dependente do agressor;","a lei não incide, pois exige coabitação entre agressor e vítima;","a lei incide apenas quando o agressor for o cônjuge da vítima."]'::jsonb,
'A',
'A Lei Maria da Penha (Lei nº 11.340/2006) tutela a mulher vítima de violência doméstica e familiar baseada no gênero, no âmbito das relações domésticas, familiares ou de afeto, independentemente de coabitação, de dependência financeira ou da profissão da vítima. A agressão da mãe pelo filho, no contexto familiar, atrai a sua incidência. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO PROCESSUAL PENAL (Questoes 76 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Noções de Direito Processual Penal',
'A Lei nº 13.245/2016 alterou o Estatuto da OAB para reforçar as prerrogativas dos advogados no âmbito da investigação criminal. Com base nessa alteração, é correto afirmar que:',
'',
'',
'["o advogado está proibido de ter acesso aos autos de inquérito policial, ainda que concluídos;","a presença do advogado é dispensável em qualquer ato do inquérito;","o advogado somente pode atuar após o oferecimento da denúncia;","é direito do advogado assistir a seus clientes investigados durante a apuração de infrações, sob pena de nulidade absoluta do respectivo interrogatório ou depoimento e, subsequentemente, de todos os elementos probatórios dele decorrentes ou derivados;","o acesso do advogado aos autos depende sempre de autorização judicial prévia."]'::jsonb,
'D',
'A Lei nº 13.245/2016 incluiu, no art. 7º do Estatuto da OAB, o direito do advogado de assistir a seus clientes investigados durante a apuração de infrações, sob pena de nulidade absoluta do respectivo interrogatório ou depoimento e, subsequentemente, de todos os elementos investigatórios e probatórios dele decorrentes ou derivados, direta ou indiretamente. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Noções de Direito Processual Penal',
'A Lei nº 13.964/2019 (Pacote Anticrime) introduziu no Código de Processo Penal regra sobre a atuação de defensor para o investigado. Nos termos dessa previsão, o investigado, agente de segurança pública, terá direito a defensor nos casos de uso da força letal:',
'',
'',
'["somente após a sua condenação em primeira instância;","apenas quando houver pedido expresso do Ministério Público;","exclusivamente nas infrações de menor potencial ofensivo;","apenas se não for servidor público;","praticados no exercício profissional, de forma consumada ou tentada, incluídas as situações de legítima defesa, estrito cumprimento de dever legal e exercício do cargo ou função."]'::jsonb,
'E',
'A Lei nº 13.964/2019 incluiu o art. 14-A no CPP, assegurando que, nos casos em que servidores das Forças Armadas e dos órgãos de segurança pública figurem como investigados em inquéritos por fatos relacionados ao uso da força letal praticados no exercício profissional, de forma consumada ou tentada, o indiciado poderá constituir defensor. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Noções de Direito Processual Penal',
'Acerca do uso de algemas, segundo o entendimento consolidado (Súmula Vinculante nº 11 do STF) e a legislação de regência, é correto afirmar que o emprego de algemas é lícito:',
'',
'',
'["apenas em casos de resistência e de fundado receio de fuga ou de perigo à integridade física própria ou alheia, por parte do preso ou de terceiros, justificada a excepcionalidade por escrito;","em qualquer prisão, como regra de segurança;","somente mediante autorização judicial prévia e específica;","apenas em crimes hediondos;","exclusivamente no interior de estabelecimentos prisionais."]'::jsonb,
'A',
'A Súmula Vinculante nº 11 do STF admite o uso de algemas apenas em casos de resistência e de fundado receio de fuga ou de perigo à integridade física própria ou alheia, por parte do preso ou de terceiros, justificada a excepcionalidade por escrito, sob pena de responsabilidade e de nulidade do ato. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Noções de Direito Processual Penal',
'Em intervenção policial regular, houve oposição à ação dos agentes, resultando lesões e morte de um dos opositores. Ao presidir a apuração dos fatos, incumbe à autoridade policial, entre outras providências, verificar se:',
'',
'',
'["os agentes agiram por conta própria, sem comando;","a vítima possuía antecedentes criminais;","o executor da intervenção e seus auxiliares usaram moderadamente dos meios necessários para repelir a injusta oposição ou agressão;","houve autorização judicial prévia para a intervenção;","a imprensa foi comunicada do fato."]'::jsonb,
'B',
'Diante de lesão ou morte decorrente de oposição à intervenção policial, cabe à autoridade policial apurar, entre outros aspectos, se o executor e seus auxiliares usaram moderadamente dos meios necessários para repelir a injusta oposição ou agressão (contornos das excludentes de ilicitude, como legítima defesa e estrito cumprimento do dever legal). A alternativa que reflete esse comando corresponde ao gabarito oficial (letra B).'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Noções de Direito Processual Penal',
'Em regra, o inquérito policial é presidido por delegado de polícia. Entre as exceções admitidas no ordenamento, é possível que o procedimento investigatório correspondente ao inquérito seja presidido por autoridade diversa do delegado de polícia no caso de:',
'',
'',
'["crimes eleitorais, presididos por promotor de justiça;","crimes de competência do júri, presididos pelo juiz;","inquérito policial militar, presidido por oficial das Forças Armadas ou das forças militares estaduais;","crimes falimentares, presididos pelo administrador judicial;","contravenções penais, presididas por conciliador."]'::jsonb,
'D',
'O inquérito policial militar (IPM) constitui exceção à presidência pelo delegado de polícia, sendo instaurado e presidido por oficial das Forças Armadas ou das forças militares estaduais, conforme a legislação castrense. A alternativa que indica o IPM presidido por oficial militar corresponde ao gabarito oficial (letra D).'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Noções de Direito Processual Penal',
'A distribuição das atribuições entre os órgãos da polícia judiciária, para fins de condução das investigações, costuma observar critérios predeterminados. Entre esses critérios, destacam-se os critérios:',
'',
'',
'["temporal e pessoal;","hierárquico e funcional;","econômico e social;","político e administrativo;","territorial e material (em razão do lugar e da natureza da infração)."]'::jsonb,
'E',
'A repartição de atribuições entre os órgãos da polícia judiciária é feita, usualmente, segundo critérios territorial (circunscrição/local do fato) e material (natureza ou matéria da infração, com delegacias especializadas). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Noções de Direito Processual Penal',
'Em determinada investigação na qual foi celebrado acordo de colaboração premiada, discute-se até que momento, em regra, deve ser mantido o sigilo do inquérito e do acordo. Nos termos da Lei nº 12.850/2013, o acesso aos autos e o conteúdo do acordo tornam-se públicos, em regra, a partir:',
'',
'',
'["da instauração do inquérito policial;","do indiciamento do colaborador;","da homologação do acordo pelo juiz;","do recebimento da denúncia;","do trânsito em julgado da sentença."]'::jsonb,
'D',
'Nos termos da Lei nº 12.850/2013, o acordo de colaboração premiada e os depoimentos do colaborador permanecem sigilosos até o recebimento da denúncia, momento em que, em regra, o sigilo é levantado. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Noções de Direito Processual Penal',
'Afrodite subtraiu bens de Ares, de quem é ex-cônjuge, estando ambos em situação de guarda compartilhada dos filhos. Considerando as disposições do Código Penal sobre os crimes patrimoniais praticados entre determinados parentes e as exceções à imunidade, acerca da ação penal, é correto afirmar que:',
'',
'',
'["a ação penal é incondicionada, pois o furto entre ex-cônjuges é sempre perseguível de ofício;","a ação penal é pública condicionada à representação do ofendido, por força da relação de parentesco por afinidade/situação prevista no Código Penal;","há isenção total de pena, ficando o fato impune;","a ação penal é privada personalíssima;","não há crime, por ausência de dolo."]'::jsonb,
'B',
'O Código Penal prevê, no art. 182, hipóteses em que, nos crimes patrimoniais sem violência ou grave ameaça, praticados entre determinados parentes (como cônjuge separado, irmão, tio ou sobrinho que coabita), a ação penal passa a ser pública condicionada à representação. Diante da relação entre os envolvidos, a ação penal fica condicionada à representação do ofendido. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Noções de Direito Processual Penal',
'Entre as diligências que a autoridade policial pode determinar durante a investigação, com fundamento no art. 6º do Código de Processo Penal, independentemente de autorização judicial, inclui-se:',
'',
'',
'["proceder à reprodução simulada dos fatos, desde que não contrarie a moralidade ou a ordem pública;","determinar a interceptação telefônica do investigado;","decretar a prisão preventiva do indiciado;","autorizar a busca domiciliar durante a noite sem mandado;","determinar o sequestro de bens imóveis."]'::jsonb,
'A',
'O art. 6º do CPP arrola diligências que a autoridade policial deve ou pode realizar, entre elas, proceder à reprodução simulada dos fatos, desde que esta não contrarie a moralidade ou a ordem pública (inciso VI). Medidas como interceptação, prisão preventiva, busca domiciliar noturna e sequestro de imóveis dependem de autorização judicial. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Noções de Direito Processual Penal',
'A campanha "Sinal Vermelho contra a Violência Doméstica" permite que a vítima sinalize pedido de ajuda por meio de um "X", geralmente desenhado na palma da mão com batom, exibido a terceiros (por exemplo, em farmácias). Diante de uma vítima que apresenta esse sinal, a conduta adequada do agente/estabelecimento é:',
'',
'',
'["de forma reservada, anotar nome, telefone e endereço da vítima e eventuais informações do agressor, acionar a Polícia Militar pelo número 190 e, se possível, conduzir a vítima a um espaço reservado até a chegada do socorro;","ignorar o sinal, por não ter valor jurídico;","expor publicamente a situação para constranger o agressor;","exigir que a vítima registre imediatamente a ocorrência sozinha;","encaminhar a vítima diretamente ao agressor para conciliação."]'::jsonb,
'A',
'No protocolo da campanha Sinal Vermelho, ao identificar o "X", o atendente deve, de forma reservada, colher dados da vítima (nome, telefone, endereço) e informações sobre o agressor, acionar a Polícia Militar pelo 190 e, quando possível, conduzir a vítima a um local reservado e seguro até a chegada do socorro, preservando sua integridade. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Noções de Direito Processual Penal',
'No atendimento a situação de violência doméstica e familiar contra a mulher com risco atual ou iminente à vida ou à integridade física, a Lei nº 11.340/2006 prevê, entre as providências que a autoridade policial deverá adotar, a de:',
'',
'',
'["aguardar ordem judicial para qualquer medida de proteção;","realizar a conciliação entre a vítima e o agressor;","fornecer transporte para a ofendida e seus dependentes para abrigo ou local seguro, quando houver risco de vida;","determinar que a vítima permaneça na residência com o agressor;","encaminhar o caso ao juizado especial criminal para transação penal."]'::jsonb,
'C',
'Entre as providências da autoridade policial previstas na Lei Maria da Penha (art. 11), está a de fornecer transporte para a ofendida e seus dependentes para abrigo ou local seguro, quando houver risco de vida, além de garantir proteção policial, encaminhá-la ao hospital/IML e acompanhá-la para retirada de pertences. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Noções de Direito Processual Penal',
'Em determinada investigação, constatou-se que alguns depoimentos colhidos não foram formalmente encartados nos autos no momento oportuno, discutindo-se a ocorrência de quebra da cadeia de custódia da prova. Considerando a existência de pluralidade de fontes probatórias independentes a confirmar os fatos, é correto afirmar que:',
'',
'',
'["toda a prova produzida é absolutamente nula, de forma automática;","não houve quebra da cadeia de custódia capaz de contaminar a prova, diante da pluralidade de fontes probatórias independentes, devendo a eventual irregularidade ser aferida em conjunto com o acervo probatório;","a cadeia de custódia é irrelevante no processo penal brasileiro;","a prova deve ser automaticamente desentranhada, sem análise do conjunto;","a nulidade atinge apenas a prova pericial."]'::jsonb,
'B',
'A quebra da cadeia de custódia não gera, automática e isoladamente, a nulidade de todo o acervo. Havendo pluralidade de fontes probatórias independentes a confirmar os fatos, eventuais irregularidades devem ser avaliadas em conjunto com as demais provas, podendo não comprometer o conjunto probatório. A alternativa que reflete esse entendimento corresponde ao gabarito oficial (letra B).'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Noções de Direito Processual Penal',
'Em um auto de prisão em flagrante, verificou-se irregularidade relativa à comunicação do direito ao silêncio ao preso no momento de seu interrogatório. Considerando a jurisprudência dominante, essa irregularidade, por si só, acarreta, em regra:',
'',
'',
'["a atipicidade da conduta imputada ao preso;","a extinção da punibilidade;","nulidade relativa, dependente da demonstração de prejuízo, podendo ser sanada e não contaminando necessariamente toda a prisão;","a soltura imediata e o arquivamento do inquérito;","a prisão perpétua do agente."]'::jsonb,
'C',
'A ausência ou irregularidade na comunicação do direito ao silêncio, isoladamente, tende a ser tratada como nulidade relativa, cuja decretação depende da demonstração de efetivo prejuízo (pas de nullité sans grief), sem contaminar automaticamente todo o auto de prisão em flagrante. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Noções de Direito Processual Penal',
'A Constituição Federal estabelece diversas garantias ao preso no âmbito do processo penal. Entre essas garantias, inclui-se o direito de o preso:',
'',
'',
'["ser interrogado sem a presença de advogado, para agilizar a investigação;","permanecer incomunicável por tempo indeterminado;","não ter direito a qualquer informação sobre os responsáveis por sua prisão;","ter assegurada a identificação dos responsáveis por sua prisão ou por seu interrogatório policial;","ser mantido preso sem comunicação ao juiz competente."]'::jsonb,
'D',
'Entre as garantias do art. 5º da CF/88 (inciso LXIV), assegura-se ao preso a identificação dos responsáveis por sua prisão ou por seu interrogatório policial, além do direito ao silêncio, à assistência da família e de advogado e à comunicação da prisão ao juiz e à família. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Noções de Direito Processual Penal',
'No curso de uma busca e apreensão regularmente autorizada, surgiram indícios de envolvimento de autoridade detentora de foro por prerrogativa de função. Diante disso, a providência processual adequada, segundo a jurisprudência, é, em regra:',
'',
'',
'["o prosseguimento normal da investigação pela autoridade policial, sem qualquer comunicação;","a paralisação das investigações quanto à autoridade e a remessa imediata dos autos ao tribunal competente em razão do foro por prerrogativa de função, para deliberação sobre o prosseguimento;","a decretação automática da prisão da autoridade;","a destruição das provas colhidas;","a aplicação de transação penal à autoridade."]'::jsonb,
'B',
'Revelando a diligência o envolvimento de autoridade com foro por prerrogativa de função, impõe-se, em regra, a imediata remessa dos autos ao tribunal competente, a quem cabe deliberar sobre o prosseguimento das investigações, preservando a competência originária. A alternativa que reflete essa solução corresponde ao gabarito oficial (letra B).'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS BASICOS DE INFORMATICA (Questoes 91 a 100)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 91, 'Conhecimentos Básicos de Informática',
'No LibreOffice Calc, um usuário digitou uma fórmula na célula D10. Entre as fórmulas a seguir, aquela que, digitada na célula D10, provocaria um erro de referência circular é:',
'',
'',
'["=SOMA(A1:C9);","=A1+B1+C1;","=SOMA(A2:F21);","=MÉDIA(E1:E9);","=A9*B9."]'::jsonb,
'C',
'Ocorre referência circular quando a fórmula faz referência, direta ou indiretamente, à própria célula em que está inserida. A fórmula =SOMA(A2:F21), digitada em D10, inclui no intervalo somado a própria célula D10 (que está dentro do bloco A2:F21), gerando referência circular. As demais não contêm D10 em seus intervalos. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 92, 'Conhecimentos Básicos de Informática',
'No Microsoft Excel, as colunas da planilha são identificadas por letras (A, B, C, ...). Após a coluna Z, a identificação prossegue com AA, AB e assim por diante. Dessa forma, a coluna que antecede imediatamente a coluna AA é a coluna:',
'',
'',
'["A;","Y;","Z;","AB;","BA."]'::jsonb,
'C',
'No Excel, a sequência de colunas vai de A até Z (26 colunas) e, em seguida, retoma com AA, AB, AC... Portanto, a coluna imediatamente anterior a AA é a coluna Z. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 93, 'Conhecimentos Básicos de Informática',
'No Microsoft Excel, a célula A1 contém o valor 5 e a célula A2 contém a fórmula =A1+7. Em seguida, a célula A2 foi copiada (com alça de preenchimento) para o intervalo A3:A100. Considerando as referências relativas, o valor exibido na célula A99 será:',
'',
'',
'["680;","684;","691;","698;","705."]'::jsonb,
'C',
'Com referência relativa, cada célula soma 7 ao valor da célula imediatamente acima: A2 = A1+7 = 12, A3 = A2+7 = 19, e assim sucessivamente. O valor forma uma progressão aritmética começando em A1 = 5, de razão 7, de modo que a célula da linha n vale 5 + 7×(n−1). Para n = 99: 5 + 7×98 = 5 + 686 = 691. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 94, 'Conhecimentos Básicos de Informática',
'A ferramenta Limpeza de Disco do Windows 10 auxilia a liberar espaço de armazenamento removendo arquivos desnecessários. Entre as categorias de arquivos a seguir, aquela que NÃO é removida pela ferramenta Limpeza de Disco é:',
'',
'',
'["os arquivos pessoais salvos pelo usuário na Área de Trabalho;","os arquivos temporários da Internet;","os arquivos da Lixeira;","os arquivos de log de instalação;","as miniaturas (thumbnails)."]'::jsonb,
'A',
'A Limpeza de Disco atua sobre arquivos temporários, cache de Internet, Lixeira, logs de instalação, miniaturas e similares. Ela não exclui arquivos pessoais salvos pelo usuário (como documentos na Área de Trabalho), que permanecem intactos. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 95, 'Conhecimentos Básicos de Informática',
'Acerca da Barra de Tarefas do Windows 10, considere as afirmativas a seguir. I. A Barra de Tarefas só pode ser posicionada na parte inferior da tela, não podendo ser movida para as laterais ou para o topo. II. É possível fixar programas na Barra de Tarefas para acesso rápido. III. A Barra de Tarefas exibe os aplicativos em execução e permite alternar entre janelas abertas. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'D',
'A afirmativa I é falsa: a Barra de Tarefas pode ser movida para as laterais e para o topo da tela (quando desbloqueada). As afirmativas II (fixar programas) e III (exibir aplicativos em execução e alternar entre janelas) estão corretas. Logo, apenas II e III. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 96, 'Conhecimentos Básicos de Informática',
'Acerca de criptografia e compactação de dados, considere as afirmativas a seguir. I. A compactação de arquivos tem como objetivo principal garantir a confidencialidade das informações. II. A criptografia transforma a informação de modo que somente quem possua a chave adequada consiga acessá-la em sua forma original. III. A compactação reduz o tamanho dos arquivos, facilitando o armazenamento e a transmissão. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'D',
'A afirmativa I é falsa: a compactação visa reduzir o tamanho dos arquivos, não garantir confidencialidade (quem garante sigilo é a criptografia). As afirmativas II (criptografia depende de chave para acesso ao conteúdo original) e III (compactação reduz tamanho e facilita armazenamento/transmissão) estão corretas. Logo, apenas II e III. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 97, 'Conhecimentos Básicos de Informática',
'Diversas pessoas trabalham, em conjunto, na elaboração de um mesmo relatório no Microsoft Word, e cada participante precisa que suas inserções, exclusões e demais modificações fiquem registradas e visíveis para os demais, podendo ser aceitas ou rejeitadas posteriormente. O recurso do Word que atende a essa necessidade é:',
'',
'',
'["o Controle de Alterações, disponível na guia Revisão;","o Pincel de Formatação, na guia Página Inicial;","o recurso Localizar e Substituir;","a Quebra de Seção, na guia Layout;","o modo de exibição Leitura."]'::jsonb,
'A',
'O recurso Controle de Alterações (guia Revisão) registra todas as inserções, exclusões e formatações feitas no documento, identificando o autor e permitindo que cada alteração seja posteriormente aceita ou rejeitada, o que o torna adequado à edição colaborativa. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 98, 'Conhecimentos Básicos de Informática',
'Um usuário enviou um e-mail colocando o endereço M1 no campo "Para", o endereço M2 no campo "Cc" (com cópia) e o endereço M3 no campo "Cco" (com cópia oculta). Acerca do que cada destinatário consegue visualizar quanto aos demais, é correto afirmar que:',
'',
'',
'["M1 sabe que M3 recebeu o e-mail;","M2 sabe que M3 recebeu o e-mail;","M1 e M2 sabem que M3 recebeu o e-mail;","nenhum destinatário sabe quem mais recebeu a mensagem;","M3 sabe que M1 recebeu o e-mail."]'::jsonb,
'E',
'Os destinatários dos campos "Para" (M1) e "Cc" (M2) são visíveis a todos os que recebem a mensagem, mas o destinatário em "Cco" (M3) fica oculto para M1 e M2. Já M3, por ter recebido a mensagem, enxerga os campos "Para" e "Cc", portanto sabe que M1 (e também M2) receberam o e-mail. Logo, M3 sabe que M1 recebeu. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 99, 'Conhecimentos Básicos de Informática',
'No Microsoft Word, há um recurso que permite copiar a formatação (fonte, cor, tamanho, estilo etc.) de um trecho de texto e aplicá-la rapidamente a outro trecho, sem alterar o conteúdo. Esse recurso é:',
'',
'',
'["o Controle de Alterações;","o Estilo Normal;","a Quebra de Página;","o Pincel de Formatação;","o Mala Direta."]'::jsonb,
'D',
'O Pincel de Formatação (guia Página Inicial) permite copiar a formatação de um local do documento e aplicá-la a outro, sem modificar o conteúdo do texto de destino. Para aplicar a formatação em vários trechos, basta dar um clique duplo na ferramenta. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 100, 'Conhecimentos Básicos de Informática',
'Em uma pesquisa no Google, um usuário escreveu, em buscas distintas, os seguintes termos: (1) furadeira site:youtube.com; (2) notebook $50..$100; (3) "maior time do mundo"; (4) agua OR H2O; (5) www.bb.com.br; (6) jaguar -automovel. Considerando o uso de símbolos ou palavras com função específica de refinar a pesquisa (operadores de busca), o número de buscas em que foi utilizado um operador com função exclusiva de refinamento é:',
'',
'',
'["dois;","três;","quatro;","cinco;","seis."]'::jsonb,
'D',
'ATENÇÃO: o gabarito oficial desta questão (nº 100) não constava da lista fornecida; a resposta aqui adotada (letra D) é a tecnicamente mais defensável e deve ser confirmada com o gabarito oficial. Analisando cada busca: (1) site: é operador de refinamento; (2) $50..$100 (intervalo numérico com ..) é operador de refinamento; (3) "..." (aspas, busca exata) é operador de refinamento; (4) OR é operador de refinamento; (6) o sinal de menos (-) para excluir termo é operador de refinamento. Já (5) www.bb.com.br é apenas um endereço de site digitado, sem símbolo/palavra operadora. Assim, cinco das seis buscas utilizam operadores de refinamento, o que corresponde à letra D.'
from public.exams where slug = 'pc-rj-2024-investigador'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
