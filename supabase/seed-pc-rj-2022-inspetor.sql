-- Seed: Policia Civil do Estado do Rio de Janeiro 2022 - Inspetor de Policia de 6a Classe
-- Banca FGV - Prova de Conhecimentos - Nivel Superior - Tipo 1 (Branca) - 100 questoes
-- Gabarito oficial (Tipo 1):
--   1-B  2-E  3-A  4-B  5-C  6-D  7-A  8-C  9-E 10-D
--  11-B 12-C 13-A 14-E 15-D 16-E 17-D 18-D 19-A 20-C
--  21-B 22-E 23-C 24-E 25-E 26-C 27-A 28-C 29-B 30-C
--  31-B 32-D 33-E 34-B 35-E 36-B 37-C 38-B 39-A 40-C
--  41-B 42-E 43-C 44-E 45-B 46-A 47-D 48-D 49-B 50-E
--  51-E 52-C 53-C 54-C 55-B 56-E 57-A 58-A 59-E 60-B
--  61-E 62-C 63-E 64-B 65-E 66-D 67-C 68-A 69-E 70-C
--  71-A 72-D 73-E 74-A 75-A 76-A 77-B 78-C 79-A 80-B
--  81-C 82-D 83-C 84-A 85-B 86-A 87-E 88-D 89-D 90-B
--  91-E 92-D 93-C 94-C 95-B 96-C 97-C 98-D 99-E 100-C

insert into public.exams (slug, title, source, year)
values ('pc-rj-2022-inspetor', 'Polícia Civil RJ 2022 - Inspetor de Polícia de 6ª Classe', 'pc', '2022')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Considerando a estrutura geral do texto 1, o último período tem a função de:',
'Texto 1

"Um homem acusado de tentativa de feminicídio foi preso, neste sábado (13/11), por policiais civis da 48ª DP (Seropédica). O acusado já possuía dois registros de agressões contra a vítima. De acordo com agentes, no dia 06 de novembro, ele voltou a agredir a companheira e tentou matá-la. O criminoso foi encaminhado para o sistema prisional, onde ficará à disposição da Justiça."',
'',
'["exemplificar moralmente o resultado de má conduta;","indicar a consequência provisória da tentativa de homicídio;","mostrar a pena aplicada ao criminoso reincidente;","destacar um procedimento legal em casos semelhantes;","apontar a causa de o criminoso ter sido detido."]'::jsonb,
'B',
'O último período ("O criminoso foi encaminhado para o sistema prisional, onde ficará à disposição da Justiça") indica o que ocorreu após a prisão, isto é, a consequência provisória do fato: a pessoa ainda não foi condenada (não há pena aplicada), apenas ficará à disposição da Justiça. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'No texto 2 há a ocorrência de três vocábulos que poderiam ser confundidos com seus parônimos: tráfico/tráfego, cumprido/comprido, mandado/mandato. A frase abaixo em que o vocábulo destacado está bem empregado é:',
'Texto 2

"Um homem acusado de tráfico de drogas e associação para o tráfico foi preso, neste sábado (13/11), por policiais civis da 110ª DP (Teresópolis) e militares. Contra ele foi cumprido um mandado de prisão. O criminoso foi capturado após informações de inteligência. Ele foi encaminhado para o sistema prisional, onde ficará à disposição da Justiça."',
'',
'["absolver / absorver – O juiz decidiu absorver todo o grupo já que todas as provas eram circunstanciais;","aprender / apreender – O grupo de policiais aprendeu uma grande quantidade de drogas no galpão da empresa;","delatar / dilatar – O delegado resolveu delatar o prazo da investigação a fim de ajudar o trabalho dos agentes;","despensa / dispensa – A administração do presídio guardava numa espécie de dispensa todas as frutas;","fluir / fruir – Após o conserto a água fluía da torneira com toda a facilidade."]'::jsonb,
'E',
'"Fluir" significa correr, escoar (falando de líquidos), enquanto "fruir" é desfrutar. Em "a água fluía da torneira", o verbo está corretamente empregado. Nas demais, houve troca indevida de parônimos: deveria ser "absolver" (não "absorver"), "apreendeu" (não "aprendeu"), "dilatar" (não "delatar") e "despensa" (não "dispensa"). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'O texto 2 é do tipo informativo e é marcado pela mais rigorosa objetividade; a marca de objetividade presente no texto que está corretamente exemplificada é:',
'',
'',
'["localização precisa da ocorrência: \"Um homem acusado de tráfico de drogas e associação para o tráfico foi preso, neste sábado (13/11), por policiais civis da 110ª DP (Teresópolis) e militares\";","emprego da voz passiva sem complemento de agente: \"O criminoso foi capturado após informações de inteligência\";","nominalização com omissão do autor da ação: \"Um homem acusado de tráfico de drogas e associação para o tráfico foi preso\";","estrutura pronominal de sentido ativo: \"Contra ele foi cumprido um mandado de prisão\";","indeterminação do sujeito da ação: \"Ele foi encaminhado para o sistema prisional, onde ficará à disposição da Justiça\"."]'::jsonb,
'A',
'A objetividade informativa manifesta-se, entre outras formas, pela precisão de dados (quem, quando, onde). O trecho que exemplifica corretamente essa marca é o que traz a localização e as circunstâncias precisas da ocorrência (data, delegacia, local). As demais rotulam equivocadamente os fenômenos linguísticos descritos. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'Em muitos textos informativos, o autor insere alguns elementos subjetivos; a frase abaixo que exemplifica tal situação é:',
'',
'',
'["O preso foi capturado em sua própria residência, no bairro da Prainha, em Barbacena;","É pena que a prisão do acusado tenha sido feita sem testemunhas;","Os crimes de feminicídio parecem estar aumentando nas cidades brasileiras;","O acusado, em função das informações de inteligência, foi imediatamente preso;","Os jornais elogiaram o trabalho da polícia civil no final de semana."]'::jsonb,
'B',
'A subjetividade (opinião, juízo de valor do enunciador) aparece claramente em "É pena que...", expressão que revela a avaliação pessoal de quem escreve. As demais trazem fatos ou relatos (ainda que uma use "parecem", que indica probabilidade, a marca de subjetividade mais explícita é a avaliação de "é pena"). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'A população recebeu, esta semana, por meio de cartazes distribuídos pelos diversos bairros do Rio, a informação sobre o telefone para denunciar atos ilegais à Polícia. A situação abaixo que se utiliza do mesmo canal de comunicação é:',
'',
'',
'["Escutei ontem pelo rádio que o Vasco da Gama ganhou o jogo;","O sino da matriz anunciava a missa da noite;","No caixa eletrônico de seu banco, Vera vê aparecer na tela a mensagem \"Digite sua senha\";","Telefonaram-lhe à noite, comunicando a má notícia;","O carro passava pela rua, oferecendo laranjas aos moradores dos prédios."]'::jsonb,
'C',
'O canal da situação-base é visual/escrito (cartazes com informação a ser lida). O mesmo canal — mensagem escrita exibida visualmente — ocorre no caixa eletrônico, em que Vera lê na tela "Digite sua senha". As demais usam canais sonoros (rádio, sino, telefone, pregão de rua). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'Todos os segmentos textuais abaixo exemplificam o discurso argumentativo; o segmento em que a argumentação se apoia sobre um exemplo é:',
'',
'',
'["Se você ama seus filhos, dê-lhes de presente nossos jogos educativos;","O mestre não apresenta jamais uma ideia unicamente no plano intelectual, ele a mostra de forma que o coração a sinta;","A psicanálise mostrou que nossos comportamentos na idade adulta são determinados pelo inconsciente, como já disse Freud;","Os professores não respeitam o horário de atendimento; fui encontrar meu professor de biologia e ele não estava no gabinete;","Você que gosta de tomar banhos de sol, lembre-se de que a ciência já demonstrou estatisticamente o perigo de câncer de pele."]'::jsonb,
'D',
'A argumentação por exemplo apoia uma afirmação geral num caso concreto. Em D, a tese ("os professores não respeitam o horário de atendimento") é sustentada por um exemplo específico ("fui encontrar meu professor de biologia e ele não estava no gabinete"). As demais recorrem a outros tipos de argumento (apelo afetivo, autoridade, dados científicos). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'"Meu aluno Roberto tira sempre boas notas nas provas, mesmo trabalhando vinte horas semanais num restaurante do Centro. Isso prova que o trabalho em tempo parcial não prejudica o estudo universitário." O problema da tese defendida nesse texto é o de que ela:',
'',
'',
'["se apoia sobre um caso particular, não representativo;","se fundamenta num princípio universal que é aplicado a um caso particular;","se estrutura a partir de uma analogia, partindo de um terreno conhecido para um desconhecido;","não se apoia em fatos para a defesa da tese, tornando-a, por isso mesmo, muito debilitada;","se ancora em um testemunho de autoridade."]'::jsonb,
'A',
'A conclusão geral ("o trabalho em tempo parcial não prejudica o estudo universitário") é tirada de um único caso (o aluno Roberto). Trata-se de uma generalização apressada: apoiar-se em um caso particular, não representativo, para firmar uma tese universal. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'A palavra motoboys é um estrangeirismo de amplo emprego na língua portuguesa, assim como todos os que estão destacados nas frases abaixo; a opção em que o estrangeirismo empregado tem um substituto adequadamente indicado é:',
'',
'',
'["O policial tinha em seu quarto um poster de Sherlock Holmes / quadro;","A delegacia não tinha como fazer backup dos arquivos / compartilhamento;","Mandava todas as mensagens por e-mail / correio eletrônico;","Procurou as informações necessárias num site especializado / noticiário;","O restaurante não tinha serviço de delivery / pagamento com cartão de crédito."]'::jsonb,
'C',
'"E-mail" corresponde adequadamente a "correio eletrônico". Nas demais, o substituto é inadequado: "poster" é "cartaz" (não "quadro"); "backup" é "cópia de segurança" (não "compartilhamento"); "site" é "sítio/página" (não "noticiário"); "delivery" é "entrega em domicílio" (não "pagamento com cartão"). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'Todas as frases abaixo foram retiradas de um relatório de seguranças de um shopping; a única opção em que NÃO ocorre nenhuma impropriedade léxica, ou seja, mau emprego de vocábulos, é:',
'',
'',
'["O segurança de plantão cometeu um ato de heroísmo ao salvar os meninos de atropelamento;","O entregador escorregou graças à gordura derramada na porta de entrada;","Os seguranças foram hospitalizados e um deles goza de muito má saúde;","Os motoristas não tinham alternativa: ou saíam rapidamente ou pagariam multas;","A vítima do atropelamento era observada com discrição pelos clientes que passavam."]'::jsonb,
'E',
'Em E não há impropriedade: "observada com discrição" (de modo discreto) é uso adequado. Nas demais há desvios: "cometer um ato de heroísmo" (comete-se delito, não heroísmo); "graças à gordura" (a locução "graças a" tem valor positivo, inadequado para algo negativo); "goza de muito má saúde" (gozar associa-se a boa saúde); "não tinham alternativa: ou... ou..." (apresentar duas opções contradiz "não ter alternativa"). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'Em todas as frases abaixo foi empregado o verbo cair; a frase em que foi proposto um substituto adequado para esse verbo é:',
'',
'',
'["O palanque caiu devido ao peso excessivo / desmoronou;","A rocha caiu sobre o povoado, destruindo casas / ruiu;","Os lutadores caíram abraçados sobre a lona / precipitaram-se;","A árvore, de velha, caiu sobre a estrada / tombou;","A claridade que cai nas vidraças ilumina tudo / se despenca."]'::jsonb,
'D',
'"A árvore caiu sobre a estrada" equivale adequadamente a "tombou" (verbo próprio para a queda de árvores/postes). Nas demais, o substituto é inadequado ao contexto: "desmoronou/ruiu" aplicam-se a construções, não a palanque pequeno/rocha isolada da forma proposta; "precipitaram-se" muda o sentido; "se despenca" é inadequado para a claridade. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'Em todas as opções abaixo há uma sequência de adjetivos que expressam uma mesma ideia; a opção em que esses adjetivos partem do menos para o mais intenso é:',
'',
'',
'["amigo / companheiro / parceiro;","afastado / distante / remoto;","colérico / irado / raivoso;","sentimental / sensível / afetivo;","delicado / gentil / educado."]'::jsonb,
'B',
'Em "afastado / distante / remoto" há gradação crescente de intensidade: "afastado" (pouco longe), "distante" (mais longe) e "remoto" (muito longe, extremo). Nas demais sequências não há essa escalada do menos para o mais intenso de forma consistente. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'Em todas as frases abaixo há uma substituição de termos pelo relativo cujo, a, os, as; a frase em que essa substituição foi feita de forma adequada é:',
'',
'',
'["Aquela cidade, da qual vemos as igrejas, é Barbacena / Aquela cidade, cuja visão temos das igrejas, é Barbacena;","Esse senhor, do qual conheces a filha, é meu tio / Esse senhor, cujo conhecimento tens da filha, é meu tio;","Picasso, parte dos quadros dele são exibidos em Barcelona, morreu em 1973 / Picasso, cuja exibição de parte dos quadros é feita em Barcelona, morreu em 1973;","Os livros, dos quais as páginas foram copiadas, são os mais caros da coleção / Os livros, de cujas páginas foram copiadas, são os mais caros da coleção;","As goiabeiras, das quais saem os frutos mais doces do pomar, são de origem asiática / As goiabeiras, de cujo pomar saem os frutos mais doces, são de origem asiática."]'::jsonb,
'C',
'O pronome relativo "cujo(s)/cuja(s)" indica posse e concorda com o termo possuído, posposto. Em C, "cuja exibição de parte dos quadros" relaciona Picasso (possuidor) à exibição dos seus quadros, com estrutura adequada. Nas demais, a reescrita com "cujo" distorce a relação de posse ou gera incoerência (ex.: "de cujo pomar" muda o referente). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Língua Portuguesa',
'Em todas as frases abaixo há uma expressão formada pelo advérbio não + forma verbal; a frase abaixo em que a expressão destacada foi substituída por um só verbo de significado equivalente e adequado ao contexto é:',
'',
'',
'["Não aceitou o convite / Declinou do convite;","Não aceitou a minha ajuda / Ignorou a minha ajuda;","Não cumpriu o que manda a lei / Desprezou o que manda a lei;","Não aceitou as acusações / Combateu as acusações;","Não se entregou até o final da luta / Dedicou-se até o final da luta."]'::jsonb,
'A',
'"Declinar de" significa recusar educadamente; "declinou do convite" equivale a "não aceitou o convite", substituição adequada. Nas demais, o verbo proposto altera o sentido: "ignorar" não é "não aceitar"; "desprezar" não é "não cumprir"; "combater" não é "não aceitar"; "dedicar-se" não é "não se entregar". Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Língua Portuguesa',
'Todas as frases abaixo se iniciam por um termo preposicionado; a frase modificada, de forma a suprimir esse termo, que altera o sentido da frase original é:',
'',
'',
'["Neste jornal há notícias apavorantes / Este jornal publica notícias apavorantes;","Em sua irritação, disse coisas inconvenientes / Sua irritação levou-o a dizer coisas inconvenientes;","Em suas cartas, revela-se toda a sua generosidade / Suas cartas comprovam toda a sua generosidade;","Numa gruta, achamos abrigo durante a tempestade / A gruta protegeu-nos durante a tempestade;","Nesta região, há cinco povoados importantes / Esta região compõe-se de cinco povoados importantes."]'::jsonb,
'E',
'Em "Em suas cartas, revela-se..." o sentido original é apenas de que a generosidade transparece nas cartas; "Suas cartas comprovam..." introduz uma ideia de prova/demonstração que não estava no original — contudo, a alteração mais nítida de sentido ocorre em E: "Nesta região há cinco povoados" (existência) difere de "Esta região compõe-se de cinco povoados" (a região seria formada apenas por esses cinco). Conforme o gabarito oficial, a resposta é a letra E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Língua Portuguesa',
'O segmento desse texto cujo vocabulário pertence a um campo semântico sem relação com o policial é:',
'Texto para a questão 15

"Quatro pessoas foram presas em flagrante, nesta quinta-feira (11/11), por tentativa de estelionato e organização criminosa, por policiais civis de certa delegacia de polícia. O grupo, segundo investigações, atuava em uma empresa e oferecia às vítimas investimentos financeiros com retornos atrativos acima do que é praticado no mercado. Durante a apuração ficou comprovado que os acusados ofereciam um rendimento de 1% sobre o valor inicial de aplicação, estipulado em R$ 9 mil, e diziam que a quantia seria devolvida integralmente ao investidor. Ao receber o dinheiro, os golpistas encerravam a atividade da empresa, lesando as vítimas. O grupo, em seguida, abria outra firma, com nova razão social e nova pessoa jurídica, para enganar outras pessoas. Os policiais chegaram até os acusados após denúncia de uma das vítimas. Os quatro foram ouvidos na delegacia e autuados por tentativa de estelionato."',
'',
'["Quatro pessoas foram presas em flagrante, nesta quinta-feira (11/11), por tentativa de estelionato e organização criminosa;","O grupo, segundo investigações, atuava em uma empresa e oferecia às vítimas investimentos financeiros com retornos atrativos;","Durante a apuração ficou comprovado que os acusados ofereciam um rendimento de 1% sobre o valor inicial de aplicação;","O grupo, em seguida, abria outra firma, com nova razão social e nova pessoa jurídica, para enganar outras pessoas;","Os quatro foram ouvidos na delegacia e autuados por tentativa de estelionato."]'::jsonb,
'D',
'O vocabulário "firma", "razão social" e "pessoa jurídica" pertence ao campo semântico empresarial/jurídico-societário, sem relação direta com o campo policial (prisão, flagrante, delegacia, investigações, acusados). Os demais segmentos contêm termos ligados à ação policial. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Língua Portuguesa',
'Todas as frases abaixo foram reescritas na forma negativa, mantendo-se o sentido original; a forma adequada de reescritura está na frase:',
'',
'',
'["A empresa fracassou / A empresa não se desenvolveu;","O time foi eliminado / O time não foi campeão;","Essa atriz está envelhecendo / Essa atriz não atua mais;","Proibiram-nos de sair do colégio / Proibiram-nos que não entrássemos no colégio;","Aquele filme me aborreceu / Aquele filme não me agradou."]'::jsonb,
'E',
'"Aquele filme me aborreceu" equivale, na forma negativa, a "Aquele filme não me agradou", preservando o sentido (desagradou). Nas demais, a reescrita negativa altera o sentido: "fracassar" não é apenas "não se desenvolver"; "ser eliminado" não é "não ser campeão"; "envelhecer" não é "não atuar mais"; e a reescrita de "proibir de sair" fica contraditória. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Língua Portuguesa',
'A forma de substituição do termo onde por um nome é adequada na seguinte opção:',
'',
'',
'["Este palácio é onde está instalado o Supremo Tribunal Federal / Este palácio é a base do Supremo Tribunal Federal;","O Palácio da Alvorada, onde vive o chefe do Estado / O Palácio da Alvorada, local de trabalho do chefe do Estado;","Puseram uma cruz onde ocorreu o acidente / Puseram uma cruz na situação do acidente;","Gostaria de saber de onde vieram estas caixas / Gostaria de saber a origem destas caixas;","Gostaria de saber para onde vão estas bicicletas / Gostaria de saber o futuro dessas bicicletas."]'::jsonb,
'D',
'"De onde vieram estas caixas" indica procedência; "a origem destas caixas" substitui adequadamente o termo por um nome equivalente. Nas demais, o nome escolhido não corresponde ao valor de "onde": "base" (não é "sede/local"); "local de trabalho" (ele vive, não trabalha); "situação" (não é lugar); "futuro" (para onde vão é destino, não futuro). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Língua Portuguesa',
'O segmento desse texto em que há a preocupação de informar e de convencer é:',
'Texto para a questão 18

"O Conselho Holandês de Saúde explica que os açúcares da fruta no suco de laranja são absorvidos pelo corpo muito rapidamente porque eles entram no corpo em forma líquida. Porque eles entram no corpo tão rápido em uma quantidade tão alta, o corpo converte facilmente este açúcar em gordura. Um copo de suco de laranja contém tanto açúcar quanto um copo de refrigerante. Isso significa que você pode ganhar peso rapidamente, e pessoas com mais gordura corporal terão maior chance de ter diabetes. Tudo a partir de um copo de suco de laranja!"',
'',
'["O Conselho Holandês de Saúde explica que os açúcares da fruta no suco de laranja são absorvidos pelo corpo muito rapidamente porque eles entram no corpo em forma líquida;","Porque eles entram no corpo tão rápido em uma quantidade tão alta, o corpo converte facilmente este açúcar em gordura;","Um copo de suco de laranja contém tanto açúcar quanto um copo de refrigerante;","Isso significa que você pode ganhar peso rapidamente, e pessoas com mais gordura corporal terão maior chance de ter diabetes;","Tudo a partir de um copo de suco de laranja!"]'::jsonb,
'D',
'O segmento que informa e, ao mesmo tempo, procura convencer (alertando sobre consequências) é o que associa o consumo a ganho de peso e maior risco de diabetes: além de informar, persuade o leitor a evitar o produto. Os demais são predominantemente informativos ou exclamativos. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Língua Portuguesa',
'Numa noite friorenta, um casal recebe um casal de amigos para jantar; sentam-se inicialmente na sala de visitas, onde as janelas estão abertas e a mulher recém-chegada diz: "Os jornais dizem que hoje vai ser a noite mais fria do ano!" Nesse caso, a frase tem uma função manifesta e uma função real, que correspondem, respectivamente, a:',
'',
'',
'["uma informação e um pedido;","uma declaração e uma ordem;","uma manifestação afetiva e uma informação;","uma constatação e uma explicação;","uma explicação e uma solicitação."]'::jsonb,
'A',
'A frase, na superfície (função manifesta), transmite uma informação (previsão de frio). Mas, no contexto (janelas abertas, noite fria), a intenção real é um pedido indireto para que fechem as janelas. Logo: informação (manifesta) e pedido (real). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Língua Portuguesa',
'Todas as frases abaixo têm valor informativo; a opção em que foi proposta uma modificação de modo a tornar a frase menos objetiva é:',
'',
'',
'["Decidimos modificar esta lei / Decidiu-se modificar a lei;","Os produtores de vinho vendem o produto mais caro este ano / O vinho é vendido mais caro este ano;","O colégio recusou a matrícula de meu filho / Recusaram a matrícula do meu filho;","Nossa editora só considerará as demandas de autores portadores de diplomas universitários / Só serão consideradas as demandas de autores portadores de diplomas universitários;","Consertou-se o carro dele e o conserto foi caro / O conserto do carro dele foi caro."]'::jsonb,
'C',
'Tornar menos objetiva significa reduzir a precisão/identificação dos agentes. Em C, troca-se "O colégio recusou" (agente identificado, objetivo) por "Recusaram" (sujeito indeterminado), diminuindo a objetividade. As demais mantêm ou até aumentam a objetividade/impessoalidade sem perder a identificação essencial. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Língua Portuguesa',
'A opção em que a passagem do discurso direto para o indireto é feita de forma adequada é:',
'',
'',
'["Maria acrescentou: \"Eu sei agora que meu amigo partirá daqui em dois dias\" / Maria acrescentou que ela sabia então que seu amigo partiria daqui dois dias mais tarde;","Seu professor lhe disse: \"Refaça agora o trabalho\" / Seu professor lhe disse que refizesse naquele momento o trabalho;","Baixando os olhos, Pedro disse: \"É verdade que eu menti ontem\" / Baixando os olhos, Pedro disse que era verdade que ele mentiu no dia anterior;","O operário confirmou: \"Vou receber amanhã tudo o que mereço pelo meu trabalho\" / O operário confirmou que vai receber no dia seguinte tudo o que merece pelo seu trabalho;","O menino explicou: \"Eu estava aqui na sala quando minha irmã caiu e machucou o joelho\" / O menino explicou que estava ali na sala quando a irmã dele tinha caído e tinha machucado o joelho."]'::jsonb,
'B',
'Na conversão para o discurso indireto, o imperativo "Refaça agora" passa adequadamente a "que refizesse naquele momento", com a correta transposição do verbo (presente→pretérito imperfeito do subjuntivo) e do advérbio ("agora"→"naquele momento"). Nas demais há incoerências na correlação verbal ou nos advérbios de tempo/lugar. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Língua Portuguesa',
'A frase abaixo que, ao contrário das demais, só traz dados objetivos, sem a participação do enunciador, é:',
'',
'',
'["O desempenho do time ontem foi excepcional;","É pena que tenha chovido tanto no final de semana;","Segundo o que eu penso, esse médico é um enganador;","Você não passa de um charlatão vulgar;","João acertou na loteria e está feliz com isso."]'::jsonb,
'E',
'"João acertou na loteria e está feliz com isso" relata fatos (acertou; está feliz) sem avaliação subjetiva do enunciador. As demais trazem juízos de valor explícitos ("excepcional", "é pena", "segundo o que eu penso", "charlatão vulgar"), marcando a participação do enunciador. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Língua Portuguesa',
'A finalidade essencial desse texto é:',
'Texto para a questão 23

"A corrida sempre esteve muito presente na minha vida, mas no começo dessa pandemia fui forçado a parar de fazer o que amo. Quando meu médico me liberou para praticar novamente, isolado, senti um desconforto no joelho e fui forçado a dar uma pausa… Não pude acreditar que isso estava acontecendo comigo, não podia aceitar que nunca mais ia praticar o esporte da minha vida. Eu pesquisei em tudo que podia, tentei tomar remédio para dor e até mesmo voltei ao meu médico. Mas só depois de tanto pesquisar, pude achar um blog onde um cara passou pela mesma coisa que eu, e a única coisa que ajudou ele a resolver a dor foi a joelheira Ultra K."',
'',
'["dar um depoimento pessoal;","incentivar pessoas a praticar esportes;","divulgar um produto comercial;","ajudar pessoas a enfrentar problemas;","promover a necessidade de consultas médicas."]'::jsonb,
'C',
'Apesar do formato de depoimento pessoal, a finalidade essencial do texto é publicitária: todo o relato conduz à menção do produto "joelheira Ultra K" como solução, caracterizando divulgação comercial. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Língua Portuguesa',
'Todas as frases abaixo são construídas por dois segmentos; a frase em que a troca de posição dos segmentos mostra inadequação é:',
'',
'',
'["O primeiro passo para conhecer-se é desconfiar de si mesmo;","Somos o que não parecemos e parecemos o que não somos;","O que sabemos fazer aprendemos fazendo;","O ignorante afirma, o sábio duvida e reflete;","A rotina é sempre a mesma: tomo café e lavo a louça."]'::jsonb,
'E',
'Em E há uma sequência temporal/lógica ("tomo café e lavo a louça") que, invertida ("lavo a louça e tomo café"), altera a ordem natural dos fatos, mostrando inadequação na troca. Nas demais, a inversão dos segmentos preserva o sentido (são estruturas paralelas ou reversíveis). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Língua Portuguesa',
'A impessoalidade pode ser construída em língua portuguesa com o pronome SE, mas também o pronome NÓS pode desempenhar esse papel; a frase abaixo em que o pronome SE foi adequadamente substituído pelo pronome NÓS é:',
'',
'',
'["O primeiro passo para conhecer-se é desconfiar de si mesmo / O primeiro passo para conhecermos-nos é desconfiarmos de nós mesmos;","Sabe-se o que se é, mas não o que se poderá ser / Sabe-se o que somos, mas não o que poderemos ser;","Conhece-se aquilo que se faz repetidamente / Conhecemos aquilo que fizemos repetidamente;","O que se sabe fazer, aprende-se fazendo / O que soubemos fazer, aprendemos fazendo;","Quando se erra a primeira casa de botão, não se conseguirá abotoar / Quando erramos a primeira casa de botão, não conseguiremos abotoar-nos."]'::jsonb,
'E',
'Em E, a substituição mantém coerência de tempo e sentido: "Quando se erra... não se conseguirá" passa a "Quando erramos... não conseguiremos", preservando a ideia impessoal/geral. Nas demais há problemas de colocação pronominal ("conhecermos-nos"), de correlação temporal (passado onde deveria ser presente) ou de sentido. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Língua Portuguesa',
'A definição abaixo, retirada do dicionário de Antônio Houaiss, em que o termo geral (hiperônimo) destacado foi bem selecionado é:',
'',
'',
'["mesa – imóvel composto de um tampo horizontal, que geralmente se destina a fins utilitários: refeições, jogos, escrita, costura, apoio etc.;","biblioteca – construção onde ficam depositadas, ordenadas e catalogadas diversas coleções de livros, periódicos e outros documentos, que o público, sob certas condições, pode consultar ou levar de empréstimo;","bailarino – profissional que dança profissionalmente, exibindo-se para o público;","cubo – desenho composto de seis faces quadradas de igual tamanho, formando um hexaedro;","livraria – casa editorial onde se vendem livros."]'::jsonb,
'C',
'O hiperônimo deve ser o termo geral correto que engloba o definido. "Bailarino" é adequadamente definido pelo termo geral "profissional". Nos demais, o hiperônimo é inadequado: mesa é "móvel" (não "imóvel"); biblioteca não é "construção" em essência (é instituição/acervo); cubo é "sólido geométrico" (não "desenho"); livraria é "estabelecimento comercial" (não "casa editorial", que é editora). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Língua Portuguesa',
'Todas as frases abaixo mostram linguagem figurada; a que mostra uma expansão da figura inicial, com o emprego de outra expressão figurada, é:',
'',
'',
'["Felicidade é um lugar onde você pode pousar, mas não pode fazer seu ninho;","Felicidade é como um beijo: você deve compartilhar para aproveitá-lo;","Felicidade é uma escrivaninha muito pequena e uma grande cesta de lixo;","Felicidade é um fluxo de caixa positivo;","A felicidade é um bem que se multiplica ao ser dividido."]'::jsonb,
'A',
'Em A, a figura inicial (felicidade como "lugar onde se pode pousar") é expandida por outra expressão figurada ("mas não pode fazer seu ninho"), dando continuidade à mesma metáfora. Nas demais há comparação única ou uma só imagem, sem expansão figurada encadeada. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Língua Portuguesa',
'O texto abaixo mostra seguidamente a preocupação com a precisão informativa; a marca destacada que corresponde a uma outra preocupação, que não a de precisão, é:',
'Texto para a questão 28

"A Instituição Policial brasileira, segundo documentação existente no Museu Nacional do Rio de Janeiro, data de 1530, quando da chegada de Martim Afonso de Sousa enviado ao Brasil-Colônia por D. João III. A pesquisa histórica revela que, no dia 20 de novembro de 1530, a Polícia brasileira iniciava as suas ações, promovendo justiça e organizando os serviços de ordem pública, como melhor entendesse, nas terras conquistadas do Brasil. A partir de então a Instituição Policial brasileira passou por seguidas reformulações nos anos de 1534, 1538, 1557, 1565, 1566, 1603, e, assim, sucessivamente. Somente em 1808, com a chegada do príncipe Dom João ao Brasil, a polícia começou a ser estruturada, comandada por um delegado e composta por escrivães e agentes. Na época, uma das principais funções desta organização era se prevenir de espiões europeus e fiscalizar embarcações. A polícia, então, também começou a ser chamada de Civil, como uma forma de diferenciá-la de outras formas de policiamento, por seu caráter investigativo."',
'',
'["a fonte segura das informações: \"A Instituição Policial brasileira, segundo documentação existente no Museu Nacional do Rio de Janeiro, data de 1530\";","a datação precisa: \"A partir de então a Instituição Policial brasileira passou por seguidas reformulações nos anos de 1534, 1538, 1557, 1565, 1566, 1603, e, assim, sucessivamente\";","a finalidade histórica: \"Na época, uma das principais funções desta organização era se prevenir de espiões europeus e fiscalizar embarcações\";","a base informativa de credibilidade: \"A pesquisa histórica revela que, no dia 20 de novembro de 1530, a Polícia brasileira iniciava as suas ações\";","a preocupação terminológica: \"A polícia, então, também começou a ser chamada de Civil, como uma forma de diferenciá-la de outras formas de policiamento, por seu caráter investigativo\"."]'::jsonb,
'C',
'As marcas de fonte, datação e credibilidade e a explicação terminológica relacionam-se à precisão/fundamentação do texto. Já o trecho que apresenta a finalidade histórica da organização ("prevenir-se de espiões... fiscalizar embarcações") revela outra preocupação — explicar o propósito/função — que não é propriamente a de precisão informativa. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Língua Portuguesa',
'Observe o primeiro parágrafo do texto 3. A afirmação abaixo que está em desacordo com os componentes desse parágrafo é:',
'Texto 3

"Com a chegada da temporada de verão, a Polícia Militar contará com o reforço de efetivo em Balneário Camboriú, buscando manter os indicadores dos crimes violentos em queda. No ano de 2019 ocorreram 13 homicídios. Já no ano passado, este número foi reduzido para 10. Diante a intensificação das ações policiais, o 12º Batalhão de Polícia Militar conseguiu alcançar em 2021, até o dia de hoje, a impressionante marca de apenas 6 homicídios dolosos. Isto significa uma redução de 40% no triênio, e se comparado ao ano de 2019, a redução ultrapassaria a 50%. O reforço de efetivo em Balneário Camboriú busca manter os indicadores dos crimes violentos em queda, visando a manutenção da qualidade de vida da cidade, que é referência tanto no âmbito estadual, como nacional."',
'',
'["o termo \"Com a chegada da temporada de verão\" indica simultaneamente as noções de tempo e causa;","o termo \"reforço de efetivo\" se refere ao aumento numérico e qualitativo de policiais;","o segmento \"buscando manter os indicadores dos crimes violentos em queda\" indica a finalidade do aumento de efetivo;","o segmento \"manter os indicadores dos crimes violentos em queda\" informa que já tinha havido queda no número de crimes violentos anteriormente;","os dois últimos períodos do parágrafo explicitam a afirmação anterior sobre a queda dos indicadores de crimes violentos."]'::jsonb,
'B',
'A expressão "reforço de efetivo" refere-se ao aumento do número de policiais (aspecto quantitativo), não havendo no texto indicação de aumento "qualitativo". Logo, a afirmação da letra B está em desacordo com o parágrafo. As demais afirmações são compatíveis com o texto. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Língua Portuguesa',
'O termo destacado que marca uma interferência do redator da notícia no conteúdo veiculado no texto 3 é:',
'',
'',
'["Com a chegada da temporada de verão, a Polícia Militar contará com o REFORÇO de efetivo em Balneário Camboriú, buscando manter os indicadores dos crimes violentos em queda;","No ano de 2019 ocorreram 13 HOMICÍDIOS. Já no ano passado, este número foi reduzido para 10;","Diante a intensificação das ações policiais, o 12º Batalhão de Polícia Militar conseguiu alcançar em 2021, até o dia de hoje, a IMPRESSIONANTE marca de apenas 6 homicídios dolosos;","Isto significa uma REDUÇÃO de 40% no triênio, e se comparado ao ano de 2019, a redução ultrapassaria a 50%;","...visando a MANUTENÇÃO da qualidade de vida da cidade, que é referência tanto no âmbito estadual, como nacional."]'::jsonb,
'C',
'O adjetivo "impressionante" expressa um juízo de valor do redator sobre o dado (apenas 6 homicídios), marcando sua interferência subjetiva no conteúdo. "Reforço", "homicídios", "redução" e "manutenção" são termos objetivos/factuais. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CONSTITUCIONAL (Questoes 31 a 45)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Constitucional',
'Eunice, servidora pública estadual, preencheu os requisitos para a fruição de determinado benefício assegurado pelo regime jurídico único dos servidores. No dia anterior àquele em que iria requerê-lo, a lei foi alterada e o benefício, suprimido. Um amigo lhe informou, corretamente, que o seu direito ao benefício não seria afetado pela nova lei, o que decorria da garantia constitucional do(a):',
'',
'',
'["coisa julgada;","direito adquirido;","ato jurídico perfeito;","expectativa legítima;","legalidade imanente."]'::jsonb,
'B',
'Como Eunice já havia preenchido todos os requisitos para a fruição do benefício antes da mudança da lei, ela incorporou o direito ao seu patrimônio jurídico: trata-se de direito adquirido (art. 5º, XXXVI, da CF/88), que a lei nova não pode prejudicar. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Constitucional',
'Nos termos do Art. 26, I, da Constituição de 1988, estão incluídos entre os bens dos Estados "as águas superficiais ou subterrâneas, fluentes, emergentes e em depósito, ressalvadas, neste caso, na forma da lei, as decorrentes de obras da União". Esse preceito dá origem a uma norma de eficácia:',
'',
'',
'["plena e aplicabilidade diferida;","limitada e princípio institutivo;","plena e aplicabilidade imediata;","contida e aplicabilidade imediata;","limitada e princípio programático."]'::jsonb,
'D',
'A norma produz efeitos desde logo (aplicabilidade imediata), mas admite restrição posterior pela ressalva "na forma da lei" quanto às águas decorrentes de obras da União. Essa possibilidade de o legislador restringir seu alcance caracteriza norma de eficácia contida (ou restringível), de aplicabilidade imediata. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Constitucional',
'Germano pretendia se candidatar a cargo eletivo e foi informado de que era alcançado por causa de inelegibilidade prevista na Constituição de 1988. É correto afirmar que uma causa de inelegibilidade de natureza constitucional:',
'',
'',
'["sempre impede que o interessado concorra a qualquer cargo eletivo;","somente alcança os cargos eletivos vinculados a um ente federativo em particular;","será afastada se houver a desincompatibilização no prazo indicado pela ordem jurídica;","somente alcança cargos eletivos específicos, conforme a causa geradora da inelegibilidade;","pode alcançar todos os cargos eletivos, um cargo eletivo específico ou os cargos eletivos vinculados a um ente federativo em particular."]'::jsonb,
'E',
'As causas de inelegibilidade constitucionais têm alcance variável conforme a sua natureza: há as absolutas (que impedem a candidatura a qualquer cargo, como a dos inalistáveis e analfabetos) e as relativas (que podem atingir cargos específicos ou os vinculados a determinado ente federativo, como no caso dos reflexos por parentesco). Logo, podem alcançar todos os cargos, um cargo específico ou os de um ente federativo. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Constitucional',
'João, deputado federal, foi denunciado pelo Procurador-Geral da República, perante o STF, pela prática de crime contra a Administração Pública. Nesse caso, a denúncia:',
'',
'',
'["somente poderá ser apreciada mediante prévia autorização da Câmara dos Deputados, o que não afetará o exercício do mandato;","pode ser livremente apreciada, independentemente de autorização da Câmara dos Deputados, mas esta Casa pode sustar o seu andamento;","uma vez recebida, acarretará o afastamento automático de João, salvo decisão em contrário da Câmara dos Deputados, tomada por maioria absoluta de votos;","pressupõe o juízo de admissibilidade da Câmara dos Deputados, o qual, em sendo positivo, permitirá o início do processo criminal em desfavor de João;","somente poderá ser apreciada mediante prévia autorização do Congresso Nacional, que também pode sustar o seu andamento no momento que lhe pareça adequado."]'::jsonb,
'B',
'Após a EC 35/2001, não é mais necessária autorização prévia da Casa para o recebimento da denúncia contra parlamentar por crime cometido após a diplomação; o STF pode processá-lo livremente. Contudo, recebida a denúncia por crime ocorrido após a diplomação, a Casa respectiva pode, por iniciativa de partido e pelo voto da maioria dos membros, sustar o andamento da ação (art. 53, §§3º e 4º, da CF/88). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Constitucional',
'A Assembleia Legislativa do Estado Alfa reformou a Constituição Estadual para dispor que seria observado, em todas as esferas de poder, como limite remuneratório único, o subsídio mensal dos desembargadores do respectivo Tribunal de Justiça, excepcionados apenas os deputados estaduais. À luz da Constituição de 1988, essa reforma é:',
'',
'',
'["inconstitucional, já que cada esfera de poder deve ter o seu limite remuneratório;","constitucional, pois simplesmente veicula norma de reprodução obrigatória já contemplada na Constituição da República de 1988;","inconstitucional, apenas em relação à exclusão dos deputados estaduais, que não podem receber tratamento diferenciado;","inconstitucional, pois o teto único importa em vinculação indireta de espécies remuneratórias distintas, o que é expressamente vedado;","constitucional, sendo expressamente autorizado que o subsídio dos desembargadores seja utilizado como limite único, desde que não alcance os deputados estaduais."]'::jsonb,
'E',
'A CF/88 (art. 37, XI e §12) autoriza expressamente que os Estados fixem, em sua Constituição, como limite único (subteto), o subsídio mensal dos desembargadores do Tribunal de Justiça — ressalvando-se da regra os subsídios dos deputados estaduais e dos vereadores. Logo, a reforma é constitucional, inclusive quanto à ressalva dos deputados estaduais. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Constitucional',
'O Município Alfa, réu em ação coletiva cuja causa de pedir se lastreava em lei municipal dissonante da ordem constitucional (conforme jurisprudência do STF sobre leis similares), decidiu propor ao STF, incidentalmente ao processo, a edição de súmula vinculante sobre a matéria. À luz das circunstâncias, o Município Alfa:',
'',
'',
'["não tem legitimidade para propor a edição de súmula vinculante;","tem legitimidade para propor a edição de súmula vinculante, o que não acarretará a suspensão do processo;","tem legitimidade para propor a edição de súmula vinculante, que obstará a promulgação de novas leis de teor similar;","tem legitimidade para propor a edição de súmula vinculante, que terá efeito vinculante apenas sobre os órgãos do Poder Judiciário;","não tem legitimidade para propor a edição de súmula vinculante, mas poderá ingressar com arguição de descumprimento de preceito fundamental."]'::jsonb,
'B',
'Os Municípios possuem legitimidade para propor a edição, revisão ou cancelamento de súmula vinculante, mas apenas incidentalmente ao curso de processo em que sejam parte (Lei nº 11.417/2006, art. 3º, §1º), e essa proposta não autoriza a suspensão do processo. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Constitucional',
'Em razão de calamidade de grandes proporções na natureza, o presidente da República avalia a decretação do estado de defesa. Na situação descrita, o estado de defesa:',
'',
'',
'["não pode ser decretado, já que a calamidade que o autoriza é a de natureza institucional e política, não a decorrente da ação da natureza;","pode ser decretado, após provocação do Conselho da República e do Conselho de Defesa Nacional, e prévia aquiescência do Congresso Nacional;","pode ser decretado, desde que ouvidos o Conselho da República e o Conselho de Defesa Nacional, com posterior apreciação do decreto pelo Congresso Nacional;","pode ser decretado, mas pelo Congresso Nacional, a partir de provocação do presidente da República, após autorização do Conselho da República e do Conselho de Defesa Nacional;","pode ser decretado, desde que haja prévia aquiescência do Congresso Nacional, sendo facultativa a manifestação do Conselho da República e do Conselho de Defesa Nacional."]'::jsonb,
'C',
'O estado de defesa é decretado pelo presidente da República para preservar ou restabelecer a ordem pública ou a paz social ameaçadas por grave e iminente instabilidade institucional ou atingidas por calamidades de grandes proporções na natureza (art. 136 da CF/88). Antes de decretá-lo, o presidente OUVE o Conselho da República e o Conselho de Defesa Nacional (manifestação opinativa), e o decreto é submetido POSTERIORMENTE ao Congresso Nacional, que decide por maioria absoluta. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Constitucional',
'A amazonas Joana recebeu pontuação que considerava dissonante do regulamento de competição de hipismo, perdendo colocação e premiação. Consultada a assessoria sobre qual "justiça" procurar (comum ou desportiva), foi-lhe respondido, corretamente, que:',
'',
'',
'["o princípio da inafastabilidade da tutela jurisdicional torna cogente que a questão seja diretamente submetida à justiça comum;","Joana somente pode procurar a justiça comum após o esgotamento das instâncias da justiça desportiva, conforme regulada em lei;","o caso somente pode ser submetido à apreciação da justiça desportiva, o que decorre da especialidade da matéria versada, não à justiça comum;","em razão da premiação em dinheiro que Joana não recebeu, a questão deixou de ser meramente desportiva, devendo ser resolvida pela justiça comum;","Joana poderia escolher livremente entre a submissão do caso à justiça comum ou à desportiva, devendo estar ciente, apenas, que as decisões desta última não são definitivas."]'::jsonb,
'B',
'Nos termos do art. 217, §1º, da CF/88, o Poder Judiciário só admite ações relativas à disciplina e às competições desportivas após esgotarem-se as instâncias da justiça desportiva, regulada em lei. Logo, Joana só pode procurar a justiça comum após esse esgotamento. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Constitucional',
'Pedro passou a publicar o seu próprio informativo impresso e foi notificado pela fiscalização municipal para suspender a circulação até obter licença do secretário municipal de Comunicação. À luz da sistemática constitucional, a atuação da fiscalização foi:',
'',
'',
'["incorreta, pois a publicação do informativo impresso promovida por Pedro independe de licença de qualquer autoridade;","correta, pois nenhuma pessoa, natural ou jurídica, pode oferecer bem ou serviço ao público sem prévia licença do órgão competente;","incorreta, pois a liberdade de informação jornalística, em qualquer veículo de comunicação social, afasta a necessidade de licença de autoridade;","incorreta, pois o funcionamento dos estabelecimentos de prestação de serviços não é de interesse local, logo, o Município não é competente para fiscalizá-los;","correta, pois a concessão de licença, pela autoridade competente, para as atividades de comunicação social, busca assegurar a liberdade de informação e afastar o anonimato."]'::jsonb,
'A',
'A CF/88 (art. 220, §6º) estabelece que a publicação de veículo impresso de comunicação INDEPENDE de licença de autoridade. Assim, a exigência de licença prévia para o informativo de Pedro é inconstitucional, tornando incorreta a atuação da fiscalização. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Constitucional',
'O prefeito do Município Beta editou decreto transformando áreas públicas no entorno de uma praça em áreas de proteção ambiental. Anos depois, outro prefeito quis desafetar essas áreas. A assessoria informou, corretamente, que:',
'',
'',
'["o prefeito poderia valer-se do mesmo instrumento, o decreto, para afastar a qualificação das áreas como de proteção ambiental;","apenas mediante prévia autorização judicial seria possível afastar a qualificação das áreas como sendo de proteção ambiental;","seria necessária a edição de lei municipal para que fosse afastada a qualificação das áreas como sendo de proteção ambiental;","não seria possível suprimir a qualificação das áreas como sendo de proteção ambiental, em razão da necessidade de perene proteção do meio ambiente;","apenas mediante permissivo expresso, inserido na lei orgânica do Município Beta, seria possível afastar a qualificação das áreas como sendo de proteção ambiental."]'::jsonb,
'C',
'A CF/88 (art. 225, §1º, III) determina que a alteração e a supressão de espaços territoriais especialmente protegidos só podem ser feitas por meio de lei. Assim, embora possam ter sido criadas por decreto, a desafetação/supressão da proteção exige lei em sentido formal. Logo, seria necessária lei municipal. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Constitucional',
'Certo Estado criou benefício assistencial para famílias de baixíssima renda, exigindo como principal requisito a estrita observância do planejamento familiar, com frequência a cursos, uso controlado de métodos contraceptivos e proibição de novos nascimentos nas famílias selecionadas. À luz da sistemática constitucional, o principal requisito é:',
'',
'',
'["constitucional, já que, por se tratar de adesão voluntária, o planejamento familiar não assumiria contornos coercitivos;","inconstitucional, pois a situação das famílias destinatárias do benefício torna o planejamento indiretamente coercitivo;","inconstitucional, pois a percepção de benefícios assistenciais, por suas próprias características, deve ser incondicionada;","constitucional, pois o Estado pode estabelecer contraprestações para todos os benefícios que ofereça;","constitucional, sendo proporcional, nesse caso, em relação à natureza e aos objetivos do benefício assistencial."]'::jsonb,
'B',
'A CF/88 (art. 226, §7º) funda o planejamento familiar nos princípios da dignidade da pessoa humana e da paternidade responsável, sendo livre decisão do casal, vedada qualquer forma coercitiva por parte de instituições. Condicionar o benefício à proibição de novos nascimentos, diante da vulnerabilidade das famílias, torna o planejamento indiretamente coercitivo, o que é inconstitucional. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Constitucional',
'Maria e João foram informados de que: (1) apenas o acesso à educação infantil e ao ensino fundamental era obrigatório e gratuito; (2) os programas suplementares eram facultativos, conforme avaliação política e disponibilidade orçamentária de cada ente; (3) existia a garantia de progressiva universalização do ensino médio gratuito. À luz da sistemática constitucional:',
'',
'',
'["as informações 1, 2 e 3 estão incorretas;","as informações 1, 2 e 3 estão corretas;","apenas a informação 1 está correta;","apenas a informação 2 está correta;","apenas a informação 3 está correta."]'::jsonb,
'E',
'A informação 1 é incorreta: a educação básica obrigatória e gratuita é dos 4 aos 17 anos (art. 208, I, da CF/88), não "apenas" infantil e fundamental. A 2 é incorreta: os programas suplementares (material didático, transporte, alimentação, saúde) são dever do Estado (art. 208, VII), não meramente facultativos. A 3 é correta: a CF garante a progressiva universalização do ensino médio gratuito (art. 208, II). Logo, apenas a informação 3 está correta. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Direito Constitucional',
'A União editou lei dispondo que, nas áreas de ciência, tecnologia e educação, o Estado (1) dará tratamento prioritário à pesquisa científica básica e tecnológica; (2) promoverá e incentivará a atuação das instituições públicas no território nacional, e somente em caráter excepcional no exterior; (3) vinculará, obrigatoriamente, parcela de sua receita orçamentária a entidades públicas de fomento ao ensino e à pesquisa. À luz da sistemática constitucional, apenas:',
'',
'',
'["os comandos 1 e 2 são inconstitucionais;","os comandos 2 e 3 são constitucionais;","o comando 1 é constitucional;","o comando 2 é constitucional;","o comando 3 é constitucional."]'::jsonb,
'C',
'O comando 1 é constitucional: a CF/88 (art. 218, §1º) assegura tratamento prioritário à pesquisa científica básica. O comando 2 é inconstitucional: a CF promove a atuação no exterior sem restringi-la ao "caráter excepcional". O comando 3 é inconstitucional como obrigação da União: a vinculação obrigatória de receita a entidades de fomento é prevista para os Estados e o DF (art. 218, §5º), e não imposta à União nesses termos. Logo, apenas o comando 1 é constitucional. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Direito Constitucional',
'João, oficial do Exército, praticou conduta grave sob a ótica dos padrões deontológicos da disciplina militar. Nesse caso, João pode perder o posto e a patente:',
'',
'',
'["em decorrência de condenação em processo administrativo disciplinar ou como efeito da condenação na justiça comum ou militar à pena privativa de liberdade superior a dois anos, por sentença transitada em julgado;","apenas se for julgado indigno do oficialato ou com ele incompatível, ou condenado à pena privativa de liberdade superior a dois anos, por sentença transitada em julgado de tribunal especial;","como efeito da condenação na justiça comum ou militar à pena privativa de liberdade superior a dois anos, por sentença transitada em julgado;","apenas como efeito da condenação na justiça militar à pena privativa de liberdade superior a dois anos, por sentença transitada em julgado;","apenas se for julgado indigno do oficialato ou com ele incompatível, por decisão de tribunal militar de caráter permanente."]'::jsonb,
'E',
'Nos termos do art. 142, §3º, VI e VII, da CF/88, em tempo de paz o oficial só perde o posto e a patente se for julgado indigno do oficialato ou com ele incompatível, por decisão de tribunal militar de caráter permanente. Como o enunciado trata de conduta no último ano (tempo de paz), a hipótese aplicável é exatamente essa, correspondente à letra E. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito Constitucional',
'Determinada associação foi criticada por desenvolver atividades supostamente reprováveis e com apologia ao crime. Consultada sobre a possibilidade de suspensão das atividades da associação, a assessoria respondeu, corretamente, que a suspensão:',
'',
'',
'["somente seria possível após a condenação em processo administrativo;","somente seria possível por decisão judicial, independentemente do trânsito em julgado;","não seria possível, pois a liberdade de associação tem estatura constitucional;","exige decisão transitada em julgado, quer seja proferida em processo administrativo, quer em processo judicial;","exige o julgamento do ilícito em processo administrativo, requisito da ação judicial na qual a suspensão será requerida."]'::jsonb,
'B',
'A CF/88 (art. 5º, XIX) dispõe que as associações só podem ser compulsoriamente dissolvidas ou ter suas atividades suspensas por decisão judicial, exigindo-se o trânsito em julgado apenas para a dissolução; para a mera SUSPENSÃO das atividades basta decisão judicial, independentemente do trânsito em julgado. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ADMINISTRATIVO (Questoes 46 a 60)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito Administrativo',
'Para enfrentamento da emergência do coronavírus, o Estado Alfa adotou a medida de quarentena (restrição de atividades e separação de pessoas/mercadorias suspeitas de contaminação), com base em evidências científicas e limitada no tempo e no espaço ao mínimo indispensável. No caso, a quarentena foi embasada no poder administrativo:',
'',
'',
'["de polícia, mediante imposição de restrições ao exercício de liberdades individuais e ao direito de propriedade do particular, em prol do interesse coletivo;","de segurança pública, mediante imposição de restrições legais, cujo descumprimento merece repressão na esfera administrativa e criminal pelos órgãos de segurança pública;","disciplinar, mediante o estabelecimento de normas sanitárias que regem a vida em sociedade, com base na supremacia do interesse público sobre o privado;","hierárquico, mediante imposição de restrições por autoridades administrativas, que condicionam liberdade e propriedade individual em prol do interesse público;","regulamentar, mediante edição de normas concretas e específicas para disciplinar situação urgente que demanda sacrifícios individuais em prol do interesse coletivo."]'::jsonb,
'A',
'A quarentena restringe liberdades individuais e o direito de propriedade em benefício do interesse coletivo (saúde pública), o que caracteriza o exercício do poder de polícia administrativa. Não se trata de poder disciplinar (interno), hierárquico (relação de subordinação) nem regulamentar (edição de atos normativos). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Administrativo',
'Em operação conjunta, agentes municipais de vigilância sanitária constataram que uma padaria estava repleta de ratos e expondo produtos impróprios ao consumo e, com base em previsão legal, interditaram o estabelecimento. A citada interdição é um ato administrativo com atributo da:',
'',
'',
'["imperatividade, que é um meio de execução direta do ato administrativo, mediante imprescindível e prévio controle jurisdicional, admitido o contraditório diferido pelo particular interessado;","exigibilidade, que é um meio legítimo de coerção direta do ato administrativo, assegurado o posterior controle jurisdicional e admitido o contraditório imediato pelo particular interessado;","tipicidade, que é um meio de coerção indireta do ato administrativo que prescinde de prévio controle jurisdicional, admitido o contraditório imediato pelo particular interessado;","autoexecutoriedade, que é um meio de execução direta do ato administrativo que prescinde de prévio controle jurisdicional, admitido o contraditório diferido pelo particular interessado;","presunção de legitimidade, que é um meio legítimo de execução direta do ato administrativo, desde que assegurado o contraditório imediato pelo particular interessado."]'::jsonb,
'D',
'A interdição imediata, diante da urgência, independentemente de prévia manifestação do Judiciário, caracteriza a autoexecutoriedade: a Administração executa diretamente o ato, dispensando prévio controle jurisdicional, assegurado ao particular o contraditório diferido (posterior). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Administrativo',
'No Estado Delta, a Delegacia de Roubos e Furtos de Automóveis e de Cargas (DRFAC) foi desmembrada em duas delegacias especializadas distintas (DRFA e DRFC). De acordo com a doutrina de Direito Administrativo, a providência adotada denomina-se:',
'',
'',
'["descentralização funcional, consistente na repartição externa de competência entre órgãos distintos do Estado Delta;","delegação funcional, mediante divisão externa de competência entre órgãos distintos do Estado Delta;","outorga administrativa, mediante escalonamento especializado de competência entre delegacias distintas;","desconcentração administrativa, consistente em distribuição interna de competências;","descentralização administrativa, mediante especialização interna no âmbito de uma mesma pessoa jurídica."]'::jsonb,
'D',
'A criação de novos órgãos (delegacias) dentro da mesma pessoa jurídica (o Estado), com repartição interna de competências, caracteriza a desconcentração administrativa. A descentralização pressupõe transferência a outra pessoa jurídica, o que não ocorre aqui. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Administrativo',
'Antônio, delegado titular da Xª DP, sempre designava o inspetor João (seu desafeto) para os dias menos concorridos, em retaliação. João recorreu administrativamente, comprovando a perseguição. No caso, o chefe institucional:',
'',
'',
'["deve declarar a nulidade do ato do delegado Antônio, por abuso de poder, na modalidade excesso de poder, pois agiu com o intuito de perseguir seu subordinado;","deve declarar a nulidade do ato do delegado Antônio, por abuso de poder, na modalidade desvio de poder, por vício no elemento finalidade do ato administrativo;","deve declarar a nulidade do ato do delegado Antônio, por abuso de poder, na modalidade excesso de poder, por vício no elemento motivo do ato administrativo;","não deve declarar a nulidade do ato do delegado Antônio, que agiu nos limites de seu poder discricionário, na qualidade de chefe imediato de João;","não deve declarar a nulidade do ato do delegado Antônio, pois os elementos do ato administrativo não estão viciados, de maneira que, apesar de imoral, a conduta não é ilegal."]'::jsonb,
'B',
'O delegado usou de sua competência para fim diverso do interesse público (perseguição pessoal), configurando desvio de poder (ou desvio de finalidade): vício no elemento finalidade do ato administrativo. O chefe deve, portanto, declarar a nulidade do ato. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Administrativo',
'O delegado Carlos extinguiu o plantão da Delegacia Especializada de Atendimento à Infância e à Juventude, remetendo os casos de urgência à delegacia comum mais próxima. O Ministério Público ajuizou ação civil pública pleiteando o retorno do plantão de 24 horas. De acordo com a jurisprudência do STJ, a pretensão ministerial:',
'',
'',
'["não merece prosperar, porque ação civil pública não é a medida judicial adequada para o caso, sob pena de violação ao princípio da separação dos poderes;","não merece prosperar, porque o Ministério Público não ostenta legitimidade para ajuizar ação civil pública em favor de adolescentes infratores, e sim apresentar representação em face deles;","não merece prosperar, porque o delegado agiu nos limites de sua discricionariedade administrativa, observados seus critérios de conveniência e oportunidade, e o Poder Judiciário não pode se imiscuir no mérito administrativo;","merece prosperar, pois, via de regra, o Poder Judiciário, quando provocado em tema de políticas públicas, deve analisar a legalidade e o mérito administrativo de atos administrativos;","merece prosperar, pois o ato do delegado praticado com suporte no poder discricionário é contrário ao ordenamento jurídico, razão pela qual é legítima a intervenção do Poder Judiciário."]'::jsonb,
'E',
'Segundo o STJ, embora o Judiciário em regra não examine o mérito administrativo, quando o ato discricionário é contrário ao ordenamento (viola normas constitucionais e legais de proteção à criança e ao adolescente, como a exigência de atendimento em repartição especializada), é legítima a intervenção judicial. A pretensão do MP merece prosperar. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Administrativo',
'O Sindicato dos Policiais Civis do Estado Gama convocou assembleia para deliberar sobre greve. O inspetor Jorge expôs que, segundo a jurisprudência do STF, o exercício de greve pela Polícia Civil é:',
'',
'',
'["lícito, diante da previsão constitucional, mas é imprescindível que ao menos 30% da categoria continue trabalhando, pelo princípio da continuidade do serviço público;","lícito, mas a Administração deve proceder ao desconto dos dias de paralisação, salvo se tiver ocorrido conduta ilícita do poder público, permitida a compensação em caso de acordo;","ilícito, pois a Constituição da República de 1988, apesar de prever genericamente o direito de greve aos servidores, expressamente veda tal direito aos policiais militares e civis;","ilícito, pois a Constituição da República de 1988 expressamente veda o direito de greve a todos os servidores públicos da área da segurança pública e da saúde, por serem serviços essenciais;","ilícito, pois há prevalência do interesse público e social na manutenção da segurança interna, da ordem pública e da paz social sobre o interesse individual da categoria."]'::jsonb,
'E',
'O STF firmou entendimento de que é inconstitucional o exercício do direito de greve pelas carreiras policiais (incluída a Polícia Civil), por prevalência do interesse público e social na manutenção da segurança interna, da ordem pública e da paz social sobre o interesse da categoria. Logo, a greve é ilícita. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Administrativo',
'João foi eliminado na segunda etapa (capacidade física) de concurso para inspetor, por ato publicado e subscrito pelo subsecretário estadual de Polícia Civil, mediante delegação válida do secretário (competente de forma não exclusiva para presidir a comissão). Inconformado, João deve impetrar mandado de segurança em face do:',
'',
'',
'["secretário estadual de Polícia Civil, na qualidade de autoridade delegante, apesar de ser cabível a delegação de competência no caso concreto;","secretário estadual de Polícia Civil, na qualidade de autoridade delegante, haja vista que não é cabível a delegação de competência no caso concreto;","subsecretário estadual de Polícia Civil, na qualidade de autoridade delegada, haja vista ser cabível a delegação de competência no caso concreto;","subsecretário estadual de Polícia Civil, na qualidade de autoridade delegada, haja vista que não é cabível a delegação de competência no caso concreto;","governador do Estado, que é a autoridade que ostenta competência para homologação do concurso e nomeação dos candidatos aprovados."]'::jsonb,
'C',
'Nos termos da Súmula 510 do STF, pratica ato e responde pelo mandado de segurança a autoridade que o executa por delegação (a autoridade delegada). Sendo cabível a delegação (competência não exclusiva), o ato de eliminação é do subsecretário, autoridade coatora. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Administrativo',
'José e João, inspetores da PC-RJ, cumpriram mandado de prisão de André, que não resistiu; algemado, foi espancado até a morte por dois vizinhos, quedando-se omissos os policiais. Os filhos de André ajuizaram ação indenizatória contra o Estado. De acordo com o STJ, a pretensão indenizatória:',
'',
'',
'["merece prosperar, desde que comprovado que o evento danoso teria ocorrido mesmo se a vítima não estivesse sob sujeição de agentes estatais, incidindo a responsabilidade civil subjetiva por omissão;","merece prosperar, desde que comprovado que os policiais civis poderiam ter agido para evitar o resultado morte, mas optaram por não fazê-lo, incidindo a responsabilidade civil subjetiva por omissão;","merece prosperar, diante do dever especial do Estado de assegurar a integridade e a dignidade daqueles que se encontram sob sua custódia, incidindo a responsabilidade civil objetiva por omissão;","não merece prosperar, pois o resultado morte decorreu de ato ilícito de terceiro, que rompe o nexo de causalidade entre o dever de segurança especial da Administração e eventuais danos à vida, à integridade e à dignidade da vítima;","não merece prosperar, pois incide a excludente de responsabilidade civil da culpa exclusiva de terceiro, haja vista que o Estado não pode ser erigido a garantidor universal da não superveniência de qualquer ato ilícito."]'::jsonb,
'C',
'Quando a vítima se encontra sob a custódia direta do Estado (preso algemado em poder dos agentes), surge o dever especial de proteção à sua integridade e vida. A omissão dos policiais em impedir a agressão fatal atrai a responsabilidade civil objetiva do Estado (omissão específica/custódia), conforme a jurisprudência do STJ. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Administrativo',
'A Sepol deseja contratar sociedade empresária para aquisição de computadores com sistema de segurança de dados, em contexto que envolve inovação tecnológica, impossibilidade de satisfazer a necessidade sem adaptação de soluções de mercado e impossibilidade de definir as especificações técnicas com precisão suficiente. Consoante a Lei nº 14.133/2021, a contratação ocorrerá mediante:',
'',
'',
'["inexigibilidade de licitação, por expressa previsão legal, e o contratado deverá comprovar previamente que os preços estão em conformidade com os praticados em contratações semelhantes;","dispensa de licitação, por expressa previsão legal, e o contratado deverá comprovar previamente que os preços estão em conformidade com os praticados em contratações semelhantes;","prévia licitação, na modalidade diálogo competitivo, com o intuito de desenvolver uma ou mais alternativas capazes de atender às necessidades da Sepol, devendo os licitantes apresentar proposta final após o encerramento dos diálogos;","prévia licitação, na modalidade pregão, pois o objeto do contrato possui padrões de desempenho e qualidade que podem e devem ser objetivamente definidos pelo edital, por meio de especificações usuais de mercado;","prévia licitação, na modalidade leilão, que exigirá registro cadastral prévio, não terá fase de habilitação e deverá ser homologada assim que concluída a fase de lances, superada a fase recursal."]'::jsonb,
'C',
'A situação descrita (inovação tecnológica, necessidade de adaptação de soluções e impossibilidade de definir com precisão as especificações técnicas) é exatamente a hipótese do diálogo competitivo (art. 32 da Lei nº 14.133/2021), modalidade em que a Administração dialoga com licitantes para desenvolver alternativas, apresentando estes a proposta final após o encerramento dos diálogos. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Administrativo',
'Mário, inspetor de polícia, recebia mensalmente R$ 5.000,00 para tolerar a exploração e a prática de jogos de azar. De acordo com a tipologia da Lei nº 8.429/1992, Mário cometeu ato de improbidade administrativa que:',
'',
'',
'["importou enriquecimento ilícito e está sujeito, após o devido processo administrativo, a sanções como, por exemplo, perda da função pública, multa civil e suspensão dos direitos políticos;","importou enriquecimento ilícito e está sujeito, após o devido processo judicial, a sanções como, por exemplo, perda dos valores acrescidos ilicitamente ao patrimônio, perda da função pública e suspensão dos direitos políticos;","causou prejuízo ao erário e está sujeito, após o devido processo administrativo, a sanções como, por exemplo, perda da função pública, multa civil e suspensão dos direitos políticos pelo prazo de até oito anos;","atentou contra os princípios da Administração Pública e está sujeito, após o devido processo administrativo, a sanções como, por exemplo, ressarcimento ao erário, multa civil e cassação dos direitos políticos;","atentou contra os princípios da Administração Pública e está sujeito, após o devido processo judicial, a sanções como, por exemplo, perda da função pública e proibição de contratar com o poder público ou de receber benefícios ou incentivos fiscais ou creditícios pelo prazo de oito anos."]'::jsonb,
'B',
'Receber vantagem econômica indevida (propina) para tolerar jogos de azar configura ato de improbidade que importa enriquecimento ilícito (art. 9º da Lei nº 8.429/1992). As sanções (perda dos valores, perda da função, suspensão dos direitos políticos, etc.) são aplicadas pela via judicial (não administrativa). A alternativa correta é a letra B. (Observação: a suspensão dos direitos políticos é prevista na lei; a "cassação" referida em outra opção não existe nesse regime.)'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Administrativo',
'A Corte IDH, no Caso Nova Brasília, determinou que o Estado implemente curso permanente e obrigatório sobre atendimento a mulheres vítimas de estupro, destinado a todos os níveis das Polícias Civil e Militar do RJ. Essa determinação vai ao encontro do princípio expresso da administração pública que espera o melhor desempenho possível do agente. Trata-se do princípio da:',
'',
'',
'["impessoalidade, segundo o qual as pessoas vulneráveis devem receber tratamento compatível com suas necessidades, a fim de que seja alcançado o interesse público;","autotutela, que determina que a Administração Pública deve qualificar e capacitar constantemente seus servidores públicos, valendo-se das escolas internas de cada instituição;","continuidade dos serviços públicos, segundo o qual as atividades executadas pelos agentes públicos não devem ser interrompidas e devem ser desempenhadas com presteza e qualidade;","razoabilidade, que se relaciona com a proporcionalidade, de maneira que os agentes públicos devem ser qualificados para atender à demanda social com capacitação específica para oitiva qualificada e especializada;","eficiência, que se relaciona com o comando constitucional que prevê que a lei disciplinará as formas de participação do usuário na administração pública direta e indireta, regulando especialmente as reclamações relativas à prestação dos serviços públicos."]'::jsonb,
'E',
'O princípio que busca o melhor desempenho possível do agente público, com qualificação e capacitação para melhores resultados, é o da eficiência (art. 37, caput, da CF/88, incluído pela EC 19/1998). A alternativa que o nomeia expressamente é a letra E. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Administrativo',
'Roberto, inspetor da PC-RJ, de forma livre e consciente, agrediu em serviço o inspetor José com três socos, causando-lhe lesões. Consoante o Decreto-Lei nº 218/1975, após o devido processo administrativo disciplinar, Roberto está sujeito à pena de:',
'',
'',
'["demissão, que prescreve juntamente com a prescrição do crime, e o curso do prazo prescricional disciplinar interrompe-se com a instauração da sindicância ou do processo administrativo disciplinar, até decisão final proferida por autoridade competente;","demissão, que prescreve no prazo de cinco anos, e o curso do prazo prescricional disciplinar suspende-se com a instauração da sindicância ou do processo administrativo disciplinar, até decisão final;","demissão, que prescreve no prazo de três anos, e o curso do prazo prescricional disciplinar não se suspende ou se interrompe com a instauração da sindicância ou do processo administrativo disciplinar;","suspensão, que prescreve no prazo de três anos, e o curso do prazo prescricional disciplinar suspende-se com a instauração da sindicância ou do processo administrativo disciplinar;","suspensão, que prescreve juntamente com a prescrição do crime, e o curso do prazo prescricional disciplinar não se suspende ou se interrompe com a instauração da sindicância ou do processo administrativo disciplinar."]'::jsonb,
'A',
'A agressão física em serviço configura transgressão grave, punível com demissão. No regime do Decreto-Lei nº 218/1975, quando a transgressão também constitui crime, a prescrição da pretensão punitiva disciplinar acompanha a do crime, e o prazo prescricional interrompe-se com a instauração da sindicância ou do PAD, até a decisão final. A alternativa que reproduz essa sistemática corresponde ao gabarito oficial (letra A).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Administrativo',
'Marta, inspetora da PC-RJ, foi demitida após PAD. Oito meses depois, reuniu provas novas de sua inocência e obteve, em revisão do processo, decisão deferindo seu reingresso na Polícia Civil, mediante:',
'',
'',
'["reintegração, com ressarcimento do vencimento e vantagens e reconhecimento dos direitos ligados ao cargo;","ascensão, com ressarcimento do vencimento e vantagens e reconhecimento dos direitos ligados ao cargo;","aproveitamento, sem direito a ressarcimento do vencimento e vantagens, mas com reconhecimento dos direitos ligados ao cargo;","readaptação, sem direito a ressarcimento do vencimento e vantagens, mas com reconhecimento dos direitos ligados ao cargo;","reversão, sem direito a ressarcimento do vencimento e vantagens, mas com reconhecimento dos direitos ligados ao cargo."]'::jsonb,
'A',
'Comprovada a inocência do servidor demitido, por meio de revisão do processo, o reingresso dá-se por reintegração, com o ressarcimento de todas as vantagens e o reconhecimento dos direitos ligados ao cargo (restabelecimento da situação anterior). Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Administrativo',
'Em janeiro de 2020, Maria completou cinco anos de efetivo serviço como policial civil. Sabendo que, em 2019, gozou licença para tratamento de saúde por cem dias, com base no Decreto nº 3.044/1980, Maria:',
'',
'',
'["tem direito à licença-prêmio, desde que se suspenda por noventa dias a contagem do tempo de serviço para fins de cumprir o período aquisitivo;","tem direito à licença-prêmio, desde que se suspenda por cem dias a contagem do tempo de serviço para fins de cumprir o período aquisitivo;","tem direito à licença-prêmio, sem qualquer suspensão na contagem do prazo, com todos os direitos e vantagens de seu cargo efetivo, e pode gozá-la integralmente, ou em períodos de um a dois meses;","não tem direito à licença-prêmio, diante do novo regime jurídico dos servidores públicos estaduais, por expressa previsão legal, haja vista que não existe direito adquirido a regime jurídico estatutário;","não tem direito à licença-prêmio, haja vista que, durante o período aquisitivo do quinquênio, gozou licença para tratamento da saúde, havendo interrupção do prazo que volta a contar do zero a partir do término da licença."]'::jsonb,
'E',
'Conforme o regime do Decreto nº 3.044/1980, o gozo de licença para tratamento de saúde no período aquisitivo da licença-prêmio interrompe a contagem do quinquênio, que recomeça do zero após o término da licença. Assim, Maria não teria direito à licença-prêmio naquele momento. A alternativa que expressa essa consequência corresponde ao gabarito oficial (letra E).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Administrativo',
'João, inspetor da PC-RJ, escalado para operação de busca e apreensão, simulou doença para esquivar-se do cumprimento do dever. Consoante o Decreto-Lei nº 218/1975, em tese, o inspetor João cometeu transgressão disciplinar:',
'',
'',
'["leve, razão pela qual está sujeito à pena de advertência, que será aplicada em particular e verbalmente;","média, razão pela qual está sujeito à pena de suspensão de 16 a 40 dias;","média, razão pela qual está sujeito à pena de suspensão de até 120 dias;","grave, razão pela qual está sujeito à pena de suspensão de 60 a 90 dias;","grave, razão pela qual está sujeito à pena de demissão."]'::jsonb,
'B',
'Simular doença para esquivar-se de dever funcional configura transgressão de natureza média no regime do Decreto-Lei nº 218/1975, sujeitando o servidor à pena de suspensão (na faixa de 16 a 40 dias). A alternativa que reproduz essa classificação e sanção corresponde ao gabarito oficial (letra B).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PENAL E LEIS ESPECIAIS (Questoes 61 a 75)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Hades, produtor técnico, entrega arma de fogo verdadeira e municiada ao ator Ares, fazendo-o acreditar tratar-se de arma cenográfica; sabendo que Ares deveria apontar e disparar contra Atena na cena, e querendo a morte dela, Hades realiza a substituição. Ares dispara e mata Atena. Do ponto de vista jurídico-penal:',
'',
'',
'["Ares e Hades responderão por homicídio doloso, o primeiro como autor e o segundo como partícipe;","Ares e Hades responderão por homicídio doloso, o primeiro como partícipe e o segundo como autor;","Ares e Hades responderão por homicídio doloso, como coautores;","Ares responderá por homicídio culposo e Hades por homicídio doloso;","Ares não responderá por crime e Hades responderá por homicídio doloso."]'::jsonb,
'E',
'Trata-se de autoria mediata: Hades utiliza Ares como instrumento, induzindo-o em erro (crença de que a arma era cenográfica). Ares, em erro de tipo que exclui o dolo e sem previsibilidade, não responde por crime. Hades, autor mediato, responde por homicídio doloso. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Em relação ao sujeito passivo dos delitos de violência doméstica e familiar contra a mulher, é correto afirmar que:',
'',
'',
'["há necessidade de demonstração de vulnerabilidade concreta;","a ausência de demonstração de relação de inferioridade inviabiliza a responsabilização criminal;","a hipossuficiência e a vulnerabilidade da mulher em contexto de violência doméstica e familiar é presumida;","em caso de subjugação feminina, a aplicação do sistema protetivo depende de demonstração específica;","a organização social brasileira não é mais um sistema hierárquico de poder baseado no gênero."]'::jsonb,
'C',
'A jurisprudência consolidada entende que, no contexto de violência doméstica e familiar contra a mulher, a hipossuficiência e a vulnerabilidade da mulher são presumidas pela Lei Maria da Penha, dispensando demonstração concreta caso a caso. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Penal',
'Determinado agente pratica o furto de bem pertencente a um casal, casado sob o regime de comunhão de bens, consistente em uma pequena estátua de bronze (avaliada em R$ 3.000,00) que reproduz marido e mulher de mãos dadas. O agente deverá responder por:',
'',
'',
'["dois furtos, em concurso material;","dois furtos, em concurso formal perfeito;","dois furtos, em concurso formal imperfeito;","um furto, em continuidade delitiva;","um furto, sem concurso ou continuidade."]'::jsonb,
'E',
'Embora o bem pertença a duas pessoas (casal em comunhão), houve uma única conduta de subtração de um único objeto (a estátua). O patrimônio é atingido de forma unitária; trata-se de crime único de furto, sem concurso de crimes nem continuidade delitiva. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Penal',
'Depois de furtar bem de valor considerável, Hades aliena-o para Zeus, incauto consumidor e desconhecedor de sua origem ilícita. Nessa hipótese, Hades deverá responder por:',
'',
'',
'["crime único de estelionato de disposição de coisa alheia como própria;","estelionato de disposição de coisa alheia como própria em concurso material com furto;","estelionato de disposição de coisa alheia como própria em concurso formal próprio com furto;","estelionato de disposição de coisa alheia como própria em concurso formal impróprio com furto;","crime único de furto."]'::jsonb,
'B',
'Pelo gabarito oficial, há dois crimes autônomos em concurso material: o furto, já consumado com a subtração, e a disposição de coisa alheia como própria (art. 171, §2º, I, do CP), configurada quando Hades vende a Zeus (terceiro de boa-fé, induzido em erro quanto à origem/propriedade do bem) o produto do crime, obtendo nova vantagem ilícita em prejuízo do adquirente. Por serem condutas distintas, lesando bens/vítimas diversos, respondem em concurso material. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Penal',
'Hermes, funcionário de empresa de logística, recebe um automóvel da empresa para fazer entregas, autorizado a usá-lo também no trajeto casa-trabalho. Durante a pandemia, vende o veículo a Apollo, terceiro de boa-fé, ficando com o valor. Hermes deverá responder por:',
'',
'',
'["furto simples;","furto mediante fraude;","peculato-furto;","peculato-desvio;","apropriação indébita."]'::jsonb,
'E',
'Hermes tinha a posse lícita e desvigiada do veículo (confiado pela empresa). Ao vender o bem e ficar com o valor, inverteu o título da posse, apropriando-se de coisa alheia móvel de que tinha a posse — conduta típica da apropriação indébita (art. 168 do CP). Não há subtração (furto) nem envolvimento de bem público (peculato). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Penal',
'Em evento no Maracanã, Hefesto subtrai de Hera um celular e uma carteira, aproveitando-se de esbarrão. Percebido por Kratos, que tenta interceptá-lo, Hefesto o agride com socos e um chute, derrubando-o, e só é capturado meia hora depois ao tentar revender o aparelho. Hefesto deverá responder por:',
'',
'',
'["furto qualificado pela destreza e lesões corporais leves;","furto simples e lesões corporais leves;","roubo próprio;","roubo impróprio;","roubo majorado."]'::jsonb,
'D',
'A subtração ocorreu sem violência (furto, inicialmente). Logo após, para assegurar a detenção da coisa subtraída, Hefesto empregou violência contra pessoa (agressões em Kratos). Essa violência empregada após a subtração, para garantir a posse do bem, caracteriza o roubo impróprio (art. 157, §1º, do CP). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Penal',
'Fobos liga para a casa de Gaia e, aproveitando-se do atendimento preocupado ("Hipério, você está bem?"), afirma que o bem-estar do filho dela dependerá de pagamento de resgate, exigindo depósito de R$ 10.000,00. Gaia transfere o valor, sem saber que Hipério estava a salvo, apenas dormindo embriagado na calçada. Fobos deverá responder por:',
'',
'',
'["furto mediante fraude;","roubo próprio;","extorsão;","extorsão mediante sequestro;","estelionato."]'::jsonb,
'C',
'Fobos constrange Gaia, mediante grave ameaça (de mal ao filho), a entregar vantagem econômica indevida. Como não houve efetiva privação de liberdade da vítima (Hipério não foi sequestrado; estava livre), não se configura extorsão mediante sequestro, mas sim extorsão (art. 158 do CP), em que a vítima pratica o ato de disposição patrimonial. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Penal',
'Ártemis e Deméter trocaram voluntariamente fotos íntimas por aplicativo. Deméter ameaça expor essas fotos em sites pornográficos caso Ártemis não concorde em se exibir, inserindo objetos em seu canal retal, através de webcam. Tal conduta configura o delito de:',
'',
'',
'["estupro;","violação sexual mediante fraude;","importunação sexual;","assédio sexual;","registro não autorizado da intimidade sexual."]'::jsonb,
'A',
'Deméter, mediante grave ameaça (expor as fotos íntimas), constrange Ártemis a praticar ato libidinoso (introduzir objetos no próprio corpo e exibir-se). O constrangimento à prática de ato libidinoso mediante grave ameaça configura estupro (art. 213 do CP), que abrange atos libidinosos diversos da conjunção carnal, inclusive praticados pela própria vítima. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Penal',
'Sob o argumento de produzir cena de arte para um filme, Circe produz, dirige e filma a prática de ato sexual entre Hebe, de 13 anos, e Deimos, ator pornográfico adulto. Sob o aspecto jurídico-penal, é correto afirmar que essa conduta:',
'',
'',
'["não configura ilícito penal;","configura crime de estupro;","configura crime de estupro de vulnerável;","configura crime de estupro em concurso com o Art. 240 da Lei nº 8.069/1990;","configura crime de estupro de vulnerável em concurso com o Art. 240 da Lei nº 8.069/1990."]'::jsonb,
'E',
'Hebe, com 13 anos, é vulnerável; a prática de ato sexual com ela configura estupro de vulnerável (art. 217-A do CP). Além disso, produzir, dirigir e filmar a cena de sexo envolvendo criança/adolescente configura o crime do art. 240 do ECA (Lei nº 8.069/1990). Há concurso entre os dois crimes. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Penal',
'Hécate, com 7 anos, é molestada sexualmente por Zelus, seu primo, então com 18 anos. A vítima só noticia o crime ao completar 18 anos. Sobre a oportunidade da notícia, é correto afirmar que:',
'',
'',
'["o crime não está prescrito, pois o prazo em abstrato é de vinte anos;","o crime está prescrito, pelo transcurso integral do prazo prescricional;","o crime não está prescrito, pois o prazo só começa a correr quando a vítima completa 18 anos;","o crime está prescrito, pois o prazo é contado pela metade, em razão da idade do agente;","o crime não está prescrito, pois completar a maioridade constitui causa interruptiva."]'::jsonb,
'C',
'Nos crimes contra a dignidade sexual de crianças e adolescentes, o art. 111, V, do CP estabelece que a prescrição começa a correr da data em que a vítima completa 18 anos, salvo se a esse tempo já houver sido proposta a ação penal. Como a vítima só noticiou aos 18 anos, o prazo prescricional apenas começa a correr nesse marco, não estando o crime prescrito. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito Penal',
'Durante o carnaval, Asclépio, após ingerir várias bebidas, é acometido por intensa vontade de urinar e, ao pé de uma árvore em rua lateral, passa a urinar, sendo abordado pela Guarda Municipal. Quanto à conduta de Asclépio, é correto afirmar que:',
'',
'',
'["é atípica;","constitui ato obsceno;","constitui importunação sexual;","constitui objeto obsceno;","constitui assédio sexual."]'::jsonb,
'A',
'A conduta de urinar na via pública, por premente necessidade fisiológica, sem conotação ou intenção sexual/obscena, é, segundo entendimento consolidado, atípica para fins do crime de ato obsceno (art. 233 do CP), que exige o elemento de obscenidade/conotação sexual. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito Penal',
'No que diz respeito ao feminicídio, é correto afirmar que:',
'',
'',
'["a violência praticada no âmbito da unidade doméstica não exige que a mulher faça parte desse núcleo de convívio permanente;","na violência praticada no âmbito da unidade doméstica, a fugacidade e a eventualidade do convívio não excluem sua configuração;","a violência praticada no âmbito familiar exige parentesco, natural ou civil, entre autor e vítima, excluído aquele determinado por afinidade;","na violência praticada no âmbito familiar, é possível a configuração de feminicídio contra a \"tia de consideração\", desde que aparentada do agente;","a violência praticada no âmbito das relações íntimas de afeto, em curso ou já findas, depende da ocorrência de coabitação."]'::jsonb,
'D',
'A família, para fins da Lei Maria da Penha e do feminicídio, abrange a parentalidade/afetividade construídas por laços de afinidade ou vontade, admitindo-se o reconhecimento de vínculos socioafetivos (como a "tia de consideração"). A alternativa que reflete corretamente esse entendimento corresponde ao gabarito oficial (letra D). As demais contêm afirmações incorretas (exigência de coabitação nas relações íntimas, exclusão da afinidade, etc.).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito Penal',
'Constitui categoria fora do âmbito de proteção da qualificadora do "homicídio funcional" (art. 121, §2º, VII, do CP):',
'',
'',
'["guardas municipais;","integrantes do Conselho Penitenciário;","policiais aposentados;","integrantes da Comissão Técnica de Classificação;","juízes de direito."]'::jsonb,
'E',
'A qualificadora do homicídio funcional protege autoridades e agentes das instituições de segurança pública (art. 142 e 144 da CF) e integrantes do sistema prisional e da Força Nacional, bem como seus parentes, em razão da função. Os juízes de direito não integram esse rol específico de proteção da qualificadora. A alternativa que indica a categoria fora do âmbito de proteção corresponde ao gabarito oficial (letra E).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito Penal',
'No que toca à causa de aumento de pena do feminicídio, é correto afirmar que:',
'',
'',
'["a causa relacionada à prática durante a gestação não é coligada a qualquer tutela da vida do nascituro;","se o feminicídio é praticado contra uma mulher grávida, há consunção da hipótese de abortamento;","o que justifica o incremento da sanção penal na prática durante a gestação é a condição de sexo feminino;","a causa relacionada à prática durante a gestação tem início no momento em que a vida do nascituro surge como viável;","a causa relacionada à prática durante a gestação tutela também os casos de gravidez anembrionária."]'::jsonb,
'A',
'A majorante do feminicídio praticado durante a gestação visa à maior reprovabilidade da conduta contra a mulher grávida (e à proteção reforçada da vítima), não se destinando, propriamente, à tutela da vida do nascituro — tanto que não há consunção automática de eventual aborto. A alternativa que reflete esse entendimento corresponde ao gabarito oficial (letra A).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito Penal',
'Sobre a qualificadora da violência doméstica (Art. 129, §9º, do CP), é correto afirmar que:',
'',
'',
'["a lesão imposta é de natureza unicamente leve, dando margem a um tipo qualificado, mas não pelo resultado;","a qualificadora da violência doméstica pode ser aplicada aos casos de lesão corporal culposa;","a qualificadora da violência doméstica pode ser aplicada aos casos de vias de fato;","a qualificadora da violência doméstica não pode ser aplicada aos casos de parentalidade socioafetiva;","a qualificadora da violência doméstica pode ser aplicada a todas as relações de convivência cotidiana."]'::jsonb,
'A',
'O §9º do art. 129 do CP qualifica a lesão corporal LEVE praticada no contexto de violência doméstica, criando um tipo qualificado em razão das circunstâncias (relação entre autor e vítima) — e não em razão da gravidade do resultado (que, se grave/gravíssimo, atrai os §§1º a 3º). A alternativa que expressa que a lesão é de natureza leve, com qualificação não pelo resultado, corresponde ao gabarito oficial (letra A).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PROCESSUAL PENAL (Questoes 76 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual Penal',
'O delegado formalizou acordo de colaboração premiada com Tântalo (homologado, com anuência do MP). Tântalo prestou depoimentos, mas aguardou indefinidamente a produção de provas; os policiais, autonomamente, produziram as provas do ilícito. Na denúncia e na instrução, o MP limitou-se a reproduzir as provas já angariadas, sem contribuição efetiva do delator. Diante desse cenário, é correto afirmar que:',
'',
'',
'["não sendo fornecidos elementos para a obtenção de resultados, a colaboração premiada fica afastada na hipótese;","o delegado de polícia não tem legitimidade para realizar o acordo de colaboração premiada;","a sentença deve reconhecer a aplicação das sanções premiais ao colaborador, já que o acordo foi homologado;","a sentença deve reconhecer a aplicação das sanções premiais ao colaborador, já que não houve qualquer impugnação;","a sentença deve reconhecer a aplicação das sanções premiais ao colaborador, já que a delação foi eficaz."]'::jsonb,
'A',
'Os benefícios da colaboração premiada dependem da efetividade/eficácia da colaboração (obtenção de um ou mais dos resultados previstos na Lei nº 12.850/2013). Se o colaborador não fornece elementos que efetivamente auxiliem a investigação (as provas foram obtidas de forma autônoma pela polícia), a colaboração não produz os resultados exigidos e fica afastada a aplicação das sanções premiais. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual Penal',
'Réu condenado por tráfico (art. 33 da Lei nº 11.343/2006) teve apelação parcialmente provida para que o juízo sentenciante analise a aplicação da minorante do art. 41 (colaboração). A constatação exclusiva na sentença de vícios decorrentes da individualização da pena ocasiona a anulação:',
'',
'',
'["total da sentença, com afetação da validade ou da eficácia do juízo condenatório, diante do caráter unitário do título, com a necessidade da prolação de uma nova sentença na sua integralidade;","parcial da sentença, sem afetação da validade ou da eficácia do juízo condenatório, por incidir apenas na dosimetria da pena, na fase de individualização;","total da sentença, com afetação da validade ou da eficácia do juízo condenatório, diante da ausência de fundamentação válida, afetando o título como um todo;","parcial da sentença, sem afetação da validade ou da eficácia do juízo condenatório, porquanto de caráter objetivo, incidindo na fase de individualização;","total da sentença, com afetação da validade ou da eficácia do juízo condenatório, haja vista que referido comando legal tem caráter objetivo."]'::jsonb,
'B',
'Quando o vício se restringe à individualização/dosimetria da pena, a anulação é parcial, limitada a essa fase, sem comprometer o juízo condenatório (reconhecimento da autoria e materialidade), que permanece válido e eficaz. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual Penal',
'A audiência preliminar do Art. 16 da Lei nº 11.340/2006 (confirmação de retratação) é:',
'',
'',
'["facultativa, não devendo ser realizada de ofício, tendo cabimento em crimes de qualquer natureza no âmbito da Violência Doméstica e Familiar;","obrigatória, devendo ser realizada de ofício, sendo exigível como normal fase de desenvolvimento do procedimento dos crimes da competência da Violência Doméstica e Familiar;","facultativa, não devendo ser realizada de ofício, somente sendo exigível quando a vítima demonstrar, por qualquer meio, que pretende desistir do prosseguimento do feito;","obrigatória, devendo ser realizada de ofício, sendo exigível como normal fase de desenvolvimento do procedimento dos crimes de ação penal pública incondicionada;","facultativa, podendo ser realizada de ofício, sempre que o juiz verificar, em crimes de qualquer natureza, que a vítima pretende desistir do prosseguimento do feito."]'::jsonb,
'C',
'A audiência do art. 16 da Lei Maria da Penha (para confirmação de eventual retratação da representação, nos crimes de ação penal pública condicionada) não é fase obrigatória nem deve ser designada de ofício: só se realiza quando a ofendida manifesta, por qualquer meio, a intenção de se retratar/desistir do prosseguimento. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual Penal',
'Sobre a demonstração/comprovação das lesões corporais nos crimes que envolvam violência doméstica e familiar contra a mulher, é correto afirmar que:',
'',
'',
'["conquanto o exame de corpo de delito deva, como regra, ser produzido para a configuração do crime, admite-se que a materialidade possa ser comprovada por outros meios de prova;","nos crimes da Lei Maria da Penha que deixem vestígios, é obrigatória a realização de exame de corpo de delito, sob pena de não configuração da materialidade e impossibilidade de responsabilização criminal;","nos crimes da Lei Maria da Penha que deixem vestígios, é obrigatória a realização de exame de corpo de delito, podendo, no entanto, a prova pericial ser substituída pelo depoimento da ofendida;","nos crimes da Lei Maria da Penha que deixem vestígios, é obrigatória a realização de exame de corpo de delito, não sendo possível a substituição por outros elementos de prova;","conquanto haja determinação legal sobre a forma de comprovação de determinados tipos de ilícitos, o princípio da liberdade probatória ou da instrumentalidade das formas probatórias permite a substituição do modelo legal."]'::jsonb,
'A',
'Em regra, nos crimes que deixam vestígios, exige-se o exame de corpo de delito (art. 158 do CPP). Contudo, admite-se que a materialidade seja comprovada por outros meios de prova quando o exame direto não for possível (art. 167 do CPP), inclusive no âmbito da Lei Maria da Penha. A alternativa que reflete essa possibilidade de comprovação por outros meios corresponde ao gabarito oficial (letra A).'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual Penal',
'Após notícia inqualificada detalhada sobre tráfico de Afrodite, policiais aguardaram em vigilância dissimulada no aeroporto. Afrodite, ao perceber a movimentação, tentou se livrar da mala e foi capturada. Durante a revista, seu celular tocou e ela foi autorizada a atender, conversando (em viva-voz) com Arquimedes, membro da facção, a quem conduziu os policiais, sendo ele capturado. É correto afirmar que a captura de Arquimedes é:',
'',
'',
'["ilegal, diante da ausência de prévia autorização judicial para implementação da entrega vigiada;","legal, diante da configuração da hipótese de flagrante esperado;","ilegal, diante da ilegalidade da escuta da conversa telefônica, sem prévia autorização judicial;","legal, diante da configuração da hipótese de flagrante controlado;","ilegal, diante da configuração da hipótese de flagrante preparado."]'::jsonb,
'B',
'Os policiais, de posse de notícia detalhada, apenas aguardaram o desenrolar natural dos fatos (vigilância), sem induzir ou provocar a prática do crime — o que caracteriza o flagrante esperado (válido), e não o preparado (nulo). A captura de Arquimedes, decorrente dessa dinâmica legítima e da condução espontânea pela própria Afrodite, é legal. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Direito Processual Penal',
'A respeito da audiência de custódia, é correto afirmar que:',
'',
'',
'["o estabelecimento da audiência de custódia no CPP pela Lei nº 13.964/2019 concretiza disposição da Convenção de Palermo em reforço aos princípios constitucionais do contraditório, da ampla defesa e da segurança jurídica;","a não realização da audiência de custódia, por si só, é apta a ensejar a ilegalidade da prisão cautelar imposta ao capturado, diante da necessidade de respeito aos direitos e garantias previstos na Constituição de 1988 e no CPP;","operada a conversão da prisão em flagrante em prisão preventiva, fica superada a alegação de nulidade na ausência de apresentação do preso ao juízo com competência para a audiência de custódia, logo após o flagrante;","a realização de audiência de custódia não pode ser dispensada em razão das limitações decorrentes da crise provocada pela pandemia de Covid-19, conforme orientação do Conselho Nacional de Justiça;","a captura do agente em decorrência do cumprimento de títulos prisionais distintos da prisão em flagrante dispensa a realização da audiência de custódia, diante do prévio controle da prisão pelo Poder Judiciário."]'::jsonb,
'C',
'Conforme a jurisprudência dos Tribunais Superiores, a superveniente conversão da prisão em flagrante em prisão preventiva, por decisão fundamentada, supera (torna superada) a alegação de nulidade decorrente da não realização da audiência de custódia logo após o flagrante. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Direito Processual Penal',
'Sobre as medidas cautelares pessoais, é correto afirmar que:',
'',
'',
'["a situação de pandemia criou direito subjetivo ao desencarceramento das pessoas privadas de liberdade;","a oferta de assistência médica no presídio não altera a avaliação sobre a manutenção da prisão em meio à pandemia;","o contexto de disseminação da Covid-19 em cada ambiente carcerário não altera a avaliação sobre a manutenção da prisão;","mesmo durante a pandemia persiste o direito da coletividade em ver preservada a segurança pública;","a especial vulnerabilidade de alguns presos não altera a avaliação sobre a manutenção da prisão em meio à pandemia."]'::jsonb,
'D',
'A pandemia não criou direito subjetivo automático à soltura; a análise permanece casuística. Entre as afirmações, a correta é a de que, mesmo durante a pandemia, persiste o direito da coletividade de ver preservada a segurança pública, que deve ser ponderado na avaliação da manutenção da prisão. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Direito Processual Penal',
'A respeito do Banco Nacional de Monitoramento de Prisões (BNMP), é correto afirmar que:',
'',
'',
'["as unidades jurisdicionais competentes e o Conselho Nacional de Justiça podem expedir, atualizar e/ou excluir documentos e cadastros no sistema;","o cadastramento de usuários no Banco Nacional de Monitoramento de Prisões é realizado pelo Conselho Nacional de Justiça;","no caso de indisponibilidade do sistema, a autoridade judicial pode se valer dos meios disponíveis para efetivação da ordem;","cessada a indisponibilidade do sistema, deverá a autoridade judicial realizar, imediatamente, o registro no Banco, com justificativa da data posterior de inserção;","ao Conselho Nacional de Justiça compete, privativamente, expedir, modificar ou alterar quaisquer documentos no Banco Nacional de Monitoramento de Prisões."]'::jsonb,
'C',
'Nos termos da regulamentação do BNMP, havendo indisponibilidade do sistema, a autoridade judicial não fica impedida de atuar: pode valer-se dos meios disponíveis para a efetivação da ordem (de prisão ou soltura), registrando-a no sistema quando este voltar a funcionar. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Direito Processual Penal',
'Em relação à contemporaneidade da prisão provisória, é correto afirmar que:',
'',
'',
'["pode ser demonstrada por Relatórios de Inteligência Financeira do COAF, caso apontem movimentação financeira em período próximo à avaliação da necessidade cautelar;","a regra não comporta mitigação, ainda que a natureza do delito indique a alta possibilidade de recidiva;","diz respeito ao fato delitivo apurado, e não a fatos ocorridos no curso da investigação preliminar ou instrução criminal;","a regra não comporta mitigação, ainda que demonstrados indícios de que persistem atos de desdobramento da cadeia delitiva inicial;","a cessação da atividade criminosa é fator obstativo para a incidência do requisito da contemporaneidade dos fatos que ensejam a decretação da prisão."]'::jsonb,
'A',
'A contemporaneidade (atualidade dos fatos que justificam a cautelar) pode ser demonstrada por elementos recentes, como Relatórios de Inteligência Financeira do COAF que apontem movimentação em período próximo à avaliação da necessidade da prisão. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Direito Processual Penal',
'Guarnição identificou quatro agentes transportando expressiva quantidade de cocaína e armas de fogo escondidas no veículo. Os abordados não resistiram, mas foram algemados e transportados à delegacia. O uso das algemas, no presente caso, é:',
'',
'',
'["ilegal, diante da ausência de resistência ou oferecimento de risco concreto à guarnição;","legal, diante do risco à integridade física dos policiais e de terceiros;","ilegal, diante da ausência de qualquer oposição às ordens policiais;","legal, diante do exercício regular do direito, decorrente da operação policial executada;","ilegal, diante da ausência de justificação, por escrito, da necessidade da aplicação da contenção."]'::jsonb,
'B',
'Embora os abordados não tenham resistido, a situação concreta (quatro agentes, grande quantidade de droga e armas de fogo no veículo) revela fundado receio de perigo à integridade física dos policiais e de terceiros, o que, nos termos da Súmula Vinculante 11, legitima o uso de algemas. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Direito Processual Penal',
'Policiais em patrulhamento de rotina viram indivíduos que fugiram ao avistar a viatura; um deles entrou em sua residência. Sem denúncia anônima e sem autorização judicial, a guarnição ingressou e apreendeu entorpecentes, fazendo constar depois que um vizinho teria autorizado o ingresso. Diante desse cenário, a prisão é:',
'',
'',
'["ilegal, diante da ausência de prévia autorização judicial para busca na residência;","legal, por haver flagrante de crime permanente, o que dispensa a prévia autorização judicial;","legal, diante do consentimento válido do vizinho para ingresso na residência;","legal, diante da configuração de justa causa para a ação policial;","ilegal, pois a busca e apreensão não poderia ser executada pela Polícia Militar."]'::jsonb,
'A',
'A simples fuga ao avistar a viatura não constitui, por si só, justa causa (fundadas razões) para o ingresso domiciliar sem mandado. Ausentes elementos prévios concretos que indicassem o flagrante no interior da casa, e sendo o "consentimento do vizinho" inservível (o vizinho não é o morador), a entrada é ilegal e a prisão, portanto, ilegal. Correta a alternativa A.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Direito Processual Penal',
'Em relação às audiências de custódia, é correto afirmar que:',
'',
'',
'["as audiências devem ser realizadas em até 24 horas, sob pena de ilegalidade automática da prisão;","a substituição do flagrante por prisão preventiva não altera a ilegalidade da ausência de audiência de custódia;","a substituição do flagrante por cautelar alternativa não altera a ilegalidade da ausência de audiência de custódia;","a convolação do flagrante em preventiva, na audiência de custódia, demanda provas sólidas e conclusivas;","a alegação de nulidade na audiência de custódia fica superada pela decretação de novo título prisional."]'::jsonb,
'E',
'Conforme a jurisprudência, eventual nulidade decorrente de vício ou ausência da audiência de custódia fica superada quando sobrevém novo título prisional (como a decretação da prisão preventiva por decisão fundamentada). Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Direito Processual Penal',
'Em relação ao sistema protetivo da Lei Maria da Penha, é correto afirmar que:',
'',
'',
'["o descumprimento de medidas protetivas judicialmente impostas não pode ser utilizado para justificar a negativação vetorial da pena-base, por constituir ilícito autônomo;","por constituir ilícito autônomo, o descumprimento de medidas protetivas não pode justificar a aplicação de medida prisional cautelar;","as medidas protetivas de urgência são ontológica e funcionalmente incompatíveis com as medidas cautelares alternativas, não comportando a substituição de umas pelas outras;","evidenciada a periculosidade em concreto do agente, diante do descumprimento das medidas protetivas, fica demonstrada a insuficiência da cautela, a ensejar a decretação de preventiva;","há pertinência na realização da audiência de justificação ainda que o procedimento tenha sido arquivado e as medidas protetivas tenham sido revogadas, visto ser cabível a admoestação verbal."]'::jsonb,
'D',
'O descumprimento das medidas protetivas de urgência, evidenciando a periculosidade concreta do agente e a insuficiência das cautelas aplicadas, autoriza a decretação da prisão preventiva (art. 313, III, do CPP), para garantir a execução das medidas protetivas. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Direito Processual Penal',
'Quanto à investigação preliminar realizada sob a forma de inquérito policial, é correto afirmar que:',
'',
'',
'["ainda que no curso da investigação policial se realizem atos concretos de perturbação da liberdade jurídica do indivíduo, não há submissão a controle jurisdicional;","gravidade e complexidade do fato investigado não são fatores que legitimam, por si sós, a duração alongada da investigação preliminar, ensejando constrangimento ilegal;","a reforma do CPP pela Lei nº 12.403/2011 passou a prever, em hipóteses urgentes ou com risco de ineficiência da medida, que o juiz da causa poderá estabelecer cautelas, independentemente da oitiva antecipada do interessado, no curso da investigação;","não há nulidade na juntada posterior de provas colhidas durante o inquérito, desde que a defesa seja intimada para se manifestar sobre elas antes da sentença;","a jurisprudência dos Tribunais Superiores entende que é necessária a presença de advogado durante o interrogatório policial do réu."]'::jsonb,
'D',
'Por ser o inquérito peça informativa e inquisitorial, não há nulidade na juntada posterior de provas nele colhidas, bastando que se assegure à defesa o contraditório diferido — isto é, a oportunidade de se manifestar sobre tais provas antes da sentença. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Direito Processual Penal',
'Com mandado de busca e apreensão válido, agentes apreenderam mais de dez mil pares de tênis sem nota fiscal; diante do volume, não fizeram contagem individualizada, parte dos itens se perdeu no transporte e o registro fotográfico foi feito apenas na delegacia. A defesa requereu reconhecimento de quebra da cadeia de custódia e desentranhamento da prova. Diante desse cenário, a prova é:',
'',
'',
'["ilícita, pela negativa de vigência dos Art. 6º, Art. 157, Art. 169 e Art. 564, IV, do CPP, diante da ausência de preservação dos itens apreendidos;","lícita, pois toda a dinâmica foi captada pelo sistema de imagens, o que serve como documentação, sendo certo que o erro quantitativo não afasta a natureza da prova;","ilícita, pela negativa de vigência dos Art. 6º, Art. 157, Art. 169 e Art. 564, IV, do CPP, diante da ausência de documentação correta no lugar da apreensão;","lícita, pois a ausência de documentação comprobatória da origem ilícita dos bens transforma o delito em crime permanente a ensejar a atuação policial a qualquer tempo;","ilícita, pela negativa de vigência dos Art. 6º, Art. 157, Art. 169 e Art. 564, IV, do CPP, diante da realização do registro fotográfico apenas após a realização da busca e apreensão."]'::jsonb,
'B',
'A busca foi amparada por mandado válido; a dinâmica foi captada pelo sistema de câmeras, o que serve de documentação da apreensão. Falhas como a ausência de contagem individualizada (erro meramente quantitativo) não contaminam a licitude da prova nem configuram, por si sós, quebra da cadeia de custódia apta a torná-la ilícita. Logo, a prova é lícita. Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS BASICOS DE INFORMATICA (Questoes 91 a 100)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 91, 'Conhecimentos Básicos de Informática',
'Senhas com quatro caracteres; alfabeto de 26 letras; caracteres especiais limitados a !@#$%&*=+ (9 símbolos). Políticas: I. pelo menos uma letra maiúscula e pelo menos um caractere especial; II. pelo menos uma letra minúscula e pelo menos um dígito numérico; III. pelo menos uma letra maiúscula e pelo menos uma letra minúscula. Considerando escolha aleatória, a ordem das políticas, da mais forte para a mais fraca, é:',
'',
'',
'["I, II, III;","I, III, II;","II, I, III;","II, III, I;","III, II, I."]'::jsonb,
'E',
'A força da política cresce com o tamanho do conjunto de caracteres que cada requisito habilita e com o número de combinações válidas. A política III (exige maiúscula e minúscula) trabalha com o maior espaço combinatório (52 letras), seguida da II (minúsculas + 10 dígitos) e, por fim, a I (que inclui apenas 9 caracteres especiais, reduzindo o espaço). Logo, da mais forte para a mais fraca: III, II, I. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 92, 'Conhecimentos Básicos de Informática',
'Computadores trabalham com arquivos de conteúdos distintos, e é comum encontrar na Internet sites que oferecem downloads no formato "csv". Arquivos desse tipo contêm, primordialmente:',
'',
'',
'["aplicativos;","áudio;","imagens;","texto;","vídeos."]'::jsonb,
'D',
'CSV (Comma-Separated Values) é um formato de arquivo de texto puro, no qual os valores são separados por vírgulas (ou outro delimitador), usado para armazenar dados tabulares. Portanto, contém primordialmente texto. Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 93, 'Conhecimentos Básicos de Informática',
'João preparou um documento no MS Word 2010 com três partes (introdução, corpo e bibliografia); a numeração das páginas deve reiniciar a cada uma dessas partes. João pode viabilizar esse efeito pelo uso do recurso:',
'',
'',
'["Dividir na guia Exibição;","Pincel de Formatação na guia Página Inicial;","Quebras na guia Layout da Página;","Símbolo na guia Inserir;","Sumário na guia Referências."]'::jsonb,
'C',
'Para reiniciar a numeração de páginas em partes distintas do documento, é preciso dividir o documento em seções, o que se faz com Quebras de Seção, disponíveis na guia Layout da Página. Com seções independentes, cada uma pode ter sua própria numeração reiniciada. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 94, 'Conhecimentos Básicos de Informática',
'No LibreOffice Writer, é possível selecionar partes não contíguas de um documento. Para isso, é preciso selecionar a parte desejada e:',
'',
'',
'["manter pressionada a tecla Ctrl e pressionar a tecla PgDn ou PgUp na direção desejada;","manter pressionada a tecla Ctrl e pressionar uma tecla de seta na direção desejada;","manter pressionada a tecla Ctrl enquanto seleciona mais partes;","manter pressionada a tecla Shift e pressionar uma tecla de seta na direção desejada;","manter pressionada a tecla Shift enquanto seleciona mais partes."]'::jsonb,
'C',
'Para selecionar trechos não contíguos (separados) de um documento, mantém-se pressionada a tecla Ctrl enquanto se selecionam as demais partes com o mouse. A tecla Shift serve para seleção contígua (contínua). Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 95, 'Conhecimentos Básicos de Informática',
'No MS Excel 2010, C5 contém "=SOMA(A10:B20)" e F4 contém "=MÁXIMO(C1:C4)". Tiago selecionou a coluna E e inseriu uma coluna; depois selecionou a linha 7 e inseriu uma linha. Após essas operações, as fórmulas nas células C5 e G4 eram, respectivamente:',
'',
'',
'["=SOMA(A10:B20) =MÁXIMO(C1:C4)","=SOMA(A11:B21) =MÁXIMO(C1:C4)","=SOMA(A11:B21) =MÁXIMO(D1:D4)","=SOMA(B10:C20) =MÁXIMO(C2:C5)","=SOMA(B11:C21) =MÁXIMO(D1:D4)"]'::jsonb,
'B',
'Inserir uma coluna em E não afeta colunas A, B e C (à esquerda de E), então a fórmula de C5 não tem suas colunas alteradas; mas a célula C5 passa a ser C6 e a fórmula, antes =SOMA(A10:B20), é deslocada pela inserção da linha 7 (que empurra as linhas 10-20 para 11-21), tornando-se =SOMA(A11:B21). A fórmula de F4 (=MÁXIMO(C1:C4)) move-se para G4 por causa da coluna inserida, mas suas referências (C1:C4, acima da linha 7 e à esquerda de E) permanecem =MÁXIMO(C1:C4). Correta a alternativa B.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 96, 'Conhecimentos Básicos de Informática',
'No MS Excel 2010, o recurso Congelar Linha Superior, na guia Exibição, tem como efeito:',
'',
'',
'["impedir que a formatação da linha superior seja modificada;","impedir que os valores/fórmulas das células da linha superior sejam modificados;","manter a linha superior visível na rolagem da planilha;","travar a rolagem da planilha para baixo;","travar a rolagem da planilha para cima."]'::jsonb,
'C',
'O recurso "Congelar Linha Superior" mantém a primeira linha sempre visível (fixa) enquanto o usuário rola a planilha para baixo, facilitando a leitura dos cabeçalhos. Não impede edição de valores nem a rolagem. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 97, 'Conhecimentos Básicos de Informática',
'No contexto da proteção de planilhas e compartilhamento de pastas de trabalho no MS Excel, analise: I. É possível permitir alterações numa pasta de trabalho por mais de um usuário ao mesmo tempo. II. É possível ter, numa única planilha, células com distintas regras de proteção. III. É possível ter, simultaneamente, mais de uma senha para desproteger uma planilha. Está correto o que se afirma em:',
'',
'',
'["somente I;","somente II;","somente I e II;","somente II e III;","I, II e III."]'::jsonb,
'C',
'As afirmativas I e II são verdadeiras: o Excel permite o compartilhamento de pasta de trabalho para edição por vários usuários simultaneamente, e numa mesma planilha é possível ter células bloqueadas e desbloqueadas (regras distintas de proteção). A III é falsa: uma planilha é protegida por uma única senha de desproteção, não várias simultâneas. Logo, somente I e II. Correta a alternativa C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 98, 'Conhecimentos Básicos de Informática',
'Observe o endereço (URL): https://www.mercado.com.br/Informatica/?Filtro=C56. De acordo com a estrutura padrão de uma URL, o componente que NÃO foi explicitamente especificado é:',
'',
'',
'["caminho (path);","domínio;","esquema ou protocolo;","porta;","query string."]'::jsonb,
'D',
'Na URL dada identificam-se: o esquema/protocolo (https), o domínio (www.mercado.com.br), o caminho/path (/Informatica/) e a query string (?Filtro=C56). O único componente não especificado explicitamente é a porta (que, por omissão, assume o padrão do protocolo, 443 para https). Correta a alternativa D.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 99, 'Conhecimentos Básicos de Informática',
'João quer que o Windows 10 abra sempre o arquivo "teste.PDF" com o Google Chrome, mantendo os demais PDFs da pasta abrindo no Adobe Acrobat Reader. Das sugestões recebidas, a única correta foi:',
'',
'',
'["abra a janela de Propriedades do arquivo no Explorador de Arquivos e use o botão Alterar no item Abrir como;","abra a opção Configurações no menu Iniciar e clique no item Aplicativos e recursos e localize o Chrome na opção Aplicativos padrão;","abra a opção Configurações no menu Iniciar e clique no item Personalização;","abra o menu do Google Chrome no canto superior da tela, acione a opção Favoritos e personalize o acesso;","não é possível fazer essa distinção para um único arquivo pelos comandos da interface gráfica do Windows."]'::jsonb,
'E',
'As opções de "Propriedades > Abrir como" e de "Aplicativos padrão" alteram o programa para TODOS os arquivos daquela extensão (todos os PDFs), não apenas para um único arquivo. A interface gráfica do Windows 10 não oferece recurso para associar um programa a um único arquivo mantendo os demais de mesma extensão com outro programa. Logo, não é possível fazer essa distinção para um único arquivo pela interface gráfica. Correta a alternativa E.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 100, 'Conhecimentos Básicos de Informática',
'Na interface do Windows 10, o painel que serve para fixar aplicativos frequentemente utilizados é conhecido como:',
'',
'',
'["Acesso rápido;","Área de Trabalho Remota (Remote Desktop);","Barra de Tarefas (Taskbar);","Cortana;","Menu iniciar (Start Menu)."]'::jsonb,
'C',
'A Barra de Tarefas (Taskbar) do Windows 10 permite fixar aplicativos frequentemente utilizados para acesso rápido ("Fixar na Barra de Tarefas"). O "Acesso rápido" refere-se a pastas no Explorador de Arquivos; o Menu Iniciar fixa blocos/atalhos, mas o painel voltado a fixar aplicativos de uso frequente para execução imediata é a Barra de Tarefas. Conforme o gabarito oficial, a resposta é a letra C.'
from public.exams where slug = 'pc-rj-2022-inspetor'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
