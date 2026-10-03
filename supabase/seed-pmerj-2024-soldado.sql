-- Seed: PMERJ 2024 - Soldado Policial Militar Classe C
-- Secretaria de Estado de Policia Militar do Estado do Rio de Janeiro - Banca FGV
-- Prova Escrita Objetiva - Nivel Medio - Tipo 1 (Branca) - 50 questoes
-- Gabarito oficial (Tipo 1):
--  1-A  2-D  3-D  4-C  5-E  6-C  7-D  8-A  9-A 10-E
-- 11-C 12-D 13-E 14-D 15-B 16-B 17-A 18-C 19-D 20-E
-- 21-B 22-C 23-E 24-B 25-E 26-A 27-E 28-A 29-C 30-A
-- 31-B 32-C 33-B 34-B 35-C 36-E 37-D 38-B 39-C 40-C
-- 41-A 42-E 43-E 44-E 45-D 46-C 47-D 48-E 49-D 50-A
-- Observacao: a questao 24 possui apenas 4 alternativas (A-D); as demais, 5 (A-E).

insert into public.exams (slug, title, source, year)
values ('pmerj-2024-soldado', 'PMERJ 2024 - Soldado Policial Militar Classe C', 'pmerj', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Observe o trecho abaixo, que aborda diferenças entre a língua escrita e a língua falada: "Mas por que falamos de um modo, na fala propriamente dita, e falamos, na escrita, de outro, tão diferente do registro anterior, que afinal lhe deu origem? É consenso que as dificuldades principais são oferecidas pela gramática, cujo conceito dominante é de que seja um rol de regras..." A afirmação correta sobre a estruturação e o significado desse pequeno texto é:',
'',
'',
'["a pergunta feita no texto não é respondida;","a gramática é bem-vista pelo autor do texto;","o pronome \"que\", sublinhado no texto, se refere à língua escrita;","há um ensinamento no texto que nos diz que a língua escrita deu origem à língua falada;","ao dizer que é um \"consenso\", o autor do texto nos informa que nem todos pensam da mesma forma."]'::jsonb,
'A',
'O texto formula uma pergunta ("Mas por que falamos de um modo... e... de outro...?") e, em seguida, passa a discutir as dificuldades oferecidas pela gramática, sem responder diretamente à indagação inicial. Logo, a pergunta não é respondida no trecho. A gramática não é bem-vista (é vista como mero rol de regras), e foi a fala que deu origem à escrita, não o contrário.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'Os animais estão presentes, como referência, em nossa linguagem diária; a expressão sublinhada abaixo que mostra seu significado corretamente indicado é:',
'',
'',
'["o jornalista considerou a instituição um ninho de cobras / um lugar perigoso para a saúde;","o comandante soltou cobras e lagartos do trabalho realizado / aspectos sigilosos;","o presidente considerou a atitude do ministro como uma cachorrada / um ato violento;","os jornais diziam que a assembleia espanhola estava cheia de ratos / gente desonesta;","os namorados estavam como dois pombinhos / aquecendo-se repetidamente."]'::jsonb,
'D',
'A expressão "ratos", nesse contexto figurado, designa pessoas desonestas, ladras. "Ninho de cobras" é ambiente de intrigas (não local perigoso para a saúde); "soltar cobras e lagartos" é falar mal, criticar duramente (não aspectos sigilosos); "cachorrada" é uma canalhice/má ação (não ato violento); "dois pombinhos" são namorados carinhosos (não aquecimento repetido). Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'Numa viagem de carro entre Rio e Minas Gerais, um motorista foi observando uma série de cartazes na rodovia; o único cartaz abaixo que está corretamente redigido é:',
'',
'',
'["Precisam-se de caminhões para transporte de grãos;","Há vagas no estassionamento ao lado do posto;","Aqui anteriormente haviam árvores; hoje, um deserto;","Deixe para amanhã o que não precisa fazer hoje;","Local de diverção para crianças."]'::jsonb,
'D',
'A frase "Deixe para amanhã o que não precisa fazer hoje" está corretamente redigida. As demais contêm erros: "Precisam-se de" deveria ser "Precisa-se de" (verbo precisar com objeto preposicionado é impessoal); "estassionamento" é grafia errada de "estacionamento"; "haviam árvores" deveria ser "havia árvores" (haver no sentido de existir é impessoal); "diverção" é grafia errada de "diversão".'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'A frase abaixo cujo termo sublinhado exerce a função sintática de objeto direto é:',
'',
'',
'["Viu-se o acidente de longe;","Necessita-se de transporte rápido;","Alugamos ontem o apartamento;","O navio atracou atrasado no cais;","O menino não gostava de algodão doce."]'::jsonb,
'C',
'Em "Alugamos ontem o apartamento", o termo "o apartamento" é objeto direto do verbo transitivo direto "alugar". Em "Viu-se o acidente", trata-se de sujeito paciente (voz passiva sintética); "de transporte rápido" e "de algodão doce" são objetos indiretos (verbos que exigem preposição); "atrasado" é predicativo. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'Em todos os períodos abaixo há duas orações: a opção em que a segunda oração mostra uma consequência da primeira é:',
'',
'',
'["Só ficou contente, quando todos os amigos chegaram;","O turista visitaria a igreja, se houvesse tempo para isso;","Ninguém saiu do prédio porque faltava segurança;","Todos os sinais estavam apagados, por faltar energia;","Choveu tanto durante a noite, que as ruas se alagaram."]'::jsonb,
'E',
'Em "Choveu tanto durante a noite, que as ruas se alagaram", a segunda oração exprime a consequência (as ruas se alagaram) do fato expresso na primeira (choveu tanto), configurando oração subordinada adverbial consecutiva. As demais exprimem tempo, condição e causa, não consequência. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'A frase abaixo em que a utilização do acento grave indicativo da crase está feita de forma correta é:',
'',
'',
'["Para manter a saúde é necessário começar à amar;","A mente, como à casa, é mobiliada pelo proprietário;","Sou igual à vara de marmelo. Envergo, mas não quebro;","Outro dia fui para à academia, mas não gosto de malhar;","Um pouco de incenso queimado é bom remédio para reajustas às coisas."]'::jsonb,
'C',
'Em "Sou igual à vara de marmelo", a crase está correta: a expressão "igual a" rege a preposição "a", que se funde com o artigo feminino "a" diante de "vara". Nas demais há erro: não há crase antes de verbo ("à amar"), nem antes de palavra masculina, e "à casa" / "para à academia" / "reajustas às coisas" contêm usos indevidos. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'A frase abaixo em que o emprego do termo sublinhado está adequado é:',
'',
'',
'["Ele não sabia que era impossível. Foi lá e fez;","Fui fazer a confissão e quando saí de lá, estava aliviado;","O problema em ser pontual é que ninguém está lá para apreciar isso;","Para se chegar ao topo é difícil, mas, ao se chegar lá, a vista é belíssima;","O filme a que assistimos era muito bom, mas quando saímos de lá, o tempo tinha mudado e chovia muito."]'::jsonb,
'D',
'Em "Para se chegar ao topo é difícil, mas, ao se chegar lá, a vista é belíssima", o advérbio "lá" retoma adequadamente o lugar mencionado ("o topo"), com referência espacial clara. Nas demais, o emprego de "lá" é vago, ambíguo ou sem referente espacial preciso definido no contexto. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'A frase abaixo em que os dois adjetivos nela destacados representam estados é:',
'',
'',
'["Homem resfriado não deve ficar deitado;","É um milagre divino que a curiosidade sobreviva à educação formal;","O objetivo da educação é substituir uma mente vazia por uma mente aberta;","Nossas necessidades são poucas, mas nossos desejos são incontáveis;","Não se pode descobrir novas terras sem aceitar perder de vista a terra por um longo tempo."]'::jsonb,
'A',
'Em "Homem resfriado não deve ficar deitado", ambos os adjetivos — "resfriado" e "deitado" — exprimem estados (condições transitórias) do homem. Nas demais, os adjetivos destacados (divino/formal, vazia/aberta, poucas/incontáveis, novas/longo) indicam qualidades ou classificações, não estados. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'A frase abaixo que mostra um mesmo vocábulo empregado sucessivamente como substantivo abstrato e concreto é:',
'',
'',
'["Este livro vai falar do amor e dos amores de minha vida;","Trouxe lembranças para todos, pois viajei com a lembrança de vocês;","O fato de fazerem tantos agrados aos convidados não foi do meu agrado;","As marcas deixadas na paisagem eram marcas de descuido e de irresponsabilidade;","Os cuidados com os ferimentos dos soldados mostraram o cuidado com os cidadãos em geral."]'::jsonb,
'A',
'Em "Este livro vai falar do amor e dos amores de minha vida", "amor" é usado primeiro como substantivo abstrato (o sentimento) e depois como concreto ("os amores" = as pessoas amadas). Nos demais exemplos, as repetições mantêm o mesmo caráter (ambas abstratas ou ambas concretas), não havendo a passagem de abstrato para concreto. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'A frase abaixo que mostra corretamente um sinônimo da palavra sublinhada na frase é:',
'',
'',
'["Filhos casam, crescem e nos dão netos / aumentam;","A preocupação traz a velhice antes da hora / antiguidade;","A distância mais longa é entre a cabeça e o coração / larga;","Nada chegará ao fundo da risada de uma criança / estudante;","A maioria dos homens morre de seus remédios, e não das suas doenças / enfermidades."]'::jsonb,
'E',
'"Doenças" tem como sinônimo adequado "enfermidades". Nas demais, os pares não são sinônimos no contexto: "crescem" não equivale a "aumentam" (crescer é tornar-se adulto); "velhice" não é "antiguidade"; "longa" (referida a distância) não é "larga"; "criança" não é "estudante". Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- MATEMATICA BASICA (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Matemática',
'A média aritmética de 7 números inteiros consecutivos começados em N é igual a M. A média aritmética dos 7 números inteiros consecutivos começados em M é igual a:',
'',
'',
'["N;","N + 3;","N + 6;","N + 7;","N + 9."]'::jsonb,
'C',
'A média de 7 inteiros consecutivos começados em N (N, N+1, ..., N+6) é o termo central: M = N + 3. A média dos 7 consecutivos começados em M é o termo central dessa nova sequência: M + 3 = (N + 3) + 3 = N + 6. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Matemática',
'Quatro objetos, A, B, C e D, possuem pesos diferentes. Sabe-se que: A é mais pesado que B; C é mais leve que A; D é mais leve que B, mas não é o mais leve de todos. É correto concluir que:',
'',
'',
'["A não é o mais pesado de todos;","B é mais leve que D;","C é mais pesado que B;","C é mais leve que D;","B é mais leve que C."]'::jsonb,
'D',
'De D mais leve que B, mas não o mais leve de todos, conclui-se que C é o mais leve (pois alguém precisa ser menos pesado que D). Assim, C é mais leve que D, confirmando a alternativa D. As demais não são conclusões necessárias: A pode ser o mais pesado, e as relações de B com D e C ficam fixadas como B > D > C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Matemática',
'Em um encontro de 7 pessoas, 4 delas se conheciam mutuamente e as outras 3 não conheciam ninguém. Pessoas que se conheciam se cumprimentaram com um abraço e pessoas que não se conheciam se cumprimentaram com um aperto de mãos. O número de apertos de mãos que ocorreram nesse encontro foi:',
'',
'',
'["3;","7;","12;","14;","15."]'::jsonb,
'E',
'O total de cumprimentos entre 7 pessoas é C(7,2) = 21. Os abraços ocorrem apenas entre as 4 que se conheciam: C(4,2) = 6. Os apertos de mãos são todos os demais: 21 - 6 = 15. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Matemática',
'Um número menos a sua terça parte é igual à sua metade mais 3 unidades. A soma dos algarismos desse número é:',
'',
'',
'["6;","7;","8;","9;","10."]'::jsonb,
'D',
'Seja x o número: x - x/3 = x/2 + 3. Multiplicando por 6: 6x - 2x = 3x + 18, logo 4x - 3x = 18, portanto x = 18. A soma dos algarismos de 18 é 1 + 8 = 9. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Matemática',
'Patrícia tem 33 moedas, sendo algumas de R$ 0,25, outras de R$ 0,50 e as demais de R$ 1,00. No total, as moedas de Patrícia somam R$ 19,00 e ela tem 5 moedas de R$ 1,00 a mais do que moedas de R$ 0,50. O número de moedas de R$ 0,25 que Patrícia tem é:',
'',
'',
'["16;","14;","12;","10;","8."]'::jsonb,
'B',
'Sejam a (R$0,25), b (R$0,50) e c (R$1,00). Temos a + b + c = 33, 0,25a + 0,50b + c = 19 e c = b + 5. Substituindo c: a + 2b + 5 = 33, logo a + 2b = 28. Na equação de valor: 0,25a + 0,50b + b + 5 = 19, ou seja, 0,25a + 1,50b = 14, multiplicando por 4: a + 6b = 56. Subtraindo a + 2b = 28: 4b = 28, b = 7, c = 12 e a = 28 - 14 = 14. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Matemática',
'Certa série de televisão tem 3 temporadas. Cada temporada contém 6 episódios e cada episódio dura exatamente 42 minutos. O tempo total de duração dessa série é de:',
'',
'',
'["12 horas e 10 minutos;","12 horas e 36 minutos;","12 horas e 42 minutos;","13 horas e 18 minutos;","13 horas e 32 minutos."]'::jsonb,
'B',
'Total de episódios: 3 × 6 = 18. Tempo total: 18 × 42 = 756 minutos. Convertendo: 756 ÷ 60 = 12 horas e resto 36 minutos. Logo, 12 horas e 36 minutos. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Matemática',
'Mariana comprou um vestido com 15% de desconto e pagou R$ 221,00. O valor do desconto foi de:',
'',
'',
'["R$ 39,00;","R$ 38,50;","R$ 35,60;","R$ 33,15;","R$ 32,10."]'::jsonb,
'A',
'Com 15% de desconto, Mariana pagou 85% do preço: 0,85·P = 221, logo P = 221 ÷ 0,85 = 260. O desconto é 15% de 260 = 0,15 × 260 = R$ 39,00. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Matemática',
'Em um novo loteamento, Paulo comprou um lote retangular de 540 metros quadrados medindo 18 metros de frente para a rua. Para a segurança de seu terreno, ele pretende cercá-lo com três voltas de arame farpado, e a loja de materiais vende o arame em rolos de comprimentos múltiplos de 50 metros. Para realizar seu objetivo, o rolo de arame farpado mais econômico que Paulo deve comprar tem:',
'',
'',
'["200 m;","250 m;","300 m;","350 m;","400 m."]'::jsonb,
'C',
'O outro lado do lote mede 540 ÷ 18 = 30 m. O perímetro é 2·(18 + 30) = 96 m. Com três voltas: 3 × 96 = 288 m. Como o arame é vendido em múltiplos de 50 m, o menor rolo que atende a 288 m é o de 300 m. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Matemática',
'Em uma urna A há 6 bolas iguais numeradas de 1 a 6 e em uma urna B há 7 bolas, também iguais, numeradas de 7 a 13. Retira-se aleatoriamente uma bola de cada urna. A probabilidade de a soma dos números das bolas sorteadas ser maior do que 16 é:',
'',
'',
'["6/13;","5/14;","1/6;","1/7;","2/21."]'::jsonb,
'D',
'O total de resultados é 6 × 7 = 42. A soma deve ser maior que 16 (ou seja, ≥ 17). Contando os pares (a da urna A, b da urna B): a=4 e b=13 (1 caso); a=5 e b=12 ou 13 (2 casos); a=6 e b=11, 12 ou 13 (3 casos). Total de 6 casos favoráveis. A probabilidade é 6/42 = 1/7. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Matemática',
'Duas fazendas A e B são vizinhas. Sabe-se que 3/4 da área da fazenda A está plantada com soja e que 2/5 da área da fazenda B está plantada com soja. Sabe-se ainda que a área da fazenda B é uma vez e meia a área da fazenda A. A fração da área total das duas fazendas que está plantada com soja é:',
'',
'',
'["8/15;","13/20;","14/25;","33/40;","27/50."]'::jsonb,
'E',
'Seja a área de A igual a 1; então B = 1,5. Soja em A: 3/4 × 1 = 0,75. Soja em B: 2/5 × 1,5 = 0,6. Soja total: 0,75 + 0,6 = 1,35. Área total: 1 + 1,5 = 2,5. Fração: 1,35 ÷ 2,5 = 0,54 = 27/50. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITOS HUMANOS (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direitos Humanos',
'A Declaração Universal dos Direitos Humanos, proclamada há 75 anos, apresenta diretrizes básicas dos direitos e liberdades de todos os seres humanos. Está em desacordo com o citado documento a norma que estabelece que:',
'',
'',
'["ninguém será mantido em escravidão ou servidão; a escravidão e o tráfico de escravos serão proibidos em todas as suas formas;","ninguém será submetido à tortura, nem a tratamento ou castigo cruel, desumano ou degradante, salvo para resgate de vítima viva de crime hediondo;","todo ser humano tem direito a receber dos tribunais nacionais competentes remédio efetivo para os atos que violem os direitos fundamentais que lhe sejam reconhecidos pela Constituição ou pela lei;","todo ser humano acusado de um ato delituoso tem o direito de ser presumido inocente até que a sua culpabilidade tenha sido provada, de acordo com a lei, em julgamento público no qual lhe tenham sido asseguradas todas as garantias necessárias à sua defesa;","todo ser humano tem capacidade para gozar os direitos e as liberdades estabelecidos na citada Declaração, sem distinção de qualquer espécie, seja de raça, cor, sexo, língua, religião, opinião política ou de outra natureza, origem nacional ou social, riqueza, nascimento, ou qualquer outra condição."]'::jsonb,
'B',
'A vedação à tortura e a tratamentos ou penas cruéis, desumanos ou degradantes é absoluta na Declaração Universal dos Direitos Humanos (art. V), não comportando qualquer exceção. Logo, a norma que admite tortura "para resgate de vítima viva de crime hediondo" está em frontal desacordo com o documento. As demais alternativas reproduzem corretamente direitos previstos na Declaração. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direitos Humanos',
'O policial militar João, em sua primeira operação na favela Alfa, sem mandado judicial e sem situação de flagrância, indagou ao PM responsável se poderia adentrar à força em determinada casa, apontada por informes de inteligência como residência de "vapores" do tráfico. A resposta correta a João foi:',
'',
'',
'["positivamente, pois a casa é asilo de violabilidade relativa do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo por ordem policial ou judicial;","positivamente, pois a casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de suspeita por informe de inteligência policial, flagrante delito ou por determinação judicial;","negativamente, pois a casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de flagrante delito ou desastre, ou para prestar socorro, ou, durante o dia, por determinação judicial;","negativamente, pois a casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de flagrante delito, desastre, determinação judicial ou autorização do Ministério Público;","negativamente, pois a casa é asilo de violabilidade relativa do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em situação de flagrante delito, por ordem judicial ou por força de operação policial, desde que previamente comunicada ao Ministério Público."]'::jsonb,
'C',
'A casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de flagrante delito ou desastre, ou para prestar socorro, ou, durante o dia, por determinação judicial (art. 5º, XI, da CRFB/88). Como não havia flagrante, desastre, socorro nem ordem judicial, o ingresso forçado era vedado. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direitos Humanos',
'Com o advento da Emenda Constitucional nº 45 de 2004, ocorreu a alteração do regramento sobre a internalização de normas internacionais de direitos humanos. Nesse sentido, com relação ao atual entendimento do Supremo Tribunal Federal sobre o assunto, é correto afirmar que:',
'',
'',
'["os tratados internacionais de direitos humanos têm natureza de lei ordinária federal;","as normas internacionais que versam sobre direitos humanos têm o mesmo status das normas constitucionais, sendo incorporadas automaticamente ao âmbito interno;","as convenções internacionais de direitos humanos são ratificadas pelo chefe do Congresso Nacional, que poderá revogar a assinatura firmada pelo presidente da República;","as normas internacionais de direitos humanos não prevalecem sobre os direitos previstos nas normas constitucionais vigentes anteriormente à sua ratificação e aprovação pelo Congresso Nacional;","as convenções e os tratados internacionais de direitos humanos têm natureza supralegal, salvo na hipótese de serem equivalentes às emendas constitucionais, uma vez aprovadas pelo mesmo rito especial."]'::jsonb,
'E',
'Segundo o STF (a partir do RE 466.343), os tratados internacionais de direitos humanos têm, em regra, natureza supralegal (acima das leis e abaixo da Constituição), salvo quando aprovados pelo rito especial do art. 5º, § 3º, da CRFB/88 (dois turnos, três quintos, em cada Casa), hipótese em que adquirem status de emenda constitucional. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direitos Humanos',
'O jovem André, negro, de 19 anos e morador da favela Beta, foi preso em flagrante por policial militar exclusivamente por portar uma mochila preta, descrição genérica dada por uma vítima de roubo. Mesmo com a vítima negando categoricamente a autoria e sem o celular ser encontrado, a prisão foi mantida e lavrado auto de prisão em flagrante por roubo. De acordo com a Constituição da República, a prisão ilegal de André será:',
'',
'',
'["imediatamente revogada pelo Ministério Público;","imediatamente relaxada pela autoridade judiciária;","revogada, em até 48h (quarenta e oito horas), por meio de habeas corpus;","anulada, em até 72h (setenta e duas horas), pelo Tribunal de Justiça."]'::jsonb,
'B',
'Nos termos do art. 5º, LXV, da CRFB/88, a prisão ilegal será imediatamente relaxada pela autoridade judiciária. Trata-se de ato privativo do juiz, sem prazo fixo de 48h ou 72h e sem depender do remédio específico apontado nas demais alternativas. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direitos Humanos',
'O Estado brasileiro aderiu à Convenção Americana de Direitos Humanos (Pacto de São José da Costa Rica), reconhecendo o sistema criado pela Organização dos Estados Americanos (OEA). De acordo com a citada convenção:',
'',
'',
'["o sistema interamericano é formado pela Comissão Interamericana de Direitos Humanos e pelo Tribunal Penal Internacional;","a jurisdição da Corte Interamericana de Direitos Humanos é aplicável desde 1988 e foi reconhecida pelo Brasil com a promulgação da Constituição da República vigente;","a realização de audiência de custódia é um ato ilegal, porque submete o investigado a mais uma camada de controle sobre o ilícito penal que lhe é imputado;","a pessoa detida pela prática de crimes deve ser informada das razões da sua detenção e notificada, no prazo de trinta dias, da acusação formulada contra ela, para que possa constituir advogado ou defensor público;","ninguém deve ser detido por dívida, mas esse princípio não limita os mandados de autoridade judiciária competente expedidos em virtude de inadimplemento de obrigação alimentar."]'::jsonb,
'E',
'Nos termos do art. 7.7 da Convenção Americana (Pacto de São José da Costa Rica), ninguém deve ser detido por dívidas, princípio que não limita os mandados de autoridade judiciária competente expedidos em virtude de inadimplemento de obrigação alimentar. O sistema interamericano é composto pela Comissão e pela Corte Interamericana (não pelo TPI); a jurisdição da Corte foi reconhecida pelo Brasil em 1998; e a audiência de custódia é instrumento de garantia, não ato ilegal. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direitos Humanos',
'A Lei nº 13.445, de 24 de maio de 2017, instituiu a Lei de Migração, dispondo sobre os direitos e os deveres do migrante e do visitante. Consoante dispõe o citado diploma legal:',
'',
'',
'["ao migrante é garantida no território nacional, em condição de igualdade com os nacionais, a inviolabilidade do direito à vida, à liberdade, à igualdade, à segurança e à propriedade;","a situação migratória deverá ser determinante na análise do alcance dos direitos e garantias previstos na referida lei, na Constituição Federal e nos tratados vigentes;","a realização de expulsão ou de deportação coletivas deverão ser fomentadas nas situações de migrações numerosas, que geram grave impacto na economia nacional;","o migrante e o refugiado não poderão frequentar a escola pública, pois sua nacionalidade ou condição migratória podem configurar grave risco aos demais alunos;","a política migratória observará o princípio do fomento ao retorno do migrante ao seu país de origem, independentemente das condições que ocasionaram a sua saída, sendo exceção a política de regularização documental."]'::jsonb,
'A',
'A Lei de Migração garante ao migrante, em condição de igualdade com os nacionais, a inviolabilidade do direito à vida, à liberdade, à igualdade, à segurança e à propriedade (art. 4º, caput). A lei veda a expulsão/deportação coletiva, veda a discriminação pela situação migratória, assegura o acesso à educação pública e repudia a repatriação forçada em desacordo com as garantias. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direitos Humanos',
'No ano de 2010, o Rio de Janeiro foi o primeiro estado da federação a instituir um sistema estadual de prevenção e combate à tortura. Sobre o Sistema Nacional de Prevenção e Combate à Tortura (SNPCT), é correto afirmar que:',
'',
'',
'["as corregedorias e ouvidorias de polícia não poderão integrar o SNPCT, uma vez que serão fiscalizadas pelo referido sistema e deverão prestar informações quando requisitadas;","uma de suas diretrizes é o respeito aos direitos humanos, mas os das pessoas privadas de liberdade devem ser relativizados, inclusive com prevalência dos direitos das vítimas;","o SNPCT atuará em preponderância às demais esferas de governo e de poder, responsáveis pela segurança pública, pela custódia de pessoas privadas de liberdade, por locais de internação de longa permanência e pela proteção de direitos humanos;","está em desacordo com o Protocolo Facultativo à Convenção das Nações Unidas contra a Tortura e Outros Tratamentos ou Penas Cruéis, Desumanos ou Degradantes, promulgado pelo Decreto nº 6.085, de 19 de abril de 2007, pois permite tortura vigiada por médicos nos casos de imprescindível obtenção de prova de crime;","é composto pelo Comitê Nacional de Prevenção e Combate à Tortura (CNPCT), pelo Mecanismo Nacional de Prevenção e Combate à Tortura (MNPCT), pelo Conselho Nacional de Política Criminal e Penitenciária (CNPCP) e pelo órgão do Ministério da Justiça responsável pelo sistema penitenciário nacional."]'::jsonb,
'E',
'Nos termos da Lei nº 12.847/2013, o SNPCT é composto pelo Comitê Nacional de Prevenção e Combate à Tortura (CNPCT), pelo Mecanismo Nacional de Prevenção e Combate à Tortura (MNPCT), pelo Conselho Nacional de Política Criminal e Penitenciária (CNPCP) e pelo órgão do Ministério da Justiça responsável pelo sistema penitenciário nacional (art. 2º, § 1º). As corregedorias e ouvidorias podem integrá-lo, e não se admite relativização de direitos nem tortura "vigiada". Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direitos Humanos',
'Neiva, idosa de 68 anos, detida sob suspeita de furto, alega em audiência de custódia ter sido vítima de tortura (agressão física e psicológica, choques elétricos, ameaças de morte) para obter informações. Os policiais negam e alegam uso da força apenas quando necessário. De acordo com a Lei Federal nº 9.455/1997, que define os crimes de tortura:',
'',
'',
'["as condutas praticadas pelos policiais podem configurar o crime de tortura, na hipótese de comprovação dos fatos narrados por Neiva;","os policiais poderão ter as penas diminuídas, uma vez que são agentes públicos, caso respondam pela prática do crime de tortura;","os policiais não poderão ser acusados do suposto crime de tortura, em razão da presunção de veracidade de suas alegações;","os policiais atuaram sob o manto de uma excludente de ilicitude, uma vez que o uso da força teve por finalidade a comprovação da prática de um crime;","os policiais não poderão perder os seus cargos, sendo afastados das suas funções de patrulhamento para um trabalho burocrático, na hipótese de condenação pelo crime de tortura, de acordo com a lei."]'::jsonb,
'A',
'Constranger alguém com emprego de violência ou grave ameaça, causando-lhe sofrimento físico ou mental, para obter informação, declaração ou confissão, é crime de tortura (art. 1º, I, "a", da Lei nº 9.455/1997). Comprovados os fatos narrados por Neiva, a conduta dos policiais configura tortura. A condição de agente público é causa de aumento (não de diminuição), e a condenação acarreta a perda do cargo. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direitos Humanos',
'Observe os crimes: I- João, de forma livre e consciente, realizou transferência, à força, de crianças do grupo para outro grupo com intenção de destruir, no todo ou em parte, um grupo nacional, étnico, racial ou religioso, enquanto tal. II- Maria, de forma livre e consciente, praticou desaparecimento forçado de pessoas, cometido no quadro de um ataque, generalizado ou sistemático, contra qualquer população civil, havendo conhecimento desse ataque. Para efeitos do Estatuto de Roma do Tribunal Penal Internacional (TPI), João e Maria praticaram, respectivamente, crimes:',
'',
'',
'["de sequestro e de guerra;","contra a vida e de genocídio;","de genocídio e contra a humanidade;","de guerra e de tortura;","contra infância e contra a pessoa."]'::jsonb,
'C',
'A transferência forçada de crianças de um grupo para outro, com a intenção de destruir, no todo ou em parte, um grupo nacional, étnico, racial ou religioso, é crime de genocídio (art. 6º do Estatuto de Roma). O desaparecimento forçado de pessoas, no quadro de ataque generalizado ou sistemático contra população civil, é crime contra a humanidade (art. 7º). Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direitos Humanos',
'João, de 23 anos, alegou ter sido vítima de abuso policial, pois policiais militares fizeram uso de arma de fogo contra seu veículo, mesmo tendo ele desrespeitado bloqueio policial em via pública. Considerando a Lei Federal nº 13.060/2014, que disciplina o uso dos instrumentos de menor potencial ofensivo pelos agentes de segurança pública, no caso em tela os policiais agiram de forma:',
'',
'',
'["legítima, caso a conduta de João tenha representado risco de morte ou lesão aos agentes de segurança pública ou a terceiros;","legítima, pois qualquer desobediência a bloqueio policial em via pública dá ensejo a emprego de arma de fogo;","legítima, desde que tenha havido prévia autorização pelo superior hierárquico responsável pela ação policial para o uso de arma de fogo;","ilegítima, em qualquer hipótese, pois desobediência a bloqueio policial em via pública não dá ensejo a emprego de arma de fogo, em qualquer hipótese;","ilegítima, salvo se os policiais militares estivessem usando câmeras corporais que filmaram a conduta de João, independentemente de risco de morte ou lesão aos agentes de segurança pública ou a terceiros."]'::jsonb,
'A',
'A Lei nº 13.060/2014 prevê que os agentes de segurança pública devem priorizar instrumentos de menor potencial ofensivo, sendo o uso de arma de fogo legítimo apenas quando houver risco à integridade física do agente ou de terceiros. Assim, o emprego da arma seria legítimo caso a conduta de João tenha representado risco de morte ou lesão aos agentes ou a terceiros. A mera desobediência ao bloqueio, por si só, não autoriza o disparo. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO ADMINISTRATIVO E LEGISLACAO APLICADA A PMERJ (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'João, policial militar, foi convocado para o policiamento ostensivo durante a inauguração de uma obra no Município Alfa, com a presença do prefeito e do governador. Ao se apresentar, percebe que não há qualquer promoção pessoal dos políticos presentes; todas as informações sobre a obra têm caráter educativo e informativo. Considerando o entendimento doutrinário e jurisprudencial dominantes, está-se diante de uma manifestação do princípio da:',
'',
'',
'["proporcionalidade;","impessoalidade;","continuidade;","juridicidade;","legalidade."]'::jsonb,
'B',
'A publicidade dos atos, programas, obras, serviços e campanhas dos órgãos públicos deve ter caráter educativo, informativo ou de orientação social, dela não podendo constar promoção pessoal de autoridades ou servidores (art. 37, § 1º, da CRFB/88). A vedação à promoção pessoal é manifestação direta do princípio da impessoalidade. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'1º cenário: a Administração Pública aplicou multa à sociedade empresária XYZ, contratada para fornecer bens ao Poder Público, por descumprimento de cláusulas contratuais. 2º cenário: o policial militar Petrônio recebeu sanção disciplinar por descumprir ordens legais de seu superior hierárquico. As punições aplicadas à sociedade XYZ e ao policial Petrônio são, respectivamente, manifestações do:',
'',
'',
'["poder disciplinar e poder hierárquico;","poder hierárquico e poder disciplinar;","poder disciplinar e poder disciplinar;","poder de polícia e poder disciplinar;","poder de polícia e poder de polícia."]'::jsonb,
'C',
'A sanção aplicada ao particular contratado por descumprimento do contrato decorre do poder disciplinar da Administração (que alcança quem tem vínculo específico com ela, inclusive os contratados). A sanção ao policial militar, servidor com vínculo funcional, também decorre do poder disciplinar. Logo, ambos são manifestações do poder disciplinar. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'Diversas pessoas, insatisfeitas com a crise econômica no Estado Alfa, fecharam ruas para protestar. Após horas de manifestação pacífica, a passeata tornou-se violenta, com depredação do patrimônio público, e policiais militares foram convocados, pondo fim aos eventos. Os policiais puderam interromper a passeata, mesmo sem manifestação do Poder Judiciário, em razão da:',
'',
'',
'["presunção relativa de veracidade dos atos administrativos;","autoexecutoriedade dos atos administrativos;","imperatividade dos atos administrativos;","coercibilidade dos atos administrativos;","exigibilidade dos atos administrativos."]'::jsonb,
'B',
'A autoexecutoriedade é o atributo que permite à Administração executar diretamente seus atos e decisões, por meios próprios, sem necessidade de prévia autorização judicial. Foi com base nela que os policiais puderam, de imediato, interromper a passeata que se tornara violenta. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'João, policial da PMERJ, conduzia viatura em alta velocidade durante perseguição a Tício, que roubara um automóvel, e colidiu com o veículo de Caio, particular. Caio pretende ajuizar ação indenizatória. Um advogado informou que o Estado do Rio de Janeiro é pessoa jurídica de direito público, enquanto a Polícia Militar é um órgão público. O particular deverá ingressar com a ação indenizatória em face do(da):',
'',
'',
'["policial João, pois o Estado do Rio de Janeiro e a Polícia Militar não podem ser demandados por ato praticado por policial militar;","Estado do Rio de Janeiro, pois a Polícia Militar, enquanto órgão público, não pode, como regra, demandar, tampouco ser demandada;","Estado do Rio de Janeiro ou da Polícia Militar, pois ambos, como regra, podem demandar e ser demandados;","Polícia Militar, que pode, como regra, ser demandada, muito embora não possa demandar;","Polícia Militar, que pode, como regra, demandar e ser demandada."]'::jsonb,
'B',
'A Polícia Militar é órgão público, despersonalizado, e como regra não possui personalidade jurídica própria para demandar ou ser demandada. A responsabilidade civil pelos danos causados pelo agente recai sobre a pessoa jurídica de direito público a que ele pertence, no caso o Estado do Rio de Janeiro (art. 37, § 6º, da CRFB/88). Logo, a ação deve ser proposta contra o Estado. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Administrativo',
'Após desastre natural de grandes proporções, o efetivo da Polícia Militar e de todos os demais órgãos públicos do Estado Alfa está integralmente destacado no resgate de sobreviventes. João, que não tem qualquer vínculo com o Poder Público, verifica que Mévia está se afogando e, espontaneamente, a salva. Considerando o entendimento doutrinário, João exerceu a função pública na qualidade de:',
'',
'',
'["particular em colaboração com o estado;","agente público de direito putativo;","agente público de fato necessário;","agente público de fato putativo;","servidor público temporário."]'::jsonb,
'C',
'O agente público de fato necessário é aquele que, diante de uma situação de emergência ou calamidade, assume espontaneamente o exercício de função pública, sem investidura regular, para atender a uma necessidade urgente e inadiável. É exatamente o caso de João, que, em meio ao desastre, pratica ato de salvamento próprio da atuação estatal. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Administrativo',
'Caio perguntou ao seu irmão, policial militar, quais procedimentos adotar para possuir regularmente um revólver em seu domicílio. Após a observância de todas as formalidades legais, a Administração Pública editou um ato administrativo manifestando concordância com o pedido, autorizando-o a ter a posse de arma de fogo em seu domicílio. Está-se diante de um ato administrativo (de):',
'',
'',
'["enunciativo;","ordinatório;","normativo;","controle;","negocial."]'::jsonb,
'E',
'Os atos administrativos negociais são aqueles em que a Administração concorda com um pedido do particular, produzindo efeitos concretos em seu interesse (licenças, autorizações, permissões, aprovações, etc.). A autorização para posse de arma de fogo enquadra-se como ato negocial. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Legislação Aplicada à PMERJ',
'João, policial militar, está em gozo de licença para tratar de interesse particular quando, observadas as formalidades legais, a autoridade competente decreta estado de emergência. Preocupado, consulta a legislação para analisar as repercussões sobre o seu licenciamento e sobre outras licenças. Considerando a Lei Estadual nº 443/1981 (Estatuto dos Policiais Militares), a decretação de estado de emergência poderá ensejar a interrupção da licença:',
'',
'',
'["especial, para tratar de interesse particular e para tratamento de saúde de pessoa da família;","especial e para tratamento de saúde de pessoa da família;","para tratamento de saúde de pessoa da família, apenas;","especial e para tratar de interesse particular;","para tratar de interesse particular, apenas."]'::jsonb,
'D',
'De acordo com o Estatuto dos Policiais Militares do Estado do Rio de Janeiro (Lei Estadual nº 443/1981), a licença especial e a licença para tratar de interesse particular podem ser interrompidas por motivo de interesse público, inclusive na hipótese de decretação de estado de emergência. A licença para tratamento de saúde de pessoa da família, por sua natureza, não é alcançada nessa hipótese. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Legislação Aplicada à PMERJ',
'Tício, policial militar, foi afastado do cargo, na esfera administrativa e após a observância de todas as formalidades legais, ao argumento de que a sua atuação demonstrou incapacidade no exercício de funções policiais-militares inerentes à posição ocupada. Considerando a Lei Estadual nº 443/1981 (Estatuto dos Policiais Militares), Tício foi afastado do cargo pelo:',
'',
'',
'["presidente da Assembleia Legislativa;","comandante geral da Polícia Militar;","secretário de estado da Casa Civil;","presidente do Tribunal de Justiça;","vice-governador do estado."]'::jsonb,
'B',
'Nos termos do Estatuto dos Policiais Militares (Lei Estadual nº 443/1981), o afastamento do cargo, na esfera administrativa, por incapacidade demonstrada no exercício das funções policiais-militares inerentes à posição ocupada, é da competência do Comandante-Geral da Polícia Militar. Correta a alternativa B.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Legislação Aplicada à PMERJ',
'João, após ingressar na PMERJ, busca informações sobre a existência de eventual grupo que defenda as prerrogativas dos policiais. Considerando as disposições da Constituição do Estado do Rio de Janeiro, é possível a criação de:',
'',
'',
'["associação de natureza não sindical, sem fins lucrativos, admitindo-se a greve, na forma da lei;","sindicato ou de associação, sem fins lucrativos, admitindo-se a greve, na forma da lei;","associação de natureza não sindical, sem fins lucrativos, vedando-se a greve;","sindicato ou de associação, sem fins lucrativos, vedando-se a greve;","sindicato ou de associação, com fins lucrativos, vedando-se a greve."]'::jsonb,
'C',
'Aos militares são vedadas a sindicalização e a greve (art. 142, § 3º, IV, da CRFB/88, aplicável por simetria aos militares dos Estados). Admite-se, porém, a criação de associação de natureza não sindical, sem fins lucrativos, para a defesa das prerrogativas da categoria. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Legislação Aplicada à PMERJ',
'João, oficial da PMERJ, é transferido para a reserva remunerada, enquanto Caio, praça, é demitido após a observância de todas as formalidades legais. Considerando a Lei Estadual nº 443/1981 (Estatuto dos Policiais Militares), é correto afirmar que a(s) exclusão(ões) de:',
'',
'',
'["João do serviço ativo será processada após a expedição de ato do comandante geral da Polícia Militar. Por outro lado, a exclusão de Caio do serviço ativo pressupõe a expedição de ato pelo comandante do batalhão ao qual está vinculado;","João do serviço ativo será processada após a expedição de ato do governador do estado. Por outro lado, a exclusão de Caio do serviço ativo pressupõe a expedição de ato pelo comandante do batalhão ao qual está vinculado;","João do serviço ativo será processada após a expedição de ato do governador do estado. Por outro lado, a exclusão de Caio do serviço ativo pressupõe a expedição de ato pelo comandante geral da Polícia Militar;","João e de Caio do serviço ativo serão processadas após a expedição de atos do comandante geral da Polícia Militar;","João e de Caio do serviço ativo serão processadas após a expedição de atos do governador do estado."]'::jsonb,
'C',
'Pelo Estatuto dos Policiais Militares (Lei Estadual nº 443/1981), a transferência de oficial para a reserva remunerada depende de ato do Governador do Estado (chefe do Poder Executivo, autoridade competente quanto aos oficiais). Já a exclusão de praça do serviço ativo (demissão) é processada por ato do Comandante-Geral da Polícia Militar. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO PENAL E PROCESSUAL PENAL (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Penal',
'Caio e João, policiais militares, abordaram Tício, mas nada de ilícito foi arrecadado. Em conversa, Tício afirmou que está cumprindo pena, em uma colônia agrícola, em razão de um crime perpetrado no passado. Considerando as disposições do Código Penal, Tício está cumprindo pena no regime:',
'',
'',
'["semiaberto, sendo certo que o trabalho externo é admissível;","semiaberto, sendo certo que o trabalho externo é proibido;","fechado, sendo certo que o trabalho externo é admissível;","aberto, sendo certo que o trabalho externo é admissível;","aberto, sendo certo que o trabalho externo é proibido."]'::jsonb,
'A',
'O cumprimento de pena em colônia agrícola, industrial ou estabelecimento similar é característico do regime semiaberto (art. 33, § 1º, "b", do CP). Nesse regime, admite-se o trabalho externo, bem como a frequência a cursos (art. 35, § 2º, do CP). Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Penal',
'Após receberem informações de que um homem estaria agredindo a esposa, policiais militares dirigiram-se ao domicílio e viram Tício correndo com um facão na direção de Mévia, afirmando que a mataria. A mulher, policial civil, efetuou um disparo em direção a Tício, matando-o. Considerando o Código Penal, Mévia não responderá por qualquer crime, tendo agido sob o manto do(da):',
'',
'',
'["exercício regular de um direito, causa de exclusão de tipicidade;","inexigibilidade de conduta diversa, causa de exclusão de ilicitude;","estrito cumprimento do dever legal, causa de exclusão de tipicidade;","estado de necessidade, causa de exclusão de ilicitude;","legítima defesa, causa de exclusão de ilicitude."]'::jsonb,
'E',
'Mévia repeliu injusta agressão atual e iminente a sua vida (Tício corria com um facão afirmando que a mataria), usando moderadamente dos meios necessários. Trata-se de legítima defesa (art. 25 do CP), causa de exclusão de ilicitude (antijuridicidade). Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Direito Penal',
'1º cenário: Tício ingressou no jardim de uma residência e escalou o muro, com o objetivo de adentrar o local e subtrair bens; contudo, viu uma criança brincando com o pai, mudou de ideia e deixou a localidade. 2º cenário: Mévio desferiu diversos socos no rosto do seu desafeto; embora pudesse continuar agredindo-o, interrompeu os atos e fugiu. Considerando o Código Penal, Tício e Mévio somente responderão pelos atos já praticados, respectivamente, em razão do(da):',
'',
'',
'["arrependimento posterior e arrependimento posterior;","arrependimento eficaz e arrependimento posterior;","desistência voluntária e arrependimento posterior;","arrependimento eficaz e arrependimento eficaz;","desistência voluntária e desistência voluntária."]'::jsonb,
'E',
'Em ambos os cenários, o agente, já iniciada a execução e podendo prosseguir, voluntariamente interrompe os atos executórios, impedindo a consumação. Isso configura desistência voluntária (art. 15 do CP), em que o agente responde apenas pelos atos já praticados. Tanto Tício quanto Mévio desistiram voluntariamente. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Direito Penal',
'João e Caio, policiais militares, atenderam ocorrência de furto em estabelecimento comercial. Tício, autor do crime, encontrava-se clara e completamente embriagado, afirmando que teria tomado diversas doses de tequila para criar coragem para praticar o crime. Considerando o Código Penal, é correto afirmar que Tício:',
'',
'',
'["responderá pelo crime praticado, pois a embriaguez voluntária pelo álcool não exclui a imputabilidade penal, salvo se o agente demonstrar que, ao tempo da ação, era inteiramente incapaz de entender o caráter ilícito do fato e de determinar-se de acordo com esse entendimento;","responderá pelo crime praticado, pois a embriaguez voluntária pelo álcool não exclui a imputabilidade penal. A sua pena, contudo, será reduzida, se o agente demonstrar que não possuía a plena capacidade de entender o caráter ilícito do seu comportamento;","não responderá pelo crime praticado, se o agente demonstrar que não possuía a plena capacidade de entender o caráter ilícito do seu comportamento;","não responderá pelo crime praticado, pois a embriaguez completa exclui a imputabilidade penal;","responderá pelo crime praticado, com pena agravada, pois a embriaguez voluntária pelo álcool não exclui a imputabilidade penal."]'::jsonb,
'E',
'A embriaguez voluntária ou culposa pelo álcool não exclui a imputabilidade penal (teoria da actio libera in causa, art. 28, II, do CP). Além disso, como Tício ingeriu bebida justamente para criar coragem e praticar o crime (embriaguez preordenada), incide a agravante do art. 61, II, "l", do CP. Logo, responde pelo crime com pena agravada. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito Penal',
'João e Caio, policiais militares, foram abordados por Maria, que relatou ter sido obrigada por Tício, mediante arma de fogo, a adentrar seu automóvel; o criminoso a levou a uma agência bancária e a obrigou a digitar a senha no caixa para sacar o numerário disponível, evadindo-se após 30 minutos com a vítima em seu poder. Considerando o Código Penal, Tício responderá pelo crime de:',
'',
'',
'["extorsão mediante sequestro;","extorsão indireta;","latrocínio;","extorsão, mediante restrição de liberdade da vítima;","roubo."]'::jsonb,
'D',
'Tício obrigou a vítima, mediante grave ameaça, a um comportamento ativo (digitar a senha e sacar valores), o que caracteriza extorsão (art. 158 do CP), e não roubo. Como manteve a vítima restringida em sua liberdade por cerca de 30 minutos como condição necessária à obtenção da vantagem, incide a forma qualificada do art. 158, § 3º (o chamado "sequestro relâmpago"): extorsão mediante restrição da liberdade da vítima. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito Penal',
'Caio e João, policiais militares, abordaram Tício, encontrando com ele 600 gramas de cocaína. Cientificado dos seus direitos, Tício confessou ser traficante e ofereceu R$ 5.000,00 para cada policial, caso o liberassem. Considerando o Código Penal, Tício, além do tráfico de drogas, responderá pelo crime de:',
'',
'',
'["excesso de exação;","corrupção passiva;","corrupção ativa;","concussão;","peculato."]'::jsonb,
'C',
'Oferecer ou prometer vantagem indevida a funcionário público para determiná-lo a praticar, omitir ou retardar ato de ofício (aqui, deixar de efetuar a prisão) configura corrupção ativa (art. 333 do CP), crime praticado pelo particular. A corrupção passiva, a concussão e o excesso de exação são crimes do funcionário público, não do particular. Correta a alternativa C.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Processual Penal',
'Thiago, delegado de polícia, tomou conhecimento de que, na circunscrição de sua unidade, houve o roubo de um caminhão da loja XYZ, com subtração da integralidade da carga, gerando forte repercussão na imprensa local. Considerando o Código de Processo Penal, a autoridade policial deflagrará um inquérito policial:',
'',
'',
'["mediante requisição do Ministro da Justiça, pois o crime de roubo é persequível mediante ação penal pública condicionada à representação;","mediante representação do ofendido, pois o crime de roubo é persequível mediante ação penal pública condicionada à representação;","mediante requerimento do Ministério Público, que é o titular exclusivo da ação penal de iniciativa pública;","de ofício, pois o crime de roubo é persequível mediante ação penal pública incondicionada;","de ofício, desde que comprove a forte repercussão dos fatos na imprensa local."]'::jsonb,
'D',
'O roubo (art. 157 do CP) é crime de ação penal pública incondicionada. Nos crimes dessa natureza, a autoridade policial deve instaurar o inquérito de ofício, ao tomar conhecimento do fato (art. 5º, I, do CPP), independentemente de representação, requisição ou requerimento, e sem relação com repercussão na imprensa. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Processual Penal',
'Dois policiais militares, em patrulhamento de rotina, visualizaram um homem com uma arma de fogo apontada para a cabeça de uma mulher, visando à subtração dos bens dela. Os agentes se aproximaram em silêncio e lograram êxito em desarmar Tício, que estava cometendo um crime patrimonial em detrimento de Maria. Considerando o Código de Processo Penal, Tício foi preso em flagrante:',
'',
'',
'["presumido;","preparado;","impróprio;","esperado;","próprio."]'::jsonb,
'E',
'Tício foi surpreendido no exato momento em que cometia a infração (crime patrimonial em curso), hipótese de flagrante próprio ou real (art. 302, I, do CPP: "está cometendo a infração penal"). O flagrante esperado pressupõe prévia ciência e aguardo da ação; o preparado é induzido; o impróprio e o presumido ocorrem após a consumação, na perseguição ou no encontro do agente. Correta a alternativa E.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Processual Penal',
'Caio e João, policiais militares, compareceram ao imóvel de Joana, que afirmou ter sido injuriada por Tício, Mévio e Petrônio, seus vizinhos. Contudo, Joana afirmou que pretendia ingressar com queixa-crime apenas em face de Tício, por ter bom relacionamento com os demais. Considerando o Código de Processo Penal, a queixa contra qualquer dos autores do crime obrigará ao processo de todos em razão do princípio da:',
'',
'',
'["intranscendência;","indisponibilidade;","obrigatoriedade;","indivisibilidade;","oficialidade."]'::jsonb,
'D',
'Na ação penal privada vigora o princípio da indivisibilidade: a queixa contra qualquer dos autores do crime obrigará ao processo de todos, não podendo o ofendido escolher processar apenas um e deixar os demais (art. 48 do CPP). Logo, Joana não pode acionar só Tício. Correta a alternativa D.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Processual Penal',
'Caio e João, policiais militares, prenderam Tício em flagrante por furto qualificado e prestaram depoimento, na delegacia, na qualidade de testemunhas. Na instrução processual em juízo, não puderam ser ouvidos por estarem em complexa operação policial. O Ministério Público dispensou a oitiva dos agentes e pediu a condenação de Tício exclusivamente com base nos depoimentos prestados em sede policial. Considerando o Código de Processo Penal, é correto afirmar que o juiz:',
'',
'',
'["não poderá condenar Tício com base nos depoimentos prestados por Caio e João em sede policial, pois o magistrado deve formar a sua convicção pela livre apreciação da prova produzida em contraditório judicial, não podendo fundamentar sua decisão exclusivamente nos elementos informativos colhidos na investigação, ressalvadas as provas cautelares, não repetíveis e antecipadas;","não poderá condenar Tício com base nos depoimentos prestados por Caio e João em sede policial, pois o magistrado deve formar a sua convicção pela livre apreciação da prova produzida em contraditório judicial, não podendo fundamentar sua decisão exclusivamente nos elementos informativos colhidos na investigação ou em provas cautelares, não repetíveis e antecipadas;","poderá condenar Tício com base nos depoimentos prestados por Caio e João em sede policial, em razão do sistema do livre convencimento motivado;","poderá condenar Tício com base nos depoimentos prestados por Caio e João em sede policial, em razão do sistema da íntima convicção;","poderá condenar Tício com base nos depoimentos prestados por Caio e João em sede policial, em razão do sistema da prova tarifada."]'::jsonb,
'A',
'Nos termos do art. 155 do CPP, o juiz formará sua convicção pela livre apreciação da prova produzida em contraditório judicial, não podendo fundamentar sua decisão exclusivamente nos elementos informativos colhidos na investigação, ressalvadas as provas cautelares, não repetíveis e antecipadas. Logo, o juiz não pode condenar Tício apenas com base nos depoimentos prestados na fase policial. Correta a alternativa A.'
from public.exams where slug = 'pmerj-2024-soldado'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
