-- Cadernos e gabaritos oficiais; dados revisados, sem alterar outras provas.
BEGIN;
insert into public.exams(slug,title,source,year) values ('cbmerj-2023-cfo','CBMERJ 2023 · Curso de Formação de Oficiais · Inglês · Aplicada em 27/11/2022','cbmerj','2023') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','Em todas as frases abaixo há alusões implícitas a essa simbologia
dos animais. Assinale a frase que mostra adequadamente o valor
simbólico do animal presente na frase.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.','A frase a seguir refere-se à simbologia cultural dos animais,
atribuindo à abelha a imagem do trabalho.
“A abelha vive fazendo cera. Sempre. E com tudo isso, como é que
a abelha consegue ser a imagem do labor incessante?”
(Eno T. Wanke)',NULL,'["“⟦Raposa⟧ velha não cai no laço.” / esperteza.", "“A mais nobre conquista que o homem tenha jamais feito, é a desse ⟦cavalo⟧ altivo e fogoso, que partilha com ele as fadigas da guerra e a glória dos combates.” / lealdade.", "“O ⟦elefante⟧ deixa-se acariciar. O piolho, não.” / gentileza.", "“A ⟦tartaruga⟧ leva um dia imenso em seu puro passeio solitário.” / paciência.", "“A ⟦lebre⟧ dorme de olhos abertos.” / inteligência."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','Em todas as opções abaixo as frases foram reescritas de modo a
eliminar o advérbio não, mas mantendo-se o sentido original.
Assinale a frase em que essa modificação foi feita de forma
adequada.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“A abelha atarefada ⟦não⟧ tem tempo para tristeza” (Eno T. Wanke) / a abelha atarefada dispensa o tempo de tristeza.", "“Perdoamos frequentemente aos que nos aborrecem, mas ⟦não⟧ podemos perdoar aos que nós aborrecemos.”(La Rochefoucaud) / Perdoamos frequentemente aos que nos aborrecem, mas é proibido perdoar aos que nós aborrecemos.", "“Se a Academia ⟦não⟧ tem autoridade acadêmica, então os satíricos e os engraçados também não têm graça nenhuma.” (João Ribeiro) / Se a Academia precisa de autoridade acadêmica, então os satíricos e os engraçados também não têm graça nenhuma.", "“De todas as taras sexuais, ⟦não⟧ existe nenhuma mais estranha do que a abstinência.” (Millôr Fernandes) / De todas as taras sexuais, há uma mais estranha do que a abstinência.", "“Um dia desses eles declaram que tudo ⟦não⟧ passou de cinquenta anos de brincadeira.” (Millôr Fernandes) / Um dia desses eles declaram que tudo se limitou a cinquenta anos de brincadeira."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','As opções a seguir apresentam frases que trazem marcas de
subjetividade, à exceção de uma. Assinale-a.',NULL,NULL,'["“As sociedades modernas parecem-me orgulhar-se demais da abolição da escravatura” (Marquês de Custine).", "“Meu desejo sincero seria que nossa Academia Brasileira não se esquecesse tanto de que é também de ... Letras” (Mário de Andrade).", "“Meu filho, Absalão! meu filho, Absalão! Quem me dera que eu morrera por ti!” (Velho Testamento).", "“Um tolo encontra sempre outro mais tolo que o admira” (Boileau).", "“Felizmente, o meu povo brasileiro detesta andar. Só anda a pé por prescrição médica” (Paulo Mendes Campos)."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','Assinale a opção que apresenta a frase cuja palavra sublinhada só
tem uma grafia possível.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“⟦Aborígines⟧ são gente de valor escasso que atravanca o solo de um país recém-descoberto” (Ambrose Bierce).", "“Sem pontos de parada, / solto nas ruas como um táxi, / sem o esperar, querer, / sem ter por quê, se toma o ⟦enfarte⟧” (João Cabral de Melo Neto).", "“Os ⟦bêbados⟧ têm ligações profundas com a verdade.” (anônimo).", "“A ⟦cozinha⟧ brasileira é de extremos: ou os pratos carregadíssimos, ou então a vulgaridade.” (Ribeiro Couto),", "“Tudo o que vejo lá fora respira vida, a cabra que rumina ao pé de uma carroça, a galinha que marisca no chão da rua, o trem da Estrada Central que bufa, ⟦assobia⟧, fumega e passa, a palmeira que investe para o céu...” (Machado de Assis – Dom Casmurro)."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','Assinale a opção que indica a frase em que ocorreu a substituição
adequada da locução adverbial sublinhada por um advérbio
semanticamente equivalente.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“Capistrano de Abreu declarava só ter entrado para a sociedade humana porque não foi consultado ⟦com⟧ ⟦antecedência⟧” (Capistrano de Abreu) / anteriormente.", "“Os abusos, como os dentes, nunca se arrancam ⟦sem dores⟧” (Marquês de Maricá) / impunemente.", "“E se Adão não tivesse resistido àquela operação nas costelas a que se submeteu ⟦antes do momento adequado⟧” (Eno T. Wanke) / prematuramente.", "“Os acontecimentos tinham ampliado sua inteligência ⟦por⟧ ⟦natureza⟧ estreita” (Anatole France) / originalmente.", "“Se o mundo fosse, ⟦de fato⟧, governado pelo acaso, não haveria tantas injustiças” (Galiani) / claramente."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','Assinale a frase em que ocorreu a troca indevida entre sob e
sobre.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“Odeio as combinações hipócritas do absolutismo dissimulado ⟦sob⟧ as formas democráticas ou republicanas” (Rui Barbosa).", "“A história, na verdade, é pouco mais que um registro de crimes ⟦sobre⟧ as loucuras e as desgraças da humanidade” (Gibbon).", "“Escreve as ofensas na areia e os benefícios ⟦sob⟧ o mármore” (Benjamin Franklin).", "“A metafísica está no ar. Não podemos deixá-la senão deixála ali, pois estamos ⟦sob⟧ ela” (Clemenceau).", "“Não há uma ideia nascida de um espírito humano que não tenha feito correr sangue ⟦sobre⟧ a terra” (Charles Maurras)."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','Em todas as opções abaixo há uma metáfora ou uma
comparação; assinale a opção em que a razão da comparação
metafórica está inadequadamente indicada.',NULL,NULL,'["“O absurdo é o sal da vida” (Ledo Ivo) / o que dá prazer.", "“A gasolina é o incenso da civilização” (Ramon de la Serna) / o que cria industrialização.", "“São Paulo é uma locomotiva poderosa, puxando 25 vagões” (Artur Neiva) / força desenvolvimentista.", "“Para mim, a vida é a miniatura do teatro” (Procópio Ferreira) / representação falsa.", "“O tempo é um rio formado pelos eventos, uma torrente impetuosa” (Marco Aurélio) / sucessão inédita de acontecimentos."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Assinale a frase em que a substituição da locução sublinhada por
um adjetivo é feita de forma adequada.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“A saudade é a memória ⟦do coração⟧” (Coelho Neto) / cardíaca.", "“O casamento é como a pessoa que quer tomar um copo ⟦de⟧ ⟦leite⟧ e compra uma vaca” (Max Nunes) / lácteo.", "“Um sintoma ⟦de liberdade⟧ é o som de uma gargalhada” (anônimo) / livre.", "“Lembre-se de que o segredo ⟦da felicidade⟧ está na liberdade” (Tucídides) / feliz.", "“O riso é o sol que afugenta o inverno do rosto ⟦do homem⟧” Victor Hugo) / humano."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','Assinale a frase que mostra uma inadequação semântica entre as
palavras sublinhadas.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["Hoje há ⟦remédios⟧ para todas as ⟦doenças⟧.", "A empresa encontra ⟦soluções⟧ para todos os ⟦problemas⟧.", "Nem sempre há boas ⟦sentenças⟧ em todos os ⟦julgamentos⟧.", "A vida nem sempre dá ⟦satisfação⟧ a todos os ⟦desejos⟧.", "Os otimistas encontram ⟦saída⟧ para todas as ⟦dúvidas⟧."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','Assinale a frase adequadamente composta, respeitando os
valores semânticos das palavras empregadas.',NULL,NULL,'["Abruptamente, o menino entreabriu a porta do escritório.", "Pelo orifício da câmara, penetrou uma faixa de luz.", "Os destroços da parede desabada atrapalhavam a passagem.", "O lutador, apesar de forte, mostrava medo do adversário.", "As frutas caídas deslizavam pela escada abaixo."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Língua Portuguesa','Assinale a frase em que a grafia da palavra sublinhada está
correta.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["“A razão ⟦porque⟧ pessoas culpam as gerações anteriores é que há apenas uma outra escolha.”", "“Pais se perguntam ⟦por que⟧ os rios são amargos, quando eles mesmos envenenaram a fonte.”", "“Não há nenhum dever na arte ⟦por que⟧ a arte é livre.”", "“A dança deve sua existência à música, ⟦porquê⟧?”", "“Eu sei que a poesia é indispensável, mas não sei ⟦por que⟧.”"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Língua Portuguesa','Todas as opções abaixo mostram formas de diminutivos dos
vocábulos entre parênteses, com o sufixo –inho.
Assinale a opção em que todas as formas estão corretamente
grafadas.',NULL,NULL,'["paizinho (pai) / paisinho (país) / raizinha (raiz).", "papelsinho (papel) / piresinho (pires) / reizinho (rei).", "tunelzinho (túnel) / lapizinho (lápis) / avozinho (avô).", "adeusinho (adeus) / camizinha (camisa) / mãozinha (mão).", "dorzinha (dor) / tecnicazinha (técnica) / xadresinho (xadrez)."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Língua Portuguesa','Assinale a frase que mostra a palavra mais numa classe
gramatical diferente das demais.',NULL,NULL,'["“Os funcionários são como os livros de bibliotecas: os que estão em lugares mais altos são os que menos prestam” (Paul Masson).", "“Mais vale um galo no terreiro do que dois na testa” (Barão de Itararé).", "“A mulher chega à maturidade quando seus sapatos começam a incomodá-la mais do que os homens” (Aldo Cammarota).", "“Um homem parado é a coisa mais horrível que pode haver. Mulher não aguenta o marido em casa o dia inteiro” (Girsz Aronson).", "“Para evitar o estresse, evite excitação; passe mais tempo com a sua esposa” (Robert Olsen)."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Língua Portuguesa','Assinale a opção que apresenta a frase que se refere ao romance
Dom Casmurro, de Machado de Assis.',NULL,NULL,'["Narrativa em primeira pessoa, na qual o narrador recorda sua vida passada.", "Narrativa de aventuras, na qual o narrador se lembra de uma série de aventuras amorosas.", "Narrativa amorosa, de caráter romântico, na qual o narrador presta homenagens à sua musa.", "Narrativa de memórias, em terceira pessoa, na qual o narrador faz uma seleção de fatos históricos.", "Narrativa histórica, na qual estão expostos os fatos mais importantes de nosso período monárquico."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Língua Portuguesa','Assinale a opção que apresenta, respectivamente, um autor da
literatura portuguesa e outro da literatura brasileira, que
pertencem ao mesmo movimento literário.',NULL,NULL,'["Camões / José de Alencar.", "Eça de Queiroz / Machado de Assis.", "Alexandre Herculano / Aluísio Azevedo.", "Júlio Dinis / Lima Barreto.", "Camilo Castelo Branco / Guimarães Rosa."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Matemática','João recebeu certa quantia. Com a terça parte da quantia, pagou
os gastos com o cartão de crédito, e pagou o aluguel com a
quinta parte do restante.
Da quantia recebida, a fração que representa a parte que João
ainda tem disponível é
2',NULL,NULL,'["5 3", "5 7", "15 8", "15 17", "30"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Matemática','Em certa pista, um carro de corrida, mantendo velocidade média
de 100 km/h durante 2 horas deu exatamente 45 voltas.
Na mesma pista, aumentando a velocidade média para 180 km/h,
o número de voltas que serão dadas nas mesmas 2 horas é',NULL,NULL,'["25.", "30.", "36.", "72.", "81."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Matemática','Considere a sequência aritmética: 53, 60, 67, 74, ...
O primeiro termo dessa sequência a ultrapassar 1000 é',NULL,NULL,'["1001.", "1002.", "1003.", "1004.", "1005."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Matemática','Em uma lista de 5 números naturais, 𝑥 é o menor.
Dessa lista, sabe-se que a moda (única) é 24, a mediana é 21 e a
média é 20.
O menor valor que 𝑥 pode assumir é',NULL,NULL,'["9.", "10.", "11.", "12.", "13."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Matemática','O ponto P do plano cartesiano possui coordenadas iguais e é
equidistante dos pontos (1, 4) e (7, 0).
O ponto P é',NULL,NULL,'["(8, 8).", "(9, 9).", "(10, 10).", "(11, 11).", "(12, 12)."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Matemática','Em um pátio, 240 soldados deverão ser dispostos em formação
retangular de linhas e colunas. Por exemplo, a figura abaixo
mostra 12 soldados em uma formação retangular de 3 linhas e 4
colunas.
Para os 240 soldados, a formação deve ter ao menos, 4 linhas e
ao menos 4 colunas.
Assinale a opção que indica o número de maneiras diferentes de
realizar essa formação.',NULL,'/cbmerj-apoios/2023-q21-p5-figura.png','["7.", "8.", "12.", "14.", "18."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Matemática','Para conseguir ingresso em um curso de especialização, cada
candidato deve resolver uma prova de 25 questões cuja
pontuação é feita da seguinte forma:
• 5 pontos por cada resposta correta.
• −2 pontos por cada resposta errada.
Hugo fez a prova e obteve 69 pontos.
Assinale a opção que indica o número de questões que Hugo
acertou.',NULL,NULL,'["16.", "17.", "18.", "19.", "20."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Matemática','Max e Rubens estão andando de bicicleta em uma pista circular.
Eles andam em sentidos opostos. Max dá uma volta na pista a
cada 6 minutos e Rubens dá uma volta na pista a cada
10 minutos. Em um determinado momento eles se cruzam em
um ponto P da pista.
Eles voltarão a se cruzar pela primeira vez nesse mesmo ponto
P após',NULL,NULL,'["6 minutos.", "10 minutos.", "24 minutos.", "30 minutos.", "60 minutos."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Matemática','Joana comprou uma bota que custava R$ 250,00 à vista e pagou
em duas parcelas iguais de R$ 150,00 cada uma, sendo a primeira
parcela paga no ato da compra e a segunda, um mês após.
A taxa de juros mensal que Joana pagou nessa compra foi de',NULL,NULL,'["10%.", "20%.", "25%.", "30%.", "50%."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Matemática','Considere a desigualdade |3𝑥 −2| < 10.
O número de valores inteiros de 𝑥 que satisfazem a desigualdade
dada é',NULL,NULL,'["4.", "5.", "6.", "7.", "8."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Matemática','Os elementos de cada linha e de cada coluna da matriz 5 × 5 apresentada no apoio formam progressões geométricas. O valor de N é:',NULL,'/cbmerj-apoios/2023-q26-p6-completo-0.png','["6.", "6√2.", "6√3.", "2√6.", "3√6."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Matemática','Considere a equação 2𝑥³ − 𝑚𝑥² + 4𝑥 − 3 = 0, onde 𝑚 é um
número real. Sabe-se que 𝑥 = −1 é raiz dessa equação.
A soma das 3 raízes da equação dada é',NULL,NULL,'["−3.", "−1.", "−9/2.", "9/2.", "9."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Matemática','A quantidade de números de 4 algarismos diferentes que são
maiores do que 3000 e menores do que 9000 é',NULL,NULL,'["6004.", "4084.", "3024.", "2094.", "2064."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Matemática','Em um sistema de coordenadas cartesianas xy, considere as retas
de equações 2𝑥 − 𝑦 +1 = 0 e 𝑥 + 𝑦 −4 = 0.
A área do triângulo delimitado por essas duas retas e pelo eixo-x
é
19',NULL,NULL,'["19/3.", "21/5.", "23/4.", "25/3.", "27/4."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Matemática','Solange e Marcelo fazem parte de um grupo de 10 pessoas.
Sorteiam-se duas pessoas desse grupo, em sequência e sem
reposição.
A probabilidade de Solange ser sorteada e Marcelo não ser
sorteado é de
8',NULL,NULL,'["8/45.", "1/10.", "1/5.", "4/25.", "3/40."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Física','Uma partícula é uniformemente retardada percorrendo, até
parar, 80m em 4s.
Durante o último segundo de movimento a partícula percorreu',NULL,NULL,'["5m.", "10m.", "12m.", "16m.", "20m."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Física','A figura a seguir mostra uma esfera maciça de centro C na qual
há uma mosca em repouso pousada na posição indicada.
Nela estão desenhados cinco segmentos orientados.
Assinale a opção que indica o segmento que representa a força
exercida pela esfera sobre a mosca.',NULL,'/cbmerj-apoios/2023-q32-p7-figura.png','["I.", "II.", "III.", "IV.", "V."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Física','O gráfico representa a relação entre a temperatura medida em
uma escala de temperatura hipotética X e a temperatura medida
na escala Celsius, sob pressão normal.
A temperatura de fusão do gelo e a de ebulição da água são, em
graus X, respectivamente iguais a',NULL,'/cbmerj-apoios/2023-q33-p7-figura.png','["-20 e 50.", "20 e 50.", "-20 e 55.", "20 e 55.", "-20 e 60."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Física','Analise as afirmativas a seguir.
I. As moléculas de um corpo, quer ele se encontre na fase
sólida, na fase líquida ou na fase gasosa, possuem energia
cinética, mas não possuem calor. Calor é energia em trânsito.
II. Quando a energia cinética de um corpo varia, a energia
cinética média de suas moléculas também varia.
Consequentemente, ele cedeu ou recebeu energia, mas não
necessariamente calor. A energia pode ter sido por ele cedida
ou recebida sob forma de trabalho.
III. A fase em que uma substância se encontra depende de suas
condições de pressão e temperatura, é possível que uma
substância se encontre na fase sólida e líquida, por exemplo,
em uma mesma temperatura.
Está correto o que se afirma em',NULL,NULL,'["II, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Física','Dois balões positivamente carregados são utilizados para induzir
cargas em bastões metálicos, alinhadas e em contato, que,
inicialmente, estavam eletricamente neutros.
Conforme mostrado na figura, os balões estão próximos, mas
jamais chegam a tocar os bastões.
Note e adote: o contato entre dois objetos metálicos permite a
passagem de cargas elétricas entre um e outro. Suponha que o ar
no entorno seja um isolante perfeito.
Nessa configuração, os bastões 1, 2 e 3 terão, respectivamente,
as seguintes cargas totais:',NULL,'/cbmerj-apoios/2023-q35-p7-figura.png','["1: negativo; 2: positivo; 3: negativo.", "1: zero; 2: negativo; 3: zero.", "1: zero; 2: negativo; 3: negativo.", "1: negativo; 2: zero; 3: negativo.", "1: zero; 2: zero; 3: zero."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Física','Um móvel (1), de pequenas dimensões, parte do repouso
uniformemente acelerado à razão de 2 m/s² no instante em que
passa por ele outro móvel (2) animado por um movimento
uniforme com uma velocidade de 10m/s.
Suponha que o móvel (1) persiga o móvel (2) até alcançá-lo.
Durante a perseguição, isto é, entre o instante em que o móvel
(1) parte e o instante em que alcança o móvel (2), a maior
distância entre eles foi de',NULL,NULL,'["15m.", "25m.", "50m.", "75m.", "100m."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Física','Um caixote de 100 kg sobe a rampa representada na figura ao
longo da reta de maior declive com uma velocidade constante de
módulo igual a 1,5 m/s, à custa da energia fornecida por um
motor.
O coeficiente de atrito cinético entre o bloco e a rampa é μ =
0,25. No local, g = 10 m/s².
Considere a roldana e os fios ideais; considere desprezíveis os
atritos no eixo da roldana, o trecho do fio que prende o bloco à
roldana paralelo à rampa e o trecho do fio que liga a roldana ao
motor vertical.
Nesse caso, o motor está desenvolvendo uma potência útil de',NULL,'/cbmerj-apoios/2023-q37-p8-figura.png','["0,80kW.", "1,0kW.", "1,2kW.", "1,6kW.", "3,2kW."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Física','Tem-se uma esfera metálica oca de raio R à temperatura
ambiente. A interseção dessa esfera com um plano é um círculo.
Em particular, quando o plano contém o centro C da esfera, o
círculo obtido é um “círculo máximo”, de raio igual ao raio R da
esfera, como ilustra a figura.
Quando a temperatura sofre uma variação ∆θ, o volume da
esfera sofre uma variação ∆V e a área do círculo máximo sofre
variação ∆A. No entanto, seja qual for a variação de temperatura
ocorrida, a razão ΔV/ΔA permanece igual a',NULL,'/cbmerj-apoios/2023-q38-p8-figura.png','["2R.", "3R/4.", "R.", "2R/3.", "R/2."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Física','Uma esfera de massa m, quando largada de um nível de potencial
gravitacional A, pode chegar até o nível B de três maneiras
diferentes: (I) cair livremente, (II) através de um pêndulo ou (III)
por um plano inclinado.
Se V(I), V(II) e V(III) são, respectivamente, as velocidades com que (I), (II) e (III) chegam em B, é correto afirmar que',NULL,'/cbmerj-apoios/2023-q39-p8-figura.png','["V(I) = V(II) = V(III).", "V(I) > V(II) = V(III).", "V(I) < V(II) = V(III).", "V(I) > V(II) > V(III).", "V(I) < V(II) < V(III)."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Física','A figura a seguir representa, em um gráfico cartesiano, como a
velocidade escalar de uma partícula em movimento varia em
função do tempo.
A velocidade escalar média dessa partícula entre os instantes
t₁ e t₂ foi de',NULL,'/cbmerj-apoios/2023-q40-p8-figura.png','["27km/h.", "32km/h.", "42km/h.", "57km/h.", "62km/h."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Física','Um bloco de 4 kg se desloca em linha reta sobre uma superfície
plana e horizontal, uniformemente retardado à razão de 7,5m/s².
Considere g = 10m/s².
O módulo da força que a superfície de apoio exerce sobre ele é
igual a',NULL,NULL,'["40N.", "42N.", "44N.", "48N.", "50N."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Física','Uma partícula está se movendo com aceleração a⃗ horizontal,
constante de módulo igual a 4 m/s².
Em um determinado instante, o vetor velocidade v⃗ da partícula,
de módulo igual a 24 m/s, forma um ângulo de 120° com o vetor
aceleração 𝑎 , como ilustra a figura.
A contar desse instante, para que o vetor velocidade 𝑣 se torne
perpendicular ao vetor aceleração 𝑎 , decorreram',NULL,'/cbmerj-apoios/2023-q42-p9-figura.png','["2s.", "3s.", "4s.", "6s.", "8s."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Física','O gráfico abaixo indica a variação de temperatura ΔT, em função
da quantidade de calor Q, transferida a dois sistemas A e B, de
massas iguais, inseridos em calorímetros ideais.
De acordo com a análise gráfica é possível concluir que a relação
entre o calor específico (cA) e (cB) dos materiais presentes nos
sistemas A e B, respectivamente, é',NULL,'/cbmerj-apoios/2023-q43-p9-figura.png','["cA = 4cB", "cA = 2cB", "cA = cB", "cA = cB/2", "cA = cB/4"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Física','Um calorímetro de capacidade térmica desprezível contém 300g
de gelo a 0°C. Nele são injetados 30g de vapor d’água a 100°C.
O calor de fusão do gelo é 80cal/g, o calor de condensação do
vapor d’água é 540cal/g e o calor específico da água (líquida) é
1,0cal/goC.
Quando se restabelece o equilíbrio térmico, a massa de água
(líquida) contida no calorímetro é',NULL,NULL,'["210g.", "240g.", "270g.", "300g.", "330g."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Física','O gráfico mostra como varia a força de repulsão entre duas
esferas puntiformes, idênticas e igualmente carregadas, em
função da distância entre elas.
Considerando a constante eletrostática do vácuo como
k = 9.10⁹ N.m²/C², a intensidade da força de repulsão F entre as
o
esferas, quando estiverem afastadas em 2 metros, é de',NULL,'/cbmerj-apoios/2023-q45-p9-figura.png','["12 N.", "24 N.", "26 N.", "48 N.", "64 N."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Química','Na tentativa de promover a separação de componentes de uma
mistura heterogênea, um técnico a deixou em repouso,
observando a sedimentação do componente sólido de maior
densidade. Após um longo tempo, foi possível verter o
componente líquido, sobrenadante, para outro frasco,
separando-o do componente sólido, depositado ao fundo.
A técnica de separação adotada é chamada',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["separação magnética.", "destilação simples.", "tamisação.", "filtração simples.", "decantação."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Química','O benzeno é uma substância química que se apresenta como
líquido incolor em temperatura ambiente e pressão atmosférica
(25°C e 1atm, respectivamente). Trata-se de uma substância
altamente tóxica, apesar de seu aroma doce e agradável. Seus
vapores, se inalados, causam dor de cabeça, inconsciência e, em
período prolongado de exposição, leucopenia. É imiscível em
água e possui ponto de ebulição igual a 80°C.
A esse respeito, analise as afirmativas a seguir.
I. Em pressão atmosférica, o ponto de fusão do benzeno é
maior que 25°C.
II. Em temperatura superior a 80°C e pressão atmosférica, o
benzeno estará no estado gasoso.
III. A evaporação de benzeno ocorre apenas em temperatura
acima de 80°C, logo não há risco de inalação de vapores em
temperatura ambiente.
Está correto o que se afirma em',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["I, apenas.", "II, apenas.", "I e II, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Química','O escândio é um elemento químico de símbolo Sc que apresenta
número atômico igual a 21. É sólido a 25°C, metálico, macio, de
cor branco-prateada.
A configuração eletrônica do escândio, no estado fundamental, é:',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["K: 8; L: 8; M: 5.", "K: 2; L: 8; M: 11.", "K: 2; L: 2; M: 15; N: 2.", "K: 2; L: 8; M: 8; N: 3.", "K: 2; L: 8; M: 9; N: 2."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Química','O carbono possui três isótopos naturais: ¹²₆C, ¹³₆C e ¹⁴₆C. As abundâncias dos isótopos ¹²₆C e ¹³₆C são, respectivamente, 98,9% e 1,1%, restando apenas traços do ¹⁴₆C. Sobre esses átomos, é correto afirmar que eles possuem:',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["números de prótons diferentes.", "números de nêutrons diferentes.", "números de elétrons diferentes.", "números atômicos diferentes.", "números de camadas eletrônicas diferentes."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Química','O ácido oxálico está presente em diversos alimentos,
principalmente nas folhas de vegetais, como a acelga suíça, a
beterraba, o espinafre e o ruibarbo. Também é encontrado no
amendoim e no cacau. Trata-se um ácido dicarboxílico, de
fórmula molecular C₂H₂O₄.
Considere as massas atômicas C: 12g mol–¹, H: 1g mol–¹ e
O: 16gmol–¹.
A massa molecular do ácido oxálico, em g mol–¹, é',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["29", "45", "58", "90", "114"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','Química','O efeito fotoelétrico é um fenômeno de origem quântica que
consiste na emissão de elétrons por algum material que é
iluminado por radiações eletromagnéticas de frequências
específicas. Os elétrons emitidos por esses materiais são
chamados de fotoelétrons.
Considere os átomos sódio (Na), potássio (K), ferro (Fe), césio (Cs)
e iodo (I).
Nesse conjunto, o átomo que necessita de radiação
eletromagnética de menor frequência para a emissão de
fotoelétrons é',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["Na", "K", "Fe", "Cs", "I"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','Química','Avogadro (1776-1856) estimou que o diâmetro de um átomo é
em torno de 10⁻¹⁰ m. Um século mais tarde, Ernest Rutherford
(1871-1937) estimou que os núcleos atômicos possuem diâmetro
de cerca de 10–¹⁴m.
A diferença entre os diâmetros foi explicada pela presença de
prótons e nêutrons no núcleo muito denso e pela disposição de
elétrons em camadas na eletrosfera, num modelo atômico
planetário.
A esse respeito, analise as afirmativas a seguir.
I. O raio atômico do estrôncio é igual ao raio atômico da prata,
pois ambos átomos possuem o mesmo número de camadas
eletrônicas.
II. O raio atômico do cálcio é maior do que o raio atômico do
bário, pois o cálcio apresenta maior número de camadas
eletrônicas.
III. O raio atômico do potássio é maior do que o raio atômico do
zinco, pois o potássio tem menor carga nuclear.
Está correto o que se afirma em',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "II e III, apenas."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','Química','Cloreto de lítio é um sal higroscópico altamente solúvel em água.
Sua solubilidade em solventes orgânicos como metanol e acetona
é maior do que a solubilidade de cloreto de sódio ou cloreto de
potássio. É preparado pela reação de carbonato de lítio com
ácido clorídrico e usado na produção de lítio metálico através de
eletrólise ígnea.
Dados: valores de eletronegatividade de Pauling: Li = 1,0; Cl = 3,0.
Assinale a opção que apresenta o tipo de ligação química que
ocorre no cloreto de lítio.',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["Iônica.", "Covalente polar.", "Covalente apolar.", "Coordenada.", "Metálica."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','Química','A regra do octeto estabelece que os átomos devem possuir oito
elétrons em sua camada de valência de modo a atingir a
estabilidade. Assim, ligações químicas se estabelecem, por
transferência ou compartilhamento de elétrons, de forma que
cada átomo possa ficar com oito elétrons na camada de valência,
semelhante a um gás nobre.
Embora muito útil para a determinação da fórmula de compostos
químicos, essa regra apresenta inúmeras exceções e ligações
químicas em que se observa a expansão ou a contração do
octeto.
Assinale a opção na qual ambos os compostos representam
exceções à regra do octeto.',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["BF₃ e KCl", "BeCl₂ e NO", "SF₆ e CaCl₂", "KBr e NaF", "Cl₂ e SO₃"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','Química','O óxido de silício, SiO₂, é a principal matéria prima do vidro. Além
dele, outros óxidos são misturados com finalidades diversas. Por
exemplo, o óxido de sódio (Na₂O) e o óxido de potássio (K₂O) são
responsáveis pelo abaixamento do ponto de fusão da mistura; o
óxido de cálcio (CaO) é introduzido com a finalidade de dificultar
a cristalização da sílica trazendo a transparência ao produto final;
o óxido de alumínio (Al₂O₃ ) agrega resistência a choques
mecânicos; e o óxido de magnésio (MgO) aumenta a capacidade
de suportar mudanças bruscas de temperatura.
Assinale a opção que contém apenas óxidos básicos.',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["Na₂O e MgO.", "Al₂O₃ e Na₂O.", "SiO₂ e Al₂O₃.", "K₂O e Al₂O₃.", "SiO₂ e CaO."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','Química','O ácido fosfórico (H₃PO₄ ) é usado na indústria de alimentos como
acidulante de bebidas. No Brasil, esse ácido é empregado nas
formulações de refrigerantes, diminuindo o valor do pH,
regulando a doçura e realçando o paladar. Além disso, o ácido
fosfórico atua como conservante do produto.
Ele pode ser obtido a partir do tratamento da apatita (um mineral
que contém fosfato de cálcio) com ácido sulfúrico (H₂SO₄ ),
formando também sulfato de cálcio.
As fórmulas dos compostos fosfato de cálcio e sulfato de cálcio
são, respectivamente,',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["Ca₃PO₄ e Ca₂SO₄.", "Ca₃(PO₄)₂ e CaSO₄.", "Ca(PO₄)₂ e CaSO₄.", "Ca(PO₄)₃ e Ca(SO₄)₃.", "Ca₂(PO₄)₃ e CaSO₄."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','Química','Óxidos ácidos presentes na atmosfera, em contato com a chuva,
dissolvem-se e causam a diminuição do pH. A chuva, então
contaminada por tais óxidos, é comumente chamada chuva ácida.
Assinale a opção que apresenta um óxido que pode contribuir
para a formação de chuvas ácidas.',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["NH₃", "BaO", "SO₃", "CH₄", "CO"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','Química','Considere a reação química entre permanganato de potássio
(KMnO₄) e sulfato ferroso (FeSO₄) em meio ácido:
a KMnO₄ + b FeSO₄ + c H₂SO₄ → d Fe₂(SO₄)₃ + e K₂SO₄ + f MnSO₄ + g H₂O
A soma dos coeficientes estequiométricos (a + b + c + d + e + f + g)
que tornam a equação balanceada é igual a',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["21.", "26.", "30.", "36.", "42."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Química','O processo industrial de síntese de ureia ((NH₂)₂CO) passa por duas etapas principais:
2 NH₃ + CO₂ → NH₂C(O)ONH₄
NH₂C(O)ONH₄ → (NH₂)₂CO + H₂O
As etapas são, respectivamente, classificadas como reações de',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["síntese e dupla troca.", "síntese e síntese.", "deslocamento e decomposição.", "síntese e decomposição.", "deslocamento e dupla troca."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Química','O hidrogênio (H₂) é considerado o combustível do futuro, porque
sua queima gera grande quantidade de energia e o resíduo de
combustão é água. A equação química que representa essa
combustão é:
2 H₂(g) + O₂(g) → 2 H₂O(g)
Nessa reação, o hidrogênio reage com o oxigênio em proporção
1:8 (em massa).
A esse respeito, analise as afirmativas a seguir.
I. A combustão completa de 5g de hidrogênio requer 40g de
oxigênio.
II. A mistura de 4g de hidrogênio com 16g de oxigênio deverá
gerar 20g de água.
III. A combustão de 2g de hidrogênio gera 2g de água.
Está correto o que se afirma em',NULL,'/cbmerj-apoios/2023-tabela-periodica.png','["I, apenas.", "II, apenas.", "III, apenas.", "I e II, apenas.", "I, II e III."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Biologia','O Corpo de Bombeiros atua, com frequência, em ocorrências que
envolvem a contenção e captura de animais silvestres,
especialmente serpentes. A chegada do verão, as construções
próximas à região de mata e a destruição do habitat natural são
fatores que ajudam a explicar, segundo especialistas, as aparições
desses animais em áreas urbanas.
As serpentes são répteis classificados no grupo dos lepidosauros
e apresentam características como',NULL,NULL,'["a ectotermia, a respiração cutânea e o coração dividido em 3 cavidades.", "a respiração pulmonar, a viviparidade e a fecundação externa.", "a pele queratinizada, a ectotermia e a circulação dupla e fechada.", "a fecundação externa, a pecilotermia e a pele queratinizada, sem glândulas mucosas.", "o ovo amniótico, a homeotermia e o coração com quatro cavidades."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Biologia','A taxonomia é o ramo da biologia que nomeia e classifica os seres
vivos, ordenando-os em grupos de acordo com o maior ou o
menor grau de características compartilhadas entre eles.
Atualmente, as unidades de classificação dos seres vivos mais
abrangentes são os reinos e os domínios.
Com relação a essas unidades, analise as afirmativas a seguir e
assinale (V) para a verdadeira e (F) para a falsa.
( ) No sistema de classificação em cinco reinos, apenas um deles,
o reino Protista, agrupa todos os organismos procariontes.
( ) Os domínios são categorias mais abrangentes do que os
reinos. Um único domínio, Eukarya, inclui organismos de
quatro reinos – Protista, Fungi, Plantae e Animalia.
( ) Nos domínios Bacteria e Archaea podem ser encontrados
organismos autótrofos ou heterótrofos. Já o domínio Eukarya
engloba apenas organismos heterótrofos.
As afirmativas são, na ordem apresentada, respectivamente,',NULL,NULL,'["F, V e F.", "F, V e V.", "V, F e F.", "V, V e F.", "F, F e V."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Biologia','Os organismos multicelulares são constituídos por diversos tipos
de células. O esquema a seguir apresenta neurônios que
exemplificam o ajuste entre forma e função que surge ao longo
da evolução. A habilidade dos neurônios em receber e transmitir
informações baseia-se em sua organização celular altamente
especializada.
No esquema acima, a especialização que permite a maior
velocidade na condução do impulso nervoso em neurônios de
vertebrados está indicada pelo número',NULL,'/cbmerj-apoios/2023-q63-p12-figura.png','["1.", "2.", "3.", "4.", "5."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Biologia','No portal do CBMERJ são encontradas diversas cartilhas para
consulta, entre elas, a intitulada “Varíola dos macacos, o que
você precisa saber”. Essa cartilha contém informações sobre os
sintomas da doença, seu agente etiológico e as formas de
transmissão, tratamento e prevenção.
Com relação à varíola dos macacos e a seu agente etiológico,
analise as afirmativas a seguir.
I. A doença é causada por vírus, organismos cuja ausência de
organização celular e metabolismo próprio os torna parasitas
intracelulares obrigatórios.
II. Não há tratamento específico e os sintomas desaparecem
espontaneamente entre duas e três semanas, graças à
imunidade ativa, na qual o organismo da pessoa infectada
gera anticorpos que combatem a doença.
III. Assim como as arboviroses dengue e febre amarela, o agente
etiológico da varíola dos macacos é transmitido por meio da
picada da fêmea de mosquitos.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Biologia','No interior das células, os processos de fotossíntese e respiração
celular realizam as transformações de energia necessárias à
manutenção da vida.
A figura a seguir mostra esses processos, de forma simplificada.
Sobre as organelas e os processos representados, assinale a
afirmativa correta.',NULL,'/cbmerj-apoios/2023-q65-p13-figura.png','["A fotossíntese ocorre na organela I e é responsável pela transformação da energia química contida nas moléculas de glicose em energia química das moléculas de ATP.", "A organela assinalada por II é o cloroplasto e nela ocorre a transformação da energia luminosa em energia química, que fica armazenada em moléculas de glicose.", "A transformação das moléculas de ATP em moléculas de glicose ocorre na organela I, que representa o cloroplasto das células vegetais.", "O número II indica uma mitocôndria, organela responsável pelo aproveitamento da energia contida em moléculas de gás carbônico e água absorvidas pelos organismos.", "As organelas I e II podem ser encontradas em vegetais, porém a organela I está ativa apenas durante a noite, enquanto a organela II está ativa durante o dia, em presença de luz."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Biologia','Se você nunca sofreu uma queimadura por água-viva, certamente
conhece alguém que já passou por isso. "Até abril é quando
ocorre a maior quantidade de queimaduras deste tipo na orla das
praias”, afirma uma capitã do GBMar (Grupamento de Bombeiros
Marítimo), unidade operacional do Corpo de Bombeiros
especializada em atividades aquáticas.
(Adaptado de Revista Crescer, 28/01/2022)
As águas-vivas apresentam em sua superfície corporal células
urticantes com nematocistos em seu interior, responsáveis pelos
acidentes mencionados acima.
Esses animais pertencem ao filo',NULL,NULL,'["Cnidaria, formado por animais triblásticos e com simetria bilateral.", "Porifera, formado por animais diblásticos e com simetria bilateral.", "Cnidaria, formado por animais diblásticos e com simetria radial.", "Porifera, formado por animais triblásticos e com simetria radial.", "Cnidaria, formado por animais diblásticos e com simetria bilateral."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Biologia','Analise o heredograma abaixo que mostra uma doença de
herança autossômica representada pelos quadrados e círculos
em branco.
Com relação a essa doença, avalie as afirmativas a seguir e
assinale (V) para a verdadeira e (F) para a falsa.
( ) A doença tem herança autossômica recessiva.
( ) A geração parental é, obrigatoriamente, heterozigota.
( ) Entre os filhos do casal representado no heredograma, os que
não apresentam a doença têm 2/4 de chance de serem
heterozigotos.
As afirmativas são, na ordem apresentada, respectivamente,',NULL,'/cbmerj-apoios/2023-q67-p13-figura.png','["F, F e V.", "V, F e V.", "F, V e F.", "V, V e F.", "V, V e V."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Biologia','Em 2020, um incêndio atingiu o Parque Nacional da Tijuca e se
alastrou por uma área equivalente a trinta campos de futebol.
A causa provável do incêndio foi a queda de balões e o combate
ao fogo foi feito por brigadistas e voluntários do Parque, junto
com equipes do Corpo de Bombeiros do Rio de Janeiro.
Na Floresta da Tijuca, as angiospermas constituem a maioria das
espécies de plantas. Este grupo vegetal é formado por plantas',NULL,NULL,'["avasculares, com flores e sementes, mas sem frutos.", "vasculares, com flores e sementes, mas sem frutos.", "avasculares, com sementes, mas sem flores e frutos.", "vasculares, com flores, frutos e sementes.", "avasculares, com flores e frutos, mas sem sementes."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Biologia','Certa vesícula, muito frequente no citoplasma de células com
funções fagocitárias, é delimitada por membrana e contém
enzimas capazes de digerir moléculas orgânicas em geral.
Essa estrutura é o',NULL,NULL,'["retículo endoplasmático rugoso.", "peroxissomo.", "complexo golgiense.", "lisossomo.", "vacúolo contrátil."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Biologia','Observe o esquema que compara o esqueleto dos membros
anteriores de humanos e aves.
(Adaptado de AMABIS e MARTHO, Biologia Moderna, vol. 3
São Paulo: Moderna, 2016)
Os ossos dos braços humanos são estruturas',NULL,'/cbmerj-apoios/2023-q70-p14-figura.png','["análogas às asas das aves e a diferença de funções entre elas se deve à evolução divergente que sofreram.", "homólogas às asas das aves e a diferença de funções entre elas se deve à evolução divergente que sofreram.", "análogas às asas das aves e a diferença de funções entre elas se deve à evolução convergente que sofreram.", "homólogas às asas das aves e a diferença de funções entre elas se deve à evolução convergente que sofreram.", "vestigiais em relação às asas das aves e a diferença de funções entre elas se deve à evolução convergente que sofreram."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','Geografia','O padrão de distribuição das chuvas descrito no fragmento acima
se deve à ação','Leia o fragmento a seguir:
“As chuvas encontram-se desigualmente distribuídas no globo. No
sentido das longitudes, observa-se uma oposição entre as costas
ocidentais e orientais dos continentes. Nas baixas latitudes, as
primeiras são habitualmente pouco chuvosas, ocorrendo o inverso
nas orientais, ao passo que nas latitudes altas e médias verifica-
se o oposto. Isto se repete simetricamente em todos os
continentes, aparecendo de forma mais nítida no hemisfério sul.”
(Adaptado de: Ross, Jurandyr (org.). Geografia do Brasil, 2005: 95)',NULL,'["dos ventos alísios.", "das frentes polares.", "das correntes marítimas.", "dos ciclones subtropicais.", "da zona de convergência intertropical."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','Geografia','Bem público por excelência, a água se transformou em um bem
mercantil em virtude do aumento da demanda e dos custos cada
vez mais elevados de captação, distribuição e tratamento,
sobretudo a partir de meados do século XX.
Sobre o uso de água doce no mundo, analise as afirmações a
seguir.
I. A maior parte das águas residuais retorna ao ambiente após
tratamento adequado.
II. A Ásia é o continente com maior participação das terras
irrigadas no total de terras agrícolas.
III. O setor industrial é responsável pela maior parte do consumo
de água doce, quando comparado aos setores doméstico e
agrícola.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','Geografia','Como parte do ciclo global de carbono, a cobertura florestal é um
valioso indicador da saúde climática. De acordo com a
Organização das Nações Unidas para a Alimentação e a
Agricultura (FAO), a cobertura florestal mundial abrange mais de
quatro milhões de hectares, cerca de 30% da superfície total das
terras emersas.
Considerando a distribuição atual da cobertura florestal e suas
alterações em escala mundial nas primeiras décadas do século
XX, assinale V para a afirmativa verdadeira e F para a falsa.
( ) O Brasil está entre os cinco países com maior superfície
florestal do mundo.
( ) Nas duas primeiras décadas do século XX houve um aumento
da superfície florestal em escala mundial.
( ) Entre as zonas climáticas, a zona temperada é a que possui o
maior percentual da cobertura florestal do planeta.
As afirmativas são, respectivamente,',NULL,NULL,'["F, V e F.", "V, V e V.", "V, F e V.", "V, F e F.", "F, F e V."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','Geografia','A queda do muro de Berlim, em 1989, marcou simbolicamente o
fim do período da Guerra fria e o ocaso da ordem bipolar que
articulou o mundo no pós-guerra.
Sobre a “nova ordem mundial”, analise as afirmações a seguir.
I. No plano militar, a China desempenha um papel de potência
regional.
II. A presença de outros polos de poder geopolítico limita a
hegemonia norte-americana.
III. As rendas das exportações de combustíveis fósseis
constituem um alicerce para o projeto russo de restauração
de sua influência mundial.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','Geografia','A população mundial atual é mais de três vezes maior do que
aquela registrada em meados do século XX e, de acordo com as
previsões da Organização das Nações Unidas (ONU), alcança a
cifra de oito bilhões de pessoas ainda em 2022.
Entre as regiões do globo, aquela que apresenta, na atualidade,
as maiores taxas de crescimento populacional e a menor
participação de pessoas com mais de 65 anos na população total
é a região da',NULL,NULL,'["África subsaariana.", "América Latina e Caribe.", "Europa e América do Norte.", "Ásia Ocidental e Sul-ocidental.", "África Setentrional e Ásia Ocidental."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','Geografia','Leia o fragmento a seguir:
“A cisão entre o litoral e o interior, entre o mar e o sertão,
caracterizou, desde os primeiros tempos, a formação territorial
da América Portuguesa. Essa divisão perseverou durante séculos
e imprimiu sua marca à cultura brasileira.”
(adaptado de: Magnoli, Demétrio. Geografia
para o ensino médio. São Paulo: Atual, 2008: 214)
Considerando o processo de ocupação, no período colonial, da
área que corresponde à atual macrorregião Nordeste, analise as
afirmativas a seguir:
I. No século XVI, as missões jesuíticas organizaram a coleta de
drogas do Sertão na região do semiárido.
II. No século XVII, a pecuária se deslocou rumo ao interior, nas
direções dos rios Parnaíba e São Francisco.
III. No século XVIII, a cafeicultura se expandiu nas manchas de
terra roxa situadas na faixa litorânea.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','Geografia','Segundo os dados do portal da Indústria (2019), o estado de São
Paulo é responsável por cerca de 29% do Produto Interno Bruto
industrial do Brasil e por cerca de 30% da força de trabalho
industrial do país.
Sobre o processo de industrialização do estado de São Paulo,
analise as informações a seguir.
I. A cidade de São Paulo se transformou no principal polo
industrial do país na primeira metade do século XX.
II. A indústria automobilística se manteve concentrada na
capital do estado até a primeira década do século XXI.
III. A descentralização industrial seguiu os eixos rodoviários que
ligam a Grande São Paulo às cidades médias do interior.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','Geografia','A partir da década de 1930, houve uma aceleração do processo
de urbanização do território brasileiro. De acordo com os dados
do Censo Demográfico, em 1970 a população urbana já era maior
do que a população rural. Já no ano de 2000, cerca de 80% da
população brasileira habitava o meio urbano. Entretanto, esse
processo ocorreu de forma desigual no país.
Considerando o processo de urbanização nas grandes regiões
brasileiras, ao longo do século XX, assinale V para a afirmativa
verdadeira e F para a falsa.
( ) Na região Norte, a população permaneceu
predominantemente rural até o final do século XX.
( ) Na região Centro-Oeste, houve uma involução urbana com o
avanço da moderna agricultura comercial, que impulsionou a
migração para as áreas rurais.
( ) Na região Sudeste, a urbanização impulsionou o fluxo
migratório proveniente do Nordeste, acelerando o
crescimento dos grandes centro urbanos.
As afirmativas são, respectivamente,',NULL,NULL,'["F, V e F.", "V, V e V.", "V, F e V.", "V, V e F.", "F, F e V."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','Geografia','A agricultura familiar apresenta dinâmica e características
distintas da agricultura não familiar. Nela, a gestão da
propriedade é compartilhada pela família e a atividade produtiva
agropecuária é a principal fonte geradora de renda. Segundo o
Censo Agropecuário de 2017, o valor da produção da agricultura
familiar equivale a quase 25% de toda a produção agropecuária
brasileira.
Considerando o total de pessoas ocupadas no setor agropecuário,
a macrorregião brasileira que apresenta o maior percentual na
agricultura familiar é a região',NULL,NULL,'["Sul.", "Norte.", "Sudeste.", "Nordeste.", "Centro-Oeste."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','Geografia','Entre os anos de 2000 e 2010, houve um aumento da
participação das mulheres no mercado de trabalho brasileiro.
Entretanto, observam-se diferenças significativas em relação aos
homens, mas também entre alguns segmentos específicos das
mulheres.
Sobre a participação das mulheres no mercado de trabalho
brasileiro, em 2010, assinale V para a afirmativa verdadeira e
F para a falsa.
( ) A taxa de atividade das mulheres de mais de 60 anos era
maior do que a dos homens no mesmo grupo de idade.
( ) A taxa de atividade das mulheres era maior em áreas urbanas
do que em áreas rurais.
( ) A taxa de atividade das mulheres na região Nordeste era a
mais alta entre as grandes regiões do país.
As afirmativas são, respectivamente,',NULL,NULL,'["F, V e F.", "V, V e V.", "V, F e V.", "V, V e F.", "F, F e V."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'81','História','Com base no mapa, avalie as afirmativas a seguir e assinale (V)
para a verdadeira e (F) para a falsa.
( ) Os circuitos 2 e 3 mostram que o Mar Mediterrâneo era
dominado pelas cidades italianas de Veneza e Gênova, as
quais, desde o século XI, apoiaram as Cruzadas para obter
mercadorias orientais de luxo que chegavam até o Império
Bizantino e Oriente Próximo.
( ) O circuito 3 mostra o eixo terrestre da rota da seda, que
conectava o império Yuan chinês a Antioquia, na Síria
medieval, constituindo uma via comercial para seda, papel,
chá e cerâmica para o Oeste e vidro e produtos metalúrgicos
para o Oriente, entre outros.
( ) Os circuitos 3 e 4 mostram a vitória do Islã sobre os mongóis,
no século XIII, e a expansão do califado de Bagdá como centro
propulsor do comércio e do expansionismo dos Omíada no
Oriente Médio.
Assinale a opção que indica a sequência correta, de cima para
baixo.','Observe os oito círculos do sistema mundial (século XIII): eles
representam os principais circuitos comerciais da Eurásia e da
África.
Fonte: J.L. Abu-Lughod, Before European Hegemony, 1989, p. 34.','/cbmerj-apoios/2023-q81-p16-figura.png','["V, V e F.", "F, F e V.", "F, V e V.", "V, F e F.", "V, V e V."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'82','História','Os aspectos assinalados a seguir são traços comuns à civilização
do Renascimento e à do Iluminismo, à exceção de um. Assinale-o.',NULL,NULL,'["Teocentrismo.", "Visão laica da vida.", "Exaltação da razão humana.", "Desenvolvimento de ideia de religião universal.", "Concepção de homem como artífice de si mesmo."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'83','História','A democracia é uma construção coletiva com raízes históricas
que remontam à Antiguidade Clássica.
Para a civilização greco-romana, a democracia',NULL,NULL,'["contrapunha-se à oligarquia, sistema em que os proprietários de terra contratavam guerreiros e mercenários para restringir o direito de fala em praça pública, como em Esparta.", "realizava-se pelo autogoverno dos cidadãos livres que, independente de riqueza e status, eram credenciados para participar diretamente das decisões coletivas, como em Atenas, no tempo de Péricles.", "baseava-se em voto individual, e com o mesmo peso, na deliberação coletiva, o que favorecia a ascensão política de uma maioria de governantes proveniente da plebe, em Roma, e de cidadãos não proprietários, em Atenas.", "fundamentava-se na ideia de liberdade política, em contraposição ao modelo imperial persa, que permitia certo grau de participação popular, mas vinculada a critérios econômicos e censitários.", "designava uma forma de governo popular e representativa, em que a classe política escolhida defende os interesses do povo, diferentemente de monarquias, como a romana e a espartana, por exemplo."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'84','História','A partir do trecho, pode-se afirmar que o fascismo é','“Nem todo movimento reacionário é fascista. Nem toda
repressão – por mais feroz que seja – exercida em nome da
conservação de privilégios de classe ou casta é fascista. Por outro
lado, o conceito de fascismo não se deixa reduzir aos de ditadura
ou de autoritarismo”.
Adaptado de KONDER, Leandro. Introdução ao fascismo.
Rio de Janeiro: Edições do Graal, 1977. p. 4.',NULL,'["uma ideologia pautada na divisão e autonomia dos poderes, formulada por um líder nacionalista, capaz de angariar o apoio das massas populares.", "um sistema de governo em que o cidadão participa da vida política ao se submeter aos interesses do Estado, considerado o órgão que representa a coletividade.", "uma forma de comportamento político preocupado com a humilhação imposta a uma comunidade e organizada por um partido militante nacionalista, de base popular, que repudia as liberdades democráticas.", "uma doutrina política baseada no princípio da ação popular, apoiada por nacionalistas de esquerda, em confronto com os interesses de setores conservadores, dos quais buscam retirar o monopólio dos meios de coerção.", "um fenômeno cujo êxito resulta da capacidade de propor mudanças sociais e projetos de engrandecimento econômicomilitar que são negociados em parlamento e apoiados por coligações partidárias majoritárias."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'85','História','Observe o mapa a seguir.
As fronteiras do território que hoje chamamos “Brasil” delineadas
no mapa foram estabelecidas pelo',NULL,'/cbmerj-apoios/2023-q85-p17-figura.png','["Tratado de Tordesilhas (1494).", "Tratado de Lisboa (1681).", "Tratado de Utrecht entre Portugal e França (1713).", "Tratado de Utrecht entre Portugal e Espanha (1715).", "Tratado de Madrid (1750)."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'86','História','“No processo de conquista e colonização da América, os
portugueses dependeram fundamentalmente dos povos
indígenas. Os diferentes grupos etnolinguísticos aqui
encontrados, tais como os Tamoio, Tupiniquim, Aimoré, e
Goitacaz, entre outros, foram todos chamados índios pelos
europeus. Na condição de aliados ou inimigos, eles
desempenharam importantes e variados papéis na nova colônia
que, então, se construía”.
Maria Regina Celestino de Almeida, “Povos Indígenas no Brasil”,
in http://bndigital.bn.gov.br
A respeito das relações entre europeus e indígenas, durante o
período de colonização da América Portuguesa, assinale a
afirmativa correta.',NULL,NULL,'["A chegada dos europeus na América gerou uma catástrofe demográfica, fruto da incapacidade de adaptação de portugueses, holandeses e ingleses à vida nos trópicos.", "Os Tapuia habitavam o litoral e, por isso, os portugueses tiveram um contato mais prolongado com eles, o que permitiu que fossem mais bem conhecidos pelos europeus.", "O vocábulo Tupi significava bárbaro para os ameríndios e foi usado para designar todos os grupos não Tapuia com os quais os colonizadores se deparavam.", "A grande variedade de povos com línguas e culturas diversas foi reduzida a dois grandes grupos, Tupi e Tapuia, pelos cronistas, missionários e agentes europeu da colonização.", "A principal estratégia da Coroa para submeter os ameríndios às leis do império português foi a subvenção de aldeamentos missionários franciscanos, sobretudo no sertão vicentino."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'87','História','A cidadania não se restringe ao voto. A Constituição de 1988
previu diversas formas de exercer a cidadania além da consulta
eleitoral, como, por exemplo, atuar em órgãos considerados
importantes instâncias de participação social, garantidos pela
Constituição nas áreas da saúde, educação e assistência social.
Estes órgãos são deliberativos e contam com participação de
organizações da sociedade civil e representantes do Estado em
proporções iguais. Suas reuniões são abertas à população e
tratam de diferentes temas como juventude, direitos da mulher,
mobilidade urbana, meio ambiente, entre tantos outros.
O texto se refere à participação em',NULL,NULL,'["ouvidorias públicas", "conselhos municipais.", "orçamento participativo.", "audiências públicas da cidade.", "sessões legislativas na Câmara dos Vereadores."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'88','História','Com base no gráfico, analise as afirmativas a seguir sobre a
geopolítica do petróleo, desde os anos 1970.
I. Em 1973, o petróleo árabe foi usado como arma contra o
mundo ocidental, principalmente contra os Estados Unidos e
os países europeus que apoiaram Israel na Guerra do Yom
Kippur, contra Egito e Síria.
II. Em 1979, a paralisação da produção petrolífera do Irã, em
função da Revolução Islâmica liderada pelo aiatolá Khomeini,
provocou uma crise que fez explodir o preço médio do barril.
III. Em 2011, as guerras na Líbia e na Síria contribuíram para altas
expressivas no preço do barril, sobretudo em função da
intensidade da Primavera Árabe na Arábia Saudita, o maior
produtor de petróleo.
Está correto o que se afirma em',NULL,'/cbmerj-apoios/2023-q88-p18-figura.png','["I, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'89','História','Na noite de 16 de dezembro de 1773, um grupo de homens
disfarçados de índios, autodenominados Filhos da Liberdade,
embarcou em três navios e despejou o carregamento de chá no
porto de Boston.
Nathaniel Currier. Destruição do chá no porto de Boston, 1846
Esse episódio ficou conhecido como a “Festa do chá em Boston”
e teve como objetivo principal',NULL,'/cbmerj-apoios/2023-q89-p18-figura.png','["atacar a Companhia Holandesa das Índias Orientais (VOC), responsável pelo contrabando de chá nas colônias americanas e pelos prejuízos aos comerciantes de chá inglês.", "protestar contra a Lei do Chá, considerada abusiva pois o debate sobre o tributo havia ocorrido no Parlamento inglês, no qual os colonos não tinham direito de representação.", "punir as atividades de comerciantes holandeses e norteamericanos que contrabandeavam chá holandês, eliminando a remessa do produto no porto de Boston.", "defender a liberdade de comércio no Atlântico Norte, sobretudo em função da repressão indireta ao comércio triangular, reativada pela Lei do Chá.", "lutar por um programa de independência americana, representado por colonos que se consideravam os habitantes originais da América, contra ingleses e holandeses."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'90','História','A charge representa um mecanismo político próprio da República
Velha conhecido como','A capa da Revista Careta de 1925 divulgou uma charge na qual,
no cume de um monte havia uma cadeira dourada com a
inscrição “Presidência da República”, ladeada por dois
personagens em cujos chapéus havia a inscrição “São Paulo” e
“Minas”. Ao pé do monte, um conjunto de outros personagens
(Rio Grande do Sul, Santa Catarina, Paraná e Bahia, entre outros)
tentava escalar o cume.
Fonte: Alfredo Storni (Storni). Revista Careta, ano XVIII,
número 897, 29 de agosto de 1925, capa.','/cbmerj-apoios/2023-q90-p19-figura.png','["coronelismo, ao caracterizar a presença de militares no governo brasileiro.", "clientelismo, pois enfatiza a dificuldade de os homens do campo participar da vida política pelas eleições.", "política do café com leite, ao mostrar a alternância de candidatos paulistas e mineiros na presidência da república.", "patrimonialismo, uma vez que representa o poder político nas mãos de grandes proprietários.", "federalismo, ao mostrar a disputa dos estados por maior autonomia em relação ao poder central."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'91','Inglês','Based on the text, mark the statements below as true (T) or
false (F).
( ) The best way to fight fire is to do it in a single-handed way.
( ) Mesh networking can make firefighting a safer job.
( ) 5G connectivity is available all over the country.
The statements are, respectively,','Read the text and answer the five questions that follow it.
The exciting technologies revolutionizing firefighting in 2022
One of the most important tools for a firefighter in the field is
the ability to communicate with other members of the crew,
officers, and decision-makers. Communication can be the
difference between being able to ask for – and receive – help, or
being alone as fires move, shift, and change.
Communication can be the difference between having the
latest intelligence and knowledge about what is going on, or
being in the dark. Communication is also the difference between
having a coordinated, collaborative effort, or having a number of
individuals operating independently – which is the least effective
way to fight a fire.
While cellular networks have expanded and improved
tremendously – especially in the age of 5G – there are still areas
of our country where cellular connectivity and other terrestrial
mobile networks aren’t available. There are also some situations
where the communications equipment that power terrestrial
networks can be damaged in fires, and leave firefighters without
connectivity.
This is why mobile mesh networking will be a widely adopted
technology for firefighters and hotshot crews in 2022.
Mobile mesh networking can enable the use of
communications and situational awareness tools – such as ATAK
– off the grid in places where other terrestrial networks don’t
exist. This means that firefighters will be able to share
information and see each other’s locations even in isolated,
remote locations. They can also be used to spread connectivity
over a wide geographic area and to each individual without a
single, centralized piece of equipment that can be compromised
and fail. This means they can deliver resilient and redundant
communications that is always available to the firefighter.
Finally, mobile mesh networking can be a low-cost alternative
to connecting IoT devices. Instead of each individual sensor
requiring its own expensive cellular connection – or incredibly
pricey satellite connection – mobile mesh can be used to connect
IoT devices over a wide geographic area with no recurring cost.
This can help accelerate fire-focused IoT programs, and enable
the government to extend them to more areas at a lower cost to
the taxpayer.
Enabling resilient, reliable communications and situational
awareness alone is enough to make mobile mesh networking a
game-changer for firefighting. But its ability to inexpensively
connect IoT devices and sensors that can make firefighting more
proactive and less dangerous make mobile mesh technologies
essential in 2022.
Adapted from https://thelastmile.gotennapro.com/the-exciting-technologies-
revolutionizing-firefighting-in-2022/',NULL,'["F – F – T.", "T – F – T.", "F – T – F.", "T – F – F.", "T – T – F."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'92','Inglês','The text stresses that it is highly important that firefighters','Read the text and answer the five questions that follow it.
The exciting technologies revolutionizing firefighting in 2022
One of the most important tools for a firefighter in the field is
the ability to communicate with other members of the crew,
officers, and decision-makers. Communication can be the
difference between being able to ask for – and receive – help, or
being alone as fires move, shift, and change.
Communication can be the difference between having the
latest intelligence and knowledge about what is going on, or
being in the dark. Communication is also the difference between
having a coordinated, collaborative effort, or having a number of
individuals operating independently – which is the least effective
way to fight a fire.
While cellular networks have expanded and improved
tremendously – especially in the age of 5G – there are still areas
of our country where cellular connectivity and other terrestrial
mobile networks aren’t available. There are also some situations
where the communications equipment that power terrestrial
networks can be damaged in fires, and leave firefighters without
connectivity.
This is why mobile mesh networking will be a widely adopted
technology for firefighters and hotshot crews in 2022.
Mobile mesh networking can enable the use of
communications and situational awareness tools – such as ATAK
– off the grid in places where other terrestrial networks don’t
exist. This means that firefighters will be able to share
information and see each other’s locations even in isolated,
remote locations. They can also be used to spread connectivity
over a wide geographic area and to each individual without a
single, centralized piece of equipment that can be compromised
and fail. This means they can deliver resilient and redundant
communications that is always available to the firefighter.
Finally, mobile mesh networking can be a low-cost alternative
to connecting IoT devices. Instead of each individual sensor
requiring its own expensive cellular connection – or incredibly
pricey satellite connection – mobile mesh can be used to connect
IoT devices over a wide geographic area with no recurring cost.
This can help accelerate fire-focused IoT programs, and enable
the government to extend them to more areas at a lower cost to
the taxpayer.
Enabling resilient, reliable communications and situational
awareness alone is enough to make mobile mesh networking a
game-changer for firefighting. But its ability to inexpensively
connect IoT devices and sensors that can make firefighting more
proactive and less dangerous make mobile mesh technologies
essential in 2022.
Adapted from https://thelastmile.gotennapro.com/the-exciting-technologies-
revolutionizing-firefighting-in-2022/',NULL,'["check the condition of water hoses.", "be in touch with the working team.", "take courses on first aid training.", "move fast to different locations.", "learn how to use the cell phone."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'93','Inglês','The text concludes that the challenge firefighting faces in 2022
is to','Read the text and answer the five questions that follow it.
The exciting technologies revolutionizing firefighting in 2022
One of the most important tools for a firefighter in the field is
the ability to communicate with other members of the crew,
officers, and decision-makers. Communication can be the
difference between being able to ask for – and receive – help, or
being alone as fires move, shift, and change.
Communication can be the difference between having the
latest intelligence and knowledge about what is going on, or
being in the dark. Communication is also the difference between
having a coordinated, collaborative effort, or having a number of
individuals operating independently – which is the least effective
way to fight a fire.
While cellular networks have expanded and improved
tremendously – especially in the age of 5G – there are still areas
of our country where cellular connectivity and other terrestrial
mobile networks aren’t available. There are also some situations
where the communications equipment that power terrestrial
networks can be damaged in fires, and leave firefighters without
connectivity.
This is why mobile mesh networking will be a widely adopted
technology for firefighters and hotshot crews in 2022.
Mobile mesh networking can enable the use of
communications and situational awareness tools – such as ATAK
– off the grid in places where other terrestrial networks don’t
exist. This means that firefighters will be able to share
information and see each other’s locations even in isolated,
remote locations. They can also be used to spread connectivity
over a wide geographic area and to each individual without a
single, centralized piece of equipment that can be compromised
and fail. This means they can deliver resilient and redundant
communications that is always available to the firefighter.
Finally, mobile mesh networking can be a low-cost alternative
to connecting IoT devices. Instead of each individual sensor
requiring its own expensive cellular connection – or incredibly
pricey satellite connection – mobile mesh can be used to connect
IoT devices over a wide geographic area with no recurring cost.
This can help accelerate fire-focused IoT programs, and enable
the government to extend them to more areas at a lower cost to
the taxpayer.
Enabling resilient, reliable communications and situational
awareness alone is enough to make mobile mesh networking a
game-changer for firefighting. But its ability to inexpensively
connect IoT devices and sensors that can make firefighting more
proactive and less dangerous make mobile mesh technologies
essential in 2022.
Adapted from https://thelastmile.gotennapro.com/the-exciting-technologies-
revolutionizing-firefighting-in-2022/',NULL,'["invest in faster trucks and buildings.", "teach firefighters a foreign language.", "provide more modern training schools.", "condemn the expansion of forest fires.", "reduce the price of the new technology."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'94','Inglês','“Latest” in “the latest intelligence and knowledge”
(2ⁿd paragraph) can be replaced without change of meaning by','Read the text and answer the five questions that follow it.
The exciting technologies revolutionizing firefighting in 2022
One of the most important tools for a firefighter in the field is
the ability to communicate with other members of the crew,
officers, and decision-makers. Communication can be the
difference between being able to ask for – and receive – help, or
being alone as fires move, shift, and change.
Communication can be the difference between having the
latest intelligence and knowledge about what is going on, or
being in the dark. Communication is also the difference between
having a coordinated, collaborative effort, or having a number of
individuals operating independently – which is the least effective
way to fight a fire.
While cellular networks have expanded and improved
tremendously – especially in the age of 5G – there are still areas
of our country where cellular connectivity and other terrestrial
mobile networks aren’t available. There are also some situations
where the communications equipment that power terrestrial
networks can be damaged in fires, and leave firefighters without
connectivity.
This is why mobile mesh networking will be a widely adopted
technology for firefighters and hotshot crews in 2022.
Mobile mesh networking can enable the use of
communications and situational awareness tools – such as ATAK
– off the grid in places where other terrestrial networks don’t
exist. This means that firefighters will be able to share
information and see each other’s locations even in isolated,
remote locations. They can also be used to spread connectivity
over a wide geographic area and to each individual without a
single, centralized piece of equipment that can be compromised
and fail. This means they can deliver resilient and redundant
communications that is always available to the firefighter.
Finally, mobile mesh networking can be a low-cost alternative
to connecting IoT devices. Instead of each individual sensor
requiring its own expensive cellular connection – or incredibly
pricey satellite connection – mobile mesh can be used to connect
IoT devices over a wide geographic area with no recurring cost.
This can help accelerate fire-focused IoT programs, and enable
the government to extend them to more areas at a lower cost to
the taxpayer.
Enabling resilient, reliable communications and situational
awareness alone is enough to make mobile mesh networking a
game-changer for firefighting. But its ability to inexpensively
connect IoT devices and sensors that can make firefighting more
proactive and less dangerous make mobile mesh technologies
essential in 2022.
Adapted from https://thelastmile.gotennapro.com/the-exciting-technologies-
revolutionizing-firefighting-in-2022/',NULL,'["best.", "earliest.", "sharpest.", "most recent.", "most precise."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'95','Inglês','The phrase “This is why” (4th paragraph) indicates that the text
will provide a(n)','Read the text and answer the five questions that follow it.
The exciting technologies revolutionizing firefighting in 2022
One of the most important tools for a firefighter in the field is
the ability to communicate with other members of the crew,
officers, and decision-makers. Communication can be the
difference between being able to ask for – and receive – help, or
being alone as fires move, shift, and change.
Communication can be the difference between having the
latest intelligence and knowledge about what is going on, or
being in the dark. Communication is also the difference between
having a coordinated, collaborative effort, or having a number of
individuals operating independently – which is the least effective
way to fight a fire.
While cellular networks have expanded and improved
tremendously – especially in the age of 5G – there are still areas
of our country where cellular connectivity and other terrestrial
mobile networks aren’t available. There are also some situations
where the communications equipment that power terrestrial
networks can be damaged in fires, and leave firefighters without
connectivity.
This is why mobile mesh networking will be a widely adopted
technology for firefighters and hotshot crews in 2022.
Mobile mesh networking can enable the use of
communications and situational awareness tools – such as ATAK
– off the grid in places where other terrestrial networks don’t
exist. This means that firefighters will be able to share
information and see each other’s locations even in isolated,
remote locations. They can also be used to spread connectivity
over a wide geographic area and to each individual without a
single, centralized piece of equipment that can be compromised
and fail. This means they can deliver resilient and redundant
communications that is always available to the firefighter.
Finally, mobile mesh networking can be a low-cost alternative
to connecting IoT devices. Instead of each individual sensor
requiring its own expensive cellular connection – or incredibly
pricey satellite connection – mobile mesh can be used to connect
IoT devices over a wide geographic area with no recurring cost.
This can help accelerate fire-focused IoT programs, and enable
the government to extend them to more areas at a lower cost to
the taxpayer.
Enabling resilient, reliable communications and situational
awareness alone is enough to make mobile mesh networking a
game-changer for firefighting. But its ability to inexpensively
connect IoT devices and sensors that can make firefighting more
proactive and less dangerous make mobile mesh technologies
essential in 2022.
Adapted from https://thelastmile.gotennapro.com/the-exciting-technologies-
revolutionizing-firefighting-in-2022/',NULL,'["reason.", "example.", "question.", "summary.", "consequence."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'96','Sociologia','A Constituição de 1988 caracterizou a organização dos Corpos de
Bombeiros como forças militares auxiliares e de segurança
pública. Assim, enquanto órgão estatal, compete ao Corpo de
Bombeiros o respeito e o desenvolvimento dos direitos humanos.
Assinale a opção que estabelece uma relação coerente entre o
princípio constitucional da valorização da dignidade da pessoa
humana, entendida como um direito humano fundamental, e a
atuação dos bombeiros em suas atribuições institucionais.','Carta de Serviços ao Cidadão do Corpo de Bombeiros Militar do Estado do Rio de Janeiro. Fonte: https://www.cbmerj.rj.gov.br/images/2022/09/CartaServicosCidadao-CSC.pdf','/cbmerj-apoios/2023-q96-p20-figura.png','["Gerenciam emergências, priorizando a segurança e a proteção dos bens patrimoniais.", "Garantem a lei e a ordem, fazendo respeitar o cumprimento da lei, em situações extremas.", "Defendem a pátria, protegendo o Brasil, mediante atividades de intervenção territorial, aquática e aérea.", "Preservam os poderes constitucionais, Executivo, Legislativo e Judiciário, assegurando a existência do Estado Democrático de Direito.", "Realizam ações de defesa civil, prestando socorro e assistência às populações atingidas por desastres, contribuindo para diminuir a vulnerabilidade social."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2023: alternativa E.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'97','Sociologia','A respeito da sociologia como campo de investigação do homem
em sociedade, analise as afirmativas a seguir.
I. A perspectiva sociológica visa a entender as regras implícitas
que condicionam os indivíduos e suas relações na vida
cotidiana, como os códigos, a linguagem, os hábitos e as
expectativas em relação ao comportamento social, entre
outros.
II. A sociologia desnaturaliza os sistemas que regem a vida em
sociedade e que são percebidos como familiares e naturais,
investigando sua formação e as razões de sua vigência, por
exemplo.
III. A imaginação sociológica é uma prática de análise da
Sociologia que busca entender a realidade social tal como ela
é, identificando-se com o indivíduo, suas crenças e valores,
tomados como explicação objetiva da realidade social.
Está correto o que se afirma em','O conjunto de hábitos e estilos de vida que caracteriza a nossa
existência afunda suas raízes em um sistema social, o qual
constitui o campo de investigação da sociologia. Em 1959, Charles
Wright Mills elaborou o conceito de imaginação sociológica,
definindo-a como a capacidade de “refletir sobre si mesmos livres
dos hábitos familiares da vida cotidiana, para poder observar a
realidade com um olhar diferente”.',NULL,'["I, apenas.", "I e III, apenas.", "I e II, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2023: alternativa C.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'98','Sociologia','O conceito de violência simbólica foi elaborado por Pierre
Bourdieu, sociólogo francês, para descrever o processo em que
se perpetuam e se impõem determinados valores culturais.
As afirmativas a seguir descrevem corretamente consequências
do exercício da violência simbólica, à exceção de uma. Assinale-a.',NULL,NULL,'["O ato da violência simbólica legitima a cultura dominante, que é imposta e acaba sendo naturalizada.", "Ao praticar formas de violência simbólica, colabora-se para difundir e cristalizar o que se entende como preconceitos.", "A violência simbólica gera desconforto e sentimento de inferioridade ou desajuste social em grupos discriminados.", "A violência simbólica conscientiza suas vítimas a respeito do sistema de dominação que as subjuga.", "A prática de violência simbólica atinge o capital simbólico dos indivíduos, ligado à honra, ao prestígio e ao reconhecimento."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2023: alternativa D.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'99','Sociologia','Assinale a afirmativa que interpreta corretamente a que
marcador de diferença social está relacionado o poema citado.','Leia o poema da poetisa afrodescendente Conceição Evaristo
com um olhar sociológico a respeito dos marcadores sociais que
produzem a diferença.
De meu corpo ofereço
as minhas frutescências,
e ao leve desejo-roçar
de quem me acolhe,
entrego-me aos suados,
suaves e úmidos gestos
de indistintas mãos e
de indistintos punhos,
pois na maturação da fruta,
em sua casca quase-quase
rompida,
boca proibida não há.
EVARISTO, Conceição, “Da partilha do fruto”. Poemas da recordação e outros
movimentos. Belo Horizonte: Nandyala, 2008.',NULL,'["Ao tema da etnia, visto que nega a qualificação dos sujeitos em função da percepção de sua origem e ancestralidade.", "À questão de gênero, pois desconsidera a classificação de comportamentos sexuais com base na percepção do que é masculinidade e feminilidade.", "Ao conceito de classe social, já que usa a poesia como um elemento de empoderamento e superação da classificação de indivíduos com base em critérios socioeconômicos.", "À categoria de geração, uma vez que o ciclo da fruta se refere à ordenação das pessoas por idade que prevalece em nossa sociedade.", "Ao problema racial, ao denunciar a vulnerabilidade das mulheres negras na sociedade brasileira e a violência histórica à qual têm sido submetidas."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2023: alternativa B.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'100','Sociologia','O trecho descreve um conceito das ciências sociais denominado','Refere-se ao processo de mudança cultural e psicológica
resultante do contato prolongado entre grupos pertencentes a
culturas diferentes. No contexto das relações de força
historicamente desenvolvidas, esse processo pode gerar a
imposição de valores sociais, estéticos e de padrões de referência
da cultura predominante sobre as demais.',NULL,'["aculturação.", "mestiçagem.", "adaptação.", "identidade.", "sincretismo."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2023: alternativa A.' from public.exams where slug='cbmerj-2023-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2023-cfo');

insert into public.exams(slug,title,source,year) values ('cbmerj-2024-cfo','CBMERJ 2024 · Curso de Formação de Oficiais · Inglês','cbmerj','2024') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','A mensagem mais importante desse pensamento é:','Um dicionário de citações traz o seguinte pensamento:
A vida é como uma escada rolante: você pode se mover para
frente ou para trás, mas não pode permanecer parado.',NULL,'["os seres humanos devem ajudar-se uns aos outros.", "não devemos aposentar-nos cedo demais.", "mais importante que pensar é fazer.", "ninguém deve aderir ao comodismo.", "fazer exercícios é vital para a saúde de cada um."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','Com essa frase o escritor','Um escritor disse o seguinte:
Três coisas são importantes na vida humana: a primeira é ser
uma boa pessoa. A segunda é ser uma boa pessoa. E a terceira é
ser uma boa pessoa.',NULL,'["brinca com o leitor, repetindo as mesmas palavras.", "repete palavras com sentidos diferentes.", "destaca a única coisa de fato importante.", "formula uma frase sem sentido.", "mostra três fatores em ordem de importância."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','As frases listadas a seguir mostram um pronome sublinhado que
se refere a um termo anterior.
Assinale a frase em que esse termo anterior está corretamente
identificado.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["Acreditai que nenhum mundo, que nada nem ninguém vale mais que uma vida ou a alegria de tê-⟦la⟧. / alegria.", "Quando você tem um elefante preso pe⟦lo⟧ pé e ele estiver tentando fugir, o melhor é deixá-lo ir. / pé.", "Se você tiver a sorte de encontrar um meio de vida de que goste, precisará ter coragem para vivê-⟦la⟧. / coragem.", "Todo homem pensa que Deus está do ⟦seu⟧ lado. Os ricos e os poderosos sabem que ele está. / Deus.", "Ri⟦que⟧za e saber são rosa e cravo que juntos não saberiam florescer. / rosa e cravo."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','Assinale a frase em que houve troca indevida entre “porque” e
“por que”.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["Quem tem ⟦porque⟧ viver é capaz de suportar qualquer coisa.", "Não deves julgar os outros pela aparência porque não é justo.", "⟦Por que⟧, quem é calvo por natureza não recupera nunca o cabelo?", "Desejava saber ⟦por que⟧ não chove nos desertos.", "O ⟦porquê⟧ de a Lua não ter água é um mistério."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','Assinale a frase em que houve troca indevida entre “mas” e
“mais”.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["A vida não é motivo de riso, ⟦mas⟧ já imaginou ter de viver sem rir?", "Não há mulher por ⟦mais⟧ feia que seja, que não tenha um traço de beleza.", "O jumento é um animal de patas compridas ⟦mais⟧ ideias curtas.", "Não são as ⟦mais⟧ belas que inspiram as maiores paixões.", "Digam o que quiserem, ⟦mas⟧ a pobreza é muito ⟦mais⟧ divertida."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','Assinale a frase que não mostra uma oposição em sua estrutura.',NULL,NULL,'["Levar uma vida fácil é tarefa bem difícil.", "O segredo de uma vida rica é ter mais princípios que fins.", "A vida está nas pequenas coisas como nas grandes.", "As mulheres são capazes de tudo e os homens, do resto.", "Um bom começo pode levar a um mau final."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','Assinale a frase que está expressa em linguagem lógica e não em
linguagem figurada.',NULL,NULL,'["O absurdo é o sal da vida.", "Meu principal objetivo na vida é ser feliz e fazer as pessoas felizes.", "Encontre o vazio na vida e o preencha.", "A vida é um jogo de cartas.", "Deixe sua vida dançar suavemente nas bordas do tempo como uma gota de orvalho na ponta de uma folha."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Assinale a frase em que a troca de posição de termos trouxe
modificação de sentido.',NULL,NULL,'["Quem olha para adiante não olha para trás / Quem olha para trás não olha para adiante.", "O saber se adquire com a capacidade, não com a idade / O saber se adquire com a idade, não com a capacidade.", "Os homens confiam menos nos seus ouvidos do que nos seus olhos / Os homens confiam mais nos seus olhos do que nos seus ouvidos.", "A maior arte da vida é saber a hora certa de dizer as coisas / Saber a hora certa de dizer as coisas é a maior arte da vida.", "Saber é ver em nós mesmos / Ver em nós mesmos é saber."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','As frases listadas a seguir mostram vocábulos idênticos repetidos.
Assinale a frase em que esses vocábulos mostram significados
diferentes.',NULL,NULL,'["No encontro entre um sábio e um idiota, o sábio tira mais proveito.", "Saber que não se sabe constitui talvez o mais difícil e delicado saber.", "Um falso problema é sempre melhor do que problema nenhum.", "Os homens confiam menos nos seus ouvidos no que confiam nos seus olhos.", "Olho por olho, dente por dente."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','Assinale a frase cujo vocabulário tem relação com a religiosidade.',NULL,NULL,'["Quem na vida nunca foi louco nunca foi sábio.", "Tudo seria fácil, não fossem as dificuldades.", "Espero nunca me tornar velho a ponto de ficar religioso.", "Muita gente há que imagina ser o domingo uma espécie de esponja que limpa todos os pecados da semana.", "A imaginação sempre aumenta o mal que em nós é oculto."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Língua Portuguesa','Assinale a frase em que houve troca indevida entre “o” e “lhe”.',NULL,NULL,'["Devemos ser pontes para cobrirmos os abismos e nunca para aprofundá-los.", "Se quiser conhecer verdadeiramente um homem, dê-lhe autoridade.", "Um bobo sempre acha um mais bobo para admirar-lhe.", "A minha disposição é muita, mas a minha vontade de obedecer-lhe é pouca.", "Não há prazer em estar em um lugar e não o visitar."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Língua Portuguesa','Assinale a frase em que a preposição A, sozinha ou combinada,
tem seu valor semântico corretamente indicado.',NULL,NULL,'["Às nove horas ele tomou banho sem pressa. / lugar.", "Saiu às compras com toda a família. / finalidade.", "Capitu, aos quatorze anos já tinha atrevimento. / modo.", "Foi ao circo junto com a família do noivo. / tempo.", "Estava à porta de casa quando foi atingida. / direção."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Língua Portuguesa','Muitas palavras portuguesas mostram o prefixo A- sem qualquer
valor semântico, sendo equivalentes ao mesmo vocábulo sem
esse prefixo.
Assinale a palavra abaixo que exemplifica esse A protético.',NULL,NULL,'["Alargar.", "Assaltar.", "Atacar.", "Apanhar.", "Avoar."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Língua Portuguesa','Assinale a frase que mostra um adjetivo em grau superlativo.',NULL,NULL,'["O homem prudente previne-se para o futuro como se já estivesse presente.", "Há pessoas tão chatas que nos fazem perder um dia em cinco minutos.", "Quem mais tempo sabe aproveitar mais certo está de ganhar.", "Quando a história se encarrega de fazer teatro, o faz maravilhosamente.", "Profetizar o futuro não é difícil, mas é perigoso."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Língua Portuguesa','Os adjetivos podem representar estados, qualidades,
características e relações; assinale a frase abaixo que mostra um
tipo de adjetivo diferente dos demais.
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.',NULL,NULL,'["Meu pai, apesar da idade, não mostra cabelos ⟦brancos⟧.", "Filhos ⟦teimosos⟧ são filhos mal-educados.", "As rosas ⟦vermelhas⟧ são as mais bonitas.", "A seda é o tecido mais ⟦macio⟧ que há.", "Toalhas ⟦manchadas⟧ são fruto de descuido."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Língua Portuguesa','Assinale a frase que mostra o acento grave indicativo da crase em
um contexto em que seu uso é optativo.',NULL,NULL,'["Se encontrares o criminoso, leva-o à delegacia.", "Todos os caminhos do trabalho levam à riqueza.", "Nem sempre prestamos atenção à nossa família.", "Dê boas-vindas à felicidade.", "Tudo o que vem da terra volta à terra."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Língua Portuguesa','José de Alencar é um de nossos escritores mais conhecidos do
Romantismo e autor de narrativas de vários tipos. A seguir, estão
citados cinco romances conhecidos e seus tipos.
Assinale aquele cujo tipo está indicado erradamente.',NULL,NULL,'["O Sertanejo – romance de mistério.", "O Guarani – romance indianista.", "Senhora - romance urbano.", "Minas de Prata – romance histórico.", "O Gaúcho – romance regionalista."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Língua Portuguesa','Assinale a afirmação inadequada em relação a esses
conhecidíssimos versos.','“Minha terra tem palmeiras / Onde canta o sabiá / As aves que
aqui gorjeiam / Não gorjeiam como lá”',NULL,'["Versos retirados da Canção do Exílio, de Gonçalves Dias.", "O texto pertence ao Romantismo no Brasil.", "Os advérbios “aqui” e “lá” se referem, respectivamente, a Portugal e Brasil.", "Uma das características básicas do texto é o nacionalismo.", "Os versos são livres e o vocabulário é popular, como manda o gosto da época."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Língua Portuguesa','Os Lusíadas são a grande obra do Classicismo português.
Assinale a afirmação correta sobre essa obra.',NULL,NULL,'["Trata-se de uma epopeia sobre a história de Portugal.", "Exemplifica um poema autobiográfico de Camões.", "O poema é integralmente composto em versos populares.", "A obra é de estrutura descritiva.", "O título da obra se refere aos primeiros habitantes de Portugal."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Língua Portuguesa','Sobre esse romance, assinale a afirmativa verdadeira.','Observe o seguinte texto:
Lembrou-lhe de repente a notícia do jornal, a chegada do primo
Basílio... Um sorriso vagaroso dilatou-lhe os beicinhos vermelhos
e cheios. — Fora o seu primeiro namoro, o primo Basílio! Tinha
ela então dezoito anos! Ninguém o sabia, nem Jorge, nem
Sebastião... De resto fora uma criancice; ela mesma, às vezes, ria,
recordando as pieguices ternas de então, certas lágrimas
exageradas! Devia estar mudado o primo Basílio. Lembrava-se
bem dele — alto, delgado, um ar fidalgo, o pequenino bigode
preto levantado, o olhar atrevido, e um jeito de meter as mãos
nos bolsos das calças fazendo tilintar o dinheiro e as chaves!
Aquilo começara em Sintra, por grandes partidas de bilhar muito
alegres, na quinta do tio João de Brito, em Colares. Basílio tinha
chegado então da Inglaterra: vinha muito bife, usava gravatas
escarlates passadas num anel de ouro, fatos de flanela branca,
espantava Sintra!
O trecho acima é retirado do romance de Eça de Queiroz,
intitulado O Primo Basílio.',NULL,'["Trata-se de um romance romântico, em que o amor entre primos é idealizado.", "Mostra uma traição conjugal com fim trágico.", "Obra de conteúdo histórico em que se focaliza a história de uma família.", "Narrativa em que o protagonista – o primo Basílio – é o narrador onisciente.", "Drama que retrata o sofrimento de um casal que é separado pela força de membros de sua própria família."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Inglês','Based on Text I, mark the statements below as TRUE (T) or
FALSE (F).
I. The effects of climate change exclude wildfires.
II. Global warming is not a current problem.
III. The number of wildfires has been on the rise.
The statements are, respectively,','Read Text I and answer the five questions that follow it
Text I
Impact of Climate Change on Firefighting
Extends Beyond Wildfires
Global warming is often mentioned as a factor in the
accelerating frequency and intensity of wildfires. However, there
are other consequences of global warming that impact the fire
service, including new hazards and medical emergencies,
emerging training challenges, population migration, and
technology developments.
Climate change is often discussed as a future event. However,
the impact of wildfires is just the most obvious example of how
climate change is already impacting the world, and fire and
emergency personnel will be called on to mitigate the effects.
The most obvious and extreme impact of global warming can
be seen in the increase of frequency and intensity of wildfires.
Hotter and drier weather is extending the wildfire season (maybe
to become year-round?). Higher temperatures, low humidity, less
rainfall, and high wind increase the likelihood of wildfires.
Adapted from: https://www.thebigredguide.com/insights/impact-climate-change-
firefighting-extends-wildfires-editor-s-dispatch.1645685564.html',NULL,'["F – T – F.", "T – T – F.", "T – F – T.", "F – T – T.", "F – F – T."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Inglês','The function of the word “However” in “However, there are
other consequences” (1st paragraph) is to introduce a','Read Text I and answer the five questions that follow it
Text I
Impact of Climate Change on Firefighting
Extends Beyond Wildfires
Global warming is often mentioned as a factor in the
accelerating frequency and intensity of wildfires. However, there
are other consequences of global warming that impact the fire
service, including new hazards and medical emergencies,
emerging training challenges, population migration, and
technology developments.
Climate change is often discussed as a future event. However,
the impact of wildfires is just the most obvious example of how
climate change is already impacting the world, and fire and
emergency personnel will be called on to mitigate the effects.
The most obvious and extreme impact of global warming can
be seen in the increase of frequency and intensity of wildfires.
Hotter and drier weather is extending the wildfire season (maybe
to become year-round?). Higher temperatures, low humidity, less
rainfall, and high wind increase the likelihood of wildfires.
Adapted from: https://www.thebigredguide.com/insights/impact-climate-change-
firefighting-extends-wildfires-editor-s-dispatch.1645685564.html',NULL,'["concordance.", "comparison.", "conclusion.", "contrast.", "cause."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Inglês','The opposite of “often” in “Climate change is often discussed”
(2ⁿd paragraph) is','Read Text I and answer the five questions that follow it
Text I
Impact of Climate Change on Firefighting
Extends Beyond Wildfires
Global warming is often mentioned as a factor in the
accelerating frequency and intensity of wildfires. However, there
are other consequences of global warming that impact the fire
service, including new hazards and medical emergencies,
emerging training challenges, population migration, and
technology developments.
Climate change is often discussed as a future event. However,
the impact of wildfires is just the most obvious example of how
climate change is already impacting the world, and fire and
emergency personnel will be called on to mitigate the effects.
The most obvious and extreme impact of global warming can
be seen in the increase of frequency and intensity of wildfires.
Hotter and drier weather is extending the wildfire season (maybe
to become year-round?). Higher temperatures, low humidity, less
rainfall, and high wind increase the likelihood of wildfires.
Adapted from: https://www.thebigredguide.com/insights/impact-climate-change-
firefighting-extends-wildfires-editor-s-dispatch.1645685564.html',NULL,'["much.", "always.", "seldom.", "usually.", "forever."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Inglês','“Maybe” in “(maybe to become year-round?)” (3rd paragraph) is
similar in meaning to','Read Text I and answer the five questions that follow it
Text I
Impact of Climate Change on Firefighting
Extends Beyond Wildfires
Global warming is often mentioned as a factor in the
accelerating frequency and intensity of wildfires. However, there
are other consequences of global warming that impact the fire
service, including new hazards and medical emergencies,
emerging training challenges, population migration, and
technology developments.
Climate change is often discussed as a future event. However,
the impact of wildfires is just the most obvious example of how
climate change is already impacting the world, and fire and
emergency personnel will be called on to mitigate the effects.
The most obvious and extreme impact of global warming can
be seen in the increase of frequency and intensity of wildfires.
Hotter and drier weather is extending the wildfire season (maybe
to become year-round?). Higher temperatures, low humidity, less
rainfall, and high wind increase the likelihood of wildfires.
Adapted from: https://www.thebigredguide.com/insights/impact-climate-change-
firefighting-extends-wildfires-editor-s-dispatch.1645685564.html',NULL,'["perhaps.", "already.", "almost.", "surely.", "rather."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Inglês','To “increase the likelihood” (3rd paragraph) means to raise the','Read Text I and answer the five questions that follow it
Text I
Impact of Climate Change on Firefighting
Extends Beyond Wildfires
Global warming is often mentioned as a factor in the
accelerating frequency and intensity of wildfires. However, there
are other consequences of global warming that impact the fire
service, including new hazards and medical emergencies,
emerging training challenges, population migration, and
technology developments.
Climate change is often discussed as a future event. However,
the impact of wildfires is just the most obvious example of how
climate change is already impacting the world, and fire and
emergency personnel will be called on to mitigate the effects.
The most obvious and extreme impact of global warming can
be seen in the increase of frequency and intensity of wildfires.
Hotter and drier weather is extending the wildfire season (maybe
to become year-round?). Higher temperatures, low humidity, less
rainfall, and high wind increase the likelihood of wildfires.
Adapted from: https://www.thebigredguide.com/insights/impact-climate-change-
firefighting-extends-wildfires-editor-s-dispatch.1645685564.html',NULL,'["impossibility.", "uncertainty.", "preference.", "willingness.", "probability."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Inglês','Analyse the assertions below based on Text II:
I. Most political positions in Brazil are today taken up by
women.
II. Housework is one of the factors that may prevent women
from getting better qualification.
III. Brazil has contributed with extensive evidence for the debate
on gender equity in fire management.
Choose the correct answer:','Read Text II and answer the five questions that follow it
Text II
Diversity, Inclusion and Gender Equity in the
Forest Management and Fire Prevention Program in Brazil
Women make up more than half of Brazil’s population and
account for 47 million (~50%) of the labor market. Despite these
numbers, women are still underrepresented in many sectors:
they occupy 37% of leadership positions in private companies;
only 15% and 13%, respectively, are federal Representatives and
Senators; and only 12% of cities have women as mayors. The
fewer women there are in leadership positions and in politics, the
lower the representation and scope of their interests and needs.
Coupled with that, men’s wages are, on average, 24% higher
than women’s who hold the same position. Furthermore,
Brazilian women dedicate, on average, 10.4 hours/week more
than men to household chores and caring for family members
(for example, children and the elderly), a type of work
characterized as “domestic” and unpaid. As a result, women
dedicate less time to professional improvement relative to men.
The fewer women in mixed gender work teams, the less likely
women are to excel in their roles and positions.
In Integrated Fire Management (IFM), women face similar
challenges, whether in coordination roles or technical and
operational ones. In Brazil, specifically, Solis and colleagues¹
identified that there are no regulations or guidelines that
promote multiculturalism and gender equity in the processes of
hiring forest fire brigades. Although gender equity in IFM is
recognized, in Brazil this debate is still informal and poorly
documented.
1
Solis I, Vera J, Aguado RC, et al. Diagnóstico de Manejo do Fogo no
Brasil. Brasília, Brasil, 2021.
Adapted from https://pcabhub.org/en-us/resources/general-publications/gender-
and-fire-usfs.pdf',NULL,'["Only I is correct.", "Only II is correct.", "Only III is correct.", "Only I and II are correct.", "All three assertions are correct."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Inglês','The percentage in “24% higher than women’s” (2ⁿd paragraph)
refers to women’s','Read Text II and answer the five questions that follow it
Text II
Diversity, Inclusion and Gender Equity in the
Forest Management and Fire Prevention Program in Brazil
Women make up more than half of Brazil’s population and
account for 47 million (~50%) of the labor market. Despite these
numbers, women are still underrepresented in many sectors:
they occupy 37% of leadership positions in private companies;
only 15% and 13%, respectively, are federal Representatives and
Senators; and only 12% of cities have women as mayors. The
fewer women there are in leadership positions and in politics, the
lower the representation and scope of their interests and needs.
Coupled with that, men’s wages are, on average, 24% higher
than women’s who hold the same position. Furthermore,
Brazilian women dedicate, on average, 10.4 hours/week more
than men to household chores and caring for family members
(for example, children and the elderly), a type of work
characterized as “domestic” and unpaid. As a result, women
dedicate less time to professional improvement relative to men.
The fewer women in mixed gender work teams, the less likely
women are to excel in their roles and positions.
In Integrated Fire Management (IFM), women face similar
challenges, whether in coordination roles or technical and
operational ones. In Brazil, specifically, Solis and colleagues¹
identified that there are no regulations or guidelines that
promote multiculturalism and gender equity in the processes of
hiring forest fire brigades. Although gender equity in IFM is
recognized, in Brazil this debate is still informal and poorly
documented.
1
Solis I, Vera J, Aguado RC, et al. Diagnóstico de Manejo do Fogo no
Brasil. Brasília, Brasil, 2021.
Adapted from https://pcabhub.org/en-us/resources/general-publications/gender-
and-fire-usfs.pdf',NULL,'["roles.", "teams.", "wages.", "chores.", "position."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Inglês','“Furthermore” in “Furthermore, Brazilian women dedicate, on
average, 10.4 hours/week” (2ⁿd paragraph) can be replaced
without significant change in meaning by','Read Text II and answer the five questions that follow it
Text II
Diversity, Inclusion and Gender Equity in the
Forest Management and Fire Prevention Program in Brazil
Women make up more than half of Brazil’s population and
account for 47 million (~50%) of the labor market. Despite these
numbers, women are still underrepresented in many sectors:
they occupy 37% of leadership positions in private companies;
only 15% and 13%, respectively, are federal Representatives and
Senators; and only 12% of cities have women as mayors. The
fewer women there are in leadership positions and in politics, the
lower the representation and scope of their interests and needs.
Coupled with that, men’s wages are, on average, 24% higher
than women’s who hold the same position. Furthermore,
Brazilian women dedicate, on average, 10.4 hours/week more
than men to household chores and caring for family members
(for example, children and the elderly), a type of work
characterized as “domestic” and unpaid. As a result, women
dedicate less time to professional improvement relative to men.
The fewer women in mixed gender work teams, the less likely
women are to excel in their roles and positions.
In Integrated Fire Management (IFM), women face similar
challenges, whether in coordination roles or technical and
operational ones. In Brazil, specifically, Solis and colleagues¹
identified that there are no regulations or guidelines that
promote multiculturalism and gender equity in the processes of
hiring forest fire brigades. Although gender equity in IFM is
recognized, in Brazil this debate is still informal and poorly
documented.
1
Solis I, Vera J, Aguado RC, et al. Diagnóstico de Manejo do Fogo no
Brasil. Brasília, Brasil, 2021.
Adapted from https://pcabhub.org/en-us/resources/general-publications/gender-
and-fire-usfs.pdf',NULL,'["Moreover.", "Although.", "Actually.", "Lastly.", "Yet."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Inglês','The structure of the sentence “whether in coordination roles or
technical and operational ones” (3rd paragraph) signals a(n):','Read Text II and answer the five questions that follow it
Text II
Diversity, Inclusion and Gender Equity in the
Forest Management and Fire Prevention Program in Brazil
Women make up more than half of Brazil’s population and
account for 47 million (~50%) of the labor market. Despite these
numbers, women are still underrepresented in many sectors:
they occupy 37% of leadership positions in private companies;
only 15% and 13%, respectively, are federal Representatives and
Senators; and only 12% of cities have women as mayors. The
fewer women there are in leadership positions and in politics, the
lower the representation and scope of their interests and needs.
Coupled with that, men’s wages are, on average, 24% higher
than women’s who hold the same position. Furthermore,
Brazilian women dedicate, on average, 10.4 hours/week more
than men to household chores and caring for family members
(for example, children and the elderly), a type of work
characterized as “domestic” and unpaid. As a result, women
dedicate less time to professional improvement relative to men.
The fewer women in mixed gender work teams, the less likely
women are to excel in their roles and positions.
In Integrated Fire Management (IFM), women face similar
challenges, whether in coordination roles or technical and
operational ones. In Brazil, specifically, Solis and colleagues¹
identified that there are no regulations or guidelines that
promote multiculturalism and gender equity in the processes of
hiring forest fire brigades. Although gender equity in IFM is
recognized, in Brazil this debate is still informal and poorly
documented.
1
Solis I, Vera J, Aguado RC, et al. Diagnóstico de Manejo do Fogo no
Brasil. Brasília, Brasil, 2021.
Adapted from https://pcabhub.org/en-us/resources/general-publications/gender-
and-fire-usfs.pdf',NULL,'["consequence.", "alternative.", "imperative.", "exception.", "objection."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Inglês','When the text mentions “hiring forest fire brigades”
(3rd paragraph), it refers to the process of','Read Text II and answer the five questions that follow it
Text II
Diversity, Inclusion and Gender Equity in the
Forest Management and Fire Prevention Program in Brazil
Women make up more than half of Brazil’s population and
account for 47 million (~50%) of the labor market. Despite these
numbers, women are still underrepresented in many sectors:
they occupy 37% of leadership positions in private companies;
only 15% and 13%, respectively, are federal Representatives and
Senators; and only 12% of cities have women as mayors. The
fewer women there are in leadership positions and in politics, the
lower the representation and scope of their interests and needs.
Coupled with that, men’s wages are, on average, 24% higher
than women’s who hold the same position. Furthermore,
Brazilian women dedicate, on average, 10.4 hours/week more
than men to household chores and caring for family members
(for example, children and the elderly), a type of work
characterized as “domestic” and unpaid. As a result, women
dedicate less time to professional improvement relative to men.
The fewer women in mixed gender work teams, the less likely
women are to excel in their roles and positions.
In Integrated Fire Management (IFM), women face similar
challenges, whether in coordination roles or technical and
operational ones. In Brazil, specifically, Solis and colleagues¹
identified that there are no regulations or guidelines that
promote multiculturalism and gender equity in the processes of
hiring forest fire brigades. Although gender equity in IFM is
recognized, in Brazil this debate is still informal and poorly
documented.
1
Solis I, Vera J, Aguado RC, et al. Diagnóstico de Manejo do Fogo no
Brasil. Brasília, Brasil, 2021.
Adapted from https://pcabhub.org/en-us/resources/general-publications/gender-
and-fire-usfs.pdf',NULL,'["dismissing people.", "buying equipment.", "dealing with disasters.", "neglecting forest fires.", "employing firefighters."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Matemática','Considere a sequência de números naturais na qual o primeiro
termo é 23 e cada termo a partir do segundo é 24 unidades maior
do que o termo anterior a ele.
O 100º termo dessa sequência é',NULL,NULL,'["2423.", "2400.", "2399.", "2324.", "2323."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Matemática','Quando dividimos o polinômio 𝑃(𝑥) = 𝑥² +23𝑥 + 24 por 𝑥 + 1,
o resto da divisão é',NULL,NULL,'["0.", "1.", "2.", "24.", "48."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Matemática','Considere a sigla CBMERJ. O número de anagramas dessa sigla
nos quais as letras CB ficam juntas nessa ordem é',NULL,NULL,'["720.", "120.", "96.", "48.", "24."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Matemática','Considere o conjunto de 5 medidas a seguir: 5, 2, 3, X, 2, sendo X
um número inteiro. Sabe-se que X é a mediana desse conjunto de
medidas e que o conjunto tem moda única.
A média desse conjunto de medidas é',NULL,NULL,'["2,8.", "2,9.", "3,0.", "3,2.", "3,4."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Matemática','Tio Patinhas tem 11 moedas, algumas de ouro, as demais de
prata. Cada moeda de ouro vale R$1.200,00, cada moeda de
prata vale R$400,00 e as 11 moedas de Tio Patinhas valem, ao
todo, R$7.600,00.
A diferença entre a quantidade de moedas de prata e a
quantidade de moedas de ouro de Tio Patinhas é igual a',NULL,NULL,'["1.", "2.", "3.", "4.", "5."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Matemática','Considere a circunferência de equação
(𝑥 − 4)² +(𝑦 + 5)² = 4.
O ponto pertencente a essa circunferência que está mais próximo
do eixo-𝑦 é',NULL,NULL,'["(−4;5).", "(−4;3).", "(4; −3).", "(−2;5).", "(2; −5)."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Matemática','Considere que uma dívida no cartão de crédito aumente 100% ao
ano. Imagine que a dívida inicial seja de R$1.000,00.
Ao final de 5 anos, a dívida será de',NULL,NULL,'["R$5000,00.", "R$10000,00.", "R$20000,00.", "R$32000,00.", "R$64000,00."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Matemática','Considere a equação 2𝑥² + 7𝑥 +1 = 0.
Se 𝑎 e 𝑏 são as raízes da equação, o valor de 4𝑎 +4𝑏 +7𝑎𝑏 é',NULL,NULL,'["−21/2.", "21/2.", "−11/2.", "11/2.", "7/2."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Matemática','Sobre dois números inteiros x e y, sabe-se que 2x + y > 10 e x − 6 ≤ 0. O valor mínimo de y é:',NULL,NULL,'["−3.", "−2.", "−1.", "0.", "1."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Matemática','Em um triângulo retângulo cuja hipotenusa mede 39 cm, a tangente de um dos ângulos agudos é 5/12. A soma das medidas dos catetos desse triângulo é igual a:',NULL,NULL,'["13cm.", "17cm.", "34cm.", "43cm.", "51cm."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Matemática','Os números X, Y e Z são tais que X + X + X = 21, Y + Y + Y = 15 e X + X·Y = Z. O valor de Z é:',NULL,NULL,'["42.", "48.", "54.", "62.", "70."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Matemática','A figura abaixo mostra o triângulo ABC e um retângulo ADEF no
seu interior tal que a medida da base AD é o dobro de sua altura
DE.
Sabe-se que AB = 8cm e AC = 6cm.
O perímetro do retângulo ADEF é',NULL,'/cbmerj-apoios/2024-q42-p7-figura.png','["13,2cm", "13,8cm.", "14,4cm.", "15,0cm.", "15,6cm."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Matemática','Uma função real é definida por 𝑓(2𝑥 + 1) = 𝑥² − 1.
O valor de 𝑓(7) é',NULL,NULL,'["8.", "15.", "24.", "36.", "48."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Matemática','Uma parede retangular de 5,2m de comprimento por 2,4m de
altura deve ser coberta com azulejos quadrados de 20cm de lado.
O número de azulejos necessários para cobrir inteiramente essa
parede é igual a',NULL,NULL,'["286.", "312.", "324.", "338.", "350."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Matemática','João possui, em seu sítio, 100 galinhas e a quantidade suficiente
de ração para alimentá-las por 30 dias. Entretanto, após 15 dias,
João vende 40 galinhas.
O restante da ração alimentará as galinhas remanescentes
por mais',NULL,NULL,'["9 dias.", "12 dias.", "15 dias.", "20 dias.", "25 dias."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Matemática','No plano cartesiano, o triângulo cujos vértices são (0,0), (a,b) e (c,d) tem área dada pelo valor absoluto de (ad − bc)/2. A área do triângulo cujos vértices são (0,0), (5,−1) e (8,6) é:',NULL,NULL,'["11.", "13.", "15.", "17.", "19."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Matemática','Considere a equação x² + 12/x = 19, com x ≠ 0. Uma das raízes dessa equação é:',NULL,NULL,'["𝑥 = 1.", "𝑥 = 2.", "𝑥 = 3.", "𝑥 = 4.", "𝑥 = 6."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Matemática','Uma panela cilíndrica, como a representada abaixo, possui 30cm
de diâmetro e 20cm de altura.
O volume dessa panela é de, aproximadamente,',NULL,'/cbmerj-apoios/2024-q48-p8-figura.png','["6 litros.", "9 litros.", "12 litros.", "14 litros.", "18 litros."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Matemática','Uma bandeja contém nove empadas de mesmo tamanho e
aparência, mas com recheios diferentes: quatro são de frango,
três são de palmito e duas, de camarão. Uma pessoa retira, ao
acaso, duas dessas empadas.
A probabilidade de que ambas sejam de palmito é igual a',NULL,NULL,'["1/3.", "1/6.", "1/9.", "2/9.", "1/12."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Matemática','A figura a seguir mostra o triângulo equilátero ABC, um ponto M
do lado CA e um ponto N do lado CB.
São dadas as medidas: MA = 2, AB = 10 e BN = 4.
A medida do segmento MN é',NULL,'/cbmerj-apoios/2024-q50-p8-figura.png','["2√10.", "4√3.", "2√13.", "2√15.", "5√2."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','História','O escambo foi uma prática largamente utilizada pelos
portugueses em seu contato com os indígenas na primeira
metade do século XVI. Mas não foi a única. Nesse sentido, para
descrever a complexidade das relações entre portugueses e
indígenas, é necessário considerar','Os primeiros contatos entre os índios e os portugueses foram
marcados pelo escambo, que permitia aos colonos receberem
mantimentos e mão-de-obra para a extração de pau-brasil, e
mesmo para trabalho nas lavouras.
(FRAGOSO, João; FLORENTINO, Manolo; FARIA, Sheila de Castro. A economia
colonial brasileira (séculos XVI – XIX). São Paulo: Atual, 1988. p. 34)',NULL,'["as práticas de arrendamento da terra.", "o assalariamento do indígena.", "a escravidão do indígena.", "a transformação do indígena em camponês.", "a servidão do indígena por dívidas."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','História','Diante do avanço dos exércitos soviéticos, não havia mais dúvida
quanto aos resultados da guerra. Por essa razão, os líderes dos
três países que lutavam contra a Alemanha nazista sentiram
necessidade de reordenar a condução da luta e pensar em
acordos para depois de findar a guerra. Mas a razão mais
importante que levou os três aliados a se reunirem foi uma mútua
desconfiança que já existia. Desde o início da guerra, Stalin tinha
sérias desconfianças de que os ocidentais queiram empurrar a
Alemanha contra a União Soviética. Com o desenrolar da guerra e
a formação da linha contra a Alemanha nazista a União Soviética
passou a desconfiar que tanto ingleses como norte-americanos
poderiam assinar uma paz em separado com Hitler. Agora, depois
das avassaladoras vitórias dos exércitos soviéticos, em quem
começava a desconfiar de uma paz em separado eram os ingleses
e americanos.
(PEDRO, Antônio. A Segunda Guerra Mundial. São Paulo: Atual, 1994. p. 50-51).
A partir da interpretação do texto, podemos afirmar que',NULL,NULL,'["a luta contra o nazismo tornou irrelevante as divergências entre os Aliados.", "a condução da guerra contra o nazismo exigiu uma complexa operação política entre os Aliados.", "as divergências entre EUA, URSS e Inglaterra tornou possível a retomada da ofensiva militar nazista.", "as divergências entre Inglaterra e EUA resultou no rompimento da Aliança contra os nazistas.", "o avanço soviético foi o resultado do isolamento político imposto por Inglaterra e EUA."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','História','O avanço da luta abolicionista no Brasil se relaciona ao contexto
histórico em que se destaca','O abolicionismo foi um movimento político que defendia o fim da
escravidão e do comércio de escravos. Tal movimento
desenvolveu-se a partir dos ideais iluministas do século XIX,
ganhando milhares de adeptos que, junto com escravos e
escravas, lutaram pelo fim da escravidão em diversos países
americanos. No Brasil não foi diferente.
(SANTOS, Ynaê Lopes do. História da África e do Brasil afrodescendente. Rio de
Janeiro: Pallas, 2014. p. 241).',NULL,'["o crescimento da economia camponesa depois que a Lei de Terras (1850) reduziu a demanda por trabalho escravo, o que diminuiu a dependência do trabalho escravo.", "a incorporação do racismo científico europeu orientando política e ideologicamente as organizações e intelectuais favoráveis à liberdade dos negros escravizados.", "a ação política das elites agrárias do Vale do Paraíba, interessadas em introduzir a mão de obra-livre nas plantações de café.", "a eliminação dos quilombos que permitiu às elites brasileiras implementar uma política lenta e gradual de libertação dos escravos.", "a incerteza da continuidade da escravidão após o fim do tráfico negreiro em 1850, o que impulsiona a luta em favor da liberdade dos negros escravizados."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','História','No que diz respeito ao impacto do Iluminismo no pensamento
europeu do século XIX, é correto afirmar que','A razão iluminista apresenta-se aos seus adeptos como um
instrumental crítico que se dirige a cada indivíduo naquilo que
possui de mais íntimo e essencial – sua consciência racional de ser
humano. Mais que convencer ou persuadir, com argumentos
racionais, trata-se de trazer à tona, em cada um, essa capacidade
ou essa essência racional, comum a todos: pensar por si mesmo,
“sair da menoridade para a maioridade”, tal é a palavra de
ordem.
(FALCON, Francisco Calazans. Iluminismo. São Paulo: Ática, 1986. p. 37)',NULL,'["a linguagem físico-matemático se funda como modelo para demonstrar a racionalidade do universo.", "a razão iluminista rompe com o modelo de racionalidade renascentista, o que tornou possível o avanço da ciência.", "o pensamento religioso se fortalece com o avanço do racionalismo iluminista.", "a razão iluminista promove o afastamento do pensamento europeu da ideia de progresso.", "a razão iluminista funda uma visão do mundo social em que predominam visões apocalípticas da humanidade."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','História','O fragmento de texto trata da relação entre Estado e populações
negras na nascente República brasileira.
O conceito que melhor define essa relação é','“Praticar o espiritismo, a magia e seus sortilégios, usar de talismã
e cartomancias para despertar sentimentos de ódio ou amor,
inculcar cura de moléstias curáveis ou incuráveis, enfim para
fascinar e subjugar a credulidade pública”, como diz o artigo 157,
do Código Penal de 1890, eram práticas condenadas pela lei e
pela própria crença da sociedade no Brasil republicano.
Desde a promulgação desse Código Penal e ao longo do século
XX, inúmeros acusados de serem maus espíritas, macumbeiros ou
pais de santo foram levados à prisão em quase todos os estados
da federação. No Rio de Janeiro, não foi diferente. Mas quem
eram os praticantes do espiritismo, da magia e de seus sortilégios
perseguidos pela polícia em uma cidade cuja crença em espíritos
e feitiçarias ocorria entre pessoas de todas as classes? Como
eram descobertos?
(MAGGIE, Yvonne. FIGUEIREDO, Luciano (org). Raízes africanas. Rio de Janeiro:
Sabin, 2009. p. 50)',NULL,'["democracia.", "humanismo.", "Igualitarismo.", "racismo estrutural.", "anarquismo."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','História','Após a Segunda Guerra Mundial, os Estados Unidos estavam
preparados internamente para exercer a liderança econômica e
militar do mundo capitalista.
No que diz respeito ao plano externo, é correto considerar','A guerra, com o necessário esforço econômico, trouxe a opulência
para a América, e em 1945 os Estados Unidos concentravam três
quartos do capital investidos no mundo e dois terços de sua
capacidade industrial.
(BARROS, Edgard Luiz. A guerra fria. São Paulo: Atual;
Campinas: UNICAMP. 1986. p. 54) .',NULL,'["o fim da Alemanha e a redistribuição de seus territórios.", "a criação de uma ordem política multipolar.", "a derrota da União Soviética na segunda Guerra Mundial.", "a aliança militar de países europeus ocidentais com a URSS.", "o declínio econômico dos principais países europeus."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','História','Diante da crise econômica, o regime civil-militar tenta manter sob
controle as pressões políticas e sociais pelo fim do regime.
Para se manter no poder diante da crescente pressão do
movimento sindical,','Em 1978 e 1979, o quadro inflacionário agravara-se indicando o
esgotamento do modelo econômico. Com a queda do
crescimento, a política de “fazer crescer o bolo para depois dividi-
lo” já soava (novamente) como engodo para a população. A crise
internacional agrava-se, com o aumento do custo da dívida
externa. Complicavam-se as negociações com credores norte-
americanos, contrários à redução do valor da dívida.
(LOPEZ, Adriana; MOTA, Carlos Guilherme. História do Brasil: uma interpretação.
São Paulo: SENAC, 2008. p. 861).',NULL,'["o regime civil-militar estabeleceu eleições diretas para governos de Estado, menos para presidente da República.", "o governo do presidente João Figueiredo convocou eleições para uma Assembleia Constituinte.", "a ala mais radicalizada do governo promoveu o fechamento do regime e ampliou a repressão à oposição operária.", "o governo dissolveu o Senado e a Câmara dos Deputados, decretando o AI-5 e retirando direitos sindicais.", "os sindicatos foram fechados de modo a garantir ao governo o exercício da liderança do processo de abertura política."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','História','Entretanto, foi durante a crise do Império que o republicanismo
foi a ideia que impulsionou a construção de partidos, clubes e
movimentos políticos de grande amplitude.
No que diz respeito à maneira pela qual as ideias republicanas
estiveram presentes na luta política contra a monarquia, é
correto afirmar que','A difusão de ideias republicanas no Brasil remonta ao século XVIII,
quando se articularam as primeiras contestações ao domínio
português inspiradas no ideário iluminista. Fizeram-se presentes,
por exemplo tanto nas bandeiras defendidas pelas elites mineiras
na inconfidência de 1789 quanto nas propostas de artesãos e
soldados nas ruas de Salvador, na conjuração de 1789.
(VAINFAS, Ronaldo. Dicionário do Brasil Imperial: 1822-1889. Rio de Janeiro:
Objetiva, 2002. p.631).',NULL,'["havia coesão política entre os movimentos republicanos nas várias províncias do país.", "o republicanismo se dividiu em partidos políticos e movimentos, tendo programas e estratégias diversas.", "o republicanismo impulsionou lutas separatistas no Nordeste nos anos 1880.", "no Rio de Janeiro, o republicanismo ganhou uma dimensão conservadora.", "em São Paulo, o republicanismo ganhou ares de ideias revolucionárias, voltadas para ampla mobilização popular."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Geografia','Avalie se o sistema desenvolvido pelo órgão público em questão
tem por objetivo possibilitar que as comunidades vulneráveis, em
tempo hábil, possam se proteger de:
I. intensa pluviosidade e ventos fortes em grande escala;
II. desmoronamentos de encosta e movimentos de massa;
III. transbordamento de rios e enchentes que espalham doenças.
Está correto o que se afirma em','Atualmente, o maior projeto da Defesa Civil é o Sistema de Alerta
e Alarme, mais conhecido como o Sistema de Sirenes. Instalados
em 103 comunidades, os 164 conjuntos sonoros foram
posicionados em áreas de alto risco geológico, conforme estudo
desenvolvido pela Fundação Instituto de Geotécnica do Município
(Georio).
Disponível em: https://prefeitura.rio/defesa-civil/cidade-do-rio-tem-sistema-de-
sirenes-com-equipamentos-instalados-em-103-comunidades-cariocas/. Acesso: 29
Jan. 2024.',NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e II, apenas.", "I, II e III."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Geografia','Avalie, assinalando Sim (S) ou Não (N), se o impacto ambiental
apresentado no texto e na foto, além de aumentar a
responsabilidade dos profissionais do corpo de bombeiros, é
reforçado pelos seguintes motivos:
( ) assoreamento da calha dos rios.
( ) coleta de lixo domiciliar deficiente.
( ) elevada permeabilização do solo urbano.
As afirmativas são, respectivamente,','Chuva deixa ruas alagadas em Rio das Pedras, na Zona Oeste
Rio das Pedras, na Zona Oeste do Rio, foi mais uma localidade
bastante afetada pela chuva que caiu em todo o estado na tarde
de sexta-feira, 04/02/2024 Quem precisou sair de casa para
trabalhar ou ir na rua teve muita dificuldade.
Disponível em: https://g1.globo.com/rj/rio-de-janeiro/noticia/ghtml Acesso: 06 Fev.
2024','/cbmerj-apoios/2024-q60-p11-figura.png','["S – S – N.", "S – N – S.", "S – S – S.", "N – S – N.", "S – N – N."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Geografia','Sobre o tipo de incêndio apresentado, julgue as afirmativas a
seguir:
I. Em meio à vegetação, existem combustíveis florestais,
caracterizados por todos os materiais vegetais que se
encontram na floresta, aqueles provenientes de plantas vivas,
que apresentam elevada quantidade de água ou plantas
mortas, cujo teor de água é muito mais baixo.
II. A maior ou menor inclinação de uma encosta também tem
influência determinante na propagação dos incêndios:
maiores declividades acentuam o efeito das colunas de
convecção de ar, que aquecem a vegetação acima do
incêndio e aumentam a velocidade de propagação, em
direção às partes mais elevadas do terreno.
III. A projeção e deslocamento de matéria inflamada é outro
efeito a ter em conta na propagação de um incêndio florestal,
pois este efeito é responsável pelo aparecimento de focos
secundários, em locais relativamente afastados do incêndio
principal, podendo afetar seriamente a segurança dos
bombeiros e da população local.
Está correto o que se afirma em','Segundo o Manual para Formação de Brigadista de Prevenção e
Combate aos Incêndios Florestais [Lemos et al. 2010], incêndio
florestal é todo fogo sem controle que incide sobre qualquer
forma de vegetação, podendo tanto ser provocado pelo homem
ou por causas naturais. Castro et al. [2003] identificam três
fatores que influenciam no comportamento dos incêndios
florestais: o tipo de combustível, o tipo de relevo e as condições
meteorológicas.
Disponível em: https://www.researchgate.net/figure/Accao-das-correntes-de-
conveccao-na-propagacao-de-um-incendio-florestal_fig11_267950284. Acesso: 27
jan. 2024',NULL,'["II, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Geografia','A diferença espacial entre as amplitudes térmicas registradas no
texto pode ser minimizada pelo seguinte tipo de intervenção:','Depois de punir os cariocas com temperaturas exorbitantes e uma
seca histórica, este verão fez do Rio uma cidade partida.
Na terça-feira, a máxima registrada no Forte de Copacabana foi
de amenos 27,3°C. Em Santa Cruz, porém, ela atingiu 39,2°C.
Disponível em: Diferença de temperatura entre bairros do Rio é de mais de 10 graus
- Jornal O Globo. Acesso: 30 Jan. 2024',NULL,'["limitação do número de andares em novas construções.", "criação de áreas e corredores verdes.", "permissão da circulação de ônibus somente em bairros periféricos.", "construção de grandes reservatórios de coleta de águas pluviais.", "ampliação dos sistemas de drenagens com criação de matas ciliares urbanas."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Geografia','Relacione os tipos de capitalismo com suas respectivas
descrições:
1. Capitalismo comercial
2. Capitalismo industrial
3. Capitalismo financeiro
4. Capitalismo informacional
( ) Fruto da globalização e dos avanços das tecnologias de
comunicação, provocou a aceleração de todos os tipos de
fluxos físicos ou virtuais, mudando práticas culturais e sociais.
( ) Tem como objetivo a obtenção de lucro por meio de
investimentos e especulação, sendo mais monopolista que
seus antecessores, integra grandes empresas, bancos e
mercado de capitais, com a criação das bolsas de valores.
( ) Deu início à transição da produção manufatureira para a
produção maquinofatureira, a partir das revoluções
tecnológicas e políticas em meados do século XVIII, passando
o poder para as mãos da burguesia, que defendia o
liberalismo econômico e o estado mínimo.
( ) Considerado pré-capitalista, quando não havia
industrialização, o sistema econômico estava baseado em
trocas, adoção de práticas mercantilistas, regime político
absolutista e controle estatal da economia, visando uma
balança comercial favorável.
A relação correta, na ordem apresentada, é:','Você certamente sabe que vivemos em um mundo capitalista,
mas afinal, o que isso significa? O capitalismo é um sistema
econômico que visa ao lucro e à acumulação das riquezas e está
baseado na propriedade privada dos meios de produção. Os
meios de produção podem ser máquinas, terras, ou instalações
industriais, por exemplo, e eles têm a função de gerar renda por
meio do trabalho.
Disponível em: https://www.politize.com.br/capitalismo-o-que-e. Acesso: 13 Jan
2024',NULL,'["1 – 3 – 2 – 4.", "3 – 1 – 2 – 4.", "2 – 3 – 4 – 1.", "4 – 3 – 1 – 2.", "4 – 3 – 2 – 1."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Geografia','A estratégia empresarial realizada pelas empresas citadas
é denominada','A Arezzo&Co e o Grupo Soma anunciaram este ano uma fusão
entre as duas companhias, em um negócio que vai criar uma
gigante do varejo nacional. São mais de 30 marcas de roupas,
calçados e acessórios, e um faturamento conjunto estimado em
R$ 12 bilhões. A operação vai fazer com que a nova companhia
possua mais de 2 mil lojas físicas próprias, cerca de 22 mil
funcionários, além das franquias.
Disponível em: Arezzo&Co e Grupo Soma: quais os efeitos práticos da fusão para a
nova empresa e para os clientes | Negócios | G1 (globo.com). Acesso: 05 Fev 2024.',NULL,'["cartel.", "truste.", "dumping.", "monopólio.", "transnacionalização."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Geografia','Agora avalie se as seguintes afirmativas são falsas (F) ou
verdadeiras (V).
( ) A divisão geoeconômica é a ideal para a quantificação e
análise de dados quantitativos e qualitativos para cada
Unidade da Federação.
( ) A divisão do IBGE por ser a mais antiga, apresentou como
critério para sua delimitação apenas os aspectos
fitogeográficos.
( ) A divisão geoeconômica é estática desde a sua criação, e
apenas Estados do Sul, Sudeste e Centro Oeste formam o que
representa o Centro-Sul.
As afirmativas são, respectivamente,','Compare os mapas:
Mapa 1
Disponível em: http://repositorio.ipea.gov.br/bitstream/11058/8911/1
/Regi%C3%A3o%20e%20regionaliza%C3%A7%C3%A3o.pdf. Acesso: 06 Fev 2024.','/cbmerj-apoios/2024-q65-p12-figura.png','["V – V – F.", "V – F – V.", "V – V – V.", "F – V – F.", "F – F – F."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Geografia','A partir da análise das informações sobre a agricultura e o
agronegócio brasileiro, julgue as afirmativas a seguir:
I. O acesso facilitado ao crédito não justifica a produção global
maior do agronegócio, mas sim o emprego de tecnologias
apropriadas para a produção.
II. A desigual proporção entre terras ocupadas e a produção de
comida na agricultura camponesa é argumento que pode
justificar a realização de uma reforma agrária para aumento
destes percentuais.
III. A agricultura camponesa é aquela que apresenta maior oferta
de emprego no campo, portanto apresenta papel
fundamental na fixação das populações nas áreas rurais.
Está correto o que se afirma em','Observe o infográfico a seguir.
Disponível em:
http://www4.planalto.gov.br/consea/eventos/mesa_de_controversias/terra-e-
territorio-2014/panorama-do-reconhecimento-do-direito-a-terra-para-camponeses-
povos-e-comunidades-tradicionais-bernardo-mancano-1. Acesso: 06 Fev. 2024','/cbmerj-apoios/2024-q66-p13-figura.png','["I, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Filosofia','Durante um mês, uma pessoa observou que todas as vezes que o
vento soprava num determinado sentido, ocorria chuva no fim do
dia. Com base nessa observação, ele conclui que, sempre que
venta naquela direção, chove.
O caso acima é um exemplo de',NULL,NULL,'["dedução.", "transição.", "indução.", "intuição.", "abdução."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Filosofia','Segundo a postura ética conhecida como utilitarismo, o melhor
modo de agir é',NULL,NULL,'["buscar a excelência através das virtudes para uma vida plena.", "valorizar a liberdade e a autenticidade nas escolhas.", "considerar que a moral varia conforme o contexto cultural.", "seguir regras e ignorar as consequências das ações", "buscar o maior benefício para o maior número de pessoas."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Filosofia','São Tomás de Aquino lançou as bases filosóficas para a
investigação racional do mundo natural. Isso se deve ao fato de
ele ter repensado a relação entre',NULL,NULL,'["o indivíduo e a sociedade.", "o ser e o nada.", "o idealismo e o materialismo.", "a razão e a fé.", "a natureza e a graça."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Filosofia','Os filósofos pré-socráticos buscaram descobrir o princípio
organizador de todas as coisas.
Um desses pensadores foi Heráclito, para o qual a realidade é
caracterizada',NULL,NULL,'["pela transformação e alternância dos contrários.", "pela movimentação dos átomos no vazio.", "pela combinação e separação de quatro elementos.", "pela complementaridade entre forma e matéria.", "pela modificação de uma substância ilimitada."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','Filosofia','O início da filosofia na Grécia é o momento em que o
estabelecimento de um novo tipo de atividade intelectual rompe
com a forma tradicional de pensamento presente nos mitos.
Uma diferença da filosofia em relação ao mito é',NULL,NULL,'["a busca pela verdade e pelo sentido dos acontecimentos da vida.", "o uso da argumentação como método para atingir o conhecimento.", "a utilização de narrativas para ilustrar questões complexas e expressar valores.", "a reflexão sobre a existência individual e coletiva, bem como sobre a natureza.", "a busca por influência cultural e social, estabelecendo um modelo de formação."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','Sociologia','O conceito de cultura desenvolvido pela antropologia moderna
propõe que não há hierarquia entre as culturas humanas.
Segundo essa concepção,',NULL,NULL,'["o humano possui uma natureza universal independente das variações de tempo e lugar.", "os homens se diferenciam entre si de acordo com características raciais imutáveis.", "a essência humana obedece a leis simples que podem ser descobertas pela ciência experimental.", "os humanos passam a ter cultura na medida em que se educam formalmente.", "o homem existe apenas enquanto inserido em um meio com costumes particulares."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','Sociologia','Segundo a perspectiva teórica apresentada no trecho acima, a
criminalidade é','O processo pelo qual uma ação chega a ser considerada ‘crime’
depende da imposição de significados morais às ações, ou seja, de
uma reação moral bem-sucedida por parte de indivíduos e grupos
contra comportamentos de outros.
Adaptado de MISSE, Michel. Crime e violência no Brasil contemporâneo. Rio de
Janeiro: Editora Lumen Juris, 2006.',NULL,'["um elemento essencial para a coesão social e o desenvolvimento.", "uma causa direta de revolta coletiva devido à sua natureza.", "uma resposta às desigualdades econômicas, como forma de resistência.", "uma escolha calculada para obtenção de vantagens.", "um conjunto de comportamentos marcados como inaceitáveis segundo certos valores."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','Sociologia','No fim do século XVIII, a Declaração dos Direitos do Homem
alterou significativamente o entendimento sobre o que assegura
a cada indivíduo a sua dignidade na vida social.
A partir desse momento, passa-se a entender que o homem deve
sua dignidade',NULL,NULL,'["a Deus e às Escrituras.", "à sua natureza humana.", "aos valores tradicionais.", "à soberania do Estado-nação.", "aos princípios da moral familiar."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','Sociologia','No trecho acima, o autor analisa relações entre individualismo e
cidadania.
É correto afirmar que esse trecho explicita','O indivíduo é o pior inimigo do cidadão. O ‘cidadão’ é uma pessoa
que tende a buscar seu próprio bem-estar através do bem-estar
da cidade — enquanto o indivíduo tende a ser morno, cético ou
prudente em relação à ‘causa comum’, ao ‘bem comum’, à ‘boa
sociedade’ ou à ‘sociedade justa’.
Adaptado de BAUMAN, Zygmunt. Modernidade líquida.
Rio de Janeiro: Zahar, 2001.',NULL,'["a tensão entre as aspirações individualistas e o compromisso com a cidadania.", "um reconhecimento do papel da postura cética na para a integridade do social.", "uma avaliação da cidadania como inerentemente limitadora e opressiva.", "um elogio do individualismo como força para o progresso social.", "uma incompatibilidade entre interesses individuais e coletivos. Atenção! A tabela periódica está na contracapa desta prova. Use-a, se precisar."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','Química','O processo de mineração de metais envolve uma série de etapas.
Na mineração de cobre, por exemplo, em uma determinada
etapa de separação, o minério triturado é adicionado a um
tanque contendo uma mistura de água, óleo e detergentes.
Neste ambiente, bolhas de ar são injetadas na mistura, aderindo-
se preferencialmente às partículas de minério de cobre, que são
levadas à superfície. Por sua vez, a parte não desejada é retirada
na parte inferior do tanque.
O processo de separação descrito é denominado',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["destilação.", "centrifugação.", "flotação.", "precipitação.", "filtração."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','Química','Os filmes finos têm sido utilizados em diferentes aplicações como
revestimentos óticos e proteção metálica, podendo ser obtidos
por meio de diferentes processos.
Os filmes de sílica (SiO₂) podem ser obtidos por meio de
decomposição de vapor químico. Nesse processo o tetracloreto
de silício gasoso (SiCl₄) reage com gás hidrogênio (H₂) e gás
carbônico (CO₂). Além do filme de sílica são formados, como
subprodutos, os gases cloreto de hidrogênio (HCl) e monóxido
de carbono (CO).
A transformação química descrita é corretamente representada
por:',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["SiCl₄(g) + 2 H₂(g) + 2 CO₂(g) → SiO₂(s) + 4 HCl(g) + 2 CO(g)", "SiO₂(s) + SiCl₄(g) + 2 H₂(g) → 2 Si(s) + 4 HCl(g) + O₂(g)", "SiCl₄(g) + 2 H₂(g) + O₂(g) → SiO₂(s) + 4 HCl(g)", "SiO₂(s) + 4 HCl(g) + 2 CO₂(g) → SiCl₄(g) + 2 H₂O(g) + 2 CO(g) + O₂(g)", "SiO₂(s) + 4 HCl(g) + 2 CO(g) → SiCl₄(g) + 2 H₂(g) + 2 CO₂(g)"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','Química','A medicina nuclear é uma especialidade médica que usa
materiais radioativos para a geração de imagens em exames
como a cintilografia e o PET-CT. Entre os materiais utilizados
estão substâncias que contêm, por exemplo, F-18, Ga-68 e I-131.
A partir dessas informações, avalie se as afirmativas a seguir são
falsas (F) ou verdadeiras (V).
( ) Os elementos apresentados são isótopos entre si.
( ) Ga-68 é o que possui maior número de nêutrons.
( ) F-18 é o que apresenta menor número de massa.
As afirmativas são, respectivamente,',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["F – V – V.", "V – V – F.", "F – V – F.", "F – F – V.", "V – F – V."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','Química','Atualmente é difícil imaginar a vida sem o uso de smartphones.
Estes pequenos dispositivos têm desempenhado cada vez mais
funções, que vão muito além de fazer e receber chamadas.
No entanto, apesar de pequenos, estes aparelhos demandam
uma grande quantidade de elementos químicos na sua
confecção. Observe o quadro a seguir, que apresenta alguns dos
elementos que compõem as diferentes partes do aparelho.
A partir da composição química apresentada no quadro, avalie as
seguintes afirmativas:
I. A parte eletrônica é constituída somente por metais.
II. Na tela estão presentes seis elementos de transição interna.
III. Os elementos presentes na bateria pertencem ao segundo
período da classificação periódica.
IV. A capa é constituída por elementos representativos.
Está correto apenas o que se afirma em',NULL,'["/cbmerj-apoios/2024-tabela-periodica.png", "/cbmerj-apoios/2024-q79-p15-completo-0.png"]','["I e III.", "I e IV.", "II e III.", "II e IV.", "III e IV."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','Química','Em um determinado processo de análise duas amostras
hipotéticas (A e B) foram estudadas por meio de diversos
experimentos.
O gráfico a seguir apresenta os resultados obtidos para a relação
entre massa e volume de cada uma dessas amostras, medidos a
25°C.
A partir dos dados apresentados é possível afirmar que, nessa
temperatura, a razão entre as densidades das amostras A e B é
igual a',NULL,'["/cbmerj-apoios/2024-q80-p15-figura.png", "/cbmerj-apoios/2024-tabela-periodica.png"]','["1/2.", "1/3.", "1.", "3/2.", "2."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'81','Química','O chumbo é classificado como um metal pesado, altamente
tóxico e muito nocivo aos seres humanos. Seu símbolo, Pb, tem
origem na palavra latina Plumbum, que significa prata líquida, e
seu número atômico é 82.
O número de níveis que esse elemento possui e a quantidade de
elétrons em sua camada de valência são, respectivamente,',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["6 e 4.", "6 e 2.", "5 e 4.", "5 e 2.", "5 e 6."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'82','Química','O processo de tratamento de água envolve uma série de etapas
e, em alguns deles, diferentes compostos químicos são utilizados.
Na etapa de floculação, por exemplo, são adicionados aos
tanques de água o óxido de cálcio e o sulfato de alumínio, com o
objetivo de aglomerar as partículas suspensas na água.
Os compostos químicos utilizados na floculação têm as seguintes
fórmulas químicas:',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["CaO e Al₂S₃", "CaO e Al₂(SO₄)₃", "Ca(OH)₂ e Al₂S₃", "CaO e Al₂(SO₃)₃", "Ca(OH)₂ e Al₂(SO₄)₃"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'83','Química','A formação de novos compostos a partir da união de átomos é
constante fonte de estudo na Química. De um modo geral, o tipo
de ligação química e a fórmula que uma determinada espécie irá
ter pode ser prevista a partir da distribuição eletrônica dos
átomos isolados no seu estado fundamental.
Considere as distribuições eletrônicas por níveis de três átomos
genéricos R, Q e T.
R: K=2, L=8, M=1
Q: K=2, L=8, M=7
T: K=2, L=5
A partir das informações são feitas as seguintes afirmações:
I. A espécie formada por T e Q é predominantemente covalente
e tem fórmula TQ₂.
II. A espécie formada por R e Q é predominantemente iônica e
tem fórmula RQ.
III. A espécie formada por R e T é predominantemente iônica e
tem fórmula R₂T₃.
Está correto o que se afirma em',NULL,'/cbmerj-apoios/2024-tabela-periodica.png','["I, apenas.", "II, apenas.", "III, apenas.", "I e II.", "II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'84','Física','A figura a seguir mostra dois blocos A, de 2 kg, e B, de 3 kg,
presos um ao outro por um fio ideal; os blocos sobem
verticalmente acelerados por uma força vertical F⃗ de módulo
igual a 60 N.
Considere g = 10 m/s². O módulo das forças que os blocos estão
exercendo um sobre o outro é de',NULL,'/cbmerj-apoios/2024-q84-p16-completo-0.png','["0N.", "16N.", "24N.", "36N.", "42N."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'85','Física','Uma esfera metálica de pequenas dimensões é abandonada na
borda de um hemisfério e passa a deslizar em seu interior com
atrito desprezível, como ilustra a figura.
Sendo g o valor da aceleração da gravidade no local, o módulo da
aceleração da esfera no instante em que ela passa pelo ponto
mais baixo de sua trajetória é',NULL,'/cbmerj-apoios/2024-q85-p16-figura.png','["g.", "1,5g.", "2g.", "2,5g.", "3g."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'86','Física','Três esferas idênticas, muito leves, estão penduradas por fios isolantes no vácuo. Em um dado instante, a esfera A (QA = 10 μC) toca a esfera B (QB = −2 μC). Decorridos alguns instantes, elas são afastadas e faz-se com que a esfera B toque na esfera C (QC = 6 μC). Após os contatos descritos, as cargas das esferas A, B e C são, respectivamente:',NULL,NULL,'["4 µC, 4 µC e 4 µC.", "5 µC, 5 µC e 5 µC.", "8 µC, 3 µC e 3 µC.", "8 µC, 2 µC e 2 µC.", "4 µC, 5 µC e 5 µC."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'87','Física','Para um salvamento, um caminhão do Corpo de Bombeiros parte
do repouso mantendo aceleração constante por um intervalo de
tempo T. A velocidade então atingida é mantida por um intervalo
de tempo 4T. Em seguida o caminhão desacelera constantemente
por um intervalo de tempo T, até atingir o repouso.
O gráfico que melhor representa o deslocamento do caminhão
em função do tempo ao longo do percurso é:',NULL,'/cbmerj-apoios/2024-q87-p16-figura.png','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio.", "Gráfico E, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'88','Física','A figura mostra uma escada homogênea em repouso com uma das extremidades apoiada no solo e a outra em uma parede vertical. Considere: P, força peso; Fat(s), força de atrito entre a escada e o solo; Fat(p), força de atrito entre a escada e a parede; Ns, força normal ao solo; e Np, força normal à parede. O diagrama que melhor indica as forças que atuam sobre a escada é:',NULL,'["/cbmerj-apoios/2024-q88-p17-completo-0.png", "/cbmerj-apoios/2024-q88-p17-completo-1.png"]','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio.", "Gráfico E, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'89','Física','Uma plataforma horizontal de um material praticamente
indilatável é construída, à temperatura ambiente, em um terreno
irregular. Para sustentá-la, usam-se duas colunas metálicas (1) e
(2) de materiais diferentes. O desnível entre as bases de
sustentação dessas colunas é de 2m, como mostra a figura.
O coeficiente de dilatação linear do material da coluna (1) é
2,4.10⁻⁵/oC, e o do material da coluna (2) é 8.10⁻⁴/oC. Para que a
plataforma permaneça horizontal, seja qual for a variação de
temperatura, os comprimentos iniciais das colunas (1) e (2),
devem ser, respectivamente,',NULL,'/cbmerj-apoios/2024-q89-p17-figura.png','["2m e 4m.", "2m e 3m.", "1m e 4m.", "1m e 2m.", "1m e 3m."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'90','Física','Nas figuras abaixo estão representadas esquematicamente duas
maneiras de ligar três resistores a uma fonte de tensão.
Figura 1
Em ambos os casos, a indicação do voltímetro ideal é a mesma.
Sendo assim, a razão P₂/P₁ entre as potências consumidas nas situações ilustradas na figura 2 (P₂) e na figura 1 (P₁) é igual a
2 1',NULL,'/cbmerj-apoios/2024-q90-p17-figura.png','["36.", "6.", "1.", "1/6.", "1/36."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'91','Física','A água (na forma líquida) tem um comportamento anormal entre
0 oC e 4 oC, como ilustra o gráfico cartesiano a seguir, que mostra
como sua densidade (µ) varia em função da temperatura ().
Os cinco frascos representados na figura a seguir são idênticos,
transparentes, feitos de um material termicamente indilatável,
estão apoiados numa superfície plana e horizontal e contêm uma
mesma massa de água (líquida) a temperaturas diferentes.
Se a água em um dos frascos estiver a 4°C, esse frasco é o de
número',NULL,'["/cbmerj-apoios/2024-q91-p18-completo-0.png", "/cbmerj-apoios/2024-q91-p18-completo-1.png"]','["1.", "2.", "3.", "4.", "5."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'92','Biologia','O código genético é um código universal que estabelece a
equivalência entre a sequência de bases no DNA e a sequência
correspondente de aminoácidos, na proteína.
Com relação à natureza química do DNA e sua relação com o
código genético, analise as afirmativas a seguir:
I. A molécula de DNA está presente em todos os seres vivos,
até mesmo em muitos tipos de vírus. Em todos, a molécula
tem a mesma composição: ela é formada pela união de
nucleotídeos, compostos de um fosfato, uma pentose e uma
base nitrogenada, que pode ser adenina (A), timina (T),
citosina (C) ou guanina (G).
II. As inúmeras moléculas de DNA existentes nos mais diferentes
seres vivos apresentam diferentes combinações – elas
diferem em número de bases e na sequência em que elas
estão dispostas.
III. Toda alteração na sequência de bases nitrogenadas em uma
molécula de DNA é uma mutação, o que determina o
surgimento de uma nova característica no organismo. Essa é
a condição fundamental para a diversificação das espécies.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "I e II, apenas.", "I e III, apenas.", "II e III, apenas.", "I, II e III."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'93','Biologia','A completa ausência de impressões digitais é conhecida como
adermatoglifia (ADG). Essa condição muito rara, determinada
geneticamente, é apelidada de “doença do atraso da imigração”
em razão do embaraço que ela causa quando pessoas com a
característica tentam atravessar fronteiras. A ADG foi
documentada apenas em algumas pessoas de quatro famílias no
mundo. O heredograma a seguir mostra a herança da ADG em
uma dessas famílias. Os quadrados e círculos em preto são as
pessoas com adermatoglifia.
(PIERCE, B. A. Genética: um enfoque conceitual. 5. ed. Rio de Janeiro: Guanabara
Koogan, 2016).
A análise do heredograma permite afirmar que a adermatoglifia
(ADG) é determinada por gene',NULL,'/cbmerj-apoios/2024-q93-p18-figura.png','["autossômico dominante e todas as pessoas com a característica têm um genitor com a mesma condição.", "autossômico recessivo, já que a característica não se manifesta em todas as gerações.", "dominante ligado ao X, pois os homens afetados transmitem a característica para todas as suas filhas.", "recessivo ligado ao Y, já que todos os filhos de homens afetados apresentam a característica.", "mitocondrial, de herança materna, já que as mulheres são mais afetadas."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'94','Biologia','Muitos fatores contribuem para a morte por asfixia no caso de
um incêndio. Por exemplo, o poliuretano presente em resinas e
espumas (como a de colchões), quando queimado sob altas
temperaturas, libera gás cianeto. Esse gás, quando inalado, se liga
às enzimas do interior de determinada organela celular,
impedindo que as células do organismo utilizem o gás oxigênio
para obtenção de energia.
A organela afetada pelo cianeto é o(a)',NULL,NULL,'["lisossomo.", "núcleo.", "mitocôndria.", "retículo endoplasmático.", "complexo golgiense."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'95','Biologia','Ao estudar um recém-descoberto microrganismo patogênico,
observando-o ao microscópio eletrônico, um pesquisador
classificou-o como sendo uma bactéria.
A principal característica observada, que permitiu ao pesquisador
diferenciar esse microrganismo de outros e chegar à classificação
correta, foi a',NULL,NULL,'["presença de ribossomo.", "presença de flagelo.", "presença de parede celular.", "ausência de membrana plasmática.", "ausência de carioteca."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'96','Biologia','Segundo dados da Organização Mundial de Saúde, o Brasil ocupa
a 17ª posição entre 65 países pesquisados em relação ao número
de doses de antibióticos consumidas. A situação é preocupante
pois, segundo especialistas, revela o alto consumo derivado de
prescrições inadequadas e a automedicação que favorecem o
surgimento de bactérias multirresistentes, que podem levar as
pessoas à morte.
(Adaptado de https://portal.fiocruz.br/noticia/fiocruz-no-ar-riscos-do-consumo-de-
antibioticos-sem-receita-medica)
A resistência aos antibióticos ocorre porque',NULL,NULL,'["nosso corpo se tornou imune a esses medicamentos devido a seu uso descontrolado, impedindo sua ação sobre as bactérias.", "bactérias previamente resistentes, quando expostas a esses medicamentos, são selecionadas, sobrevivem e se reproduzem.", "a automedicação e as prescrições inadequadas fazem com que esses medicamentos sejam usados em doses insuficientes para matar as bactérias.", "as drogas em questão promoveram mutações favoráveis, fazendo surgir nas bactérias genes que lhes conferem resistência.", "sem a correta orientação, esses medicamentos mudam o genoma dos enfermos, deixando-os mais susceptíveis às doenças bacterianas."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2024: alternativa B.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'97','Biologia','A jaqueira é um vegetal originário da Índia e de outras regiões do
sudeste asiático. Diversos animais consomem seus frutos,
contribuindo decisivamente para a dispersão do vegetal ao
espalharem as sementes em novos lugares. Suas folhas, ao
caírem, bloqueiam a luz do sol dificultando a germinação de
outras espécies. No Brasil, a jaqueira aclimatou-se tão bem que
ganha a disputa pela sobrevivência com espécies nativas, sendo
uma exótica invasora.
No texto, a informação importante para classificar as jaqueiras
como',NULL,NULL,'["pteridófitas é a presença de sementes, característica que só aparece nesse grupo vegetal.", "gimnospermas é a presença de frutos, característica que só aparece nesse grupo vegetal.", "angiospermas é a presença de sementes, característica que só aparece nesse grupo vegetal.", "gimnospermas é a presença de sementes, característica que só aparece nesse grupo vegetal.", "angiospermas é a presença de frutos, característica que só aparece nesse grupo vegetal."]'::jsonb,'E','Gabarito definitivo oficial do CBMERJ 2024: alternativa E.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'98','Biologia','Uma infestação do escorpião-amarelo, o Tityus serrulatus,
considerado o mais perigoso do Brasil, está sendo monitorada na
Região dos Lagos do Rio de Janeiro.
O Instituto Vital Brazil informou que só no começo de fevereiro
houve a captura de 200 escorpiões da espécie na cidade.
(G1, Região dos Lagos, 20/02/2024)
Com relação aos escorpiões, analise os itens a seguir:
I. Eles são aracnídeos com quatro patas e peçonhentos.
II. São predadores e seus pedipalpos e antenas auxiliam na
identificação e captura de suas presas.
III. Evitar o acúmulo de entulho, de material de construção e de
folhas e troncos secos reduz a chance de acidentes com
escorpiões.
Está correto o que se afirma em',NULL,NULL,'["I, apenas.", "II, apenas.", "III, apenas.", "I e III, apenas.", "I, II e III."]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2024: alternativa C.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'99','Biologia','No século XIX, o naturalista inglês Charles Darwin (1809-1872) fez
uma viagem de cinco anos ao redor do mundo; a partir de suas
observações e do material coletado, ele então elaborou o
conceito da seleção natural, conceito central na sua teoria da
evolução.
Já no século XX, com as contribuições da genética, a teoria da
evolução sofreu ajustes e ficou conhecida como teoria Sintética
da Evolução, Neodarwinismo ou Nova Síntese.
De acordo com a teoria Sintética da Evolução e o conceito de
seleção natural,',NULL,NULL,'["as adaptações que são favoráveis em um determinado momento são favoráveis em qualquer outro momento.", "espécies diferentes que ocupam o mesmo habitat se adaptam a esse local passando pelas mesmas mudanças genéticas e as transmitem a seus descendentes.", "organismos que apresentam características mais favoráveis em certo habitat têm menor probabilidade de sobrevivência e reprodução do que os demais.", "indivíduos bem adaptados deixam mais descendentes e, portanto, contribuem mais para o pool gênico da próxima geração do que indivíduos mal adaptados.", "as adaptações benéficas em um habitat, normalmente, devem ser benéficas em qualquer outro."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2024: alternativa D.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'100','Biologia','Método criado no Brasil, o uso da pele de tilápia é um dos
grandes potenciais da medicina para o tratamento de ferimentos
por queimaduras na pele.
Com relação à diversidade e organização das células da pele
humana, avalie se as afirmativas a seguir são verdadeiras (V) ou
falsas (F).
( ) A camada mais interna da pele é a derme, formada por tecido
epitelial rico em queratina.
( ) Os tecidos epiteliais, ou epitélios, são formados por células
dispostas lado a lado (justapostas), firmemente unidas entre
si.
( ) A exposição aos raios ultravioleta aumenta a produção de
pigmento pelos melanócitos.
As afirmativas são, respectivamente,',NULL,NULL,'["F – V – V.", "F – F – F.", "V – F – V.", "V – V – F.", "F – V – F."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2024: alternativa A.' from public.exams where slug='cbmerj-2024-cfo' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2024-cfo');

insert into public.exams(slug,title,source,year) values ('cbmerj-2025-cfo-espanhol','CBMERJ 2025 · Curso de Formação de Oficiais · Espanhol','cbmerj','2025') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','O título do texto enfatiza o papel do comandante do resgate, enquanto o seu relato aponta de
modo recorrente para o papel da equipe de bombeiros.
Um trecho que comprova essa afirmativa é:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, (l. 15)", "Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade. (l. 29)", "A gente teve que colocar um cobertor por baixo dela, com muito cuidado, (l. 30)", "esse não é o meio mais adequado para fazer o transporte de uma vítima com essa necessidade. (l. 36-37)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','No telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela,
que está acamada e inconsciente dentro da casa tomada pela água. (l. 2-4)
Na frase, o destaque à “voz” da filha constitui a seguinte figura de linguagem:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["eufemismo", "metonímia", "hipérbole", "paradoxo"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','Rudinei, cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da
tragédia das inundações. (l. 9-10)
No período acima, a oração sublinhada apresenta um dos conteúdos selecionados para compor
a notícia.
A classificação dessa oração e uma justificativa para sua inserção na notícia estão apresentadas em:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["coordenada aditiva − acrescenta informação associada à comoção do leitor", "coordenada conclusiva − revela motivação subjacente à tomada das decisões", "subordinada adverbial consecutiva − indica desfecho comum aos desastres naturais", "subordinada adjetiva explicativa − especifica contexto adverso aos sujeitos envolvidos"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','(1) Colocamos ela em cima do colchão novamente (l. 31)
(2) Nós a colocamos em cima do colchão novamente.
A diferença observada entre os enunciados acima exemplifica o fenômeno da variação linguística.
Uma explicação para tal variação relaciona-se com graus de:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["intertextualidade", "figuratividade", "formalidade", "subjetividade"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','pois tudo estava completamente escuro, e as águas turbulentas. (l. 38-39)
No trecho acima, o verbo de ligação entre o sujeito “as águas” e o predicativo “turbulentas” é
omitido, recurso que confere agilidade à fala.
Esse recurso é conhecido como:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["elipse", "alusão", "anáfora", "estilização"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','A tese central apresentada no texto do escritor angolano é defendida, principalmente, a partir
do seguinte procedimento argumentativo:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["analogia", "causalidade", "generalização", "exemplificação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','abrindo-nos às opiniões alheias, e repensando as próprias, certamente seríamos melhores
pessoas. (l. 6-7)
De acordo com o trecho, a opinião de uma pessoa, para ser de fato própria, deve ser objeto da
seguinte atitude:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["atenção seletiva", "apreciação objetiva", "refutação insistente", "reformulação permanente"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Na crônica, o autor lança mão do recurso de simular uma conversa.
Essa simulação está evidenciada em:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["É um exercício de alteridade que, sendo praticado de forma regular, desenvolve os músculos da empatia. (l. 4-5)", "Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. (l. 17)", "A literatura, reconheço, tem algumas vantagens relativamente à vida. (l. 28)", "Em vez de espetarmos agulhas num boneco de pano, torturamos um personagem, (l. 31-32)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','o meu desafeto sentiu-se lisonjeado, agradeceu imenso, (l. 34)
A palavra “imenso”, tal como empregada no trecho, tem a mesma classificação do vocábulo
sublinhado em:
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["talvez nos irritássemos ⟦menos⟧ com os outros. (l. 6)", "uma vida sem uma ⟦certa⟧ dose de espanto, (l. 15)", "Infelizmente, pessoas assim vivem ⟦pouco⟧ tempo. (l. 26)", "a possibilidade de assassinar, de ⟦muitas⟧ maneiras terríveis, (l. 29)"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','O texto 1 compõe um gênero jornalístico e o texto 2 é uma crônica literária.
Apesar de serem gêneros textuais diferentes, em seus propósitos e circulação na sociedade, um
aspecto da linguagem que os aproxima é:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.

TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["construção de personagens fictícios", "presença de sequências narrativas", "precisão de marcos cronológicos", "descrição de cenas detalhadas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Espanhol','La frase del texto que sintetiza el punto de vista de la autora sobre el tema discutido es:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["las mujeres constituyen un componente esencial dentro de las fuerzas militares (l. 1)", "la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, (l. 13)", "fueron también eliminándose distintas restricciones legales al acceso femenino (l. 14-15)", "en las misiones internacionales las mujeres padecen discriminación explícita, (l. 30-31)"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Espanhol','representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en
2010. (l. 5)
En el 2015, las mujeres representaban solamente el 6% de los efectivos movilizados. (l. 5-6)
Con relación a la representatividad de mujeres en instituciones militares, los términos subrayados
indican, respectivamente, las siguientes nociones de cantidad:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["máxima − aproximada", "aproximada − exacta", "exacta − mínima", "mínima − máxima"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Espanhol','y más de 130 perdieron la vida. (l. 17)
En el fragmento subrayado, se hace uso de la figura de lenguaje conocida como:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["antítesis", "metáfora", "hipérbole", "eufemismo"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Espanhol','La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU
en 2000, constituyó un paso innovador sin precedentes (l. 18-19)
En relación con el término antecedente, el fragmento subrayado tiene como objetivo:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["atenuarlo", "enfatizarlo", "ejemplificarlo", "contextualizarlo"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Espanhol','le siguieron otras (l. 24)
El término a que se refiere el pronombre subrayado es:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["la Resolución 1325", "el reconocimiento internacional", "el rol de las mujeres", "la dimensión de género"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Espanhol','Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por
evaluaciones cautelosas y un cierto escepticismo, (l. 27-28)
Un conector de valor concesivo, como el subrayado arriba, está presente en:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["En todos los casos, el proceso de integración de género en las fuerzas militares es revelador (l. 6-7)", "reconociéndolas no solo como víctimas, sino también como actores relevantes (l. 23)", "Aun así, independientemente de los análisis más pesimistas, (l. 35)", "de hecho, la dimensión de género dejó de ser encarada como algo exterior y ajeno (l. 38-39) COM BASE NO TRECHO A SEGUIR, RESPONDA ÀS QUESTÕES 17 E 18. los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su participación (l. 30-32)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Espanhol','Para introducir las conclusiones a las que llegan Karim y Beardsley en su investigación, la autora
del texto emplea el siguiente recurso:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["paráfrasis", "pastiche", "alusión", "plagio"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Espanhol','Las formas verbales subrayadas expresan acciones del siguiente tipo:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["puntuales en el pasado", "reiteradas en el pasado", "reiteradas en el presente", "puntuales en el presente"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Espanhol','Todo esto indica que hay que seguir desarrollando políticas nacionales destinadas a
promover la agenda WP&S, (l. 32-33)
El fragmento subrayado aporta al enunciado sentido de:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["oposición", "condición", "probabilidad", "obligatoriedad"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Espanhol','El texto presenta las condiciones que favorecieron el reclutamiento de mujeres.
Dos condiciones fundamentales para ese reclutamiento son:','LA INTEGRACIÓN DE GÉNERO EN LAS FUERZAS ARMADAS:
CONDICIONAMIENTOS Y PERSPECTIVAS
En la actualidad, las mujeres constituyen un componente esencial dentro de las fuerzas militares de un
gran número de países en varios continentes. Sin embargo, su situación y el alcance de su representatividad
varían significativamente según cada país.
Dentro del conjunto de Estados miembro de la Organización del Tratado del Atlántico Norte (OTAN),
5 representan cerca de 11%, mientras que en América Latina apenas sobrepasaban el 4% en 2010. En el 2015,
las mujeres representaban solamente el 6% de los efectivos movilizados. En todos los casos, el proceso de
integración de género en las fuerzas militares es revelador en dos sentidos. Por un lado, deja ver el espacio
y el rol que las instituciones militares ocupan en las respectivas sociedades, así como también los procesos
internos de transformación organizacional y el estado de las relaciones entre civiles y militares en el marco
10 de la democracia. Por otro lado, las dificultades en la integración, que siguen siendo significativas, revelan
con enorme precisión y nitidez las paradojas y tensiones que persisten en los procesos de construcción de
igualdad entre hombres y mujeres.
Aunque la presencia femenina sigue estando mayormente concentrada en tareas de apoyo, en una
proporción que tiende a crecer por sobre la que se da entre los hombres, fueron también eliminándose
15 distintas restricciones legales al acceso femenino a tareas operacionales o de combate. Dentro de las fuerzas
estadounidenses que actuaron en esos y otros teatros de operaciones, entre 2001 y 2013, se han destacado
unas 299000 mujeres militares, de las cuales más de 800 fueron heridas y más de 130 perdieron la vida.
La Resolución 1325, aprobada en forma unánime por el Consejo de Seguridad de la ONU en 2000,
constituyó un paso innovador sin precedentes para el reconocimiento internacional de la dimensión de
20 género en los conflictos armados. En ese documento se reconoce el impacto desproporcionado de los
conflictos armados sobre mujeres y niños, así como la relativa escasez de representación femenina en los
procesos de paz y estabilización. Esta resolución dio las pautas para un nuevo modo de pensar el rol de las
mujeres, reconociéndolas no solo como víctimas, sino también como actores relevantes en el plano de la
seguridad internacional. A esa resolución le siguieron otras entre 2008 y 2015, que en conjunto configuraron,
25 por primera vez en la historia de la ONU, una agenda internacional sobre la dimensión de género en los
conflictos y en la producción de seguridad.
Pese a todo, el entusiasmo con la resolución fue progresivamente sustituido por evaluaciones cautelosas y un
cierto escepticismo, de cara a la vigencia de significativas disyunciones entre la retórica y la práctica.En uno
de los pocos estudios que analiza comparativamente la participación de mujeres en operaciones de apoyo
30 a la paz, los investigadores Sabrina Karim y Kyle Beardsley concluyen que en las misiones internacionales
las mujeres padecen discriminación explícita, son confinadas a papeles muy específicos y ven limitada su
participación al accionar informal de redes. Todo esto indica que hay que seguir desarrollando políticas
nacionales destinadas a promover la agenda WP&S✳, como condición fundamental para asegurar una
mayor eficacia en su implementación a escala internacional.
35 Aun así, independientemente de los análisis más pesimistas, la visibilidad pública y la perseverancia
política y militar por mantener esta agenda de género y encarar medidas tendientes a su implementación
y monitorización sugieren que el espacio potencial para una transformación no está agotado. Si bien otros
avances no se dieron, ocurrió una alteración importante: de hecho, la dimensión de género dejó de ser
encarada como algo exterior y ajeno a los procesos de producción de seguridad y su inclusión pasó a
constituir un elemento esencial de cara al éxito de las misiones militares y los procesos de paz.
✳ WP&S - Mujeres, Paz y Seguridad (ONU)
HELENA CARREIRAS
Adaptado de nuso.org, 2018.',NULL,'["incremento de acciones bélicas − cambios en las instituciones militares", "cambios en las instituciones militares − renovación en agendas internacionales", "intervenciones de organismos políticos − incremento de acciones bélicas", "renovación en agendas internacionales − intervenciones de organismos políticos"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Matemática','Na tabela a seguir, estão apresentados os salários pagos em um estabelecimento comercial e a
quantidade de funcionários que recebe esses salários.
A média e a mediana desses salários são, em reais, respectivamente, iguais a:',NULL,'/cbmerj-apoios/2025-q21-p13-completo-0.png','["1.500 e 1.500", "1.500 e 2.750", "2.750 e 1.500", "2.750 e 2.750"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Matemática','Na sentença y = |x − 3| + |x + 5|, x é um número real, sendo − 5 < x < 0.
O valor de y é:',NULL,NULL,'["4", "8", "2x + 4", "2x + 8"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Matemática','Uma fábrica com 20 funcionários que trabalham 8 horas por dia, produz 4000 uniformes por mês.
Com o intuito de produzir 9000 uniformes por mês, foram contratados mais 16 funcionários, que
têm a mesma eficiência dos outros, isto é, cada um produz a mesma quantidade de uniformes
por hora de trabalho.
Para produzir essa nova quantidade de uniformes, a equipe dos 36 funcionários deve trabalhar,
diariamente, no mínimo, o seguinte número de horas:',NULL,NULL,'["10", "9", "7", "6"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Matemática','Considere uma função de variável real definida por f(x) = 3 − 2 cos(x/2). O conjunto imagem dessa função é:',NULL,NULL,'["[2; 4]", "[1; 5]", "[−3; 3]", "[−2; 2]"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Matemática','Um semicírculo α de diâmetro AB contém um círculo β de diâmetro CD, conforme ilustra a figura.
Sabe-se que CD é a flecha do arco ACE, que AB e AE medem 20 cm e 16 cm, respectivamente,
e que a área do semicírculo α é igual a x.
O valor de x, tomando a área do círculo β como unidade, é igual a:',NULL,'/cbmerj-apoios/2025-q25-p14-figura.png','["10,0", "10,5", "12,0", "12,5"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Matemática','Considere o seguinte sistema de equações lineares, sendo k uma constante real.
x + ky − 2z = 1
x + y + z = 2
x − y − z = 3
Se esse sistema apresenta uma única solução, o conjunto de todos os valores reais que a constante
k pode assumir é:',NULL,NULL,'["{k ∈ IR / k < 2}", "{k ∈ IR / k ≠ 2}", "{k ∈ IR / k > − 2}", "{k ∈ IR / k ≠ − 2}"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Matemática','Na figura a seguir, está representado um tronco de pirâmide hexagonal regular de bases
paralelas, com aresta da base maior, aresta da base menor e altura, medindo, respectivamente,
4 cm, 2 cm e 9 cm.
2 cm
O volume desse tronco, em cm³, é igual a:',NULL,'/cbmerj-apoios/2025-q27-p14-figura.png','["118 √3", "126 √3", "136 √3", "148 √3"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Matemática','Uma criança entra em uma pista com seu skate pelo ponto D, segue uma trajetória parabólica e
sai da pista pelo ponto A, na direção da reta t, conforme ilustra o esquema.
y
t
D A
C B x
r
Considere as seguintes informações:
• no sistema de coordenadas cartesianas, x e y estão indicadas em metros;
• a equação da parábola é y = x²/32;
• a reta t é tangente à parábola no ponto A e paralela à reta r, cuja equação é x − 2y − 16 = 0.
A profundidade AB dessa pista, em metros, é igual a:',NULL,'/cbmerj-apoios/2025-q28-p15-figura.png','["1,6", "2,0", "3,0", "3,2"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Matemática','Em um jogo, as crianças A e B utilizam um dado cúbico não numerado, com 2 faces pretas e
4 vermelhas, como ilustra a imagem.
Quando o dado é lançado, cada face tem a mesma probabilidade de ficar virada para cima,
sendo essa a face sorteada. Observe as seguintes regras do jogo:
• se a face sorteada for preta, apenas A ganha 2 pontos;
• se a face sorteada for vermelha, apenas B ganha 1 ponto;
• vence o jogo a criança que primeiro somar exatamente 4 pontos.
A probabilidade de a criança B ganhar o jogo é:',NULL,'/cbmerj-apoios/2025-q29-p15-figura.png','["101/243", "107/243", "112/243", "118/243"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Matemática','Sabe-se que a multiplicação de (1 + 2 + 2² + 2³ + ... + 2ᵐ) por (1 + 3 + 3² + 3³ + ... + 3ⁿ) possui (m + 1)·(n + 1) termos da forma 2ᵃ·3ᵇ, sendo a, b, m e n números naturais. Cada termo desse produto é um divisor natural do número 2ᵐ·3ⁿ. A soma de todos os divisores naturais de 2304 é:',NULL,NULL,'["6643", "6373", "5953", "5593"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Biologia','Doenças de orelha e garganta são tratadas pela mesma especialidade médica, a otorrinolaringologia,
em função da origem desses órgãos a partir de estruturas comuns.
Tais estruturas são denominadas:',NULL,NULL,'["cristas neurais", "arcos faríngeos", "folhetos parietais", "fístulas ectodérmicas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Biologia','Em casos de dispepsia funcional, condição gastrointestinal que pode ser associada a fatores
emocionais, há liberação excessiva de ácido clorídrico pelo organismo. Dentre as alterações
fisiológicas provocadas por essa condição, estão dor ou sensação de queimação no estômago e
desconforto abdominal.
Essas alterações ocorrem devido ao estímulo direto do seguinte ramo do sistema nervoso:',NULL,NULL,'["central", "somático", "raquidiano", "parassimpático"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Biologia','A terapia com indutores químicos pode ser utilizada no tratamento das mutações sem sentido,
que alteram a sequência de um gene e geram um dos três diferentes códons de parada: UAG,
UGA ou UAA. As substâncias empregadas nesse tipo de terapia atuam nos ribossomos e evitam
a leitura desses códons de parada, permitindo a expressão total da proteína codificada.
Por essas características, conclui-se que os indutores químicos atuam durante o processo de:',NULL,NULL,'["tradução", "replicação", "duplicação", "transcrição"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Biologia','O feocromocitoma é um tumor originado pela proliferação anormal das células da medula das
glândulas adrenais.
Em fase avançada, em função da região da glândula afetada, um sintoma típico desse tumor é:',NULL,NULL,'["acúmulo de colesterol", "sudorese excessiva", "retenção de sódio", "respiração lenta"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Biologia','Ao ser inalado em situações de incêndio, o monóxido de carbono inibe a ação da enzima
citocromo c oxidase, encontrada na cadeia transportadora de elétrons.
Essa inibição ocorre no interior do seguinte componente celular:',NULL,NULL,'["núcleo", "citoplasma", "peroxissomo", "mitocôndria"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Biologia','Na síndrome da autocervejaria, o sistema digestório produz etanol, levando à intoxicação do
organismo. Para o tratamento, além do uso de medicamentos, indica-se reduzir a ingestão de
diversos tipos de nutrientes que favorecem essa disfunção.
Um desses nutrientes é:',NULL,NULL,'["gordura", "vitamina", "aminoácido", "carboidrato"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Biologia','O permafrost, nome dado ao solo permanentemente congelado com temperatura abaixo de
0 °C por dois anos ou mais, contém material orgânico que se decompõe lentamente. Em
função do aquecimento global, esse tipo de solo tem sofrido acentuado derretimento,
agravando o efeito estufa.
Isso se explica pois, no descongelamento do permafrost, libera-se o seguinte gás:',NULL,NULL,'["hélio", "ozônio", "metano", "nitrogênio"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Biologia','Amônia, ureia e ácido úrico são as principais excretas nitrogenadas liberadas pelos animais.
Sabe-se que a maior ou menor complexidade das moléculas excretadas leva a um maior ou
menor consumo de energia durante sua síntese.
O grupo de animais vertebrados que possui maior gasto energético na síntese de sua principal
excreta nitrogenada é:',NULL,NULL,'["aves", "peixes", "anfíbios", "mamíferos"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Biologia','Os batimentos cardíacos são controlados por correntes elétricas, iniciadas a partir do nódulo
sinusal, que percorrem todo o miocárdio.
No coração, essas correntes elétricas resultam, em um primeiro momento, no seguinte processo:',NULL,NULL,'["diástole atrial", "sístole ventricular", "despolarização atrial", "repolarização ventricular"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Biologia','Em queimaduras, parte das diferentes células que migram para os locais de lesão fabrica grande
quantidade de colágeno, elemento fundamental ao processo de cicatrização.
O tipo celular responsável por produzir colágeno é denominado:',NULL,NULL,'["adipócitos", "mastócitos", "fibroblastos", "neuroblastos"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Física','Admita que a tendência natural de movimento da ambulância seja a descida e que as forças de
contato, normal e paralela à superfície da ladeira, atuam sobre esse veículo.
O sentido da resultante das duas forças de contato pode ser representado pelo seguinte vetor:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-completo-0.png','["Vetor A, apresentado no apoio.", "Vetor B, apresentado no apoio.", "Vetor C, apresentado no apoio.", "Vetor D, apresentado no apoio."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Física','O comprimento de onda do som, em metros, emitido pela sirene da ambulância é de:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-apoio-comum.png','["0,2", "0,4", "0,6", "0,8"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Física','A intensidade da corrente elétrica, em ampères, que se estabelece em cada farol dianteiro do
veículo é igual a:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-apoio-comum.png','["1", "2", "3", "4"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Física','O módulo da aceleração média, em m/s², experimentada pelo bombeiro, em seu deslocamento
até alcançar o piso horizontal, é igual a:','Em uma operação de resgate realizada em uma represa, um bombeiro partiu do repouso e desceu por um
tubo vertical, percorrendo uma distância de 5,0 m. Ele atingiu o piso horizontal, com velocidade de 3,0 m/s,
e entrou na viatura que o transportou até o local do resgate. Ao chegar à represa, esse bombeiro mergulhou a
uma profundidade de 12,0 m. Para cálculos relacionados a esse contexto são admitidos os seguintes valores:
g = 10 m/s², μ(água) = 10³ kg/m³ e 1 atm = 10⁵ N/m².',NULL,'["0,7", "0,9", "1,3", "1,6"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Física','A pressão, em N/m², que atua no bombeiro, na profundidade indicada, corresponde a:','Em uma operação de resgate realizada em uma represa, um bombeiro partiu do repouso e desceu por um
tubo vertical, percorrendo uma distância de 5,0 m. Ele atingiu o piso horizontal, com velocidade de 3,0 m/s,
e entrou na viatura que o transportou até o local do resgate. Ao chegar à represa, esse bombeiro mergulhou a
uma profundidade de 12,0 m. Para cálculos relacionados a esse contexto são admitidos os seguintes valores:
g = 10 m/s², μ(água) = 10³ kg/m³ e 1 atm = 10⁵ N/m².',NULL,'["1,0 × 10⁵", "1,2 × 10⁵", "2,0 × 10⁵", "2,2 × 10⁵"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Física','Uma peça recuperada após um incêndio foi analisada por meio de uma lente convergente, capaz
de conjugar uma imagem de modo a ampliar em 15 vezes as dimensões do objeto posicionado
entre seu centro óptico e seu foco principal. Sabe-se que o perito que realizou a análise posicionou
a peça a 4,0 cm de distância do centro óptico da lente.
A distância focal da lente, em centímetros, é aproximadamente de:',NULL,NULL,'["4,3", "5,6", "6,8", "7,5"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Física','Para conter um incêndio no terraço de um prédio, inicialmente o canhão de água de um caminhão
dos bombeiros é mantido a uma inclinação constante. Sabe-se que a altura entre o ponto B de
saída da água e o solo é de 4,0 m e que a altura máxima que o jato de água atinge, representada
pelo ponto A, é de 26,0 m, como ilustra o esquema.
A
Considerando a resistência do ar nula e g = 10 m/s², a velocidade mínima da água, ao ser esguichada
pelo canhão, nessa situação, em m/s, é aproximadamente de:',NULL,'/cbmerj-apoios/2025-q47-p21-figura.png','["18", "21", "26", "30"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Física','Para resgatar uma vítima, dois bombeiros precisaram entrar pela janela de um apartamento. Para
isso, utilizaram o cesto da plataforma giratória do caminhão. Sabe-se que o centro do cesto está
localizado a 16,0 m do centro giratório e que essa plataforma tem inclinação de 30º em relação à
direção horizontal. Observe o esquema:
Admita que os dois bombeiros e o cesto formam um conjunto com massa de 0,3 tonelada e que
apenas a plataforma giratória homogênea tenha massa de 0,6 tonelada.
O torque resultante desse sistema, em N.m, é aproximadamente igual a:',NULL,'/cbmerj-apoios/2025-q48-p21-figura.png','["9,86 × 10⁴", "8,16 × 10⁴", "6,12 × 10⁴", "4,08 × 10⁴"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Física','Com o intuito de verificar a relação entre temperatura e período de um pêndulo de aço, foram
realizadas três simulações em um laboratório de termodinâmica. A cada simulação a
temperatura θ do ambiente foi modificada, sendo θ₁ = −10 °C, θ₂ = 20 °C e θ₃ = 50 °C. Nas simulações, apenas a temperatura foi alterada, mantendo-se constantes o comprimento inicial L do
pêndulo e o deslocamento em relação ao ponto de equilíbrio, como indica o esquema a seguir.
L
Após o equilíbrio térmico nas temperaturas θ₁, θ₂ e θ₃, foram medidos os respectivos períodos T₁, T₂ e T₃. A relação entre os períodos está descrita em:',NULL,'/cbmerj-apoios/2025-q49-p22-completo-0.png','["T₁ = T₂ = T₃", "T₁ > T₂ > T₃", "T₁ < T₂ < T₃", "T₁ > T₂ = T₃"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Física','Um caminhão dos bombeiros, com massa de 18 toneladas, se desloca inicialmente com velocidade
v₁ de módulo igual a 72 km/h. Após realizar uma curva, esse caminhão atinge a velocidade v₂ de módulo igual a 54 km/h. Observe a imagem no apoio:
Nessa situação, o módulo de variação da quantidade de movimento do caminhão, em kg.m/s, é:',NULL,'/cbmerj-apoios/2025-q50-p22-figura.png','["4,5 × 10⁵", "6,3 × 10⁵", "4,5 × 10¹⁰", "6,3 × 10¹⁰"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','Química','Estudos científicos recentes indicam a possibilidade de se sintetizar um novo elemento químico,
o átomo superpesado de número atômico 120. Sabe-se que, se o novo elemento for sintetizado,
provavelmente suas propriedades químicas serão semelhantes às de uma família da tabela de
classificação períodica atual.
Essa família é denominada:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["halogênios", "calcogênios", "metais alcalinos", "metais alcalinoterrosos"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','Química','O polímero chamado comercialmente de Nomex é um dos diversos materiais específicos
utilizados na fabricação de uniformes de bombeiros por garantir proteção térmica e resistência a
chamas. Sua fórmula estrutural está apresentada a seguir:
Com base na análise dessa estrutura química, o Nomex pertence à seguinte função orgânica:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q52-p23-completo-0.png"]','["amida", "amina", "cetona", "aldeído"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','Química','Para avaliar a fertilidade de um solo, podem ser utilizados indicadores de pH, substâncias que
mudam de cor em função da acidez ou da alcalinidade do meio em que são empregadas.
Considere um agricultor que utilizou um indicador de pH com a seguinte sequência de cores:
Sabe-se que no solo avaliado pelo agricultor, podem ser encontrados os sais Al₂(SO₄)₃, Na₂CO₃, KNO₃ e NaCl e que, o indicador de pH apontou coloração vermelha.
Com base nesse resultado, conclui-se que o solo avaliado apresenta o seguinte sal:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q53-p23-completo-0.png"]','["Al₂(SO₄)₃", "Na₂CO₃", "KNO₃", "NaCl"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','Química','Sabendo que a massa de dióxido de carbono no extintor A é de 4,4 kg, o número de átomos
presente nesse extintor é igual a:','De acordo com nota técnica do CBMERJ, os incêndios são divididos em cinco classes de fogo − A, B, C, D e
K −, existindo, também, diferentes tipos de agente extintor de fogo, como água, espuma mecânica, dióxido
de carbono, pós químicos e compostos halogenados. Com base nisso, considere um extintor A, contendo
somente dióxido de carbono, e um extintor B, de pó químico, cujo principal agente é o di-hidrogenossal,
formado na reação de neutralização parcial entre H₃PO₄ e NH₄OH.','/cbmerj-apoios/2025-tabela-periodica.png','["1,8 × 10²³", "6,0 × 10²⁵", "1,8 × 10²⁶", "6,0 × 10²⁸"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','Química','O sal presente no extintor B possui a seguinte fórmula química:','De acordo com nota técnica do CBMERJ, os incêndios são divididos em cinco classes de fogo − A, B, C, D e
K −, existindo, também, diferentes tipos de agente extintor de fogo, como água, espuma mecânica, dióxido
de carbono, pós químicos e compostos halogenados. Com base nisso, considere um extintor A, contendo
somente dióxido de carbono, e um extintor B, de pó químico, cujo principal agente é o di-hidrogenossal,
formado na reação de neutralização parcial entre H₃PO₄ e NH₄OH.','/cbmerj-apoios/2025-tabela-periodica.png','["(NH₄)₂H₂PO₄", "(NH₄)₂HPO₄", "NH₄HPO₄", "NH₄H₂PO₄"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','Química','Em indústrias petroquímicas, o processo de craqueamento do petróleo consiste na quebra de
moléculas pesadas de hidrocarbonetos em moléculas leves e mais úteis, como alcenos e alcanos.
Observe um exemplo de reação química de craqueamento:
C₁₂H₂₆ → C₈H₁₈ + C₄H₈
Nessa reação, o produto de menor massa molar possui a seguinte quantidade total de isômeros
acíclicos:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["5", "4", "3", "2"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','Química','Na passagem de 2023 para 2024, em Balneário Camboriú (SC), quatro jovens no interior
de um automóvel foram vítimas de intoxicação por inalação de monóxido de carbono. Esse
gás, ao ser inalado, liga-se à hemoglobina presente nas hemácias, dificultando o transporte
de oxigênio no organismo. A Organização Mundial da Saúde (OMS) estabelece que o limite
máximo permitido de exposição ao CO é de 30 mg/L.
Adaptado de g1.globo.com, 07/01/2024.
Com base no estabelecido pela OMS, a concentração máxima permitida de CO, em mol/L, é
aproximadamente igual a:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["1,07 × 10⁻⁶", "2,14 × 10⁻⁶", "1,07 × 10⁻³", "2,14 × 10⁻³"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','Química','Considere a reação de equilíbrio 2 SO₂(g) + O₂(g) ⇌ 2 SO₃(g) e os valores de Kc, determinados em função das concentrações molares, nas duas temperaturas apresentadas na tabela de apoio. A variação de entalpia durante a síntese de SO₃ é representada pelo seguinte gráfico:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q58-p25-completo-0.png", "/cbmerj-apoios/2025-q58-p25-completo-1.png"]','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Química','As fórmulas estruturais a seguir correspondem a quatro compostos orgânicos inflamáveis,
identificados em um estudo.
A análise química de um desses compostos indicou que ele é reduzido em presença de H₂ e sofre
oxidação em presença de KMnO₄.
O composto analisado corresponde à fórmula estrutural representada em:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q59-p26-completo-0.png"]','["I", "II", "III", "IV"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Química','Em um acidente com um tanque industrial, houve combustão completa de 200 L de hexano,
hidrocarboneto empregado como solvente. Sabe-se que a densidade dessa substância é de
655 g/L.
Nessa combustão, o volume de gás oxigênio consumido nas CNTP, em litros, corresponde
aproximadamente a:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["3,4 × 10⁴", "4,9 × 10⁴", "3,2 × 10⁵", "4,7 × 10⁵"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Geografia','Observe a imagem a seguir, em que o planeta está dividido em oito regiões, cada uma com um
bilhão de habitantes:
reddit.com
Com base na regionalização proposta, a maior população absoluta encontra-se no seguinte
continente:',NULL,'/cbmerj-apoios/2025-q61-p27-figura.png','["Ásia", "África", "Europa", "América"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Geografia','COMPOSIÇÃO DA MATRIZ ENERGÉTICA NO MUNDO E NO BRASIL EM 1979 E EM 2019
No período analisado, a diferença dos percentuais da composição da matriz energética
brasileira, em relação às médias mundiais, é explicada pelo seguinte fator:',NULL,'/cbmerj-apoios/2025-q62-p27-completo-0.png','["utilização majoritária das usinas hidrelétricas", "conscientização ambiental dos governos locais", "priorização do transporte ferroviário para longas distâncias", "ampliação de investimento estrangeiro para instalações termelétricas"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Geografia','DENSIDADE DEMOGRÁFICA NA COREIA DO SUL (2022)
Habitantes por km²
reddit.com
Com base na variação territorial da densidade demográfica, identifica-se a seguinte característica
socioespacial na Coreia do Sul:',NULL,'/cbmerj-apoios/2025-q63-p28-figura.png','["hipertrofia na rede industrial", "superpovoamento na área rural", "macrocefalia na hierarquia urbana", "conflituosidade na fronteira política"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Geografia','De acordo com a análise do mapa, os números I e II da legenda correspondem, respectivamente,
aos seguintes tipos de agricultura:','SUPERFÍCIE OCUPADA POR TIPOS DE AGRICULTURA EM CADA ESTADO (2017)
Fonte: Censo Agropecuário, IBGE, 2017.','/cbmerj-apoios/2025-q64-p29-figura.png','["extensiva e intensiva", "familiar e não familiar", "moderna e tradicional", "comercial e de subsistência"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Geografia','Na tabela a seguir, estão apresentados dados comparativos entre modais de transporte.
Considerando os aspectos econômicos e ambientais, o modal mais adequado para o transporte
de grandes volumes de produtos agrícolas em longas distâncias é:',NULL,'/cbmerj-apoios/2025-q65-p30-completo-0.png','["aéreo", "ferroviário", "rodoviário", "hidroviário"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Geografia','TAYLOR JONES
ocregister.com
O conflito geopolítico representado na charge envolve dois povos do Oriente Médio e atinge,
direta ou indiretamente, várias nações do mundo, desde o fim da Segunda Guerra Mundial.
A origem histórica desse conflito se refere a disputas cuja principal motivação é de ordem:',NULL,'/cbmerj-apoios/2025-q66-p30-figura.png','["cultural", "territorial", "ecológica", "econômica"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Geografia','Com base na leitura do texto e na análise do gráfico, uma explicação para a ascensão da
fabricante de veículos elétricos destacada é a adoção da seguinte estratégia empresarial:','A empresa chinesa BYD ultrapassou a norte-americana Tesla como líder mundial em vendas
de veículos elétricos no final de 2023, coroando sua ascensão extraordinária.
Com sede na megacidade de Shenzhen, a BYD foi fundada em 1995 e é a maior fabricante de
veículos elétricos da China, exportando táxis elétricos, ônibus e outros veículos para o resto
do mundo, especialmente para a Europa, América do Sul, Sudeste Asiático e Oriente Médio.
Adaptado de cnnbrasil.com.br, 03/01/2024.
CAUÊ LIRA
Adaptado de Revista Autoesporte, outubro/2023.','/cbmerj-apoios/2025-q67-p31-completo-0.png','["verticalização da produção", "terceirização da montagem", "padronização do produto", "ampliação do estoque"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Geografia','Analisando a imagem, identifica-se o bioma brasileiro mais afetado pelo fenômeno retratado,
que é provocado, predominantemente, pela ação humana.
Uma característica natural que favorece a maior incidência do fenômeno nesse bioma é:','ÁREAS AFETADAS POR QUEIMADAS ENTRE 1985 E 2023
áreas afetadas por queimadas
Adaptado de plataforma.brasil.mapbiomas.org.','/cbmerj-apoios/2025-q68-p32-figura.png','["exiguidade dos rios", "diversidade da flora", "velocidade dos ventos", "sazonalidade da pluviosidade"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Geografia','Em 2019, o Instituto Brasileiro de Geografia e Estatística (IBGE) apresentou um estudo com os
níveis de risco de ocorrência de deslizamentos de terra nos estados brasileiros. No gráfico, são
reproduzidos dados de um recorte territorial desse estudo, abrangendo nove estados e o
Distrito Federal.
Considerando as características físico-naturais desse recorte, o fator com maior peso para
determinar o nível de risco nessa classificação é:','ÁREA TERRITORIAL SOB RISCO DE DESLIZAMENTOS (EM %)
Fonte: Suscetibilidade e deslizamentos do Brasil, IBGE, 2019.','/cbmerj-apoios/2025-q69-p33-completo-0.png','["solo", "clima", "relevo", "vegetação"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Geografia','No mapa-múndi acima, o planeta está representado com a real proporção de área dos continentes.
Para esse tipo de representação, é necessário o uso de projeção cartográfica com a seguinte
propriedade:','REPRESENTAÇÃO DOS CONTINENTES EM PROPORÇÃO REAL DE ÁREA
Adaptado de reddit.com','/cbmerj-apoios/2025-q70-p34-figura.png','["afilática", "conforme", "equivalente", "equidistante"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','História','As imagens acima reproduzem obras que compõem o conjunto de pinturas elaboradas por
Albert van der Eckhout durante sua permanência nas terras do Brasil, no século XVII.
Tais pinturas, representativas do olhar europeu sobre o "Novo Mundo", indicam a valorização
dos seguintes aspectos:','PINTURAS DE ALBERT ECKHOUT (1641)
MUSEU NACIONAL DA DINAMARCA (COPENHAGUE)
Índia Tarairiu (Tapuia) Mulher Africana Mulher Mameluca
O pintor e desenhista holandês Albert van der Eckhout (1610-1666) foi autor de um conjunto
de obras que registram a fauna, a flora e os tipos humanos, no Brasil da época. Indicado
ao conde Maurício de Nassau (1604-1679), integrou a comitiva de artistas e cientistas
responsáveis por documentar o Novo Mundo, durante a permanência do governo holandês
em Pernambuco, entre 1637 e 1644.
Adaptado de enciclopedia.itaucultural.org.br.','/cbmerj-apoios/2025-q71-p35-figura.png','["exotismo e etnicidade", "iberismo e cordialidade", "naturalismo e autenticidade", "americanismo e feminilidade"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','História','A criação de monumentos é uma forma pela qual diferentes sociedades valorizam seu passado.
O perfil predominante dos monumentos na cidade do Rio de Janeiro, apresentado na
reportagem, é explicado por características herdadas do passado colonial brasileiro. Por sua
vez, a medida adotada pela França, em 2024, possui um objetivo bastante específico.
Essa característica e esse objetivo são, respectivamente:','RIO TEM CERCA DE 1350 MONUMENTOS, MAS SOMENTE
15 SÃO ESTÁTUAS OU BUSTOS DE MULHERES
Dos 1350 monumentos que existem na cidade do Rio de Janeiro, apenas 15 são estátuas ou
bustos de mulheres. A prefeitura não tem o número exato de estátuas de homens, e entre
os monumentos estão contabilizados chafarizes e relógios, por exemplo. Duas das estátuas
femininas foram inauguradas em 2016, ano das Olimpíadas no Rio: a da escritora Clarice
Lispector e a da primeira bailarina negra do Theatro Municipal, Mercedes Baptista. Já na
abertura dos Jogos Olímpicos de Paris, em 2024, foram erguidas às margens do rio Sena dez
estátuas de mulheres francesas, ao som de uma versão do hino nacional reproduzido por um
coro de mulheres. As esculturas, todas douradas, serão permanentes. Segundo a organização
do evento, as homenageadas deixaram importante legado para o país e avançaram na
conquista dos direitos das mulheres.
Adaptado de folha.uol.com.br, 09/08/2024.',NULL,'["mandonismo − garantir ação afirmativa", "machismo − atenuar perspectiva étnica", "paternalismo − implementar reparação racial", "patriarcalismo − promover reconhecimento histórico"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','História','Embasado no raciocínio acima, o juiz da Suprema Corte dos E.U.A, Oliver Wendell Holmes, Jr.,
argumentou, em 1919, que a liberdade de expressão depende das circunstâncias para sua prática.
O movimento que inspirou a defesa desse direito no mundo contemporâneo e uma prática que
ameaçou esse mesmo direito no Brasil no século XX estão associados, respectivamente, em:','O caráter de cada ato depende das circunstâncias sob as quais ele é praticado. A proteção
mais estrita da liberdade de expressão não protege um homem que falsamente grita fogo
num teatro e causa pânico. Ela [a proteção mais estrita da liberdade de expressão] sequer
protege um homem de uma injunção contra palavras belicosas que possam ter todo o efeito
de força. A questão, em todos os casos, é se as palavras utilizadas são empregadas sob essas
circunstâncias e se são de tal natureza para criar um perigo claro e imediato.
OLIVER WENDELL HOLMES, JR. (1841-1935)
Adaptado de ROTUNDA, R. O direito de dissidência e a dívida dos Estados Unidos com Heródoto e Tucídides.
Revista de Estudos Institucionais, v. 1, n. 1, 2015.',NULL,'["Iluminismo e censura oficial no Estado Novo", "Renascimento e mídias sociais na Nova República", "Cientificismo e propagandas personalistas no Regime Militar", "Protestantismo e publicidade estatal na Experiência Democrática"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','História','A criação de órgão específico para o combate a incêndios na cidade do Rio de Janeiro, em
meados do século XIX, se inseriu em um contexto de mudanças significativas para a então
capital do Império do Brasil.
Tais mudanças se relacionaram ao objetivo de promover práticas de:','Esse 10 de espadas compõe um baralho elaborado nas
comemorações do Centenário da Independência do
Brasil. Na carta se vê o prédio sede do agora Corpo
de Bombeiros Militar do Estado do Rio de Janeiro
(CBMERJ). A corporação foi criada como Corpo
Provisório de Bombeiros da Corte, em 1856, pelo
Imperador D. Pedro II. É o mais antigo da América
Latina. Deixou de ser provisório em 1860 e, em 1880,
passou a ter organização militar. Antes dela, os sinos
da igreja de São Francisco de Paula e tiros que partiam
do Morro do Castelo anunciavam e localizavam os
incêndios na cidade. O prédio, edificado em 1908,
situado na Praça da República, abriga a sede do
Quartel e o Museu Histórico do CBMERJ.
Adaptado de bndigital.bn.gov.br.','/cbmerj-apoios/2025-q74-p37-figura.png','["erradicação de condições insalubres nas áreas periféricas", "priorização de medidas preventivas nos planejamentos públicos", "implementação de melhoramentos materiais nos serviços urbanos", "consolidação de processos industrializantes nas políticas governamentais"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','História','A sinopse do livro O último dia do mundo, que aborda o terremoto ocorrido em Lisboa em 1755,
menciona questionamentos, suscitados pelo desastre, acerca do lugar que Deus ocupa nas
relações humanas.
No contexto do terremoto, tais questionamentos fomentaram maior difusão de princípios
advindos de:','O primeiro abalo atingiu Lisboa na manhã do
dia 1º de novembro de 1755. Minutos depois,
outro ainda mais forte arrasou a cidade, seguido
por um terceiro. Lisboa, uma das capitais mais
imponentes da Europa, foi destruída em menos de
15 minutos. Então, um tsunâmi, arrastou milhares
de pessoas e um vento implacável espalhou os
focos de incêndio provocados pelos tremores. O
terremoto em Portugal, na capital mais católica
do continente, abalou as certezas intelectuais e
religiosas que na época dominavam a Europa. Até
1755, as aflições que a natureza impunha sobre
a humanidade eram consideradas obra de um
Deus furioso. Após a catástrofe, o lugar de Deus
nas relações humanas começou a ser questionado.
Voltaire, Pope, Kant e Rousseau, entre outras
figuras eminentes, fizeram do acontecimento um
veículo para expressar seus questionamentos. O
jornalista Nicholas Shrady revela, em O último dia
do mundo, que essa reação ao desastre natural é o
que ainda hoje provoca grande fascínio.
Adaptado de amazon.com.br.','/cbmerj-apoios/2025-q75-p38-completo-0.png','["ideias ilustradas", "filosofias ateístas", "práticas monásticas", "cosmologias teocêntricas"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','História','A Segunda Guerra Mundial (1939-1945) tornou-se um dos acontecimentos mais marcantes da
história do século XX. No trecho da reportagem, são apresentados alguns de seus impactos para
as sociedades africanas, como demonstra o testemunho de Albert Kuniuku.
Naquelas sociedades, o recrutamento forçado de trabalhadores foi promovido em função do
seguinte contexto:','ÁFRICA NA SEGUNDA GUERRA MUNDIAL:
UM CAPÍTULO ESQUECIDO
A partir de 3 de setembro de 1939, quando a Grã-Bretanha e a França declararam guerra à
Alemanha, os Aliados recrutaram na África cerca de meio milhão de soldados e operários.
Soldados de toda a África subsaariana e do norte do continente tiveram de lutar contra as
tropas alemãs e italianas no norte da África e na Europa durante a guerra. Mais tarde também
combateram contra os japoneses na Ásia e no Pacífico.
Nos noticiários na Europa falava-se em “voluntários”. Mas o antigo soldado congolês Albert
Kuniuku, de 93 anos, tem outra versão: “Foi um verdadeiro recrutamento forçado. Eu
trabalhava numa empresa têxtil quando nos foram buscar. Todos os jovens trabalhadores
foram recrutados. Nenhum deles tinha mais de 30 anos.”
Albert Kuniuku é presidente da União dos Veteranos Congoleses (UNACO) em Kinshasa, a
capital da República Democrática do Congo. Até 1960, o país foi governado pela Bélgica. O
veterano é um dos últimos sobreviventes de uma unidade expedicionária que lutou contra
os japoneses na Índia e no Mianmar (antiga Birmânia), entre 1940 e 1946, sob comando
britânico e belga, longe dos campos de batalha da Europa.
Adaptado de dw.com, 08/05/2020.',NULL,'["dimensão de conflito global", "resistência de populações nativas", "aniquilação de tropas mercenárias", "permanência de dominação imperialista"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','História','O surgimento do movimento citado representou uma crítica direta à seguinte ideologia defendida
pelo regime vigente à época:','Em abril de 1978, um jovem negro foi acusado pelo roubo de frutas de um feirante. Robson
Silveira da Luz, de 21 anos, casado e pai de família, foi barbaramente torturado pela polícia
nas dependências do 44º Distrito de Guaianases, na zona leste de São Paulo, e acabou morto.
Naquele mesmo ano, quatro garotos negros, atletas da equipe juvenil de vôlei do Clube de
Regatas Tietê, foram barrados no clube. Ao reclamar do acontecido, o técnico teria ouvido de
um dos diretores: “Se deixar um negro entrar na piscina, cem brancos saem.”
Ainda em 1978, em resposta a esses episódios, surgiu o Movimento Negro Unificado
(MNU). O uso da palavra “Negro” foi sugestão do histórico ativista negro Abdias do
Nascimento (1914-2011), para que ficasse claro quem eram os protagonistas da luta contra
a discriminação.
Adaptado de bbc.com, 27/11/2022.','/cbmerj-apoios/2025-q77-p40-completo-0.png','["livre iniciativa", "democracia racial", "igualdade jurídica", "meritocracia social"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','História','A extensão e o tipo de áreas mais atingidas pelos incêndios florestais no primeiro semestre de
2024 estão relacionados ao modelo que marca a ocupação e a exploração do território brasileiro
desde a colonização.
Esse modelo se caracteriza principalmente por:','95% DO FOGO NO PANTANAL TÊM ORIGEM
EM PROPRIEDADES PRIVADAS
A maior parte do fogo que queima o pantanal teve origem em propriedades privadas, e quase
não há indícios de que tenha começado por causas naturais, como raios. Isso é o que apontam
monitoramentos via satélites do bioma, feitos por diferentes instituições.
Para pesquisadores, a ação humana é o principal vetor dessas queimadas, que podem se
transformar em uma das maiores crises já vistas no Pantanal. Quase 95% dos 3372 focos
de incêndio no primeiro semestre de 2024 − número que é recorde para o período − ficam
em áreas privadas, segundo o programa BDQueimadas, do Instituto Nacional de Pesquisa
Espacial (Inpe).
Adaptado de folha.uol.com.br, 26/06/2024.
ÁREA ATINGIDA PELO FOGO NO PRIMEIRO SEMESTRE DE 2024
(em hectares)
532900
42775 52325
Terras Unidades de Áreas
indígenas conservação privadas
Fonte: Lasa/UFRJ.','/cbmerj-apoios/2025-q78-p41-figura.png','["agricultura familiar", "trabalho compulsório", "concentração fundiária", "modernização tecnológica"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','História','Ações como a registrada na notícia integram iniciativas que visam a lidar com as heranças de
governos ditatoriais, que marcaram a história recente de países latino-americanos.
Ao relacionar história e memória, o mencionado museu representa uma atitude de:','ARQUITETURA É DESTAQUE NO MUSEU DA MEMÓRIA
E DOS DIREITOS HUMANOS NO CHILE
Vinte anos após o fim da ditadura chilena, organizações que lutam pelos direitos humanos
no país demonstraram que o Chile estava pronto para enfrentar o passado: foi inaugurado,
em Santiago, capital do país, em 2010, o Museo de La Memoria y Los Derechos Humanos, cuja
missão é dar visibilidade aos crimes contra direitos humanos cometidos pelo governo do
Chile entre os anos de 1973 e 1990.
O museu é uma referência para os chilenos, principalmente pesquisadores, uma vez que é
composto de um Centro de Documentação e de uma Biblioteca. Além disso, vem se tornando
um ponto obrigatório para turistas. Na época da inauguração, a então presidenta Michelle
Bachelet, ela própria detida e torturada durante a ditadura, considerou que o museu é “um
símbolo poderoso do vigor do Chile unido (…) na promessa de não voltar a conhecer uma
tragédia como esta”. E adiantou: “Não podemos mudar o passado, mas sim aprender com o
que foi vivido”.
BRUNO LEAL
Adaptado de cafehistoria.com.br.','/cbmerj-apoios/2025-q79-p42-figura.png','["reparação integral dos danos políticos", "reconhecimento crítico da violência estatal", "interrupção preventiva do projeto autoritário", "estabelecimento contínuo das práticas democráticas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','História','Na charge, dois aspectos que caracterizam o mundo do trabalho na contemporaneidade estão
relacionados de forma irônica.
Esses aspectos são:','TONI D’AGOSTINHO
Disponível em acaricatura.com.br.','/cbmerj-apoios/2025-q80-p43-completo-0.png','["exploração fiscal e mobilidade social", "emprego formal e liberdade empresarial", "propriedade comercial e ambição individual", "discurso motivacional e precarização laboral"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2025-cfo-espanhol');

insert into public.exams(slug,title,source,year) values ('cbmerj-2025-cfo-ingles','CBMERJ 2025 · Curso de Formação de Oficiais · Inglês','cbmerj','2025') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','O título do texto enfatiza o papel do comandante do resgate, enquanto o seu relato aponta de
modo recorrente para o papel da equipe de bombeiros.
Um trecho que comprova essa afirmativa é:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, (l. 15)", "Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade. (l. 29)", "A gente teve que colocar um cobertor por baixo dela, com muito cuidado, (l. 30)", "esse não é o meio mais adequado para fazer o transporte de uma vítima com essa necessidade. (l. 36-37)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','No telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela,
que está acamada e inconsciente dentro da casa tomada pela água. (l. 2-4)
Na frase, o destaque à “voz” da filha constitui a seguinte figura de linguagem:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["eufemismo", "metonímia", "hipérbole", "paradoxo"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','Rudinei, cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da
tragédia das inundações. (l. 9-10)
No período acima, a oração sublinhada apresenta um dos conteúdos selecionados para compor
a notícia.
A classificação dessa oração e uma justificativa para sua inserção na notícia estão apresentadas em:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["coordenada aditiva − acrescenta informação associada à comoção do leitor", "coordenada conclusiva − revela motivação subjacente à tomada das decisões", "subordinada adverbial consecutiva − indica desfecho comum aos desastres naturais", "subordinada adjetiva explicativa − especifica contexto adverso aos sujeitos envolvidos"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','(1) Colocamos ela em cima do colchão novamente (l. 31)
(2) Nós a colocamos em cima do colchão novamente.
A diferença observada entre os enunciados acima exemplifica o fenômeno da variação linguística.
Uma explicação para tal variação relaciona-se com graus de:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["intertextualidade", "figuratividade", "formalidade", "subjetividade"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','pois tudo estava completamente escuro, e as águas turbulentas. (l. 38-39)
No trecho acima, o verbo de ligação entre o sujeito “as águas” e o predicativo “turbulentas” é
omitido, recurso que confere agilidade à fala.
Esse recurso é conhecido como:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.',NULL,'["elipse", "alusão", "anáfora", "estilização"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','A tese central apresentada no texto do escritor angolano é defendida, principalmente, a partir
do seguinte procedimento argumentativo:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["analogia", "causalidade", "generalização", "exemplificação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','abrindo-nos às opiniões alheias, e repensando as próprias, certamente seríamos melhores
pessoas. (l. 6-7)
De acordo com o trecho, a opinião de uma pessoa, para ser de fato própria, deve ser objeto da
seguinte atitude:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["atenção seletiva", "apreciação objetiva", "refutação insistente", "reformulação permanente"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Na crônica, o autor lança mão do recurso de simular uma conversa.
Essa simulação está evidenciada em:','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["É um exercício de alteridade que, sendo praticado de forma regular, desenvolve os músculos da empatia. (l. 4-5)", "Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. (l. 17)", "A literatura, reconheço, tem algumas vantagens relativamente à vida. (l. 28)", "Em vez de espetarmos agulhas num boneco de pano, torturamos um personagem, (l. 31-32)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','o meu desafeto sentiu-se lisonjeado, agradeceu imenso, (l. 34)
A palavra “imenso”, tal como empregada no trecho, tem a mesma classificação do vocábulo
sublinhado em:
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.','TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["talvez nos irritássemos ⟦menos⟧ com os outros. (l. 6)", "uma vida sem uma ⟦certa⟧ dose de espanto, (l. 15)", "Infelizmente, pessoas assim vivem ⟦pouco⟧ tempo. (l. 26)", "a possibilidade de assassinar, de ⟦muitas⟧ maneiras terríveis, (l. 29)"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','O texto 1 compõe um gênero jornalístico e o texto 2 é uma crônica literária.
Apesar de serem gêneros textuais diferentes, em seus propósitos e circulação na sociedade, um
aspecto da linguagem que os aproxima é:','TEXTO 1
“BOMBEIRO HERÓI”
O relógio marcava 18h30min e a escuridão era total na cidade completamente alagada de Eldorado do
Sul, no Rio Grande do Sul. Por conta das enchentes, toda a distribuição de energia foi interrompida. No
telefone, a voz desesperada da filha pede para que os bombeiros resgatem a mãe dela, que está acamada
e inconsciente dentro da casa tomada pela água. Cada minuto era crucial porque o nível da água subia
5 constantemente e deixava a situação ainda mais dramática.
A filha não estava no mesmo imóvel, mas acionou o resgate após ouvir da cuidadora da mãe que a água na
rua já estava na altura da cintura. Assim que recebeu o chamado, Rudinei Silva dos Santos, comandante
dos bombeiros voluntários de Eldorado do Sul, apanhou uma lanterna, vestiu uma roupa de mergulho
e partiu com um barco a remo com sua equipe para o resgate que durou cerca de duas horas. Rudinei,
¹⁰ cuja casa também ficou debaixo d’água, relatou o que passou nesse episódio da tragédia das inundações.
“(...) Quando a gente recebe um chamado, a gente já vai imaginando todas as situações com que a gente
pode se deparar, qual é o tipo de equipamento que a gente pode levar, quais as pessoas de que a gente
necessita. De quantos bombeiros a gente vai precisar no local, se a embarcação consegue chegar e se
vamos precisar de uma viatura leve ou pesada.
¹⁵ Na triagem via telefone com a filha dessa pessoa, que estava em outra cidade, vimos que ela não sabia
exatamente como estava a situação, o que é mais uma questão que a gente tem que levar em consideração.
Porque a informação que ela está nos passando por telefone não é de quem está no local, então isso pode
ser uma coisa boa ou pode ser uma surpresa que talvez faça com que a gente perca um pouco de tempo,
pois a gente não sabe exatamente qual a magnitude e grandeza desse atendimento.
²⁰ Mas como a pessoa nos relatou que a mãe dela, no caso, era uma pessoa de idade em estado terminal,
sem movimentos e dependente de uma cuidadora que também já tinha certa idade, ela não conseguiria
ir para um local mais seguro sozinha. Nessas condições, fomos até o local. (...)
Fomos remando até a casa. Nos identificamos como bombeiros e entrei primeiro para verificar a situação.
A gente faz uma análise de toda a cinemática e aí retornamos para a equipe. Como a gente verificou
²⁵ que seria possível passar o colchão pela porta onde ela estava, entramos e deixamos o barco ancorado
próximo à entrada da casa. Quando chegamos ao local, a altura da água já estava encostando no colchão
e ele já estava flutuando um pouco. (...)
A vítima era uma senhora, que tinha em torno de 70 anos e se alimentava por sonda, além de não se
movimentar. Pelo tempo acamada, tinha os membros muito enrijecidos, o que não facilitava a mobilidade.
³⁰ A gente teve que colocar um cobertor por baixo dela, com muito cuidado, vários bombeiros que estavam
submersos a suspenderam. Colocamos ela em cima do colchão novamente e fomos puxando o colchão
sobre a água, cuidando para que ele não afundasse.
O desafio seguinte foi passar pela porta porque ela era bem estreita. Então apertamos um pouco a lateral
do colchão para que ele dobrasse levemente e pudesse passar. Com todo o cuidado, a gente fez esse
³⁵ movimento de lateralização sempre com cuidado com o tubo de oxigênio dela. Levá-la de barco até o
hospital também foi um desafio, um desafio colocá-la em cima do barco. Sem dizer que esse não é o meio
mais adequado para fazer o transporte de uma vítima com essa necessidade. Fizemos o caminho até a
ambulância, que nos aguardava numa área seca, com muito cuidado, pois tudo estava completamente
escuro, e as águas turbulentas.
⁴⁰ (...) Foi perigoso e bem complexo. Demandou bastante trabalho da equipe. Foram cinco bombeiros
envolvidos, além da equipe da ambulância. (...) Sem dúvida, as enchentes foram a maior ocorrência que
a gente já enfrentou. (...)”
FELIPE SOUZA e FERNANDO OTTO
Adaptado de bbc.com, 16/05/2024.

TEXTO 2
COMO SE A VIDA FOSSE LITERATURA
A nossa vida poderia ser melhor, se olhássemos para ela como um escritor olha para um romance
em construção.
Quando um escritor inicia um romance, esforça-se por encarar o mundo − aquele mundo que ali se
começa a desenhar − através dos olhos de diferentes personagens. É um exercício de alteridade que,
5 sendo praticado de forma regular, desenvolve os músculos da empatia. Imagino que se fizéssemos isto no
nosso dia a dia talvez nos irritássemos menos com os outros. Ao mesmo tempo, abrindo-nos às opiniões
alheias, e repensando as próprias, certamente seríamos melhores pessoas.
Além disso, um escritor não julga os seus personagens. O escritor tenta compreendê-los. Também esta
regra, aplicada à vida verdadeira − admitindo que a literatura é uma vida menos verdadeira −, traria
10 benefícios para todos.
Aqueles escritores que se guiam pela intuição sabem que não se pode forçar um personagem a seguir por
um determinado caminho; melhor deixá-lo escolher seu próprio destino, e depois tentar acompanhá-lo.
Também na vida, convém aceitar que o livre-arbítrio tem limites. Por vezes, somos empurrados para
atalhos imprevistos − e isso pode ser ótimo. A surpresa é o sal da vida. Sim, eu sei que surpresa a mais
15 pode provocar hipertensão, parada cardíaca e até AVC. Mas uma vida sem uma certa dose de espanto,
convenhamos, não só não tem gosto nenhum como se traduz em cansaço, tédio e confusão mental.
Os escritores esforçam-se, ao longo dos anos, por criar um estilo único. Se tiverem sorte conseguem
isso a partir do momento em que deixam de se esforçar, perdem o receio de repetir modelos e passam
simplesmente a fruir a escrita. Na vida real também só alcançamos uma identidade própria depois que
20 deixamos de nos preocupar com aquilo que os outros pensam.
Na literatura, aprendemos cedo a cortar adjetivos. Aliás, passamos mais tempo a cortar do que a escrever.
A hiperadjetivação é uma doença infantil do escritor. Na vida, aprender a prescindir, tanto de bens quanto
de ornamentos, e a valorizar o essencial é meio caminho andado para a felicidade. Ou, se não para a
felicidade, ao menos para a elegância.
25 Escrever exige paixão. Viver também. Escrever implica disciplina. Viver também. Claro que é possível
viver com paixão, e sem disciplina. Infelizmente, pessoas assim vivem pouco tempo. E é possível viver
com disciplina, e sem paixão − mas não vale a pena.
A literatura, reconheço, tem algumas vantagens relativamente à vida. Por exemplo, ao escritor resta
sempre a possibilidade de assassinar, de muitas maneiras terríveis, um personagem desagradável ou
30 irritante, sem jamais ser incomodado pela polícia. Um romancista pode até inspirar-se num inimigo da
vida real e colocá-lo nas páginas de um livro. Vejo isto como uma espécie de vodu literário. Em vez de
espetarmos agulhas num boneco de pano, torturamos um personagem, esperando que, por magia, a dor
fictícia se transmita ao sujeito que o inspirou. Nem sempre tem resultado. Tentei a experiência uma única
vez. Surpreendentemente, o meu desafeto sentiu-se lisonjeado, agradeceu imenso, e a partir dali ficamos
bons amigos.
JOSÉ EDUARDO AGUALUSA
Adaptado de oglobo.globo.com, 16/12/2023.',NULL,'["construção de personagens fictícios", "presença de sequências narrativas", "precisão de marcos cronológicos", "descrição de cenas detalhadas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Inglês','The article argues that women are redefining their roles in a male-dominated field.
To achieve such purpose, the following textual strategy is used:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["sensational reports", "historical narratives", "personal anecdotes", "chronological accounts"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Inglês','Beauty can have brains and brawn; brains and brawn can be beautiful. (l. 5-6)
By stating the above, the author intends to question a certain view of beauty in relation to
intelligence and physical strength.
This view is based on the notion of:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["deviation", "exclusion", "adaptivity", "superiority"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Inglês','Take that, society. (l. 6)
The choice of the underlined expression suggests the following attitude towards society’s
expectations:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["mockery", "authority", "accusation", "intimidation"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Inglês','Sharon Disher uses the word surreal (l. 10) to express her opinion on Yvette Davids’ promotion
ceremony.
This lexical choice characterizes the ceremony as:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["amazing", "awkward", "offensive", "entertaining"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Inglês','A ship in port is safe, but that’s not what ships are built for (l. 17)
According to the author of the article, the quote above emphasizes that, in order to lead, women
should be prepared to respond to the following challenge:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["assess risk", "assume power", "exercise caution", "face objections"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Inglês','The reaction we got − a sort of resentment, hatred, otherness, all of that − was
unexpected. (l. 23-24)
The underlined word implies that the reason women were harassed in the academy is:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["playing the weak part", "being the opposite sex", "performing a supportive role", "revealing a sentimental identity"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Inglês','They told Hanley Disher − when she reached out to them for reunions or events − that
they can’t. (l. 34-35)
The underlined pronoun refers to women that are:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["bullied in the ranks", "commanders in the Navy", "graduates in the academy", "contacted in the ceremonies"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Inglês','The report in the last paragraph describes when a woman harasser apologized to Hanley Disher
and to other women.
Regarding the context, women in the military might experience this apology as:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["regret", "melancholy", "opportunity", "reconciliation"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Inglês','In relation to readers, the recounts shared throughout the text are intended to:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["build logical basis", "reinforce male bias", "establish female legacy", "provide emotional bond"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Inglês','The tone of the article is best described as:','2024 USHERED IN TWO FIRSTS FOR MILITARY WOMEN.
WE’RE ALL CELEBRATING.
American women kicked off 2024 with two milestones that flipped the script on the way society keeps
judging, classifying and relating to us. The first happened in Annapolis, Maryland, where Vice Admiral
Yvette Davids − a mother of twin boys with an Audrey Hepburn vibe − became the first woman to
lead the 178-year-old U.S. Naval Academy. Then, Air Force 2nd Lieutenant Madison Marsh became the
5 newest Miss America, the first-active duty military officer to win the pageant. Beauty can have brains and
brawn; brains and brawn can be beautiful. Take that, society.
Marsh’s crown matters more when it comes to her job in the Air Force. She busts the myth that women
who do the jobs that used to be held only by men have to look and act like them. This is important at
the Naval Academy, where some graduates watched Davids show compassion, a vivacious personality
10 and maternal pride as her kids cheered her on in a room full of military brass. “It was surreal,” said
Sharon Hanley Disher, 65, one of the first women to graduate from the academy in 1980. She was at the
ceremony promoting Davids, who called out the class of pioneers twice during her speech in Annapolis.
She couldn’t stop thinking about her first evening at the academy, back in 1976. “Miss Hanley, I don’t like
women in my school,” an upperclassman told her, she recalled, pointing his finger in her face. “I don’t
15 want women in my school. It will be my mission to make sure you’re long gone before I graduate.” She
graduated, and Davids, who graduated in 1989, thanked her and others for helping pave the way.
“A ship in port is safe, but that’s not what ships are built for,” said Davids in her welcome address, quoting
the words of Admiral Grace Hopper. She will face doubt and challenges to her leadership. But besides
proving that she can lead, she will be confronted with the opportunity to address women’s experience as
20 minorities in a school where they are just 28 percent of the student population.
Elizabeth Rowe, who was also in the class of 1980 with Hanley Disher, was celebrated as a pioneer in her
small, Maryland farm town. When she went off to the academy, she was stunned by the hatred she faced
when she got there. “While I knew it was first class and it was all male, I didn’t have any perspective. The
reaction we got − a sort of resentment, hatred, otherness, all of that − was unexpected. I spent four years
25 just trying to get through it. The hazing and harassment − dead rats being left in mailboxes, the constant
put-downs − were largely unaddressed by leaders,” she said.
Sadly, current students still face some of what she endured. Hanley Disher, who married a fellow graduate
and again made history when all three of their children graduated from the academy, said she was thrilled
to see her daughter have more congressionally mandated opportunities available to her. But she was
30 heartbroken when she heard that some of the old school misogyny was still there. “This one guy told my
daughter a joke,” she recounted. He said: “What did the ugliest girl in the world say to the second ugliest
girl in the world? What company are you in?”
Some of the women from the class of 1980 have never returned to the academy to celebrate milestones,
as their colleagues took command in the Navy and rose in the ranks at the academy. They told Hanley
35 Disher − when she reached out to them for reunions or events − that they can’t. But people change, places
change. During their 35th reunion, one of the men who was a primo harasser of women apologized to
her. He told her that he has been living with guilt over the things he said and did, and wanted to apologize
to all of them. So, Disher took him by the arm and said “Let’s go”. She accompanied him on his apology
tour, and then they cried about it at the bar.
PETULA DVORAK
Adaptado de washingtonpost.com, 15/01/2024.',NULL,'["optimistic and aware of challenges", "skeptical and disillusioned with facts", "neutral and sympathetic with problems", "patronizing and critical of improvements"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Matemática','Na tabela a seguir, estão apresentados os salários pagos em um estabelecimento comercial e a
quantidade de funcionários que recebe esses salários.
A média e a mediana desses salários são, em reais, respectivamente, iguais a:',NULL,'/cbmerj-apoios/2025-q21-p13-completo-0.png','["1.500 e 1.500", "1.500 e 2.750", "2.750 e 1.500", "2.750 e 2.750"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Matemática','Na sentença y = |x − 3| + |x + 5|, x é um número real, sendo − 5 < x < 0.
O valor de y é:',NULL,NULL,'["4", "8", "2x + 4", "2x + 8"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Matemática','Uma fábrica com 20 funcionários que trabalham 8 horas por dia, produz 4000 uniformes por mês.
Com o intuito de produzir 9000 uniformes por mês, foram contratados mais 16 funcionários, que
têm a mesma eficiência dos outros, isto é, cada um produz a mesma quantidade de uniformes
por hora de trabalho.
Para produzir essa nova quantidade de uniformes, a equipe dos 36 funcionários deve trabalhar,
diariamente, no mínimo, o seguinte número de horas:',NULL,NULL,'["10", "9", "7", "6"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Matemática','Considere uma função de variável real definida por f(x) = 3 − 2 cos(x/2). O conjunto imagem dessa função é:',NULL,NULL,'["[2; 4]", "[1; 5]", "[−3; 3]", "[−2; 2]"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Matemática','Um semicírculo α de diâmetro AB contém um círculo β de diâmetro CD, conforme ilustra a figura.
Sabe-se que CD é a flecha do arco ACE, que AB e AE medem 20 cm e 16 cm, respectivamente,
e que a área do semicírculo α é igual a x.
O valor de x, tomando a área do círculo β como unidade, é igual a:',NULL,'/cbmerj-apoios/2025-q25-p14-figura.png','["10,0", "10,5", "12,0", "12,5"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Matemática','Considere o seguinte sistema de equações lineares, sendo k uma constante real.
x + ky − 2z = 1
x + y + z = 2
x − y − z = 3
Se esse sistema apresenta uma única solução, o conjunto de todos os valores reais que a constante
k pode assumir é:',NULL,NULL,'["{k ∈ IR / k < 2}", "{k ∈ IR / k ≠ 2}", "{k ∈ IR / k > − 2}", "{k ∈ IR / k ≠ − 2}"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Matemática','Na figura a seguir, está representado um tronco de pirâmide hexagonal regular de bases
paralelas, com aresta da base maior, aresta da base menor e altura, medindo, respectivamente,
4 cm, 2 cm e 9 cm.
2 cm
O volume desse tronco, em cm³, é igual a:',NULL,'/cbmerj-apoios/2025-q27-p14-figura.png','["118 √3", "126 √3", "136 √3", "148 √3"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Matemática','Uma criança entra em uma pista com seu skate pelo ponto D, segue uma trajetória parabólica e
sai da pista pelo ponto A, na direção da reta t, conforme ilustra o esquema.
y
t
D A
C B x
r
Considere as seguintes informações:
• no sistema de coordenadas cartesianas, x e y estão indicadas em metros;
• a equação da parábola é y = x²/32;
• a reta t é tangente à parábola no ponto A e paralela à reta r, cuja equação é x − 2y − 16 = 0.
A profundidade AB dessa pista, em metros, é igual a:',NULL,'/cbmerj-apoios/2025-q28-p15-figura.png','["1,6", "2,0", "3,0", "3,2"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Matemática','Em um jogo, as crianças A e B utilizam um dado cúbico não numerado, com 2 faces pretas e
4 vermelhas, como ilustra a imagem.
Quando o dado é lançado, cada face tem a mesma probabilidade de ficar virada para cima,
sendo essa a face sorteada. Observe as seguintes regras do jogo:
• se a face sorteada for preta, apenas A ganha 2 pontos;
• se a face sorteada for vermelha, apenas B ganha 1 ponto;
• vence o jogo a criança que primeiro somar exatamente 4 pontos.
A probabilidade de a criança B ganhar o jogo é:',NULL,'/cbmerj-apoios/2025-q29-p15-figura.png','["101/243", "107/243", "112/243", "118/243"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Matemática','Sabe-se que a multiplicação de (1 + 2 + 2² + 2³ + ... + 2ᵐ) por (1 + 3 + 3² + 3³ + ... + 3ⁿ) possui (m + 1)·(n + 1) termos da forma 2ᵃ·3ᵇ, sendo a, b, m e n números naturais. Cada termo desse produto é um divisor natural do número 2ᵐ·3ⁿ. A soma de todos os divisores naturais de 2304 é:',NULL,NULL,'["6643", "6373", "5953", "5593"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Biologia','Doenças de orelha e garganta são tratadas pela mesma especialidade médica, a otorrinolaringologia,
em função da origem desses órgãos a partir de estruturas comuns.
Tais estruturas são denominadas:',NULL,NULL,'["cristas neurais", "arcos faríngeos", "folhetos parietais", "fístulas ectodérmicas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Biologia','Em casos de dispepsia funcional, condição gastrointestinal que pode ser associada a fatores
emocionais, há liberação excessiva de ácido clorídrico pelo organismo. Dentre as alterações
fisiológicas provocadas por essa condição, estão dor ou sensação de queimação no estômago e
desconforto abdominal.
Essas alterações ocorrem devido ao estímulo direto do seguinte ramo do sistema nervoso:',NULL,NULL,'["central", "somático", "raquidiano", "parassimpático"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Biologia','A terapia com indutores químicos pode ser utilizada no tratamento das mutações sem sentido,
que alteram a sequência de um gene e geram um dos três diferentes códons de parada: UAG,
UGA ou UAA. As substâncias empregadas nesse tipo de terapia atuam nos ribossomos e evitam
a leitura desses códons de parada, permitindo a expressão total da proteína codificada.
Por essas características, conclui-se que os indutores químicos atuam durante o processo de:',NULL,NULL,'["tradução", "replicação", "duplicação", "transcrição"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Biologia','O feocromocitoma é um tumor originado pela proliferação anormal das células da medula das
glândulas adrenais.
Em fase avançada, em função da região da glândula afetada, um sintoma típico desse tumor é:',NULL,NULL,'["acúmulo de colesterol", "sudorese excessiva", "retenção de sódio", "respiração lenta"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Biologia','Ao ser inalado em situações de incêndio, o monóxido de carbono inibe a ação da enzima
citocromo c oxidase, encontrada na cadeia transportadora de elétrons.
Essa inibição ocorre no interior do seguinte componente celular:',NULL,NULL,'["núcleo", "citoplasma", "peroxissomo", "mitocôndria"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Biologia','Na síndrome da autocervejaria, o sistema digestório produz etanol, levando à intoxicação do
organismo. Para o tratamento, além do uso de medicamentos, indica-se reduzir a ingestão de
diversos tipos de nutrientes que favorecem essa disfunção.
Um desses nutrientes é:',NULL,NULL,'["gordura", "vitamina", "aminoácido", "carboidrato"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Biologia','O permafrost, nome dado ao solo permanentemente congelado com temperatura abaixo de
0 °C por dois anos ou mais, contém material orgânico que se decompõe lentamente. Em
função do aquecimento global, esse tipo de solo tem sofrido acentuado derretimento,
agravando o efeito estufa.
Isso se explica pois, no descongelamento do permafrost, libera-se o seguinte gás:',NULL,NULL,'["hélio", "ozônio", "metano", "nitrogênio"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Biologia','Amônia, ureia e ácido úrico são as principais excretas nitrogenadas liberadas pelos animais.
Sabe-se que a maior ou menor complexidade das moléculas excretadas leva a um maior ou
menor consumo de energia durante sua síntese.
O grupo de animais vertebrados que possui maior gasto energético na síntese de sua principal
excreta nitrogenada é:',NULL,NULL,'["aves", "peixes", "anfíbios", "mamíferos"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Biologia','Os batimentos cardíacos são controlados por correntes elétricas, iniciadas a partir do nódulo
sinusal, que percorrem todo o miocárdio.
No coração, essas correntes elétricas resultam, em um primeiro momento, no seguinte processo:',NULL,NULL,'["diástole atrial", "sístole ventricular", "despolarização atrial", "repolarização ventricular"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Biologia','Em queimaduras, parte das diferentes células que migram para os locais de lesão fabrica grande
quantidade de colágeno, elemento fundamental ao processo de cicatrização.
O tipo celular responsável por produzir colágeno é denominado:',NULL,NULL,'["adipócitos", "mastócitos", "fibroblastos", "neuroblastos"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Física','Admita que a tendência natural de movimento da ambulância seja a descida e que as forças de
contato, normal e paralela à superfície da ladeira, atuam sobre esse veículo.
O sentido da resultante das duas forças de contato pode ser representado pelo seguinte vetor:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-completo-0.png','["Vetor A, apresentado no apoio.", "Vetor B, apresentado no apoio.", "Vetor C, apresentado no apoio.", "Vetor D, apresentado no apoio."]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Física','O comprimento de onda do som, em metros, emitido pela sirene da ambulância é de:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-apoio-comum.png','["0,2", "0,4", "0,6", "0,8"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Física','A intensidade da corrente elétrica, em ampères, que se estabelece em cada farol dianteiro do
veículo é igual a:','Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.','/cbmerj-apoios/2025-q41-p19-apoio-comum.png','["1", "2", "3", "4"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Física','O módulo da aceleração média, em m/s², experimentada pelo bombeiro, em seu deslocamento
até alcançar o piso horizontal, é igual a:','Em uma operação de resgate realizada em uma represa, um bombeiro partiu do repouso e desceu por um
tubo vertical, percorrendo uma distância de 5,0 m. Ele atingiu o piso horizontal, com velocidade de 3,0 m/s,
e entrou na viatura que o transportou até o local do resgate. Ao chegar à represa, esse bombeiro mergulhou a
uma profundidade de 12,0 m. Para cálculos relacionados a esse contexto são admitidos os seguintes valores:
g = 10 m/s², μ(água) = 10³ kg/m³ e 1 atm = 10⁵ N/m².',NULL,'["0,7", "0,9", "1,3", "1,6"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Física','A pressão, em N/m², que atua no bombeiro, na profundidade indicada, corresponde a:','Em uma operação de resgate realizada em uma represa, um bombeiro partiu do repouso e desceu por um
tubo vertical, percorrendo uma distância de 5,0 m. Ele atingiu o piso horizontal, com velocidade de 3,0 m/s,
e entrou na viatura que o transportou até o local do resgate. Ao chegar à represa, esse bombeiro mergulhou a
uma profundidade de 12,0 m. Para cálculos relacionados a esse contexto são admitidos os seguintes valores:
g = 10 m/s², μ(água) = 10³ kg/m³ e 1 atm = 10⁵ N/m².',NULL,'["1,0 × 10⁵", "1,2 × 10⁵", "2,0 × 10⁵", "2,2 × 10⁵"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Física','Uma peça recuperada após um incêndio foi analisada por meio de uma lente convergente, capaz
de conjugar uma imagem de modo a ampliar em 15 vezes as dimensões do objeto posicionado
entre seu centro óptico e seu foco principal. Sabe-se que o perito que realizou a análise posicionou
a peça a 4,0 cm de distância do centro óptico da lente.
A distância focal da lente, em centímetros, é aproximadamente de:',NULL,NULL,'["4,3", "5,6", "6,8", "7,5"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Física','Para conter um incêndio no terraço de um prédio, inicialmente o canhão de água de um caminhão
dos bombeiros é mantido a uma inclinação constante. Sabe-se que a altura entre o ponto B de
saída da água e o solo é de 4,0 m e que a altura máxima que o jato de água atinge, representada
pelo ponto A, é de 26,0 m, como ilustra o esquema.
A
Considerando a resistência do ar nula e g = 10 m/s², a velocidade mínima da água, ao ser esguichada
pelo canhão, nessa situação, em m/s, é aproximadamente de:',NULL,'/cbmerj-apoios/2025-q47-p21-figura.png','["18", "21", "26", "30"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Física','Para resgatar uma vítima, dois bombeiros precisaram entrar pela janela de um apartamento. Para
isso, utilizaram o cesto da plataforma giratória do caminhão. Sabe-se que o centro do cesto está
localizado a 16,0 m do centro giratório e que essa plataforma tem inclinação de 30º em relação à
direção horizontal. Observe o esquema:
Admita que os dois bombeiros e o cesto formam um conjunto com massa de 0,3 tonelada e que
apenas a plataforma giratória homogênea tenha massa de 0,6 tonelada.
O torque resultante desse sistema, em N.m, é aproximadamente igual a:',NULL,'/cbmerj-apoios/2025-q48-p21-figura.png','["9,86 × 10⁴", "8,16 × 10⁴", "6,12 × 10⁴", "4,08 × 10⁴"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Física','Com o intuito de verificar a relação entre temperatura e período de um pêndulo de aço, foram
realizadas três simulações em um laboratório de termodinâmica. A cada simulação a
temperatura θ do ambiente foi modificada, sendo θ₁ = −10 °C, θ₂ = 20 °C e θ₃ = 50 °C. Nas simulações, apenas a temperatura foi alterada, mantendo-se constantes o comprimento inicial L do
pêndulo e o deslocamento em relação ao ponto de equilíbrio, como indica o esquema a seguir.
L
Após o equilíbrio térmico nas temperaturas θ₁, θ₂ e θ₃, foram medidos os respectivos períodos T₁, T₂ e T₃. A relação entre os períodos está descrita em:',NULL,'/cbmerj-apoios/2025-q49-p22-completo-0.png','["T₁ = T₂ = T₃", "T₁ > T₂ > T₃", "T₁ < T₂ < T₃", "T₁ > T₂ = T₃"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Física','Um caminhão dos bombeiros, com massa de 18 toneladas, se desloca inicialmente com velocidade
v₁ de módulo igual a 72 km/h. Após realizar uma curva, esse caminhão atinge a velocidade v₂ de módulo igual a 54 km/h. Observe a imagem no apoio:
Nessa situação, o módulo de variação da quantidade de movimento do caminhão, em kg.m/s, é:',NULL,'/cbmerj-apoios/2025-q50-p22-figura.png','["4,5 × 10⁵", "6,3 × 10⁵", "4,5 × 10¹⁰", "6,3 × 10¹⁰"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','Química','Estudos científicos recentes indicam a possibilidade de se sintetizar um novo elemento químico,
o átomo superpesado de número atômico 120. Sabe-se que, se o novo elemento for sintetizado,
provavelmente suas propriedades químicas serão semelhantes às de uma família da tabela de
classificação períodica atual.
Essa família é denominada:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["halogênios", "calcogênios", "metais alcalinos", "metais alcalinoterrosos"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','Química','O polímero chamado comercialmente de Nomex é um dos diversos materiais específicos
utilizados na fabricação de uniformes de bombeiros por garantir proteção térmica e resistência a
chamas. Sua fórmula estrutural está apresentada a seguir:
Com base na análise dessa estrutura química, o Nomex pertence à seguinte função orgânica:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q52-p23-completo-0.png"]','["amida", "amina", "cetona", "aldeído"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','Química','Para avaliar a fertilidade de um solo, podem ser utilizados indicadores de pH, substâncias que
mudam de cor em função da acidez ou da alcalinidade do meio em que são empregadas.
Considere um agricultor que utilizou um indicador de pH com a seguinte sequência de cores:
Sabe-se que no solo avaliado pelo agricultor, podem ser encontrados os sais Al₂(SO₄)₃, Na₂CO₃, KNO₃ e NaCl e que, o indicador de pH apontou coloração vermelha.
Com base nesse resultado, conclui-se que o solo avaliado apresenta o seguinte sal:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q53-p23-completo-0.png"]','["Al₂(SO₄)₃", "Na₂CO₃", "KNO₃", "NaCl"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','Química','Sabendo que a massa de dióxido de carbono no extintor A é de 4,4 kg, o número de átomos
presente nesse extintor é igual a:','De acordo com nota técnica do CBMERJ, os incêndios são divididos em cinco classes de fogo − A, B, C, D e
K −, existindo, também, diferentes tipos de agente extintor de fogo, como água, espuma mecânica, dióxido
de carbono, pós químicos e compostos halogenados. Com base nisso, considere um extintor A, contendo
somente dióxido de carbono, e um extintor B, de pó químico, cujo principal agente é o di-hidrogenossal,
formado na reação de neutralização parcial entre H₃PO₄ e NH₄OH.','/cbmerj-apoios/2025-tabela-periodica.png','["1,8 × 10²³", "6,0 × 10²⁵", "1,8 × 10²⁶", "6,0 × 10²⁸"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','Química','O sal presente no extintor B possui a seguinte fórmula química:','De acordo com nota técnica do CBMERJ, os incêndios são divididos em cinco classes de fogo − A, B, C, D e
K −, existindo, também, diferentes tipos de agente extintor de fogo, como água, espuma mecânica, dióxido
de carbono, pós químicos e compostos halogenados. Com base nisso, considere um extintor A, contendo
somente dióxido de carbono, e um extintor B, de pó químico, cujo principal agente é o di-hidrogenossal,
formado na reação de neutralização parcial entre H₃PO₄ e NH₄OH.','/cbmerj-apoios/2025-tabela-periodica.png','["(NH₄)₂H₂PO₄", "(NH₄)₂HPO₄", "NH₄HPO₄", "NH₄H₂PO₄"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','Química','Em indústrias petroquímicas, o processo de craqueamento do petróleo consiste na quebra de
moléculas pesadas de hidrocarbonetos em moléculas leves e mais úteis, como alcenos e alcanos.
Observe um exemplo de reação química de craqueamento:
C₁₂H₂₆ → C₈H₁₈ + C₄H₈
Nessa reação, o produto de menor massa molar possui a seguinte quantidade total de isômeros
acíclicos:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["5", "4", "3", "2"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','Química','Na passagem de 2023 para 2024, em Balneário Camboriú (SC), quatro jovens no interior
de um automóvel foram vítimas de intoxicação por inalação de monóxido de carbono. Esse
gás, ao ser inalado, liga-se à hemoglobina presente nas hemácias, dificultando o transporte
de oxigênio no organismo. A Organização Mundial da Saúde (OMS) estabelece que o limite
máximo permitido de exposição ao CO é de 30 mg/L.
Adaptado de g1.globo.com, 07/01/2024.
Com base no estabelecido pela OMS, a concentração máxima permitida de CO, em mol/L, é
aproximadamente igual a:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["1,07 × 10⁻⁶", "2,14 × 10⁻⁶", "1,07 × 10⁻³", "2,14 × 10⁻³"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','Química','Considere a reação de equilíbrio 2 SO₂(g) + O₂(g) ⇌ 2 SO₃(g) e os valores de Kc, determinados em função das concentrações molares, nas duas temperaturas apresentadas na tabela de apoio. A variação de entalpia durante a síntese de SO₃ é representada pelo seguinte gráfico:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q58-p25-completo-0.png", "/cbmerj-apoios/2025-q58-p25-completo-1.png"]','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Química','As fórmulas estruturais a seguir correspondem a quatro compostos orgânicos inflamáveis,
identificados em um estudo.
A análise química de um desses compostos indicou que ele é reduzido em presença de H₂ e sofre
oxidação em presença de KMnO₄.
O composto analisado corresponde à fórmula estrutural representada em:',NULL,'["/cbmerj-apoios/2025-tabela-periodica.png", "/cbmerj-apoios/2025-q59-p26-completo-0.png"]','["I", "II", "III", "IV"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Química','Em um acidente com um tanque industrial, houve combustão completa de 200 L de hexano,
hidrocarboneto empregado como solvente. Sabe-se que a densidade dessa substância é de
655 g/L.
Nessa combustão, o volume de gás oxigênio consumido nas CNTP, em litros, corresponde
aproximadamente a:',NULL,'/cbmerj-apoios/2025-tabela-periodica.png','["3,4 × 10⁴", "4,9 × 10⁴", "3,2 × 10⁵", "4,7 × 10⁵"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Geografia','Observe a imagem a seguir, em que o planeta está dividido em oito regiões, cada uma com um
bilhão de habitantes:
reddit.com
Com base na regionalização proposta, a maior população absoluta encontra-se no seguinte
continente:',NULL,'/cbmerj-apoios/2025-q61-p27-figura.png','["Ásia", "África", "Europa", "América"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Geografia','COMPOSIÇÃO DA MATRIZ ENERGÉTICA NO MUNDO E NO BRASIL EM 1979 E EM 2019
No período analisado, a diferença dos percentuais da composição da matriz energética
brasileira, em relação às médias mundiais, é explicada pelo seguinte fator:',NULL,'/cbmerj-apoios/2025-q62-p27-completo-0.png','["utilização majoritária das usinas hidrelétricas", "conscientização ambiental dos governos locais", "priorização do transporte ferroviário para longas distâncias", "ampliação de investimento estrangeiro para instalações termelétricas"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Geografia','DENSIDADE DEMOGRÁFICA NA COREIA DO SUL (2022)
Habitantes por km²
reddit.com
Com base na variação territorial da densidade demográfica, identifica-se a seguinte característica
socioespacial na Coreia do Sul:',NULL,'/cbmerj-apoios/2025-q63-p28-figura.png','["hipertrofia na rede industrial", "superpovoamento na área rural", "macrocefalia na hierarquia urbana", "conflituosidade na fronteira política"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Geografia','De acordo com a análise do mapa, os números I e II da legenda correspondem, respectivamente,
aos seguintes tipos de agricultura:','SUPERFÍCIE OCUPADA POR TIPOS DE AGRICULTURA EM CADA ESTADO (2017)
Fonte: Censo Agropecuário, IBGE, 2017.','/cbmerj-apoios/2025-q64-p29-figura.png','["extensiva e intensiva", "familiar e não familiar", "moderna e tradicional", "comercial e de subsistência"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Geografia','Na tabela a seguir, estão apresentados dados comparativos entre modais de transporte.
Considerando os aspectos econômicos e ambientais, o modal mais adequado para o transporte
de grandes volumes de produtos agrícolas em longas distâncias é:',NULL,'/cbmerj-apoios/2025-q65-p30-completo-0.png','["aéreo", "ferroviário", "rodoviário", "hidroviário"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Geografia','TAYLOR JONES
ocregister.com
O conflito geopolítico representado na charge envolve dois povos do Oriente Médio e atinge,
direta ou indiretamente, várias nações do mundo, desde o fim da Segunda Guerra Mundial.
A origem histórica desse conflito se refere a disputas cuja principal motivação é de ordem:',NULL,'/cbmerj-apoios/2025-q66-p30-figura.png','["cultural", "territorial", "ecológica", "econômica"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Geografia','Com base na leitura do texto e na análise do gráfico, uma explicação para a ascensão da
fabricante de veículos elétricos destacada é a adoção da seguinte estratégia empresarial:','A empresa chinesa BYD ultrapassou a norte-americana Tesla como líder mundial em vendas
de veículos elétricos no final de 2023, coroando sua ascensão extraordinária.
Com sede na megacidade de Shenzhen, a BYD foi fundada em 1995 e é a maior fabricante de
veículos elétricos da China, exportando táxis elétricos, ônibus e outros veículos para o resto
do mundo, especialmente para a Europa, América do Sul, Sudeste Asiático e Oriente Médio.
Adaptado de cnnbrasil.com.br, 03/01/2024.
CAUÊ LIRA
Adaptado de Revista Autoesporte, outubro/2023.','/cbmerj-apoios/2025-q67-p31-completo-0.png','["verticalização da produção", "terceirização da montagem", "padronização do produto", "ampliação do estoque"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Geografia','Analisando a imagem, identifica-se o bioma brasileiro mais afetado pelo fenômeno retratado,
que é provocado, predominantemente, pela ação humana.
Uma característica natural que favorece a maior incidência do fenômeno nesse bioma é:','ÁREAS AFETADAS POR QUEIMADAS ENTRE 1985 E 2023
áreas afetadas por queimadas
Adaptado de plataforma.brasil.mapbiomas.org.','/cbmerj-apoios/2025-q68-p32-figura.png','["exiguidade dos rios", "diversidade da flora", "velocidade dos ventos", "sazonalidade da pluviosidade"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Geografia','Em 2019, o Instituto Brasileiro de Geografia e Estatística (IBGE) apresentou um estudo com os
níveis de risco de ocorrência de deslizamentos de terra nos estados brasileiros. No gráfico, são
reproduzidos dados de um recorte territorial desse estudo, abrangendo nove estados e o
Distrito Federal.
Considerando as características físico-naturais desse recorte, o fator com maior peso para
determinar o nível de risco nessa classificação é:','ÁREA TERRITORIAL SOB RISCO DE DESLIZAMENTOS (EM %)
Fonte: Suscetibilidade e deslizamentos do Brasil, IBGE, 2019.','/cbmerj-apoios/2025-q69-p33-completo-0.png','["solo", "clima", "relevo", "vegetação"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Geografia','No mapa-múndi acima, o planeta está representado com a real proporção de área dos continentes.
Para esse tipo de representação, é necessário o uso de projeção cartográfica com a seguinte
propriedade:','REPRESENTAÇÃO DOS CONTINENTES EM PROPORÇÃO REAL DE ÁREA
Adaptado de reddit.com','/cbmerj-apoios/2025-q70-p34-figura.png','["afilática", "conforme", "equivalente", "equidistante"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','História','As imagens acima reproduzem obras que compõem o conjunto de pinturas elaboradas por
Albert van der Eckhout durante sua permanência nas terras do Brasil, no século XVII.
Tais pinturas, representativas do olhar europeu sobre o "Novo Mundo", indicam a valorização
dos seguintes aspectos:','PINTURAS DE ALBERT ECKHOUT (1641)
MUSEU NACIONAL DA DINAMARCA (COPENHAGUE)
Índia Tarairiu (Tapuia) Mulher Africana Mulher Mameluca
O pintor e desenhista holandês Albert van der Eckhout (1610-1666) foi autor de um conjunto
de obras que registram a fauna, a flora e os tipos humanos, no Brasil da época. Indicado
ao conde Maurício de Nassau (1604-1679), integrou a comitiva de artistas e cientistas
responsáveis por documentar o Novo Mundo, durante a permanência do governo holandês
em Pernambuco, entre 1637 e 1644.
Adaptado de enciclopedia.itaucultural.org.br.','/cbmerj-apoios/2025-q71-p35-figura.png','["exotismo e etnicidade", "iberismo e cordialidade", "naturalismo e autenticidade", "americanismo e feminilidade"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','História','A criação de monumentos é uma forma pela qual diferentes sociedades valorizam seu passado.
O perfil predominante dos monumentos na cidade do Rio de Janeiro, apresentado na
reportagem, é explicado por características herdadas do passado colonial brasileiro. Por sua
vez, a medida adotada pela França, em 2024, possui um objetivo bastante específico.
Essa característica e esse objetivo são, respectivamente:','RIO TEM CERCA DE 1350 MONUMENTOS, MAS SOMENTE
15 SÃO ESTÁTUAS OU BUSTOS DE MULHERES
Dos 1350 monumentos que existem na cidade do Rio de Janeiro, apenas 15 são estátuas ou
bustos de mulheres. A prefeitura não tem o número exato de estátuas de homens, e entre
os monumentos estão contabilizados chafarizes e relógios, por exemplo. Duas das estátuas
femininas foram inauguradas em 2016, ano das Olimpíadas no Rio: a da escritora Clarice
Lispector e a da primeira bailarina negra do Theatro Municipal, Mercedes Baptista. Já na
abertura dos Jogos Olímpicos de Paris, em 2024, foram erguidas às margens do rio Sena dez
estátuas de mulheres francesas, ao som de uma versão do hino nacional reproduzido por um
coro de mulheres. As esculturas, todas douradas, serão permanentes. Segundo a organização
do evento, as homenageadas deixaram importante legado para o país e avançaram na
conquista dos direitos das mulheres.
Adaptado de folha.uol.com.br, 09/08/2024.',NULL,'["mandonismo − garantir ação afirmativa", "machismo − atenuar perspectiva étnica", "paternalismo − implementar reparação racial", "patriarcalismo − promover reconhecimento histórico"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','História','Embasado no raciocínio acima, o juiz da Suprema Corte dos E.U.A, Oliver Wendell Holmes, Jr.,
argumentou, em 1919, que a liberdade de expressão depende das circunstâncias para sua prática.
O movimento que inspirou a defesa desse direito no mundo contemporâneo e uma prática que
ameaçou esse mesmo direito no Brasil no século XX estão associados, respectivamente, em:','O caráter de cada ato depende das circunstâncias sob as quais ele é praticado. A proteção
mais estrita da liberdade de expressão não protege um homem que falsamente grita fogo
num teatro e causa pânico. Ela [a proteção mais estrita da liberdade de expressão] sequer
protege um homem de uma injunção contra palavras belicosas que possam ter todo o efeito
de força. A questão, em todos os casos, é se as palavras utilizadas são empregadas sob essas
circunstâncias e se são de tal natureza para criar um perigo claro e imediato.
OLIVER WENDELL HOLMES, JR. (1841-1935)
Adaptado de ROTUNDA, R. O direito de dissidência e a dívida dos Estados Unidos com Heródoto e Tucídides.
Revista de Estudos Institucionais, v. 1, n. 1, 2015.',NULL,'["Iluminismo e censura oficial no Estado Novo", "Renascimento e mídias sociais na Nova República", "Cientificismo e propagandas personalistas no Regime Militar", "Protestantismo e publicidade estatal na Experiência Democrática"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','História','A criação de órgão específico para o combate a incêndios na cidade do Rio de Janeiro, em
meados do século XIX, se inseriu em um contexto de mudanças significativas para a então
capital do Império do Brasil.
Tais mudanças se relacionaram ao objetivo de promover práticas de:','Esse 10 de espadas compõe um baralho elaborado nas
comemorações do Centenário da Independência do
Brasil. Na carta se vê o prédio sede do agora Corpo
de Bombeiros Militar do Estado do Rio de Janeiro
(CBMERJ). A corporação foi criada como Corpo
Provisório de Bombeiros da Corte, em 1856, pelo
Imperador D. Pedro II. É o mais antigo da América
Latina. Deixou de ser provisório em 1860 e, em 1880,
passou a ter organização militar. Antes dela, os sinos
da igreja de São Francisco de Paula e tiros que partiam
do Morro do Castelo anunciavam e localizavam os
incêndios na cidade. O prédio, edificado em 1908,
situado na Praça da República, abriga a sede do
Quartel e o Museu Histórico do CBMERJ.
Adaptado de bndigital.bn.gov.br.','/cbmerj-apoios/2025-q74-p37-figura.png','["erradicação de condições insalubres nas áreas periféricas", "priorização de medidas preventivas nos planejamentos públicos", "implementação de melhoramentos materiais nos serviços urbanos", "consolidação de processos industrializantes nas políticas governamentais"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','História','A sinopse do livro O último dia do mundo, que aborda o terremoto ocorrido em Lisboa em 1755,
menciona questionamentos, suscitados pelo desastre, acerca do lugar que Deus ocupa nas
relações humanas.
No contexto do terremoto, tais questionamentos fomentaram maior difusão de princípios
advindos de:','O primeiro abalo atingiu Lisboa na manhã do
dia 1º de novembro de 1755. Minutos depois,
outro ainda mais forte arrasou a cidade, seguido
por um terceiro. Lisboa, uma das capitais mais
imponentes da Europa, foi destruída em menos de
15 minutos. Então, um tsunâmi, arrastou milhares
de pessoas e um vento implacável espalhou os
focos de incêndio provocados pelos tremores. O
terremoto em Portugal, na capital mais católica
do continente, abalou as certezas intelectuais e
religiosas que na época dominavam a Europa. Até
1755, as aflições que a natureza impunha sobre
a humanidade eram consideradas obra de um
Deus furioso. Após a catástrofe, o lugar de Deus
nas relações humanas começou a ser questionado.
Voltaire, Pope, Kant e Rousseau, entre outras
figuras eminentes, fizeram do acontecimento um
veículo para expressar seus questionamentos. O
jornalista Nicholas Shrady revela, em O último dia
do mundo, que essa reação ao desastre natural é o
que ainda hoje provoca grande fascínio.
Adaptado de amazon.com.br.','/cbmerj-apoios/2025-q75-p38-completo-0.png','["ideias ilustradas", "filosofias ateístas", "práticas monásticas", "cosmologias teocêntricas"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2025: alternativa A.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','História','A Segunda Guerra Mundial (1939-1945) tornou-se um dos acontecimentos mais marcantes da
história do século XX. No trecho da reportagem, são apresentados alguns de seus impactos para
as sociedades africanas, como demonstra o testemunho de Albert Kuniuku.
Naquelas sociedades, o recrutamento forçado de trabalhadores foi promovido em função do
seguinte contexto:','ÁFRICA NA SEGUNDA GUERRA MUNDIAL:
UM CAPÍTULO ESQUECIDO
A partir de 3 de setembro de 1939, quando a Grã-Bretanha e a França declararam guerra à
Alemanha, os Aliados recrutaram na África cerca de meio milhão de soldados e operários.
Soldados de toda a África subsaariana e do norte do continente tiveram de lutar contra as
tropas alemãs e italianas no norte da África e na Europa durante a guerra. Mais tarde também
combateram contra os japoneses na Ásia e no Pacífico.
Nos noticiários na Europa falava-se em “voluntários”. Mas o antigo soldado congolês Albert
Kuniuku, de 93 anos, tem outra versão: “Foi um verdadeiro recrutamento forçado. Eu
trabalhava numa empresa têxtil quando nos foram buscar. Todos os jovens trabalhadores
foram recrutados. Nenhum deles tinha mais de 30 anos.”
Albert Kuniuku é presidente da União dos Veteranos Congoleses (UNACO) em Kinshasa, a
capital da República Democrática do Congo. Até 1960, o país foi governado pela Bélgica. O
veterano é um dos últimos sobreviventes de uma unidade expedicionária que lutou contra
os japoneses na Índia e no Mianmar (antiga Birmânia), entre 1940 e 1946, sob comando
britânico e belga, longe dos campos de batalha da Europa.
Adaptado de dw.com, 08/05/2020.',NULL,'["dimensão de conflito global", "resistência de populações nativas", "aniquilação de tropas mercenárias", "permanência de dominação imperialista"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','História','O surgimento do movimento citado representou uma crítica direta à seguinte ideologia defendida
pelo regime vigente à época:','Em abril de 1978, um jovem negro foi acusado pelo roubo de frutas de um feirante. Robson
Silveira da Luz, de 21 anos, casado e pai de família, foi barbaramente torturado pela polícia
nas dependências do 44º Distrito de Guaianases, na zona leste de São Paulo, e acabou morto.
Naquele mesmo ano, quatro garotos negros, atletas da equipe juvenil de vôlei do Clube de
Regatas Tietê, foram barrados no clube. Ao reclamar do acontecido, o técnico teria ouvido de
um dos diretores: “Se deixar um negro entrar na piscina, cem brancos saem.”
Ainda em 1978, em resposta a esses episódios, surgiu o Movimento Negro Unificado
(MNU). O uso da palavra “Negro” foi sugestão do histórico ativista negro Abdias do
Nascimento (1914-2011), para que ficasse claro quem eram os protagonistas da luta contra
a discriminação.
Adaptado de bbc.com, 27/11/2022.','/cbmerj-apoios/2025-q77-p40-completo-0.png','["livre iniciativa", "democracia racial", "igualdade jurídica", "meritocracia social"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','História','A extensão e o tipo de áreas mais atingidas pelos incêndios florestais no primeiro semestre de
2024 estão relacionados ao modelo que marca a ocupação e a exploração do território brasileiro
desde a colonização.
Esse modelo se caracteriza principalmente por:','95% DO FOGO NO PANTANAL TÊM ORIGEM
EM PROPRIEDADES PRIVADAS
A maior parte do fogo que queima o pantanal teve origem em propriedades privadas, e quase
não há indícios de que tenha começado por causas naturais, como raios. Isso é o que apontam
monitoramentos via satélites do bioma, feitos por diferentes instituições.
Para pesquisadores, a ação humana é o principal vetor dessas queimadas, que podem se
transformar em uma das maiores crises já vistas no Pantanal. Quase 95% dos 3372 focos
de incêndio no primeiro semestre de 2024 − número que é recorde para o período − ficam
em áreas privadas, segundo o programa BDQueimadas, do Instituto Nacional de Pesquisa
Espacial (Inpe).
Adaptado de folha.uol.com.br, 26/06/2024.
ÁREA ATINGIDA PELO FOGO NO PRIMEIRO SEMESTRE DE 2024
(em hectares)
532900
42775 52325
Terras Unidades de Áreas
indígenas conservação privadas
Fonte: Lasa/UFRJ.','/cbmerj-apoios/2025-q78-p41-figura.png','["agricultura familiar", "trabalho compulsório", "concentração fundiária", "modernização tecnológica"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2025: alternativa C.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','História','Ações como a registrada na notícia integram iniciativas que visam a lidar com as heranças de
governos ditatoriais, que marcaram a história recente de países latino-americanos.
Ao relacionar história e memória, o mencionado museu representa uma atitude de:','ARQUITETURA É DESTAQUE NO MUSEU DA MEMÓRIA
E DOS DIREITOS HUMANOS NO CHILE
Vinte anos após o fim da ditadura chilena, organizações que lutam pelos direitos humanos
no país demonstraram que o Chile estava pronto para enfrentar o passado: foi inaugurado,
em Santiago, capital do país, em 2010, o Museo de La Memoria y Los Derechos Humanos, cuja
missão é dar visibilidade aos crimes contra direitos humanos cometidos pelo governo do
Chile entre os anos de 1973 e 1990.
O museu é uma referência para os chilenos, principalmente pesquisadores, uma vez que é
composto de um Centro de Documentação e de uma Biblioteca. Além disso, vem se tornando
um ponto obrigatório para turistas. Na época da inauguração, a então presidenta Michelle
Bachelet, ela própria detida e torturada durante a ditadura, considerou que o museu é “um
símbolo poderoso do vigor do Chile unido (…) na promessa de não voltar a conhecer uma
tragédia como esta”. E adiantou: “Não podemos mudar o passado, mas sim aprender com o
que foi vivido”.
BRUNO LEAL
Adaptado de cafehistoria.com.br.','/cbmerj-apoios/2025-q79-p42-figura.png','["reparação integral dos danos políticos", "reconhecimento crítico da violência estatal", "interrupção preventiva do projeto autoritário", "estabelecimento contínuo das práticas democráticas"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2025: alternativa B.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','História','Na charge, dois aspectos que caracterizam o mundo do trabalho na contemporaneidade estão
relacionados de forma irônica.
Esses aspectos são:','TONI D’AGOSTINHO
Disponível em acaricatura.com.br.','/cbmerj-apoios/2025-q80-p43-completo-0.png','["exploração fiscal e mobilidade social", "emprego formal e liberdade empresarial", "propriedade comercial e ambição individual", "discurso motivacional e precarização laboral"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2025: alternativa D.' from public.exams where slug='cbmerj-2025-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2025-cfo-ingles');

insert into public.exams(slug,title,source,year) values ('cbmerj-2026-cfo-espanhol','CBMERJ 2026 · Curso de Formação de Oficiais · Espanhol','cbmerj','2026') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','O ponto de partida da crônica de Sérgio Rodrigues é uma série fictícia de televisão chamada
“Ruptura”.
A finalidade dessa referência é:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["valorizar o relato", "postergar o assunto", "conscientizar o leitor", "contextualizar o tema"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','No primeiro parágrafo, faz-se referência ao eufemismo “colaborador”, utilizado no lugar de
“empregado”. Do ponto de vista legal, não há conotação negativa no termo “empregado”.
Logo, o que o eufemismo “colaborador” procura suavizar é a relação, entre empregador e
empregado, de:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["indignação", "humilhação", "exploração", "negação"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: (l. 5)
O trecho exemplifica um caso de elipse.
A marca gramatical que permite a recuperação do termo em elipse, no trecho, é:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["transitividade verbal", "paralelismo sintático", "concordância verbal", "inversão sintática"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','Os sufixos presentes nos vocábulos colaborador e colaboracionismo expressam, respectivamente,
as ideias de:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["origem – agente", "agente – doutrina", "ocupação – origem", "doutrina – ocupação"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','Os adjetivos, ao determinarem o substantivo, podem expressar valores mais opinativos ou mais
descritivos.
O adjetivo de natureza essencialmente descritiva está destacado em:
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["A estreia da segunda temporada da ⟦magnífica⟧ série “Ruptura” nos dá a oportunidade de refletir sobre o mais bem-sucedido eufemismo corporativo do nosso tempo: (l. 1-2)", "Por meio do implante de um chip ⟦cerebral⟧, têm suas memórias bifurcadas: fora da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora. (l. 5-6)", "é bem ⟦difícil⟧ contestar a ideia de que acolchoar os atritos da realidade com palavras bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das pessoas. (l. 26-28)", "O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada ⟦brilhante⟧ do primeiro hominídeo que anunciou que iria “dar um pulo ali na moita”. (l. 29-30)"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','Os títulos dos textos I e II apontam para abordagens diferentes de um mesmo tema. No
primeiro, o título resume a tese principal. No segundo, o substantivo que compõe o título
remete à conclusão final.
Esse substantivo expressa a seguinte figura de linguagem:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.

TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["metáfora", "paradoxo", "hipérbole", "prosopopeia"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','O nome do personagem central é grafado com a inicial em minúscula, mesmo no início dos
períodos, o que revela um índice do processo de transformação por que passa o personagem.
Esse processo é denominado:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["reificação", "estagnação", "discriminação", "desmistificação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Agora joão acordava às cinco da manhã. Esperava três conduções. (l. 14)
No trecho, as formas verbais encontram-se no pretérito imperfeito do modo indicativo,
expressando a noção de:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["hipótese", "recorrência", "eventualidade", "simultaneidade"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','No texto II, observa-se a predominância de períodos simples.
Essa predominância pode ser associada ao seguinte aspecto da vida do personagem central:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["empobrecimento da existência", "inconsistência da submissão", "complexidade do trabalho", "intermitência da ação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','A noção semântica de propósito está expressa por meio de um verbo em:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["Não se mostrou orgulhoso, (l. 2)", "Passou a trabalhar mais duas horas diárias. (l. 19)", "O organismo acomodara-se à fome. (l. 38)", "Mas desejo requerer minha aposentadoria. (l. 49)"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Espanhol','¿Puede una jornada laboral más corta mejorar nuestra calidad de vida? (título)
El fragmento que mejor responde a la pregunta del título es:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["tener horario de trabajo más reducido debería redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos de conciliación. (l. 3-5)", "el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, (l. 26-27)", "la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un impacto en la felicidad, la salud mental y la conciliación de los trabajadores. (l. 30-31)", "es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse (l. 34-35)"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Espanhol','¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de mejor
salud mental?, ¿mejorará la conciliación con nuestra vida familiar? (l. 10-11)
El uso de esas preguntas en el segundo párrafo del texto produce el siguiente efecto de sentido:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["crear expectativa", "reiterar opiniones", "despreciar críticas", "evidenciar contradicciones"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Espanhol','Pero, desafortunadamente, las investigaciones realizadas en las últimas décadas indican
respuestas diferentes a lo esperado. (l. 12-13)
El término subrayado expresa un posicionamiento del enunciador respecto a lo que dice.
En el texto, otro término con la misma función es:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["últimamente (l. 1)", "seguramente (l. 11)", "negativamente (l. 18)", "finalmente (l. 34)"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Espanhol','El texto señala que el teletrabajo y la conexión digital pueden tener el siguiente impacto en la
vida del trabajador:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["corroborar regulación legal", "asegurar productividad total", "obstaculizar descanso laboral", "potenciar alejamiento profesional"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Espanhol','(lo que se conoce popularmente como “jornada europea”) (l. 14-15)
El uso de los paréntesis y de las comillas ejercen, respectivamente, las siguientes funciones:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["reiterar – ironizar", "ironizar – explicar", "designar – reiterar", "explicar – designar"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Espanhol','A lo largo del texto, se hace referencia a experiencias internacionales acerca de la reducción del
horario de trabajo.
El fragmento que presenta uno de los resultados de esas experiencias es:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["el exceso de horas de trabajo y la falta de descanso producen efectos negativos (l. 2)", "muchos indicaron que su carga de trabajo no se había disminuido, (l. 18-19)", "los empleados siguen trabajando a distancia desde sus hogares (l. 22-23)", "política que sí llevaría a una efectiva mejora de la salud de los trabajadores (l. 33)"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Espanhol','De hecho, el texto acordado entre el ministerio y las organizaciones sindicales contempla
regular más ampliamente la desconexión digital, (l. 23-25)
Respecto a lo dicho anteriormente en el cuarto párrafo, el marcador discursivo subrayado cumple
la función de introducir:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["refuerzo", "oposición", "conclusión", "consecuencia"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Espanhol','deberían promoverse horarios de trabajo más intensivos, (l. 32)
En el fragmento, la modalización de la forma verbal tiene el siguiente objetivo:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["expresar duda", "explicitar deseo", "indicar sugerencia", "establecer paradoja"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Espanhol','Sin embargo, la implicación de la comunidad científica no debe limitarse únicamente al
estudio de su impacto posterior, (l. 37-39)
El conector que puede sustituir el término subrayado sin alteración significativa de significado es:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["sino", "aunque", "así pues", "no obstante"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Espanhol','Respecto a su tipología, el texto se puede clasificar predominantemente como:','¿PUEDE UNA JORNADA LABORAL MÁS CORTA
MEJORAR NUESTRA CALIDAD DE VIDA?
Últimamente, la reducción de la jornada máxima de trabajo está protagonizando un debate público. Es
evidente que el exceso de horas de trabajo y la falta de descanso producen efectos negativos sobre nuestra
salud tanto física como, sobre todo, mental. Además, tener horario de trabajo más reducido debería
redundar en un avance en el equilibrio entre la ocupación y la esfera privada, optimizando los procesos
5 de conciliación.
En este sentido, el Gobierno español y las principales organizaciones sindicales han firmado un acuerdo
social para la reducción de la jornada laboral a 37,5 horas semanales sin recorte salarial con el lema
“Trabajar menos, vivir mejor”. En España trabajamos una media anual de 1632 horas, por debajo del
promedio de la OCDE, aunque por encima de otros países europeos tales como Francia, Alemania,
10 Finlandia, entre otros. ¿Reducir la jornada laboral máxima nos generará mayor bienestar?, ¿gozaremos de
mejor salud mental?, ¿mejorará la conciliación con nuestra vida familiar? Seguramente, la contestación
más elegida e intuitiva a todas estas preguntas sería un sí. Pero, desafortunadamente, las investigaciones
realizadas en las últimas décadas indican respuestas diferentes a lo esperado.
Es probable que algunos trabajadores prefieran una jornada continua, saliendo del trabajo antes (lo que
15 se conoce popularmente como “jornada europea”), en lugar de la reducción de unos minutos diarios
de la jornada. En un estudio realizado en Francia sobre la reducción de la jornada a 35 horas, cuando
se preguntó a los trabajadores si esa medida había facilitado la conciliación, más de un 40% de los
encuestados respondieron negativamente. Entre los argumentos planteados, muchos indicaron que su
carga de trabajo no se había disminuido, sino que, por el contrario, tenían que realizar la misma cantidad
20 en un tiempo más breve, con el consiguiente estrés y con agotamiento.
También será importante considerar la conexión digital y el teletrabajo, ya que este puede ser un factor
muy perturbador de nuestra salud. No servirá de nada reducir la jornada en la empresa si los empleados
siguen trabajando a distancia desde sus hogares telemáticamente después de la jornada. De hecho, el
texto acordado entre el ministerio y las organizaciones sindicales contempla regular más ampliamente la
25 desconexión digital, aunque habrá que ver cómo se concreta esa regulación.
Por otra parte, el impacto de esta reducción del horario de trabajo sobre el bienestar y la conciliación
de los trabajadores será diferente entre puestos de trabajo cualificados y menos cualificados, siendo en
este último grupo mayor. En general, el agotamiento, especialmente el de carácter psicológico, está más
relacionado con factores vinculados con la tarea que con el número de horas trabajadas.
30 En resumen, la relación entre la reducción del horario y el bienestar es un tema positivo y que tiene un
impacto en la felicidad, la salud mental y la conciliación de los trabajadores. Junto con una reducción de
la jornada semanal, deberían promoverse horarios de trabajo más intensivos, adelantando el horario de
finalización (política que sí llevaría a una efectiva mejora de la salud de los trabajadores).
Finalmente, es crucial que cualquier medida se acompañe de una reflexión profunda sobre el horario
35 de trabajo y se brinde a las organizaciones el tiempo suficiente para adaptarse de manera negociada y
consensuada a estos cambios y nuevas formas de trabajo. Desde el Ministerio de Trabajo, se ha señalado
que la reducción de la jornada en España se va a estudiar en las universidades de todo el mundo. Sin
embargo, la implicación de la comunidad científica no debe limitarse únicamente al estudio de su impacto
posterior, sino que también debería extenderse al asesoramiento y diseño de dicha implementación.
FRANCISCO DIAZ BRETONES
Adaptado de theconversation.com, 03/02/2025.',NULL,'["narrativo", "disertativo", "descriptivo", "prescriptivo"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Matemática','Em um restaurante, realizou-se uma pesquisa para conhecer a preferência de N clientes em
relação a tipos de proteínas. Observe na tabela alguns dados obtidos nessa pesquisa:
Proteína preferida Número de clientes Percentual de N
Sabendo que cada cliente escolheu apenas um tipo de proteína, o número x de clientes que
preferem peixe é igual a:',NULL,'/cbmerj-apoios/2026-q21-p14-completo-0.png','["3000", "4000", "5000", "6000"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Matemática','A produção de bolos de uma confeitaria possui o custo total fixo mensal de R$ 6.000,00. Em
determinado mês, além desse custo, para produzir cada unidade de bolo, foram gastos R$ 40,00
acrescidos de 9,5% de impostos sobre esse valor. Nesse mês, cada unidade foi vendida por R$ 120,00.
Para essa produção, a expressão algébrica que representa o lucro L em função da quantidade x
de unidades vendidas é:',NULL,NULL,'["L(x) = 76,2x − 6000", "L(x) = 76,2x + 6000", "L(x) = 43,8x − 6000", "L(x) = 43,8x + 6000"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Matemática','Considere o sistema linear a seguir:
4x + y + Az = 7
2x − By + z = 5
x + y + z = 1
Para que esse sistema seja possível e indeterminado, os valores das constantes A e B são,
respectivamente, iguais a:',NULL,NULL,'["− 1 e 3", "− 3 e 1", "1 e 3", "3 e 1"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Matemática','Considere a função f: [0, 2π] → ℝ tal que f(x) = 6 cos(x/4 + π/4). O valor máximo de f é:',NULL,NULL,'["1", "5", "3√2", "2√3"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Matemática','No gráfico a seguir, está representada a função polinomial f, de variável real definida por
f(x) = x⁴ − 3x³ − 3x² + 11x − 6. Note que esse gráfico é tangente ao eixo das abscissas no
ponto (1,0).
1 x
Sabe-se que a maior e a menor raiz da equação f(x) = 0 são, respectivamente, p e q.
O valor de p − q é:',NULL,'/cbmerj-apoios/2026-q25-p15-figura.png','["5", "3", "1 + √5", "1 + √3"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Matemática','Uma loja de eletrodomésticos vende um aparelho de TV por R$ 1.800,00 à vista e, para vendas a
prazo, cobra juros compostos de 5% ao mês. Um cliente, ao comprar essa TV, optou por fazer o
pagamento em três parcelas, da seguinte forma:
1ª) R$ 600,00 à vista;
2ª) R$ 600,00 exatamente dois meses após a compra;
3ª) x reais exatamente três meses após a compra.
O valor de x, em reais, é igual a:',NULL,NULL,'["759,15", "719,15", "659,15", "619,15"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Matemática','Em um desafio de matemática, estudantes consideraram dois conjuntos:
• A - formado por todas as retas concorrentes no ponto P (2,1);
• B - formado apenas por retas de A cuja distância ao ponto Q (1,3) é igual a 3.
O conjunto B possui o seguinte número de elementos:',NULL,NULL,'["3", "2", "1", "0"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Matemática','Considere todos os divisores naturais do número n = 2⁵ × 3³.
O produto de todos esses divisores é:',NULL,NULL,'["2⁴⁵ × 3³⁰", "2⁴⁵ × 3³⁶", "2⁶⁰ × 3³⁰", "2⁶⁰ × 3³⁶"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Matemática','Uma pirâmide quadrangular regular ABCDE foi seccionada pelo plano FGHJ, que dista y cm do
vértice E e que é paralelo à base ABCD. A seção FGHJ constitui a face de um paralelepípedo
retângulo cuja base está contida em ABCD, como ilustra a figura.
E
G 12 cm
A 8 cm B
Considere as seguintes informações:
• a aresta da base ABCD e a altura da pirâmide ABCDE medem, respectivamente, 8 cm e 12 cm;
• a área total do paralelepípedo varia de acordo com o valor de y, sendo 0 < y < 12.
Para que a área do paralelepípedo seja máxima, o valor de y, em centímetros, deve ser:',NULL,'/cbmerj-apoios/2026-q29-p16-figura.png','["7", "8", "9", "10"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Matemática','Para demarcar as 11 vagas de um estacionamento do Corpo de Bombeiros, serão utilizadas
apenas as cores vermelha e branca, de acordo com as seguintes condições:
• para cada vaga deverá ser usada uma única cor;
• deverão ser pintadas pelo menos três vagas de cada cor;
• a primeira e a última vagas deverão ser pintadas de vermelho.
Observe duas formas possíveis de pintar essas vagas:
O número total de formas diferentes de pintar as 11 vagas é igual a:',NULL,'/cbmerj-apoios/2026-q30-p16-figura.png','["464", "465", "466", "467"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Biologia','O ciclo celular de uma célula somática com 2n = 28 divide-se em três fases: intérfase (G1, S e G2),
mitose (prófase, metáfase, anáfase e telófase) e citocinese. Observe a ilustração:
Adaptado de sciencefacts.net.
Admita que, durante a mitose, a divisão celular dessa célula somática ocorra sem qualquer
alteração ou falha.
Nessas condições, o número e o formato dos cromossomos encontrados na fase G2 da intérfase
correspondem, respectivamente, a:',NULL,'/cbmerj-apoios/2026-q31-p17-figura.png','["7 – duplo", "14 – simples", "28 – duplo", "56 – simples"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Biologia','Cepas de Staphylococcus aureus resistente à meticilina apresentam alterações no padrão de
resistência a diferentes agentes antimicrobianos e, por isso, constituem uma das principais causas
de infecções hospitalares. Sabe-se que essa resistência pode ser adquirida, dentre outros fatores,
pela ação de vírus.
Essa ação ocorre durante o processo de geração de variabilidade genética denominado:',NULL,NULL,'["transformação", "conjugação", "replicação", "transdução"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Biologia','A cartilagem é um tecido conjuntivo especializado, ao mesmo tempo rígido e flexível, que atua
na sustentação do corpo por revestir articulações e, com isso, amortecer choques.
Esse tecido é caracterizado pela grande quantidade do seguinte componente:',NULL,NULL,'["terminações nervosas", "irrigação sanguínea", "fibras musculares", "matriz extracelular"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Biologia','Solitárias são vermes que vivem no intestino delgado dos hospedeiros definitivos e, em função
da adaptação a esse modo de vida parasitário, não apresentam aparelho digestório.
Nesses vermes, essa adaptação resulta em maior espaço interno para órgãos do seguinte sistema:',NULL,NULL,'["nervoso", "endócrino", "circulatório", "reprodutor"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Biologia','Pacientes com doença de Chagas podem apresentar perda do peristaltismo, o que causa
dilatações anormais de órgãos como esôfago e cólon, além de constipação grave.
Tais sintomas indicam que a doença provoca disfunção do tecido denominado:',NULL,NULL,'["muscular liso", "conjuntivo denso", "epitelial glandular", "endotelial gástrico"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Biologia','A imunidade adquirida pode se apresentar como uma resposta humoral, que se caracteriza pela
produção de proteínas de defesa denominadas anticorpos.
Essas proteínas são produzidas por linfócitos do seguinte tipo:',NULL,NULL,'["B", "T", "CD4", "CD8"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Biologia','Em corridas de alta intensidade, o aumento do metabolismo anaeróbio do músculo esquelético
resulta em acidose metabólica. Sabe-se que o acúmulo de H+ intracelular interfere diretamente no
retículo sarcoplasmático, alterando sua conformação estrutural e o funcionamento de suas proteínas
transportadoras.
Com base nesses fatores, observa-se que a acidose metabólica está associada principalmente ao
processo de:',NULL,NULL,'["elevação da síntese de ATP", "inibição da liberação de Ca²⁺", "indução do transporte de Na⁺", "redução da degradação de NADH"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Biologia','Um casal formado por uma mulher com sangue do tipo O Rhe um homem com sangue A Rh+
possui um filho com sangue A Rh+. Sabe-se que o pai é heterozigoto para o fator Rh.
A probabilidade de o próximo filho desse casal apresentar eritroblastose fetal é de:',NULL,NULL,'["25%", "50%", "75%", "100%"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Biologia','Em um experimento, pesquisadores realizaram a infusão súbita de paratormônio (PTH) em um
animal, mantendo sua administração contínua por algumas horas. Sabe-se que o PTH atua nos
ossos e rins, além de indiretamente no intestino, modulando as concentrações séricas de cálcio
e fosfato.
O gráfico que representa os resultados encontrados nesse experimento é:',NULL,'/cbmerj-apoios/2026-q39-p19-figura.png','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Biologia','Em uma ilha na qual vive uma população de roedores, há dois tipos principais de fontes de
alimento: sementes muito pequenas e frutos grandes e duros. Roedores com dentes pequenos
conseguem triturar as sementes pequenas; os com dentes grandes são capazes de romper os
frutos grandes. Já roedores com dentes de tamanho intermediário apresentam maior dificuldade
em explorar os dois tipos de alimento, resultando em menor sobrevivência deste grupo.
Esse cenário representa um caso clássico de seleção natural do seguinte tipo:',NULL,NULL,'["estabilizadora", "direcional", "disruptiva", "sexual"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Física','Para analisar um líquido em repouso, contido em um recipiente aberto, um pesquisador verificou a
variação da pressão hidrostática P, em função da profundidade h, no interior do líquido. Observe,
no gráfico, os resultados encontrados e, na tabela, valores da densidade de quatro líquidos:
P (10⁵ N/m²) Líquido Densidade (kg/m³)
1,500 h (m)
Considere a aceleração da gravidade local igual a 10,0 m/s² e a pressão atmosférica igual a
1,0 x 10⁵ N/m².
Com base nos dados apresentados, utilizou-se no experimento o seguinte líquido:',NULL,'/cbmerj-apoios/2026-q41-p20-completo-0.png','["azeite", "glicerina", "óleo diesel", "lubrificante"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Física','De acordo com os postulados da teoria da relatividade especial, de Albert Einstein, dois observadores que possuem movimento relativo entre si observam intervalos de tempo diferentes. Considere um observador P, em repouso na Terra, e um observador N, deslocando-se em uma nave. A relação entre os intervalos de tempo marcados pelos dois observadores é Δt = Δt′/√(1 − v²/c²), sendo Δt o intervalo medido por P, Δt′ o intervalo medido por N, v a velocidade relativa entre os referenciais e c a velocidade da luz no vácuo. Sabe-se que Δt > Δt′. Admita que N realiza uma viagem com velocidade v = 0,75c, sendo Δt′ = 6,6 horas. Nessas condições, o intervalo de tempo Δt dessa viagem, em horas, medido por P, corresponde, aproximadamente, a:',NULL,'/cbmerj-apoios/2026-q42-p20-figura.png','["8", "10", "12", "14"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Física','Em algumas rodovias brasileiras, existem áreas de escape, recurso de segurança que permite a
veículos com problemas de frenagem parar sem causar acidentes, conforme ilustra a imagem.
br.images.search.yahoo.com
Considere que o motorista de um caminhão, com massa total de 12 toneladas e velocidade de
86,4 km/h, está com problemas de frenagem e entra em uma área de escape com desaceleração
de 7,2 m/s².
O módulo do trabalho realizado pela força resultante, em megajoules, até o caminhão parar,
corresponde a cerca de:',NULL,'/cbmerj-apoios/2026-q43-p21-figura.png','["3,5", "4,2", "5,4", "6,6"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Física','Uma das peças fundamentais do desfibrilador é o capacitor, componente eletrônico que
armazena energia elétrica e a descarrega sob a forma de um choque. Essa descarga elétrica, ao
ser aplicada no coração de uma pessoa com arritmia ou fibrilação, pode restabelecer os
batimentos cardíacos. Observe no gráfico a curva de carga do capacitor de um desfibrilador, em
função da tensão elétrica U:
Admitindo que o capacitor seja carregado com uma diferença de potencial de 1200 V, a energia
elétrica, em joules, armazenada nesse capacitor é igual a:',NULL,'/cbmerj-apoios/2026-q44-p21-completo-0.png','["60", "120", "180", "240"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Física','Em um procedimento industrial, a massa de determinado gás, ideal e monoatômico, que está
contida em um recipiente, experimenta um processo de transformação termodinâmica. Nesse
processo, a pressão P, em função do volume V, nesse recipiente, apresenta o comportamento
indicado no gráfico a seguir.
P (10⁵ N/m²)
1 6 0 0 1 8 0 0 3 2 0 0 V (cm³)
Durante tal processo, o calor recebido pelo gás, em joules, é igual a:',NULL,'/cbmerj-apoios/2026-q45-p22-completo-0.png','["650", "690", "730", "770"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Física','Na saída de um quartel do Corpo de Bombeiros, existe, por medida de segurança, um espelho
esférico convexo cujo raio de curvatura apresenta valor, em módulo, de 60 cm. Considere que,
ao sair do quartel em uma viatura, um bombeiro observa um veículo parado, localizado a 7 m
do vértice do espelho.
Nessas condições, a medida do módulo da distância, em centímetros, da imagem do veículo
em relação ao vértice do espelho é, aproximadamente, de:',NULL,NULL,'["29", "25", "19", "17"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Física','Nas teias de aranha, ocorrem vibrações mecânicas que se propagam por seus fios de seda,
permitindo que aranhas cacem suas presas. Considere os seguintes dados para uma situação em
que um pequeno inseto colide contra uma teia:
• distância entre a aranha e o pequeno inseto na teia = 60 cm;
• tensão mecânica igualmente distribuída em todos os fios da teia = 9 x 10⁻³ N;
• densidade linear de cada fio = 4 x 10⁻⁹ kg/m;
• tempo desprezível de reação da aranha.
O intervalo de tempo decorrido, em milissegundos, para que o pulso propagado pela colisão do
inseto na teia seja percebido pela aranha, é igual a:',NULL,NULL,'["0,1", "0,2", "0,4", "0,8"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Física','No projeto de uma cozinha industrial, um eletricista precisa escolher o fio condutor que, ao ser
conectado a uma tensão de 120 V, seja capaz de suportar a potência máxima de 9600 W
consumida quando todos os aparelhos elétricos estão ligados. Para isso, ele analisou fios de um
mesmo material com os seguintes calibres e respectivos diâmetros:
Considere que serão necessários 90 m de fio, com seção reta circular e resistividade elétrica de
aproximadamente 1,8 x 10⁻⁸ Ω∙m.
Considerando π = 3, o diâmetro mínimo do fio condutor a ser escolhido corresponde ao calibre
de número:',NULL,'/cbmerj-apoios/2026-q48-p23-completo-0.png','["I", "II", "III", "IV"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Física','Em um experimento escolar, para determinar a quantidade de água evaporada durante o
processo de ebulição, seguiram-se os seguintes procedimentos, ilustrados pela imagem:
• colocou-se um volume de água dentro de um recipiente posicionado sobre uma balança;
• inseriu-se uma fonte de calor de potência efetiva de 2700 W no interior do recipiente;
• aqueceu-se a água ali contida até 100 ºC;
• em 2 minutos, desligou-se a fonte de calor e mediu-se a massa de água restante no recipiente.
Ao atingir 100 °C Em 2 minutos
Admita que o experimento seja realizado ao nível do mar, que o calor latente de vaporização da
água seja de 540 cal/g e que 1J = 0,24 cal.
A massa de água, em gramas, evaporada durante o processo de ebulição, corresponde a:',NULL,'/cbmerj-apoios/2026-q49-p23-figura.png','["102", "118", "144", "166"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Física','Para determinar a aceleração de um elevador, fixou-se em seu teto uma mola ideal, conectada a
uma massa. Na mola, com o elevador em repouso, mediu-se uma elongação de 5 cm; já com o
elevador em movimento ascendente e acelerado, a elongação era de 6 cm.
Admitindo que a massa seja de 100 g, a aceleração do elevador, em m/s², é de:',NULL,NULL,'["0,5", "1,0", "1,5", "2,0"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','Química','A alantoína, composto orgânico empregado no tratamento de queimaduras, é representada
pela seguinte fórmula estrutural:
A fórmula molecular desse composto é:',NULL,'["/cbmerj-apoios/2026-tabela-periodica.png", "/cbmerj-apoios/2026-q51-p24-completo-0.png"]','["C₄H₅N₄O₃", "C₄H₆N₄O₃", "C₅H₅N₄O₃", "C₅H₆N₄O₃"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','Química','Considere um tipo de detector de fumaça que utiliza uma câmara de ionização com uma pequena
fonte radioativa de amerício-241. Essa fonte emite radiação do tipo alfa, que ioniza o ar, permitindo
a condução de corrente elétrica. Quando a fumaça entra na câmara, partículas em suspensão
bloqueiam parte dessa ionização, interrompendo a corrente e acionando o alarme.
Nesse contexto, no decaimento do ²⁴¹Am, forma-se o seguinte radioisótopo:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["²³⁷Np", "²³⁹Pu", "²⁴²Cm", "²⁴⁵Bk"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','Química','Em capacetes de bombeiros, uma combinação de fibras resistentes e matriz plástica, dentre
outros materiais, forma uma estrutura leve, forte e resistente ao calor. Admita que, em uma
dessas fibras, estão presentes os óxidos CaO, MgO, Na₂O e SiO₂, que foram, separadamente,
colocados em contato com solução aquosa concentrada de KOH. Observe a variação do pH de
um dos quatro óxidos na presença dessa solução:
pH
quantidade de óxido adicionado (mol)
No gráfico, está representado o comportamento do seguinte óxido:',NULL,'["/cbmerj-apoios/2026-q53-p24-figura.png", "/cbmerj-apoios/2026-tabela-periodica.png"]','["CaO", "MgO", "Na₂O", "SiO₂"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','Química','TECNOLOGIA VERDE: BACTÉRIAS AJUDAM A EXTRAIR METAIS RAROS DE BATERIAS VELHAS
Cientistas utilizam bactérias para extrair metais, como zinco, níquel, cobalto e manganês, de
baterias velhas no desenvolvimento de tecnologia verde, que engloba inovações tecnológicas
desenvolvidas para minimizar o impacto ambiental.
Adaptado de oglobo.globo.com, 27/08/2024.
Dentre os metais citados na notícia, o que apresenta o elétron diferenciador 3d⁵, em seus
átomos no estado fundamental, é:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["zinco", "níquel", "cobalto", "manganês"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','Química','Durante a investigação de um incêndio em um armazém químico, uma equipe do Corpo de
Bombeiros encontrou dois frascos intactos, um contendo o líquido A e outro contendo o líquido B.
Após a realização de quatro testes, identificaram-se as seguintes características comuns de A e B:
são isômeros funcionais, solúveis em água, possuem cadeia carbônica saturada e fórmula C₃H₆O.
Um quinto teste, utilizando solução aquosa de KMnO₄ em meio ácido, revelou que apenas o
líquido B sofre oxidação.
O líquido B é denominado:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["propanal", "propanona", "propan-1-ol", "propan-2-ol"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','Química','Admita que, durante um incêndio, uma pessoa permaneceu por vários minutos sem máscara de
respiração, inalando grande quantidade de fumaça, o que aumentou a concentração de dióxido
de carbono em seu sangue. Considere as equações químicas a seguir, que representam os
estados de equilíbrio do dióxido de carbono e do ácido carbônico no sangue.
CO₂(aq) + H₂O(l) ⇌ H₂CO₃(aq)
H₂CO₃(aq) ⇌ H⁺(aq) + HCO₃⁻(aq)
No organismo humano, a consequência imediata dessa inalação é:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["alcalose respiratória em função do deslocamento dos equilíbrios das reações para a esquerda, que reduz a concentração de íons H⁺", "acidose respiratória em função do deslocamento dos equilíbrios das reações para esquerda, que aumenta a concentração de íons H⁺", "acidose respiratória em função do deslocamento dos equilíbrios das reações para a direita, que aumenta a concentração de íons H⁺", "alcalose respiratória em função do deslocamento dos equilíbrios das reações para a direita, que reduz a concentração de íons H⁺"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','Química','Uma solução aquosa de metanal, substância tóxica de aplicação medicinal e industrial, apresenta
concentração percentual em massa de 37% e densidade de 1150 g/L.
A concentração dessa solução, em mol/L, corresponde, aproximadamente, a:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["14,2", "18,4", "22,6", "26,8"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','Química','Em um processo metalúrgico, obteve-se zinco metálico a partir de 487,5 kg de um minério.
Sabe-se que essa massa contém 80% de sulfeto de zinco. Observe a sequência de reações
químicas envolvidas nesse processo:
2 ZnS(s) + 3 O₂(g) → 2 ZnO(s) + 2 SO₂(g)
ZnO(s) + CO(g) → Zn(s) + CO₂(g)
Admitindo rendimento de 100% nas reações descritas, a massa de zinco metálico obtida, em
quilogramas, corresponde a:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["131", "262", "393", "524"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Química','Pesquisas indicam que são recorrentes acidentes domésticos causados pelo uso de solução
aquosa de etanol 70% v/v, já que sua queima libera grande quantidade de energia, aumentando
as chances de queimaduras e incêndios. Considere a equação química de reação de combustão
do etanol e observe na tabela as entalpias-padrão de formação das substâncias compostas
participantes dessa reação:
C₂H₅OH(l) + 3 O₂(g) → 2 CO₂(g) + 3 H₂O(l)
Consulte a tabela de entalpias de formação no apoio.
Admita que a densidade do etanol é de 0,8 g/mL e que foi realizada a combustão completa de
10 L de solução aquosa dessa substância.
A energia, em quilojoules, liberada nessa combustão é, aproximadamente, de:',NULL,'["/cbmerj-apoios/2026-tabela-periodica.png", "/cbmerj-apoios/2026-q59-p26-completo-0.png"]','["1,7 x 10³", "3,4 x 10⁴", "1,7 x 10⁵", "3,4 x 10⁶"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Química','Em um procedimento de inspeção de equipamentos de bombeiros, identificou-se corrosão em
uma peça metálica. Para ser recuperada, a peça foi submetida à eletrodeposição de cobre durante
40 minutos. Nesse processo, a peça foi mantida imersa em uma solução aquosa de CuSO , sendo
conectada ao polo negativo de uma bateria, sob uma corrente de 3,0 ampères, enquanto um
eletrodo de cobre foi conectado ao polo positivo, conforme ilustra o esquema a seguir.
A massa de cobre, em gramas, depositada na peça, possui o seguinte valor aproximado:',NULL,'["/cbmerj-apoios/2026-q60-p27-figura.png", "/cbmerj-apoios/2026-tabela-periodica.png"]','["1,27", "2,37", "3,96", "5,08"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Geografia','Considere a seguinte legenda de produtos exportados por quatro países:
Com base na reportagem e no atual contexto do comércio global, e considerando a legenda
apresentada, a proporção dos produtos que compõem a pauta de exportações da China está
representada em:','Do século XX para cá, o custo do transporte marítimo e aéreo despencou em todo o mundo.
Isso permitiu que as economias dos países se tornassem mais interligadas e dependentes
do comércio exterior. Olhando a matriz de produtos que um país exporta para o mundo, é
possível ter uma visão sobre diversos fatores de sua economia. Países mais ricos normalmente
têm uma economia diversificada, exportando produtos agrícolas e todo tipo de produtos
industrializados. Alguns, porém, são dependentes de um único produto (como do petróleo e
derivados, no Golfo Pérsico), o que pode deixá-los vulneráveis a variações de preço.
Gabriel Zanlorenssi e Mariana Froner
Adaptado de nexojornal.com.br, 14/03/2024.','["/cbmerj-apoios/2026-q61-p28-completo-0.png", "/cbmerj-apoios/2026-q61-p28-completo-1.png"]','["Diagrama A, apresentado no apoio.", "Diagrama B, apresentado no apoio.", "Diagrama C, apresentado no apoio.", "Diagrama D, apresentado no apoio."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Geografia','A configuração espacial do indicador apresentado no mapa é consequência do seguinte processo
desse país:','ÍNDICE DE DESENVOLVIMENTO HUMANO NA ITÁLIA
Adaptado de reddit.com.','/cbmerj-apoios/2026-q62-p29-figura.png','["disparidade climática nacional", "desigualdade econômica regional", "desagregação política do território", "distribuição histórica da população"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Geografia','As variações espaciais em relação ao horário em que anoitece no Brasil são explicadas,
principalmente, por diferenças vinculadas ao seguinte fator:','Mapa: horário local em que o céu ficou escuro no Brasil no dia 21/12/2024, sem horário de verão. Fonte: Nexo Jornal. Consulte o mapa no apoio visual.','/cbmerj-apoios/2026-q63-p30-figura.png','["altitude", "latitude", "longitude", "maritimidade"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Geografia','A medida anunciada pelo poder público da cidade de Barcelona tem como objetivo conter a
ocorrência do seguinte processo socioespacial nas áreas turísticas dessa cidade:','No final de junho, o prefeito de Barcelona anunciou uma medida drástica para conter
consequências graves da exploração turística desenfreada: a falta de moradia e os preços
exorbitantes de aluguel e compra de imóveis.
Na prática, até 2028, serão extintos todos os apartamentos de aluguel de curta temporada da
cidade. As 10 mil licenças oficiais atualmente em vigor não serão renovadas, e nenhuma nova
será concedida. De acordo com o prefeito, esses 10 mil imóveis serão vendidos ou alugados
para os residentes da cidade.
Susana Bragatto
Adaptado de folha.uol.com.br, 07/07/2024.',NULL,'["conurbação", "terciarização", "gentrificação", "verticalização"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Geografia','Entre as principais consequências da elevação do nível do mar para o atual território de Tuvalu,
está:','CRISE CLIMÁTICA EM TUVALU: 80% DA POPULAÇÃO BUSCA
VISTO HUMANITÁRIO PARA VIVER NA AUSTRÁLIA
Tuvalu, arquipélago localizado entre a Austrália e o Havaí, é uma das nações mais vulneráveis
às mudanças climáticas. Com uma elevação média de apenas 2 metros acima do nível do mar,
o país sofre diretamente os efeitos do aquecimento global. Frente a esse cenário, o governo de
Tuvalu firmou, em 2023, um acordo inédito com a Austrália, criando um visto humanitário
que permitirá a migração planejada e digna dos cidadãos tuvaluanos. Em território
australiano, eles poderão viver, trabalhar e estudar, com acesso a serviços equivalentes aos
habitantes locais.
Adaptado de epocanegocios.globo.com, 25/07/2025.',NULL,'["erosão costeira", "laterização dos solos", "pluviosidade decrescente", "temperatura ascendente do ar"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Geografia','Conhecida pela distorção de áreas na elaboração de mapas, a projeção de Mercator é
classificada como:','O QUE É A PROJEÇÃO DE MERCATOR E POR QUE PAÍSES AFRICANOS
QUEREM PARAR DE USÁ-LA PARA CRIAR MAPAS DO MUNDO
A União Africana, organização que reúne todos os Estados africanos, aderiu a uma campanha
para que se deixe de utilizar a projeção de Mercator nos mapas-múndi. Chamada Correct The
Map (“Corrijam o Mapa”, em português), a campanha busca evitar que governos, organizações,
escolas e empresas representem o continente africano em menor tamanho do que ele realmente é.
A projeção de Mercator, inventada no século XVI pelo cartógrafo europeu Gerardus Mercator,
representa em maior proporção o tamanho dos territórios mais próximos aos polos, como a
América do Norte e a Europa, em relação àqueles situados perto da linha do Equador, como
a África e a América do Sul.
Adaptado de bbc.com, 19/08/2025.',NULL,'["plana afilática", "azimutal transversa", "cônica equivalente", "cilíndrica conforme"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Geografia','Dentre os biomas florestais brasileiros, há dois com diversas semelhanças, como a biodiversidade,
mas, também, com diferenças marcantes.
Uma característica que distingue esses dois biomas se refere ao seguinte elemento físico-natural:',NULL,'/cbmerj-apoios/2026-q67-p32-figura.png','["vegetação densa", "relevo predominante", "pluviosidade elevada", "intemperismo intenso"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Geografia','De acordo com a notícia, entre 2012 e 2024, houve mudanças sociais e demográficas relacionadas
a arranjos familiares e a formas de habitar o espaço urbano no Brasil.
Uma causa para o aumento percentual do tipo de domicílio abordado na notícia é:','DADOS DO IBGE MOSTRAM CRESCIMENTO DO NÚMERO DE LARES UNIPESSOAIS
O número de pessoas que vivem sozinhas no Brasil está crescendo. Os domicílios unipessoais,
aqueles com apenas um morador, passaram de 12,2% em 2012 para 18,6% em 2024, um
aumento de 6,4 pontos percentuais em 12 anos. Os dados fazem parte da Pesquisa Nacional
por Amostra de Domicílios Contínua (PNAD Contínua), divulgada pelo Instituto Brasileiro
de Geografia e Estatística (IBGE). As famílias nucleares, aquelas com mais de um componente,
continuam sendo maioria, representando 65,7% dos lares em 2024, mas a participação caiu
4% no mesmo período.
Adaptado de g1.globo.com, 22/08/2025.',NULL,'["elevação dos salários", "aumento da natalidade", "legalização do teletrabalho", "envelhecimento da população"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Geografia','A concentração de renda na Europa sofreu uma forte queda no século XX, principalmente a partir
da Segunda Guerra Mundial. Entretanto, a partir dos anos 1980, há uma mudança nessa tendência.
Um fator que explica essa mudança é:','DISPARIDADES HISTÓRICAS NA EUROPA:
PERCENTUAL DA RENDA NACIONAL CONCENTRADA ENTRE OS 10% MAIS RICOS
50%
45%
40%
35%
30%
25%
1900 1920 1940 1960 1980 2000
Fonte: World Inequality Database','/cbmerj-apoios/2026-q69-p33-figura.png','["aumento da atuação de movimentos sindicais", "fechamento de fronteiras para fluxos financeiros", "enfraquecimento das políticas de bem-estar social", "desenvolvimento da tecnologia de atividades produtivas"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Geografia','Consulte os mapas da taxa de fertilidade por país e região, referentes a 1950 e 2023, no apoio. De acordo com a análise desses mapas, as pirâmides etárias que representam o conjunto da população mundial em 1950 e em 2023 são, respectivamente:',NULL,'["/cbmerj-apoios/2026-q70-p34-figura.png", "/cbmerj-apoios/2026-q70-p35-completo-1.png"]','["Par de pirâmides A, apresentado no apoio.", "Par de pirâmides B, apresentado no apoio.", "Par de pirâmides C, apresentado no apoio.", "Par de pirâmides D, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','História','Desembarque de Pedro Álvares Cabral em Porto Seguro em 1500, de Oscar Pereira da Silva. Óleo sobre tela, 1900.
enciclopedia.itaucultural.org.br
A imagem reproduz a tela do início do século XX, de autoria de Oscar Pereira da Silva, que
buscou representar a chegada dos portugueses em terras americanas e a maneira como teria
acontecido esse encontro entre europeus e indígenas.
Um aspecto da representação desse encontro, destacado na tela, é:',NULL,'/cbmerj-apoios/2026-q71-p36-figura.png','["caráter pacífico", "igualdade bélica", "disputa civilizacional", "compartilhamento cultural"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','História','De acordo com o texto, o Romantismo foi um movimento sociocultural que marcou a paisagem
histórica europeia, sobretudo na primeira metade do século XIX, sendo associado a diversos
projetos políticos de natureza utópica.
Nesse contexto, a dimensão utópica do comunismo se caracterizou, principalmente, pela
seguinte proposta:','A ambiguidade do pensamento romântico caracterizou-se exatamente por combinar ora
uma atitude, ora outra, numa busca desenfreada, talvez sem paralelo em outras épocas,
para encontrar uma explicação global da realidade, uma explicação cósmica, combinando
unidade e diversidade, continuidade e transformação. Daí o autêntico canteiro de projetos
que foi o período 1815-1848: do nacionalismo ao comunismo, da tecnocracia industrialista
à democracia igualitária − todos foram profundamente marcados por esse traço romântico,
que via todas as coisas despidas de qualquer estabililidade e potencialmente colocadas, sem
exceção, no limiar de uma nova época.
Elias Thomé Saliba
Adaptado de As utopias românticas. São Paulo: Estação Liberdade, 2003.',NULL,'["regulação da acumulação capitalista", "controle da Bolsa de Valores", "fim da sociedade de classes", "criação das leis trabalhistas"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','História','A imagem e o texto retratam o grande incêndio, ocorrido em Londres, na Inglaterra, na segunda
metade do século XVII. Naquela conjuntura, incêndios difíceis de serem controlados eram
relativamente comuns em cidades europeias.
Incêndios com tais proporções, naquela conjuntura, estavam associados ao seguinte fator:','O grande incêndio de Londres em 1666, derivado da obra de Jan Griffier. Óleo sobre tela, 1675.
londonmuseum.org.uk
O grande incêndio de Londres ardeu por quatro dias, destruindo grande parte da cidade.
Quando o incêndio começou na padaria de Thomas Farriner, nas primeiras horas do dia 2
de setembro de 1666, ninguém poderia imaginar a destruição que causaria. Em uma cidade
onde fogueiras eram usadas para aquecimento e iluminação, incêndios eram comuns. Aliás,
o prefeito Thomas Bloodworth não se preocupou ao ver as chamas e voltou para a cama.
Mas o fogo se alastrou rapidamente, alimentado por ventos fortes, pela proximidade dos
prédios e pelo calor do verão, que havia ressecado a madeira e a palha usadas na construção
das casas. Como resultado, uma área de mais de dois quilômetros ao longo do rio Tâmisa foi
completamente destruída. Mas com isso surgiu a oportunidade de reconstruir a cidade. Um
decreto real interrompeu a construção até que novas regulamentações fossem emitidas.
Adaptado de bbc.com, 31/07/2016.','/cbmerj-apoios/2026-q73-p37-figura.png','["crescimento urbano industrial", "habitações populares precárias", "agravamento da crise climática", "instalações de energia deficitárias"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','História','No texto, mencionam-se práticas de agricultura registradas por naturalistas estrangeiros.
No Brasil, no século XIX, tais práticas visavam a promover nas regiões Sudeste e Centro-Oeste,
respectivamente, as seguintes atividades econômicas:','No final do século XVIII e ao longo do XIX, as queimadas e os desmatamentos praticados por
agricultores foram debatidos pelas elites políticas e científicas ao redor do mundo, compondo
a primeira crítica ambiental da história moderna. De acordo com esse debate, que tomou
corpo nas colônias europeias em ilhas ao redor do mundo, na Índia e em diversas partes
das Américas e do Caribe, se nada fosse feito para modernizar as práticas agrícolas, as terras
perderiam suas reservas de madeira e seriam afligidas pela erosão, pela perda de solo fértil e
pelo dessecamento, o que poderia transformá-las em desertos.
André S. Bailão
Adaptado de Histórias do fogo e das transformações de paisagens no Brasil Central para naturalistas estrangeiros no século XIX.
Estudos Históricos, Rio de Janeiro, vol. 36, no 80, set.-dez. 2023.',NULL,'["prospecção mineral e plantio de soja", "exportação cafeeira e criação de gado", "expansão industrial e extração de borracha", "produção canavieira e refinamento de açúcar"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','História','Durante a presidência de João Batista Figueiredo (1979-1985), a veiculação do programa de TV
citado cumpria os seguintes propósitos políticos:','A concessão da TVS foi dada a Silvio Santos durante a presidência de Figueiredo. Logo depois,
o apresentador criou um programa para divulgar os feitos do regime. O miniprograma A
Semana do Presidente, custeado pelo Estado, era uma espécie de boletim que mostrava os
eventos aos quais o presidente havia comparecido nos dias precedentes.
Adaptado de memoriasdaditadura.org.br.','/cbmerj-apoios/2026-q75-p38-figura.png','["promover o militarismo e assegurar o civismo popular", "difundir o cristianismo e promover a moralidade religiosa", "estimular o ufanismo e elevar a popularidade governamental", "exaltar o desenvolvimentismo e combater o analfabetismo funcional"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','História','A quebra da Bolsa de Nova York, em 1929, ocasionou uma crise econômica de proporções
grandiosas.
A partir da imagem e do texto, um dos efeitos dessa crise para a sociedade norte-americana, na
década de 1930, foi:','Barracos de ocupantes ilegais ao longo do rio Willamette, em Portland.
Fotografia de Arthur Rothstein, 1936.
A fotografia reproduzida acima, de 1936, retrata os barracos onde viviam ocupantes ilegais
ao longo do rio Willamette, em Portland, no Oregon, Estados Unidos. Muitos deles, durante
o inverno, trabalhavam nos pomares próximos do vale de Willamette e, no verão, no vale
de Yakima.
Adaptado de hdl.loc.gov.','/cbmerj-apoios/2026-q76-p39-figura.png','["dinamização das atividades laborais", "desarticulação da mão de obra rural", "insalubridade das condições de trabalho", "elevação da empregabilidade do imigrante"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','História','O incêndio do Gran Circo, em Niterói, até hoje gera debates sobre suas causas. Infelizmente, não
foi um fato isolado na história do país, como demonstram os demais casos citados.
Uma consequência comum para a memória produzida por episódios como esses e uma ação
para evitá-los estão indicados, respectivamente, em:','O incêndio do Gran Circo,
em Niterói, aconteceu em 17
de dezembro de 1961 e durou
apenas 10 minutos. Mas
deixou, segundo estimativas
oficiais, 503 mortos – sete
em cada dez eram crianças.
“Jamais tantos brasileiros
morreram em tão pouco
tempo e no mesmo lugar”,
afirma Mauro Ventura,
jornalista e autor de um livro
sobre o tema. O incêndio da Boate Kiss, em 27 de janeiro de 2013, registrou 242 vítimas fatais
e o do edifício Joelma, em 1º de fevereiro de 1974, 188.
O fato gerou comoção nacional e internacional. O papa João XXIII (1881-1963) mandou rezar
uma missa em homenagem às vítimas. O Fundo das Nações Unidas para a Infância (Unicef)
doou a quantia de 1 milhão de cruzeiros. E o Santos de Pelé (1940-2022) e o Botafogo de
Garrincha (1933-1983) fizeram uma partida beneficente no Maracanã.
De acordo com a historiadora Ana Maria Mauad, do Laboratório de História Oral e Imagem
(LABHOI) da Universidade Federal Fluminense (UFF), “deixaram instalar um circo para
mais de 500 pessoas com lona altamente inflamável e sem controle de segurança das
instalações elétricas”.
Adaptado de bbc.com, 04/04/2023.','/cbmerj-apoios/2026-q77-p40-figura.png','["trauma coletivo e ampliação da fiscalização", "batalha narrativa e proibição do licenciamento", "esquecimento social e pagamento de indenização", "silenciamento forçado e responsabilização do governo"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','História','O 11 de Setembro, abordado na reportagem, foi um acontecimento decorrente da disseminação,
no século XXI, da seguinte ideologia política:','Poucos acontecimentos ganham lugar na história com o nome de sua data. O simples marco
no calendário já sugere uma nova realidade, como o 4 de Julho (independência dos E.U.A.),
o 14 de Julho (queda da Bastilha na França) ou, no Brasil, o 7 de Setembro.
No século XXI, um acontecimento é universalmente conhecido por sua data: o 11 de
Setembro. Nesse dia, em 2001, os Estados Unidos sofreram o maior ataque a seu território
desde o bombardeio japonês à base de Pearl Harbor, no Havaí, em 1941.
Em cerimônias oficiais, como a que lembrou o quinto aniversário do 11 de Setembro, em
2006, foi feita referência a mais de 90 países representados entre os 2977 mortos. Até o final
de 2018, mais de 2 mil pessoas morreram de doenças associadas à exposição a materiais
perigosos naquele dia, particularmente de câncer.
Adaptado de bbc.com, 10/09/2021.','/cbmerj-apoios/2026-q78-p41-figura.png','["terrorismo socialista", "islamismo secularizado", "nacionalismo exacerbado", "fundamentalismo religioso"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','História','Tony d’Agostinho
acaricatura.com
A intensificação da jornada diária, retratada na charge, está associada ao atual processo de:',NULL,'/cbmerj-apoios/2026-q79-p42-figura.png','["desregulamentação do mercado empregatício", "plataformização do trabalho informal", "oficialização do vínculo corporativo", "flexibilização da legislação laboral"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','História','Na charge, a frase “depois que o bolo crescer, a gente divide” remete a uma estratégia utilizada
pelos governos militares (1964-1985) no Brasil, no contexto de ações implementadas durante o
chamado “milagre econômico”, período situado entre 1968 e 1973.
Dois resultados do “milagre econômico”, naquela conjuntura política, foram:','André Dahmer
Adaptado de Folha de S. Paulo, 25/09/2025.','/cbmerj-apoios/2026-q80-p42-figura.png','["regulação monetária e desaceleração do consumo", "redução da inflação e congelamento dos gastos estatais", "incremento do produto interno bruto e elevação dos salários", "aumento da dívida externa e ampliação da desigualdade social"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-espanhol' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2026-cfo-espanhol');

insert into public.exams(slug,title,source,year) values ('cbmerj-2026-cfo-ingles','CBMERJ 2026 · Curso de Formação de Oficiais · Inglês','cbmerj','2026') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'1','Língua Portuguesa','O ponto de partida da crônica de Sérgio Rodrigues é uma série fictícia de televisão chamada
“Ruptura”.
A finalidade dessa referência é:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["valorizar o relato", "postergar o assunto", "conscientizar o leitor", "contextualizar o tema"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'2','Língua Portuguesa','No primeiro parágrafo, faz-se referência ao eufemismo “colaborador”, utilizado no lugar de
“empregado”. Do ponto de vista legal, não há conotação negativa no termo “empregado”.
Logo, o que o eufemismo “colaborador” procura suavizar é a relação, entre empregador e
empregado, de:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["indignação", "humilhação", "exploração", "negação"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'3','Língua Portuguesa','Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: (l. 5)
O trecho exemplifica um caso de elipse.
A marca gramatical que permite a recuperação do termo em elipse, no trecho, é:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["transitividade verbal", "paralelismo sintático", "concordância verbal", "inversão sintática"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'4','Língua Portuguesa','Os sufixos presentes nos vocábulos colaborador e colaboracionismo expressam, respectivamente,
as ideias de:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["origem – agente", "agente – doutrina", "ocupação – origem", "doutrina – ocupação"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'5','Língua Portuguesa','Os adjetivos, ao determinarem o substantivo, podem expressar valores mais opinativos ou mais
descritivos.
O adjetivo de natureza essencialmente descritiva está destacado em:
Os trechos entre ⟦ ⟧ estavam sublinhados no caderno original.','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.',NULL,'["A estreia da segunda temporada da ⟦magnífica⟧ série “Ruptura” nos dá a oportunidade de refletir sobre o mais bem-sucedido eufemismo corporativo do nosso tempo: (l. 1-2)", "Por meio do implante de um chip ⟦cerebral⟧, têm suas memórias bifurcadas: fora da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora. (l. 5-6)", "é bem ⟦difícil⟧ contestar a ideia de que acolchoar os atritos da realidade com palavras bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das pessoas. (l. 26-28)", "O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada ⟦brilhante⟧ do primeiro hominídeo que anunciou que iria “dar um pulo ali na moita”. (l. 29-30)"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'6','Língua Portuguesa','Os títulos dos textos I e II apontam para abordagens diferentes de um mesmo tema. No
primeiro, o título resume a tese principal. No segundo, o substantivo que compõe o título
remete à conclusão final.
Esse substantivo expressa a seguinte figura de linguagem:','TEXTO I
POR QUE O EMPREGADO AGORA É COLABORADOR?
A estreia da segunda temporada da magnífica série “Ruptura” nos dá a oportunidade de refletir sobre o
mais bem-sucedido eufemismo corporativo do nosso tempo: “colaborador”.
Na comédia distópica dirigida por Ben Stiller, a poderosa Lumon, empresa-polvo de estética fascista,
mantém um departamento em que empregados se submetem voluntariamente a um experimento radical
5 de alienação do trabalho. Por meio do implante de um chip cerebral, têm suas memórias bifurcadas: fora
da empresa, nada sabem do que fazem lá dentro; quando estão dentro, ignoram a vida que levam fora.
São os colaboradores perfeitos.
No mundo em que o chip da Lumon ainda não existe (que se saiba), cabe à linguagem o mesmo
trabalho. Em sites uníssonos, a velha turma do setor de Recursos Humanos – também renomeado
10 para “gestão de pessoas” – explica que a palavra empregado tornou-se arcaica. Empresas modernas
contratam colaboradores.
Um parêntese: a CLT (Consolidação das Leis do Trabalho) continua a chamar de empregado quem, não
detendo meios de produção, trabalha em troca de salário. Claro que para os gurus do colaboracionismo,
interessados em sucatear a CLT, isso só atesta a beleza de sua “novilíngua”. Cito um desses manuais:
15 “Enquanto o empregado, em dias atuais, chega na empresa, faz o seu trabalho e vai embora, o colaborador
tem a consciência da sua importância na organização, possui uma visão sistêmica do seu setor ou da
empresa como um todo, incluindo suas metas e objetivos, e não mede esforços para ‘colaborar’ com isso”.
Ênfase em “não mede esforços”!
Não se chegou de um dia para o outro a esse nível de cinismo no mascaramento da natureza dos
20 contratos de trabalho firmados entre partes desiguais – patrões de um lado, empregados do outro. O
percurso linguístico rumo ao colaborador incluiu um estágio em que se favoreceu a palavra funcionário
(por tradição mais usada para o empregado do setor público) e até desvios burlescos como o de chamar
empregadas domésticas de secretárias.
Também é parte desse fenômeno a onda de eufemização que varreu o mundo de meio século para cá –
25 puxada, nesse caso, por setores progressistas da sociedade. Hoje em dia, a menos que você seja um ogro
de extrema direita, é bem difícil contestar a ideia de que acolchoar os atritos da realidade com palavras
bonitas – substituindo “mendigo” por “pessoa em situação de rua”, por exemplo – melhora a vida das
pessoas. Mesmo que elas continuem sem ter onde morar.
O eufemismo pode ser um aliado do processo civilizatório, como prova a sacada brilhante do primeiro
30 hominídeo que anunciou que iria “dar um pulo ali na moita”. Pode também ser – o que talvez seja mais
frequente – pura embromação. É preciso examinar caso a caso. O eufemismo da atual consagração de
colaborador como sinônimo preferível de empregado está claramente a serviço do desmonte de um
aparato histórico de proteção dos direitos dos trabalhadores.
Ainda melhor do que ser colaborador, claro, é dar dinheiro para um coach e virar “empreendedor
35 individual”. Mas esse chip os laboratórios da Lumon ainda estão aperfeiçoando. Deve ficar para a
terceira temporada.
SÉRGIO RODRIGUES
Adaptado de folha.uol.com.br, 15/01/2025.

TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["metáfora", "paradoxo", "hipérbole", "prosopopeia"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'7','Língua Portuguesa','O nome do personagem central é grafado com a inicial em minúscula, mesmo no início dos
períodos, o que revela um índice do processo de transformação por que passa o personagem.
Esse processo é denominado:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["reificação", "estagnação", "discriminação", "desmistificação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'8','Língua Portuguesa','Agora joão acordava às cinco da manhã. Esperava três conduções. (l. 14)
No trecho, as formas verbais encontram-se no pretérito imperfeito do modo indicativo,
expressando a noção de:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["hipótese", "recorrência", "eventualidade", "simultaneidade"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'9','Língua Portuguesa','No texto II, observa-se a predominância de períodos simples.
Essa predominância pode ser associada ao seguinte aspecto da vida do personagem central:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["empobrecimento da existência", "inconsistência da submissão", "complexidade do trabalho", "intermitência da ação"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'10','Língua Portuguesa','A noção semântica de propósito está expressa por meio de um verbo em:','TEXTO II
O ARQUIVO
No fim de um ano de trabalho, joão obteve uma redução de quinze por cento em seus vencimentos.
joão era moço. Aquele era seu primeiro emprego. Não se mostrou orgulhoso, embora tenha sido um
dos poucos contemplados. Afinal, esforçara-se. Não tivera uma só falta ou atraso. Limitou-se a sorrir, a
agradecer ao chefe.
5 No dia seguinte, mudou-se para um quarto mais distante do centro da cidade. Com o salário reduzido,
podia pagar um aluguel menor.
Passou a tomar duas conduções para chegar ao trabalho. No entanto, estava satisfeito. Acordava mais
cedo, e isto parecia aumentar-lhe a disposição.
Dois anos mais tarde, veio outra recompensa.
10 O chefe chamou-o e lhe comunicou o segundo corte salarial.
Desta vez, a empresa atravessava um período excelente. A redução foi um pouco maior: dezessete por
cento.
Novos sorrisos, novos agradecimentos, nova mudança.
Agora joão acordava às cinco da manhã. Esperava três conduções. Em compensação, comia menos. Ficou
15 mais esbelto. Sua pele tornou-se menos rosada. O contentamento aumentou.
Prosseguiu a luta.
Porém, nos quatro anos seguintes, nada de extraordinário aconteceu.
joão preocupava-se. Perdia o sono, envenenado em intrigas de colegas invejosos. Odiava-os. Torturava-se
com a incompreensão do chefe. Mas não desistia. Passou a trabalhar mais duas horas diárias.
20 Uma tarde, quase ao fim do expediente, foi chamado ao escritório principal.
Respirou descompassado.
– Seu joão. Nossa firma tem uma grande dívida com o senhor.
joão baixou a cabeça em sinal de modéstia.
– Sabemos de todos os seus esforços. É nosso desejo dar-lhe uma prova substancial de nosso reconhecimento.
25 O coração parava.
– Além de uma redução de dezesseis por cento em seu ordenado, resolvemos, na reunião de ontem,
rebaixá-lo de posto.
A revelação deslumbrou-o. Todos sorriam.
– De hoje em diante, o senhor passará a auxiliar de contabilidade, com menos cinco dias de férias. Contente?
30 Radiante, joão gaguejou alguma coisa ininteligível, cumprimentou a diretoria, voltou ao trabalho.
Nesta noite, joão não pensou em nada. Dormiu pacífico, no silêncio do subúrbio.
Mais uma vez, mudou-se. Finalmente, deixara de jantar. O almoço reduziu-se a um sanduíche. Emagrecia,
sentia-se mais leve, mais ágil. Não havia necessidade de muita roupa. Eliminara certas despesas inúteis,
lavadeira, pensão.
35 Chegava em casa às onze da noite, levantava-se às três da madrugada. Esfarelava-se num trem e dois
ônibus para garantir meia hora de antecedência.
A vida foi passando, com novos prêmios.
Aos sessenta anos, o ordenado equivalia a dois por cento do inicial. O organismo acomodara-se à fome.
Uma vez ou outra, saboreava alguma raiz das estradas. Dormia apenas quinze minutos. Não tinha mais
40 problemas de moradia ou vestimenta. Vivia nos campos, entre árvores refrescantes, cobria-se com os
farrapos de um lençol adquirido há muito tempo.
O corpo era um monte de rugas sorridentes.
Todos os dias, um caminhão anônimo transportava-o ao trabalho.
Quando completou quarenta anos de serviço, foi convocado pela chefia:
45 – Seu joão. O senhor acaba de ter seu salário eliminado. Não haverá mais férias. E sua função, a partir de
amanhã, será a de limpador de nossos sanitários.
O crânio seco comprimiu-se. Do olho amarelado, escorreu um líquido tênue. A boca tremeu, mas nada
disse. Sentia-se cansado. Enfim, atingira todos os objetivos. Tentou sorrir:
– Agradeço tudo que fizeram em meu benefício. Mas desejo requerer minha aposentadoria.
50 O chefe não compreendeu:
– Mas seu joão, logo agora que o senhor está desassalariado? Por quê? Dentro de alguns meses terá de
pagar a taxa inicial para permanecer em nosso quadro. Desprezar tudo isto? Quarenta anos de convívio?
O senhor ainda está forte. Que acha?
A emoção impediu qualquer resposta.
55 joão afastou-se. O lábio murcho se estendeu. A pele enrijeceu, ficou lisa. A estatura regrediu. A cabeça
se fundiu ao corpo. As formas desumanizaram-se, planas, compactas. Nos lados, havia duas arestas.
Tornou-se cinzento.
joão transformou-se num arquivo de metal.
VICTOR GIUDICE (1972)
Em: MORICONI, Ítalo (org.). Os cem melhores contos brasileiros do século. Rio de Janeiro: Objetiva, 2000.',NULL,'["Não se mostrou orgulhoso, (l. 2)", "Passou a trabalhar mais duas horas diárias. (l. 19)", "O organismo acomodara-se à fome. (l. 38)", "Mas desejo requerer minha aposentadoria. (l. 49)"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'11','Inglês','The text addresses the theme of burnout and how right-to-disconnect laws could help improve
workers’ well-being.
The adoption of such laws is likely to result in:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["benefits to employees and management", "optimization of skills and competencies", "development of rules and regulations", "stimulus to learning and achievement"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'12','Inglês','The use of a 1st person account in the opening paragraph has the following effect on the readers:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["defiance", "authority", "closeness", "detachment"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'13','Inglês','Over time, however, I found myself falling into bad habits that I knew were a no-no, (l. 4-5)
The fragment above introduces a contrast between two aspects, as stated in:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["worker demand and managerial duty", "systematic study and business guidelines", "personal ambition and corporate policies", "theoretical knowledge and practical application"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'14','Inglês','However, this didn’t stop me. (l. 8)
By stating the above, the author admits that he overlooked his knowledge of the following factor:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["working hours", "research results", "employee well-being", "productivity decrease"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'15','Inglês','Now the law is stepping in, whether weak-willed managers like me like it or not. (l. 9)
In the fragment above, the word like has different meanings.
These can be roughly paraphrased, respectively, as:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["as if – admire", "such as – desire", "similar to – fancy", "equal to – choose"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'16','Inglês','In the fourth paragraph, the arguments from Len Shackleton and Opeyemi Akanbi, when
presented together, serve the purpose below:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["disobey laws", "doubt lawmakers", "criticize legislations", "disregard regulations"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'17','Inglês','The author uses the word surprising (l. 23) in relation to the results of the study in order to:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["express unexpectedness", "show disapproval", "deny arguments", "report bias"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'18','Inglês','The fragment need to be accompanied (l. 29) emphasizes the idea of:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["choice", "capability", "likelihood", "requirement"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'19','Inglês','The author’s arguments in support of right-to-disconnect legislation for bosses are textually
organized by two markers.
These markers are:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["if – such as", "first – second", "although – yet", "even though – still"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'20','Inglês','According to the last sentence of the article, the right to disconnect would bring the following
benefit:','I’M A BOSS – PLEASE, BAN ME FROM OUT-OF-HOURS
EMAILS AND CALLS, AND SAVE ME FROM MYSELF
I have a secret that I need to own up to: sometimes I’m a bad boss. After spending a couple of decades
studying management and leadership, during the last couple of years I have been leading a large business
school in London. When I took on the role, I wanted to try to bring an evidence-based approach to my
leadership position and, initially, I used the relevant science to guide my actions. Over time, however, I
5 found myself falling into bad habits that I knew were a no-no, according to the research.
One of these was contacting my co-workers out of working hours. I knew there was plenty of research
that finds that out-of-work-hours communication is generally bad for employee well-being, and can also
be bad for productivity. However, this didn’t stop me.
Now the law is stepping in, whether weak-willed managers like me like it or not. In 2017, for example,
10 France implemented a law that required larger employers to put in place “mechanisms for regulating
the use of digital tools, with a view to ensuring respect for rest periods and leave as well as personal and
family life”. The Australian federal government has passed its own “right to disconnect” legislation. This
makes it illegal to require employees to respond to communication or join work calls out of reasonable
working hours.
15 These kinds of laws have received inevitable pushback. Len Shackleton, from the Institute of Economic
Affairs thinktank, pointed out that right-to-disconnect rules will remove a degree of flexibility required
in fast-changing workplaces. Others have said the legislation does not go far enough. Opeyemi Akanbi,
of Toronto Metropolitan University, pointed out that rules are unlikely to be properly implemented by
employers, and they do not address underlying problems such as the difficulty of disconnecting in highly
20 fluid forms of knowledge work.
While both these criticisms may be true, the evidence of the impact of right-to-disconnect laws in Europe
seems to be relatively positive. A recent large-scale study found that eight out of 10 workers in companies
received work-related communication out of working hours. What’s more surprising is that there did not
seem to be any difference for companies that were covered by right-to-disconnect legislation and those
25 not. However, the laws did seem to make employees feel more in control of their work. This meant that
people in companies covered by right-to-disconnect legislation tended to have higher job satisfaction,
report better work-life balance and were less likely to suffer health issues such as headaches, stress and
anxiety.
However, simply implementing laws is not enough. To make a difference, they need to be accompanied
30 by other measures such as education, effective means to limit out-of-hours communications (such as
systems that stop emails being exchanged out of hours) and an appropriate match between workloads
and working time.
Even though right-to-disconnect legislation seems to be good for workers, there is still the question of
whether it also might be good for bosses. Although there has not been a systematic study of the question
35 yet, my guess is that the answer would be a qualified yes. First, we know that workers tend to be more
productive over a longer period of time when they have better work-life balance and boundaries. Second,
recent work by Stanford University’s Robert Sutton and Huggy Rao has found that managers would be
much more effective if they were able to reduce the needless clutter, such as empty communication and
pointless meetings, that blights their own lives. Clear boundaries might be tough for managers like me to
40 get their heads around. But perhaps a right to disconnect would force us to ensure our contracted work
day was spent doing things that really matter.
ANDRÉ SPICER
Adaptado de theguardian.com, 17/02/2024.',NULL,'["development of high skills", "prioritization of relevant issues", "establishment of tight schedules", "coordination of clear procedures"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'21','Matemática','Em um restaurante, realizou-se uma pesquisa para conhecer a preferência de N clientes em
relação a tipos de proteínas. Observe na tabela alguns dados obtidos nessa pesquisa:
Proteína preferida Número de clientes Percentual de N
Sabendo que cada cliente escolheu apenas um tipo de proteína, o número x de clientes que
preferem peixe é igual a:',NULL,'/cbmerj-apoios/2026-q21-p14-completo-0.png','["3000", "4000", "5000", "6000"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'22','Matemática','A produção de bolos de uma confeitaria possui o custo total fixo mensal de R$ 6.000,00. Em
determinado mês, além desse custo, para produzir cada unidade de bolo, foram gastos R$ 40,00
acrescidos de 9,5% de impostos sobre esse valor. Nesse mês, cada unidade foi vendida por R$ 120,00.
Para essa produção, a expressão algébrica que representa o lucro L em função da quantidade x
de unidades vendidas é:',NULL,NULL,'["L(x) = 76,2x − 6000", "L(x) = 76,2x + 6000", "L(x) = 43,8x − 6000", "L(x) = 43,8x + 6000"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'23','Matemática','Considere o sistema linear a seguir:
4x + y + Az = 7
2x − By + z = 5
x + y + z = 1
Para que esse sistema seja possível e indeterminado, os valores das constantes A e B são,
respectivamente, iguais a:',NULL,NULL,'["− 1 e 3", "− 3 e 1", "1 e 3", "3 e 1"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'24','Matemática','Considere a função f: [0, 2π] → ℝ tal que f(x) = 6 cos(x/4 + π/4). O valor máximo de f é:',NULL,NULL,'["1", "5", "3√2", "2√3"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'25','Matemática','No gráfico a seguir, está representada a função polinomial f, de variável real definida por
f(x) = x⁴ − 3x³ − 3x² + 11x − 6. Note que esse gráfico é tangente ao eixo das abscissas no
ponto (1,0).
1 x
Sabe-se que a maior e a menor raiz da equação f(x) = 0 são, respectivamente, p e q.
O valor de p − q é:',NULL,'/cbmerj-apoios/2026-q25-p15-figura.png','["5", "3", "1 + √5", "1 + √3"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'26','Matemática','Uma loja de eletrodomésticos vende um aparelho de TV por R$ 1.800,00 à vista e, para vendas a
prazo, cobra juros compostos de 5% ao mês. Um cliente, ao comprar essa TV, optou por fazer o
pagamento em três parcelas, da seguinte forma:
1ª) R$ 600,00 à vista;
2ª) R$ 600,00 exatamente dois meses após a compra;
3ª) x reais exatamente três meses após a compra.
O valor de x, em reais, é igual a:',NULL,NULL,'["759,15", "719,15", "659,15", "619,15"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'27','Matemática','Em um desafio de matemática, estudantes consideraram dois conjuntos:
• A - formado por todas as retas concorrentes no ponto P (2,1);
• B - formado apenas por retas de A cuja distância ao ponto Q (1,3) é igual a 3.
O conjunto B possui o seguinte número de elementos:',NULL,NULL,'["3", "2", "1", "0"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'28','Matemática','Considere todos os divisores naturais do número n = 2⁵ × 3³.
O produto de todos esses divisores é:',NULL,NULL,'["2⁴⁵ × 3³⁰", "2⁴⁵ × 3³⁶", "2⁶⁰ × 3³⁰", "2⁶⁰ × 3³⁶"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'29','Matemática','Uma pirâmide quadrangular regular ABCDE foi seccionada pelo plano FGHJ, que dista y cm do
vértice E e que é paralelo à base ABCD. A seção FGHJ constitui a face de um paralelepípedo
retângulo cuja base está contida em ABCD, como ilustra a figura.
E
G 12 cm
A 8 cm B
Considere as seguintes informações:
• a aresta da base ABCD e a altura da pirâmide ABCDE medem, respectivamente, 8 cm e 12 cm;
• a área total do paralelepípedo varia de acordo com o valor de y, sendo 0 < y < 12.
Para que a área do paralelepípedo seja máxima, o valor de y, em centímetros, deve ser:',NULL,'/cbmerj-apoios/2026-q29-p16-figura.png','["7", "8", "9", "10"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'30','Matemática','Para demarcar as 11 vagas de um estacionamento do Corpo de Bombeiros, serão utilizadas
apenas as cores vermelha e branca, de acordo com as seguintes condições:
• para cada vaga deverá ser usada uma única cor;
• deverão ser pintadas pelo menos três vagas de cada cor;
• a primeira e a última vagas deverão ser pintadas de vermelho.
Observe duas formas possíveis de pintar essas vagas:
O número total de formas diferentes de pintar as 11 vagas é igual a:',NULL,'/cbmerj-apoios/2026-q30-p16-figura.png','["464", "465", "466", "467"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'31','Biologia','O ciclo celular de uma célula somática com 2n = 28 divide-se em três fases: intérfase (G1, S e G2),
mitose (prófase, metáfase, anáfase e telófase) e citocinese. Observe a ilustração:
Adaptado de sciencefacts.net.
Admita que, durante a mitose, a divisão celular dessa célula somática ocorra sem qualquer
alteração ou falha.
Nessas condições, o número e o formato dos cromossomos encontrados na fase G2 da intérfase
correspondem, respectivamente, a:',NULL,'/cbmerj-apoios/2026-q31-p17-figura.png','["7 – duplo", "14 – simples", "28 – duplo", "56 – simples"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'32','Biologia','Cepas de Staphylococcus aureus resistente à meticilina apresentam alterações no padrão de
resistência a diferentes agentes antimicrobianos e, por isso, constituem uma das principais causas
de infecções hospitalares. Sabe-se que essa resistência pode ser adquirida, dentre outros fatores,
pela ação de vírus.
Essa ação ocorre durante o processo de geração de variabilidade genética denominado:',NULL,NULL,'["transformação", "conjugação", "replicação", "transdução"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'33','Biologia','A cartilagem é um tecido conjuntivo especializado, ao mesmo tempo rígido e flexível, que atua
na sustentação do corpo por revestir articulações e, com isso, amortecer choques.
Esse tecido é caracterizado pela grande quantidade do seguinte componente:',NULL,NULL,'["terminações nervosas", "irrigação sanguínea", "fibras musculares", "matriz extracelular"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'34','Biologia','Solitárias são vermes que vivem no intestino delgado dos hospedeiros definitivos e, em função
da adaptação a esse modo de vida parasitário, não apresentam aparelho digestório.
Nesses vermes, essa adaptação resulta em maior espaço interno para órgãos do seguinte sistema:',NULL,NULL,'["nervoso", "endócrino", "circulatório", "reprodutor"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'35','Biologia','Pacientes com doença de Chagas podem apresentar perda do peristaltismo, o que causa
dilatações anormais de órgãos como esôfago e cólon, além de constipação grave.
Tais sintomas indicam que a doença provoca disfunção do tecido denominado:',NULL,NULL,'["muscular liso", "conjuntivo denso", "epitelial glandular", "endotelial gástrico"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'36','Biologia','A imunidade adquirida pode se apresentar como uma resposta humoral, que se caracteriza pela
produção de proteínas de defesa denominadas anticorpos.
Essas proteínas são produzidas por linfócitos do seguinte tipo:',NULL,NULL,'["B", "T", "CD4", "CD8"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'37','Biologia','Em corridas de alta intensidade, o aumento do metabolismo anaeróbio do músculo esquelético
resulta em acidose metabólica. Sabe-se que o acúmulo de H+ intracelular interfere diretamente no
retículo sarcoplasmático, alterando sua conformação estrutural e o funcionamento de suas proteínas
transportadoras.
Com base nesses fatores, observa-se que a acidose metabólica está associada principalmente ao
processo de:',NULL,NULL,'["elevação da síntese de ATP", "inibição da liberação de Ca²⁺", "indução do transporte de Na⁺", "redução da degradação de NADH"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'38','Biologia','Um casal formado por uma mulher com sangue do tipo O Rhe um homem com sangue A Rh+
possui um filho com sangue A Rh+. Sabe-se que o pai é heterozigoto para o fator Rh.
A probabilidade de o próximo filho desse casal apresentar eritroblastose fetal é de:',NULL,NULL,'["25%", "50%", "75%", "100%"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'39','Biologia','Em um experimento, pesquisadores realizaram a infusão súbita de paratormônio (PTH) em um
animal, mantendo sua administração contínua por algumas horas. Sabe-se que o PTH atua nos
ossos e rins, além de indiretamente no intestino, modulando as concentrações séricas de cálcio
e fosfato.
O gráfico que representa os resultados encontrados nesse experimento é:',NULL,'/cbmerj-apoios/2026-q39-p19-figura.png','["Gráfico A, apresentado no apoio.", "Gráfico B, apresentado no apoio.", "Gráfico C, apresentado no apoio.", "Gráfico D, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'40','Biologia','Em uma ilha na qual vive uma população de roedores, há dois tipos principais de fontes de
alimento: sementes muito pequenas e frutos grandes e duros. Roedores com dentes pequenos
conseguem triturar as sementes pequenas; os com dentes grandes são capazes de romper os
frutos grandes. Já roedores com dentes de tamanho intermediário apresentam maior dificuldade
em explorar os dois tipos de alimento, resultando em menor sobrevivência deste grupo.
Esse cenário representa um caso clássico de seleção natural do seguinte tipo:',NULL,NULL,'["estabilizadora", "direcional", "disruptiva", "sexual"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'41','Física','Para analisar um líquido em repouso, contido em um recipiente aberto, um pesquisador verificou a
variação da pressão hidrostática P, em função da profundidade h, no interior do líquido. Observe,
no gráfico, os resultados encontrados e, na tabela, valores da densidade de quatro líquidos:
P (10⁵ N/m²) Líquido Densidade (kg/m³)
1,500 h (m)
Considere a aceleração da gravidade local igual a 10,0 m/s² e a pressão atmosférica igual a
1,0 x 10⁵ N/m².
Com base nos dados apresentados, utilizou-se no experimento o seguinte líquido:',NULL,'/cbmerj-apoios/2026-q41-p20-completo-0.png','["azeite", "glicerina", "óleo diesel", "lubrificante"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'42','Física','De acordo com os postulados da teoria da relatividade especial, de Albert Einstein, dois observadores que possuem movimento relativo entre si observam intervalos de tempo diferentes. Considere um observador P, em repouso na Terra, e um observador N, deslocando-se em uma nave. A relação entre os intervalos de tempo marcados pelos dois observadores é Δt = Δt′/√(1 − v²/c²), sendo Δt o intervalo medido por P, Δt′ o intervalo medido por N, v a velocidade relativa entre os referenciais e c a velocidade da luz no vácuo. Sabe-se que Δt > Δt′. Admita que N realiza uma viagem com velocidade v = 0,75c, sendo Δt′ = 6,6 horas. Nessas condições, o intervalo de tempo Δt dessa viagem, em horas, medido por P, corresponde, aproximadamente, a:',NULL,'/cbmerj-apoios/2026-q42-p20-figura.png','["8", "10", "12", "14"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'43','Física','Em algumas rodovias brasileiras, existem áreas de escape, recurso de segurança que permite a
veículos com problemas de frenagem parar sem causar acidentes, conforme ilustra a imagem.
br.images.search.yahoo.com
Considere que o motorista de um caminhão, com massa total de 12 toneladas e velocidade de
86,4 km/h, está com problemas de frenagem e entra em uma área de escape com desaceleração
de 7,2 m/s².
O módulo do trabalho realizado pela força resultante, em megajoules, até o caminhão parar,
corresponde a cerca de:',NULL,'/cbmerj-apoios/2026-q43-p21-figura.png','["3,5", "4,2", "5,4", "6,6"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'44','Física','Uma das peças fundamentais do desfibrilador é o capacitor, componente eletrônico que
armazena energia elétrica e a descarrega sob a forma de um choque. Essa descarga elétrica, ao
ser aplicada no coração de uma pessoa com arritmia ou fibrilação, pode restabelecer os
batimentos cardíacos. Observe no gráfico a curva de carga do capacitor de um desfibrilador, em
função da tensão elétrica U:
Admitindo que o capacitor seja carregado com uma diferença de potencial de 1200 V, a energia
elétrica, em joules, armazenada nesse capacitor é igual a:',NULL,'/cbmerj-apoios/2026-q44-p21-completo-0.png','["60", "120", "180", "240"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'45','Física','Em um procedimento industrial, a massa de determinado gás, ideal e monoatômico, que está
contida em um recipiente, experimenta um processo de transformação termodinâmica. Nesse
processo, a pressão P, em função do volume V, nesse recipiente, apresenta o comportamento
indicado no gráfico a seguir.
P (10⁵ N/m²)
1 6 0 0 1 8 0 0 3 2 0 0 V (cm³)
Durante tal processo, o calor recebido pelo gás, em joules, é igual a:',NULL,'/cbmerj-apoios/2026-q45-p22-completo-0.png','["650", "690", "730", "770"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'46','Física','Na saída de um quartel do Corpo de Bombeiros, existe, por medida de segurança, um espelho
esférico convexo cujo raio de curvatura apresenta valor, em módulo, de 60 cm. Considere que,
ao sair do quartel em uma viatura, um bombeiro observa um veículo parado, localizado a 7 m
do vértice do espelho.
Nessas condições, a medida do módulo da distância, em centímetros, da imagem do veículo
em relação ao vértice do espelho é, aproximadamente, de:',NULL,NULL,'["29", "25", "19", "17"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'47','Física','Nas teias de aranha, ocorrem vibrações mecânicas que se propagam por seus fios de seda,
permitindo que aranhas cacem suas presas. Considere os seguintes dados para uma situação em
que um pequeno inseto colide contra uma teia:
• distância entre a aranha e o pequeno inseto na teia = 60 cm;
• tensão mecânica igualmente distribuída em todos os fios da teia = 9 x 10⁻³ N;
• densidade linear de cada fio = 4 x 10⁻⁹ kg/m;
• tempo desprezível de reação da aranha.
O intervalo de tempo decorrido, em milissegundos, para que o pulso propagado pela colisão do
inseto na teia seja percebido pela aranha, é igual a:',NULL,NULL,'["0,1", "0,2", "0,4", "0,8"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'48','Física','No projeto de uma cozinha industrial, um eletricista precisa escolher o fio condutor que, ao ser
conectado a uma tensão de 120 V, seja capaz de suportar a potência máxima de 9600 W
consumida quando todos os aparelhos elétricos estão ligados. Para isso, ele analisou fios de um
mesmo material com os seguintes calibres e respectivos diâmetros:
Considere que serão necessários 90 m de fio, com seção reta circular e resistividade elétrica de
aproximadamente 1,8 x 10⁻⁸ Ω∙m.
Considerando π = 3, o diâmetro mínimo do fio condutor a ser escolhido corresponde ao calibre
de número:',NULL,'/cbmerj-apoios/2026-q48-p23-completo-0.png','["I", "II", "III", "IV"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'49','Física','Em um experimento escolar, para determinar a quantidade de água evaporada durante o
processo de ebulição, seguiram-se os seguintes procedimentos, ilustrados pela imagem:
• colocou-se um volume de água dentro de um recipiente posicionado sobre uma balança;
• inseriu-se uma fonte de calor de potência efetiva de 2700 W no interior do recipiente;
• aqueceu-se a água ali contida até 100 ºC;
• em 2 minutos, desligou-se a fonte de calor e mediu-se a massa de água restante no recipiente.
Ao atingir 100 °C Em 2 minutos
Admita que o experimento seja realizado ao nível do mar, que o calor latente de vaporização da
água seja de 540 cal/g e que 1J = 0,24 cal.
A massa de água, em gramas, evaporada durante o processo de ebulição, corresponde a:',NULL,'/cbmerj-apoios/2026-q49-p23-figura.png','["102", "118", "144", "166"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'50','Física','Para determinar a aceleração de um elevador, fixou-se em seu teto uma mola ideal, conectada a
uma massa. Na mola, com o elevador em repouso, mediu-se uma elongação de 5 cm; já com o
elevador em movimento ascendente e acelerado, a elongação era de 6 cm.
Admitindo que a massa seja de 100 g, a aceleração do elevador, em m/s², é de:',NULL,NULL,'["0,5", "1,0", "1,5", "2,0"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'51','Química','A alantoína, composto orgânico empregado no tratamento de queimaduras, é representada
pela seguinte fórmula estrutural:
A fórmula molecular desse composto é:',NULL,'["/cbmerj-apoios/2026-tabela-periodica.png", "/cbmerj-apoios/2026-q51-p24-completo-0.png"]','["C₄H₅N₄O₃", "C₄H₆N₄O₃", "C₅H₅N₄O₃", "C₅H₆N₄O₃"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'52','Química','Considere um tipo de detector de fumaça que utiliza uma câmara de ionização com uma pequena
fonte radioativa de amerício-241. Essa fonte emite radiação do tipo alfa, que ioniza o ar, permitindo
a condução de corrente elétrica. Quando a fumaça entra na câmara, partículas em suspensão
bloqueiam parte dessa ionização, interrompendo a corrente e acionando o alarme.
Nesse contexto, no decaimento do ²⁴¹Am, forma-se o seguinte radioisótopo:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["²³⁷Np", "²³⁹Pu", "²⁴²Cm", "²⁴⁵Bk"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'53','Química','Em capacetes de bombeiros, uma combinação de fibras resistentes e matriz plástica, dentre
outros materiais, forma uma estrutura leve, forte e resistente ao calor. Admita que, em uma
dessas fibras, estão presentes os óxidos CaO, MgO, Na₂O e SiO₂, que foram, separadamente,
colocados em contato com solução aquosa concentrada de KOH. Observe a variação do pH de
um dos quatro óxidos na presença dessa solução:
pH
quantidade de óxido adicionado (mol)
No gráfico, está representado o comportamento do seguinte óxido:',NULL,'["/cbmerj-apoios/2026-q53-p24-figura.png", "/cbmerj-apoios/2026-tabela-periodica.png"]','["CaO", "MgO", "Na₂O", "SiO₂"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'54','Química','TECNOLOGIA VERDE: BACTÉRIAS AJUDAM A EXTRAIR METAIS RAROS DE BATERIAS VELHAS
Cientistas utilizam bactérias para extrair metais, como zinco, níquel, cobalto e manganês, de
baterias velhas no desenvolvimento de tecnologia verde, que engloba inovações tecnológicas
desenvolvidas para minimizar o impacto ambiental.
Adaptado de oglobo.globo.com, 27/08/2024.
Dentre os metais citados na notícia, o que apresenta o elétron diferenciador 3d⁵, em seus
átomos no estado fundamental, é:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["zinco", "níquel", "cobalto", "manganês"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'55','Química','Durante a investigação de um incêndio em um armazém químico, uma equipe do Corpo de
Bombeiros encontrou dois frascos intactos, um contendo o líquido A e outro contendo o líquido B.
Após a realização de quatro testes, identificaram-se as seguintes características comuns de A e B:
são isômeros funcionais, solúveis em água, possuem cadeia carbônica saturada e fórmula C₃H₆O.
Um quinto teste, utilizando solução aquosa de KMnO₄ em meio ácido, revelou que apenas o
líquido B sofre oxidação.
O líquido B é denominado:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["propanal", "propanona", "propan-1-ol", "propan-2-ol"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'56','Química','Admita que, durante um incêndio, uma pessoa permaneceu por vários minutos sem máscara de
respiração, inalando grande quantidade de fumaça, o que aumentou a concentração de dióxido
de carbono em seu sangue. Considere as equações químicas a seguir, que representam os
estados de equilíbrio do dióxido de carbono e do ácido carbônico no sangue.
CO₂(aq) + H₂O(l) ⇌ H₂CO₃(aq)
H₂CO₃(aq) ⇌ H⁺(aq) + HCO₃⁻(aq)
No organismo humano, a consequência imediata dessa inalação é:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["alcalose respiratória em função do deslocamento dos equilíbrios das reações para a esquerda, que reduz a concentração de íons H⁺", "acidose respiratória em função do deslocamento dos equilíbrios das reações para esquerda, que aumenta a concentração de íons H⁺", "acidose respiratória em função do deslocamento dos equilíbrios das reações para a direita, que aumenta a concentração de íons H⁺", "alcalose respiratória em função do deslocamento dos equilíbrios das reações para a direita, que reduz a concentração de íons H⁺"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'57','Química','Uma solução aquosa de metanal, substância tóxica de aplicação medicinal e industrial, apresenta
concentração percentual em massa de 37% e densidade de 1150 g/L.
A concentração dessa solução, em mol/L, corresponde, aproximadamente, a:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["14,2", "18,4", "22,6", "26,8"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'58','Química','Em um processo metalúrgico, obteve-se zinco metálico a partir de 487,5 kg de um minério.
Sabe-se que essa massa contém 80% de sulfeto de zinco. Observe a sequência de reações
químicas envolvidas nesse processo:
2 ZnS(s) + 3 O₂(g) → 2 ZnO(s) + 2 SO₂(g)
ZnO(s) + CO(g) → Zn(s) + CO₂(g)
Admitindo rendimento de 100% nas reações descritas, a massa de zinco metálico obtida, em
quilogramas, corresponde a:',NULL,'/cbmerj-apoios/2026-tabela-periodica.png','["131", "262", "393", "524"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'59','Química','Pesquisas indicam que são recorrentes acidentes domésticos causados pelo uso de solução
aquosa de etanol 70% v/v, já que sua queima libera grande quantidade de energia, aumentando
as chances de queimaduras e incêndios. Considere a equação química de reação de combustão
do etanol e observe na tabela as entalpias-padrão de formação das substâncias compostas
participantes dessa reação:
C₂H₅OH(l) + 3 O₂(g) → 2 CO₂(g) + 3 H₂O(l)
Consulte a tabela de entalpias de formação no apoio.
Admita que a densidade do etanol é de 0,8 g/mL e que foi realizada a combustão completa de
10 L de solução aquosa dessa substância.
A energia, em quilojoules, liberada nessa combustão é, aproximadamente, de:',NULL,'["/cbmerj-apoios/2026-tabela-periodica.png", "/cbmerj-apoios/2026-q59-p26-completo-0.png"]','["1,7 x 10³", "3,4 x 10⁴", "1,7 x 10⁵", "3,4 x 10⁶"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'60','Química','Em um procedimento de inspeção de equipamentos de bombeiros, identificou-se corrosão em
uma peça metálica. Para ser recuperada, a peça foi submetida à eletrodeposição de cobre durante
40 minutos. Nesse processo, a peça foi mantida imersa em uma solução aquosa de CuSO , sendo
conectada ao polo negativo de uma bateria, sob uma corrente de 3,0 ampères, enquanto um
eletrodo de cobre foi conectado ao polo positivo, conforme ilustra o esquema a seguir.
A massa de cobre, em gramas, depositada na peça, possui o seguinte valor aproximado:',NULL,'["/cbmerj-apoios/2026-q60-p27-figura.png", "/cbmerj-apoios/2026-tabela-periodica.png"]','["1,27", "2,37", "3,96", "5,08"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'61','Geografia','Considere a seguinte legenda de produtos exportados por quatro países:
Com base na reportagem e no atual contexto do comércio global, e considerando a legenda
apresentada, a proporção dos produtos que compõem a pauta de exportações da China está
representada em:','Do século XX para cá, o custo do transporte marítimo e aéreo despencou em todo o mundo.
Isso permitiu que as economias dos países se tornassem mais interligadas e dependentes
do comércio exterior. Olhando a matriz de produtos que um país exporta para o mundo, é
possível ter uma visão sobre diversos fatores de sua economia. Países mais ricos normalmente
têm uma economia diversificada, exportando produtos agrícolas e todo tipo de produtos
industrializados. Alguns, porém, são dependentes de um único produto (como do petróleo e
derivados, no Golfo Pérsico), o que pode deixá-los vulneráveis a variações de preço.
Gabriel Zanlorenssi e Mariana Froner
Adaptado de nexojornal.com.br, 14/03/2024.','["/cbmerj-apoios/2026-q61-p28-completo-0.png", "/cbmerj-apoios/2026-q61-p28-completo-1.png"]','["Diagrama A, apresentado no apoio.", "Diagrama B, apresentado no apoio.", "Diagrama C, apresentado no apoio.", "Diagrama D, apresentado no apoio."]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'62','Geografia','A configuração espacial do indicador apresentado no mapa é consequência do seguinte processo
desse país:','ÍNDICE DE DESENVOLVIMENTO HUMANO NA ITÁLIA
Adaptado de reddit.com.','/cbmerj-apoios/2026-q62-p29-figura.png','["disparidade climática nacional", "desigualdade econômica regional", "desagregação política do território", "distribuição histórica da população"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'63','Geografia','As variações espaciais em relação ao horário em que anoitece no Brasil são explicadas,
principalmente, por diferenças vinculadas ao seguinte fator:','Mapa: horário local em que o céu ficou escuro no Brasil no dia 21/12/2024, sem horário de verão. Fonte: Nexo Jornal. Consulte o mapa no apoio visual.','/cbmerj-apoios/2026-q63-p30-figura.png','["altitude", "latitude", "longitude", "maritimidade"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'64','Geografia','A medida anunciada pelo poder público da cidade de Barcelona tem como objetivo conter a
ocorrência do seguinte processo socioespacial nas áreas turísticas dessa cidade:','No final de junho, o prefeito de Barcelona anunciou uma medida drástica para conter
consequências graves da exploração turística desenfreada: a falta de moradia e os preços
exorbitantes de aluguel e compra de imóveis.
Na prática, até 2028, serão extintos todos os apartamentos de aluguel de curta temporada da
cidade. As 10 mil licenças oficiais atualmente em vigor não serão renovadas, e nenhuma nova
será concedida. De acordo com o prefeito, esses 10 mil imóveis serão vendidos ou alugados
para os residentes da cidade.
Susana Bragatto
Adaptado de folha.uol.com.br, 07/07/2024.',NULL,'["conurbação", "terciarização", "gentrificação", "verticalização"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'65','Geografia','Entre as principais consequências da elevação do nível do mar para o atual território de Tuvalu,
está:','CRISE CLIMÁTICA EM TUVALU: 80% DA POPULAÇÃO BUSCA
VISTO HUMANITÁRIO PARA VIVER NA AUSTRÁLIA
Tuvalu, arquipélago localizado entre a Austrália e o Havaí, é uma das nações mais vulneráveis
às mudanças climáticas. Com uma elevação média de apenas 2 metros acima do nível do mar,
o país sofre diretamente os efeitos do aquecimento global. Frente a esse cenário, o governo de
Tuvalu firmou, em 2023, um acordo inédito com a Austrália, criando um visto humanitário
que permitirá a migração planejada e digna dos cidadãos tuvaluanos. Em território
australiano, eles poderão viver, trabalhar e estudar, com acesso a serviços equivalentes aos
habitantes locais.
Adaptado de epocanegocios.globo.com, 25/07/2025.',NULL,'["erosão costeira", "laterização dos solos", "pluviosidade decrescente", "temperatura ascendente do ar"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'66','Geografia','Conhecida pela distorção de áreas na elaboração de mapas, a projeção de Mercator é
classificada como:','O QUE É A PROJEÇÃO DE MERCATOR E POR QUE PAÍSES AFRICANOS
QUEREM PARAR DE USÁ-LA PARA CRIAR MAPAS DO MUNDO
A União Africana, organização que reúne todos os Estados africanos, aderiu a uma campanha
para que se deixe de utilizar a projeção de Mercator nos mapas-múndi. Chamada Correct The
Map (“Corrijam o Mapa”, em português), a campanha busca evitar que governos, organizações,
escolas e empresas representem o continente africano em menor tamanho do que ele realmente é.
A projeção de Mercator, inventada no século XVI pelo cartógrafo europeu Gerardus Mercator,
representa em maior proporção o tamanho dos territórios mais próximos aos polos, como a
América do Norte e a Europa, em relação àqueles situados perto da linha do Equador, como
a África e a América do Sul.
Adaptado de bbc.com, 19/08/2025.',NULL,'["plana afilática", "azimutal transversa", "cônica equivalente", "cilíndrica conforme"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'67','Geografia','Dentre os biomas florestais brasileiros, há dois com diversas semelhanças, como a biodiversidade,
mas, também, com diferenças marcantes.
Uma característica que distingue esses dois biomas se refere ao seguinte elemento físico-natural:',NULL,'/cbmerj-apoios/2026-q67-p32-figura.png','["vegetação densa", "relevo predominante", "pluviosidade elevada", "intemperismo intenso"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'68','Geografia','De acordo com a notícia, entre 2012 e 2024, houve mudanças sociais e demográficas relacionadas
a arranjos familiares e a formas de habitar o espaço urbano no Brasil.
Uma causa para o aumento percentual do tipo de domicílio abordado na notícia é:','DADOS DO IBGE MOSTRAM CRESCIMENTO DO NÚMERO DE LARES UNIPESSOAIS
O número de pessoas que vivem sozinhas no Brasil está crescendo. Os domicílios unipessoais,
aqueles com apenas um morador, passaram de 12,2% em 2012 para 18,6% em 2024, um
aumento de 6,4 pontos percentuais em 12 anos. Os dados fazem parte da Pesquisa Nacional
por Amostra de Domicílios Contínua (PNAD Contínua), divulgada pelo Instituto Brasileiro
de Geografia e Estatística (IBGE). As famílias nucleares, aquelas com mais de um componente,
continuam sendo maioria, representando 65,7% dos lares em 2024, mas a participação caiu
4% no mesmo período.
Adaptado de g1.globo.com, 22/08/2025.',NULL,'["elevação dos salários", "aumento da natalidade", "legalização do teletrabalho", "envelhecimento da população"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'69','Geografia','A concentração de renda na Europa sofreu uma forte queda no século XX, principalmente a partir
da Segunda Guerra Mundial. Entretanto, a partir dos anos 1980, há uma mudança nessa tendência.
Um fator que explica essa mudança é:','DISPARIDADES HISTÓRICAS NA EUROPA:
PERCENTUAL DA RENDA NACIONAL CONCENTRADA ENTRE OS 10% MAIS RICOS
50%
45%
40%
35%
30%
25%
1900 1920 1940 1960 1980 2000
Fonte: World Inequality Database','/cbmerj-apoios/2026-q69-p33-figura.png','["aumento da atuação de movimentos sindicais", "fechamento de fronteiras para fluxos financeiros", "enfraquecimento das políticas de bem-estar social", "desenvolvimento da tecnologia de atividades produtivas"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'70','Geografia','Consulte os mapas da taxa de fertilidade por país e região, referentes a 1950 e 2023, no apoio. De acordo com a análise desses mapas, as pirâmides etárias que representam o conjunto da população mundial em 1950 e em 2023 são, respectivamente:',NULL,'["/cbmerj-apoios/2026-q70-p34-figura.png", "/cbmerj-apoios/2026-q70-p35-completo-1.png"]','["Par de pirâmides A, apresentado no apoio.", "Par de pirâmides B, apresentado no apoio.", "Par de pirâmides C, apresentado no apoio.", "Par de pirâmides D, apresentado no apoio."]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'71','História','Desembarque de Pedro Álvares Cabral em Porto Seguro em 1500, de Oscar Pereira da Silva. Óleo sobre tela, 1900.
enciclopedia.itaucultural.org.br
A imagem reproduz a tela do início do século XX, de autoria de Oscar Pereira da Silva, que
buscou representar a chegada dos portugueses em terras americanas e a maneira como teria
acontecido esse encontro entre europeus e indígenas.
Um aspecto da representação desse encontro, destacado na tela, é:',NULL,'/cbmerj-apoios/2026-q71-p36-figura.png','["caráter pacífico", "igualdade bélica", "disputa civilizacional", "compartilhamento cultural"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'72','História','De acordo com o texto, o Romantismo foi um movimento sociocultural que marcou a paisagem
histórica europeia, sobretudo na primeira metade do século XIX, sendo associado a diversos
projetos políticos de natureza utópica.
Nesse contexto, a dimensão utópica do comunismo se caracterizou, principalmente, pela
seguinte proposta:','A ambiguidade do pensamento romântico caracterizou-se exatamente por combinar ora
uma atitude, ora outra, numa busca desenfreada, talvez sem paralelo em outras épocas,
para encontrar uma explicação global da realidade, uma explicação cósmica, combinando
unidade e diversidade, continuidade e transformação. Daí o autêntico canteiro de projetos
que foi o período 1815-1848: do nacionalismo ao comunismo, da tecnocracia industrialista
à democracia igualitária − todos foram profundamente marcados por esse traço romântico,
que via todas as coisas despidas de qualquer estabililidade e potencialmente colocadas, sem
exceção, no limiar de uma nova época.
Elias Thomé Saliba
Adaptado de As utopias românticas. São Paulo: Estação Liberdade, 2003.',NULL,'["regulação da acumulação capitalista", "controle da Bolsa de Valores", "fim da sociedade de classes", "criação das leis trabalhistas"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'73','História','A imagem e o texto retratam o grande incêndio, ocorrido em Londres, na Inglaterra, na segunda
metade do século XVII. Naquela conjuntura, incêndios difíceis de serem controlados eram
relativamente comuns em cidades europeias.
Incêndios com tais proporções, naquela conjuntura, estavam associados ao seguinte fator:','O grande incêndio de Londres em 1666, derivado da obra de Jan Griffier. Óleo sobre tela, 1675.
londonmuseum.org.uk
O grande incêndio de Londres ardeu por quatro dias, destruindo grande parte da cidade.
Quando o incêndio começou na padaria de Thomas Farriner, nas primeiras horas do dia 2
de setembro de 1666, ninguém poderia imaginar a destruição que causaria. Em uma cidade
onde fogueiras eram usadas para aquecimento e iluminação, incêndios eram comuns. Aliás,
o prefeito Thomas Bloodworth não se preocupou ao ver as chamas e voltou para a cama.
Mas o fogo se alastrou rapidamente, alimentado por ventos fortes, pela proximidade dos
prédios e pelo calor do verão, que havia ressecado a madeira e a palha usadas na construção
das casas. Como resultado, uma área de mais de dois quilômetros ao longo do rio Tâmisa foi
completamente destruída. Mas com isso surgiu a oportunidade de reconstruir a cidade. Um
decreto real interrompeu a construção até que novas regulamentações fossem emitidas.
Adaptado de bbc.com, 31/07/2016.','/cbmerj-apoios/2026-q73-p37-figura.png','["crescimento urbano industrial", "habitações populares precárias", "agravamento da crise climática", "instalações de energia deficitárias"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'74','História','No texto, mencionam-se práticas de agricultura registradas por naturalistas estrangeiros.
No Brasil, no século XIX, tais práticas visavam a promover nas regiões Sudeste e Centro-Oeste,
respectivamente, as seguintes atividades econômicas:','No final do século XVIII e ao longo do XIX, as queimadas e os desmatamentos praticados por
agricultores foram debatidos pelas elites políticas e científicas ao redor do mundo, compondo
a primeira crítica ambiental da história moderna. De acordo com esse debate, que tomou
corpo nas colônias europeias em ilhas ao redor do mundo, na Índia e em diversas partes
das Américas e do Caribe, se nada fosse feito para modernizar as práticas agrícolas, as terras
perderiam suas reservas de madeira e seriam afligidas pela erosão, pela perda de solo fértil e
pelo dessecamento, o que poderia transformá-las em desertos.
André S. Bailão
Adaptado de Histórias do fogo e das transformações de paisagens no Brasil Central para naturalistas estrangeiros no século XIX.
Estudos Históricos, Rio de Janeiro, vol. 36, no 80, set.-dez. 2023.',NULL,'["prospecção mineral e plantio de soja", "exportação cafeeira e criação de gado", "expansão industrial e extração de borracha", "produção canavieira e refinamento de açúcar"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'75','História','Durante a presidência de João Batista Figueiredo (1979-1985), a veiculação do programa de TV
citado cumpria os seguintes propósitos políticos:','A concessão da TVS foi dada a Silvio Santos durante a presidência de Figueiredo. Logo depois,
o apresentador criou um programa para divulgar os feitos do regime. O miniprograma A
Semana do Presidente, custeado pelo Estado, era uma espécie de boletim que mostrava os
eventos aos quais o presidente havia comparecido nos dias precedentes.
Adaptado de memoriasdaditadura.org.br.','/cbmerj-apoios/2026-q75-p38-figura.png','["promover o militarismo e assegurar o civismo popular", "difundir o cristianismo e promover a moralidade religiosa", "estimular o ufanismo e elevar a popularidade governamental", "exaltar o desenvolvimentismo e combater o analfabetismo funcional"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'76','História','A quebra da Bolsa de Nova York, em 1929, ocasionou uma crise econômica de proporções
grandiosas.
A partir da imagem e do texto, um dos efeitos dessa crise para a sociedade norte-americana, na
década de 1930, foi:','Barracos de ocupantes ilegais ao longo do rio Willamette, em Portland.
Fotografia de Arthur Rothstein, 1936.
A fotografia reproduzida acima, de 1936, retrata os barracos onde viviam ocupantes ilegais
ao longo do rio Willamette, em Portland, no Oregon, Estados Unidos. Muitos deles, durante
o inverno, trabalhavam nos pomares próximos do vale de Willamette e, no verão, no vale
de Yakima.
Adaptado de hdl.loc.gov.','/cbmerj-apoios/2026-q76-p39-figura.png','["dinamização das atividades laborais", "desarticulação da mão de obra rural", "insalubridade das condições de trabalho", "elevação da empregabilidade do imigrante"]'::jsonb,'C','Gabarito definitivo oficial do CBMERJ 2026: alternativa C.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'77','História','O incêndio do Gran Circo, em Niterói, até hoje gera debates sobre suas causas. Infelizmente, não
foi um fato isolado na história do país, como demonstram os demais casos citados.
Uma consequência comum para a memória produzida por episódios como esses e uma ação
para evitá-los estão indicados, respectivamente, em:','O incêndio do Gran Circo,
em Niterói, aconteceu em 17
de dezembro de 1961 e durou
apenas 10 minutos. Mas
deixou, segundo estimativas
oficiais, 503 mortos – sete
em cada dez eram crianças.
“Jamais tantos brasileiros
morreram em tão pouco
tempo e no mesmo lugar”,
afirma Mauro Ventura,
jornalista e autor de um livro
sobre o tema. O incêndio da Boate Kiss, em 27 de janeiro de 2013, registrou 242 vítimas fatais
e o do edifício Joelma, em 1º de fevereiro de 1974, 188.
O fato gerou comoção nacional e internacional. O papa João XXIII (1881-1963) mandou rezar
uma missa em homenagem às vítimas. O Fundo das Nações Unidas para a Infância (Unicef)
doou a quantia de 1 milhão de cruzeiros. E o Santos de Pelé (1940-2022) e o Botafogo de
Garrincha (1933-1983) fizeram uma partida beneficente no Maracanã.
De acordo com a historiadora Ana Maria Mauad, do Laboratório de História Oral e Imagem
(LABHOI) da Universidade Federal Fluminense (UFF), “deixaram instalar um circo para
mais de 500 pessoas com lona altamente inflamável e sem controle de segurança das
instalações elétricas”.
Adaptado de bbc.com, 04/04/2023.','/cbmerj-apoios/2026-q77-p40-figura.png','["trauma coletivo e ampliação da fiscalização", "batalha narrativa e proibição do licenciamento", "esquecimento social e pagamento de indenização", "silenciamento forçado e responsabilização do governo"]'::jsonb,'A','Gabarito definitivo oficial do CBMERJ 2026: alternativa A.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'78','História','O 11 de Setembro, abordado na reportagem, foi um acontecimento decorrente da disseminação,
no século XXI, da seguinte ideologia política:','Poucos acontecimentos ganham lugar na história com o nome de sua data. O simples marco
no calendário já sugere uma nova realidade, como o 4 de Julho (independência dos E.U.A.),
o 14 de Julho (queda da Bastilha na França) ou, no Brasil, o 7 de Setembro.
No século XXI, um acontecimento é universalmente conhecido por sua data: o 11 de
Setembro. Nesse dia, em 2001, os Estados Unidos sofreram o maior ataque a seu território
desde o bombardeio japonês à base de Pearl Harbor, no Havaí, em 1941.
Em cerimônias oficiais, como a que lembrou o quinto aniversário do 11 de Setembro, em
2006, foi feita referência a mais de 90 países representados entre os 2977 mortos. Até o final
de 2018, mais de 2 mil pessoas morreram de doenças associadas à exposição a materiais
perigosos naquele dia, particularmente de câncer.
Adaptado de bbc.com, 10/09/2021.','/cbmerj-apoios/2026-q78-p41-figura.png','["terrorismo socialista", "islamismo secularizado", "nacionalismo exacerbado", "fundamentalismo religioso"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'79','História','Tony d’Agostinho
acaricatura.com
A intensificação da jornada diária, retratada na charge, está associada ao atual processo de:',NULL,'/cbmerj-apoios/2026-q79-p42-figura.png','["desregulamentação do mercado empregatício", "plataformização do trabalho informal", "oficialização do vínculo corporativo", "flexibilização da legislação laboral"]'::jsonb,'B','Gabarito definitivo oficial do CBMERJ 2026: alternativa B.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'80','História','Na charge, a frase “depois que o bolo crescer, a gente divide” remete a uma estratégia utilizada
pelos governos militares (1964-1985) no Brasil, no contexto de ações implementadas durante o
chamado “milagre econômico”, período situado entre 1968 e 1973.
Dois resultados do “milagre econômico”, naquela conjuntura política, foram:','André Dahmer
Adaptado de Folha de S. Paulo, 25/09/2025.','/cbmerj-apoios/2026-q80-p42-figura.png','["regulação monetária e desaceleração do consumo", "redução da inflação e congelamento dos gastos estatais", "incremento do produto interno bruto e elevação dos salários", "aumento da dívida externa e ampliação da desigualdade social"]'::jsonb,'D','Gabarito definitivo oficial do CBMERJ 2026: alternativa D.' from public.exams where slug='cbmerj-2026-cfo-ingles' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug='cbmerj-2026-cfo-ingles');

COMMIT;
