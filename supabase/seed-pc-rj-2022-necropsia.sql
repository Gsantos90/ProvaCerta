-- Seed: Policia Civil do Estado do Rio de Janeiro 2022 - Auxiliar Policial de Necropsia de 3a Classe
-- Banca FGV - Prova de Conhecimentos - Nivel Fundamental - Tipo 1 (Branca) - 60 questoes
-- Gabarito oficial (Tipo 1):
--   1-E  2-A  3-C  4-C  5-D  6-E  7-A  8-C  9-C 10-D
--  11-E 12-B 13-D 14-D 15-E 16-A 17-E 18-A 19-E 20-B
--  21-A 22-C 23-B 24-C 25-D 26-E 27-A 28-C 29-D 30-E
--  31-B 32-D 33-A 34-A 35-C 36-C 37-E 38-B 39-A 40-E
--  41-C 42-C 43-D 44-C 45-E 46-D 47-D 48-C 49-B 50-D
--  51-A 52-D 53-B 54-D 55-B 56-E 57-D 58-B 59-C 60-B

insert into public.exams (slug, title, source, year)
values ('pc-rj-2022-necropsia', 'Polícia Civil RJ 2022 - Auxiliar Policial de Necropsia de 3ª Classe', 'pc', '2022')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Um casal pretendia assistir a determinado filme, mas, à porta do cinema, havia uma fila incomensurável de pessoas. Diante disso, o marido declarou: "Puxa! Eu esqueci que eram férias das crianças!". Com essa frase, o marido indica que:',
'',
'',
'["não gostaria de ter vindo em função do grande número de crianças na plateia;","arrependeu-se de não ter trazido o filho para o cinema;","lembrou-se de que o filme a ser assistido era destinado especialmente ao público infantil;","se enganou na opção do filme a ser assistido em função de informações incompletas dos jornais;","entendeu a razão do grande número de pessoas nas filas."]'::jsonb,
'E',
'Ao lembrar que estava em período de férias escolares, o marido explica (para si mesmo) o motivo da fila enorme: as férias trazem muita gente ao cinema. A frase indica que ele compreendeu a razão da aglomeração. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'As palavras e expressões corteses apresentam valor positivo, mas também podem ter conotações negativas. A situação abaixo que mostra uma conotação negativa é:',
'',
'',
'["Por favor, bata na porta antes de entrar!","Por favor, tire os sapatos e fique à vontade;","Por favor, use a minha camisa na festa;","Por favor, qual o seu perfume?","Por favor, ajude-me a guardar a mala."]'::jsonb,
'A',
'Embora todas as frases usem "por favor", em "Por favor, bata na porta antes de entrar!" a cortesia encobre uma repreensão/ordem (crítica a um comportamento inadequado do interlocutor), o que lhe confere conotação negativa. As demais exprimem gentileza/oferta/pedido neutro. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'Um Manual de Redação exemplifica um dos problemas mais recorrentes na escrita: "Alexandre, que é o novo coordenador do grupo, que vem a ser sobrinho da diretora, está desenvolvendo um novo projeto, que é o de diminuir o intervalo do lanche, para sairmos mais cedo." Esse problema de escrita é:',
'',
'',
'["o excesso de explicações;","a falta de paralelismo;","o uso exagerado de \"quês\";","a pobreza vocabular;","a mistura de língua popular com a culta."]'::jsonb,
'C',
'O período repete seguidamente a palavra "que" (coordenador do grupo, que..., que vem a ser..., projeto, que é...), caracterizando o chamado "queísmo" — o uso exagerado de "quês", problema estilístico que empobrece e trava a leitura. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'Um cliente pede explicações sobre a "sopa de ninhos de andorinha"; o garçom explica que se trata de andorinhas marinhas e que a sopa é feita com as algas que a ave recolhe no mar e deposita no ninho. O cliente comenta: "Ainda bem!". O comentário do cliente indica que ele estava preocupado com:',
'',
'',
'["a demora na preparação do prato;","o alto custo da refeição;","a utilização de elementos estranhos;","o futuro das aves;","o visual negativo da comida."]'::jsonb,
'C',
'O "Ainda bem!" revela alívio: o cliente temia que a sopa fosse feita de material repugnante/estranho (o próprio ninho ou algo nojento). Ao saber que é feita de algas, tranquiliza-se. A preocupação era com a utilização de elementos estranhos na comida. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'A conjunção MAS costuma indicar contradição entre o conteúdo da primeira afirmação e o da segunda. A frase abaixo em que essa conjunção tem valor diferente é:',
'',
'',
'["Tem muito dinheiro, mas é muito infeliz;","O filme é bom, mas um pouco chato;","O time jogou bem, mas perdeu;","Ficou triste, mas quem não ficaria...;","A prova estava fácil, mas obtive nota ruim."]'::jsonb,
'D',
'Nas opções A, B, C e E, o "mas" opõe duas ideias contrárias (adversidade). Em "Ficou triste, mas quem não ficaria...", o "mas" não introduz uma oposição à primeira ideia; ao contrário, reforça/justifica a tristeza (equivale a "e, afinal, quem não ficaria?"), tendo valor diferente do adversativo típico. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'Entre os empregos do pretérito imperfeito do indicativo há um que expressa uma relação de cortesia, como no seguinte caso:',
'',
'',
'["Francisco tinha uma voz bonita;","Enquanto dormia, os ladrões roubaram a casa;","Eu pensava em ir à escola hoje;","Olhe onde estava a minha carteira;","Boa tarde, o que queria?"]'::jsonb,
'E',
'"Boa tarde, o que queria?" emprega o imperfeito ("queria") com valor de cortesia (imperfeito de polidez), suavizando a pergunta ao cliente, no lugar do presente "o que quer?". Nas demais, o imperfeito tem valor durativo/habitual ou de simultaneidade no passado. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'Anúncio de um programa de rádio: "Acompanhe nossa programação! Falamos de coração para coração, para os que possuem sentimentos e têm cérebro!". Em outras palavras, a rádio:',
'',
'',
'["trata de temas sentimentais para gente inteligente;","procura abordar temas comuns em nossas vidas;","tenta recordar fatos amorosos da vida dos ouvintes;","incentiva a participação de depoimentos pessoais;","busca despertar sentimentos nos possíveis ouvintes."]'::jsonb,
'A',
'"De coração para coração" remete ao campo dos sentimentos; "para os que possuem sentimentos e têm cérebro" dirige-se a um público ao mesmo tempo sensível e inteligente. Em outras palavras, a rádio trata de temas sentimentais destinados a gente inteligente. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'Num passeio, alguém pergunta: "Que horas são?". A resposta mais relevante para essa pergunta é:',
'',
'',
'["Não sei, mas estou com uma fome danada;","Deve ser tarde porque o sol já está se pondo;","Ali na esquina, vamos ver no relógio da torre;","Hora de voltar, pois já estou cansado;","Para que ficar preocupado com a hora?"]'::jsonb,
'C',
'Pelo princípio da relevância (cooperação na comunicação), a resposta mais pertinente à pergunta sobre as horas é a que oferece um meio concreto de obter a informação exata: "Ali na esquina, vamos ver no relógio da torre". As demais fogem ao pedido ou dão respostas vagas/evasivas. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'A embalagem de um biscoito mostra: "Biscoitos Vó Mecias / Tradicional sabor mineiro / Estrelinha de castanha". O nome dos biscoitos — Vó Mecias — tem a finalidade de:',
'',
'',
'["indicar qualidade superior do produto;","mostrar que se trata de algo muito antigo;","valorizar a tradição sobre a modernidade;","destacar a origem mineira do produto;","ressaltar o cuidado na elaboração do produto."]'::jsonb,
'C',
'A figura da "Vó" evoca a tradição, o caseiro, o afeto e as receitas antigas passadas de geração em geração. O nome "Vó Mecias" busca justamente valorizar essa tradição (em contraste com o industrial/moderno), associando o produto ao sabor de família. Conforme o gabarito oficial, a resposta é a letra C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'Texto de campanha publicitária: "Gripol – ajuda a conviver com a gripe. Quando você ficar gripado, procure viver bem com ela. Procure aliviar seu mal-estar com Gripol...". O texto da publicidade tem por finalidade:',
'',
'',
'["mostrar a superioridade de Gripol sobre todos os concorrentes;","destacar a eficiência do tratamento com Gripol;","revelar o processo de tratamento utilizado;","convencer o leitor a comprar o medicamento;","indicar a necessidade de conviver harmoniosamente com as moléstias."]'::jsonb,
'D',
'Trata-se de um texto publicitário, cuja finalidade essencial é persuadir o consumidor: todo o enunciado conduz à promoção do produto Gripol, buscando convencer o leitor a comprá-lo. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'O segmento abaixo que exemplifica o tipo de texto denominado instrucional é:',
'',
'',
'["As regras do condomínio estabelecem que os moradores não poderão manter animais de estimação nos apartamentos;","Economize para que, nas próximas férias, possa realizar aquele passeio dos seus sonhos pela Europa;","A cidade estava deserta em função do feriado prolongado e a Prefeitura instruiu a população para que não visitasse os locais de grandes aglomerações;","Todos estão cientes de que a inflação parece estar de volta, ainda que em índices menores;","Uma vez aberta a caixa, conserve-se na geladeira, sendo aconselhável o consumo nos 3 ou 4 dias seguintes."]'::jsonb,
'E',
'O texto instrucional orienta como proceder, por meio de instruções/comandos (verbos no imperativo). "Uma vez aberta a caixa, conserve-se na geladeira, sendo aconselhável o consumo nos 3 ou 4 dias seguintes" dá instruções de uso/conservação, caracterizando o tipo instrucional. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'São famosas as frases que os caminhoneiros escrevem nos para-choques ligadas à sua atividade. A frase abaixo que é desligada dessa profissão é:',
'',
'',
'["Nas curvas do teu corpo capotei meu coração;","O beijo é como cigarro: não sustenta, mas vicia;","Perigo não é cavalo na pista, mas burro na direção;","Paquere todas as mulheres, mas conserve a sua direita;","Estepe e mulher é sempre bom ter de reserva."]'::jsonb,
'B',
'As frases A ("curvas", "capotei"), C ("pista", "direção"), D ("conserve a sua direita") e E ("estepe", "reserva") usam vocabulário ligado a estrada/direção/veículo, típico dos caminhoneiros. Já "O beijo é como cigarro: não sustenta, mas vicia" não tem relação com a atividade de dirigir caminhão. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Portuguesa',
'O provérbio africano abaixo que recomenda prudência aos leitores é:',
'',
'',
'["O silêncio é uma cerca em torno do conhecimento;","Quando dois elefantes brigam, quem sofre é a grama;","A sorte não é como a roupa que se veste e despe;","Não saiba seu sócio de ti mais do que sabes dele;","Papagaio velho não aprende a falar."]'::jsonb,
'D',
'"Não saiba seu sócio de ti mais do que sabes dele" é um conselho de cautela/prudência nas relações: recomenda não se expor demais, não dar ao outro vantagem de informação. É a recomendação de prudência. As demais tratam de outros temas (silêncio, conflitos de poderosos, sorte, velhice). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Portuguesa',
'A conjunção E apresenta predominantemente valor de adição, mas pode ter outros valores. A frase abaixo em que ela mostra valor adversativo, equivalente à ideia de oposição, é:',
'',
'',
'["Quando tenho um pouco de dinheiro, compro livros; se sobrar algum, compro roupas e comida;","Existem duas classes de escritores geniais: os que pensam e os que fazem pensar;","Vocês sabem o que são os críticos? Gente que fracassou na literatura e na arte;","Clássico é um livro que as pessoas elogiam e não leem;","Pinta-se com o coração e a cabeça mais do que com as mãos."]'::jsonb,
'D',
'Em "Clássico é um livro que as pessoas elogiam e não leem", o "e" liga ideias contrárias (elogiar X não ler), equivalendo a "mas" — valor adversativo/de oposição. Nas demais, o "e" tem valor aditivo. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Portuguesa',
'A frase abaixo em que a oração adjetiva destacada foi substituída adequadamente por um adjetivo é:',
'',
'',
'["O crítico de rock é alguém que não sabe escrever, entrevistando gente QUE NÃO SABE FALAR, para gente que não sabe ler / muda;","Sucesso é conseguir o que você quer. Felicidade é gostar DO QUE VOCÊ CONSEGUIU / bem-aceito;","Você não será feliz com mais até ser feliz com O QUE VOCÊ JÁ TEM / comprado;","Felicidade é como uma flor QUE NÃO SE DEVE COLHER / acolhedora;","A felicidade é um bem QUE SE MULTIPLICA ao ser dividido / multiplicado."]'::jsonb,
'E',
'A oração adjetiva "que se multiplica" equivale ao adjetivo "multiplicado(a)" / que se multiplica, substituição que preserva o sentido ("um bem multiplicado ao ser dividido"). Nas demais, o adjetivo proposto não corresponde ao sentido da oração adjetiva (muda, bem-aceito, comprado, acolhedora não traduzem as orações). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Língua Portuguesa',
'"A felicidade é uma bola atrás da qual corremos enquanto rola e que chutamos logo que para." Com esse pensamento, a escritora quer dizer-nos que a felicidade humana:',
'',
'',
'["é um estado transitório em nossas vidas;","depende de nosso estado de espírito;","está sempre presente em nossa existência;","se compara às nossas brincadeiras infantis;","afasta a infelicidade para bem longe."]'::jsonb,
'A',
'A metáfora da bola que perseguimos enquanto rola e chutamos quando para sugere que a felicidade nunca é um estado permanente: buscamo-la quando parece distante e a desprezamos/afastamos quando a alcançamos. Isso traduz a felicidade como estado transitório, instável. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Língua Portuguesa',
'A opção em que as duas formas abaixo (uma com verbo, outra nominal) mostram significados DIFERENTES é:',
'',
'',
'["Qual a utilidade do martelo? / Para que serve o martelo?","Qual o seu endereço? / Onde o senhor reside?","Qual o trajeto do ônibus? / Por onde passa o ônibus?","Qual a finalidade da viagem? / Para que o senhor viaja?","Qual o seu nome? / Como o senhor se identifica?"]'::jsonb,
'E',
'Em A, B, C e D, as duas formas perguntam a mesma coisa (utilidade/função, endereço, trajeto, finalidade). Em E, "Qual o seu nome?" pergunta o nome, mas "Como o senhor se identifica?" pode indagar o modo/documento de identificação — significados distintos. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Língua Portuguesa',
'Elvis Presley disse: "Não entendo nada de música. Na minha área você não precisa disso". Em relação aos componentes e estruturação dessa frase, é correto afirmar que:',
'',
'',
'["a forma disso substitui e se refere a toda uma frase anterior;","a forma Não entendo nada é redundante, podendo ser substituída por entendo nada;","o pronome você se refere ao interlocutor;","o segundo período é uma repetição do primeiro;","a pontuação entre os dois períodos poderia ser substituída pela conjunção embora."]'::jsonb,
'A',
'O pronome "disso" é um elemento coesivo que retoma toda a ideia anterior ("entender de música"). Em B, a dupla negação "não... nada" é padrão em português (não é redundância eliminável); em C, "você" é indeterminado/genérico; em D, o segundo período acrescenta informação, não repete; em E, "embora" (concessão) não cabe. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Língua Portuguesa',
'Cartaz de loteamento: "Se você adquirir um lote de terreno no Campus Inconfidência, você vai ter como vizinhos as pessoas mais ricas e importantes da cidade! Você pode!". O apelo para que o comprador adquira o terreno se centraliza:',
'',
'',
'["na localização privilegiada;","nos preços mais acessíveis;","na facilidade do pagamento;","na grande dimensão dos lotes;","no relacionamento social."]'::jsonb,
'E',
'O argumento de venda não é preço, tamanho ou localização, mas o convívio com "as pessoas mais ricas e importantes da cidade" — ou seja, o apelo centra-se no status/relacionamento social que o comprador teria ao morar ali. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Língua Portuguesa',
'São parônimos os verbos aspirar, expirar, conspirar, inspirar e respirar. A frase abaixo em que um desses verbos foi empregado em seu significado adequado é:',
'',
'',
'["Felicidade é alguém para amar, algo para fazer e algo a que conspirar;","Um sobrinho do coronel indicou-lhe a mulher do Batista; era uma moça de 20 anos, loura, assaz bonita e digna de inspirar amores;","aconselhou os pais que a mandassem para algum arrabalde da cidade, a fim de expirar ares melhores;","a ideia que me ficou deles é que eram irrespondíveis; agora que o século está a respirar;","houvessem escolhido aquela senhora para aspirar os nomes que estão no Credo."]'::jsonb,
'B',
'"Inspirar amores" está empregado adequadamente: inspirar = suscitar, despertar (um sentimento). Nas demais há troca indevida: deveria ser "aspirar" (almejar) em A; "aspirar" (sorver) ares em C; "expirar" (findar) o século em D; e "inspirar/invocar", não "aspirar", em E. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- MATEMATICA (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Matemática',
'João tem hoje 22 anos e lembrou que, há oito anos, nesse mesmo dia, sua irmã Maria disse: "Eu tenho a metade da sua idade". Nesse mesmo dia do ano, quando Maria tiver 35 anos, João terá:',
'',
'',
'["42 anos;","43 anos;","57 anos;","65 anos;","70 anos."]'::jsonb,
'A',
'Há oito anos João tinha 22 - 8 = 14 anos; Maria tinha a metade: 7 anos. A diferença de idade entre eles é 14 - 7 = 7 anos (constante). Quando Maria tiver 35 anos, João terá 35 + 7 = 42 anos. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Matemática',
'Um lote de comprimidos tem mais que 150 e menos que 200 unidades. Separando em grupos de 7, sobram 3; separando em grupos de 12, sobram 3. O número de comprimidos desse lote era:',
'',
'',
'["164;","168;","171;","177;","182."]'::jsonb,
'C',
'O número deixa resto 3 na divisão por 7 e por 12, logo (N - 3) é múltiplo comum de 7 e 12, isto é, múltiplo de mmc(7,12) = 84. Então N = 84k + 3. Para 150 < N < 200: com k = 2, N = 168 + 3 = 171. Verificação: 171 = 7×24 + 3 e 171 = 12×14 + 3. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Matemática',
'Modificamos um retângulo, aumentando sua base em 32% e diminuindo sua altura em 32%. Então, sua área:',
'',
'',
'["não se alterou;","diminuiu cerca de 10%;","aumentou cerca de 10%;","diminuiu cerca de 20%;","aumentou cerca de 20%."]'::jsonb,
'B',
'A nova área é (1,32·base)·(0,68·altura) = 1,32·0,68·(base·altura) = 0,8976 da área original. Ou seja, a área passou a ser cerca de 89,76% da original, uma redução de aproximadamente 10%. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Matemática',
'De um grupo de 6 novos policiais, 2 serão escolhidos para um treinamento especial. O número de pares diferentes de policiais que podem ser enviados é:',
'',
'',
'["10;","12;","15;","16;","18."]'::jsonb,
'C',
'Como a ordem não importa, trata-se de uma combinação de 6 elementos tomados 2 a 2: C(6,2) = (6×5)/(2×1) = 30/2 = 15 pares diferentes. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Matemática',
'Uma linha poligonal foi desenhada sobre um quadriculado (lado de cada quadradinho = 1 unidade), ligando o ponto A ao ponto B, com trechos horizontais, verticais e diagonais. Pela figura da prova, o comprimento dessa linha poligonal é:',
'',
'',
'["26;","28;","30;","31;","32."]'::jsonb,
'D',
'O comprimento é obtido somando-se os trechos retos (contados em unidades do quadriculado) e os trechos diagonais (cada diagonal de um quadradinho mede √2, e diagonais maiores são múltiplos correspondentes). Conforme a figura e o gabarito oficial da banca, a soma total dos segmentos resulta em 31 unidades. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Matemática',
'Em certa corrida de Fórmula 1, o vencedor percorreu as 75 voltas com tempo médio por volta de 1 minuto e 32 segundos. O tempo total de corrida gasto pelo vencedor foi de:',
'',
'',
'["1h35min;","1h40min;","1h45min;","1h50min;","1h55min."]'::jsonb,
'E',
'1 min 32 s = 92 segundos por volta. Em 75 voltas: 75 × 92 = 6.900 segundos. Convertendo: 6.900 ÷ 60 = 115 minutos = 1 hora e 55 minutos. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Matemática',
'Uma delegacia recebeu 55 camisetas. Dando 3 a cada policial, sobravam 13; dando 5 a cada policial, 3 policiais nada receberiam. O número de policiais dessa delegacia é:',
'',
'',
'["14;","15;","16;","17;","18."]'::jsonb,
'A',
'Seja n o número de policiais. "Dando 3 a cada um sobram 13": 3n + 13 = 55 → 3n = 42 → n = 14. Verificação com a segunda condição: dando 5 a cada um seriam necessárias 70 camisetas; com 55, atende-se 55 ÷ 5 = 11 policiais, deixando 14 - 11 = 3 policiais sem receber. Confere. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Matemática',
'Treze cadeiras numeradas de 1 a 13 formam uma fila. Três pessoas já ocupam as cadeiras 3, 8 e 11; a quarta pessoa terá sua cadeira sorteada entre as restantes. A probabilidade de que a quarta pessoa NÃO se sente ao lado de nenhuma pessoa já sentada é:',
'',
'',
'["1/2;","1/4;","2/5;","7/10;","4/13."]'::jsonb,
'C',
'Restam 10 cadeiras livres (13 - 3). As cadeiras vizinhas às ocupadas (2,4 ao lado da 3; 7,9 ao lado da 8; 10,12 ao lado da 11) são 6 posições "proibidas". Logo, posições que NÃO ficam ao lado de ninguém: 10 - 6 = 4 (as cadeiras 1, 5, 6 e 13). Probabilidade = 4/10 = 2/5. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Matemática',
'Uma delegacia tem 12 carros e combustível suficiente para todos por 42 dias. Soube-se que 2 carros ficarão parados (em manutenção). O combustível poderá abastecer os carros restantes por, no máximo:',
'',
'',
'["35 dias;","42 dias;","45 dias;","50 dias;","55 dias."]'::jsonb,
'D',
'A quantidade total de combustível é fixa: 12 carros × 42 dias = 504 "carros-dia". Com apenas 10 carros em uso, o número de dias é 504 ÷ 10 = 50,4, ou seja, no máximo 50 dias. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Matemática',
'Considere a soma 1/6 + 3/8 + 7/10 = a/b, com a e b números naturais primos entre si (fração irredutível). O valor da soma a + b é:',
'',
'',
'["35;","47;","181;","227;","269."]'::jsonb,
'E',
'O mmc(6, 8, 10) = 120. Então: 1/6 = 20/120; 3/8 = 45/120; 7/10 = 84/120. Soma = (20 + 45 + 84)/120 = 149/120. Como 149 é primo e não divide 120, a fração já é irredutível, logo a = 149 e b = 120. Portanto, a + b = 149 + 120 = 269. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES BASICAS DE BIOLOGIA E ANATOMIA HUMANA (Questoes 31 a 55)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Biologia e Anatomia Humana',
'A morte por engasgo ocorre quando um objeto bloqueia a chegada de ar nos pulmões. Isso pode acontecer quando, durante a deglutição, uma estrutura de cartilagem chamada epiglote não fecha a entrada da(o):',
'',
'',
'["faringe;","laringe;","esôfago;","traqueia;","brônquio."]'::jsonb,
'B',
'A epiglote é a estrutura cartilaginosa que, durante a deglutição, fecha a entrada da laringe, impedindo que alimentos e líquidos entrem nas vias respiratórias. Quando ela não fecha adequadamente a laringe, o alimento pode seguir para as vias aéreas e causar o engasgo. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Biologia e Anatomia Humana',
'Em uma autópsia, após a abertura da cavidade craniana, examinam-se as membranas que revestem o cérebro antes da remoção do encéfalo. As membranas de tecido conjuntivo que revestem o cérebro são:',
'',
'',
'["as medulas. No espaço entre elas se encontra o líquido cerebrospinal, importante na proteção do sistema nervoso;","as meninges. No espaço entre elas se encontra o líquido cefalorraquidiano, importante no controle do equilíbrio;","as medulas. No espaço entre elas se encontra o líquido cefalorraquidiano, importante no controle do equilíbrio;","as meninges. No espaço entre elas se encontra o líquido cerebrospinal, importante na proteção do sistema nervoso;","os tálamos. No espaço entre elas se encontra o líquido cefalorraquidiano, importante no controle do equilíbrio."]'::jsonb,
'D',
'As membranas de tecido conjuntivo que revestem e protegem o encéfalo e a medula são as meninges (dura-máter, aracnoide e pia-máter). Entre elas circula o líquido cerebrospinal (líquor), importante na proteção e amortecimento do sistema nervoso central. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Biologia e Anatomia Humana',
'Para exame de alcoolemia 24 horas após o óbito, pode-se utilizar o sangue coletado da veia cava superior. Essa veia transporta o sangue que:',
'',
'',
'["chega ao átrio direito do coração;","sai do coração pelo átrio esquerdo;","chega ao ventrículo esquerdo do coração;","sai do coração pelo ventrículo direito;","chega ao ventrículo direito do coração."]'::jsonb,
'A',
'A veia cava superior recolhe o sangue venoso (pobre em oxigênio) da parte superior do corpo e o conduz ao átrio direito do coração. As veias levam sangue AO coração; o sangue da cava superior chega ao átrio direito. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Biologia e Anatomia Humana',
'A maneira pela qual um osso cicatriza após quebrar é única. Um eventual indicativo de uma fratura no fêmur, onde o osso está se recompondo, é:',
'',
'',
'["o calo ósseo, uma elevação resultante do processo de regeneração;","a sutura, uma formação temporária de epitélio;","o calo ósseo, uma depressão no osso resultante da perda de cálcio na região;","a sutura, uma formação temporária de osteócitos;","a presença permanente de tecido cartilaginoso no lugar do ósseo."]'::jsonb,
'A',
'Durante a consolidação de uma fratura, forma-se o calo ósseo: uma elevação (saliência) de tecido novo resultante do processo de regeneração/reparo do osso. Não se trata de depressão nem de "sutura", e o tecido cartilaginoso inicial é substituído por tecido ósseo. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Biologia e Anatomia Humana',
'A intoxicação causada por monóxido de carbono (CO) pode ser fatal porque esse gás:',
'',
'',
'["destrói as hemácias, impedindo a eliminação de gás carbônico nos alvéolos;","aumenta a acidez do sangue, causando a morte dos tecidos e órgãos;","liga-se preferencialmente à hemoglobina, reduzindo o transporte de oxigênio até as células;","interrompe o movimento dos leucócitos, dificultando a hematose nos pulmões;","bloqueia a ação das plaquetas, provocando a ocorrência de hemorragias."]'::jsonb,
'C',
'O monóxido de carbono liga-se à hemoglobina com afinidade muito maior que a do oxigênio, formando carboxi-hemoglobina. Isso impede a hemoglobina de transportar o O2, reduzindo drasticamente a oxigenação das células e podendo levar à morte. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Biologia e Anatomia Humana',
'Para identificação de cadáveres em decomposição, coleta-se DNA de duas fontes (cartilagem e osso longo, de preferência o fêmur). Não sendo possível usar o fêmur, outro osso longo dos membros inferiores pode ser investigado. Esse osso pode ser o(a):',
'',
'',
'["rádio;","patela;","tíbia;","ulna;","calcâneo."]'::jsonb,
'C',
'A tíbia é um osso longo do membro inferior (perna), sendo a alternativa adequada ao substituto do fêmur. Rádio e ulna são ossos do membro superior; a patela e o calcâneo não são ossos longos. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Biologia e Anatomia Humana',
'A putrefação costuma iniciar-se no intestino (flora bacteriana), surgindo a "mancha verde abdominal". Nos indivíduos vivos, o intestino grosso, além de formar as fezes:',
'',
'',
'["absorve a água e os aminoácidos que não foram captados no intestino delgado;","termina a digestão dos lipídios e das proteínas que não foram absorvidos no intestino delgado;","absorve os aminoácidos e os sais minerais que não foram captados no intestino delgado;","termina a digestão dos lipídios e absorve os aminoácidos resultantes da digestão das proteínas;","absorve a água e os sais minerais que não foram absorvidos no intestino delgado."]'::jsonb,
'E',
'A principal função do intestino grosso, além da formação e armazenamento das fezes, é a absorção de água e de sais minerais (eletrólitos) que não foram absorvidos no intestino delgado. A digestão e a absorção de nutrientes (aminoácidos, lipídios) ocorrem essencialmente no intestino delgado. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Biologia e Anatomia Humana',
'O exame de PSA é usado para detectar sêmen em materiais da cena de um crime. Além do líquido prostático, faz parte da composição do sêmen o líquido produzido:',
'',
'',
'["na uretra;","nas vesículas seminais;","nos canais deferentes;","nos epidídimos;","no corpo cavernoso."]'::jsonb,
'B',
'O sêmen é composto por espermatozoides e por secreções de glândulas acessórias: principalmente o líquido das vesículas seminais e o líquido prostático (além da pequena contribuição das glândulas bulbouretrais). Logo, além do líquido prostático, compõem o sêmen as secreções das vesículas seminais. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Biologia e Anatomia Humana',
'O cianeto é uma toxina mitocondrial, uma das intoxicações mais letais. As mitocôndrias, organelas diretamente afetadas pelo cianeto, são responsáveis por etapas da:',
'',
'',
'["respiração celular;","síntese de proteínas;","fermentação;","síntese de lipídios;","síntese de DNA."]'::jsonb,
'A',
'As mitocôndrias são as organelas responsáveis pela respiração celular (produção de ATP por meio do ciclo de Krebs e da cadeia respiratória). O cianeto bloqueia a cadeia transportadora de elétrons nessas organelas, impedindo a produção de energia. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Biologia e Anatomia Humana',
'Durante um acidente, uma lesão no bulbo raquidiano, componente do sistema nervoso central, pode ocasionar ao indivíduo:',
'',
'',
'["perda do controle de movimentos;","perda de memória e dificuldade de raciocínio;","dificuldade de manter a postura ereta;","ausência de controle da temperatura corporal;","morte por parada respiratória."]'::jsonb,
'E',
'O bulbo raquidiano (medula oblonga) controla funções vitais involuntárias, como os batimentos cardíacos e, sobretudo, a respiração. Uma lesão nessa estrutura pode causar parada respiratória e levar à morte. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Biologia e Anatomia Humana',
'Na necropsia, pode-se diagnosticar infarto observando trombos nas artérias coronárias. As artérias coronárias são aquelas que:',
'',
'',
'["chegam à aorta e levam sangue com gás carbônico vindo do miocárdio;","saem das artérias pulmonares e levam sangue com oxigênio para o músculo cardíaco;","saem da aorta e levam sangue com oxigênio para o miocárdio;","chegam às artérias pulmonares e levam sangue com oxigênio para o músculo cardíaco;","chegam às veias pulmonares e levam sangue com nutrientes para o músculo cardíaco."]'::jsonb,
'C',
'As artérias coronárias são os primeiros ramos que saem da aorta (logo acima da valva aórtica) e levam sangue rico em oxigênio para irrigar o próprio músculo cardíaco (miocárdio). A obstrução dessas artérias por trombos causa o infarto. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Biologia e Anatomia Humana',
'Durante o exame cadavérico básico, verifica-se a presença de líquido na cavidade pleural. A pleura é o(a):',
'',
'',
'["cavidade torácica onde se localizam o coração e o timo;","músculo oco que separa a cavidade abdominal da cavidade torácica;","membrana dupla que envolve os pulmões;","canal vertebral por onde passa a medula espinal;","conjunto de tecidos que protege o coração."]'::jsonb,
'C',
'A pleura é a membrana serosa dupla (com um folheto parietal e um visceral) que envolve os pulmões; entre os dois folhetos há a cavidade pleural, com pequena quantidade de líquido lubrificante. Correta a alternativa C. (O músculo que separa tórax e abdome é o diafragma; a membrana que envolve o coração é o pericárdio.)'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Biologia e Anatomia Humana',
'Acidentes podem causar estiramento e rompimento de axônios cerebrais, o que pode levar à morte. Axônio é o(a):',
'',
'',
'["célula nervosa, que também pode ser chamada de neurônio;","prolongamento da célula nervosa, por onde entra o estímulo nervoso;","bainha de gordura que envolve os neurônios e atua como isolante elétrico;","prolongamento da célula nervosa por onde o impulso nervoso é conduzido, formando os feixes que compõem os nervos;","local do neurônio onde fica o núcleo, que comanda o funcionamento da célula."]'::jsonb,
'D',
'O axônio é o prolongamento único e geralmente longo do neurônio, responsável por conduzir o impulso nervoso para fora do corpo celular; os axônios agrupados formam os feixes que compõem os nervos. (Os dendritos é que recebem/entram o estímulo; a bainha de gordura é a mielina; o corpo celular contém o núcleo.) Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Biologia e Anatomia Humana',
'A produção dos principais hormônios sexuais pelo corpo feminino é feita:',
'',
'',
'["nos ovários, onde normalmente ocorre a fecundação;","no útero, onde normalmente ocorre a fecundação;","nos ovários, sendo os hormônios em questão a progesterona e o estrogênio;","no útero, sendo os hormônios em questão a progesterona e o estrogênio;","nas tubas uterinas, onde normalmente ocorre a fecundação."]'::jsonb,
'C',
'Os principais hormônios sexuais femininos — estrogênio e progesterona — são produzidos pelos ovários. (A fecundação normalmente ocorre nas tubas uterinas, e não nos ovários nem no útero, o que elimina as demais alternativas.) Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Biologia e Anatomia Humana',
'A análise do DNA das células ósseas de uma amostra revelou tratar-se de um indivíduo do sexo masculino. Essa conclusão deve-se à presença, no núcleo das células, de:',
'',
'',
'["23 cromossomos;","22 pares de cromossomos;","42 cromossomos e dois cromossomos sexuais;","um par de cromossomos XX;","um par de cromossomos XY."]'::jsonb,
'E',
'O sexo biológico é determinado pelos cromossomos sexuais. O indivíduo do sexo masculino possui, em suas células somáticas, o par de cromossomos sexuais XY (enquanto o feminino possui XX). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Biologia e Anatomia Humana',
'A pele tem importante aspecto na necropsia (palidez, tonalidade, marmorização). A respeito da pele, é correto afirmar que ela é um:',
'',
'',
'["tecido de revestimento chamado epitelial;","órgão formado pelo tecido conjuntivo queratinizado;","tecido de revestimento chamado conjuntivo;","órgão formado pelos tecidos epitelial e conjuntivo;","tecido de revestimento chamado epiderme."]'::jsonb,
'D',
'A pele é o maior órgão do corpo, formada pela epiderme (tecido epitelial) e pela derme (tecido conjuntivo). Portanto, não é apenas um tecido, mas um órgão constituído pelos tecidos epitelial e conjuntivo. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Biologia e Anatomia Humana',
'Características morfológicas do esqueleto auxiliam no diagnóstico do sexo biológico; por exemplo, a cintura escapular, mais larga no homem. A cintura escapular é formada pela escápula e pelo(a):',
'',
'',
'["sacro;","ílio;","esterno;","clavícula;","cóccix."]'::jsonb,
'D',
'A cintura escapular (ou cintura peitoral) é formada por dois ossos de cada lado: a escápula (omoplata) e a clavícula. Sacro, ílio e cóccix pertencem à cintura pélvica; o esterno é osso do tórax. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Biologia e Anatomia Humana',
'As articulações do esqueleto podem ser classificadas em diferentes categorias. As articulações entre as vértebras são do tipo:',
'',
'',
'["semimóveis, como as da fíbula, tíbia e fêmur;","móveis, mas permitindo movimentos limitados;","semimóveis, permitindo pequenos movimentos;","móveis, como as do quadril;","imóveis, como os ossos do crânio."]'::jsonb,
'C',
'As articulações entre as vértebras são semimóveis (anfiartroses): permitem apenas pequenos movimentos, graças aos discos intervertebrais. As móveis (diartroses) são as do quadril/ombro; as imóveis (sinartroses) são as suturas do crânio. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Biologia e Anatomia Humana',
'No exame externo do cadáver avalia-se o estado de nutrição pela quantidade de certo tecido que é o principal reservatório energético do organismo. Esse tecido e a substância armazenada em suas células são, respectivamente:',
'',
'',
'["tecido cartilaginoso e colágeno;","tecido adiposo e lipídios;","tecido muscular liso e proteínas;","tecido epitelial e queratina;","tecido ósseo e sais de cálcio."]'::jsonb,
'B',
'O principal reservatório energético do organismo é o tecido adiposo, cujas células (adipócitos) armazenam gordura (lipídios/triglicerídeos). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Biologia e Anatomia Humana',
'Na doença celíaca, observa-se a perda das vilosidades das paredes do intestino. Para a pessoa doente, esse problema interfere na:',
'',
'',
'["digestão dos aminoácidos;","absorção de fibras;","digestão dos sais minerais;","absorção dos nutrientes;","digestão de fibras."]'::jsonb,
'D',
'As vilosidades (e microvilosidades) do intestino delgado aumentam enormemente a superfície de contato para a absorção dos nutrientes. A sua perda, na doença celíaca, compromete justamente a absorção dos nutrientes. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Biologia e Anatomia Humana',
'Características do esqueleto ajudam a estimar a idade de um cadáver. Dentre as mudanças que caracterizam o esqueleto de um adulto, está o(a):',
'',
'',
'["diminuição do número de ossos, em função da fusão de alguns deles;","interrupção do metabolismo das células ósseas, determinando o fim do crescimento;","surgimento dos discos epifisários, regiões de intensa multiplicação de células cartilaginosas;","imobilização das articulações entre os ossos da mão e dos dedos, que se tornam fixas;","substituição gradativa do tecido ósseo por tecido cartilaginoso."]'::jsonb,
'A',
'Durante o desenvolvimento, vários ossos que eram separados na criança se fundem no adulto (por exemplo, os ossos do crânio, do sacro e do quadril), reduzindo o número total de ossos. Essa diminuição por fusão é uma mudança característica do esqueleto adulto. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Biologia e Anatomia Humana',
'Dados de necropsias são usados em estudos de doenças da vesícula biliar. Armazenada nessa vesícula, a bile é produzida no:',
'',
'',
'["pâncreas e não tem enzimas em sua composição. Ela age como um \"detergente\" sobre as gorduras;","fígado e tem em sua composição a enzima lipase. Isso explica a ação da bile sobre as gorduras;","pâncreas e tem em sua composição a enzima lipase. Isso explica a ação da bile sobre as gorduras;","fígado e não tem enzimas em sua composição. Ela age como um \"detergente\" sobre as gorduras;","duodeno e tem em sua composição a enzima lipase. Isso explica a ação da bile sobre as gorduras."]'::jsonb,
'D',
'A bile é produzida pelo fígado e armazenada na vesícula biliar. Ela não contém enzimas; sua ação sobre as gorduras é mecânica/física (emulsificação), funcionando como um "detergente" que fragmenta as gotículas de gordura, facilitando a ação posterior das enzimas (como a lipase pancreática). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Biologia e Anatomia Humana',
'O tipo celular presente em maior quantidade no sangue humano (hemácias/glóbulos vermelhos), altamente especializado para sua função, apresenta estruturas como:',
'',
'',
'["núcleo e membrana plasmática;","citoplasma e membrana plasmática;","parede celular e citoplasma;","núcleo e citoplasma;","parede celular e vacúolo."]'::jsonb,
'B',
'As hemácias humanas maduras são anucleadas (perdem o núcleo e as demais organelas durante a maturação), o que lhes dá maior capacidade de transporte de oxigênio. Assim, apresentam citoplasma (com hemoglobina) e membrana plasmática, mas não núcleo nem parede celular. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Biologia e Anatomia Humana',
'A rigidez cadavérica (rigor mortis) é uma contração muscular do cadáver. Os músculos da locomoção que sofrem com a rigidez cadavérica são classificados como:',
'',
'',
'["não estriados esqueléticos;","estriados cardíacos;","não estriados cardíacos;","estriados esqueléticos;","não estriados lisos."]'::jsonb,
'D',
'Os músculos responsáveis pela locomoção (presos aos ossos, de controle voluntário) são os músculos estriados esqueléticos. Correta a alternativa D. (O músculo cardíaco é estriado cardíaco; os das vísceras são lisos/não estriados.)'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Biologia e Anatomia Humana',
'Sobre a rigidez cadavérica, os músculos permanecem rígidos até que proteínas musculares sejam desintegradas. Em regra, isso ocorre pela ação de enzimas digestivas liberadas do(s):',
'',
'',
'["ribossomos;","lisossomos;","núcleo;","nucléolo;","retículo endoplasmático liso."]'::jsonb,
'B',
'Os lisossomos são organelas que contêm enzimas digestivas (hidrolíticas). Após a morte, com a ruptura dos lisossomos, essas enzimas são liberadas e promovem a autólise (desintegração) das proteínas, o que acaba por desfazer a rigidez cadavérica. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE PROVA NO PROCESSO PENAL (Questoes 56 a 58)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Noções de Prova no Processo Penal',
'De acordo com o Código de Processo Penal, considera(m)-se cadeia de custódia:',
'',
'',
'["as prisões localizadas no interior das delegacias de polícia, que se destinam a receber e manter recolhidos, até ordem judicial de soltura, os presos provisórios;","o controle feito pelo juiz das garantias, responsável pela análise da legalidade da investigação criminal e pela salvaguarda dos direitos individuais do indiciado;","a fase de colheita da prova oral em um inquérito policial, consistente no interrogatório do investigado perante a autoridade policial e no depoimento de testemunhas;","as penitenciárias, que se destinam a receber e manter recolhidos, até ordem judicial de soltura, os detentos condenados com trânsito em julgado;","o conjunto de todos os procedimentos utilizados para manter e documentar a história cronológica do vestígio coletado em locais ou em vítimas de crimes, para rastrear sua posse e manuseio a partir de seu reconhecimento até o descarte."]'::jsonb,
'E',
'Nos termos do art. 158-A do CPP, a cadeia de custódia é o conjunto de todos os procedimentos utilizados para manter e documentar a história cronológica do vestígio coletado em locais ou em vítimas de crimes, para rastrear sua posse e manuseio a partir de seu reconhecimento até o descarte. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Noções de Prova no Processo Penal',
'Marta recebeu no IML um cadáver cuja morte ocorreu há apenas duas horas. De acordo com o Código de Processo Penal, a autópsia será feita:',
'',
'',
'["imediatamente, para melhor aproveitar os vestígios do crime, salvo ordem judicial em sentido contrário;","imediatamente, para melhor aproveitar os vestígios do crime, salvo determinação em sentido contrário do perito legista;","no prazo máximo de quarenta e oito horas da entrada do cadáver no IML, sob pena de responsabilidade funcional dos policiais lotados no órgão;","pelo menos seis horas depois do óbito, salvo se os peritos, pela evidência dos sinais de morte, julgarem que possa ser feita antes daquele prazo, o que declararão no auto;","pelo menos vinte e quatro horas depois do óbito, salvo se os peritos, pela evidência dos sinais de morte, julgarem que os vestígios do crime podem desaparecer."]'::jsonb,
'D',
'Nos termos do art. 162 do CPP, a autópsia será feita pelo menos seis horas depois do óbito, salvo se os peritos, pela evidência dos sinais de morte, julgarem que pode ser feita antes daquele prazo, o que declararão no auto. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Noções de Prova no Processo Penal',
'De acordo com a Lei nº 11.340/2006 (Lei Maria da Penha), é direito da mulher em situação de violência doméstica e familiar o:',
'',
'',
'["pronto atendimento pericial feito pelo policial militar que atender à ocorrência, com imediata emissão do auto de exame de corpo de delito;","atendimento policial e pericial especializado, ininterrupto e prestado por servidores, preferencialmente do sexo feminino, previamente capacitados;","decreto do afastamento do agressor do lar, nos casos de violência física, a ser feito, em qualquer hipótese, pelo policial militar que atender à ocorrência;","encaminhamento à perícia exclusivamente pela autoridade judicial, com nomeação de perito e auxiliares do perito pelo juízo criminal;","depoimento assistido por assistentes sociais e psicólogos, que não pode ser tomado em sede policial e deve ser realizado apenas em juízo."]'::jsonb,
'B',
'A Lei Maria da Penha (art. 10-A) assegura à mulher em situação de violência doméstica e familiar o direito a atendimento policial e pericial especializado, ininterrupto e prestado por servidores — preferencialmente do sexo feminino — previamente capacitados. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO ADMINISTRATIVO (Questoes 59 e 60)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Noções de Direito Administrativo',
'João, auxiliar de necropsia, reconheceu no cadáver o seu desafeto José e, para prejudicar os parentes dele, atrasou ao máximo a autópsia, deixando o corpo em local impróprio por prazo muito superior ao previsto. Agindo assim, João violou diretamente o princípio expresso da administração pública da:',
'',
'',
'["autotutela, pois deve tratar todos os cidadãos com igualdade, independentemente de serem seus amigos ou inimigos;","moralidade, pois, como conhece a família do falecido, deveria ter dado prioridade para a conclusão da perícia;","impessoalidade, pois deve agir na busca do interesse da coletividade, sem beneficiar nem prejudicar alguém em especial;","finalidade, pois deve conciliar seu interesse particular com o público, de maneira a não prejudicar seus desafetos ou os familiares destes;","continuidade, pois, como é inimigo do falecido e de sua família, deveria ter pedido a um estagiário para prosseguir com as atividades de preparo do corpo."]'::jsonb,
'C',
'Ao usar o cargo para prejudicar um desafeto e sua família, João deixou de agir de forma impessoal. O princípio da impessoalidade (art. 37, caput, da CF/88) exige que o agente público atue visando ao interesse da coletividade, sem beneficiar nem prejudicar pessoas em especial. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Noções de Direito Administrativo',
'Maria, auxiliar de necropsia, única policial de plantão e sem qualquer perito no órgão naquele momento, fez o exame pericial e emitiu e assinou sozinha o auto de exame cadavérico, contrariando as normas aplicáveis às atribuições de seu cargo. Percebe-se que a perícia é inválida por vício no elemento do ato administrativo da:',
'',
'',
'["finalidade;","competência;","motivo;","objeto;","motivação."]'::jsonb,
'B',
'A realização do exame pericial e a emissão do auto cadavérico são atribuições do perito, não do auxiliar de necropsia. Ao praticar ato para o qual não tinha atribuição legal, Maria incorreu em vício no elemento competência do ato administrativo, tornando a perícia inválida. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-necropsia'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
