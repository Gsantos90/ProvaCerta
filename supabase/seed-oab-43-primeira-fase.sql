-- Seed: OAB - 43o Exame de Ordem Unificado (1a fase)
-- Ordem dos Advogados do Brasil - Banca FGV - Tipo 1 (Branca) - 80 questoes
-- Gabarito oficial (Tipo 1):
--  1-* (Anulada)  2-C  3-A  4-A  5-C  6-B  7-D  8-C  9-B 10-D
-- 11-D 12-B 13-B 14-A 15-B 16-C 17-C 18-A 19-D 20-D
-- 21-C 22-C 23-D 24-B 25-C 26-B 27-A 28-B 29-A 30-D
-- 31-C 32-A 33-A 34-C 35-D 36-B 37-B 38-A 39-B 40-A
-- 41-C 42-B 43-B 44-D 45-A 46-D 47-A 48-B 49-D 50-A
-- 51-C 52-D 53-C 54-A 55-B 56-B 57-C 58-D 59-C 60-A
-- 61-D 62-C 63-D 64-B 65-A 66-D 67-A 68-B 69-B 70-D
-- 71-C 72-B 73-A 74-* (Anulada) 75-D 76-C 77-C 78-A 79-D 80-A
-- Observacao: as questoes 1 e 74 foram ANULADAS pela banca. Para elas foi
-- mantida a alternativa mais defensavel, com a explicacao indicando a anulacao.

insert into public.exams (slug, title, source, year)
values ('oab-43-primeira-fase', 'OAB 43º Exame de Ordem Unificado (1ª fase)', 'oab', '2025')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Ética e Estatuto da OAB',
'O advogado Antônio comenta, em matérias veiculadas em sítio eletrônico especializado em publicar artigos acadêmicos e jurídicos, novas leis sancionadas e faz explicações de fácil compreensão de conceitos e normas jurídicas. De acordo com o disposto no Código de Ética e Disciplina da OAB, assinale a afirmativa correta.',
'',
'',
'["É autorizado que Antônio responda às consultas jurídicas com habitualidade na página mencionada para promoção pessoal.","É vedado que Antônio mencione seu e-mail e telefone na mencionada página, assim como o nome do escritório onde trabalha.","Antônio não poderá fornecer, nas matérias que publica, seus meios de contato, tais como endereço e telefone, mas é permitida a referência a e-mail.","Não é vedado que Antônio, ao comentar a atuação de colegas advogados em tais feitos, cite casos emblemáticos para a explicação de tais normas e conceitos."]'::jsonb,
'A',
'Questão ANULADA pela banca FGV no 43º Exame de Ordem. O tema envolve a atividade de informação jurídica em meios de comunicação e os limites da publicidade profissional previstos no Código de Ética e Disciplina da OAB, que veda a mercantilização da advocacia, a captação de clientela e a resposta a consultas com habitualidade voltada à promoção pessoal. Por ter sido anulada, não há gabarito oficial válido; a alternativa indicada é meramente de referência.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Ética e Estatuto da OAB',
'Paulo Afrânio foi representado ao Tribunal de Ética e Disciplina do Conselho Seccional do Estado Alfa pela prática da infração disciplinar de violar, sem justa causa, sigilo profissional. Por se tratar de infração leve, o relator dispensou as etapas de defesa prévia e razões finais, garantindo ao representado apenas a defesa oral, e ofereceu parecer preliminar no sentido da aplicação da pena de censura, acolhido pelo Tribunal de Ética e Disciplina. Sobre o processo disciplinar no âmbito da OAB, assinale a afirmativa correta.',
'',
'',
'["O procedimento adotado pelo relator foi correto, porque a legislação prevê que a defesa oral, por ser mais ampla e contundente, substitui a etapa de defesa prévia e a apresentação de razões finais.","Nos casos de parecer preliminar do relator recomendando a aplicação de pena de censura, o Presidente do Conselho Seccional pode, desde logo, diante da baixa gravidade da pena aplicada, homologar o parecer, aplicando essa sanção.","A condução do processo disciplinar pelo relator foi ilegal, porque a gravidade da infração ou da sanção aplicada não autorizam que sejam reduzidas as oportunidades de defesa do representado ou que se atropelem etapas do processo disciplinar.","Não houve violação da ampla defesa do advogado, porque o reconhecimento de nulidades processuais está sujeito à constatação de efetivo prejuízo e, como no caso foi aplicada apenas pena de censura, não ocorreu dano suficiente a ponto de que se reconhecesse a ilegalidade do procedimento."]'::jsonb,
'C',
'O processo disciplinar no âmbito da OAB deve observar o devido processo legal, o contraditório e a ampla defesa (art. 68 e seguintes do EOAB e normas regulamentares). A gravidade da infração ou da sanção aplicada não autoriza a supressão de etapas essenciais, como a defesa prévia e as razões finais. Logo, a condução que atropelou essas etapas foi ilegal (alternativa C).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Ética e Estatuto da OAB',
'João Pedro, aprovado no Exame da OAB, foi convidado a integrar, assim que formado, uma renomada sociedade de advogados, mas está em dúvida, pois cogita constituir sociedade unipessoal de advocacia. Considerando o enunciado, assinale a afirmativa correta.',
'',
'',
'["A sociedade unipessoal de advocacia de João Pedro poderá ter como sede, filial ou local de trabalho, um espaço de uso individual ou compartilhado com outros escritórios de advocacia ou empresas, desde que respeitadas as hipóteses de sigilo previstas na legislação.","João Pedro poderá integrar a sociedade de advogados e, simultaneamente, constituir uma sociedade unipessoal de advocacia, ambas com sede ou filial na mesma área territorial do respectivo Conselho Seccional.","João Pedro poderá escolher livremente a denominação da sociedade unipessoal de advocacia que vier a constituir, desde que complemente com a expressão “Sociedade Individual de Advocacia”.","A sociedade unipessoal de advocacia de João Pedro adquirirá personalidade jurídica com o registro aprovado dos seus atos constitutivos no Conselho Federal da OAB."]'::jsonb,
'A',
'A sociedade de advogados e a sociedade unipessoal de advocacia podem ter sede, filial ou local de trabalho em espaço de uso individual ou compartilhado com outros escritórios ou empresas, desde que respeitadas as regras de sigilo profissional (Provimento da OAB). O advogado não pode integrar mais de uma sociedade na mesma área territorial do Conselho Seccional, a denominação da unipessoal deve conter o nome do titular e a personalidade jurídica se adquire com o registro no Conselho Seccional, e não no Conselho Federal. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Ética e Estatuto da OAB',
'Roberto, advogado criminalista, defende Juvenal, gestor público acusado de corrupção passiva, peculato e lavagem de valores. No curso do processo, foi decretado o bloqueio universal do patrimônio de Juvenal, visando ao ressarcimento do suposto dano ao erário, o que inviabilizou o pagamento dos honorários contratuais de Roberto e o reembolso de gastos com a defesa. Sobre essa hipótese, assinale a afirmativa correta.',
'',
'',
'["Roberto terá direito à liberação de até 20% dos bens bloqueados para fins de recebimento de honorários e o reembolso de gastos com a defesa.","Roberto deverá solicitar, nos próprios autos da ação penal, a liberação de até 20% dos bens bloqueados, exclusivamente para o reembolso de gastos com a defesa.","Em virtude da supremacia do interesse público, Roberto não fará jus à liberação de qualquer valor tornado indisponível, até que sobrevenha eventual decisão promovendo o desbloqueio do patrimônio de Juvenal.","Em virtude do caráter alimentar dos honorários advocatícios, caso apresente o respectivo contrato nos autos, Roberto fará jus à liberação dos bens bloqueados até a completa satisfação da verba contratada, ainda que isso implique o esvaziamento do bloqueio judicial."]'::jsonb,
'A',
'Nos termos do art. 22, § 7º, do Estatuto da OAB (incluído pela Lei nº 14.365/2022), nas hipóteses de bloqueio universal de bens, assegura-se a liberação de valores em favor do advogado, destinados ao pagamento dos honorários e ao reembolso dos gastos com a defesa, observado o limite legal. A alternativa A reflete esse direito à liberação para ambas as finalidades.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ética e Estatuto da OAB',
'Pedro, advogado regularmente inscrito, foi eleito Deputado Federal e deseja continuar advogando, patrocinando causas contra a Caixa Econômica Federal, cogitando ainda concorrer à Presidência da Câmara dos Deputados. Com base no Estatuto da OAB, assinale a afirmativa correta sobre a possibilidade de Pedro continuar advogando.',
'',
'',
'["Caso Pedro seja eleito Presidente da Câmara dos Deputados, ele ficará impedido de atuar em causas contra a Caixa Econômica Federal, mas poderá advogar em causas particulares.","Pedro, na condição de Deputado Federal, poderá advogar contra a Caixa Econômica Federal, desde que seja em causa própria, tendo em vista que o impedimento se aplica apenas a causas de terceiros.","Como Deputado Federal, Pedro está impedido de exercer a advocacia contra a Caixa Econômica Federal, mas pode atuar em causas que não envolvam entes públicos ou concessionárias de serviço público.","Pedro, como Deputado Federal, estará em situação de incompatibilidade total com o exercício da advocacia e não poderá atuar como advogado em nenhuma causa, mesmo em processos particulares."]'::jsonb,
'C',
'O membro do Poder Legislativo, nos níveis federal, estadual e distrital, está sujeito a impedimento (proibição parcial): não pode advogar contra ou a favor das pessoas jurídicas de direito público, entidades da Administração indireta e empresas concessionárias ou permissionárias de serviço público (art. 30, II, do EOAB). Assim, Pedro está impedido de advogar contra a Caixa Econômica Federal, mas pode atuar em causas que não envolvam esses entes. Caso se torne Presidente da Câmara, passará a situação de incompatibilidade (proibição total). Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Ética e Estatuto da OAB',
'Afonso, condenado por tráfico, divide cela com Rodrigo, preso preventivamente há mais de dois anos sem conclusão da instrução. Indignado, Afonso, que não tem formação jurídica, decide redigir à mão um pedido de habeas corpus em favor de seu companheiro de cela. Considerando o Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["A impetração de habeas corpus é atividade privativa de advogado regularmente inscrito na OAB, não podendo ser realizada por um leigo, ainda que em defesa de direitos fundamentais.","Afonso poderá redigir e impetrar o habeas corpus em favor de Rodrigo, pois a impetração desse remédio constitucional não está incluída entre as atividades privativas da advocacia.","Afonso somente poderia impetrar o habeas corpus se comprovasse que não havia advogado disponível para atuar no caso de Rodrigo.","A impetração de habeas corpus é vedada para leigos quando se trata de crimes graves, como roubo, exigindo obrigatoriamente a atuação de advogado."]'::jsonb,
'B',
'A impetração de habeas corpus não é atividade privativa de advogado, conforme ressalva expressa do art. 1º, § 1º, do Estatuto da OAB. Qualquer pessoa, ainda que leiga, pode impetrar habeas corpus em favor de outrem. Logo, Afonso poderá redigir e impetrar o writ (alternativa B).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Ética e Estatuto da OAB',
'Aurélio, advogado, dirigiu-se à Delegacia para prestar assistência jurídica a Adalberto, preso em flagrante por homicídio. O Delegado Moisés negou o pedido de Aurélio de se comunicar pessoal e reservadamente com Adalberto, alegando a gravidade do crime e a ausência de procuração. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["A negativa do Delegado foi legítima, uma vez que, em razão da gravidade do crime de homicídio, é admissível limitar a comunicação do advogado com o preso.","A comunicação de Aurélio com Adalberto só poderia ocorrer mediante a apresentação de procuração assinada, conforme exigido para a assistência jurídica em casos graves.","A atuação de Aurélio é ilegal, pois a advocacia em favor de amigos próximos caracteriza conflito ético-profissional que inviabiliza a assistência jurídica.","A negativa do Delegado foi ilegal, pois Aurélio tem direito de comunicar-se pessoal e reservadamente com Adalberto, mesmo sem procuração, conforme previsto no Estatuto da OAB."]'::jsonb,
'D',
'É direito do advogado comunicar-se com seus clientes, pessoal e reservadamente, mesmo sem procuração, quando estes se acharem presos, detidos ou recolhidos em estabelecimentos civis ou militares (art. 7º, III, do EOAB). A gravidade do crime não autoriza a restrição. Logo, a negativa do Delegado foi ilegal (alternativa D).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Ética e Estatuto da OAB',
'Antônio, advogado, usou ferramenta de inteligência artificial generativa para elaborar peças processuais. Apesar da revisão posterior com seu estagiário, um Magistrado o notifica a prestar esclarecimentos sobre recurso manifestamente incabível, no qual foram citadas doutrina e jurisprudência deturpadas, de modo apto a confundir o adversário ou iludir o Juiz. De acordo com o Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Por não ter agido de forma dolosa, Antônio não poderá sofrer qualquer sanção disciplinar, uma vez que o advogado não é responsável pelos atos praticados com culpa.","Em razão da gravidade da situação, após o devido processo disciplinar, Antônio poderá ser apenado com a suspensão do exercício da advocacia por período que poderá variar de 30 dias a 12 meses.","A Antônio poderá ser aplicada a pena de censura, a qual pode ser convertida em advertência, em ofício reservado, sem registro nos seus assentamentos, quando estiver presente circunstância atenuante.","Caso se trate de situação reincidente, Antônio poderá ser apenado com a sanção de exclusão, devendo ser cancelada sua inscrição na Ordem dos Advogados do Brasil."]'::jsonb,
'C',
'A conduta de deturpar doutrina e jurisprudência para confundir o adversário ou iludir o juiz configura infração punível com censura (art. 36 do EOAB). A censura pode ser convertida em advertência, em ofício reservado, sem registro nos assentamentos, quando presente circunstância atenuante (art. 36, parágrafo único, do EOAB). O advogado responde também por culpa, afastando a alternativa A. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Filosofia do Direito',
'Entre as correntes do positivismo jurídico, a Escola da Exegese destacou-se por seus estudos em torno do Código de Napoleão. Miguel Reale, em Filosofia do Direito, afirma que, segundo essa escola, a evolução do Direito somente poderia operar-se por meio do processo legislativo. Assinale a opção que apresenta, segundo Reale, a tese fundamental da Escola da Exegese.',
'',
'',
'["É a exegese da constituição que pode oferecer aos juristas a compreensão do ideal de justiça, que vincula e limita a liberdade de conformação legislativa da autoridade política.","O Direito, por excelência, é revelado pelas leis, que são normas gerais escritas e emanadas pelo Estado, constitutivas de direito e instauradoras de faculdades e obrigações.","A lei é o instrumento que revela os valores e princípios que são logicamente anteriores e eticamente superiores ao Estado e que conformam e estruturam o direito positivo.","A interpretação da lei é a atividade essencial do jurista, que deve realizá-la buscando a vontade da lei em si, seus fins sociais e as exigências do bem comum, de modo a assegurar a própria evolução do direito."]'::jsonb,
'B',
'Para a Escola da Exegese, na leitura de Miguel Reale, o Direito identifica-se com a lei: as normas gerais escritas, emanadas do Estado, são a fonte por excelência do direito, constitutivas de direitos e instauradoras de faculdades e obrigações. A evolução do direito só ocorreria por meio do processo legislativo, o que corresponde à alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Filosofia do Direito',
'Segundo Kant, na Fundamentação da Metafísica dos Costumes, cada indivíduo, como ser moral, possui uma dignidade que lhe é própria. Assinale a afirmativa que, segundo Kant, mostra como a dignidade deve ser entendida.',
'',
'',
'["Como o conjunto dos direitos fundamentais que devem ser assegurados pelo Estado e que permitem a cada indivíduo o exercício de sua plena cidadania.","Como o valor moral da humanidade que, por isso mesmo, deve ser sempre posto em cálculo ou confronto com qualquer coisa que possua um preço, a fim de se verificar o que deve prevalecer.","Como o valor do trabalho livre de uma pessoa no processo de transformação da natureza em bens de consumo úteis à existência e ao desenvolvimento econômico e moral da sociedade.","Como aquilo que não possui um preço – valor relativo –, mas um valor íntimo, ou seja, uma condição graças à qual algo deve ser considerado um fim em si mesmo."]'::jsonb,
'D',
'Para Kant, aquilo que tem preço pode ser substituído por algo equivalente; já o que está acima de todo preço, não admitindo equivalente, possui dignidade. A dignidade é um valor íntimo, não relativo, e corresponde à condição de a pessoa ser considerada um fim em si mesma, nunca apenas um meio. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Direito Constitucional',
'O Presidente da República é acusado de influir diretamente no resultado de uma grande licitação ocorrida em órgão do Ministério X para beneficiar amigos pessoais. Enzo, francês naturalizado brasileiro, com candidatura deferida a vereador no Município em que reside, pretende ajuizar ação constitucional para anular a licitação e preservar o patrimônio público e a moralidade administrativa. Assinale a afirmativa correta.',
'',
'',
'["Enzo, por ser francês nato, não tem legitimidade ativa para ajuizar ação constitucional com o objetivo almejado, mas pode impetrar um mandado de segurança perante o Superior Tribunal de Justiça para sustar a eficácia do ato.","Enzo, na qualidade de cidadão brasileiro, pode ajuizar uma ação popular perante o Supremo Tribunal Federal.","Enzo, no exercício de direito fundamental, pode ajuizar uma ação civil pública com o objetivo de proteger o interesse difuso de uma Administração Pública proba.","Enzo, por ser naturalizado brasileiro e ostentar a qualidade de cidadão, pode ajuizar uma ação popular perante o Juízo competente de primeiro grau."]'::jsonb,
'D',
'Qualquer cidadão é parte legítima para propor ação popular que vise anular ato lesivo ao patrimônio público e à moralidade administrativa (art. 5º, LXXIII, da CRFB/88). Enzo, naturalizado brasileiro e em pleno gozo dos direitos políticos (cidadão), pode ajuizá-la. A competência é do juízo de primeiro grau competente, não havendo foro por prerrogativa de função para a ação popular. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Direito Constitucional',
'João, pessoa com deficiência, beneficiário de pensão alimentícia devida pelo Estado Beta, obteve decisão favorável para receber valores atrasados. O Judiciário determinou o pagamento dos débitos alimentares em precatórios pela ordem cronológica de apresentação, sem estabelecer prioridade para João. Assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["João, por ser pessoa com deficiência, tem preferência no recebimento de precatórios referentes a débitos alimentares, independentemente do montante dos valores devidos.","As pessoas com deficiência, como João, tal como outras classes de pessoas, têm preferência no recebimento de precatórios referentes a débitos alimentares, observados os balizamentos estabelecidos pela ordem jurídica.","A pessoa com deficiência tem preferência absoluta, em relação a qualquer outro credor, no recebimento de precatórios e dívidas de pequeno valor, somente em casos de débitos alimentares de até cinco salários mínimos.","A preferência no recebimento de precatórios não se aplica a débitos alimentares, mesmo que se trate de pessoa com deficiência, considerando que todos os credores têm a mesma necessidade vital."]'::jsonb,
'B',
'A CRFB/88 (art. 100, § 2º) prevê preferência no pagamento de precatórios de natureza alimentícia para titulares que sejam idosos, portadores de doença grave ou pessoas com deficiência, até determinado limite, após o qual o pagamento segue a ordem cronológica. Trata-se de preferência relativa, observados os balizamentos da ordem jurídica, e não absoluta ou ilimitada. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Direito Constitucional',
'Em razão de fenômenos climáticos reiterados, Estados de determinada região sofrem grandes perdas econômicas, acentuando o desequilíbrio em relação às demais regiões. Para incentivar a economia regional, surge a proposta de que bancos estatais concedam juros favorecidos a atividades prioritárias da região. O Governador do Estado Beta entende haver inconstitucionalidade. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["O governador do Estado Beta está correto, em razão da violação ao princípio da igualdade de tratamento entre as regiões de um Estado Federal.","A medida encontra respaldo constitucional por ser o combate às desigualdades regionais um objetivo fundamental da República.","A proposta de bancos estatais oferecerem juros favorecidos afronta a ordem constitucional, mesmo que seja lícito combater as desigualdades regionais.","O combate às desigualdades regionais não configura tema de índole constitucional, sendo seu enfrentamento delineado pela via legal, conforme a opção política do legislador."]'::jsonb,
'B',
'A redução das desigualdades regionais e sociais é objetivo fundamental da República (art. 3º, III, da CRFB/88) e princípio da ordem econômica (art. 170, VII). A Constituição admite expressamente incentivos regionais, inclusive por meio de juros favorecidos concedidos por instituições oficiais de crédito (art. 43, § 2º, III). A medida tem respaldo constitucional (alternativa B).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Direito Constitucional',
'A Comissão Parlamentar Permanente da Câmara dos Deputados convocou um Ministro de Estado para prestar esclarecimentos sobre episódio ocorrido em sua pasta. O Ministro consultou a assessoria jurídica se deveria comparecer, já que não se tratava de CPI. Com base na CRFB/88, assinale a afirmativa correta.',
'',
'',
'["O Ministro de Estado deve comparecer, mesmo não se tratando de uma convocação realizada por CPI, pois a Comissão Parlamentar Permanente da Câmara dos Deputados tem, de acordo com a CRFB/88, competência para convocá-lo.","A CRFB/88 estabelece que o Ministro de Estado, como autoridade do Poder Executivo Federal, não pode ser convocado para prestar esclarecimentos à Comissão Parlamentar Permanente, sob pena de afronta ao princípio da separação dos Poderes.","Assiste razão ao Ministro de Estado, porque, para prestar esclarecimentos a respeito de episódio ocorrido em sua pasta, ele só pode ser convocado por CPI, que possui poderes próprios das autoridades judiciais, incluindo o de tomar depoimentos de autoridades.","Como o Ministro de Estado goza das mesmas imunidades do Presidente da República, já que atua por delegação desse último agente, não pode ser convocado por Comissão Parlamentar Permanente para prestar esclarecimentos sobre episódio ocorrido em sua pasta."]'::jsonb,
'A',
'A Câmara dos Deputados, o Senado, ou qualquer de suas comissões, podem convocar Ministro de Estado para prestar, pessoalmente, informações sobre assunto previamente determinado, importando crime de responsabilidade a ausência sem justificação adequada (art. 50 da CRFB/88). A competência não é exclusiva das CPIs. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Direito Constitucional',
'Durante violento temporal que ameaçava o desabamento de uma casa, bombeiros militares ingressaram no domicílio, sem o consentimento do morador, à noite, para socorrer as pessoas no imóvel. Posteriormente, o morador ajuizou ação indenizatória por danos morais, argumentando que o ingresso foi ilícito. Com base no sistema constitucional, assinale a afirmativa correta.',
'',
'',
'["A medida adotada pelos bombeiros militares, a despeito da boa intenção deles, foi incorreta, pois o domicílio é inviolável, o que pressupõe a autorização do morador para que pudessem ingressar no local e prestar socorro.","A ação indenizatória não prosperará, pois os bombeiros militares, diante do desastre iminente, não precisam de consentimento do morador do imóvel para prestar socorro.","A despeito do direito à inviolabilidade do domicílio não ser absoluto, o consentimento do morador somente pode ser dispensado por determinação judicial, logo a ação dos bombeiros foi ilícita.","Houve desproporcionalidade na atuação dos agentes, o que permite a condenação do ente federativo na ação indenizatória, visto que a prestação de socorro, sem consentimento do morador, só pode ocorrer durante o dia."]'::jsonb,
'B',
'A inviolabilidade do domicílio comporta exceções expressas na própria Constituição: em caso de flagrante delito, desastre ou para prestar socorro, admite-se o ingresso a qualquer hora, mesmo sem consentimento do morador (art. 5º, XI, da CRFB/88). Diante do desastre iminente e da necessidade de socorro, a atuação dos bombeiros foi lícita e a ação indenizatória não prospera (alternativa B).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Direito Constitucional',
'O Presidente da República emitiu decreto autônomo, disciplinando a organização e o funcionamento da Administração Federal. O Senador Joelson Cruz, Presidente do Partido Político Beta, entende que o decreto viola a Constituição e pretende que o Partido ajuíze ação pela via do controle concentrado. Os advogados informaram, corretamente, que o decreto autônomo',
'',
'',
'["deve ser atacado com o ajuizamento de ação popular, por se tratar de ato do Poder Executivo e em razão dos objetivos desejados pelo Senador Joelson Cruz.","não se submete ao controle concentrado de constitucionalidade, pois esse tipo de diploma não possui natureza normativa, apresentando natureza mandamental.","pode ser objeto de ação direta de inconstitucionalidade, por ser um diploma normativo que busca seu fundamento de validade diretamente na Constituição da República.","só pode ser objeto de apreciação por meio de arguição de descumprimento de preceito fundamental, pois esse é o instrumento adequado para impugnar atos administrativos do Poder Executivo."]'::jsonb,
'C',
'O decreto autônomo, previsto no art. 84, VI, da CRFB/88, possui natureza normativa primária, pois retira seu fundamento de validade diretamente da Constituição. Por isso, pode ser objeto de ação direta de inconstitucionalidade (ADI), submetendo-se ao controle concentrado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Direitos Humanos',
'Uma ONG de defesa dos Direitos Humanos de grupos minoritários solicita esclarecimentos sobre os mecanismos para levar, no âmbito do sistema global de proteção, uma situação que entende violar a Convenção para a Prevenção e a Repressão do Crime de Genocídio, com o objetivo de responsabilizar o Estado brasileiro. As ONGs podem submeter o caso diretamente à apreciação',
'',
'',
'["da Corte Internacional de Justiça.","do Tribunal Penal Internacional.","do Conselho de Direitos Humanos das Nações Unidas.","do Alto Comissariado das Nações Unidas para os Direitos Humanos."]'::jsonb,
'C',
'No sistema global (ONU), o Conselho de Direitos Humanos das Nações Unidas dispõe de procedimento de denúncias (procedimento de queixa) acessível a indivíduos, grupos e organizações não governamentais, que permite levar ao seu conhecimento situações de violações a direitos humanos. A Corte Internacional de Justiça resolve litígios entre Estados e o Tribunal Penal Internacional julga indivíduos, não sendo acessíveis diretamente por ONGs para responsabilizar o Estado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Direitos Humanos',
'Um grupo de mães de crianças entre 6 e 10 anos, que não conseguiram matricular os filhos na rede básica de ensino sob a justificativa de inexistência de vagas, após esgotarem os esforços administrativos, procura você. Considerando a situação, assinale a afirmativa correta.',
'',
'',
'["Caso seja demonstrada a inércia do Estado em prover o efetivo acesso ao ensino de primeiro grau, comprovando-se ainda que a situação foi devidamente submetida ao crivo do Poder Judiciário local, esgotados todos os recursos cabíveis, frustrada a obtenção de tutela eficaz, o caso poderá ser submetido diretamente pelas vítimas à análise da Comissão Interamericana de Direitos Humanos.","De acordo com a interpretação fixada pelo Supremo Tribunal Federal em relação ao direito à educação, em razão do seu desenvolvimento progressivo, não se pode configurá-lo como típico direito subjetivo, cuja efetiva implementação possa ser determinada por decisão judicial.","Apesar de o direito à educação, em razão da sua natureza social, estar previsto no Protocolo Adicional de São Salvador, no âmbito do Sistema Regional Americano de Proteção dos Direitos Humanos foram previstos meios próprios para sua proteção, não sendo possível a utilização do sistema de petições individuais regulado pela Convenção Americana sobre Direitos Humanos.","Em razão de o Brasil não ter ratificado o Protocolo Adicional de São Salvador, o caso em questão não poderá ser submetido aos órgãos integrantes do Sistema Regional Americano de Proteção dos Direitos Humanos."]'::jsonb,
'A',
'Esgotados os recursos internos sem obtenção de tutela eficaz, o caso de violação de direitos protegidos pela Convenção Americana pode ser submetido, por meio de petição, à Comissão Interamericana de Direitos Humanos (art. 44 e 46 da CADH), inclusive por vítimas e organizações. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Direito Eleitoral',
'Maria, candidata a Governadora do Estado Alfa, obteve prova documental e testemunhal de que Joana, sua adversária, praticara abuso do poder econômico, e solicitou representação à Justiça Eleitoral para a abertura de investigação judicial eleitoral. Assinale a opção que indica, corretamente, a quem deve ser encaminhada a petição.',
'',
'',
'["A um dos Juízes Eleitorais em atuação no Estado Alfa.","Ao Presidente do Tribunal Regional Eleitoral, que deve apreciar os fatos.","À livre distribuição do Tribunal Regional Eleitoral, que deve apreciar os fatos.","Ao Corregedor Regional do Tribunal Regional Eleitoral, que deve apreciar os fatos."]'::jsonb,
'D',
'A investigação judicial eleitoral por abuso do poder econômico ou político (art. 22 da LC nº 64/90) deve ser proposta perante o Corregedor-Geral ou Regional Eleitoral, conforme a esfera. Tratando-se de eleição estadual (Governador), a representação é dirigida ao Corregedor Regional do Tribunal Regional Eleitoral. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Direito Eleitoral',
'No curso da campanha, João, candidato a Prefeito, doou três sacos de cimento a Pedro sob o compromisso de que este nele votaria. Ana, candidata ao mesmo cargo, solicitou a ação cabível para que o registro ou o diploma de João fosse cassado. Assinale a opção que indica a ação cabível.',
'',
'',
'["Ação de impugnação do registro, que pode ser ajuizada até a data da eleição.","Recurso contra a expedição de diploma, que pode ser ajuizada até três dias após a diplomação.","Ação penal por ato de corrupção eleitoral, que pode ser ajuizada até fluir o prazo prescricional.","Representação por captação ilícita de sufrágio, que pode ser ajuizada até a data da diplomação."]'::jsonb,
'D',
'A conduta de doar bens em troca de voto configura captação ilícita de sufrágio (art. 41-A da Lei nº 9.504/97). A representação respectiva, que pode culminar na cassação do registro ou do diploma, pode ser ajuizada desde o registro da candidatura até a data da diplomação. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direito Internacional',
'Uma artista brasileira que atua nos Estados Unidos foi filmada embriagada no Brasil, e o vídeo foi postado por um portal de notícias americano, viralizando no Brasil. Receosa de prejudicar sua carreira, ela ajuizou ação no Brasil contra o portal, sediado nos EUA. Com base nos limites da jurisdição nacional estabelecidos no CPC, assinale a afirmativa correta.',
'',
'',
'["A autoridade judiciária brasileira não é competente para julgar a ação, porque o réu é pessoa jurídica estrangeira.","A autoridade judiciária brasileira é competente para julgar a ação, porque a autora tem nacionalidade brasileira.","A autoridade judiciária brasileira tem competência para processar e julgar a ação, porque os danos à imagem ocorreram no Brasil.","A autoridade brasileira deve remeter o caso, por carta rogatória, à justiça norte-americana, tendo em vista que o portal de notícias é sediado nos Estados Unidos."]'::jsonb,
'C',
'Compete à autoridade judiciária brasileira processar e julgar as ações em que a obrigação tiver de ser cumprida no Brasil ou em que o fundamento for fato ocorrido ou ato praticado no Brasil (art. 21, III, do CPC). Como os danos à imagem ocorreram no Brasil, há competência da autoridade brasileira. A nacionalidade da autora é irrelevante para fixar essa competência. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direito Internacional',
'O Brasil aderiu à Convenção da Haia sobre a Obtenção de Provas no Estrangeiro em Matéria Civil ou Comercial (Decreto nº 9.039/2017). Sobre a obtenção de provas no exterior, assinale a afirmativa correta.',
'',
'',
'["A tramitação do pedido de cooperação jurídica internacional para a obtenção de prova no exterior apenas poderá ser feita com base em acordo internacional vigente entre o Brasil e o Estado Requerido.","A Convenção da Haia sobre a Obtenção de Provas no Estrangeiro em matéria civil e comercial prevê que a autoridade judicial deve aplicar integralmente a legislação do Estado Requerente no que diz respeito às formalidades a serem seguidas na obtenção da prova.","O cumprimento da Carta Rogatória em que se requer à autoridade competente de um Estado Contratante a obtenção de provas só poderá ser recusado quando, no Estado Requerido, o cumprimento não estiver no âmbito das atribuições do Poder Judiciário ou quando o Estado Requerido considerá-lo prejudicial à sua soberania ou segurança.","Cada Estado Contratante designará uma Autoridade Central para receber as Cartas Rogatórias procedentes de autoridade judiciária de outro Estado Contratante e de transmiti-las à autoridade competente para cumprimento. A organização dessa Autoridade Central deve ser a mesma em todos os Estados signatários da Convenção da Haia sobre Provas, sem a possibilidade de cada um legislar sobre essa organização."]'::jsonb,
'C',
'A Convenção da Haia sobre Provas prevê que o cumprimento de carta rogatória só poderá ser recusado quando, no Estado requerido, não estiver no âmbito das atribuições do Poder Judiciário, ou quando o Estado requerido o considerar prejudicial à sua soberania ou segurança (art. 12 da Convenção). A tramitação não depende exclusivamente de acordo, não se aplica integralmente a lei do Estado requerente e a organização da Autoridade Central cabe a cada Estado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direito Financeiro',
'O Estado Beta ultrapassou o limite de despesa total de pessoal (60% da RCL, pela LRF). Embora os demais Poderes e órgãos autônomos tenham se enquadrado, o Poder Executivo Estadual não alcançou a redução ao limite individual de 49% da RCL no prazo da LRF. Diante disso, à luz da LRF, o Poder Executivo estadual não poderá',
'',
'',
'["realizar qualquer operação de crédito, apenas.","receber transferências voluntárias (exceto nas áreas de educação, saúde e assistência social), mas poderá obter garantia de outro ente, bem como poderá contratar operações de crédito.","obter garantia de outro ente, nem contratar operações de crédito, ressalvadas as que visem à redução das despesas com pessoal, mas poderá receber transferências voluntárias em quaisquer áreas.","receber transferências voluntárias (exceto nas áreas de educação, saúde e assistência social), nem obter garantia de outro ente, nem contratar operações de crédito, ressalvadas as destinadas ao pagamento da dívida mobiliária e as que visem à redução das despesas com pessoal."]'::jsonb,
'D',
'Não alcançada a redução no prazo e permanecendo acima do limite, o ente fica impedido de: receber transferências voluntárias (exceto educação, saúde e assistência social); obter garantia, direta ou indireta, de outro ente; e contratar operações de crédito, ressalvadas as destinadas ao refinanciamento da dívida mobiliária e as que visem à redução das despesas com pessoal (art. 23, § 3º, da LRF). Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direito Financeiro',
'O projeto da Lei Orçamentária Anual (LOA) de determinado ente prevê apenas o orçamento fiscal, esclarecendo que o orçamento de investimentos das empresas estatais e o orçamento da seguridade social serão encaminhados individualmente por outros projetos. Sobre esse procedimento, assinale a afirmativa correta.',
'',
'',
'["Viola a regra constitucional de que o orçamento da seguridade social deve integrar a Lei de Diretrizes Orçamentárias.","Não atende à regra constitucional de que a LOA compreenderá também o orçamento de investimentos e o orçamento da seguridade social.","Está correto, pois apenas o orçamento fiscal compõe a LOA, devendo o orçamento de investimento e o orçamento da seguridade social serem previstos em leis próprias para cada um desses tipos de orçamentos.","É inadequado em relação ao orçamento de investimentos, que deveria compor a LOA, mas é admitido em relação ao orçamento da seguridade social, que pode ser previsto em outra lei, desde que seu valor global esteja previsto na LOA."]'::jsonb,
'B',
'Nos termos do art. 165, § 5º, da CRFB/88, a Lei Orçamentária Anual compreenderá o orçamento fiscal, o orçamento de investimento das empresas estatais e o orçamento da seguridade social. Encaminhar esses orçamentos em projetos separados contraria a regra de que todos integram a LOA. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direito Tributário',
'João da Silva foi notificado em 20/01/2023 para esclarecer rendimentos não declarados recebidos em 2019, identificados por movimentação bancária com base em Lei Complementar publicada em 15/12/2022, que ampliou os poderes de fiscalização do Fisco, permitindo acesso a dados financeiros para fins de fiscalização, lançamento e cobrança de IR. De acordo com o CTN, assinale a afirmativa correta.',
'',
'',
'["A notificação é inconstitucional por violar o princípio da irretroatividade tributária, uma vez que a referida nova lei só poderia produzir efeitos a partir da sua publicação.","Por não ter respeitado a anterioridade nonagesimal, que imporia a vigência e eficácia daquela nova lei somente a partir do meio do mês de março de 2023, a notificação é indevida.","A notificação é regular e atende às regras constitucionais e às do CTN, devendo João da Silva prestar os esclarecimentos quanto aos rendimentos recebidos e, se for o caso, recolher o imposto devido com os acréscimos devidos.","Não poderá ocorrer lançamento tributário fundado em dados obtidos a partir de fiscalização com base na Lei Complementar nº XXX/2022, já que ela instituiu novos critérios de apuração ou processos de fiscalização depois da ocorrência do fato gerador da obrigação."]'::jsonb,
'C',
'A legislação que institui novos critérios de apuração ou processos de fiscalização, ampliando poderes de investigação das autoridades, aplica-se a fatos geradores pretéritos (art. 144, § 1º, do CTN). Não há ofensa à irretroatividade quanto a normas meramente procedimentais de fiscalização. Logo, a notificação é regular (alternativa C).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direito Tributário',
'Um contrato de locação residencial traz cláusula de que ao locatário caberá pagar diretamente o IPTU incidente sobre o imóvel. Sobre a posição do locatário, à luz do CTN, assinale a afirmativa correta.',
'',
'',
'["O locatário pode ser considerado contribuinte de direito quanto a este IPTU.","Em caso de inadimplemento deste IPTU, o locatário não poderá ser executado pelo Município.","Quanto a este IPTU, o locatário tem responsabilidade tributária por substituição ao locador.","O locatário é responsável tributário por sucessão do locador quanto a este IPTU."]'::jsonb,
'B',
'As convenções particulares relativas à responsabilidade pelo pagamento de tributos não podem ser opostas à Fazenda Pública (art. 123 do CTN). O contribuinte do IPTU é o proprietário (locador); a cláusula contratual tem efeito apenas entre as partes. Assim, o locatário não é contribuinte nem responsável perante o Município e não pode ser executado por este em razão do inadimplemento do IPTU. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direito Tributário',
'Lei municipal, publicada em 20/02/2024, instituiu contribuição cuja arrecadação estaria vinculada ao custeio, à expansão e à melhoria do serviço de iluminação pública e de sistemas de monitoramento para a segurança e a preservação de logradouros públicos. Acerca desta lei, assinale a afirmativa correta.',
'',
'',
'["A contribuição poderia ser instituída e vinculada a todas essas finalidades, por expressa previsão constitucional.","É inconstitucional a tentativa de custear a iluminação pública por espécie tributária distinta de impostos.","A implantação de sistemas de monitoramento para a segurança e a preservação de logradouros públicos somente poderia ser custeada com recursos advindos de taxas, e não de uma contribuição.","A implantação de sistemas de monitoramento para a segurança e a preservação de logradouros públicos somente poderia ser custeada com recursos advindos de impostos, e não de uma contribuição."]'::jsonb,
'A',
'O art. 149-A da CRFB/88, com a redação da EC nº 132/2023, autoriza os Municípios e o Distrito Federal a instituir contribuição para o custeio, expansão e melhoria do serviço de iluminação pública e de sistemas de monitoramento para segurança e preservação de logradouros públicos. Há expressa previsão constitucional para todas essas finalidades (alternativa A).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direito Tributário',
'Nova lei federal ordinária criou programa de parcelamento de dívidas de contribuição previdenciária patronal em até 90 meses. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["A nova lei, por não ser complementar, não poderia prever o parcelamento dessas dívidas de contribuições de seguridade social.","O número máximo de meses de tal parcelamento extrapola o permitido pela Constituição Federal/88.","O parcelamento das contribuições de seguridade social, por determinação da Constituição Federal/88, precisa ser acompanhado do pagamento de uma parcela inicial que represente 20% do valor total da dívida.","A Constituição Federal, dada a relevância da seguridade social, veda a concessão de qualquer tipo de parcelamento de dívidas de contribuição previdenciária patronal."]'::jsonb,
'B',
'O art. 195, § 11, da CRFB/88 veda a concessão de remissão ou anistia de contribuições sociais patronais e do segurado para débitos em montante superior ao fixado em lei complementar, e, quanto ao parcelamento, a jurisprudência e a disciplina constitucional impõem limites. No contexto da questão, o número de 90 meses extrapola o limite admitido pela ordem constitucional para o parcelamento dessas contribuições, tornando correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direito Tributário',
'A sociedade ABC Ltda. deixou de declarar ao Fisco Municipal vários serviços prestados. Um agente fiscal lavrou auto de infração com multa por falta das declarações. Notificada, a sociedade não pagou nem impugnou. A Procuradoria do Município ajuizou ação de cobrança pelo rito comum, com base no CPC. Sobre essa ação, assinale a afirmativa correta.',
'',
'',
'["A via judicial adequada para a cobrança seria a ação de execução fiscal, e não uma ação de cobrança regida pelo Código de Processo Civil.","O prazo prescricional do Fisco Municipal para a constituição do crédito tributário era de cinco anos, contados do primeiro dia do exercício seguinte àquele em que o lançamento poderia ter sido efetuado.","O prazo decadencial do Fisco Municipal para a constituição do crédito tributário era de cinco anos contados da data do fato gerador da obrigação tributária.","A modalidade de lançamento efetivamente utilizada pelo agente fiscal do ISS foi o lançamento por declaração."]'::jsonb,
'A',
'O crédito tributário regularmente inscrito em dívida ativa deve ser cobrado por meio de execução fiscal, regida pela Lei nº 6.830/80, e não por ação de cobrança pelo rito comum do CPC. A via eleita pela Procuradoria é inadequada (alternativa A).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direito Administrativo',
'Tertuliano acumula ilicitamente dois cargos públicos em autarquias federais. Notificado para optar por um deles, permaneceu omisso, sendo instaurado processo administrativo disciplinar por acumulação ilegal. Diante da situação, assinale a afirmativa que indica, corretamente, a orientação.',
'',
'',
'["A análise do caso deverá ser feita por uma comissão processante, composta de três servidores estáveis, cujo presidente deverá ser ocupante de cargo superior ou de mesmo nível de Tertuliano.","A comissão processante, caracterizada a acumulação ilegal e provada a má-fé de Tertuliano, deverá indicar o cargo que estará sujeito à pena de demissão.","A notificação para que Tertuliano realize a opção por um dos cargos vai contra a lei, pois ele deve ser demitido de ambos os cargos ilicitamente acumulados, após o devido processo administrativo.","A opção de Tertuliano por um dos cargos até o último dia do prazo para defesa configura sua boa-fé, hipótese que se converterá, automaticamente, em pedido de exoneração do outro cargo."]'::jsonb,
'D',
'Na acumulação ilegal de cargos, segundo a Lei nº 8.112/90 (art. 133), caracterizada a boa-fé do servidor pela opção, até o último dia de prazo para defesa, por um dos cargos, essa opção converte-se automaticamente em pedido de exoneração do outro. Somente a má-fé enseja demissão de ambos. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'O Estado Beta concedeu serviços de sua competência à sociedade Servicaos. Em razão do descumprimento de cláusulas contratuais que impactam a qualidade do serviço, o poder concedente editou decreto designando interventor, com prazo, objetivos e limites da medida. A sociedade pede esclarecimentos. Assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["A medida é nula, pois não poderia se materializar por meio de decreto, na medida em que o Poder Concedente deveria ter editado uma lei autorizativa para tal finalidade.","Após o devido processo administrativo, a constatação de inexecução do contrato deve ensejar sua extinção, constituindo causa justificadora da encampação, que independe do interesse público.","O Poder Concedente, declarada a intervenção, deverá, no prazo de 30 dias, instaurar procedimento administrativo para comprovar as causas determinantes da medida e apurar as responsabilidades, assegurado o direito de ampla defesa.","A administração do serviço, cessada a intervenção e caso não seja extinta a concessão, será devolvida à concessionária, independentemente da prestação de contas do interventor, na medida em que este não responde pelos atos por ele praticados na vigência da medida."]'::jsonb,
'C',
'Nos termos da Lei nº 8.987/95, declarada a intervenção, o poder concedente deverá, no prazo de 30 dias, instaurar procedimento administrativo para comprovar as causas determinantes da medida e apurar responsabilidades, assegurado o direito de ampla defesa (art. 33). A intervenção faz-se por decreto, e o interventor presta contas e responde pelos atos praticados. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'Com o intuito de tombar dois imóveis vizinhos de valor histórico e cultural, o Iphan notificou os proprietários: o Município Alfa e a senhora Maria Silva. Maria teme prejuízos. À luz do Decreto-Lei nº 25/1937, assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["Com a notificação, considera-se que ocorreu o tombamento provisório do imóvel de Maria.","A conclusão do tombamento do imóvel do Município Alfa não gera qualquer efeito sobre o imóvel de Maria.","Caso Maria realize tempestivamente a impugnação relacionada ao imóvel de sua propriedade, não será cabível o tombamento compulsório.","Não é possível o tombamento do imóvel vizinho à propriedade de Maria, por se tratar de bem público que integra o patrimônio do Município Alfa."]'::jsonb,
'A',
'Nos termos do Decreto-Lei nº 25/1937, a notificação do proprietário no processo de tombamento compulsório implica o tombamento provisório, que para quase todos os efeitos se equipara ao definitivo. Logo, com a notificação, considera-se tombado provisoriamente o imóvel de Maria (alternativa A).'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'Januário, ex-prefeito, tomou conhecimento de inquérito civil para avaliar condutas de seu mandato que se enquadrariam como atos de improbidade causadores de prejuízo ao erário, destacando que tem provas de que atuou de forma culposa. À luz da Lei nº 8.429/1992, com a redação da Lei nº 14.230/2021, assinale a opção que apresenta a orientação jurídica correta.',
'',
'',
'["O fato é determinante para a estratégia de defesa, na medida em que os atos de improbidade não mais podem ser caracterizados na modalidade culposa.","O fato é importante para a estratégia de defesa, para fins de redução da pena, pois os atos de improbidade que ocasionam prejuízo ao erário admitem a modalidade culposa.","O fato é desinfluente para a respectiva estratégia de defesa, em um primeiro momento, pois os atos de improbidade admitem tanto a modalidade culposa quanto a dolosa.","O fato não tem muita relevância para a estratégia de defesa, na medida em que a responsabilização por improbidade administrativa é objetiva."]'::jsonb,
'A',
'Após a Lei nº 14.230/2021, somente o dolo caracteriza ato de improbidade administrativa, tendo sido eliminada a modalidade culposa, inclusive quanto aos atos que causam prejuízo ao erário (art. 1º, §§ 1º a 3º, da Lei nº 8.429/92). A prova de que a conduta foi culposa é determinante para a defesa, pois afasta a tipificação como improbidade. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'Rodrigo, servidor público do Estado Alfa, agrediu fisicamente seu desafeto Afonso durante atendimento ao público. Afonso ajuizou ação de responsabilidade civil contra o ente, que foi condenado em R$ 20.000. Após o trânsito em julgado, o Estado ajuizou ação de regresso contra Rodrigo. Assinale a opção que indica a orientação correta a constar da contestação.',
'',
'',
'["A responsabilidade civil do Estado é objetiva, com base na teoria do risco integral, enquanto a de Rodrigo, apesar de objetiva, com base na teoria do risco administrativo, admite a discussão acerca do elemento subjetivo.","A responsabilidade civil é objetiva, com base na teoria do risco administrativo, tanto para Rodrigo quanto para o Estado Alfa, motivo pelo qual a peça de defesa deve se restringir a indicar eventuais causas excludentes do nexo de causalidade.","A responsabilidade civil é subjetiva na situação de Rodrigo, sendo necessária a demonstração de dolo ou culpa na ação de regresso em questão, a qual foi ajuizada em decorrência da condenação do Estado fundada em sua responsabilização objetiva, com base na teoria do risco administrativo.","A responsabilidade civil é subjetiva tanto para Rodrigo quanto para o Estado, com base na teoria do risco administrativo, admitindo, contudo, a discussão do elemento subjetivo em ambas as hipóteses, que é imprescindível para fins de romper o nexo de causalidade."]'::jsonb,
'C',
'A responsabilidade civil do Estado por atos de seus agentes é objetiva (teoria do risco administrativo, art. 37, § 6º, da CRFB/88). Já a ação de regresso contra o agente depende da comprovação de dolo ou culpa, ou seja, a responsabilidade do servidor é subjetiva. Logo, na contestação cabe discutir a ausência de dolo ou culpa de Rodrigo. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Ambiental',
'Diante das tragédias climáticas, ganhou força a litigância climática, por meio da qual o Judiciário é instado a impor medidas para reduzir efeitos deletérios sobre o clima, especialmente por ações civis públicas. A associação Puravida pede esclarecimentos sobre o arcabouço jurídico. Com relação à atuação jurisdicional da litigância climática, assinale a afirmativa correta.',
'',
'',
'["Inexiste qualquer amparo no ordenamento jurídico, diante da primazia do princípio da livre iniciativa e do desenvolvimento econômico do país.","Tem assento, exclusivamente, em normas infraconstitucionais, notadamente na lei que institui a Política Nacional sobre a Mudança do Clima (PNMC).","A temática dispõe de previsão em normas nacionais e internacionais que versam sobre o tema, mas não há fundamento constitucional que lhe confira amparo.","Decorre das normas previstas na CRFB/88 para a proteção do meio ambiente ecologicamente equilibrado e de normas internacionais, além das editadas internamente para tal fim, como a Política Nacional sobre a Mudança do Clima (PNMC)."]'::jsonb,
'D',
'A litigância climática encontra amparo no direito ao meio ambiente ecologicamente equilibrado (art. 225 da CRFB/88), em normas internacionais (Convenção-Quadro da ONU sobre Mudança do Clima, Acordo de Paris) e em normas internas, como a Política Nacional sobre a Mudança do Clima (Lei nº 12.187/2009). Há, portanto, fundamento constitucional, internacional e infraconstitucional. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Ambiental',
'A sociedade XYZ exercerá atividade potencialmente poluidora, sendo necessário o licenciamento ambiental. O Município Alfa, responsável pelo licenciamento, não dispõe de órgão ambiental capacitado ou de conselho de meio ambiente, mas o Estado Beta e a União possuem. À luz da Lei Complementar nº 140/2011, assinale a afirmativa correta.',
'',
'',
'["Na ausência de órgão ambiental capacitado ou conselho do meio ambiente no Município Alfa, a ação administrativa de licenciamento ocorrerá perante a União.","Inexistindo órgão ambiental capacitado ou conselho do meio ambiente no Município Alfa, a ação administrativa de licenciamento ocorrerá perante o Estado Beta.","Até que o Município Alfa crie um órgão ambiental capacitado ou um conselho do meio ambiente, a sociedade empresária XYZ não poderá exercer, regularmente, as suas atividades, por ausência de licenciamento ambiental.","Como não há órgão ambiental capacitado ou conselho do meio ambiente no Município Alfa, a sociedade empresária XYZ terá direito ao licenciamento ambiental tácito, podendo exercer suas atividades de forma regular."]'::jsonb,
'B',
'Nos termos do art. 15 da LC nº 140/2011, inexistindo órgão ambiental capacitado ou conselho de meio ambiente no ente originariamente competente (o Município), a atribuição é exercida pelo ente imediatamente superior, no caso, o Estado Beta. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Civil',
'Mário conduzia imprudentemente seu veículo quando colidiu contra uma banca de jornais, atingindo João, que faleceu no local. Mário ficou internado por cerca de dois meses antes de também falecer em decorrência dos ferimentos. Sobre as implicações do caso, segundo o ordenamento brasileiro, assinale a afirmativa correta.',
'',
'',
'["Eventuais herdeiros de João terão o prazo decadencial de quatro anos para pleitear indenização em face do espólio de Mário.","A prescrição iniciada em face de Mário continua a correr contra seu sucessor.","O prazo prescricional, diante da inexistência de previsão legal específica, é de dez anos.","A prescrição intercorrente, se ajuizada ação indenizatória pelos eventuais herdeiros de João, não observará o mesmo prazo de prescrição da pretensão, possuindo prazo fixo de cinco anos."]'::jsonb,
'B',
'A pretensão de reparação civil prescreve em três anos (art. 206, § 3º, V, do CC). Trata-se de prazo prescricional, e não decadencial. Nos termos do art. 196 do CC, a prescrição iniciada contra uma pessoa continua a correr contra o seu sucessor. Assim, a prescrição iniciada em face de Mário prossegue contra seu espólio/sucessores. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Civil',
'Cláudia contratou o arquiteto Lúcio para elaborar projeto de redecoração, a ser entregue em 30 dias. Em caso de mora, Lúcio fica obrigado a pagar multa diária a Cláudia. Considerando essa hipótese, assinale a afirmativa correta.',
'',
'',
'["Caso haja atraso na entrega do projeto, Cláudia poderá exigir a multa de Lúcio, independentemente de alegar prejuízo da mora.","A obrigação de pagar multa por dia de atraso afigura-se inválida, pois configura ônus manifestamente excessivo em detrimento do devedor.","Havendo mora, caso Cláudia cobre a verba estipulada, não poderá exigir de Lúcio o cumprimento da obrigação principal, isto é, a entrega do projeto de redecoração.","A obrigação de pagar a multa em caso de mora tem natureza jurídica de astreintes e não pode ser reduzida equitativamente pelo Juiz caso se revele manifestamente excessiva."]'::jsonb,
'A',
'A cláusula penal moratória estipula multa por dia de atraso. Nos termos do art. 416 do CC, para exigir a pena convencional, o credor não precisa alegar prejuízo. Tratando-se de cláusula penal moratória, ela pode ser cumulada com o cumprimento da obrigação principal (art. 411 do CC) e pode ser reduzida equitativamente pelo juiz se manifestamente excessiva (art. 413 do CC). Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Civil',
'André, pessoa física, coleta dados pessoais de conhecidos e os arquiva em seus cadernos pessoais, para fins exclusivamente particulares e não econômicos. Sobre a aplicação da Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709/2018) ao caso, assinale a afirmativa correta.',
'',
'',
'["Não é aplicável, porque se trata de pessoa natural e a referida lei somente se aplica às pessoas jurídicas, de direito público ou privado.","Não é aplicável, porque o tratamento de dados pessoais, na hipótese em questão, é realizado por pessoa física com finalidade exclusivamente particular e não econômica.","Não é aplicável, porque o tratamento de dados pessoais, na hipótese em questão, é realizado em meio físico e não digital.","É aplicável, porque, mesmo sendo realizada por pessoa natural, em meio físico e sem finalidade lucrativa, a lei define “tratamento” de modo amplo."]'::jsonb,
'B',
'A LGPD não se aplica ao tratamento de dados pessoais realizado por pessoa natural para fins exclusivamente particulares e não econômicos (art. 4º, I, da Lei nº 13.709/2018). É exatamente a hipótese de André, que coleta dados para fins particulares e não econômicos. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Civil',
'Paulo e Glória mantiveram união estável por 22 anos, sem pacto de convivência, amealhando por esforço comum patrimônio de R$ 1.600.000. Paulo faleceu, não deixando filhos nem pais, apenas seus quatro avós e dois irmãos. Sobre a sucessão de Paulo, assinale a afirmativa correta.',
'',
'',
'["Glória terá direito à meação, R$ 800.000 (oitocentos mil reais), mais metade do valor da herança, ou seja, R$ 400.000 (quatrocentos mil reais). O valor restante, de R$ 400.000 (quatrocentos mil reais), será dividido igualmente entre os avós de Paulo.","Glória terá direito à meação, no valor de R$ 800.000 (oitocentos mil reais), ao direito real de habitação, mas não concorrerá com os ascendentes de Paulo.","Glória terá direito ao valor total dos bens, já que o cônjuge afasta da sucessão os ascendentes do falecido.","Glória terá direito à meação, no valor de R$ 800.000 (oitocentos mil reais), e o valor da herança será dividido em três partes iguais, recebendo Glória e os dois irmãos de Paulo, o correspondente a 1/3 (um terço) cada um."]'::jsonb,
'A',
'Reconhecida a equiparação da união estável ao casamento para fins sucessórios (STF, RE 878.694), o companheiro concorre com os ascendentes. Glória tem direito à meação (R$ 800.000) sobre o patrimônio comum. Na herança (os outros R$ 800.000), concorrendo com ascendentes de segundo grau (avós), caber-lhe-á metade da herança (R$ 400.000), e a outra metade (R$ 400.000) será dividida igualmente entre os ascendentes, conforme o art. 1.837 do CC. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Civil',
'No edifício em que reside Carolina há jardineiras com pequenas plantas nas janelas de todos os apartamentos, elemento original do projeto arquitetônico. Carolina colocou vasos em sua jardineira. Certo dia, caiu um vaso da jardineira de Carolina sobre o carro de Thiago, estacionado na rua, causando um pequeno amassado. Sobre o caso, assinale a afirmativa correta.',
'',
'',
'["Carolina somente responde pelo prejuízo de Thiago, se este provar dolo por parte dela.","Carolina somente responde pelo prejuízo de Thiago, se este provar dolo ou culpa por parte dela.","Carolina responde pelo prejuízo de Thiago, independentemente de prova de dolo ou culpa por parte dela.","Por se tratar de elemento original da construção, Carolina não tem responsabilidade pelo que cair da jardineira."]'::jsonb,
'C',
'Nos termos do art. 938 do CC, aquele que habitar prédio, ou parte dele, responde pelo dano proveniente das coisas que dele caírem ou forem lançadas em lugar indevido. Trata-se de responsabilidade objetiva (independentemente de dolo ou culpa). Como foi o vaso da jardineira de Carolina que caiu sobre o carro, ela responde pelo dano. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Civil',
'Fabiano e Vitória, casados em comunhão parcial, são possuidores de boa-fé de imóvel residencial de 160 m² em Quebrangulo/AL. O proprietário, Graciliano, mudou-se para Maceió no início de 2011 e nunca retornou, tendo hipotecado o bem dias antes. O casal reside no imóvel desde 2018. Assinale a opção que apresenta a orientação correta sobre eventual usucapião.',
'',
'',
'["A usucapião é forma de aquisição derivada, de modo que permanecem os ônus reais que gravavam o imóvel antes de sua declaração, não podendo ser oposta em caso de hipoteca.","O casal, Fabiano e Vitória, poderá adquirir o domínio do imóvel por usucapião especial urbana, desde que demonstre a posse sem oposição, a utilização para sua moradia ou de sua família e que não seja proprietário de outro imóvel urbano ou rural.","Em eventual falecimento do casal, os herdeiros não têm legitimidade na propositura da ação de usucapião, visto que o Código Civil impede o acréscimo da posse a dos seus antecessores, ainda que sejam contínuas e pacíficas.","O sistema jurídico brasileiro inibe que um casal casado por regime da comunhão adquira um bem por usucapião, mesmo para fins de moradia, pois nesse regime devem ser partilhados apenas os bens adquiridos a título oneroso."]'::jsonb,
'B',
'A usucapião especial urbana (art. 183 da CRFB/88 e art. 1.240 do CC) exige posse por cinco anos ininterruptos e sem oposição de área urbana de até 250 m², utilizada para moradia própria ou da família, sem que o possuidor seja proprietário de outro imóvel urbano ou rural. A usucapião é modo originário de aquisição, extinguindo os ônus reais anteriores, e admite a soma de posses. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Estatuto da Criança e do Adolescente',
'Herminda, de 50 anos, tia materna de Júlia, de 16 anos, foi à porta da escola e, com intuito de correção, ridicularizou e humilhou a adolescente na frente dos colegas, dizendo que era desleixada, que nunca entraria na universidade e que era uma vergonha para a família. Os pais procuram orientação para sancionar o ato. De acordo com o ECA, assinale a afirmativa correta.',
'',
'',
'["Herminda pode ser encaminhada a cursos ou programas de orientação, sendo que a aplicação dessa medida só pode ser feita pela autoridade judiciária.","Herminda, em virtude de tal ato, pode receber sanções, como a advertência, a ser aplicada pelo Conselho Tutelar, sem prejuízo de outras providências legais.","Herminda pode sofrer sanções, entre elas, a advertência. Para a aplicação da medida, é preciso representação do Ministério Público e decisão da autoridade judiciária.","Herminda não tinha o direito de humilhar e ridicularizar Júlia, mesmo para fins corretivos, o que caberia aos pais por serem detentores do poder familiar, mas o ECA não prevê qualquer possibilidade de sanção à tia materna."]'::jsonb,
'B',
'A conduta de castigo físico ou tratamento cruel ou degradante contra criança ou adolescente sujeita o agente às medidas do art. 18-B do ECA, entre elas a advertência, aplicáveis conforme a gravidade do caso pelo Conselho Tutelar, sem prejuízo de outras providências legais. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Estatuto da Criança e do Adolescente',
'Carlos e Mário mantêm união estável homoafetiva há mais de 15 anos, com vida estável e harmônica, e desejam adotar conjuntamente uma criança. Procuram assessoria jurídica sobre a adoção. Diante desse contexto, assinale a afirmativa correta.',
'',
'',
'["Carlos e Mário não poderão realizar a adoção conjunta, sendo-lhes assegurado, entretanto, que adotem individualmente.","Carlos e Mário podem adotar. Entretanto, não terão preferência na lista de adotantes, pois um casal com relacionamento heteroafetivo terá prioridade.","Carlos e Mário podem adotar, mas precisam definir previamente sobre a guarda da criança e eventual regime de visitas para a hipótese eventual de término da união.","Carlos e Mário podem realizar a adoção conjunta, pois, de acordo com o ECA, é indispensável que sejam casados civilmente ou mantenham união estável, comprovada a estabilidade da família."]'::jsonb,
'D',
'A adoção conjunta exige que os adotantes sejam casados civilmente ou mantenham união estável, comprovada a estabilidade da família (art. 42, § 2º, do ECA). A união estável homoafetiva é reconhecida, não havendo distinção quanto à orientação sexual nem preferência de casais heteroafetivos. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito do Consumidor',
'A Fábrica de Alimentos Épsilon Ltda. alterou a embalagem de biscoito infantil, reduzindo o peso sem a devida ostensividade da informação no rótulo, sem diminuição proporcional do preço e sem indicação da quantidade de açúcar e lactose. Sobre o dever de informação do CDC, assinale a afirmativa correta.',
'',
'',
'["A informação acerca da redução quantitativa e dos ingredientes deve estar visível, sendo disponibilizada em mensagem clara e precisa.","A falta e a deficiência material ou formal de informação só violam as normas de proteção do consumidor quando causam danos materiais ao consumidor.","As informações a respeito da quantidade, da composição e do preço dos produtos podem constar em língua portuguesa ou estrangeira, desde que seja de fácil compreensão do consumidor.","Caso o produto tenha na embalagem menção ao site da empresa, as informações a respeito da pesagem e dos ingredientes não precisam constar na embalagem, desde que estejam no endereço eletrônico."]'::jsonb,
'A',
'O CDC exige que a oferta e apresentação de produtos assegurem informações corretas, claras, precisas, ostensivas e em língua portuguesa sobre características, qualidade, quantidade, composição, preço e riscos (arts. 6º, III, e 31). A informação sobre redução quantitativa e ingredientes deve estar visível e em mensagem clara e precisa. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito do Consumidor',
'Ângela adquiriu, na loja virtual de uma agência de turismo, um pacote de viagens. Seis dias após a aquisição, foi surpreendida por seus filhos com pacote semelhante e, de imediato, comunicou a desistência pelos canais do site. Quatro dias depois, a agência informou que o cancelamento seria possível, mas com retenção de 10% do valor, pois a desistência gratuita deveria ser informada em até cinco dias. Assinale a orientação correta.',
'',
'',
'["A sociedade empresária não pode reter o percentual informado, pois Ângela tem justo e legítimo motivo para o cancelamento.","A sociedade empresária pode reter o percentual informado, desde que comprove que teve custos operacionais com o serviço cancelado.","A sociedade empresária pode reter o percentual informado, pois Ângela não exerceu o seu direito de arrependimento no prazo assegurado pelo CDC.","A sociedade empresária não pode reter o percentual informado, pois Ângela desistiu da aquisição do serviço e informou dentro do prazo estabelecido pelo CDC."]'::jsonb,
'D',
'No fornecimento de produtos ou serviços fora do estabelecimento comercial, especialmente por internet, o consumidor pode desistir do contrato no prazo de 7 dias a contar da assinatura ou do recebimento (direito de arrependimento, art. 49 do CDC), com direito à devolução integral dos valores pagos. Ângela comunicou a desistência no sexto dia, dentro do prazo legal, não podendo a empresa reter qualquer percentual. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Empresarial',
'Bento de Abreu e Bernardino de Campos são os únicos sócios e fundadores da sociedade Abreu & Campos Ltda. e deliberaram transformá-la de limitada para companhia, pedindo orientação sobre o nome empresarial. Considerando as regras de formação do nome do tipo a ser adotado, assinale a afirmativa correta.',
'',
'',
'["A companhia adotará denominação, na qual poderá constar o(s) nome(s) do(s) fundador(es), sendo facultada a designação do objeto social.","A companhia adotará firma, sendo formada por nome de fantasia a partir da escolha dos sócios, seguido obrigatoriamente pela designação do objeto social.","A companhia adotará denominação, formada apenas pelo nome dos sócios, seguida facultativamente pela expressão Sociedade Anônima ou Companhia, indicadas unicamente ao final.","A companhia poderá adotar firma ou denominação, devendo ser mantido o nome antigo Abreu & Campos, substituindo-se o aditivo Ltda. pelo aditivo Companhia ou Cia."]'::jsonb,
'A',
'A sociedade anônima opera sob denominação (art. 1.160 do CC e art. 3º da Lei nº 6.404/76), da qual constará a expressão Companhia ou Sociedade Anônima, podendo constar o nome do fundador, acionista ou pessoa que concorreu para o êxito da empresa. A designação do objeto social, na redação adotada pela banca, é facultada. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Empresarial',
'Lucélia, Marília e Natividade constituíram uma sociedade empresária sem levar o documento de constituição a registro, estabelecendo verbalmente que os atos sociais seriam praticados por Marília. Inadimplida obrigação social, o credor, ciente da sociedade, demandou a sociedade e todas as sócias, solidariamente e sem benefício de ordem. Assinale a afirmativa correta.',
'',
'',
'["O credor não poderia demandar a sociedade em razão da ausência de personalidade jurídica, sendo, contudo, possível exigir de todas as sócias, solidariamente e sem benefício de ordem, a obrigação assumida por Marília.","O credor agiu corretamente ao demandar a sociedade, ainda que diante da ausência de personalidade jurídica; contudo, mesmo havendo solidariedade entre as sócias, Lucélia e Natividade possuem benefício de ordem.","O credor está autorizado a demandar a sociedade, diante da ausência de personalidade jurídica, como também poderá responsabilizar as sócias Lucélia e Natividade, solidariamente e sem benefício de ordem, pela obrigação assumida por Marília.","O credor está totalmente equivocado, pois a sociedade não poderia ser demandada, em razão da ausência de personalidade jurídica, e deve ser respeitado o benefício de ordem das sócias Lucélia e Natividade, que não contrataram pela sociedade."]'::jsonb,
'B',
'Trata-se de sociedade em comum (não registrada). Os bens sociais respondem pelos atos de gestão e os sócios respondem solidária e ilimitadamente pelas obrigações sociais (arts. 988 a 990 do CC). Contudo, o sócio que não contratou pela sociedade (aqui, Lucélia e Natividade) tem o benefício de ordem, excluído apenas para aquele que contratou pela sociedade (Marília). A sociedade pode ser demandada. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Empresarial',
'Uma sociedade simples que adotou um dos tipos societários do Código Civil, com sede em Guarapari/ES, foi constituída por prazo determinado, até 31 de dezembro de 2023. Sobre a situação da sociedade a partir de 1º de janeiro de 2024, assinale a afirmativa correta.',
'',
'',
'["Ela continuará em atividade normalmente até que algum sócio ou credor requeira sua dissolução judicial nos 30 (trinta) dias seguintes após o término do prazo de duração.","Os administradores devem providenciar imediatamente a investidura do liquidante, mantendo os negócios sociais por até 180 dias (cento e oitenta dias); findo esse prazo, a continuidade da atividade implica na responsabilidade ilimitada e solidária deles.","A dissolução judicial da sociedade pode ser requerida por qualquer sócio, devido ao exaurimento do fim social, cabendo ao Juiz a nomeação do liquidante.","A sociedade reputa-se dissolvida em razão do vencimento do prazo de duração, salvo se, sem oposição de sócio, não entrar a sociedade em liquidação, caso em que se prorrogará por tempo indeterminado."]'::jsonb,
'D',
'Nos termos do art. 1.033, I, do CC, dissolve-se a sociedade pelo vencimento do prazo de duração, salvo se, vencido este e sem oposição de sócio, não entrar a sociedade em liquidação, caso em que se prorrogará por tempo indeterminado. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Empresarial',
'Itarana Avícola e Abatedouro S.A. celebrou contrato de alienação fiduciária de veículos com o Banco Alegre S.A., a ser pago em 60 prestações mensais, mas, após o vencimento da 14ª prestação, a fiduciante cessou o pagamento. Assinale a opção que indica a providência assegurada por lei ao fiduciário.',
'',
'',
'["Vender os bens alienados a terceiros, independentemente de leilão, hasta pública, avaliação prévia ou qualquer outra medida judicial ou extrajudicial, após a comprovação prévia da mora do fiduciante, salvo disposição expressa em contrário prevista no contrato.","Requerer, independentemente de comprovação da mora, contra o fiduciante, a busca e apreensão dos bens alienados fiduciariamente, a qual será concedida liminarmente, podendo ser apreciada em plantão judiciário.","Ajuizar ação de execução para a entrega de coisa certa, pleiteando nos mesmos autos a busca e apreensão, que será deferida liminarmente, salvo na hipótese de ter sido requerida recuperação judicial pelo fiduciante.","Promover, alternativamente ao pedido de busca e apreensão dos bens, independentemente de comprovação da mora, a consolidação da propriedade perante o competente cartório de registro de títulos e documentos, desde que haja previsão expressa no contrato em cláusula em destaque."]'::jsonb,
'A',
'No âmbito da alienação fiduciária de bens móveis regida pelo Decreto-Lei nº 911/69, comprovada a mora e consolidada a propriedade em nome do fiduciário, este poderá vender a coisa a terceiros, independentemente de leilão, hasta pública, avaliação prévia ou qualquer medida judicial ou extrajudicial, salvo disposição expressa em contrário prevista no contrato (art. 2º do DL nº 911/69). A busca e apreensão, por sua vez, exige a comprovação da mora. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Processual Civil',
'Rodrigo e Thaís assistiam a um show em arena lotada quando o teto montado para o evento desabou, ferindo cerca de duas mil pessoas, entre elas o casal. Após a negativa da produtora em reparar os danos, Rodrigo e Thaís convenceram todas as pessoas feridas a proporem ação em conjunto contra a produtora. Sobre o caso, assinale a afirmativa correta.',
'',
'',
'["Duas ou mais pessoas não podem litigar no mesmo processo, haja vista que a ação judicial deverá ser proposta de forma individualizada.","Duas ou mais pessoas podem litigar no mesmo processo, em conjunto, mas apenas no polo ativo, ficando vedado o litisconsórcio passivo.","O Juiz poderá limitar o litisconsórcio facultativo quanto ao número de litigantes na fase de conhecimento, quando este comprometer a rápida solução do litígio ou dificultar a defesa ou o cumprimento de sentença.","O Juiz não poderá limitar o litisconsórcio facultativo, por ausência de previsão legal, sendo direito de todos os envolvidos no acidente propor a ação em conjunto."]'::jsonb,
'C',
'Trata-se de litisconsórcio ativo facultativo multitudinário. Nos termos do art. 113, § 1º, do CPC, o juiz poderá limitar o litisconsórcio facultativo quanto ao número de litigantes na fase de conhecimento, na liquidação de sentença ou na execução, quando este comprometer a rápida solução do litígio ou dificultar a defesa ou o cumprimento da sentença. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Processual Civil',
'Joana e Regina pretendem propor ação reparatória nos Juizados Especiais Cíveis: Joana para cobrar 100 salários mínimos e Regina 30 salários mínimos. Sobre as ações pretendidas, assinale a afirmativa correta.',
'',
'',
'["Regina poderá propor ação sem advogado, pois nas causas de até 30 salários mínimos não é obrigatória a assistência de advogado.","Em nenhuma hipótese Joana poderá ingressar no Juizado Especial Cível, pois este não tem competência para processar causas cujo valor exceda a 40 salários mínimos, independentemente da matéria.","Para o deferimento da gratuidade de justiça, Joana e Regina deverão comprovar ter renda inferior a 10 salários mínimos.","Se nas ações propostas por Joana e Regina, o demandado não comparecer à sessão de conciliação ou à audiência de instrução e julgamento, reputar-se-ão verdadeiros os fatos alegados no pedido inicial, salvo se o contrário resultar da convicção motivada do Juiz."]'::jsonb,
'D',
'Nos Juizados Especiais Cíveis, não comparecendo o demandado à sessão de conciliação ou à audiência de instrução e julgamento, reputar-se-ão verdadeiros os fatos alegados no pedido inicial, salvo se o contrário resultar da convicção do juiz (art. 20 da Lei nº 9.099/95). A assistência de advogado é dispensada apenas em causas até 20 salários mínimos. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Processual Civil',
'Maria ajuizou ação contra a União pedindo a entrega de remédios, por ser portadora de grave doença cardíaca. A sentença foi de procedência, condenando a União, que não apelou, mas o juiz aplicou a remessa necessária, enviando o processo ao TRF. Sobre a remessa necessária, assinale a afirmativa correta.',
'',
'',
'["Aplica-se a remessa necessária quando a sentença estiver fundada em entendimento firmado em incidente de assunção de competência.","Aplica-se a remessa necessária quando a condenação ou o proveito econômico obtido na causa for de valor certo e líquido inferior a mil salários mínimos para a União.","Não se aplica a remessa necessária aos casos de competência de Juizados Especiais da Fazenda Pública, mas pode ser aplicada às sentenças de ações ajuizadas em Varas Federais.","Como a União não interpôs o recurso de apelação no prazo legal, o Juiz não poderá ordenar a remessa do processo para o reexame necessário no Tribunal, independentemente do valor dos remédios."]'::jsonb,
'C',
'A remessa necessária não se aplica no âmbito dos Juizados Especiais da Fazenda Pública (art. 11 da Lei nº 12.153/2009 e art. 13 da Lei nº 10.259/2001), mas incide, em regra, sobre sentenças proferidas contra a Fazenda em Varas comuns (art. 496 do CPC), ressalvadas as hipóteses de dispensa por valor ou por fundamento em precedente qualificado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Processual Civil',
'Henrique propôs ação de alimentos contra seu pai, Juliano. A sentença julgou procedente o pedido, condenando o réu a pagar R$ 5.000 por mês. Juliano apelou. Após a intimação para contrarrazões, o advogado de Henrique deseja requerer o cumprimento provisório da sentença para receber desde logo os alimentos vincendos. Assinale a afirmativa correta.',
'',
'',
'["Você poderá requerer o cumprimento provisório de sentença, com dispensa de caução para a execução da decisão.","Eventual reforma parcial da sentença, em razão do recurso de apelação, levará à perda de eficácia total do cumprimento, em razão de sua provisoriedade.","Não incidirão multa e honorários no cumprimento provisório de sentença, pois o executado, em razão da pendência do recurso, não é obrigado a cumprir a decisão até o seu trânsito em julgado.","Iniciado o cumprimento provisório de sentença, caso Juliano deposite o valor exequendo para se exonerar da multa, seu recurso de apelação não será conhecido ante a preclusão lógica do direito de recorrer."]'::jsonb,
'A',
'A apelação contra sentença que condena ao pagamento de alimentos é recebida apenas no efeito devolutivo (art. 1.012, § 1º, II, do CPC), permitindo o cumprimento provisório. Tratando-se de crédito de natureza alimentar, dispensa-se a caução para o levantamento de valores (art. 521, I, do CPC). Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Processual Civil',
'Anacleto ajuizou ação de indenização contra a sociedade de telefonia Alô, com sentença de procedência condenando a ré a pagar danos morais e materiais, mas sem especificação dos valores. A ré apelou, recurso pendente, mas Anacleto deseja desde logo definir o montante dos danos. Assinale a afirmativa correta.',
'',
'',
'["A liquidação da sentença antes do trânsito em julgado só é cabível caso o autor ofereça caução.","É possível a liquidação de sentença mesmo antes do trânsito em julgado, independentemente dos efeitos em que foi recebido o recurso de apelação.","Anacleto poderá promover a liquidação de sentença antes do trânsito em julgado, caso a apelação tenha sido recebida unicamente no efeito devolutivo.","Anacleto não poderá promover a liquidação de sentença antes do trânsito em julgado, uma vez que a decisão ainda pode ser modificada quando do julgamento de recurso de apelação."]'::jsonb,
'B',
'Nos termos do art. 512 do CPC, a liquidação pode ser realizada na pendência de recurso, processando-se em autos apartados no juízo de origem, independentemente do efeito em que recebida a apelação. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Processual Civil',
'João e Marina celebraram contrato de arrendamento com cláusula compromissória arbitral para disputas patrimoniais. Após desentendimentos, Marina ajuizou ação judicial contra João buscando indenização. Citado, João não contestou. Na fase instrutória, o Magistrado identificou a cláusula compromissória. Assinale a afirmativa correta.',
'',
'',
'["Caso João instaure procedimento arbitral contra Marina no curso da ação judicial ajuizada por ela, ambos terão seu caso julgado exclusivamente pelo Tribunal Arbitral.","As partes terão seu caso julgado pela jurisdição estatal, tendo em vista que João não alegou convenção de arbitragem como preliminar de contestação, circunstância que representa renúncia à jurisdição arbitral.","João deve arguir a existência de cláusula compromissória quando apresentar manifestação requerendo a produção de provas, por se tratar do momento apropriado para apontar a existência de cláusula compromissória no contrato celebrado entre as partes.","João não precisa se manifestar nos autos acerca da existência de cláusula compromissória no contrato, pois cabe ao Magistrado conhecer de ofício a existência de tal cláusula e extinguir a ação sem resolução do mérito, uma vez que não tem competência para julgar o caso."]'::jsonb,
'B',
'A convenção de arbitragem deve ser alegada pelo réu como preliminar de contestação (art. 337, X, do CPC). O juiz não pode conhecê-la de ofício (art. 337, § 5º). A não alegação na primeira oportunidade implica aceitação da jurisdição estatal e renúncia à jurisdição arbitral (art. 337, § 6º). Como João não contestou nem suscitou a cláusula, o caso será julgado pela jurisdição estatal. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Penal',
'Durante manifestação social pacífica contra o aumento da tarifa de ônibus, acompanhada por grande contingente de policiais militares, Rodrigo, de forma exaltada, arremessou uma pedra em uma viatura da Polícia Militar estacionada, quebrando dolosamente o vidro do para-brisa dianteiro. Assinale a opção que indica o crime cometido por Rodrigo.',
'',
'',
'["Terrorismo.","Dano simples.","Dano qualificado.","Ilícito civil, pois a conduta descrita não configura crime."]'::jsonb,
'C',
'Destruir, inutilizar ou deteriorar coisa alheia é crime de dano (art. 163 do CP). Quando praticado contra o patrimônio da União, Estado, Município, empresa concessionária de serviços públicos ou sociedade de economia mista, o dano é qualificado (art. 163, parágrafo único, III, do CP). A viatura policial integra o patrimônio público estadual, caracterizando dano qualificado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Penal',
'Oliver, condenado anteriormente por crime culposo, cuja pena cumpriu há dois anos, cometeu lesão corporal grave (Art. 129, § 1º, do CP, pena de um a cinco anos) e foi condenado a um ano e oito meses de reclusão, três anos após o término da pena anterior. Sobre a substituição da pena privativa de liberdade por duas penas restritivas de direitos, assinale a afirmativa correta.',
'',
'',
'["A reincidência só impediria a substituição se o crime anterior também fosse doloso.","A reincidência em crime culposo não impede a substituição e tampouco há óbice pelo fato de o crime ser cometido com violência à pessoa.","Uma vez que Oliver é reincidente, a substituição é vedada, sendo indiferente o fato de o crime anterior ser culposo ou mesmo o fato de o novo crime ter sido cometido com violência à pessoa.","Apesar de a reincidência em crime culposo não obstar a substituição, o fato de o crime ter sido cometido com violência à pessoa impede a substituição pela pena restritiva de direitos."]'::jsonb,
'D',
'A substituição da pena privativa de liberdade por restritiva de direitos exige, entre outros requisitos, que o crime não tenha sido cometido com violência ou grave ameaça à pessoa (art. 44, I, do CP). A lesão corporal grave é crime cometido com violência, o que, por si só, impede a substituição, independentemente da reincidência em crime culposo. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Penal',
'Rodrigo, brasileiro, em intercâmbio nos Estados Unidos, matou por estrangulamento sua namorada Mary, estadunidense, no apartamento em que morava na Flórida. O feminicídio é crime nos EUA. No dia seguinte, Rodrigo retornou ao Brasil. Esclareça a viabilidade de aplicação da Lei Penal brasileira a Rodrigo, identificando o princípio penal correspondente.',
'',
'',
'["O princípio da bandeira ou do pavilhão admite a responsabilidade penal de Rodrigo pelo fato ocorrido no estrangeiro.","O princípio da personalidade passiva impede a responsabilidade penal de Rodrigo, pois a vítima era estadunidense.","O princípio da personalidade ativa enseja a hipótese de extraterritorialidade condicionada, autorizando a aplicação da Lei Penal brasileira a Rodrigo.","O princípio da defesa ou da proteção impede a aplicação da Lei brasileira a fatos ocorridos no exterior, especialmente quando o autor do fato for brasileiro nato."]'::jsonb,
'C',
'A hipótese é de extraterritorialidade condicionada (art. 7º, II, b, do CP): ficam sujeitos à lei brasileira os crimes praticados por brasileiro no estrangeiro, satisfeitas as condições do § 2º (agente em território nacional, fato punível também no país em que praticado etc.). O fundamento é o princípio da personalidade (nacionalidade) ativa. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Penal',
'João faz aula de futevôlei no Leblon três vezes por semana, sempre indo em sua bicicleta elétrica preta com banco de couro marrom. No mês passado, ao final do treino, João pegou uma bicicleta elétrica idêntica à sua e voltou para casa. Dias depois, foi intimado por possível furto, pois as câmeras mostraram que levara a bicicleta de uma moça chamada Fernanda. No caso, é correto afirmar que João agiu diante de',
'',
'',
'["erro de tipo essencial.","erro de tipo acidental.","estado de necessidade.","erro de proibição direto."]'::jsonb,
'A',
'João acreditava estar levando a própria bicicleta, não tendo consciência de que a coisa era alheia. Faltou-lhe o conhecimento de uma elementar do tipo do furto (a coisa ser alheia), configurando erro de tipo essencial (art. 20 do CP), que exclui o dolo. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Ateneu e Moisés combinaram a prática de um furto. Moisés aguardou na rua com o carro ligado e Ateneu, especialista em cofres, ingressou na residência. Ambos pensavam que a casa estava vazia, mas Ateneu deparou-se com Izabel, empregada doméstica, e, sem a ciência de Moisés, sacou arma de fogo e a matou com um tiro na testa, levando joias e dinheiro. Ao saber da morte, Moisés não quis ficar com nada. Assinale a afirmativa correta.',
'',
'',
'["Moisés não praticou fato criminalmente punível.","Ambos praticaram, em coautoria, os delitos de homicídio e roubo.","Ateneu praticou o delito de furto qualificado pelo resultado morte.","Moisés deve ser responsabilizado mediante aplicação da pena relativa ao crime de furto."]'::jsonb,
'D',
'Trata-se de cooperação dolosamente distinta (desvio subjetivo de conduta, art. 29, § 2º, do CP): se algum dos concorrentes quis participar de crime menos grave, ser-lhe-á aplicada a pena deste. Moisés aderiu apenas ao furto; o homicídio e a subtração com violência (roubo/latrocínio) praticados por Ateneu, de forma não ajustada, não lhe podem ser imputados. Moisés responde pela pena do crime menos grave que quis praticar (furto). Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Após ter o pedido de aumento salarial negado, Sara, empregada doméstica, adicionou veneno, com intenção de matar, na feijoada que preparou para Raquel, sua patroa. Raquel sentiu-se mal, foi socorrida e internada, contraiu infecção e faleceu dois meses depois, pois a infecção fora agravada pela ingestão do veneno. Assinale a opção que indica o delito praticado por Sara.',
'',
'',
'["Homicídio doloso tentado.","Homicídio culposo tentado.","Homicídio doloso consumado.","Lesão corporal seguida de morte."]'::jsonb,
'C',
'Sara agiu com dolo de matar (animus necandi) ao envenenar a vítima. A morte ocorreu, mantido o nexo causal, pois a infecção que a agravou decorreu diretamente da ingestão do veneno (a causa superveniente não foi relativamente independente a ponto de romper o nexo). Configura-se o homicídio doloso consumado. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Processual Penal',
'Gabriela dirigiu-se a uma agência da Caixa Econômica Federal, empresa pública federal, para sacar benefício assistencial pago pela União com documentos falsos em nome de terceira pessoa. Foi presa em flagrante, constatando-se que cumpria pena em regime aberto domiciliar por outra condenação. Em relação à execução penal, assinale a afirmativa que define as consequências do evento.',
'',
'',
'["A responsabilização de Gabriela depende de representação da vítima, por se tratar de delito de estelionato.","Ao tomar conhecimento do novo crime, o Juiz da execução pode reconhecer a falta grave e determinar a regressão de regime sem necessidade de contraditório.","Em razão da prática de crime, em tese, no curso da execução, Gabriela perdeu em definitivo o direito de obter livramento condicional pela condenação em execução.","A prática de novo crime cometido por Gabriela configura, em tese, falta disciplinar de natureza grave, autorizando, de forma fundamentada, a regressão de regime per saltum."]'::jsonb,
'D',
'A prática de fato definido como crime doloso no curso da execução constitui falta grave (art. 52 da LEP) e autoriza a regressão de regime (art. 118, I, da LEP), que pode ocorrer per saltum (do aberto diretamente ao fechado), de forma fundamentada. A regressão exige prévia oitiva do condenado (contraditório), afastando a alternativa B. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Processual Penal',
'Marcos foi denunciado por furto simples (pena de um a quatro anos de reclusão). Na resposta à acusação, a defesa anterior reservou-se a manifestar sobre o mérito oportunamente. Antes da audiência, você foi nomeado em substituição e percebeu que, à época da citação, já havia ocorrido a prescrição da pretensão punitiva. Assinale a opção que apresenta sua conduta correta.',
'',
'',
'["Somente pela via do habeas corpus perante o Tribunal será possível alegar, pela primeira vez, a tese de extinção da punibilidade.","Não há que se falar em preclusão, porque o requerimento de extinção da punibilidade pode ser formulado a qualquer tempo.","Há preclusão temporal para alegar a matéria, porque a alegação de extinção da punibilidade somente pode ser feita por ocasião da resposta à acusação.","Aguardar o momento das alegações finais para postular a extinção da punibilidade, sendo certo que a viabilidade de debater o tema depende do reconhecimento de deficiência da defesa anteriormente constituída."]'::jsonb,
'B',
'A extinção da punibilidade, inclusive pela prescrição, deve ser declarada de ofício em qualquer fase do processo (art. 61 do CPP), podendo ser alegada a qualquer tempo. Não há preclusão. Logo, a conduta correta é requerer desde já o reconhecimento da prescrição. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Processual Penal',
'Fábio foi julgado pelo Tribunal do Júri e condenado a 15 anos de reclusão, em regime inicial fechado. Como advogado(a), você interpôs recurso tempestivo e cabível. Assinale a opção que indica o recurso correto e/ou suas características.',
'',
'',
'["O recurso cabível é de apelação e o efeito devolutivo é restrito aos fundamentos de interposição.","A alegação de decisão manifestamente contrária à prova dos autos só pode ser repetida por, no máximo, três vezes.","O recurso cabível é o recurso em sentido estrito e tem efeito regressivo que pode ser exercido pelos próprios jurados.","O recurso cabível tem ampla devolutividade, podendo o Tribunal rever todos os aspectos da sentença penal condenatória, inclusive as teses atinentes à materialidade e à autoria."]'::jsonb,
'A',
'Das decisões do Tribunal do Júri cabe apelação (art. 593, III, do CPP). Em razão da soberania dos veredictos, o efeito devolutivo da apelação no júri é restrito aos fundamentos de sua interposição (art. 593, § 4º, do CPP), não permitindo ampla revisão do mérito pelo tribunal. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Processual Penal',
'Leda candidatou-se a uma vaga de emprego na sociedade X. Ao apresentar-se, a sócia-administradora Vera afirmou que “pessoas de cor de pele escura não são compatíveis com o perfil da vaga”, impedindo a continuidade de Leda no processo seletivo. Atuando na seara criminal em defesa de Leda, você pode',
'',
'',
'["propor acordo de não persecução penal à sociedade empresária X.","ajuizar queixa-crime em face de Vera pelo delito de ação penal privada em tese ocorrido.","promover, diretamente, a ação penal privada subsidiária da pública, de competência da Justiça Federal.","comunicar o fato à autoridade policial e/ou ao Ministério Público, por se tratar de fato sujeito à ação penal pública incondicionada."]'::jsonb,
'D',
'A recusa de emprego em razão da cor/raça constitui crime de racismo (Lei nº 7.716/89), de ação penal pública incondicionada, imprescritível e inafiançável. Cabe, portanto, comunicar o fato à autoridade policial e/ou ao Ministério Público, titular da ação penal pública. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Processual Penal',
'Bernardo agrediu Carolina, sua ex-companheira, causando-lhe lesões corporais leves, em razão de a vítima ser mulher. O delito é apenado com reclusão de dois a cinco anos. Na qualidade de advogado(a) de Carolina, cabe notar que,',
'',
'',
'["apesar do término do relacionamento, as disposições da Lei de Violência Doméstica e Familiar contra a Mulher são aplicáveis; ademais, não é cabível o Acordo de Não Persecução Penal, não havendo medida processual consensual em favor de Bernardo.","devido ao término do relacionamento, as disposições da Lei de Violência Doméstica e Familiar contra a Mulher não são aplicáveis, mas Bernardo não pode se beneficiar de sursis processual ante a quantidade de pena abstratamente cominada ao delito.","apesar do término do relacionamento, as disposições da Lei de Violência Doméstica e Familiar contra a Mulher são aplicáveis, de forma a se admitir a retratação da representação de Carolina, antes do recebimento da denúncia, em audiência especialmente designada para tal fim.","devido ao término do relacionamento, as disposições da Lei de Violência Doméstica e Familiar contra a Mulher não são aplicáveis, de modo que Bernardo pode se beneficiar de sursis processual."]'::jsonb,
'A',
'A Lei Maria da Penha aplica-se às relações íntimas de afeto, independentemente de coabitação e mesmo após o término do relacionamento (art. 5º, III). Nos crimes praticados com violência doméstica contra a mulher não cabe acordo de não persecução penal nem transação/suspensão condicional da Lei nº 9.099/95 (art. 41 da Lei nº 11.340/06 e entendimento consolidado). Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Processual Penal',
'Em uma audiência, o Ministério Público indicou como testemunha a psiquiatra do réu. Após a qualificação da testemunha, você, na condição de advogado(a) do réu, deve',
'',
'',
'["solicitar exceção de suspeição da testemunha, em razão de sua profissão.","oferecer contradita, alegando ser a testemunha proibida de depor por ter conhecimento dos fatos em razão de sua profissão.","oferecer exceção de litispendência, já que a testemunha tem conhecimento dos fatos em razão de sua profissão.","aguardar para alegar a nulidade apenas em eventual recurso extraordinário, momento previsto na legislação como o único adequado para esse tipo de arguição."]'::jsonb,
'B',
'A psiquiatra do réu está obrigada a guardar sigilo profissional, sendo proibida de depor sobre fatos que, em razão da profissão, deva resguardar segredo (art. 207 do CPP), salvo desobrigação da parte interessada. O momento adequado para apontar essa impossibilidade é a contradita, feita após a qualificação e antes do compromisso (art. 214 do CPP). Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Previdenciário',
'Maria, empregada doméstica desde julho de 1990, no deslocamento para o trabalho sofreu um acidente em virtude de uma queda na saída do ônibus. Maria não sabe se deve procurar o sistema previdenciário desde já e se tem direito a algum benefício. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["O direito ao benefício não é reconhecido, pois os empregados domésticos não são cobertos pela Previdência Social brasileira.","Sobre o afastamento do trabalho, sendo superior a 15 dias consecutivos, haverá direito ao benefício previdenciário por incapacidade temporária.","O benefício previdenciário deve ser requerido de imediato pelo sítio eletrônico do Instituto Nacional do Seguro Social (INSS) ou por central telefônica.","Sobre o afastamento do trabalho, se a incapacidade for inferior a 30 dias de afastamento, não haverá qualquer direito subjetivo a benefício previdenciário."]'::jsonb,
'B',
'O empregado doméstico é segurado obrigatório do RGPS. Em caso de incapacidade temporária decorrente de acidente, o benefício por incapacidade temporária (antigo auxílio-doença) é devido quando o afastamento for superior a 15 dias consecutivos, cabendo ao INSS o pagamento a partir do 16º dia. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Previdenciário',
'Lucas, segurado obrigatório do RGPS, cometeu um crime e foi recolhido à prisão em regime fechado em 1º/1/2023, tendo contribuído previamente por 24 meses. Sobre a hipótese, assinale a afirmativa correta.',
'',
'',
'["O auxílio-reclusão é destinado ao segurado que foi preso, para que ele não fique desamparado.","Os dependentes de Lucas fazem jus ao auxílio-reclusão, mesmo que o segurado preso não seja de baixa renda.","A cônjuge de Lucas não poderá acumular o auxílio por incapacidade temporária que hoje recebe com o auxílio-reclusão decorrente da prisão do marido, devendo optar pelo mais favorável.","O exercício de atividade remunerada do segurado recluso, em cumprimento de pena em regime fechado, não acarreta a perda do direito ao recebimento do auxílio-reclusão para seus dependentes."]'::jsonb,
'D',
'O auxílio-reclusão é devido aos dependentes do segurado de baixa renda recolhido à prisão em regime fechado, que não receba remuneração da empresa nem esteja em gozo de auxílio-doença, aposentadoria ou abono de permanência. O exercício de atividade remunerada do recluso, dentro do estabelecimento penal, não acarreta a perda do direito ao auxílio-reclusão para seus dependentes (art. 80, § 7º, da Lei nº 8.213/91). Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito do Trabalho',
'Rogéria saiu fraudulentamente de uma sociedade empresária em 2018, transferindo formalmente suas cotas a um empregado sem condições econômicas, mas permaneceu com procuração para movimentar as contas, usando-as regularmente. Em 2022, um empregado ajuizou reclamação que terminou em acordo de R$ 30.000, não pago. Não havendo como executar a sociedade, você requereu a desconsideração da personalidade jurídica, incluindo os sócios atuais e Rogéria. Considerando a CLT, assinale a afirmativa correta.',
'',
'',
'["Rogéria não poderá ser alcançada, porque desligou-se formalmente da sociedade empresária há mais de dois anos.","A ex-sócia, em razão da fraude perpetrada, terá responsabilidade subsidiária em relação aos sócios atuais.","Rogéria terá responsabilidade solidária para com os demais sócios, em virtude da fraude na alteração societária.","Não existe responsabilidade dos sócios atuais, porque eles não agiram com fraude e, assim, Rogéria também não pode ser responsabilizada."]'::jsonb,
'C',
'O sócio retirante responde subsidiariamente pelas obrigações do período em que foi sócio, em ações ajuizadas até dois anos da averbação da saída. Contudo, comprovada a fraude na alteração societária (art. 10-A, parágrafo único, da CLT), afasta-se o benefício de ordem e a limitação temporal, respondendo o sócio retirante solidariamente com os demais sócios. Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito do Trabalho',
'Sérgio foi contratado em 2022 por uma indústria mecânica, com salário de R$ 3.000. Pediu para não ter a CTPS assinada, pois recebia seguro-desemprego do emprego anterior e não queria contracheque formal para evitar desconto de pensão alimentícia. A empresa cedeu e não assinou a carteira. Considerando a CLT, assinale a afirmativa correta.',
'',
'',
'["Ela não precisa assinar a CTPS, desde que isso esteja previsto em norma coletiva.","Ela agiu incorretamente, porque deveria anotar o contrato de trabalho na CTPS no prazo de cinco dias úteis.","Ela está equivocada, pois a anotação da CTPS é direito irrenunciável e deve ser feita em 15 (quinze) dias corridos.","Ela agiu corretamente, porque essa era a vontade livre manifestada pelo empregado e, atualmente, o negociado suplanta o legislado."]'::jsonb,
'B',
'A anotação da CTPS é obrigação do empregador e direito irrenunciável do empregado, não podendo ser afastada pela vontade das partes. Com a inclusão da CTPS digital, o empregador deve efetuar as anotações no prazo de cinco dias úteis (art. 29 da CLT). A empresa agiu incorretamente. Correta a alternativa B.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito do Trabalho',
'As irmãs Margarida, Hortência e Rosa aderiram ao plano de demissão voluntária (PDV). No caso de Margarida, o PDV estava previsto em acordo coletivo de trabalho; no de Hortência, em convenção coletiva; e no de Rosa, em norma interna do empregador. Feitas as extinções em 2024, sem ressalvas, as irmãs pretendem ajuizar reclamação postulando direitos lesados. Considerando a CLT, assinale a afirmativa correta.',
'',
'',
'["Margarida e Hortência deram quitação plena e irrevogável dos direitos decorrentes da relação empregatícia, não podendo postular diferenças.","As três irmãs poderão ajuizar ação trabalhista com chance de sucesso, porque não houve homologação do PDV no sindicato de classe das empregadas.","A quitação geral somente ocorrerá no caso de Hortência, porque foi elaborada em convenção coletiva de trabalho.","Nenhuma das irmãs poderá ajuizar ação, porque elas se submeteram às regras do PDV e não fizeram constar ressalva."]'::jsonb,
'A',
'A adesão a plano de dispensa incentivada, em programa previsto em convenção coletiva ou acordo coletivo de trabalho, com expressa manifestação de concordância do empregado, enseja quitação plena e irrevogável dos direitos decorrentes da relação de trabalho, salvo disposição em contrário (art. 477-B da CLT). Como os PDVs de Margarida (ACT) e Hortência (CCT) decorrem de instrumento coletivo, houve quitação plena; o de Rosa, por norma interna, não tem esse efeito. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito do Trabalho',
'Em sentença de reclamação trabalhista na qual você advoga para a sociedade empresária ré, o Juiz reconheceu que tanto o seu cliente quanto o autor foram responsáveis pela rescisão motivada do contrato, operando-se a justa causa do empregado concomitantemente com a rescisão indireta por parte do empregador. Sobre os fatos, assinale a afirmativa correta.',
'',
'',
'["Dada a concomitância de motivações para o término motivado da relação contratual, presume-se pela dispensa imotivada, sendo devidas as verbas trabalhistas daí decorrentes.","Configurada a culpa recíproca, seu cliente terá direito apenas a 50% das férias vencidas e ao saldo de salários integral, não havendo direito aos valores de aviso prévio, férias e 13º salário proporcionais e à multa sobre o FGTS.","Configurada a culpa recíproca, seu cliente terá direito a 50% do valor do aviso prévio, das férias proporcionais e do 13º salário proporcional, além dos valores das férias vencidas e do saldo de salários. A multa sobre o FGTS, no entanto, não será devida.","Configurada a culpa recíproca, seu cliente terá direito a 50% do valor do aviso prévio, das férias proporcionais e do 13º salário proporcional e 20% da multa sobre o FGTS, além dos valores que já seriam devidos na hipótese de justa causa, quais sejam, férias vencidas e saldo de salários."]'::jsonb,
'C',
'Questão ANULADA pela banca FGV no 43º Exame de Ordem. O tema envolve a culpa recíproca (art. 484 da CLT e Súmula 14 do TST), em que o empregado recebe metade do aviso prévio, das férias proporcionais e do 13º salário proporcional, além das verbas já devidas na justa causa (férias vencidas e saldo de salários), e a multa do FGTS é reduzida a 20%. Por ter sido anulada, não há gabarito oficial válido; a alternativa indicada é meramente de referência.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito do Trabalho',
'Sociedade empresária firmou acordo coletivo sobre banco de horas, compensação de horas extras e redução de intervalo. A jornada de 44 horas (8h de segunda a sexta e 4h no sábado) foi alterada: trabalho de 30 minutos a mais de segunda a quinta, com apenas 30 minutos de intervalo (nove horas diárias), sexta com 8h e intervalo de uma hora, sem trabalho aos sábados, com compensação em até três meses. Alguns empregados questionaram a validade. Assinale a afirmativa correta.',
'',
'',
'["O acordo coletivo é válido, exceto quanto ao banco de horas.","O acordo coletivo é inválido com relação ao acréscimo de jornada, pois o limite diário constitucional é de oito horas.","O acordo coletivo é inválido apenas com relação à redução do intervalo, pois, para a jornada de oito horas, o intervalo mínimo é de uma hora.","Em todas as hipóteses, não há violação à CLT ou à CRFB, pois admite-se a prevalência do negociado sobre o legislado, respeitados os limites mínimos previstos na Constituição."]'::jsonb,
'D',
'A reforma trabalhista admite a prevalência do negociado sobre o legislado em diversas matérias, incluindo banco de horas, jornada (observado o limite constitucional) e redução do intervalo intrajornada, respeitado o mínimo de 30 minutos para jornadas superiores a 6 horas (arts. 611-A e 71, § 4º, da CLT). A compensação por banco de horas em até seis meses é válida por acordo coletivo. Não há, portanto, violação à CLT ou à CRFB. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual do Trabalho',
'Orlando, ex-funcionário da Limpeza Total Ltda., que prestava serviços a uma autarquia pública federal, foi dispensado sem receber as verbas rescisórias. A ex-empregadora não tem lastro financeiro, e o valor da causa monta a 30 salários mínimos. Orlando forneceu provas de que a tomadora nunca fiscalizou o contrato nem conferiu o adimplemento dos direitos trabalhistas dos terceirizados. Assinale a afirmativa que apresenta o que você deverá propor.',
'',
'',
'["Uma ação apenas em face da ex-empregadora, pois não cabe responsabilidade subsidiária da autarquia pública federal.","Uma ação exclusivamente em face da tomadora dos serviços, pelo rito sumaríssimo, pois já tem conhecimento do inadimplemento da ex-empregadora.","Uma reclamação trabalhista em face da ex-empregadora e da tomadora dos serviços, que responderá subsidiariamente, sendo certo que a ação correrá pelo rito ordinário.","Uma reclamação trabalhista em face da ex-empregadora e da tomadora dos serviços, que responderá subsidiariamente, sendo certo que a ação correrá pelo rito sumaríssimo."]'::jsonb,
'C',
'O ente público tomador de serviços terceirizados responde subsidiariamente quando configurada sua conduta culposa na fiscalização do contrato (Súmula 331, V, do TST, e Tema 246 do STF). Como há prova da ausência de fiscalização, cabe acionar a ex-empregadora e a tomadora. Além disso, as causas em que figura a Fazenda Pública (aqui, a autarquia) seguem o rito ordinário, pois estão excluídas do procedimento sumaríssimo (art. 852-A, parágrafo único, da CLT). Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual do Trabalho',
'José Luiz ajuizou reclamação trabalhista contra Lojas Internacionais Ltda. e, apesar de notificado, não compareceu injustificadamente à audiência, obtendo gratuidade de justiça. Ação idêntica, ajuizada um mês depois, teve novo não comparecimento injustificado (compareceu uma hora após, alegando que dormira demais), também com gratuidade deferida. As duas ações foram extintas sem resolução do mérito. Agora, José Luiz quer ajuizar outra ação idêntica. Assinale a afirmativa correta.',
'',
'',
'["Ocorrerá a confissão do autor.","Não há penalidade, já que José Luiz, em ambas as situações, foi dispensado do pagamento das custas.","José Luiz incorrerá na pena da perempção, perdendo, pelo prazo de seis meses, o direito de reclamar perante a Justiça do Trabalho.","José Luiz poderá reclamar imediatamente, mas, independentemente, da prescrição parcial quinquenal, será descontado do prazo da sua reclamação o período de seis meses."]'::jsonb,
'C',
'O arquivamento (extinção sem resolução do mérito) decorrente do não comparecimento do autor à audiência, por duas vezes seguidas, acarreta a perempção, com a perda, pelo prazo de seis meses, do direito de reclamar perante a Justiça do Trabalho (art. 732 c/c art. 844 da CLT). Correta a alternativa C.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual do Trabalho',
'Você ajuizou reclamação em face da indústria de calçados Guanabara em favor de Pedro, que trabalhou de 2018 a 2022, pedindo o 13º salário de 2021 (não pago) e horas extras (jornada de cerca de 10h/dia). A ré alegou pagamento do 13º e juntou cartões de ponto indicando ausência de horas extras, com jornada prevista em norma coletiva. Você impugnou os cartões, que mostram horários variados de início e fim. Sobre o ônus da prova, de acordo com a CLT e o entendimento do TST, assinale a afirmativa correta.',
'',
'',
'["O ônus da prova do pagamento do 13º salário caberá à ré e, o das horas extras, ao autor.","A ré deverá provar o pagamento do 13º salário, assim como a inexistência das horas extras, uma vez que os controles de ponto foram impugnados.","Em razão da variação de horários registrada nos cartões de ponto, o ônus da prova recairá sobre a ré para as horas extras, bem como para o 13º salário, já que o pagamento é fato extintivo da obrigação.","Dada a variação de horários, há presunção absoluta da validade da jornada indicada nos cartões de ponto, tendo a ré se desincumbido do ônus. Cabe à ré a prova do pagamento do 13º salário, por ser fato extintivo da obrigação."]'::jsonb,
'A',
'Os cartões de ponto com registro de horários variados (britânicos apenas quando invariáveis) são, em regra, válidos como meio de prova e gozam de presunção relativa de veracidade. Impugnados genericamente, mas apresentando horários variados, mantêm sua validade, cabendo ao autor o ônus de provar as horas extras alegadas (Súmula 338 do TST, a contrario sensu). Quanto ao 13º salário, o pagamento é fato extintivo, cujo ônus recai sobre a ré. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual do Trabalho',
'Em reclamação trabalhista, você advoga para a parte autora. No curso da instrução, após ouvida uma testemunha da ré, o advogado da parte contrária requereu a oitiva da segunda testemunha, que estava sentada na sala de audiência e presenciara a instrução até aquele momento. Apesar da sua manifestação contrária, o Juiz deferiu a prova e permitiu que o advogado da ré interrogasse diretamente a testemunha, com risco de indução de respostas. Assinale a afirmativa que apresenta a ação correta.',
'',
'',
'["Interpor reclamação correicional imediatamente, o que acarretará na suspensão da audiência.","Interpor agravo de instrumento contra a decisão de prosseguimento na instrução, acarretando a suspensão do processo.","Lavrar protesto quanto à presença da testemunha na sala de audiência durante a instrução, mas não há irregularidade quanto à forma de inquirição.","Consignar protestos pela contaminação do depoimento da segunda testemunha da ré, bem como pela inquirição direta da testemunha, na primeira oportunidade de se manifestar em audiência."]'::jsonb,
'D',
'As decisões interlocutórias no processo do trabalho, em regra, são irrecorríveis de imediato (art. 893, § 1º, da CLT); a parte deve consignar protesto na própria audiência para evitar a preclusão e discutir a matéria em eventual recurso ordinário. A permanência da testemunha na sala durante a instrução contamina seu depoimento, e, no processo do trabalho, a inquirição é feita pelo juiz. Logo, cabe consignar protestos quanto a ambas as irregularidades na primeira oportunidade. Correta a alternativa D.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual do Trabalho',
'Em execução que tramita perante a 120ª Vara do Trabalho de Salvador, o executado é um ente público condenado de forma subsidiária em terceirização na qual não houve fiscalização adequada. O valor homologado pelo Juízo não obteve a concordância do executado, que entende estar majorado em relação à coisa julgada. Considerando a norma de regência, assinale a afirmativa correta.',
'',
'',
'["É desnecessária a garantia do Juízo e o ente público terá 30 (trinta) dias para embargar.","Caberá ao ente público garantir o Juízo e ajuizar embargos à execução no prazo de oito dias.","É desnecessária a garantia do Juízo e o ente público terá oito dias para embargar.","Caberá ao ente público garantir o Juízo e ajuizar embargos à execução no prazo de 16 dias."]'::jsonb,
'A',
'A Fazenda Pública (ente público), na execução trabalhista, é dispensada da garantia do juízo e opõe embargos à execução no prazo de 30 dias (art. 910 do CPC, aplicável subsidiariamente, e art. 1º-B da Lei nº 9.494/97), diferentemente do executado comum, que garante o juízo e embarga em cinco dias. Correta a alternativa A.'
from public.exams where slug = 'oab-43-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
