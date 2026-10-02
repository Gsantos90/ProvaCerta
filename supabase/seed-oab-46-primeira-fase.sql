-- Seed: OAB - 46o Exame de Ordem Unificado (1a fase)
-- Ordem dos Advogados do Brasil - Banca FGV - Tipo 1 (Branca) - 80 questoes
-- Gabarito oficial (Tipo 1):
--  1-C  2-D  3-C  4-A  5-D  6-A  7-C  8-D  9-B 10-C
-- 11-C 12-B 13-B 14-D 15-C 16-D 17-B 18-D 19-A 20-A
-- 21-D 22-C 23-A 24-C 25-B 26-D 27-B 28-C 29-D 30-D
-- 31-A 32-B 33-B 34-A 35-C 36-A 37-A 38-D 39-B 40-B
-- 41-A 42-B 43-D 44-C 45-B 46-D 47-A 48-B 49-C 50-C
-- 51-B 52-C 53-C 54-C 55-A 56-B 57-B 58-D 59-A 60-A
-- 61-B 62-C 63-D 64-B 65-D 66-B 67-A 68-B 69-B 70-A
-- 71-D 72-D 73-A 74-A 75-C 76-C 77-D 78-A 79-D 80-B

insert into public.exams (slug, title, source, year)
values ('oab-46-primeira-fase', 'OAB 46º Exame de Ordem Unificado (1ª fase)', 'oab', '2026')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Ética e Estatuto da OAB',
'Paloma, advogada gestante, compareceu ao Fórum da Comarca de Itaporanga, PB, para uma audiência. Foi impedida de acessar a garagem sob a justificativa de não haver vagas reservadas para gestantes e, além disso, foi obrigada a passar por detector de metais, mesmo tendo informado sua condição de gestante. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Paloma, por ser advogada gestante, tem o direito de não ser submetida a detectores de metais, mas o estacionamento exclusivo só é garantido em Tribunais e Fóruns Federais, não nos Fóruns Estaduais.","Os direitos de Paloma, como o de não ser submetida aos detectores de metais e à reserva de vagas, são aplicáveis apenas em Tribunais Superiores, e não se estendem a Fóruns de Comarcas Estaduais.","Paloma, por ser advogada gestante, tem o direito de entrar em Fóruns e Tribunais sem ser submetida a detectores de metais e tem direito à reserva de vagas nas garagens dos Fóruns dos Tribunais.","Paloma tem o direito de entrada no Fórum sem ser submetida a detectores de metais, mas o direito à reserva de vagas em garagens para gestantes é uma mera liberalidade do Tribunal e não é garantido por lei."]'::jsonb,
'C',
'O Estatuto da OAB assegura à advogada gestante o direito de ingressar em tribunais e repartições sem ser submetida a detectores de metais e aparelhos de raios X, bem como o direito a reserva de vaga em garagens dos fóruns dos tribunais (art. 7º-A, incluído pela Lei nº 13.363/2016). Tais direitos não se limitam a tribunais superiores ou federais. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Ética e Estatuto da OAB',
'Danilo, procurador de carreira, foi nomeado Procurador-Geral de sua instituição. Antes de assumir, patrocinava causas trabalhistas contra empresas privadas e causas tributárias. Agora está em dúvida se poderá continuar advogando nessas ações. Com base nas disposições do Estatuto da OAB sobre incompatibilidades e impedimentos, assinale a afirmativa correta.',
'',
'',
'["Danilo está impedido de atuar em causas trabalhistas e tributárias contra a Fazenda Pública que o remunera, mas pode continuar patrocinando as causas contra empresas privadas.","Danilo poderá continuar patrocinando suas causas trabalhistas e tributárias, pois o cargo de Procurador-Geral do Estado não gera incompatibilidade ou impedimento para advogar em questões privadas.","Danilo poderá continuar patrocinando as causas tributárias, mas não as trabalhistas, pois apenas as causas tributárias contra a Fazenda Pública estão abrangidas pelo impedimento previsto no Estatuto da OAB.","Danilo não poderá continuar patrocinando suas causas trabalhistas e tributárias, pois o cargo de Procurador-Geral do Estado obsta o exercício da advocacia desvinculado da função que exerce, durante o período da investidura."]'::jsonb,
'D',
'Os ocupantes de cargos de direção dos órgãos da Advocacia Pública, como o Procurador-Geral, exercem a advocacia vinculada à função, ficando impedidos de advogar fora dela durante a investidura. Assim, Danilo não poderá continuar patrocinando as causas particulares (trabalhistas e tributárias) desvinculadas do cargo. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Ética e Estatuto da OAB',
'Alfredo é graduado em Direito, mas não foi aprovado no Exame da OAB e não estagiou durante a graduação. Após formado, surgiu a oportunidade de estagiar em escritório credenciado pelo Conselho Seccional da OAB. Deseja saber se pode participar do estágio e inscrever-se no quadro de estagiários. Com base no Art. 9º do Estatuto, assinale a afirmativa correta.',
'',
'',
'["Alfredo não pode participar de estágio de advocacia, pois o estágio só é permitido para estudantes de Direito que ainda estejam cursando os últimos anos do curso jurídico.","Alfredo pode se inscrever no quadro de estagiários da OAB, mas somente se concluir o estágio profissional em uma instituição de ensino superior, e não em escritório credenciado pelo Conselho Seccional da OAB.","Alfredo pode participar do estágio profissional de advocacia e inscrever-se como estagiário da OAB, mesmo após a conclusão do curso, desde que o estágio seja realizado em escritório credenciado pela OAB.","Alfredo pode participar do estágio profissional, mas não poderá inscrever-se no quadro de estagiários da OAB, pois já concluiu a graduação em Direito e apenas alunos ainda cursando o ensino jurídico podem obter essa inscrição."]'::jsonb,
'C',
'A inscrição como estagiário é admitida ao estudante dos últimos anos do curso jurídico e também àquele que, já graduado, realize estágio profissional de advocacia (art. 9º do EOAB e Regulamento Geral). Assim, mesmo após concluir o curso, Alfredo pode participar do estágio e inscrever-se no quadro de estagiários, desde que em escritório credenciado pela OAB. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Ética e Estatuto da OAB',
'Eduardo e Diogo são sócios de uma mesma sociedade de advogados, regularmente registrada. Eduardo foi contratado por Afonso para representá-lo em ação de alimentos movida por sua esposa Dalila, e Diogo foi contratado por Dalila para representá-la na mesma ação. Com base no Art. 15 do Estatuto, assinale a afirmativa correta.',
'',
'',
'["Eduardo e Diogo não podem representar, em juízo, clientes com interesses opostos, por serem sócios da mesma sociedade de advogados.","Eduardo e Diogo podem representar Afonso e Dalila em juízo, desde que firmem compromisso por escrito de que não haverá conflito de interesse entre os dois advogados.","Eduardo e Diogo podem continuar com as respectivas representações de Afonso e Dalila, desde que informem previamente ao Juiz que ambos fazem parte da mesma sociedade.","Eduardo e Diogo podem continuar com as representações, desde que cada um atue de forma independente dentro da sociedade de advogados, contando com corpo auxiliar próprio."]'::jsonb,
'A',
'Os advogados integrantes da mesma sociedade profissional não podem representar, em juízo, clientes com interesses opostos (art. 15, § 6º, do EOAB). Como Afonso e Dalila ocupam polos opostos na mesma ação, Eduardo e Diogo, sócios, não podem patrocinar ambos. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ética e Estatuto da OAB',
'Mateus, advogado, contratou Marcos, profissional de vendas, para abordar pessoas nas imediações do INSS visando à captação de causas previdenciárias, com participação nos honorários. Após o devido processo, o Tribunal de Ética aplicou a Mateus a pena de censura. Considerando o Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Havendo circunstâncias atenuantes, será possível substituir a sanção de censura pela aplicação isolada de multa.","Transitada em julgado a decisão, a sanção aplicada a Mateus deverá constar dos seus assentamentos, dando-se ampla publicidade nos meios oficiais.","A gravidade da conduta infracional de Mateus não permite a conversão da pena de censura em advertência, ainda que verificada a ausência de punição disciplinar anterior.","A circunstância de Mateus exercer de modo assíduo e proficiente mandato em cargo ou qualquer órgão da OAB, caso comprovada, deverá ser considerada pelo Tribunal na aplicação da sanção disciplinar."]'::jsonb,
'D',
'Entre as circunstâncias atenuantes a serem consideradas na aplicação das sanções disciplinares está o exercício assíduo e proficiente de mandato ou cargo em qualquer órgão da OAB (art. 40, III, do EOAB). A censura não pode ser substituída por multa isolada e, em regra, não recebe ampla publicidade; pode ser convertida em advertência quando presente atenuante. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Ética e Estatuto da OAB',
'Abelardo foi contratado por Everardo em causa cível de grande vulto, ajustando-se que, em caso de êxito, Abelardo receberia uma joia de elevadíssimo valor a título de honorários. Após ganhar a causa, Everardo teve todo o patrimônio bloqueado por suspeita de crimes financeiros. À luz do Estatuto da OAB e do Código de Ética, assinale a afirmativa correta.',
'',
'',
'["Abelardo poderá requerer ao Juiz Criminal o desbloqueio de até 20% dos bens de Everardo para o pagamento de seus honorários e dos demais custos com a defesa.","Abelardo poderá, diante do bloqueio, participar dos bens particulares de Everardo, de forma excepcional, considerada a impossibilidade de pagamento por outro meio, ainda que tal forma de pagamento não tenha sido pactuada.","A cláusula de honorários de êxito ou quota litis não é vedada, mas deve necessariamente ser expressa em pecúnia, de modo que, prevendo-se a entrega de uma joia, constata-se a nulidade que determina que Abelardo só fará jus aos honorários de sucumbência, se houver.","A cláusula de honorários de êxito ou quota litis é vedada, de sorte que será necessário proceder ao arbitramento dos honorários de Abelardo, em remuneração compatível com o trabalho e o valor econômico da questão, observado obrigatoriamente o disposto no Art. 85 do Código de Processo Civil."]'::jsonb,
'A',
'Nas hipóteses de bloqueio de bens, o Estatuto assegura ao advogado o direito de requerer a liberação de valores para o pagamento de honorários e o reembolso de gastos com a defesa, observado o limite legal (art. 22, § 7º, do EOAB, incluído pela Lei nº 14.365/2022). A cláusula de êxito (quota litis) não é vedada e pode prever bens em pagamento. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Ética e Estatuto da OAB',
'Frederico, advogado, passou a atuar também na construção civil e teve a ideia de unir ambas as atividades em um único escritório, oferecendo consultoria jurídica e serviços de incorporação imobiliária, com campanha publicitária conjunta que ressaltava seus trabalhos como advogado e como empreendedor. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["É possível a divulgação conjunta, desde que respeitados o decoro e a dignidade da advocacia, cabendo ao Tribunal de Ética e Disciplina da OAB avaliar a adequação da publicidade.","É permitida a divulgação conjunta apenas quando a outra atividade também for regulamentada por entidade de classe, hipótese em que a OAB poderá celebrar o convênio para a publicidade cruzada.","É vedada a divulgação conjunta de advocacia com outra atividade, ainda que exercida pela mesma pessoa e que haja afinidade entre os ramos, como ocorre entre a advocacia imobiliária e a construção civil.","Em regra, não é possível divulgar a advocacia em conjunto com outra atividade, mas nesse caso seria permitido, pois as atividades são exercidas por uma mesma pessoa e possuem afinidade temática, inexistindo conflito ético."]'::jsonb,
'C',
'A advocacia é incompatível com a mercantilização e não pode ser divulgada em conjunto com outra atividade, ainda que exercida pela mesma pessoa e que haja afinidade temática. O Código de Ética veda a publicidade que vincule a advocacia a atividade empresarial. Logo, é vedada a divulgação conjunta descrita. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Ética e Estatuto da OAB',
'O advogado Toledo defende Tício, investigado por corrupção e lavagem de dinheiro. Toledo também passou a ser investigado por suposta participação nos ilícitos. O Ministério Público ofereceu-lhe acordo de colaboração premiada, em troca de benefícios penais, desde que fornecesse informações sobre Tício e outros envolvidos. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["O advogado pode colaborar contra seu cliente se a colaboração resultar apenas em redução de pena, sendo vedada a extinção total da punibilidade em razão de delação premiada.","O advogado não pode celebrar colaboração premiada contra o cliente atual, mas poderá fazê-lo em relação a um ex-cliente, desde que não mais exista vínculo profissional formal entre ambos.","O advogado poderá firmar colaboração premiada em face de seu cliente, desde que o acordo seja autorizado judicialmente, hipótese em que ficará isento de punição administrativa perante o Tribunal de Ética e Disciplina.","O advogado não pode efetuar colaboração premiada contra quem seja ou tenha sido seu cliente, e a inobservância dessa regra poderá acarretar processo disciplinar com aplicação de uma sanção de exclusão dos quadros da OAB, sem prejuízo da responsabilização penal."]'::jsonb,
'D',
'O Estatuto veda ao advogado firmar acordo de colaboração premiada contra quem seja ou tenha sido seu cliente (art. 7º-C do EOAB, incluído pela Lei nº 14.365/2022). A violação constitui infração disciplinar grave, podendo ensejar a exclusão dos quadros da OAB, sem prejuízo da responsabilização penal. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Filosofia do Direito',
'A partir dos fragmentos de Tercio Sampaio Ferraz Junior, em que se distingue o enfoque zetético (função especulativa, pergunta pelo ser das coisas) do enfoque dogmático (função diretiva, orienta a decisão), e do episódio em que Sócrates questiona o soldado sobre o que ele entende por “ladrão”, assinale a afirmativa correta.',
'',
'',
'["O enfoque dado por Sócrates pode ser considerado dogmático, pois coloca em dúvida o próprio conceito de ladrão utilizado pelo soldado.","A acentuação da dúvida e do aspecto ontológico da conduta de Sócrates denotam uma característica típica das questões zetéticas.","A utilização dos conceitos de roubo e furto previstos no Código Penal para descaracterizar a imputação de um homem correndo como sendo um ladrão é tipicamente zetética.","O enfoque zetético deve ceder espaço para a função dogmática, pois o Direito no mundo atual exige decisões técnicas, tornando contraproducente especulações ontológicas."]'::jsonb,
'B',
'O enfoque zetético, segundo Tercio Sampaio Ferraz Junior, caracteriza-se pela acentuação da dúvida e pela indagação sobre o ser das coisas (aspecto ontológico, “que é algo?”). Ao questionar o soldado sobre o que ele entende por “ladrão”, Sócrates adota postura tipicamente zetética. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Filosofia do Direito',
'Em decisão histórica, o STF aplicou a lei de greve do setor privado (Lei nº 7.783/1989) aos servidores públicos, pois, apesar da previsão constitucional do direito, não havia lei que o regulamentasse. Diante da ausência da norma e das razões de semelhança para aplicar o normativo existente, assinale a opção que melhor explica a técnica utilizada pelo STF.',
'',
'',
'["Costumes.","Equidade.","Analogia.","Princípios Gerais de Direito."]'::jsonb,
'C',
'A analogia consiste em aplicar a um caso não regulado expressamente a norma prevista para caso semelhante, diante da ausência de regulamentação própria e da identidade de razões (ubi eadem ratio, ibi eadem dispositio). Ao estender aos servidores públicos a lei de greve do setor privado por semelhança, o STF utilizou a analogia. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Direito Constitucional',
'Maria descobriu que seu nome constava, erroneamente, em registros públicos estaduais como devedora de impostos, mesmo nada devendo ao Fisco. Procurou a Secretaria de Fazenda do Estado Alfa solicitando a correção, mas o órgão não retificou. Seu amigo Pedro sugeriu a impetração de habeas data, diretamente por Maria, sem advogado. Segundo o sistema jurídico-constitucional, assinale a opção correta.',
'',
'',
'["A questão deve ser solucionada pela via do mandado de segurança, único remédio capaz de propiciar a retificação de dados, como no caso de Maria.","O objetivo almejado por Maria deve ser atingido pela via de processo judicial sigiloso, não sendo o remédio sugerido hábil para solucionar o problema ventilado.","Maria pode utilizar esse específico remédio constitucional, embora sua impetração vá depender da contratação de advogado(a), que possua capacidade postulatória.","O remédio constitucional em questão não é o instrumento adequado para o caso, pois é direcionado a situações em que se queira ter acesso a informações de sua própria pessoa."]'::jsonb,
'C',
'O habeas data é cabível tanto para assegurar o conhecimento de informações relativas à pessoa do impetrante quanto para a retificação de dados constantes de registros de entidades governamentais ou de caráter público (art. 5º, LXXII, da CRFB/88). A ação, porém, não dispensa a capacidade postulatória, exigindo advogado, diferentemente do habeas corpus. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Direito Constitucional',
'Carlos é prefeito do Município Beta, no Estado Alfa, e tomou conhecimento da descoberta de uma nova reserva de petróleo (reserva Mantuã) situada no território de Beta. Interessado em saber se os resultados da exploração poderiam gerar recursos para Beta, consultou o Procurador-Geral do Município. Segundo o sistema constitucional, assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["Somente Beta, região que efetivamente abriga a reserva Mantuã, poderá se beneficiar dos resultados econômicos diretos da exploração.","O Estado Alfa, o Município Beta e a União, nos termos da lei, serão beneficiados pelos resultados econômicos diretos obtidos da exploração.","Apenas a União, a quem pertencem os recursos minerais no país, inclusive os do subsolo, poderá se beneficiar dos resultados econômicos diretos da exploração.","Somente Alfa e Beta, os entes que suportarão diretamente os reveses que a exploração de petróleo ocasiona, poderão se beneficiar dos resultados econômicos diretos da exploração."]'::jsonb,
'B',
'Embora os recursos minerais, inclusive os do subsolo, pertençam à União (art. 20, IX, da CRFB/88), é assegurada aos Estados, ao Distrito Federal e aos Municípios, bem como a órgãos da administração da União, participação no resultado da exploração ou compensação financeira por essa exploração (art. 20, § 1º). Assim, Alfa, Beta e a União serão beneficiados, nos termos da lei. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Direito Constitucional',
'O Estado Delta publicou lei que criou critérios para a concessão de benefícios fiscais, declarada inconstitucional pelo STF em ADI. Meses depois, a Assembleia Legislativa aprovou a Lei X/2025 com conteúdo idêntico ao da lei declarada inconstitucional. O Governador consultou o Procurador-Geral. Assinale a opção que apresenta a solução correta.',
'',
'',
'["O Governador do Estado deve ingressar com uma reclamação perante o STF, pois a Lei X/2025 afrontou o efeito vinculante da decisão anterior.","O efeito vinculante da decisão anterior do STF não alcança a atividade legislativa típica, não havendo óbice a que seja proposta uma nova ADI tendo a Lei X/2025 como objeto.","A Lei X/2025 não pode ser objeto de nova ADI, pois o efeito vinculante da decisão do STF na ADI anterior impede que qualquer legitimado questione a norma de mesmo conteúdo.","Pode ser ajuizada uma nova ADI, tendo a Lei X/2025 como objeto, porque o Poder Legislativo está vinculado à decisão anterior do STF, mesmo em relação à sua função típica de legislar."]'::jsonb,
'B',
'Segundo a jurisprudência do STF, o efeito vinculante das decisões em controle concentrado não alcança o Poder Legislativo no exercício de sua função típica de legislar (sob pena de fossilização da Constituição). Por isso, a edição de nova lei de conteúdo idêntico não configura, por si, afronta à autoridade da decisão, cabendo o ajuizamento de nova ADI contra a Lei X/2025. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Direito Constitucional',
'A Câmara Municipal de Alfa constatou que o Prefeito não prestou as contas anuais de governo no prazo, por três exercícios, impedindo a fiscalização dos recursos. Diante disso, o Governador do Estado Beta decidiu decretar intervenção estadual no Município. Questionada a legalidade, assinale a opção que apresenta a orientação jurídica correta.',
'',
'',
'["A Câmara Municipal de Alfa, ao constatar a omissão na prestação de contas, deve requerer diretamente ao Supremo Tribunal Federal que determine a intervenção estadual.","A intervenção estadual, no caso, somente poderia ser decretada se houvesse uma determinação judicial reconhecendo a omissão como grave o suficiente para justificar a medida extrema.","A intervenção estadual depende de autorização prévia do Poder Legislativo estadual, pois qualquer limitação à autonomia municipal exige controle político pelos representantes do povo.","O Governador pode decretar a intervenção sem a necessidade de autorização legislativa ou judicial prévia, pois a situação apresentada no problema constitui hipótese expressa de intervenção estadual."]'::jsonb,
'D',
'A não prestação de contas devidas, na forma da lei, é hipótese expressa que autoriza a intervenção do Estado no Município (art. 35, II, da CRFB/88). Nessa hipótese, o decreto de intervenção independe de autorização ou de provimento judicial prévio, bastando a sua submissão posterior ao controle do Poder Legislativo. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Direito Constitucional',
'O Tribunal de Contas do Estado Ômega, após garantir o contraditório e a ampla defesa, proferiu decisão definitiva determinando o ressarcimento de valores desviados por gestor público em verbas da educação. O gestor entende que seria necessário o ajuizamento de ação judicial para validar a obrigação. Com base no sistema constitucional, assinale a orientação correta.',
'',
'',
'["A obrigação de ressarcimento ao erário dependeria da confirmação por parte da Assembleia Legislativa de Ômega, pois os Tribunais de Contas são órgãos subordinados ao Poder Legislativo.","A decisão do Tribunal de Contas não pode ser executada diretamente pela Fazenda Pública, pois, para que haja exigibilidade do crédito, é imprescindível o ajuizamento de ação judicial declaratória.","A decisão do Tribunal de Contas tem eficácia de título executivo extrajudicial, sem necessidade de homologação pelo Poder Judiciário, e pode ser cobrada pela Fazenda Pública por meio de execução fiscal.","A obrigação de ressarcimento ao erário somente pode ser imposta por decisão do Poder Judiciário, pois os Tribunais de Contas não possuem competência para reconhecer a responsabilidade financeira de gestores públicos."]'::jsonb,
'C',
'As decisões dos Tribunais de Contas de que resulte imputação de débito ou multa têm eficácia de título executivo (art. 71, § 3º, da CRFB/88), independentemente de homologação pelo Judiciário. O crédito pode ser inscrito em dívida ativa e cobrado pela Fazenda Pública por meio de execução fiscal. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Direito Constitucional',
'Ao final de seu segundo mandato consecutivo, o Prefeito do Município Delta, João Carlos, encaminhou à Câmara projeto de lei de sua própria iniciativa propondo a majoração dos subsídios dos próximos Prefeito e Vice-Prefeito para a legislatura seguinte. O projeto foi aprovado e sancionado por ele. Assinale a afirmativa correta.',
'',
'',
'["A lei municipal aprovada atende aos pressupostos constitucionais da ordem jurídica brasileira, que exige a forma de lei municipal para a fixação do subsídio do Prefeito.","A lei municipal aprovada atende aos pressupostos da ordem jurídica brasileira, desde que as regras estabelecidas para o tema observem o que dispõe a Lei Orgânica do Município.","Não sendo João Carlos beneficiário da majoração dos subsídios, o processo legislativo aprovado pela Câmara Municipal de Delta converge com o que determina o sistema jurídico brasileiro.","A lei aprovada pela Câmara Municipal de Delta não atende ao regime constitucional vigente, pois a matéria em questão exige projeto de iniciativa da Câmara Municipal, não do Chefe do Poder Executivo."]'::jsonb,
'D',
'A fixação dos subsídios do Prefeito, do Vice-Prefeito e dos Secretários Municipais é feita por lei de iniciativa da Câmara Municipal (art. 29, V, da CRFB/88), e não do Chefe do Executivo. O vício de iniciativa torna a lei incompatível com o regime constitucional. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Direitos Humanos',
'Você é procurado por membros de uma comunidade indígena que sofrem reiteradas ofensas aos seus direitos originários sobre as terras que tradicionalmente ocupam, em conflito possessório anterior à promulgação da CRFB/88. De acordo com o entendimento da Corte IDH e do STF, assinale a opção que apresenta a orientação correta.',
'',
'',
'["Diante da natureza jurídica despersonalizada da comunidade indígena, reconhece-se a possibilidade de quaisquer de seus integrantes pleitear individualmente, em substituição à coletividade respectiva, o provimento de tutela jurisdicional adequada à proteção dos seus direitos originários violados.","Em razão da situação narrada protrair-se no tempo, estendendo-se o conflito possessório a período anterior à edição da nova ordem constitucional, não há, no caso, óbice de ordem técnico-jurídica que inviabiliza o reconhecimento da tradicionalidade da ocupação indígena, nos termos da jurisprudência mais recente do STF.","Tanto a Corte IDH quanto o STF reconhecem a possibilidade de a comunidade indígena, por livre disposição, anuir à solução conciliatória em que se estabeleça a alienação das terras indígenas, desde que o produto da venda seja destinado exclusivamente à comunidade, assegurada a sua capacidade de autodeterminação sobre a sua disposição.","Diante das peculiaridades culturais e de organização inerentes aos povos originários, para melhor proteção dos seus direitos, é obrigatório que a sua representação em juízo seja realizada por órgão governamental especialmente instituído para atuar na defesa de seus interesses, como ocorre no contexto brasileiro com a Fundação Nacional do Índio (Funai)."]'::jsonb,
'B',
'O STF, ao julgar o Tema 1.031 (RE 1.017.365), rejeitou a tese do marco temporal e reconheceu a existência de renitente esbulho quando o conflito possessório se protrai no tempo, inclusive em período anterior a 1988. Assim, não há óbice técnico-jurídico ao reconhecimento da tradicionalidade da ocupação indígena nessas circunstâncias. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Direitos Humanos',
'Após a EC nº 45/2004, que inseriu o § 3º no Art. 5º da CRFB/88, discutiu-se o status normativo dos tratados e convenções internacionais sobre direitos humanos incorporados antes da reforma. De acordo com a atual jurisprudência do STF, assinale a opção correta.',
'',
'',
'["Diante da impossibilidade de adoção do rito constitucionalmente exigido para a aprovação de emendas constitucionais, os Tratados e as Convenções Internacionais sobre Direitos Humanos incorporados ao ordenamento jurídico nacional antes da EC nº 45/2004 possuem status de lei ordinária.","Diante da ausência de previsão constitucional expressa em relação à matéria, em razão dos compromissos assumidos pelo Estado brasileiro no plano internacional, os Tratados e as Convenções Internacionais sobre Direitos Humanos incorporados ao ordenamento jurídico nacional antes da EC nº 45/2004 possuem status de norma supraconstitucional.","Em razão da cláusula aberta contida no Art. 5º, § 2º, da Constituição Federal de 1988, ao admitir expressamente a existência de outros direitos fundamentais para além daqueles expressamente elencados no texto constitucional, os Tratados e as Convenções Internacionais sobre Direitos Humanos incorporados ao ordenamento jurídico nacional antes da EC nº 45/2004 possuem status de norma constitucional.","Em razão da necessidade de interpretação do texto constitucional, notadamente as previsões insertas nos parágrafos do art. 5º da Constituição Federal de 1988, à luz do Art. 7º, § 7º, da Convenção Americana de Direitos Humanos (Pacto de São José da Costa Rica), os Tratados e as Convenções Internacionais sobre Direitos Humanos incorporados ao ordenamento jurídico nacional antes da edição da EC nº 45/2004 possuem status supralegal."]'::jsonb,
'D',
'Segundo a jurisprudência do STF (a partir do RE 466.343), os tratados internacionais de direitos humanos não aprovados pelo rito do art. 5º, § 3º, da CRFB/88 possuem status supralegal: situam-se acima da legislação ordinária e abaixo da Constituição. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Direito Eleitoral',
'Maria pretendia concorrer ao cargo de senadora. Nascida no Estado Alfa, onde passa a maior parte do tempo, possui propriedades nos Estados Beta e Gama, para onde se desloca com regularidade por motivos profissionais. Consultou você sobre em qual Estado poderia concorrer. Assinale a afirmativa correta.',
'',
'',
'["Maria somente pode concorrer no Estado em que tenha domicílio eleitoral, o qual deve ser estabelecido até seis meses antes da eleição.","Na medida em que o domicílio eleitoral é uma condição de elegibilidade regida pelo princípio da unicidade, Maria deve defini-lo no momento do registro.","Em razão do caráter nacional do cargo eletivo de senadora, Maria pode concorrer em qualquer dos Estados, ainda que não tenha domicílio eleitoral no Estado escolhido.","Como o domicílio eleitoral não é uma ficção, sendo regido pela realidade, Maria somente pode concorrer no Estado Alfa, no qual passa a maior parte do tempo, ainda que tenha declinado domicílio diverso à Justiça Eleitoral."]'::jsonb,
'A',
'O domicílio eleitoral na circunscrição é condição de elegibilidade (art. 14, § 3º, IV, da CRFB/88). A legislação exige que o domicílio eleitoral seja constituído no prazo mínimo de seis meses antes da eleição (art. 9º da Lei nº 9.504/97). O conceito de domicílio eleitoral admite vínculos diversos (residência, profissional, patrimonial), de modo que Maria pode concorrer no Estado em que estabeleceu seu domicílio no prazo legal. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Direito Eleitoral',
'Logo após a diplomação de Maria, eleita Prefeita do Município Delta, Ana, candidata derrotada, apresentou provas de que Maria recebera doação estimável em dinheiro por meio de publicidade realizada em seu benefício por uma OSCIP. Quanto à orientação a ser dada, assinale a afirmativa correta.',
'',
'',
'["Trata-se de captação ilícita de recursos, e a medida a ser ajuizada deve observar o procedimento da ação de investigação judicial eleitoral.","Como não houve repasse de recursos financeiros, o fato de Maria ter sido beneficiada pela publicidade realizada por Gama não configura ilícito eleitoral.","Ocorreu a preclusão de qualquer medida passível de ser adotada em relação à situação descrita, o que torna desinfluente a análise de sua licitude ou não.","Como somente são admitidas doações expressas em moeda, a conduta é ilícita, o que acarreta a incidência da pena cominada, sendo possível a aplicação da sanção de multa a Gama e a Maria."]'::jsonb,
'A',
'As doações estimáveis em dinheiro (como a publicidade prestada em benefício do candidato) e o recebimento de recursos de fontes vedadas, a exemplo de entidades e governos estrangeiros e de pessoas jurídicas, configuram captação ou gasto ilícito de recursos. A medida cabível é a representação por captação ou gasto ilícito de recursos de campanha, que observa o procedimento do art. 22 da LC nº 64/90 (ação de investigação judicial eleitoral). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direito Internacional',
'Um cidadão brasileiro domiciliado na Espanha faleceu deixando testamento particular que dispõe sobre bens situados no exterior e no Brasil. Os herdeiros, de comum acordo, promoveram perante autoridade notarial estrangeira a confirmação do testamento e a partilha, incluindo os bens no Brasil, e requereram ao STJ a homologação do ato notarial estrangeiro. À luz do sistema jurídico brasileiro, assinale a afirmativa correta.',
'',
'',
'["A homologação será possível apenas se o ato estrangeiro for convertido em decisão judicial no país de origem, pois somente decisões judiciais estrangeiras são passíveis de homologação pelo STJ.","O ato notarial poderá ser homologado pelo STJ desde que todos os herdeiros sejam capazes e tenham manifestado consentimento expresso quanto à confirmação do testamento e à partilha dos bens, inclusive os situados no Brasil.","A homologação deverá ser deferida parcialmente, produzindo efeitos automáticos sobre os bens situados no Brasil, em respeito ao princípio da autonomia da vontade dos herdeiros e ao reconhecimento internacional dos atos notariais.","O ato notarial estrangeiro não poderá ser homologado na parte relativa aos bens situados no Brasil, pois a confirmação de testamento particular e a partilha desses bens se inserem na competência jurisdicional exclusiva da autoridade judiciária brasileira."]'::jsonb,
'D',
'Compete à autoridade judiciária brasileira, com exclusão de qualquer outra, proceder ao inventário e à partilha de bens situados no Brasil, ainda que o autor da herança seja estrangeiro ou tenha residido fora do país (art. 23, II, do CPC e art. 10, § 1º, da LINDB). Por se tratar de competência exclusiva, o ato notarial estrangeiro não pode ser homologado quanto aos bens situados no Brasil. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direito Internacional',
'François, francês domiciliado na Holanda, e Maria, brasileira domiciliada na França, são casados. Eram domiciliados na Alemanha na ocasião do casamento e tiveram em Frankfurt o primeiro domicílio conjugal. Posteriormente mudaram-se para países diferentes. Maria pretende ajuizar divórcio no Brasil. Assinale a opção que indica a lei aplicável ao regime de bens, segundo a LINDB.',
'',
'',
'["Francesa.","Brasileira.","Alemã.","Holandesa."]'::jsonb,
'C',
'Nos termos do art. 7º, § 4º, da LINDB, o regime de bens, legal ou convencional, obedece à lei do país em que tiverem os nubentes domicílio e, se este for diverso, à do primeiro domicílio conjugal. Como o primeiro domicílio conjugal foi em Frankfurt, aplica-se a lei alemã ao regime de bens. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direito Financeiro',
'O Município Alfa, com dificuldades para pagar em dia a remuneração dos servidores, requereu à instituição financeira federal BNDES um empréstimo para pagar as remunerações em atraso, oferecendo em garantia terrenos de sua propriedade com valor de mercado superior ao montante emprestado. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["É proibido ao BNDES realizar empréstimo para o pagamento de despesas com pessoal.","Como houve oferta de garantia em valor superior ao do empréstimo, este deverá ser realizado pelo BNDES.","É facultado ao BNDES realizar o empréstimo, mas apenas se reputar que as garantias oferecidas são de liquidez satisfatória.","Somente uma instituição financeira controlada pelo Estado em que se localiza o Município Alfa poderia realizar tal empréstimo."]'::jsonb,
'A',
'A Lei de Responsabilidade Fiscal veda a realização de operação de crédito que represente antecipação de receita ou que se destine ao financiamento de despesas correntes, bem como a destinação de recursos de operações de crédito ao pagamento de despesas correntes de pessoal, salvo exceções legais (arts. 35 e 36 da LRF, e vedação de aplicar operações de crédito em despesa corrente, art. 44 e 167, III, da CRFB). Logo, é proibido o empréstimo para pagamento de despesas com pessoal. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direito Financeiro',
'Na elaboração do projeto de LOA da União, o Poder Executivo resolveu inserir as previsões de despesas para os exercícios seguintes, com a especificação dos investimentos plurianuais e daqueles em andamento. À luz das regras constitucionais de elaboração das leis orçamentárias, assinale a afirmativa correta.',
'',
'',
'["Veiculou indevidamente investimentos plurianuais e aqueles em andamento, os quais somente poderiam constar do Plano Plurianual (PPA).","Inseriu, equivocadamente, os investimentos plurianuais em seu conteúdo, pois deveriam estar previstos na Lei de Diretrizes Orçamentárias (LDO).","Adequa-se às disposições constitucionais que permitem tais inserções dos investimentos plurianuais e daqueles em andamento.","Poderia conter, apenas, os investimentos já em andamento, uma vez que os investimentos plurianuais somente poderiam constar do Plano Plurianual (PPA)."]'::jsonb,
'C',
'A Constituição admite que a lei orçamentária anual contenha a especificação dos investimentos, inclusive os de duração que ultrapasse um exercício financeiro. Nenhum investimento cuja execução ultrapasse um exercício poderá ser iniciado sem prévia inclusão no PPA ou lei que autorize (art. 167, § 1º, da CRFB/88), mas a LOA pode especificar os investimentos plurianuais e os em andamento. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direito Tributário',
'A União criou nova contribuição de seguridade social por meio da Lei Ordinária nº XXX/2024, publicada em 1º de setembro de 2024, cuja cobrança se iniciou em 1º de novembro de 2024. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["A Lei Ordinária nº XXX/2024 é inconstitucional por violar tanto a reserva de lei complementar como os princípios da anterioridade tributária anual e nonagesimal.","Embora não viole o princípio da anterioridade tributária anual, a Lei Ordinária nº XXX/2024 é inconstitucional por violar tanto a reserva de lei complementar como o princípio da anterioridade tributária nonagesimal.","Não há qualquer inconstitucionalidade na Lei Ordinária nº XXX/2024, uma vez que as novas contribuições de seguridade social são instituídas por meio de lei ordinária e constituem exceção aos princípios da anterioridade tributária anual e nonagesimal.","As novas contribuições de seguridade social constituem exceção aos princípios da anterioridade tributária anual e nonagesimal, de modo que a única inconstitucionalidade formal presente na Lei Ordinária nº XXX/2024 é a de violar a reserva de lei complementar."]'::jsonb,
'B',
'As contribuições para a seguridade social sujeitam-se apenas à anterioridade nonagesimal (noventena), não se submetendo à anterioridade anual (art. 195, § 6º, da CRFB/88). Entretanto, a instituição de nova fonte de custeio não prevista no art. 195 exige lei complementar (art. 195, § 4º, c/c art. 154, I). Publicada em 1º/09/2024, a cobrança a partir de 1º/11/2024 desrespeita a noventena. Logo, há dupla inconstitucionalidade: reserva de lei complementar e anterioridade nonagesimal. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direito Tributário',
'Mateus devia valor elevado ao Fisco Federal, com crédito lançado e inscrito em Dívida Ativa não prescrito. A PFN ajuizou execução fiscal em fevereiro de 2020. Mateus não foi localizado nem foram encontrados bens, tendo a PFN sido cientificada em abril de 2020. Realizada citação por edital em abril de 2020, em julho de 2025, sem alteração, o Magistrado decretou a prescrição. Assinale a afirmativa correta.',
'',
'',
'["Ocorreu a prescrição direta de tais créditos, pois foi alcançado o prazo prescricional quinquenal previsto no Código Tributário Nacional.","A ausência de citação pessoal de Mateus impede o curso da prescrição, de modo que esta, nesse caso, não poderia ter se consumado.","A prescrição intercorrente prevista no Código Tributário Nacional, ocorrida na pendência do processo de execução fiscal, fulminou tais créditos tributários.","A prescrição intercorrente prevista na Lei de Execuções Fiscais ainda não havia sido atingida, pois não se computou na contagem geral do prazo o período de 1 ano de suspensão do curso da execução."]'::jsonb,
'D',
'Na execução fiscal, não localizado o devedor ou bens penhoráveis, suspende-se o curso da execução por 1 ano (art. 40 da LEF). Findo esse prazo, inicia-se o prazo de prescrição intercorrente de 5 anos (Tema 566 do STJ). Contado a partir da ciência da Fazenda, em abril de 2020, com 1 ano de suspensão, o quinquênio da prescrição intercorrente ainda não havia se completado em julho de 2025. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direito Tributário',
'João da Silva recebeu da sociedade empregadora valor a título de indenização por danos morais, por exposição vexatória diante de colegas. No pagamento, a empresa reteve na fonte o Imposto de Renda, recolhendo-o em DARF. João impugnou administrativamente, mas a primeira instância denegou a restituição. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["Foi correta a retenção do Imposto de Renda sobre aquela verba indenizatória, por se tratar de fato ocorrido em relação de emprego, equiparando-a a verba salarial.","Caso queira promover ação anulatória contra a decisão administrativa que denegou a restituição do Imposto sobre a Renda, João terá um prazo máximo de dois anos para fazê-lo.","João somente poderá requerer judicialmente a restituição do valor de Imposto sobre a Renda retido indevidamente, por ter natureza indenizatória, após esgotar a via administrativa tributária em todas as instâncias.","Tendo sido negado em primeira instância administrativa o seu pedido de restituição do Imposto sobre a Renda que entende indevidamente retido, João somente poderá recorrer à segunda instância administrativa após realizar depósito prévio."]'::jsonb,
'B',
'Prescreve em 2 anos a ação anulatória da decisão administrativa que denegar a restituição (art. 169 do CTN). A verba indenizatória por dano moral não constitui acréscimo patrimonial tributável, sendo indevida a retenção. O acesso ao Judiciário independe de esgotamento da via administrativa, e o STF considera inconstitucional a exigência de depósito prévio como condição de recurso administrativo. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direito Tributário',
'A lei federal da Cide-Combustíveis fixou a alíquota do álcool etílico combustível em R$ 37,20/m³. Por decreto de 1º/08/2024, o governo reduziu a alíquota para R$ 20,50/m³. Por novo decreto de 1º/02/2025, restabeleceu-a em R$ 37,20/m³, com efeitos a partir de 3 de junho de 2025. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["A produção de efeitos do Decreto nº YYY a partir de 3 de junho de 2025 viola o princípio da anterioridade tributária anual.","A redução da alíquota para R$ 20,50/m³ por decreto é inconstitucional, ainda que seja mais benéfica ao sujeito passivo tributário.","A redução da alíquota para R$ 20,50/m³ e seu restabelecimento para R$ 37,20/m³ podem ser feitas por decreto.","O restabelecimento de tal alíquota da Cide Combustíveis para o patamar de R$ 37,20/m³ por decreto viola o princípio da legalidade tributária."]'::jsonb,
'C',
'A CRFB/88 (art. 177, § 4º, I, b) autoriza o Poder Executivo a reduzir e restabelecer, por ato próprio (decreto), a alíquota da Cide-Combustíveis, constituindo exceção à legalidade e à anterioridade anual. O restabelecimento até o patamar original é possível por decreto. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direito Tributário',
'O Município Alfa, por lei ordinária, criou a Taxa de Fiscalização de Cemitérios, tendo as concessionárias como contribuintes. A lei estabeleceu que a data de pagamento seria fixada em decreto do Prefeito, e o Decreto Municipal XX/2023 fixou a data em 15 dias após o recebimento da notificação. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["Somente lei municipal, e não mero decreto, poderia fixar o prazo de pagamento da referida taxa.","O Decreto Municipal XX/2023 não poderia fixar a data de pagamento dessa taxa em 15 dias, por contrariar o prazo de 30 dias previsto no Código Tributário Nacional (CTN).","Como a fiscalização de cemitérios configura uma taxa de polícia, e não uma taxa de serviço público específico e divisível, tal taxa não poderia ser instituída pelo Município Alfa.","Ainda que não houvesse previsão na lei instituidora do tributo de que seria um decreto a fixar a data de pagamento dessa taxa, o Decreto Municipal XX/2023 seria ato normativo apto a fazê-lo."]'::jsonb,
'D',
'A fixação do prazo (data) de pagamento do tributo não está sujeita à reserva legal, podendo ser estabelecida por ato infralegal, como decreto, segundo entendimento do STF. Assim, mesmo sem previsão na lei instituidora, o decreto seria apto a fixar a data de pagamento da taxa. A fiscalização configura taxa de polícia, plenamente admissível. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direito Administrativo',
'A sociedade empresária Begônia deseja participar de concorrência para contratação de obra, pela sequência adotada como regra na Lei nº 14.133/2021, mas receia ser prejudicada no julgamento das propostas, que antecede a habilitação. Consultou você sobre a possibilidade de recurso administrativo, o momento e os efeitos. Assinale a opção que indica o esclarecimento correto.',
'',
'',
'["Não há a possibilidade de se apresentar um recurso administrativo contra o julgamento das propostas, diante da vedação expressa na aludida norma.","Apenas depois da habilitação é que caberá a apresentação de um recurso administrativo contra o julgamento das propostas, de modo que é necessário aguardar o prosseguimento do certame para a manifestação da intenção de recorrer no momento oportuno.","O pedido de reconsideração em relação ao julgamento das propostas deve ser prontamente apresentado ao fim da respectiva fase e possui efeito suspensivo, de modo que a licitação só seguirá para a fase de habilitação após a apreciação das irresignações apresentadas.","A intenção de recorrer do julgamento das propostas deve ser imediatamente manifestada, mas o prazo para a apresentação das razões recursais será iniciado na data da intimação ou da lavratura da ata de habilitação ou inabilitação, pois sua apreciação dar-se-á em fase única."]'::jsonb,
'D',
'Na sequência padrão da Lei nº 14.133/2021, o recurso referente ao julgamento das propostas e à habilitação é único e ocorre após a fase de habilitação (art. 165). A intenção de recorrer do julgamento das propostas deve ser manifestada imediatamente, mas o prazo para as razões recursais só se inicia com a intimação ou lavratura da ata de habilitação ou inabilitação, apreciando-se tudo em fase recursal única. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'O Estado Alfa, cuja capital é o Município Beta, por decreto do Governador, declarou de utilidade pública área localizada no Município Sigma, sede de Comarca, abarcando o imóvel de João. João recusou as propostas e tentou impedir o ingresso das autoridades no terreno. O Estado pretende ajuizar ação de desapropriação. À luz do Decreto-Lei nº 3.365/1941, assinale a afirmativa correta.',
'',
'',
'["A ação judicial deverá ser proposta pelo expropriante no foro da situação do bem imóvel, ou seja, na Comarca do Município Sigma.","As autoridades administrativas do Estado Alfa poderão ingressar nas áreas compreendidas pela declaração de utilidade pública após a autorização judicial específica, ouvido o expropriado João.","O Estado Alfa poderá se imitir provisoriamente na posse do imóvel de João, desde que, declarada a situação de urgência, deposite, em juízo, o valor que o expropriado João entender justo a título de indenização.","Incumbirá ao expropriado João, em sede de contestação, expor todas as razões de fato e de direito com que impugna o pedido do expropriante, especificando as provas que pretende produzir para demonstrar que inexiste utilidade pública na desapropriação almejada pelo Estado Alfa."]'::jsonb,
'A',
'A ação de desapropriação deve ser proposta no foro da situação do bem imóvel. As autoridades podem penetrar no imóvel independentemente de autorização judicial, podendo recorrer à força policial em caso de oposição; a imissão provisória na posse exige depósito segundo critérios legais (e não o valor que o expropriado entenda justo); e a contestação só pode versar sobre vício do processo ou impugnação do preço, não sendo cabível discutir a utilidade pública (art. 20 do DL nº 3.365/41). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'A sociedade Alfa tomou conhecimento de que o Conselho Diretor da Agência Reguladora Beta realizou reunião deliberativa sobre documentos sigilosos e matérias administrativas, sem prévia divulgação da data no sítio da agência e sem gravação em meio eletrônico. À luz da Lei nº 13.848/2019, assinale a opção que apresenta a orientação jurídica correta.',
'',
'',
'["A reunião deliberativa do Conselho Diretor da Agência Reguladora Beta deverá ser anulada, na medida em que não houve a sua gravação em meio eletrônico.","Inexiste irregularidade na reunião deliberativa do Conselho Diretor da Agência Reguladora Beta, já que foram discutidos documentos classificados como sigilosos, bem como matérias de natureza administrativa.","Muito embora a gravação, em meio eletrônico, da reunião deliberativa do Conselho Diretor da Agência Reguladora Beta não fosse obrigatória, era necessário a prévia divulgação da sua data no sítio da referida autarquia na internet.","Para que a reunião deliberativa do Conselho Diretor da Agência Reguladora Beta seja anulada, a sociedade empresária Alfa deverá demonstrar prejuízo em razão da ausência de divulgação prévia desta no sítio da referida autarquia na internet."]'::jsonb,
'B',
'A Lei nº 13.848/2019 determina a publicidade e, em regra, a gravação das reuniões deliberativas das agências reguladoras, mas ressalva as reuniões em que sejam discutidos documentos classificados como sigilosos e as de natureza administrativa, que podem ser realizadas sem a mesma exigência de publicidade e gravação (art. 5º e parágrafos). Como foram tratados documentos sigilosos e matérias administrativas, inexiste irregularidade. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'O Ministério Público ajuizou ação de improbidade administrativa em face de João, agente público, por frustrar, em ofensa à imparcialidade, o caráter concorrencial de procedimento licitatório. Citado, João contestou, mas as preliminares foram rejeitadas. Considerando a Lei nº 8.429/1992, assinale a afirmativa correta.',
'',
'',
'["A apelação é o recurso cabível para questionar a decisão judicial que rejeitou as questões preliminares suscitadas na contestação.","A defesa de João poderá interpor agravo de instrumento em detrimento da decisão judicial que rejeitou as questões preliminares suscitadas em sede de contestação.","Muito embora não seja cabível recurso em face da decisão judicial que rejeitou as questões preliminares suscitadas por João na contestação, nada impede que a defesa formule pedido de reconsideração.","Por não ter ingressado no mérito da relação processual, a decisão judicial que rejeitou as questões preliminares suscitadas na contestação não é passível de impugnação via recurso ou pedido de reconsideração."]'::jsonb,
'B',
'A Lei de Improbidade (art. 17, § 10, da Lei nº 8.429/92, com a redação da Lei nº 14.230/2021) prevê que da decisão que rejeitar questões preliminares suscitadas na contestação caberá agravo de instrumento. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'Autoridades de órgão federal editaram ato delegando parcela de competência a outro órgão não hierarquicamente subordinado, especificando matérias, poderes, limites, duração, objetivos e o recurso cabível. Gyslaine temeu que o órgão delegado viesse a decidir recurso administrativo que tramitava perante o delegante. À luz da Lei nº 9.784/1999, assinale a opção correta.',
'',
'',
'["A competência relativa à decisão de recursos administrativos não pode ser objeto de delegação.","O ato de delegação é irrevogável, razão pela qual o desfazimento da delegação deve ser objeto de avocação.","A competência, inexistindo impedimento legal, apenas poderia ser delegada para o órgão hierarquicamente subordinado.","As decisões adotadas por delegação devem mencionar explicitamente essa qualidade e considerar-se-ão editadas pela autoridade delegante, que detém a competência originária."]'::jsonb,
'A',
'A Lei nº 9.784/1999 (art. 13, II) veda a delegação da competência para a decisão de recursos administrativos. A delegação pode ser feita a órgão não subordinado hierarquicamente, é revogável a qualquer tempo e as decisões por delegação consideram-se editadas pelo delegado (art. 14, § 3º). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Ambiental',
'A sociedade Alfa está em processo de licenciamento ambiental e pretende obter outorga do direito de uso de recursos hídricos, consistente em extração de água de aquífero subterrâneo, como insumo produtivo. Inconformada com a cobrança por esse uso, consultou a advogada Marcela. Sobre a cobrança pelo uso da água, à luz dos princípios do Direito Ambiental, assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["O empreendedor não deve pagar pelo uso da água, exceto se houver efetivo dano ambiental, com base no princípio de direito ambiental da prevenção.","A cobrança antecipada por danos ambientais a serem causados por poluidores é pertinente, com base no princípio de direito ambiental do desenvolvimento sustentável.","O empreendedor deve pagar uma contribuição financeira à coletividade, que sofre as consequências do uso privado da água, com base no princípio de direito ambiental do usuário-pagador.","A cobrança pelo uso da água não é pertinente, salvo se houver efetivo dano ambiental com a necessária prova pericial que demonstre o nexo causal, com base no princípio de direito ambiental da precaução."]'::jsonb,
'C',
'A cobrança pelo uso de recursos hídricos (previsto na Lei nº 9.433/1997) fundamenta-se no princípio do usuário-pagador: quem utiliza o recurso natural deve retribuir financeiramente à coletividade pelo uso privado de um bem de uso comum, independentemente da ocorrência de dano. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Ambiental',
'O Prefeito do Município Ômega editou decreto delimitando uma Área de Proteção Ambiental (APA), unidade de conservação de uso sustentável, em área de grande extensão e ocupação humana. A propriedade privada de Adélia Figueiredo está dentro da APA. À luz da Lei nº 9.985/2000, assinale a afirmativa correta.',
'',
'',
'["As condições para a pesquisa e a visitação do público, observadas as exigências e restrições legais, devem ser estabelecidas por Adélia.","O Prefeito não poderia ter editado um decreto para a finalidade descrita, pois a Unidade de Conservação Ambiental só pode ser criada por lei.","A propriedade de Adélia deve ser desapropriada de acordo com o que dispõe a lei, porque está localizada em uma Unidade de Conservação de domínio público.","A Unidade de Conservação pertence, na realidade, ao grupo das unidades de proteção integral, o que permite o uso dos recursos naturais pelos proprietários privados."]'::jsonb,
'A',
'A APA é uma unidade de conservação de uso sustentável, constituída por terras públicas e privadas, podendo ser criada por decreto. Nas áreas privadas, cabe ao proprietário estabelecer as condições para pesquisa e visitação pública, observadas as exigências e restrições legais (art. 15, §§ 1º e 2º, da Lei nº 9.985/2000). Não há desapropriação obrigatória. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Civil',
'Joaquim e Celina são pais das gêmeas Clarice e Maria, de 17 anos. Clarice, com autorização dos pais, casou-se com Ariano. Maria iniciou o curso de Medicina em universidade federal. A respeito da capacidade civil das filhas, assinale a afirmativa correta.',
'',
'',
'["Como Clarice é casada, ela é civilmente capaz.","Maria do Carmo, pela matrícula no ensino superior, é civilmente capaz.","Todas as filhas são relativamente incapazes, pois são maiores de 16 e menores de 18 anos.","Todas as filhas são absolutamente incapazes, pois são menores de 18 anos, sujeitando-se à autoridade parental."]'::jsonb,
'A',
'O casamento é causa de emancipação, cessando a incapacidade do menor (art. 5º, parágrafo único, II, do CC). Clarice, casada, tornou-se plenamente capaz. A simples matrícula no ensino superior não emancipa (a emancipação legal pela colação de grau exige curso de ensino superior concluído). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Civil',
'Joaquim, de 71 anos, viúvo de Marta há quatro anos, ainda não finalizou a partilha dos bens deixados por ela, em razão de litígio entre o filho comum e a filha do primeiro casamento de Marta. Pretende estabelecer união com Joana sem concluir a partilha anterior. A respeito do regime de bens que deveria adotar, assinale a orientação correta.',
'',
'',
'["Separação convencional de bens, ante a idade de Joaquim.","Qualquer regime de bens, por força da autonomia que é assegurada a Joaquim.","Comunhão parcial de bens, de forma a resguardar os bens ainda não partilhados.","Separação obrigatória de bens, para evitar a confusão patrimonial entre os vínculos conjugais."]'::jsonb,
'D',
'É obrigatório o regime da separação de bens para a pessoa que se casar sem observar as causas suspensivas da celebração do casamento (art. 1.641, I, c/c art. 1.523, I, do CC). O viúvo que tiver filho do cônjuge falecido e não fizer o inventário e a partilha dos bens está sujeito à causa suspensiva, impondo-se o regime da separação obrigatória de bens. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Civil',
'Lucas matou seus pais, que deixaram herança significativa. Mateus, irmão mais novo, menor, está sob tutela do tio Ricardo, que se recusa a promover a exclusão de Lucas da sucessão por indignidade. Diante da situação, assinale a afirmativa correta.',
'',
'',
'["Apenas Mateus, ao atingir a maioridade, terá o direito de pedir judicialmente a exclusão de Lucas da sucessão, pois ele é o herdeiro direto prejudicado.","O Ministério Público tem legitimidade para requerer a exclusão de Lucas por indignidade, protegendo os direitos de Mateus, menor e incapaz de agir por conta própria.","Apenas Ricardo, na qualidade de tutor de Mateus, pode requerer judicialmente a exclusão de Lucas da sucessão, e a recusa de Ricardo impede que qualquer outra pessoa o faça.","Lucas só poderá ser excluído da sucessão se Ricardo, na qualidade de tutor, concordar, independentemente da legitimidade de outro herdeiro ou do Ministério Público para a propositura da ação."]'::jsonb,
'B',
'Nos casos de indignidade decorrente de homicídio doloso contra o autor da herança, o Ministério Público tem legitimidade para demandar a exclusão do herdeiro (art. 1.815, § 2º, do CC, incluído pela Lei nº 13.532/2017). Assim, o MP pode requerer a exclusão de Lucas, protegendo os interesses do menor. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Civil',
'Lorena resolveu alienar um imóvel avaliado em R$ 2.000.000,00 para Marta. Elaboraram minuta de contrato de compra e venda, especificando partes, bem, preço e forma de pagamento. Diante da urgência, a minuta foi impressa e assinada pelas partes e por duas testemunhas, Natália e Oscar. Assinale a afirmativa correta.',
'',
'',
'["O contrato de compra e venda é válido, uma vez que, na presença de duas testemunhas, o instrumento particular poderia ser utilizado.","O contrato de compra e venda é nulo, por desobediência de sua forma, mas poderá ser convertido em promessa de compra e venda.","O contrato de compra e venda é anulável, por vício de sua forma, decaindo as partes do direito de promover a anulação no prazo de dois anos de sua celebração.","O contrato de compra e venda é anulável por vício de forma. A lei permite, entretanto, a sua convalidação caso haja o reconhecimento das firmas de todos os envolvidos no Ofício de Notas."]'::jsonb,
'B',
'A escritura pública é essencial à validade dos negócios jurídicos que visem à constituição, transferência, modificação ou renúncia de direitos reais sobre imóveis de valor superior a 30 salários mínimos (art. 108 do CC). Celebrado por instrumento particular, o contrato de compra e venda é nulo por inobservância da forma prescrita em lei, podendo, contudo, ser aproveitado como promessa de compra e venda. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Civil',
'Eduardo vendeu imóvel urbano a Clara, estipulando em contrato particular que, caso ela decidisse vendê-lo, deveria notificá-lo previamente, conferindo-lhe o direito de adquirir o bem nas mesmas condições ofertadas a terceiros. Passados doze meses, Clara vendeu o imóvel a Flávio pelo mesmo valor pago, sem notificar Eduardo. Com base nas disposições sobre o direito de preempção, assinale a afirmativa correta.',
'',
'',
'["Eduardo não pode exigir o imóvel para si, mas poderá pleitear perdas e danos contra Clara, caso comprove que foi privado de exercer seu direito de preferência.","Eduardo poderá reaver o imóvel se provar que notificou Flávio, por escrito, antes da conclusão do negócio, mesmo que Clara tenha omitido a existência da preferência.","Eduardo perdeu o direito à preempção, pois este não pode ser exercido se o novo comprador não tinha ciência da cláusula de preferência existente no contrato anterior.","Eduardo pode exigir o imóvel para si, mediante depósito do valor ajustado com o terceiro, desde que o faça no prazo de até 180 dias da alienação, conforme admite o Código Civil."]'::jsonb,
'A',
'A preempção ou preferência convencional é direito de natureza obrigacional. Vendida a coisa sem observância da preferência, o titular preterido não pode reaver o bem do terceiro, mas pode haver perdas e danos do vendedor que descumpriu a cláusula (art. 518 do CC). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Civil',
'Sara, em 24/10/2023, outorgou a Vítor, seu filho, procuração por instrumento público para vender seu imóvel até 24/10/2026, gozando então de boa saúde mental. A partir de 2024 passou a sofrer demência, perdendo as habilidades cognitivas no início de 2025, sendo interditada, com Roberto, seu marido, como curador. Em 24/09/2025, Raul se interessou pelo imóvel e Vítor se apresentou como procurador. Na qualidade de advogado de Raul, assinale a orientação correta.',
'',
'',
'["Não recomendaria a aquisição do imóvel, figurando Vítor como representante de Sara, pois há possíveis interesses conflitantes entre eles.","Não recomendaria a aquisição do imóvel, figurando Vítor como representante de Sara, pois, diante da interdição, o contrato de mandato é extinto.","Recomendaria a aquisição do imóvel, figurando Vítor como representante de Sara, pois, apesar da incapacidade superveniente, o contrato de mandato é eficaz até o término do prazo, quando este for determinado.","Recomendaria a aquisição do imóvel, figurando Vítor como representante de Sara, pois, tendo a procuração sido outorgada por instrumento público, e estando Sara com boa saúde mental no momento da outorga, o mandato é válido e eficaz."]'::jsonb,
'B',
'A mudança de estado que inabilite o mandante a conferir os poderes é causa de extinção do mandato (art. 682, II, do CC). A interdição de Sara, por incapacidade superveniente, extingue o contrato de mandato outorgado a Vítor, não sendo recomendável a aquisição com base nessa procuração. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Estatuto da Criança e do Adolescente',
'Enzo, de 16 anos, subtraiu de um supermercado peças de picanha que totalizaram mais de R$ 2.000,00, sendo apreendido por um segurança no estacionamento, e confessou a autoria. O MP representou pela prática de ato infracional análogo a furto. Constatou-se ser a primeira passagem de Enzo pela Vara da Infância. Com base no ECA, assinale a afirmativa que apresenta a medida indicada.',
'',
'',
'["Não poderá ser aplicada a medida socioeducativa de advertência, tendo em vista a primariedade e a pouca lesividade do ato.","Ele deve receber a medida socioeducativa de internação, já que isso o afastará do meio criminoso e permitirá sua ressocialização.","A medida cabível é a semiliberdade, já que ele deve receber uma medida socioeducativa, mas não a ponto de mantê-lo totalmente privado de liberdade.","Não cabe a aplicação da medida socioeducativa de internação, porque o ato não foi cometido mediante grave ameaça ou violência à pessoa e não há reiteração em infrações graves."]'::jsonb,
'D',
'A internação só é admitida nas hipóteses taxativas do art. 122 do ECA: ato infracional cometido mediante grave ameaça ou violência à pessoa, reiteração no cometimento de outras infrações graves, ou descumprimento reiterado e injustificável de medida anterior. Como o furto não envolveu violência ou grave ameaça e não há reiteração, não cabe internação. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Estatuto da Criança e do Adolescente',
'Matheus, 17 anos, passa longos períodos na rua. Carolina, sua mãe, encontrou oportunidade de trabalho formal em um supermercado para que ele carregasse caixas e abastecesse o mercado durante a madrugada, entre meia-noite e quatro horas da manhã. Com dúvidas sobre a possibilidade do trabalho, consultou você. Assinale a orientação correta.',
'',
'',
'["Matheus, por estar no final da adolescência, pode trabalhar sem restrições.","Matheus não pode ingressar no mercado formal de trabalho, por ainda não ter completado 18 anos.","Matheus não pode trabalhar no cargo oferecido, já que o ECA veda o trabalho noturno entre as 22h de um dia e as 5h do dia seguinte.","Por ter 17 anos, Matheus pode trabalhar no mercado durante a madrugada, desde que a atividade não prejudique a sua frequência às aulas."]'::jsonb,
'C',
'É vedado ao adolescente o trabalho noturno, assim considerado o realizado entre as 22 horas de um dia e as 5 horas do dia seguinte (art. 67, I, do ECA, e art. 7º, XXXIII, da CRFB/88). Como o trabalho oferecido ocorre entre meia-noite e quatro horas, está dentro do período vedado. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito do Consumidor',
'Mário, superendividado, solicitou em juízo a instauração de processo de repactuação de dívidas, deferido com designação de audiência conciliatória. Na data fixada, a maior parte dos credores compareceu, exceto o Banco XYZ S.A., que preferiu não se submeter à conciliação. A respeito da ausência do Banco XYZ S.A., assinale a afirmativa correta.',
'',
'',
'["Acarreta o vencimento antecipado da dívida de Mário.","Interrompe os encargos da mora incidentes em seu crédito.","Permite-lhe ajuizar individualmente ação de cobrança do crédito.","Importa na submissão ao plano de repactuação de dívidas nas mesmas condições que os credores presentes."]'::jsonb,
'B',
'No processo de repactuação por superendividamento, a ausência injustificada de credor à audiência de conciliação, cujo crédito seja incluído, acarreta a suspensão da exigibilidade do débito e a interrupção dos encargos da mora (art. 104-A, § 2º, do CDC). Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito do Consumidor',
'Maria Victoria aceitou a oferta do cartão de crédito Black do Banco Y, do qual já era correntista há três anos. Deixou de pagar a fatura de julho (R$ 5.300,00). Passado o vencimento, o Banco Y debitou automaticamente da conta-corrente dela o valor de R$ 300,00 referente ao pagamento mínimo da fatura. Assinale a afirmativa correta.',
'',
'',
'["Nas hipóteses em que não há previsão contratual para tanto, é possível ao banco debitar automaticamente o valor integral da fatura do cartão de crédito da conta-corrente do consumidor, quando ultrapassados 60 dias do inadimplemento e notificado o consumidor do débito após 30 dias da data do seu vencimento.","Independentemente de serem contratos distintos, pelo fato de existir uma única relação jurídica entre o consumidor e o banco, pode o banco debitar o valor mínimo da fatura do cartão de crédito automaticamente da conta-corrente do consumidor em caso de inadimplemento.","Havendo saldo em conta, mesmo não havendo previsão contratual para tanto, é possível ao banco debitar automaticamente o valor integral da fatura do cartão de crédito da conta-corrente do consumidor, quando ultrapassados 30 dias do inadimplemento e notificado o consumidor do débito.","Tratando-se de contratos distintos, de cartão de crédito e de conta-corrente, o banco somente pode fazer o débito na conta-corrente do valor mínimo da fatura se essa possibilidade estiver prevista de forma expressa, clara e destacada no contrato celebrado com a instituição financeira."]'::jsonb,
'D',
'O contrato de cartão de crédito e o de conta-corrente são distintos. Conforme a jurisprudência do STJ, o débito automático na conta-corrente do valor devido em razão do cartão de crédito só é lícito se houver previsão contratual expressa, clara e destacada autorizando essa forma de pagamento. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Empresarial',
'Mercado Barra Velha Ltda. emitiu nota promissória no valor de R$ 19.800,00, com vencimento em 19 de dezembro de 2021. Não houve pagamento e o credor somente levou o título a protesto em 2 de dezembro de 2023, lavrado dois dias após. Com base na legislação da nota promissória e das condições de cobrança em face do emitente, assinale a afirmativa correta.',
'',
'',
'["O credor ainda poderá promover a execução da nota promissória em face do emitente em razão da interrupção da prescrição pelo protesto cambial.","O credor poderá promover a execução da nota promissória em face do emitente, considerando-se que ainda não expirou o prazo de cinco anos para a propositura da ação cambial.","O credor não pode promover a execução da nota promissória, em razão do protesto para a cobrança do emitente ser facultativo e do decurso do prazo de três anos da data do vencimento.","O título deveria ter sido apresentado até o primeiro dia útil após o vencimento, acarretando a perda do direito de ação em caso de inobservância dessa regra, embora o protesto seja facultativo para a cobrança."]'::jsonb,
'A',
'Conforme o gabarito oficial, o protesto cambial constitui causa de interrupção da prescrição (art. 202, III, do Código Civil). Lavrado o protesto da nota promissória, interrompe-se o prazo prescricional da pretensão executiva, de modo que o credor ainda poderá promover a execução em face do emitente, uma vez reiniciada a contagem do prazo a partir do ato interruptivo. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Empresarial',
'A padaria Jacaré dos Homens Ltda. teve a falência requerida por impontualidade no pagamento de duplicata de prestação de serviço, no valor de R$ 62.000,00, aceita e protestada. A devedora pretende depositar o valor cobrado. Acerca desse depósito, assinale a afirmativa correta.',
'',
'',
'["Deverá ser realizado em dinheiro, no prazo de quinze dias, contado da citação da devedora.","Compreenderá o valor total do crédito, acrescido de correção monetária, juros e honorários advocatícios.","Suspenderá o processo pelo prazo de trinta dias ou até que seja apreciado o mérito da cobrança, o que ocorrer por último.","Poderá ser realizado em dinheiro ou mediante prestação de caução real ou fidejussória no prazo de cinco dias, contado da citação."]'::jsonb,
'B',
'No pedido de falência fundado em impontualidade, o devedor pode, no prazo da contestação, efetuar o depósito elisivo da falência, correspondente ao valor total do crédito, acrescido de correção monetária, juros e honorários advocatícios (art. 98, parágrafo único, da Lei nº 11.101/2005). Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Empresarial',
'A sociedade Pinheiros & Filhos Ltda., constituída em 2017, com sede em Pancas/ES, pretende registrar como marca o sinal nominativo Pancadão para produtos alimentícios. Na mesma cidade, há estabelecimento do empresário individual Domingos Guandu, cujo título é Bar e Mercearia Pancadão, usado desde 2000, que revende os produtos de Pinheiros & Filhos. A respeito do registro de marca, assinale a afirmativa correta.',
'',
'',
'["Não há impedimento do registro de Pancadão como marca, pois o uso do mesmo sinal distintivo para título de estabelecimento de terceiro, ainda que anterior, é incapaz de retirar a originalidade da marca.","Não há impedimento do registro de Pancadão como marca, haja vista que o sinal distintivo é novo e só há proteção para o título de estabelecimento no âmbito da propriedade industrial com o registro no INPI.","Pancadão não poderá ser registrado como marca por ser a reprodução de sinal distintivo característico de título de estabelecimento de terceiro, quando suscetível de causar confusão ou associação entre a marca e o título de estabelecimento.","Pancadão não poderá ser registrado como marca em razão da prioridade de uso do título de estabelecimento Pancadão pelo empresário Domingos Guandu, em âmbito nacional, decorrente da inscrição do empresário na Junta Comercial."]'::jsonb,
'C',
'Não são registráveis como marca a reprodução ou imitação de título de estabelecimento ou nome de empresa de terceiros, suscetível de causar confusão ou associação (art. 124, V, da Lei nº 9.279/96). Como o título Bar e Mercearia Pancadão é anterior e há risco de confusão/associação, o sinal Pancadão não pode ser registrado como marca. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Empresarial',
'Em relação aos elementos caracterizadores do empresário, assinale a afirmativa correta.',
'',
'',
'["O empresário caracteriza-se pelo exercício profissional de atos de comércio, dentre os quais não se inclui a prestação de serviços.","O exercício de profissão intelectual, de natureza artística, literária ou científica em nenhuma hipótese poderá servir para caracterizar o empresário.","O empresário caracteriza-se pelo exercício profissional de atividade econômica organizada para produção ou circulação de bens ou de serviços.","A inscrição do empresário na Junta Comercial e o exercício de atividade econômica em caráter habitual são os dois requisitos para sua caracterização."]'::jsonb,
'C',
'Considera-se empresário quem exerce profissionalmente atividade econômica organizada para a produção ou a circulação de bens ou de serviços (art. 966 do CC). A inscrição na Junta Comercial é obrigatória, mas não é elemento constitutivo da qualidade de empresário, e o exercício de profissão intelectual pode caracterizar empresário quando o exercício da profissão constituir elemento de empresa. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Processual Civil',
'Machado de Assis ajuizou ação indenizatória contra Quincas Borba, por inadimplemento de contrato de prestação de serviços. O Juiz condenou o réu a pagar danos morais de R$ 5.000,00 e danos materiais a serem apurados em liquidação de sentença. Quincas Borba contratou você para interpor apelação buscando a reforma integral. Assinale a opção que apresenta sua orientação correta.',
'',
'',
'["Enquanto não houver o julgamento do recurso de apelação, não será possível realizar a liquidação de sentença no capítulo referente aos danos materiais.","Apesar de Quincas Borba ter ofertado apelação, Machado de Assis poderá requerer desde logo a liquidação do capítulo dos danos materiais em autos apartados.","A liquidação de sentença somente poderá ser promovida por requerimento de Machado de Assis, pois o réu não detém legitimidade para requerer a liquidação de sentença.","Quincas Borba, em liquidação de sentença, poderá rediscutir a obrigação de pagamento dos danos materiais, sendo lícito ao Juiz modificar a sentença anteriormente proferida."]'::jsonb,
'B',
'A liquidação pode ser feita na pendência de recurso, processando-se em autos apartados no juízo de origem (art. 512 do CPC). Assim, mesmo tendo o réu apelado, o autor pode requerer desde logo a liquidação do capítulo relativo aos danos materiais em autos apartados. Na liquidação é vedado rediscutir a lide ou modificar a sentença (art. 509, § 4º). Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Processual Civil',
'Juciara ajuizou ação contra Carla por danos de acidente de trânsito. Julgado procedente, Carla foi condenada a pagar R$ 20.000,00 por danos morais e materiais. Transitada em julgado, Carla imediatamente peticiona, antes de qualquer depósito, oferecendo o pagamento de R$ 15.000,00, com o devido depósito, pleiteando o reconhecimento do cumprimento da obrigação. Assinale a afirmativa correta.',
'',
'',
'["Concluindo o Juiz pela insuficiência do depósito, incidirão a multa e os honorários advocatícios de 10% sobre o valor total devido.","Juciara deverá ser intimada do depósito e, caso impugne o valor, somente poderá levantar o montante total após o Juiz decidir sobre a suficiência do depósito.","Caso Juciara não se oponha ao valor ofertado, ainda que inferior à condenação, será reconhecida como satisfeita a obrigação, com a consequente extinção do processo.","O cumprimento de sentença depende da expressa manifestação de vontade da parte autora, de modo que Carla não poderia realizar o depósito dos valores devidos antes de intimada para tanto."]'::jsonb,
'C',
'No cumprimento de sentença, se o executado deposita valor que entende devido e o exequente não se opõe, reconhece-se satisfeita a obrigação; a controvérsia surge apenas se houver impugnação ao valor. Como Carla depositou e, não havendo oposição de Juciara, considera-se satisfeita a obrigação com extinção do cumprimento. A multa e honorários do art. 523, § 1º, incidem apenas sobre o restante não pago quando há insuficiência impugnada. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Processual Civil',
'Paula ajuizou ação indenizatória por atraso de voo contra a companhia aérea Big Ben perante Juizado Especial Cível. Condenada, a companhia interpôs recurso inominado, provido pela Turma Recursal, que, porém, cometeu graves erros de aplicação de normas infraconstitucionais federais e constitucionais, sem incorrer em omissão, contradição, obscuridade ou erro material, estando a matéria constitucional pré-questionada. Assinale a afirmativa correta.',
'',
'',
'["Não há recurso cabível contra a decisão proferida pela Turma Recursal.","Paula deve opor embargos de declaração a fim de sanar os erros de interpretação de norma cometidos pela Turma Recursal.","Paula deve interpor recurso extraordinário contra a decisão da Turma Recursal, tendo em vista que a decisão incorreu em erros de aplicação de normas constitucionais.","Paula deve interpor recurso especial e recurso extraordinário simultaneamente, tendo em vista que o primeiro é cabível quando há violação à norma infraconstitucional federal, enquanto o segundo é cabível quando há violação à norma constitucional."]'::jsonb,
'C',
'Das decisões das Turmas Recursais dos Juizados Especiais não cabe recurso especial (Súmula 203 do STJ), mas é cabível recurso extraordinário ao STF, quando presente questão constitucional devidamente pré-questionada (Súmula 640 do STF). Logo, Paula deve interpor recurso extraordinário. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Processual Civil',
'Aziz ajuizou ação de procedimento comum contra Betina, pedindo R$ 10.000,00 por danos morais. O Juiz julgou parcialmente procedente, condenando Betina a R$ 6.000,00. Aberto o prazo de 15 dias úteis, apenas Aziz interpôs apelação, pedindo a reforma para o valor integral. O Magistrado abriu prazo para Betina apresentar contrarrazões. Assinale a afirmativa correta.',
'',
'',
'["Betina poderá apresentar contrarrazões ao recurso unicamente no prazo de 15 dias corridos.","Betina poderá apresentar contrarrazões ao recurso no prazo de 15 dias úteis e, nos 15 dias úteis subsequentes, poderá interpor apelação adesiva.","Betina poderá apresentar, no prazo concedido, contrarrazões ao recurso e interpor apelação adesiva; caso o recurso de apelação de Aziz seja inadmitido, o recurso de Betina também o será.","Betina poderá apresentar apenas contrarrazões ao recurso, não sendo possível a interposição de recurso adesivo no caso concreto, tendo em vista que o recurso adesivo não é admissível em apelação."]'::jsonb,
'C',
'A sucumbência foi recíproca (Aziz pediu R$ 10.000 e obteve R$ 6.000), de modo que Betina pode aderir ao recurso. O recurso adesivo é interposto no prazo de que a parte dispõe para as contrarrazões, admissível na apelação (art. 997, § 1º e § 2º, do CPC), e fica subordinado ao recurso principal: se este não for conhecido, o adesivo também não o será. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Processual Civil',
'João propõe ação de exigir contas contra o seu sócio, Vinícius, para verificar a regularidade da administração dos bens da pessoa jurídica Discos de Vinil Ltda. Vinícius contesta, sustentando que já prestara as contas extrajudicialmente, e junta a prestação de contas com a contestação. Nesse caso, continuando o procedimento, o Juiz deverá',
'',
'',
'["intimar João para se manifestar no prazo de 15 dias.","julgar antecipadamente o mérito, impondo a Vinícius o dever de prestar as contas.","extinguir o processo sem resolução do mérito, ante a falta de interesse de agir de João.","designar, necessariamente, uma audiência de instrução e julgamento para colher o depoimento pessoal das partes, a fim de deslindar a controvérsia."]'::jsonb,
'A',
'Na ação de exigir contas, apresentada a contestação acompanhada das contas pelo réu, o autor deve ser intimado a manifestar-se sobre elas no prazo de 15 dias, prosseguindo o processo nos termos do procedimento comum (art. 550, § 2º, do CPC). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Processual Civil',
'A Associação de Defesa dos Usuários de Smartphone (ADUS) ajuizou ação civil pública contra o fabricante X, requerendo a retirada do aparelho Y do mercado por vícios construtivos. Após a contestação, no curso da fase instrutória, houve abandono imotivado da causa pela associação. Assinale a afirmativa correta.',
'',
'',
'["É vedado ao Poder Público se habilitar como litisconsorte na causa.","O Ministério Público poderá assumir a titularidade da ação, assim como outra associação legitimada.","A ação deverá ser extinta sem resolução do mérito, fundado em abandono da causa, independentemente de requerimento do réu.","A associação, para propor a ação civil pública, deve necessariamente ter sido constituída há pelo menos um ano, vedada a dispensa de tal requisito por decisão judicial."]'::jsonb,
'B',
'Em caso de desistência infundada ou abandono da ação por associação legitimada, o Ministério Público ou outro legitimado assumirá a titularidade da ação civil pública (art. 5º, § 3º, da Lei nº 7.347/85). O requisito de pré-constituição de um ano pode ser dispensado pelo juiz (art. 5º, § 4º). Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Penal',
'Daniel chegou embriagado e exigiu que a esposa, Bianca, praticasse conjunção carnal. Diante da recusa, empregou coação física, mas os gritos de Bianca foram ouvidos por vizinhos que entraram e o imobilizaram antes da consumação. Daniel foi denunciado por estupro e, meses depois, antes do recebimento da denúncia, Daniel e Bianca reataram o casamento. Como advogado(a) de defesa de Daniel, cabe alegar',
'',
'',
'["a retratação tácita da representação da ofendida.","a causa de diminuição de pena em razão da tentativa.","a excludente de ilicitude ante o exercício regular de um direito.","o perdão tácito em razão da manutenção da sociedade conjugal."]'::jsonb,
'B',
'O estupro é ação penal pública incondicionada, não comportando retratação de representação nem perdão da ofendida. A conjunção carnal não se consumou por circunstâncias alheias à vontade do agente (intervenção dos vizinhos), configurando tentativa (art. 14, II, do CP), que enseja causa de diminuição de pena de um a dois terços. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Penal',
'Hermenegildo, com intenção de matar, sacou sua pistola carregada com 17 munições e disparou uma vez na direção de Ataulfo, atingindo-o no joelho. Após o disparo, emocionado com uma lembrança de infância trazida por Ataulfo, abandonou a arma no chão e foi embora, podendo prosseguir. Ataulfo sobreviveu sem sequelas. Assinale a afirmativa correta.',
'',
'',
'["Houve arrependimento voluntário, e Hermenegildo deve responder pelo crime que desejou consumar.","Houve crime impossível, pois a conduta de Hermenegildo mostrou-se absolutamente ineficaz.","Houve tentativa imperfeita, pois a hesitação de Hermenegildo impediu o resultado mais gravoso.","Houve desistência voluntária, e Hermenegildo deve responder pelos atos já praticados."]'::jsonb,
'D',
'Hermenegildo, podendo prosseguir na execução (dispunha de mais munições), voluntariamente cessou os atos executórios, configurando desistência voluntária (art. 15 do CP). Nesse caso, não responde pela tentativa de homicídio, mas apenas pelos atos já praticados (lesão corporal). Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Penal',
'Leandro e Leonardo planejaram matar Sérgio e, para tanto, simularam um assalto durante o qual efetuaram disparos. Foram conduzidos ao local em dois carros pilotados por José e Luciano, que estavam cientes do plano, mas se recusaram a pegar nas armas. Sérgio faleceu em razão dos ferimentos. Assinale a opção correta.',
'',
'',
'["José e Luciano são partícipes do crime de homicídio doloso consumado praticado por Leandro e Leonardo.","José e Luciano praticaram tentativa de roubo, enquanto Leandro e Leonardo praticaram o crime de homicídio.","José e Luciano são autores colaterais do crime de roubo, enquanto Leandro e Leonardo são autores mediatos do crime de homicídio.","José e Luciano não integram o concurso de agentes, pois somente Leandro e Leonardo detinham o domínio final da empreitada criminosa."]'::jsonb,
'A',
'José e Luciano, cientes do plano, contribuíram para o homicídio conduzindo os executores ao local, concorrendo de qualquer modo para o crime (art. 29 do CP). Como não detinham o domínio do fato nem executaram o núcleo do tipo, respondem como partícipes do homicídio doloso consumado. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Penal',
'Paulo, irritado com a derrota de seu clube, sacou arma de fogo e, mesmo não desejando diretamente matar alguém, mas assumindo o risco de fazê-lo, disparou diversas vezes na direção de uma estação de trem que sabia estar lotada e servir de ponto de encontro da torcida rival. Um dos disparos atingiu fatalmente um padre que ia à igreja. Sobre o crime praticado por Paulo, assinale a afirmativa correta.',
'',
'',
'["Homicídio, mediante dolo eventual.","Homicídio culposo, pois sua intenção não era causar a morte.","Tentativa de homicídio, pois sua intenção não era causar a morte.","Homicídio mediante preterdolo, pois o padre não estava entre os alvos de Paulo."]'::jsonb,
'A',
'Paulo, ao disparar diversas vezes contra local que sabia lotado, assumiu o risco de produzir o resultado morte, agindo com dolo eventual (art. 18, I, segunda parte, do CP). Consumada a morte, responde por homicídio doloso praticado mediante dolo eventual. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Josué foi condenado, por sentença transitada em julgado, pela prática de tráfico de drogas, a 9 anos de reclusão e 900 dias-multa. Durante a execução, entre as opções de trabalho e estudo, optou por aderir a cursos profissionalizantes a distância, com o objetivo de reduzir o tempo de encarceramento. Assinale a afirmativa correta.',
'',
'',
'["Josué tem direito à remição na razão de um dia de pena para cada dia de estudo.","O tempo de ensino a distância pode ser computado para fins de remição da pena.","Em caso de falta grave, o Juiz poderá revogar a integralidade do tempo remido do ato praticado.","A detração por trabalho na prisão é mais vantajosa do que a remição do tempo de pena pelo estudo."]'::jsonb,
'B',
'A remição pelo estudo é computada à razão de 1 dia de pena para cada 12 horas de frequência escolar, divididas em pelo menos 3 dias, e o ensino a distância pode ser realizado e computado para esse fim (art. 126 da LEP e Súmula 341 do STJ). Em caso de falta grave, o juiz poderá revogar até 1/3 do tempo remido, e não a integralidade. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Pedro, que consumia maconha, passou a plantá-la e a fabricar artesanalmente cigarros, mantendo-os em depósito e vendendo parte por aplicativo. Foi preso com 500 gramas, sendo acusado de tráfico por cinco vezes (importou sementes, plantou, fabricou cigarros, manteve em depósito e vendeu). Assinale a opção que indica a orientação jurídica correta.',
'',
'',
'["Pedro praticou apenas o crime de porte de drogas para o consumo pessoal, pois a droga foi produzida e apreendida no interior de sua casa.","Pedro praticou o crime de tráfico de drogas por cinco vezes, sob continuidade delitiva, razão pela qual faz jus à mitigação da pena total.","Pedro praticou crime único de tráfico de drogas, pois o tipo penal aplicável ao caso é misto, o que atrai a incidência do princípio da alternatividade.","Pedro praticou o crime de tráfico de drogas por cinco vezes, sob concurso formal, razão pela qual faz jus à mitigação da pena total."]'::jsonb,
'C',
'O art. 33 da Lei nº 11.343/2006 é tipo misto alternativo (contém vários núcleos: importar, plantar, fabricar, ter em depósito, vender etc.). A prática de mais de uma conduta no mesmo contexto fático, em relação à mesma droga, configura crime único, por força do princípio da alternatividade. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Processual Penal',
'Marivaldo foi denunciado por organização criminosa e peculato. A denúncia foi lastreada exclusivamente no depoimento de Sérgio, corréu que celebrou acordo de colaboração premiada com o MP. Recebida a denúncia, os réus foram citados: Marivaldo em 10/05 e Sérgio em 20/05. Na qualidade de advogado(a) de Marivaldo, assinale a opção que apresenta a conduta adequada.',
'',
'',
'["O prazo de apresentação da resposta à acusação é de dez dias a contar da citação do último corréu, tratando-se de prazo comum às partes.","O prazo de apresentação da resposta à acusação é de dez dias a contar da citação de Marivaldo, podendo ser encerrado antes do prazo de Sérgio.","Deve ser alegada a violação ao contraditório, pois o corréu delatado deve participar das tratativas de celebração do acordo de colaboração premiada.","Deve ser alegada a ausência de justa causa para o recebimento da denúncia, pois a palavra do colaborador, sem provas de corroboração, é insuficiente para o recebimento da denúncia."]'::jsonb,
'D',
'Nenhuma sentença condenatória será proferida com fundamento apenas nas declarações do colaborador (art. 4º, § 16, da Lei nº 12.850/2013), que precisam ser corroboradas por outros elementos. Fundada a denúncia exclusivamente na palavra do colaborador, sem elementos de corroboração, falta justa causa para o seu recebimento, o que deve ser alegado pela defesa. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Processual Penal',
'Vanessa foi denunciada por furto por ter subtraído um celular. Na audiência, a prova testemunhal apontou que ela utilizou grave ameaça (apontou um revólver para a vítima) como meio de obtenção do celular. A vítima não compareceu ao reconhecimento. O Juiz, usando a prova testemunhal, sem aditamento da denúncia pelo MP, condenou Vanessa por roubo. Assinale a opção que apresenta o que a defesa deve alegar na apelação.',
'',
'',
'["A violação ao princípio do ne bis in idem.","A violação ao princípio da correlação entre acusação e sentença.","A impossibilidade de a prova testemunhal servir para condenar a ré, inclusive pelo furto.","A nulidade do processo, porque a condenação dependeria necessariamente do reconhecimento pessoal feito pela vítima."]'::jsonb,
'B',
'A sentença deve guardar correlação com a imputação (princípio da correlação ou congruência). Surgindo prova de elementar não descrita na denúncia (grave ameaça), o Ministério Público deveria aditar a denúncia (mutatio libelli, art. 384 do CPP). Condenar por roubo sem aditamento, a partir de fato não descrito na inicial, viola o princípio da correlação entre acusação e sentença. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Processual Penal',
'Anderson está sendo investigado por extorsão mediante sequestro. Após a quebra dos sigilos bancário e fiscal, a polícia o indiciou, não existindo mais nenhuma diligência pendente. A defesa requereu acesso aos autos, negado pelo Delegado sob o argumento de inquisitividade e sigilo, e também pelo Juiz, por conter extratos bancários e fiscais. Assinale a opção que indica o argumento correto para garantir o acesso.',
'',
'',
'["O princípio de in dubio pro reo.","O direito absoluto de acessar o inquérito, em qualquer hipótese, como consectário da ampla defesa.","O princípio da publicidade, que deve ser aplicado tanto na fase de investigação quanto na fase processual.","É direito do advogado regularmente constituído ter acesso às diligências já documentadas, somado ao fato de não existir nenhuma diligência pendente."]'::jsonb,
'D',
'É direito do advogado examinar, em qualquer instituição responsável por conduzir investigação, os autos de flagrante e de investigações, findos ou em andamento, no que se refere às diligências já documentadas (art. 7º, XIV, do EOAB e Súmula Vinculante 14 do STF). O sigilo não alcança os elementos já documentados, sobretudo quando não há diligência pendente. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Processual Penal',
'Nicola injuriou Robson e Carlos, servidores públicos federais, por fatos relacionados a times de futebol, sem caráter racial. Robson ofereceu queixa-crime; Carlos deixou passar o prazo de decadência. O Juiz extinguiu a punibilidade sob o argumento de que a decadência de um dos envolvidos provocava a extinção em relação a todos. Assinale a opção que apresenta o recurso que você, advogado de Robson, deve apresentar.',
'',
'',
'["O princípio da eventualidade demonstra o equívoco da decisão do Juiz.","O direito de queixa é autônomo para cada vítima, o que torna impossível, juridicamente, a extensão da decadência nesse caso.","A decadência não extingue a punibilidade, sendo apenas uma causa de diminuição a ser levada em consideração na dosimetria da pena.","A propositura de queixa por parte de Robson interrompeu o prazo de decadência para Carlos, uma vez que não há que se falar em extinção de punibilidade."]'::jsonb,
'B',
'Havendo pluralidade de ofendidos, o direito de queixa é autônomo em relação a cada vítima. A decadência operada quanto a Carlos atinge apenas a sua pretensão, não se estendendo a Robson, que exerceu tempestivamente o direito de queixa. Logo, é juridicamente impossível a extensão da decadência. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Processual Penal',
'Leandro ofereceu queixa-crime no Juizado Especial Criminal. O Juiz rejeitou a queixa sustentando a existência de decadência. Na condição de advogado(a) de Leandro, assinale a opção que indica o recurso cabível contra a decisão que rejeitou a queixa.',
'',
'',
'["Apelação.","Recurso inominado.","Carta testemunhável.","Recurso em sentido estrito."]'::jsonb,
'A',
'No âmbito dos Juizados Especiais Criminais, da decisão de rejeição da denúncia ou da queixa cabe apelação, no prazo de 10 dias (art. 82 da Lei nº 9.099/95). Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Processual Penal',
'Débora, primária e sem antecedentes, foi presa em flagrante no Aeroporto de Guarulhos ao desembarcar do exterior com um simulacro de arma de fogo (de importação proibida) na bagagem. Foi enquadrada no delito de tráfico internacional de armas (Art. 18 do Estatuto do Desarmamento, pena de 8 a 16 anos, com aumento de metade). Como advogado(a), assinale a afirmativa que contém as teses defensivas corretas.',
'',
'',
'["A atipicidade do fato, ante o crime impossível e, ainda que assim não fosse, há incompetência absoluta da Justiça Federal.","A desclassificação para contrabando (pena de 2 a 5 anos) e o cabimento de liberdade provisória, com ou sem medidas cautelares diversas da prisão.","Como Débora é mulher e não tem antecedentes criminais, e o fato não foi cometido mediante violência ou grave ameaça, é cabível a substituição da prisão preventiva por domiciliar.","O fato foi meramente tentado, de forma que a pena mínima cominada com a redução máxima pela tentativa é igual a 4 anos, tornando cabível o acordo de não persecução penal."]'::jsonb,
'B',
'Um simulacro não é arma de fogo, de modo que não se configura o tráfico internacional de armas, mas sim o crime de contrabando (importação de mercadoria proibida, art. 334-A do CP, pena de 2 a 5 anos). Com a desclassificação, torna-se cabível a liberdade provisória, com ou sem medidas cautelares diversas da prisão. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Previdenciário',
'Antônio José, segurado obrigatório do RGPS, completou 65 anos de idade, após 30 anos ininterruptos de atividade remunerada como segurado empregado. Procurou você para ser orientado sobre sua aposentadoria. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["Antônio não possui carência para fins de aposentadoria.","Antônio já possui idade e carência para fins de aposentadoria.","Antônio somente poderia, no caso narrado, se aposentar após 35 anos de contribuição.","Antônio não possui idade mínima, na forma fixada pela Constituição da República de 1988."]'::jsonb,
'B',
'Após a EC nº 103/2019, a aposentadoria programada do segurado urbano do RGPS exige, para o homem, idade mínima de 65 anos e carência/tempo mínimo de contribuição de 15 anos (180 contribuições). Antônio tem 65 anos e 30 anos de contribuição ininterrupta como empregado, preenchendo idade e carência. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Previdenciário',
'Manuela Dias, empregada doméstica, procurou você para orientação sobre demanda relacionada a acidente de trabalho ocorrido durante seus afazeres na residência da empregadora, que gerou incapacidade temporária. Assinale a opção que indica a orientação correta.',
'',
'',
'["Manuela poderá usufruir de benefício previdenciário por incapacidade temporária, ainda que possua menos de 12 contribuições mensais.","O acidente de trabalho somente será reconhecido como tal caso haja incapacidade mínima de seis meses para o trabalho, avaliada por perícia médica.","A conexão da incapacidade com o trabalho poderá ser aferida pelo INSS, mas nunca com a aplicação do Nexo Técnico Epidemiológico Previdenciário – NTEP.","A incapacidade de Manuela, na situação narrada, nunca poderia ser decorrente de doenças, pois o acidente de trabalho é sempre súbito, imediato e instantâneo."]'::jsonb,
'A',
'O benefício por incapacidade temporária decorrente de acidente de trabalho independe de carência (art. 26, II, da Lei nº 8.213/91). Assim, Manuela pode receber o benefício ainda que possua menos de 12 contribuições mensais. O NTEP pode ser aplicado pelo INSS, e a doença ocupacional equipara-se a acidente de trabalho. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito do Trabalho',
'Paulo foi contratado pela sociedade Novos Horizontes como técnico em informática. João, por readaptação, exerce a mesma função há seis meses. Luciana foi contratada um ano depois de Paulo, na mesma função, sem diferença no trabalho. Não há quadro de carreira. João recebe R$ 600,00 a mais que Paulo, que recebe R$ 500,00 a mais que Luciana. Consultado por Luciana, assinale a resposta correta.',
'',
'',
'["A diferença salarial não se justifica em nenhuma das hipóteses, cabendo a equiparação ao salário de maior valor.","Paulo pode ganhar mais que Luciana pelo fato de ser homem, mas, em relação a João, a diferença salarial é injustificável.","Paulo pode ganhar mais que Luciana em razão do tempo na função, que é a razão de Luciana não fazer jus ao mesmo salário que João.","A diferença salarial de Luciana em relação a Paulo não se justifica, pelo que os dois deveriam receber o mesmo salário, mas no caso de João, por ser readaptado, a diferença salarial é cabível."]'::jsonb,
'D',
'A equiparação salarial exige identidade de função, mesma produtividade e perfeição técnica, diferença de tempo na função não superior a 4 anos e mesmo empregador e localidade (art. 461 da CLT). Entre Paulo e Luciana (mesma função, menos de 4 anos de diferença, sem quadro de carreira) cabe equiparação. Já João, por estar readaptado em nova função por motivo de deficiência ou reabilitação, não serve de paradigma (art. 461, § 4º), sendo cabível a diferença. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito do Trabalho',
'Uma ONG realiza parcerias com entidades privadas visando à inserção e ao aprendizado de menores no mercado de trabalho, estimulando o primeiro emprego. Consultou você sobre o trabalho do menor como empregado. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["É permitido ao menor de 18 e maior de 16 anos, o trabalho em bilheterias em cinemas e teatros, das 22 às 24 horas, a fim de não gerar prejuízo à frequência escolar.","É permitido ao maior de 16 anos e menor de 18 anos, o trabalho como frentista em postos de gasolina.","É permitido ao menor o trabalho em quiosques da orla das praias destinados à venda de comidas de todo o gênero e bebidas alcoólicas e não alcoólicas.","É permitido ao menor, a partir de 14 anos, trabalhar na condição de aprendiz."]'::jsonb,
'D',
'É proibido qualquer trabalho a menores de 16 anos, salvo na condição de aprendiz, a partir dos 14 anos (art. 7º, XXXIII, da CRFB/88, e art. 403 da CLT). O trabalho noturno, perigoso ou insalubre é vedado ao menor de 18 anos, afastando as demais alternativas. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito do Trabalho',
'Pedro trabalha numa sociedade empresária desde 2022. Na norma coletiva de sua categoria há uma cláusula que fixa o intervalo intrajornada em 20 minutos para a jornada superior a seis horas diárias e outra prevendo que a remuneração do trabalho noturno será igual à do diurno. De acordo com a CLT, assinale a afirmativa correta.',
'',
'',
'["Ambas as cláusulas da norma coletiva são inválidas.","Somente a cláusula relativa ao trabalho noturno é válida.","Somente a cláusula relativa ao intervalo intrajornada é válida.","Ambas as cláusulas são válidas, porque relativas a direitos passíveis de negociação."]'::jsonb,
'A',
'O intervalo intrajornada mínimo para jornadas superiores a 6 horas pode ser reduzido por negociação coletiva, mas respeitado o limite mínimo de 30 minutos (art. 611-A, III, da CLT). A cláusula que fixa 20 minutos é inválida. O adicional noturno é direito que não pode ser suprimido por norma coletiva (art. 611-B, parágrafo único/incisos), de modo que igualar a remuneração noturna à diurna também é inválido. Ambas as cláusulas são inválidas. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito do Trabalho',
'A Distribuidora de Bebidas Bom Paladar Ltda. pretende instituir política de incentivo aos empregados, com fornecimento de uniformes novos, computadores portáteis, transporte coletivo de ida e volta ao trabalho em ônibus da empresa, além de incentivo à educação com pagamento de mensalidades e bolsa-livros. Observado o texto da CLT, assinale a resposta correta sobre a integração dos valores à remuneração.',
'',
'',
'["Todos os benefícios concedidos não integrarão a remuneração dos empregados.","Apenas a concessão de uniformes novos não integrará a remuneração dos empregados.","Apenas o benefício de incentivo à educação não integrará a remuneração dos empregados.","Apenas o fornecimento de transporte não integrará a remuneração dos empregados, por ser tempo à disposição do empregador."]'::jsonb,
'A',
'Nos termos do art. 458, § 2º, da CLT, não são consideradas salário e não integram a remuneração: vestuários e equipamentos para a prestação do serviço, educação, transporte destinado ao deslocamento para o trabalho, assistência médica, seguros, previdência privada, entre outros. Assim, nenhum dos benefícios descritos integra a remuneração. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito do Trabalho',
'Jonas trabalhava em uma sociedade empresária desde 2021. Com a nova chefia, em janeiro de 2025, passou a ser explícita e sistematicamente discriminado em razão de sua orientação sexual, mantendo relação homoafetiva de conhecimento geral. Foi dispensado sem justa causa em março de 2025. Considerando os fatos e a norma de regência, assinale a orientação correta.',
'',
'',
'["Nada há a fazer, porque é direito do empregador efetuar a dispensa sem justa causa.","O direito que assiste a Jonas é ser reintegrado, com ressarcimento integral de todo o período de afastamento.","Jonas poderá optar entre a reintegração ou a percepção, em dobro, da remuneração do período de afastamento.","Caberá apenas o pagamento, de forma simples, do período compreendido entre a dispensa e o ajuizamento da ação."]'::jsonb,
'C',
'Reconhecida a dispensa discriminatória (Lei nº 9.029/95, art. 4º), é facultado ao empregado optar entre a reintegração, com ressarcimento integral do período de afastamento, ou a percepção, em dobro, da remuneração do período de afastamento, em ambos os casos com correção e juros. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual do Trabalho',
'Jorge Lucas trabalhou por um ano na Alfa Beta Gama Ltda. Insatisfeito por trabalhar horas extras sem recebê-las, apesar de registrá-las nos controles de ponto, pediu demissão. Na rescisão, por equívoco do Departamento de Pessoal, foi pago valor equivalente ao aviso prévio. Dias depois, Jorge ajuizou reclamação pleiteando horas extras. À luz do entendimento consolidado do TST, assinale a afirmativa correta.',
'',
'',
'["Tendo sido pago o valor do aviso prévio espontaneamente pela sociedade empresária, está preclusa qualquer argumentação a esse respeito.","Deverá ser alegada a dedução dos valores pagos a título de aviso prévio da condenação ao pagamento dos valores relativos às horas extras.","Deverá ser alegada a compensação do valor pago a título do aviso prévio com eventual condenação em horas extras, o que deverá ser feito em sede de contestação.","Deverá ser alegada a quitação do valor pago a título do aviso prévio com eventual condenação em horas extras, o que poderá ser feito em qualquer momento processual na instância ordinária."]'::jsonb,
'C',
'A compensação, na Justiça do Trabalho, só pode ser arguida como matéria de defesa, na contestação (Súmula 48 do TST), e restringe-se a dívidas de natureza trabalhista. Assim, o pagamento indevido do aviso prévio deve ser alegado como compensação em sede de contestação. Correta a alternativa C.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual do Trabalho',
'Em reclamação na 60ª Vara do Trabalho de Maringá, o autor requereu o pagamento do vale-transporte, que jamais fora pago, e diferenças do FGTS não depositado em parte do contrato. A empresa sustentou que o empregado não necessitava de vale-transporte, pois residia perto e ia a pé, e que recolheu o FGTS corretamente. Sobre o ônus da prova, à luz do entendimento consolidado do TST, assinale a afirmativa correta.',
'',
'',
'["Tanto em relação ao vale-transporte quanto ao FGTS, o ônus da prova caberá ao empregado.","Em relação ao vale-transporte caberá à sociedade empresária; quanto ao FGTS, ao trabalhador.","Em relação ao vale-transporte, caberá ao trabalhador; quanto ao FGTS, à sociedade empresária.","Tanto em relação ao vale-transporte quanto ao FGTS, o ônus da prova caberá à sociedade empresária."]'::jsonb,
'D',
'Cabe ao empregador o ônus de comprovar que o empregado não satisfaz os requisitos para o vale-transporte ou que não pretende utilizá-lo (jurisprudência do TST). Quanto ao FGTS, é do empregador o ônus de provar a regularidade dos depósitos (Súmula 461 do TST). Logo, ambos os ônus recaem sobre a sociedade empresária. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual do Trabalho',
'Em reclamação na 58ª Vara do Trabalho de Cuiabá, o pedido foi julgado procedente em parte. A sociedade reclamada recorreu ordinariamente e o reclamante, de forma adesiva. No Tribunal Regional, o Relator verificou que o recurso ordinário da reclamada era intempestivo, interposto no 16º dia da publicação da sentença. Assinale a afirmativa correta.',
'',
'',
'["Os dois recursos não serão conhecidos.","O recurso ordinário não será conhecido, e o recurso adesivo será apreciado.","O recurso adesivo não será conhecido, salvo se o reclamante recorrente tiver feito o preparo na forma da lei.","Equivocado o Relator, pois, havendo recurso adesivo, o prazo é contado em dobro, pelo que o recurso ordinário é tempestivo e será conhecido."]'::jsonb,
'A',
'O recurso adesivo é subordinado ao recurso principal; não sendo conhecido o recurso principal (aqui, por intempestividade do recurso ordinário da reclamada), o recurso adesivo também não será conhecido (art. 997, § 2º, III, do CPC, aplicável ao processo do trabalho). Logo, os dois recursos não serão conhecidos. Correta a alternativa A.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual do Trabalho',
'Daniele, assistida pelo seu sindicato de classe, ajuizou reclamação trabalhista contra o ex-empregador. Na audiência, as partes fizeram acordo de R$ 200.000,00, mas o Juiz indeferiu a gratuidade de justiça à autora, porque sua situação financeira era comprovadamente confortável, fixando as custas em R$ 4.000,00. Como nada foi convencionado no acordo, assinale a opção que indica quem pagará as custas.',
'',
'',
'["O reclamado, pois as custas sempre serão pagas pelo réu.","O sindicato de classe deverá pagar as custas, integralmente.","Daniele, pois além da sua situação financeira, fez um acordo de vultoso valor.","Se de outra forma não for convencionado, o pagamento das custas caberá em partes iguais aos litigantes."]'::jsonb,
'D',
'Nos termos do art. 789, § 3º, da CLT, sendo o processo encerrado por acordo e nada convencionado em contrário, as custas serão pagas em partes iguais pelos litigantes. Correta a alternativa D.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual do Trabalho',
'Jonas, executado na Justiça do Trabalho, reclamou que um Oficial de Justiça chegou à sua residência em uma quinta-feira, dia útil, às 5h30, com ordem judicial para penhorar o imóvel, sendo certo que o mandado não continha nenhuma previsão de excepcionalidade. A revolta reside no horário de chegada. Considerando a CLT, assinale a afirmativa correta.',
'',
'',
'["O procedimento é regular porque a lei não prevê horário para a prática dos atos processuais.","O Oficial de Justiça está equivocado, porque somente poderia realizar o ato processual a partir das 6 horas.","O procedimento é irregular, porque a lei prevê que os atos processuais podem ser feitos a partir das 7 horas.","Se os atos podem ser realizados até mesmo no domingo, mesmo sem a autorização do Juiz, com igual razão pode ser feito durante a semana, às 5h30."]'::jsonb,
'B',
'Nos termos do art. 770 da CLT, os atos processuais serão públicos e realizar-se-ão nos dias úteis das 6 às 20 horas. A penhora, porém, poderá realizar-se em domingo ou dia feriado, mediante autorização expressa do juiz. Como o ato se deu às 5h30, antes das 6 horas, o Oficial de Justiça está equivocado. Correta a alternativa B.'
from public.exams where slug = 'oab-46-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
