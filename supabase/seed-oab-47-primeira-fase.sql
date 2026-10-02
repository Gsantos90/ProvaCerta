-- Seed: OAB - 47o Exame de Ordem Unificado (1a fase)
-- Ordem dos Advogados do Brasil - Banca FGV - Tipo 1 (Branca) - 80 questoes
-- Gabarito oficial (Tipo 1):
--  1-A  2-B  3-D  4-C  5-C  6-D  7-B  8-B  9-D 10-C
-- 11-C 12-A 13-D 14-C 15-C 16-A 17-D 18-A 19-C 20-B
-- 21-A 22-C 23-A 24-C 25-B 26-B 27-A 28-B 29-D 30-C
-- 31-B 32-C 33-C 34-D 35-C 36-D 37-C 38-A 39-D 40-A
-- 41-D 42-A 43-D 44-B 45-A 46-D 47-* (Anulada) 48-C 49-A 50-D
-- 51-B 52-B 53-C 54-D 55-B 56-D 57-B 58-B 59-D 60-A
-- 61-A 62-C 63-B 64-D 65-D 66-C 67-B 68-B 69-B 70-D
-- 71-A 72-D 73-B 74-A 75-D 76-A 77-B 78-D 79-C 80-A
-- Observacao: a questao 47 foi ANULADA pela banca. Para ela foi mantida a
-- alternativa de referencia, com a explicacao indicando a anulacao.

insert into public.exams (slug, title, source, year)
values ('oab-47-primeira-fase', 'OAB 47º Exame de Ordem Unificado (1ª fase)', 'oab', '2026')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Ética e Estatuto da OAB',
'O advogado Fabrício foi contratado pelo Banco Alfa, por meio de sua sociedade individual de advocacia, para representá-lo em todas as ações de responsabilidade civil no Estado Beta. Por estar viajando a lazer, Fabrício perdeu o prazo de contestação em 25 ações, acarretando revelia e condenação do banco a alto montante. Sobre a responsabilidade pessoal de Fabrício, com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Fabrício responde de forma subsidiária e ilimitada pelos danos causados ao Banco Alfa, sem prejuízo da responsabilidade disciplinar que pode ser apurada em virtude de sua omissão.","Fabrício responde de forma solidária com a sociedade individual de advocacia pelos danos causados ao Banco Alfa, uma vez que sua responsabilidade é compartilhada com a sociedade.","Fabrício não pode ser responsabilizado pelos danos causados ao Banco Alfa, pois a sua sociedade individual de advocacia limita a sua responsabilidade pessoal pelas ações no exercício da advocacia.","A responsabilidade de Fabrício pelos danos causados ao Banco Alfa é limitada, devendo ser assumida apenas pela sociedade individual de advocacia, uma vez que a sociedade detém a personalidade jurídica."]'::jsonb,
'A',
'O sócio da sociedade individual de advocacia responde subsidiária e ilimitadamente pelos danos causados aos clientes por ação ou omissão no exercício da advocacia, sem prejuízo da responsabilidade disciplinar (art. 17 do EOAB). A existência da sociedade não exclui a responsabilidade pessoal do advogado. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Ética e Estatuto da OAB',
'Johannes, finlandês e advogado em seu país, sofreu acidente de trânsito em viagem ao Brasil e deseja ajuizar ação de ressarcimento. Entende que, por ser advogado na Finlândia, não precisa estar inscrito na OAB. A ação não será nos Juizados Especiais nem pelo rito sumaríssimo. Assinale a afirmativa correta.',
'',
'',
'["Johannes poderá atuar como advogado no caso, desde que tenha a inscrição suplementar na Seccional da OAB competente para o local onde a ação será proposta.","Johannes não pode exercer a advocacia no Brasil sem estar inscrito na Ordem dos Advogados do Brasil, independentemente de sua qualificação como advogado na Finlândia.","Johannes pode atuar livremente como advogado no processo judicial, por já possuir inscrição válida na Finlândia, desde que comprove a sua habilitação perante o Juízo brasileiro.","Johannes poderá ajuizar a ação como parte autora sem necessidade de advogado, visto que os danos materiais e hospitalares são direitos disponíveis que dispensam a assistência jurídica em juízo comum."]'::jsonb,
'B',
'O exercício da advocacia no Brasil é privativo de inscrito na OAB (art. 3º do EOAB). A qualificação como advogado em país estrangeiro não habilita, por si, a atuação no Brasil. Johannes precisaria obter inscrição na OAB para exercer a advocacia. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Ética e Estatuto da OAB',
'Benício, com câncer em metástase avançada, necessita urgentemente de medicamentos negados pela Secretaria de Saúde e pede a Pedro, seu vizinho e advogado, que ajuíze ação com tutela de urgência. Devido ao estado precário de saúde, Benício não está temporariamente em condições de assinar a procuração. Com base no Estatuto da OAB e na urgência, assinale a afirmativa correta.',
'',
'',
'["A ausência de procuração impede qualquer postulação em juízo ou atividade de consultoria e assessoria jurídica, que não dispensam a outorga de mandato.","Pedro poderá atuar sem a procuração por tempo indeterminado, independentemente da recuperação da saúde de Benício e da manutenção do estado de urgência.","Pedro não poderá atuar judicialmente sem a apresentação da procuração assinada por Benício, pois a outorga do mandato é imprescindível para a validade de qualquer petição inicial.","Pedro poderá atuar imediatamente sem a procuração, devendo apresentar o documento no prazo máximo de 15 dias, prorrogável por igual período, conforme previsto no Estatuto da OAB."]'::jsonb,
'D',
'O advogado pode atuar sem procuração em caso de urgência, obrigando-se a apresentá-la no prazo de 15 dias, prorrogável por igual período (art. 5º, § 1º, do EOAB, e art. 104 do CPC). Diante da urgência e da impossibilidade temporária de Benício assinar, Pedro pode postular imediatamente e regularizar o mandato depois. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Ética e Estatuto da OAB',
'Tiago, advogado, atuou na defesa de Otávio em processo criminal por estelionato e também prestava serviços jurídicos para a empresa de Otávio, supostamente usada para o delito. O Ministério Público requereu a oitiva de Tiago como testemunha, o que foi deferido pelo Magistrado. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Tiago deve depor como testemunha, desde que seu cliente Otávio autorize formalmente a prestação das informações necessárias.","Tiago somente poderá recusar-se a depor caso o Tribunal de Ética e Disciplina da OAB autorize previamente tal negativa com base na avaliação de conflito ético.","Tiago pode recusar-se a depor sobre os fatos relacionados ao caso, independentemente de autorização de Otávio, pois tal depoimento estaria acobertado pelo sigilo profissional.","Tiago está obrigado a prestar depoimento como testemunha, pois a prestação de serviços para a empresa de Otávio não se confunde com o sigilo profissional mantido em relação à defesa pessoal do acusado."]'::jsonb,
'C',
'O advogado tem o direito e o dever de recusar-se a depor sobre fato relacionado a pessoa de quem seja ou tenha sido advogado, ainda que autorizado ou solicitado pelo cliente, bem como sobre fato que constitua sigilo profissional (art. 7º, XIX, do EOAB). O sigilo abrange os fatos de que teve conhecimento em razão do exercício profissional, incluindo os serviços prestados à empresa de Otávio. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ética e Estatuto da OAB',
'Arnaldo, deputado federal em exercício, que não integra a Mesa Diretora da Câmara dos Deputados, resolveu manter ativa a sua inscrição na OAB, cumulando as duas funções. Considerando o Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Arnaldo deve ter a sua inscrição na OAB cancelada, por passar a exercer, em caráter definitivo, atividade incompatível com o exercício da advocacia.","Arnaldo deveria requerer licença da Ordem, por passar a exercer, em caráter temporário, uma atividade incompatível com o exercício da advocacia.","Arnaldo não incorrerá em qualquer irregularidade no exercício da advocacia, desde que não postule contra ou a favor das pessoas jurídicas de direito público, empresas públicas, sociedades de economia mista, fundações públicas, entidades paraestatais ou empresas concessionárias ou permissionárias de serviço público, vinculadas a qualquer das esferas de governo (municipal, estadual ou federal).","Arnaldo somente incorrerá em irregularidade no exercício da advocacia se postular contra ou a favor das pessoas jurídicas de direito público, empresas públicas, sociedades de economia mista, fundações públicas, entidades paraestatais ou empresas concessionárias ou permissionárias de serviço público, vinculadas à União, não existindo vedação de atuação em face de entidades estaduais ou municipais."]'::jsonb,
'C',
'Os membros do Poder Legislativo (deputados e senadores), salvo os que ocupam cargos na Mesa Diretora, estão em situação de impedimento (proibição parcial), e não de incompatibilidade total. Podem advogar, desde que não contra ou a favor das pessoas jurídicas de direito público, entidades da Administração indireta e concessionárias/permissionárias de serviço público, de qualquer esfera (art. 30, II, do EOAB). Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Ética e Estatuto da OAB',
'O advogado João responde a processo disciplinar no Tribunal de Ética e Disciplina por denúncia de que teria recebido valores da parte contrária relativos ao objeto do mandato sem autorização do cliente. O relator Paulo, em nome da publicidade e transparência, entendeu que o procedimento deveria tramitar de forma pública, com acesso de terceiros. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Está correta, porque o princípio da publicidade deve prevalecer em processos que envolvam a ética profissional, por seu interesse coletivo.","É válida, desde que homologada pela presidência do Tribunal de Ética e Disciplinar da OAB, pois o relator não tem competência isolada para afastar o sigilo processual.","Pode ser mantida, se o advogado João concordar expressamente com a publicidade e a infração praticada não for infamante, tornando desnecessária a manutenção do sigilo legal.","Está incorreta, porque o processo disciplinar deve tramitar em sigilo até o seu término, e somente as partes, seus defensores e a autoridade judiciária competente têm acesso às suas informações."]'::jsonb,
'D',
'O processo disciplinar tramita em sigilo, até o seu término, só tendo acesso às suas informações as partes, seus defensores e a autoridade judiciária competente (art. 72, § 2º, do EOAB). Logo, a decisão de dar publicidade geral ao procedimento está incorreta. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Ética e Estatuto da OAB',
'No departamento jurídico de uma empresa, José afirma que, em casos graves, poderia ser aplicada ao advogado a pena de aposentadoria compulsória, especialmente ao advogado empregado. Antônio afirma que o Estatuto prevê as sanções de censura pública, suspensão, exclusão e multa. Com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["José está correto, pois a aposentadoria compulsória é sanção disciplinar aplicável a advogados empregados; Antônio também está correto ao indicar a existência das sanções de censura pública, suspensão, exclusão e multa.","José está incorreto, pois a aposentadoria compulsória não constitui sanção disciplinar aplicável ao advogado; Antônio também está incorreto ao afirmar que a censura é pública, já que a sanção de censura não pode ser objeto de publicidade.","José está incorreto, pois a aposentadoria compulsória não é sanção disciplinar prevista no Estatuto da OAB, enquanto Antônio está totalmente correto ao afirmar que as sanções disciplinares são censura pública, suspensão, exclusão e multa.","José está correto ao afirmar que a aposentadoria compulsória pode ser aplicada como sanção disciplinar a advogados empregados, enquanto Antônio erra ao afirmar que a multa está entre as sanções disciplinares previstas no Estatuto da OAB."]'::jsonb,
'B',
'As sanções disciplinares previstas no Estatuto são censura, suspensão, exclusão e multa (art. 35 do EOAB). A aposentadoria compulsória não é sanção disciplinar aplicável ao advogado, de modo que José está incorreto. A censura, por sua vez, não é pública (é aplicada reservadamente), de modo que Antônio também errou ao qualificá-la como pública. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Ética e Estatuto da OAB',
'O advogado Rogério tem domicílio profissional em João Pessoa, PB, e, sem pretender estabelecer escritório em outras localidades, passou a atuar eventualmente em capitais nordestinas, assumindo duas causas em Recife, PE, e quatro causas em Natal, RN, ao longo do mesmo ano. À luz do Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Rogério deverá promover a inscrição suplementar apenas no Conselho Seccional do Rio Grande do Norte, pois a intervenção judicial que exceder três causas por ano caracteriza habitualidade.","Rogério não precisa promover a inscrição suplementar nem em Pernambuco nem no Rio Grande do Norte, pois a atuação em até cinco causas por ano em cada unidade federativa não caracteriza exercício habitual da profissão.","Rogério deverá promover a inscrição suplementar apenas no Conselho Seccional de Pernambuco, pois a atuação em dois processos nessa unidade federativa já caracteriza exercício habitual da advocacia naquele território.","Rogério deverá promover a inscrição suplementar tanto no Conselho Seccional de Pernambuco quanto no do Rio Grande do Norte, pois qualquer atuação profissional fora do território da inscrição principal exige a inscrição suplementar."]'::jsonb,
'B',
'O advogado deve promover inscrição suplementar quando passar a exercer habitualmente a profissão em território de outro Conselho Seccional, considerando-se habitual a intervenção judicial que exceder cinco causas por ano (art. 10, § 2º, do EOAB). Como Rogério atuou em quatro causas no Rio Grande do Norte e duas em Pernambuco, não excedendo cinco em nenhuma das unidades federativas, não há habitualidade e não é exigida a inscrição suplementar em nenhum dos Estados. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Filosofia do Direito',
'Em um país, o Poder Legislativo aprovou lei que restringiu severamente a liberdade de expressão nas redes sociais. Um grupo de cidadãos alega que, embora regularmente aprovada, a lei viola direitos fundamentais inerentes à pessoa humana. Com base nas correntes do jusnaturalismo e do positivismo jurídico, assinale a afirmativa correta.',
'',
'',
'["O jusnaturalismo afirma que toda lei regularmente aprovada deve ser obedecida, independentemente de seu conteúdo moral.","O positivismo jurídico e o jusnaturalismo concordam que a validade da norma depende exclusivamente do procedimento legislativo adotado.","O positivismo jurídico sustenta que a validade da lei depende de sua conformidade com os princípios morais universais, razão pela qual a norma deve ser invalidada.","O jusnaturalismo sustenta que existem direitos anteriores e superiores ao direito positivo, que podem fundamentar a contestação de leis injustas, enquanto o positivismo jurídico, em sua forma clássica, separa a validade da lei de seu conteúdo moral."]'::jsonb,
'D',
'O jusnaturalismo reconhece a existência de direitos naturais, anteriores e superiores ao direito positivo, que permitem a contestação de leis injustas. O positivismo jurídico clássico, por sua vez, separa a validade da norma de seu conteúdo moral, condicionando-a ao procedimento e à fonte. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Filosofia do Direito',
'A partir do trecho de Rousseau sobre a vontade geral (que visa ao interesse comum e público, distinta da soma dos interesses particulares), com base na Filosofia do Direito de Jean-Jacques Rousseau, assinale a afirmativa correta.',
'',
'',
'["A vontade geral, embora distinta da soma das vontades individuais, pode legitimar leis de conteúdo particularizado, desde que estas promovam utilidade social imediata.","A vontade geral, enquanto expressão do consenso majoritário, legitima a prevalência de interesses predominantes na sociedade, ainda que estes não correspondam ao bem comum.","A vontade geral, por visar ao interesse comum, impõe a generalidade e a abstração das leis, sendo incompatível com a produção normativa voltada aos destinatários determinados ou interesses setoriais.","A vontade geral coincide com a vontade da maioria, desde que formalmente expressa por meio do procedimento legislativo, sendo irrelevante a distinção entre interesse comum e interesses particulares."]'::jsonb,
'C',
'Para Rousseau, a vontade geral visa ao interesse comum e, por isso, a lei dela resultante deve ser geral e abstrata, dirigida a todos indistintamente. Daí ser incompatível com normas voltadas a destinatários determinados ou a interesses meramente setoriais, que exprimem vontade particular, e não geral. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Direito Constitucional',
'O Estado Alfa teve aumento de processos em determinada comarca, sobrecarregando a única Vara existente. O Governador encaminhou à Assembleia Legislativa projeto de lei de sua iniciativa propondo a criação de três novas Varas Judiciárias, aprovado e sancionado. Em relação à referida lei estadual, assinale a opção correta.',
'',
'',
'["Atende aos pressupostos constitucionais, pois o aumento da demanda processual justifica a criação de novas Varas Judiciárias, medida que pode ser proposta pelo chefe do Poder Executivo Estadual.","É válida, desde que o Tribunal de Justiça do Estado Alfa tenha manifestado concordância prévia com o projeto de lei, conditio sine qua non para o seguimento do processo legislativo no âmbito da Assembleia Legislativa de Alfa.","Não observa a disciplina constitucional aplicável ao tema, pois a iniciativa para a criação das novas Varas Judiciárias, nas circunstâncias apresentadas, compete privativamente ao Tribunal de Justiça do Estado Alfa, não ao Governador.","É dissonante do sistema constitucional brasileiro, pois a criação de novas Varas Judiciárias deve ser promovida por iniciativa de parlamentares ou do próprio Poder Judiciário, cabendo ao Poder Legislativo a análise da respectiva proposição."]'::jsonb,
'C',
'A alteração da organização e da divisão judiciárias, incluindo a criação de varas, é de iniciativa privativa do Tribunal de Justiça (art. 96, II, d, da CRFB/88), e não do Chefe do Poder Executivo. A lei de iniciativa do Governador padece de vício de iniciativa. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Direito Constitucional',
'A Controladoria-Geral do Estado Beta constatou que o Prefeito do Município Alfa se recusou reiteradamente a aplicar recursos do FUNDEB na educação, desviando-os. O Tribunal de Contas reforçou o descumprimento do mínimo constitucional em educação. O Governador decretou a intervenção no Município, nomeando interventor para o setor educacional. Quanto à constitucionalidade da medida, assinale a afirmativa correta.',
'',
'',
'["A medida é válida, pois o texto constitucional autoriza a decretação espontânea da intervenção pelo Governador de Beta, sem necessidade de autorização judicial ou ação prévia.","A intervenção estadual somente seria possível se, após o ajuizamento de ação civil pública por órgão legitimado, o Poder Judiciário confirmasse o desvio de finalidade na aplicação dos recursos.","A intervenção é constitucional, desde que previamente autorizada pelo Tribunal de Justiça do Estado Beta, pois interfere na autonomia política do ente municipal (Município Alfa) e exige controle jurisdicional.","Trata-se de hipótese de inconstitucionalidade formal, uma vez que qualquer intervenção estadual deve ser previamente submetida ao crivo do Poder Legislativo estadual para assegurar o princípio da separação de Poderes."]'::jsonb,
'A',
'A não aplicação do mínimo exigido da receita municipal na manutenção e desenvolvimento do ensino é hipótese que autoriza a intervenção estadual no Município (art. 35, III, da CRFB/88), de decretação espontânea pelo Governador, independentemente de autorização judicial ou ação prévia. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Direito Constitucional',
'Uma sociedade empresária questiona se normas de lei federal de 1985, ainda aplicadas por órgãos administrativos, permanecem válidas após a CRFB/88, e quais critérios devem ser observados para afirmar que a lei foi recepcionada. Sobre a recepção das normas pré-constitucionais, assinale a afirmativa correta.',
'',
'',
'["Decorre exclusivamente da compatibilidade formal (inclusive procedimental) das mencionadas normas com a Constituição da República de 1988.","Depende de sua compatibilidade simultânea, tanto formal (inclusive procedimental) quanto material, com as normas da Constituição da República de 1988.","É necessária e automática, já que a compatibilidade formal (inclusive procedimental) e a material somente devem ser aferidas em relação à Constituição anterior.","Deve ser analisada na perspectiva da compatibilidade material, mas não da compatibilidade formal (inclusive procedimental), com a Constituição da República de 1988."]'::jsonb,
'D',
'O fenômeno da recepção exige apenas a compatibilidade material da norma pré-constitucional com a nova Constituição; a compatibilidade formal (inclusive quanto ao processo legislativo) é aferida em face da Constituição vigente à época da edição da norma, não da atual. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Direito Constitucional',
'O Presidente da República editou medida provisória estabelecendo novas hipóteses de inelegibilidade aplicáveis a candidatos que tenham exercido funções públicas estratégicas nos dois anos anteriores a cada eleição. Parlamentares questionam vício formal na escolha do instrumento normativo. Segundo o sistema constitucional, assinale a afirmativa correta.',
'',
'',
'["A validade da providência dependerá exclusivamente do momento da edição do diploma normativo, considerando o calendário eleitoral, sendo irrelevante a natureza do instrumento utilizado.","O ato normativo editado é compatível com a Constituição da República, desde que observados os pressupostos de relevância e urgência, assegurada a sua apreciação pelo Congresso Nacional.","O instrumento adotado revela-se formalmente inadequado, pois a Constituição impede a utilização dessa espécie normativa para disciplinar certas matérias, entre as quais aquela indicada na narrativa.","O diploma mencionado não poderá subsistir no ordenamento jurídico, ainda que seja posteriormente aprovado pelo Poder Legislativo, pois as hipóteses de inelegibilidade estão previstas de maneira exauriente na ordem constitucional."]'::jsonb,
'C',
'É vedada a edição de medida provisória sobre matéria reservada a lei complementar (art. 62, § 1º, III, da CRFB/88). As hipóteses de inelegibilidade são estabelecidas por lei complementar (art. 14, § 9º, da CRFB/88), de modo que a medida provisória é formalmente inadequada para disciplinar o tema. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Direito Constitucional',
'O Município Alfa editou a Lei nº X, instituindo programa de proteção dos direitos humanos e segurança urbana, prevendo que poderiam ser declarados de utilidade pública, para desapropriação, imóveis urbanos em que fossem praticados atos ilícitos com violência contra a pessoa, com indenização paga somente após o trânsito em julgado. Assinale a orientação jurídica correta.',
'',
'',
'["A disciplina legal não poderá subsistir, pois a desapropriação exige indenização prévia, embora a matéria possa ser disciplinada pelo Município em razão do interesse predominantemente local na promoção da segurança urbana.","A validade da disciplina legal dependerá da demonstração, no caso concreto, de que o imóvel era utilizado de forma reiterada para a prática dos ilícitos mencionados na lei municipal, justificando a adoção da medida expropriatória.","A Lei nº X não se harmoniza com a Constituição da República, pois a matéria tratada insere-se na competência legislativa privativa da União, e o regime indenizatório previsto é incompatível com as garantias constitucionais da desapropriação.","A Lei nº X está em harmonia com a Constituição da República, pois a proteção dos direitos humanos e o enfrentamento da violência urbana autorizam um tratamento jurídico diferenciado para os imóveis utilizados na prática dos ilícitos descritos no enunciado."]'::jsonb,
'C',
'Compete privativamente à União legislar sobre desapropriação (art. 22, II, da CRFB/88), de modo que o Município não poderia disciplinar o tema. Ademais, a desapropriação por utilidade pública exige indenização prévia, justa e em dinheiro (art. 5º, XXIV), sendo incompatível o pagamento apenas após o trânsito em julgado. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Direito Constitucional',
'Antônio Silva, anos após adquirir a nacionalidade brasileira por naturalização, teve sua extradição requerida por Estado estrangeiro, em razão da suposta prática de crime comum cometido antes da conclusão do processo de naturalização. Assinale a orientação jurídica correta.',
'',
'',
'["O pedido poderá ser admitido, pois a Constituição da República autoriza a extradição do brasileiro naturalizado na situação concreta apresentada.","O pedido não poderá ser acolhido, pois a aquisição da nacionalidade brasileira impede a extradição por fatos praticados em momento anterior à naturalização.","A extradição somente poderá ser admitida se ficar demonstrado que o fato imputado corresponde ao tráfico ilícito de substâncias entorpecentes ou drogas afins.","A extradição dependerá da demonstração da gravidade da infração penal atribuída ao naturalizado, sendo irrelevante o momento em que ocorreu a sua naturalização."]'::jsonb,
'A',
'O brasileiro naturalizado pode ser extraditado em caso de crime comum praticado antes da naturalização, ou de comprovado envolvimento em tráfico ilícito de entorpecentes na forma da lei (art. 5º, LI, da CRFB/88). Como o crime comum foi praticado antes da naturalização, a extradição é admissível. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Direitos Humanos',
'Com a EC nº 45/2004, o § 3º do Art. 5º da CRFB/88 passou a permitir que tratados sobre direitos humanos, aprovados em dois turnos, por três quintos dos votos de cada Casa do Congresso, sejam equivalentes a emendas constitucionais. Assinale a opção que indica o tratado ou convenção que seguiu esse procedimento e é equivalente a emenda constitucional.',
'',
'',
'["A Declaração Universal dos Direitos Humanos.","A Convenção Americana sobre Direitos Humanos (Pacto de São José da Costa Rica).","A Convenção Interamericana para Prevenir, Punir e Erradicar a Violência contra a Mulher (Convenção de Belém do Pará).","O Tratado de Marraqueche para Facilitar o Acesso a Obras Publicadas às Pessoas Cegas, às com Deficiência Visual ou com outras dificuldades para ter acesso ao texto impresso."]'::jsonb,
'D',
'Entre as opções, foram aprovados pelo rito do art. 5º, § 3º, da CRFB/88 (equivalentes a emenda constitucional): a Convenção sobre os Direitos das Pessoas com Deficiência e seu Protocolo, o Tratado de Marraqueche e a Convenção Interamericana contra o Racismo. O Tratado de Marraqueche é o único das alternativas que seguiu esse procedimento. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Direitos Humanos',
'A partir da edição do Estatuto de Roma de 1998, foi instituído o Tribunal Penal Internacional, voltado à responsabilização penal em plano global diante de graves violações de direitos humanos. Acerca desse Tribunal, assinale a afirmativa correta.',
'',
'',
'["O Tribunal Penal Internacional somente possui competência relativamente aos crimes cometidos após a entrada em vigor do Estatuto de Roma.","Nos termos do seu Estatuto, o Tribunal Penal Internacional não possui competência para determinar a prisão preventiva de eventual pessoa natural por ele investigada.","O procurador do Tribunal, a quem cabe as atribuições de promotoria, não pode agir de ofício, por sua própria iniciativa, instaurando inquérito com base em informações a que tenha tido acesso de forma espontânea, sobre a prática de crimes da competência do Tribunal.","O Tribunal Penal Internacional é competente para julgar individualmente autoridades públicas que ocupem ou tenham ocupado cargo de elevado grau de comando, com vistas a promover a sua responsabilização penal nos casos em que os próprios Estados não logrem êxito em promovê-la. O Tribunal, porém, não é competente para julgar indivíduos que não ocupem ou não tenham ocupado cargos públicos, sem qualquer tipo de participação na estrutura burocrática oficial do Estado-nação."]'::jsonb,
'A',
'O Tribunal Penal Internacional tem competência apenas em relação aos crimes cometidos após a entrada em vigor do Estatuto de Roma (princípio da irretroatividade, art. 11 do Estatuto). O procurador pode agir de ofício, o Tribunal pode determinar prisão e julga qualquer indivíduo, independentemente de cargo público (irrelevância da qualidade oficial). Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Direito Eleitoral',
'O partido Delta requereu o registro de João para Governador do Estado Beta. Maria, filiada ao partido Sigma, que concorreria ao mesmo cargo, obteve provas de que João incorria em causa de inelegibilidade infraconstitucional. O diretório de Sigma informou que não adotaria medida. Assinale a orientação jurídica correta.',
'',
'',
'["No registro de candidatura, são avaliadas as condições de elegibilidade, não as causas de inelegibilidade, como a que recai sobre João, o que deve ser feito após o deferimento do registro.","Os legitimados para impugnar o registro de João são a federação, a coligação, o partido político e o Ministério Público, sendo vedado suscitar uma causa de inelegibilidade posteriormente.","A inelegibilidade na qual João incorre, de natureza infraconstitucional, pode ser invocada no prazo de impugnação do registro, tendo Maria, apenas por ser candidata, legitimidade para fazê-lo.","Maria, como qualquer do povo, tem legitimidade para impugnar o registro de candidatura de João, único momento em que podem ser suscitadas as inelegibilidades, constitucionais ou infraconstitucionais."]'::jsonb,
'C',
'Qualquer candidato, partido, coligação ou o Ministério Público pode impugnar o registro de candidatura, no prazo de 5 dias de sua publicação (art. 3º da LC nº 64/90). Maria, por ser candidata, tem legitimidade para impugnar o registro de João, podendo invocar a causa de inelegibilidade infraconstitucional nesse prazo. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Direito Eleitoral',
'Uma emissora divulgou reportagem mostrando João, candidato a Deputado Estadual, conversando com Pedro, eleitor, a quem afirmou que, se este lhe confiasse o voto, teria recursos para pintar a casa dele. O presidente do diretório estadual do partido Beta consulta sobre a caracterização, ou não, da captação ilícita de sufrágio. Assinale a afirmativa correta.',
'',
'',
'["Não houve pedido explícito de voto, logo o dolo de João não está caracterizado.","É cabível o ajuizamento de representação por captação ilícita de sufrágio, desde que isso seja feito até a data da diplomação.","Desde que seja demonstrado que Pedro aceitou a oferta de João, está caracterizada a captação ilícita de sufrágio, que observará a mesma sistemática afeta à investigação judicial eleitoral.","Como a solicitação de João foi direcionada a um único eleitor, a conduta não apresenta potencialidade para comprometer a normalidade da eleição, logo não está configurada a captação ilícita de sufrágio."]'::jsonb,
'B',
'A conduta descrita (oferecer vantagem a eleitor em troca de voto) configura, em tese, captação ilícita de sufrágio (art. 41-A da Lei nº 9.504/97). A representação respectiva pode ser ajuizada desde o registro da candidatura até a data da diplomação. A caracterização independe de aceitação do eleitor ou de potencialidade de alterar o resultado. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direito Internacional',
'O processo de internalização de tratados internacionais no Brasil é multifásico, com participação do Poder Executivo e do Poder Legislativo. Assinale a afirmativa correta sobre esse processo.',
'',
'',
'["No plano doméstico, o processo de internalização se encerra com a publicação de um decreto presidencial que promulgue o tratado internacional em questão.","O Senado Federal, como Casa responsável por aprovar as indicações de embaixadores, é também onde se inicia a análise de tratados internacionais assinados pelo Presidente da República.","Os tratados internacionais que tratam de matéria tributária precisam ser aprovados no Congresso Nacional com quórum de lei complementar.","No caso de tratados de Direitos Humanos submetidos ao processo de ratificação previsto no Art. 5º, §3º, da Constituição Federal, dotados de status de emenda constitucional, cabe ao Presidente do Congresso Nacional promulgar e publicar o decreto correspondente."]'::jsonb,
'A',
'No plano interno, após a assinatura, a aprovação pelo Congresso (decreto legislativo) e a ratificação, o processo de internalização se completa com a edição e publicação do decreto presidencial de promulgação, que confere executoriedade ao tratado no ordenamento nacional. A análise congressual inicia-se na Câmara dos Deputados, e tratados tributários não exigem quórum de lei complementar. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direito Internacional',
'A Lei de Introdução às Normas do Direito Brasileiro regula conflitos de lei no espaço. Com base no direito positivo brasileiro, assinale a afirmativa correta.',
'',
'',
'["A prova de fatos ocorridos no estrangeiro, em processo que tramita no Brasil, se rege sempre pela lei brasileira, não importa onde ocorram.","No inventário judicial, o Juiz brasileiro deve obedecer à lei de nacionalidade do defunto, sendo desimportante o local de sua residência.","O regime de bens, legal ou convencional, obedece à lei do país em que os nubentes tiverem domicílio, e, se este for diverso, à do primeiro domicílio conjugal.","A autoridade judiciária brasileira é competente para conhecer as ações relativas a imóveis situados no Brasil, salvo se um dos proprietários for estrangeiro."]'::jsonb,
'C',
'Nos termos do art. 7º, § 4º, da LINDB, o regime de bens, legal ou convencional, obedece à lei do país em que tiverem os nubentes domicílio, e, se este for diverso, à do primeiro domicílio conjugal. A sucessão rege-se pela lei do domicílio do de cujus, a competência sobre imóveis no Brasil é da autoridade brasileira sem exceção pela nacionalidade, e a prova de fatos ocorridos no estrangeiro admite os meios da lei estrangeira. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direito Financeiro',
'O Banco XYZ S.A., sociedade de economia mista federal (estatal não dependente), que não usa recursos públicos para pagamento de pessoal, recebeu fiscalização do TCU. Constatando que diretores recebiam acima do teto remuneratório constitucional, o TCU determinou a limitação ao teto, deixando de computar o excesso para a apuração da despesa total com pessoal da LRF. Assinale a afirmativa correta.',
'',
'',
'["O Banco XYZ S.A., por se tratar de uma empresa estatal não dependente, não se submete aos limites de despesa total com pessoal previstos na LRF.","Os dirigentes do referido banco, nos termos da LRF, podem ser pessoalmente responsabilizados pelo excesso remuneratório acima do teto efetivamente recebido.","O TCU deveria ter computado o excesso remuneratório acima do teto efetivamente pago aos dirigentes do Banco XYZ S.A. para a apuração da despesa total com pessoal prevista na LRF.","A LRF veda, expressamente, o pagamento de remuneração a dirigentes de instituições financeiras estatais não dependentes que suplantem o teto remuneratório constitucional."]'::jsonb,
'A',
'As empresas estatais não dependentes (que não recebem recursos do ente para despesas de pessoal ou custeio) não integram o conceito de despesa total com pessoal para fins dos limites da LRF (art. 2º, II e III, da LC nº 101/2000). Logo, o Banco XYZ S.A. não se submete a esses limites. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direito Financeiro',
'Determinado Tribunal Regional do Trabalho (TRT), ao fim de um exercício financeiro, constatou que, em 31 de dezembro, ainda havia saldo financeiro orçamentário em seu caixa não utilizado. Diante desse cenário, assinale a afirmativa correta.',
'',
'',
'["Caso o TRT retenha tal saldo financeiro, tais valores não poderão ser deduzidos das primeiras parcelas duodecimais do exercício seguinte.","Por estar vinculado ao Supremo Tribunal Federal (STF) como órgão de cúpula do Poder Judiciário, esse TRT deverá restituir esse saldo ao caixa único do STF.","O TRT deverá restituir esse saldo ao caixa único do Tesouro da União ou esse valor de saldo será deduzido das primeiras parcelas duodecimais do exercício seguinte.","A existência de saldo financeiro desse TRT ao final do ano configura má gestão do erário, devendo aquele que lhe deu causa ser punido criminal e administrativamente."]'::jsonb,
'C',
'Os saldos financeiros não utilizados por órgãos que recebem recursos por duodécimos devem ser restituídos ao caixa único do Tesouro ou deduzidos das primeiras parcelas duodecimais do exercício seguinte, não configurando, por si, má gestão. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direito Tributário',
'José, residente em Belo Horizonte, MG, pretende doar a Mário, seu filho residente em Vitória, ES, um imóvel situado em Salvador, BA. Assinale a opção que indica o ente ao qual é devido o ITCMD incidente nessa doação.',
'',
'',
'["O Estado do Espírito Santo, em que o donatário Mário é residente e domiciliado.","O Estado da Bahia, por competir ao Estado da situação do bem imóvel a ser doado.","O Estado de Minas Gerais, por competir ao Estado em que José, o doador, é residente e domiciliado.","O Município de Salvador, por ser um tributo de competência do Município onde se localiza o imóvel."]'::jsonb,
'B',
'O ITCMD relativo a bens imóveis (e respectivos direitos) compete ao Estado da situação do bem (art. 155, § 1º, I, da CRFB/88). Como o imóvel doado está em Salvador, o imposto é devido ao Estado da Bahia. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direito Tributário',
'Marcelo, para subscrever ações da sociedade anônima XYZ S.A., transferiu um imóvel de sua propriedade em integralização de capital, recebendo ações em troca, sendo o valor de mercado do imóvel idêntico ao das ações. Sobre a tributação dessa operação, assinale a afirmativa correta.',
'',
'',
'["Incidirá sobre a aquisição das ações o imposto sobre operações de crédito, câmbio e seguro, ou relativas a títulos ou valores mobiliários (IOF).","A transferência de propriedade do imóvel de Marcelo para a sociedade empresária, para fins de integralização de capital social, não é uma operação tributável.","A integralização de capital social por meio de um bem imóvel equipara-se a uma doação e deverá incidir o Imposto sobre Transmissão Causa Mortis e Doações de Bens e Direitos (ITCMD).","O Imposto sobre a Transmissão de Bens Imóveis (ITBI), incidente na transferência de propriedade do imóvel entre Marcelo e a sociedade empresária XYZ S.A., em troca das novas ações, é devido ao município do domicílio de Marcelo."]'::jsonb,
'B',
'O ITBI não incide sobre a transmissão de bens incorporados ao patrimônio de pessoa jurídica em realização de capital (imunidade do art. 156, § 2º, I, da CRFB/88), salvo nas exceções ali previstas. Assim, a transferência do imóvel para integralização de capital, no caso descrito, não é operação tributável. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direito Tributário',
'Em razão de calamidade pública por enchentes no Município Alfa no final de 2024, lei ordinária federal, publicada em 29/12/2024, previu a isenção de IPTU nesse Município durante todo o ano de 2025. Sabendo que o fato gerador do IPTU ocorre em 1º de janeiro, assinale a afirmativa correta.',
'',
'',
'["Tal isenção, ainda que concedida por razões humanitárias, viola a autonomia tributária municipal, por ter sido concedida pela União.","Por configurar lei de isenção mais benéfica ao contribuinte, seu efeito de impedir a cobrança do IPTU poderá ser produzido imediatamente.","Tal lei, embora constitucional, não poderá produzir seus efeitos em 1º de janeiro de 2025, sob pena de violação à anterioridade tributária nonagesimal.","Tratando-se de estado de calamidade pública, existe autorização constitucional para que o Congresso Nacional, com sanção do Presidente da República, conceda esse tipo de isenção."]'::jsonb,
'A',
'É vedado à União instituir isenções de tributos da competência dos Estados, do Distrito Federal ou dos Municípios (vedação às isenções heterônomas, art. 151, III, da CRFB/88). O IPTU é tributo municipal; logo, a isenção concedida por lei federal viola a autonomia tributária do Município. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direito Tributário',
'O Estado Beta promulgou lei estadual ordinária autorizando seus Municípios a firmarem convênio para que o próprio Estado exerça as funções de arrecadar e fiscalizar o IPTU, inclusive a cobrança extrajudicial e judicial. O Município Alfa aderiu, e o Estado passou a fiscalizar e cobrar o IPTU. Alguns contribuintes alegam que a competência tributária é indelegável. Assinale a afirmativa correta.',
'',
'',
'["Poderia ser delegada ao Estado Beta a atribuição de fiscalização desse tributo municipal, mas não a de sua cobrança judicial por meio da Procuradoria do Estado Beta.","A lei ordinária estadual poderia deferir ao Estado Beta, via convênio, a atribuição de fiscalização do IPTU municipal, bem como a de cobrança extrajudicial ou judicial do tributo.","A fiscalização e cobrança de tal tributo não é legal por ausência de previsão em lei complementar de caráter nacional, que autorize a delegação, não sendo suficiente a mera lei ordinária estadual.","A fiscalização realizada pelo Estado Beta é ilegal, pois a competência tributária para instituir e fiscalizar tal tributo é exclusiva do Município Alfa, não podendo ser delegada a qualquer outro ente federativo."]'::jsonb,
'B',
'A competência tributária (para instituir o tributo) é indelegável, mas as funções de arrecadar, fiscalizar e executar leis, serviços, atos ou decisões administrativas em matéria tributária (capacidade tributária ativa) podem ser conferidas a outra pessoa jurídica de direito público (art. 7º do CTN). Assim, por convênio, o Estado pode exercer a fiscalização e a cobrança do IPTU municipal. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direito Tributário',
'A sociedade Equipamentos Ltda. precisa de certidão de regularidade fiscal municipal para licitação. A Prefeitura informou existir débito de IPTU do exercício de 2026 ainda não vencido (vencimento em 30 dias) e outro débito de taxa com exigibilidade suspensa por liminar em mandado de segurança, pretendendo emitir certidão positiva. Assinale a afirmativa correta.',
'',
'',
'["A certidão negativa a ser emitida deverá conter apenas os débitos não vencidos, excluindo-se os débitos com exigibilidade suspensa, que devem constar como positivos.","A Prefeitura está correta ao emitir uma certidão positiva, pois se exige a efetiva quitação de todos os tributos para a expedição de certidão negativa ou positiva com efeitos de negativa.","A sociedade empresária poderá obter certidão negativa apenas em relação ao débito com exigibilidade suspensa, mas o débito de IPTU não vencido impede a emissão de certidão negativa.","A sociedade empresária não faz jus a uma certidão negativa, pois existem débitos tributários relacionados a ela, mas poderá obter uma certidão positiva com efeitos de negativa."]'::jsonb,
'D',
'Tem os mesmos efeitos da certidão negativa a certidão positiva com efeitos de negativa, expedida quando houver créditos não vencidos, em curso de cobrança executiva com penhora efetivada, ou com exigibilidade suspensa (art. 206 do CTN). Havendo débito não vencido e débito com exigibilidade suspensa, a sociedade faz jus à certidão positiva com efeitos de negativa. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direito Administrativo',
'A sociedade Esperança formulou dois pedidos à Administração: um de ato administrativo simples vinculado, para o qual preenche os requisitos legais, e outro de ato simples discricionário, com a documentação apresentada. A Administração está inerte há mais de dois anos. Assinale a conduta correta a adotar em juízo.',
'',
'',
'["As ações ajuizadas devem, em ambos os casos, pleitear apenas o reconhecimento da omissão administrativa, com a determinação para que haja o pronunciamento da autoridade competente, considerando que em nenhuma das hipóteses o Judiciário poderá reconhecer o direito subjetivo ao ato pretendido sem violar o princípio da separação de Poderes.","Somente deve ser ajuizada ação com o objetivo de obter reconhecimento da omissão administrativa, com a determinação para que haja o pronunciamento da autoridade competente em relação ao ato vinculado, na medida em que os atos discricionários não podem ser submetidos ao controle jurisdicional, em razão do princípio da separação de Poderes.","Deve ser ajuizada ação para obter o reconhecimento da omissão administrativa, com a determinação para que haja o pronunciamento da autoridade competente, no que concerne ao ato discricionário, e para o reconhecimento do direito subjetivo à obtenção do ato vinculado, providência, nesse último caso, que não viola o princípio da separação de Poderes.","Nas duas situações, deve ser ajuizada ação para obter o deferimento do ato, pois o preenchimento dos requisitos previstos em lei para o ato vinculado e a apresentação da documentação pertinente para o ato discricionário ensejam o direito subjetivo à obtenção de ambas as providências pelo Judiciário, sem que haja a violação ao princípio da separação de Poderes."]'::jsonb,
'C',
'No ato vinculado, preenchidos os requisitos legais, o administrado tem direito subjetivo ao ato, podendo o Judiciário determinar a sua concessão sem ofensa à separação de Poderes. No ato discricionário, o Judiciário pode determinar que a Administração se pronuncie (supra a omissão), mas não substituí-la no juízo de conveniência e oportunidade. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'Após manifestação desfavorável em processo administrativo federal, Matheus interpôs recurso. Durante a tramitação, João da Silva, autoridade competente, delegou a decisão do recurso a Guilherme, agente sem relação de hierarquia, alegando maior expertise. À luz da Lei nº 9.784/1999, assinale a afirmativa que apresenta a orientação correta.',
'',
'',
'["Caso haja a anuência expressa de Guilherme, a delegação efetivada por João da Silva se compatibilizará com a ordem jurídica.","A decisão de recurso administrativo não pode ser objeto de delegação, de forma que João da Silva agiu em contrariedade à legislação.","Como Guilherme tem mais expertise na matéria discutida nos autos, seria cabível a avocação de competência, e não o ato de delegação.","João da Silva poderia ter delegado a decisão do recurso administrativo a Guilherme, que dispõe de mais expertise na matéria discutida, de forma a prestigiar o princípio da eficiência na Administração Pública."]'::jsonb,
'B',
'A Lei nº 9.784/1999 (art. 13, II) veda expressamente a delegação da decisão de recursos administrativos. Logo, a delegação feita por João da Silva contraria a legislação. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'O Governador do Estado Alfa declarou de utilidade pública, por decreto, o imóvel de João da Silva, visando à desapropriação. Sem acreditar que a desapropriação prosseguiria, o proprietário realizou, sem a concordância do expropriante, benfeitorias necessárias, úteis e voluptuárias no local. À luz do Decreto-Lei nº 3.365/1941, assinale a afirmativa correta.',
'',
'',
'["As benfeitorias necessárias e úteis serão objeto de indenização pelo poder público, mas não as benfeitorias voluptuárias.","O Estado Alfa deverá indenizar todas as benfeitorias realizadas por João da Silva, sob pena de enriquecimento sem causa.","João da Silva tem direito à indenização pelas benfeitorias necessárias que foram realizadas no imóvel, mas não pelas benfeitorias úteis e voluptuárias.","Como as benfeitorias foram realizadas por João da Silva, após a declaração formal de utilidade pública do imóvel, o Estado Alfa não será obrigado a indenizá-las."]'::jsonb,
'C',
'Nos termos do art. 26, § 1º, do Decreto-Lei nº 3.365/41, as benfeitorias necessárias feitas após a declaração de utilidade pública são sempre indenizáveis; as úteis somente o são se realizadas com autorização do expropriante. As voluptuárias não são indenizadas. Como não houve autorização, João tem direito apenas à indenização das benfeitorias necessárias. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'A autoridade do Município Alfa contatou o empresário exclusivo da cantora Lúcia, consagrada pela crítica e pelo público, para contratá-la para o show de aniversário do Município, com cachê de R$ 200.000,00. À luz da Lei nº 14.133/2021, assinale a afirmativa correta.',
'',
'',
'["A licitação é dispensável para a contratação de Lúcia, considerando o valor do cachê que será por ela cobrado na situação descrita.","A validade da contratação de Lúcia pelo Município Alfa depende da realização de licitação na modalidade diálogo competitivo.","A contratação de Lúcia caracteriza hipótese de inexigibilidade de licitação, em decorrência da inviabilidade de competição em tais circunstâncias.","O Município Alfa apenas poderia realizar a contratação direta de Lúcia, mediante dispensa de licitação, após a apresentação de três orçamentos de artistas de mesma envergadura."]'::jsonb,
'C',
'É inexigível a licitação para contratação de profissional do setor artístico consagrado pela crítica especializada ou pela opinião pública, diretamente ou por empresário exclusivo (art. 74, II, da Lei nº 14.133/2021), por inviabilidade de competição. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'Após regular licitação, o Estado Alfa e a sociedade Beta celebraram contrato de concessão de serviço público. No curso da avença, o poder público aventou retomar o serviço, por decreto e por motivo de interesse público, por meio da encampação. À luz da Lei nº 8.987/1995, assinale a orientação jurídica correta.',
'',
'',
'["A retomada do serviço público por parte do Estado Alfa, com base no instituto da encampação, dispensa prévio pagamento de indenização à sociedade empresária Beta.","O interesse público na retomada do serviço por parte do Estado Alfa legitima a caducidade do contrato administrativo, não sendo caso de aplicabilidade do instituto da encampação.","Inexistindo inadimplemento contratual imputado à sociedade empresária Beta, é vedado ao poder público retomar o serviço durante o prazo da concessão, ainda que se alegue a existência de motivo de interesse público.","Para que o Estado Alfa possa, legitimamente, invocar o instituto da encampação, é necessário que esteja presente motivo de interesse público, sem o prejuízo da edição de lei autorizativa específica e de prévio pagamento de indenização à sociedade empresária Beta."]'::jsonb,
'D',
'A encampação é a retomada do serviço pelo poder concedente, durante o prazo da concessão, por motivo de interesse público, mediante lei autorizativa específica e após prévio pagamento da indenização (art. 37 da Lei nº 8.987/95). Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Ambiental',
'O Estado Ômega editou lei dispensando a realização de estudo prévio de impacto ambiental para determinada atividade, embora a Resolução Conama nº 237/1997 a considere potencialmente lesiva ao meio ambiente, exigindo o estudo. Sobre a lei editada pelo Estado Ômega, assinale a afirmativa correta.',
'',
'',
'["É constitucional, pois compete privativamente aos estados legislar sobre estudo prévio de impacto ambiental.","É inconstitucional, na medida em que as normas editadas pelo Conama são hierarquicamente superiores às leis estaduais.","É inconstitucional, pois os estados não têm competência para dispensar a realização de estudo de impacto ambiental na situação descrita.","É constitucional, considerando que a lei estadual deve prevalecer sobre os atos normativos editados por órgãos administrativos, tais como o Conama."]'::jsonb,
'C',
'O estudo prévio de impacto ambiental é exigência constitucional para instalação de obra ou atividade potencialmente causadora de significativa degradação (art. 225, § 1º, IV, da CRFB/88). O Estado não tem competência para dispensar a exigência nos casos em que ela é devida, não podendo reduzir o patamar de proteção ambiental. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Ambiental',
'Após grave dano ambiental causado durante atividade econômica da sociedade XYZ, a autoridade policial apontou indícios de crime ambiental. O delito foi praticado por decisão de João, representante legal da entidade, em benefício desta. Sobre a responsabilidade penal ambiental, assinale a afirmativa correta.',
'',
'',
'["A sociedade empresária XYZ e João, na qualidade de representante legal da entidade, podem responder objetivamente, na esfera penal, pela conduta praticada.","A responsabilização penal da sociedade empresária XYZ tem natureza subsidiária, caso não seja possível identificar a pessoa natural que, efetivamente, deu causa à conduta penalmente proibida.","A sociedade empresária XYZ não poderá ser responsabilizada na esfera penal, por ausência de previsão constitucional e legal, mas nada impede que João, na qualidade de representante legal da entidade, responda, criminalmente, pela conduta perpetrada.","A responsabilização penal da sociedade empresária XYZ é, juridicamente, cabível, pois a infração penal foi cometida por decisão de João, seu representante legal, em benefício desta, o que não exclui a responsabilidade da pessoa natural, autora ou partícipe do mesmo fato."]'::jsonb,
'D',
'A responsabilidade penal da pessoa jurídica por crimes ambientais tem previsão constitucional (art. 225, § 3º) e legal (art. 3º da Lei nº 9.605/98), quando a infração é cometida por decisão de representante legal ou órgão colegiado, no interesse ou benefício da entidade, não excluindo a responsabilidade das pessoas naturais autoras ou partícipes. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Civil',
'Joana, criança, foi abandonada pelo pai, que está em local incerto e não sabido e nunca prestou assistência. Sua mãe, apesar de trabalhar, não consegue prover sozinha as necessidades da filha e ingressou com ação de alimentos contra os avós paternos. Diante da legislação vigente, assinale a orientação jurídica correta.',
'',
'',
'["Os avós paternos só poderão ser responsabilizados pelo pagamento de alimentos a Joana se houver a suspensão do poder familiar do genitor.","A mãe de Joana deve apresentar sentença declaratória de ausência do genitor, como requisito indispensável para a determinação da obrigação dos avós.","Os avós paternos têm a obrigação de prestar alimentos à Joana, sendo a responsabilidade subsidiária à do pai, que está em local desconhecido e sem possibilidade de ser localizado.","Como a obrigação dos avós é subsidiária e excepcional, eventual dever de prestar alimentos à neta só será devido após sentença judicial transitada em julgado determinando essa obrigação."]'::jsonb,
'C',
'A obrigação alimentar avoenga é subsidiária e complementar à dos pais, incidindo quando o genitor obrigado não pode prestar os alimentos ou não é localizado (art. 1.698 do CC e Súmula 596 do STJ). Estando o pai em local incerto e sem possibilidade de ser localizado, os avós paternos podem ser demandados subsidiariamente. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Civil',
'Em um domingo, o porteiro do Condomínio Residencial Tempo de Verão ausentou-se da portaria por cerca de 60 minutos, sem autorização, para tratar de assuntos pessoais. Nesse período, um indivíduo furtou bens do apartamento da moradora Mary Cassatt. Mary ajuizou ação de indenização contra o condomínio. Com base no Código Civil, assinale a afirmativa correta.',
'',
'',
'["O condomínio responde objetivamente pelos atos ilícitos praticados por seus empregados no exercício da função, ainda que tenha havido descumprimento de normas internas.","O condomínio responde subjetivamente pelos atos de seus colaboradores, sendo necessário que Mary comprove a culpa da administração para obter êxito.","A responsabilidade do condomínio é excluída diante da culpa exclusiva do porteiro, visto que sua conduta não guarda nexo funcional com a atividade desempenhada.","A responsabilidade recai exclusivamente sobre o porteiro, pois agiu dolosamente, contrariando normas internas expressas e ordens do síndico."]'::jsonb,
'A',
'O empregador ou comitente responde objetivamente pelos atos de seus empregados, serviçais e prepostos, no exercício do trabalho que lhes competir ou em razão dele (arts. 932, III, e 933 do CC). O descumprimento de normas internas pelo porteiro não afasta essa responsabilidade objetiva do condomínio perante o terceiro lesado. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Civil',
'A sociedade XYZ Comércio S.A. ajuizou ação reivindicatória contra comunidade de cerca de 80 famílias que ocupa, há 8 anos, de forma contínua, pacífica e de boa-fé, extensa área urbana de sua propriedade registrada. Restaram comprovadas benfeitorias, moradias e relevante função social da área. Com base no Código Civil, assinale a afirmativa correta.',
'',
'',
'["O pedido reivindicatório da sociedade empresária XYZ deve ser julgado procedente, assegurado o direito de retenção pelas benfeitorias necessárias e úteis.","Comprovada a titularidade da sociedade empresária XYZ, o pedido reivindicatório deve ser julgado procedente, sendo irrelevante a consolidação fática da posse.","A perda da propriedade com fundamento na função social depende de prévia desapropriação pelo Poder Executivo, não podendo ser declarada em ação reivindicatória.","O Juiz poderá privar a sociedade empresária XYZ da propriedade do bem, mediante justa indenização, valendo a sentença, após o pagamento, como título para registro em nome dos possuidores."]'::jsonb,
'D',
'Trata-se da desapropriação judicial privada por posse-trabalho (art. 1.228, §§ 4º e 5º, do CC): quando extensa área está na posse ininterrupta e de boa-fé, por mais de cinco anos, de considerável número de pessoas que nela realizaram obras e serviços de relevante interesse social e econômico, o juiz pode privar o proprietário do bem, mediante justa indenização, valendo a sentença, após pago o preço, como título para registro em nome dos possuidores. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Civil',
'Uma startup desenvolveu um aplicativo de monitoramento de hábitos de consumo digital, coletando dados pessoais mediante autorização no cadastro. Depois, passou a usar parte dos dados para análise estatística interna e melhoria da segurança, sem novo consentimento, e compartilhou dados com autoridades públicas para cumprir ordem judicial. Sobre as bases legais da LGPD, assinale a afirmativa correta.',
'',
'',
'["O tratamento de dados pessoais pode ocorrer com base em diferentes fundamentos jurídicos previstos na legislação, incluindo consentimento, cumprimento de obrigação legal e interesse legítimo do controlador.","O tratamento de dados pessoais somente pode ocorrer mediante consentimento expresso do titular, não sendo admitidas outras bases legais.","A empresa somente poderia tratar os dados para finalidades estatísticas ou de segurança se obtivesse um novo consentimento específico dos titulares, não havendo outra base legal aplicável.","O compartilhamento de dados pessoais com autoridades públicas depende sempre de consentimento prévio do titular."]'::jsonb,
'A',
'A LGPD prevê diversas bases legais para o tratamento de dados pessoais além do consentimento, como o cumprimento de obrigação legal ou regulatória, o exercício regular de direitos em processo, a proteção da vida, a tutela da saúde e o legítimo interesse do controlador (art. 7º da Lei nº 13.709/2018). Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Civil',
'Carla, atriz iniciante, participou de campanha publicitária, autorizando expressamente o uso de sua imagem em redes sociais da contratante por seis meses. Encerrado o prazo, a imagem continuou sendo usada em novas campanhas, inclusive vinculada a produtos que não existiam à época da autorização. À luz do Código Civil e da jurisprudência do STJ, assinale a orientação correta.',
'',
'',
'["A utilização da imagem de Carla após o prazo inicialmente autorizado é lícita, pois a autorização para uso de imagem possui natureza irretratável.","A utilização da imagem após o prazo contratual apenas gera responsabilidade civil se Carla comprovar prejuízo econômico direto decorrente da divulgação.","A utilização da imagem após o prazo autorizado não configura ilícito, pois a empresa possui direito de exploração econômica da campanha publicitária produzida.","A utilização da imagem de Carla após o término da autorização constitui violação a direito da personalidade, sendo cabível a cessação da divulgação e eventual indenização por danos."]'::jsonb,
'D',
'O direito à imagem é direito da personalidade (art. 20 do CC). A autorização para uso de imagem é limitada aos termos e ao prazo pactuados; expirado o prazo ou extrapolada a finalidade, a utilização passa a ser indevida, cabendo a cessação da divulgação e indenização, inclusive independentemente de prova de prejuízo em caso de uso para fins comerciais (Súmula 403 do STJ). Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Civil',
'Carolina nasceu durante o casamento de Márcia com Paulo, que a registrou e exerceu por mais de 20 anos a paternidade, com sólido vínculo socioafetivo. Depois, Carolina ajuizou investigação de paternidade contra Roberto, pai biológico, que reconheceu a filiação. Carolina deseja manter o vínculo com Paulo e ver reconhecida a ascendência biológica. À luz da CRFB, do Código Civil e do STF, assinale a afirmativa correta.',
'',
'',
'["O reconhecimento da paternidade biológica não impede a manutenção da paternidade socioafetiva anteriormente constituída, sendo possível a coexistência de ambos os vínculos jurídicos de filiação, com a produção dos respectivos efeitos pessoais e patrimoniais.","O reconhecimento da paternidade biológica impede a desconstituição do vínculo socioafetivo apenas para fins de alimentos e convivência familiar, permanecendo vedada a produção de efeitos sucessórios em relação ao pai socioafetivo.","O reconhecimento da paternidade biológica somente poderá coexistir com a paternidade socioafetiva se houver concordância expressa dos dois pais, por se tratar de situação excepcional que depende da manifestação de vontade de todos os envolvidos.","O reconhecimento da paternidade biológica torna incompatível a manutenção da paternidade socioafetiva anteriormente estabelecida, devendo prevalecer o vínculo biológico, por constituir a verdadeira origem da filiação."]'::jsonb,
'A',
'Segundo a tese fixada pelo STF no Tema 622 (RE 898.060), a paternidade socioafetiva, declarada ou não em registro, não impede o reconhecimento concomitante do vínculo de filiação biológico (multiparentalidade), com todas as consequências jurídicas, pessoais e patrimoniais. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Estatuto da Criança e do Adolescente',
'Herminda, 30 anos, foi presa em flagrante por homicídio e convertida a prisão em preventiva. Seu filho Gabriel, de 9 anos, ficou sem com quem ficar e teve aplicada a medida de acolhimento institucional. Passados dois meses, Gabriel manifesta reiteradamente a vontade de ter contato com a mãe, e a entidade não sabe como proceder. Assinale a afirmativa correta.',
'',
'',
'["Considerando a gravidade do crime cometido, bem como a prisão preventiva decretada, Gabriel não poderá ter contato com sua genitora.","É preciso ingressar com pedido de alvará judicial ao Juízo Criminal competente para o julgamento de Herminda, para que este autorize a visita de Gabriel à sua mãe.","É preciso ingressar com pedido de alvará judicial ao Juízo da Infância para que a entidade responsável pelo acolhimento institucional promova a visita de Gabriel à sua mãe, que está privada de liberdade.","É garantida a convivência da criança com a mãe privada de liberdade, por meio de visitas periódicas promovidas pela entidade responsável pelo acolhimento institucional, independentemente de autorização judicial."]'::jsonb,
'D',
'O ECA assegura à criança ou ao adolescente acolhido a convivência com a mãe ou o pai privado de liberdade, por meio de visitas periódicas promovidas pelo responsável pelo acolhimento, independentemente de autorização judicial (art. 19, § 4º, do ECA). Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Estatuto da Criança e do Adolescente',
'Ricardo, de 14 anos, foi apreendido após subtrair peças de carne de um supermercado. O Juízo da Infância aplicou a medida socioeducativa de obrigação de reparar o dano, fixando R$ 500,00. Ricardo não conseguiu honrar o valor. Assinale a afirmativa correta.',
'',
'',
'["A impossibilidade de pagamento faz com que a medida se converta em internação.","Diante da manifesta impossibilidade de pagamento, a medida de obrigação de reparar o dano pode ser substituída por outra adequada.","A impossibilidade de pagamento, devidamente comprovada, leva à extinção do processo, já que a medida é educativa e não punitiva.","A impossibilidade de pagamento acarreta a suspensão do processo até os 21 anos de Ricardo, mas, caso haja melhora na condição financeira, o valor deve ser honrado."]'::jsonb,
'B',
'A medida de obrigação de reparar o dano é personalíssima; havendo manifesta impossibilidade de o adolescente cumpri-la, a autoridade poderá substituí-la por outra medida adequada (art. 116, parágrafo único, do ECA). Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito do Consumidor',
'A Associação dos Hotéis do Litoral ofereceu serviço pelo qual, pagando 24 parcelas de R$ 250,00, após dois anos o consumidor ganharia sete diárias. Marina aderiu e pagou pontualmente, mas, por esquecimento, deixou de pagar a 24ª parcela. A associação informou que ela perdera o direito às diárias e considerou o contrato resolvido. Segundo os princípios do Direito do Consumidor, assinale a afirmativa correta.',
'',
'',
'["Com base no princípio da boa-fé objetiva e na teoria do adimplemento substancial, Marina pode insistir na manutenção do direito às diárias.","Com base no princípio da vulnerabilidade do consumidor e na vedação do enriquecimento sem causa, resta a Marina apenas pedir o reembolso das parcelas pagas.","Com base no princípio da informação e na vedação do enriquecimento sem causa, resta a Marina apenas pedir que a regra passe a ser divulgada com mais clareza.","Com base no princípio da informação e na vedação do enriquecimento sem causa, resta a Marina pedir que a regra passe a ser divulgada com mais clareza, bem como pedir o reembolso das parcelas pagas."]'::jsonb,
'A',
'Tendo Marina pago 23 das 24 parcelas, houve adimplemento substancial do contrato. Pela boa-fé objetiva e pela teoria do adimplemento substancial, a resolução do contrato por conta de parcela ínfima remanescente é desproporcional, podendo Marina, oferecendo o pagamento da parcela em aberto, insistir na manutenção do direito às diárias. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito do Consumidor',
'Ana encomendou 2 litros de sorvete diretamente da fábrica Gelado Ltda. Ao receber, percebeu que o pote estava leve e o entregador informou que só restava pouco mais de 1 litro, autorizando o abatimento do preço. Ana insistiu nos 2 litros. Quanto à orientação a ser prestada, assinale a afirmativa correta.',
'',
'',
'["Ana deve permitir que o fabricante apresente outra forma de solução para o problema.","Ana deve aceitar o abatimento do preço, ante a opção exercida pelo preposto do fabricante.","Ana deve ficar com o pote entregue e nada pagar, ante a alegação de que não há mais o produto.","Ana deve optar entre abater o preço, pedir a complementação ou a substituição do produto ou, ainda, o desfazimento da compra."]'::jsonb,
'D',
'Trata-se de vício de quantidade do produto (art. 19 do CDC). O consumidor pode exigir, à sua escolha, o abatimento proporcional do preço, a complementação do peso ou medida, a substituição do produto ou a restituição da quantia paga (desfazimento). A escolha é do consumidor, não do fornecedor. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Empresarial',
'Em 8 de janeiro de 2025, Diamante Moda e Confecções Ltda. sacou duplicata de compra e venda contra Inês Gurjão, no valor de R$ 7.550,00. O título foi apresentado ao sacado em 17 de janeiro de 2025 e aceito. No vencimento não houve pagamento, e o sacador ajuizou execução contra o aceitante, sem protesto. Constatou-se que a duplicata não continha a data de emissão nem o lugar de pagamento. Assinale a afirmativa correta.',
'',
'',
'["Não há título executivo extrajudicial em virtude da ausência da data de emissão, sendo o lugar do pagamento requisito suprível ou não essencial.","A duplicata é título executivo extrajudicial, pois tanto a data de emissão quanto o lugar do pagamento são requisitos supríveis ou não essenciais.","Não há título executivo extrajudicial em virtude da ausência da data de emissão e do lugar do pagamento, ambos requisitos formais e essenciais para a validade da duplicata.","A duplicata é título executivo extrajudicial, pois, com o aceite, ela se torna título autônomo em relação ao negócio subjacente, independentemente da ausência do lugar do pagamento e da data de emissão."]'::jsonb,
'C',
'Questão ANULADA pela banca FGV no 47º Exame de Ordem. O tema envolve os requisitos formais da duplicata (Lei nº 5.474/68) e a sua eficácia como título executivo extrajudicial, discutindo-se a essencialidade da data de emissão e do lugar de pagamento. Por ter sido anulada, não há gabarito oficial válido; a alternativa indicada é meramente de referência.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Empresarial',
'Inês Cabedelo e mais cinco amigos, analistas de investimento, pretendem constituir sociedade simples para consultoria financeira, sem que o exercício da profissão intelectual constitua elemento de empresa, adotando o tipo sociedade anônima, com administração privativa de um dos sócios. Sobre o tipo societário, assinale a afirmativa correta.',
'',
'',
'["A sociedade será empresária, caso os sócios optem por arquivar o ato constitutivo na Junta Comercial; optando os sócios pelo arquivamento do ato constitutivo no Registro Civil de Pessoas Jurídicas, a sociedade será simples.","A sociedade será simples, em virtude de o objeto social não ser atividade própria de empresário, já o ato constitutivo deve ser arquivado no Registro Civil de Pessoas Jurídicas para que ela venha a adquirir personalidade jurídica.","A sociedade será empresária, ainda que a atividade econômica a ser exercida não seja própria de empresário, devendo o ato constitutivo ser arquivado na Junta Comercial para que a sociedade venha a adquirir personalidade jurídica.","A sociedade será simples, em virtude de o objeto social não ser atividade própria de empresário, já o arquivamento do ato constitutivo deve ser feito no Registro Civil de Pessoas Jurídicas, ressalvada a possibilidade de transformação do tipo anônima para limitada, hipótese em que ela será empresária."]'::jsonb,
'C',
'Independentemente de seu objeto, a sociedade por ações (anônima) é sempre empresária, por força de lei (art. 982, parágrafo único, do CC). Adotado o tipo S.A., a sociedade é empresária, ainda que a atividade não seja própria de empresário, devendo o ato constitutivo ser arquivado na Junta Comercial para a aquisição de personalidade jurídica. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Empresarial',
'A sociedade Curtume Massapê Ltda., com sete sócios, tem Maria Caridade como majoritária e única administradora. Ela pretende aprovar a transformação do tipo para sociedade anônima, sem dissolver a sociedade, medida já prevista no contrato social, que autoriza a aplicação supletiva da Lei das S.A. Sobre o quórum e o direito de retirada, assinale a resposta correta.',
'',
'',
'["É preciso a aprovação da medida pelos votos correspondentes a mais da metade do capital social, podendo os sócios renunciar, no contrato social, ao direito de retirada.","A medida pretendida deve ser aprovada pela unanimidade dos sócios e, por conseguinte, não tem cabimento o direito de retirada pela ausência de sócio dissidente da deliberação.","É preciso a aprovação da medida pela maioria de votos dos presentes, sendo direito dos sócios dissidentes pleitear a liquidação de suas quotas se o contrato social dispuser nesse sentido.","Caso seja atingido o quórum deliberativo de três quartos do capital social, a medida estará aprovada, sendo direito potestativo dos sócios dissidentes pleitear a liquidação de suas quotas."]'::jsonb,
'A',
'A transformação depende, em regra, do consentimento de todos os sócios, salvo se prevista no ato constitutivo, caso em que o dissidente poderá retirar-se da sociedade (art. 1.114 do CC). Prevista a transformação no contrato social, a deliberação se dá pelo quórum de mais da metade do capital social (regra da sociedade limitada para alteração contratual, art. 1.076 c/c art. 1.071), e o sócio dissidente tem direito de retirada, do qual, contudo, pode ter renunciado no contrato. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Empresarial',
'A sociedade Antas Comércio de Artigos Esportivos Ltda. é credora quirografária da sociedade Araçás, Camacan & Ibirataia Ltda., cuja falência foi decretada por convolação da recuperação judicial. O crédito foi constituído durante a recuperação e já estava vencido antes da convolação. Sobre os juros de mora, assinale a afirmativa correta.',
'',
'',
'["não incidirão juros de mora nas cobranças de créditos da massa falida, apenas o valor do crédito será atualizado monetariamente até a data do pagamento.","poderão ser cobrados juros de mora a partir da data da decretação da falência, porém o pagamento fica na dependência de ser o ativo apurado suficiente para o pagamento dos credores subordinados.","os juros de mora incidirão sobre o valor do principal, da data do vencimento até a data do pagamento na falência, pois apenas os credores subordinados ficam na dependência da suficiência do ativo para o pagamento dos juros.","poderão ser cobrados juros de mora da data do vencimento até a data da decretação da falência, pois, após esse evento, o pagamento fica na dependência de ser o ativo apurado suficiente para o pagamento dos credores subordinados."]'::jsonb,
'D',
'Os juros vencidos até a data da decretação da falência integram o crédito a ser habilitado. Os juros posteriores à decretação da falência somente são pagos se o ativo apurado for suficiente para o pagamento dos credores subordinados (art. 124 da Lei nº 11.101/2005). Logo, cabem juros de mora da data do vencimento até a decretação da falência, ficando os posteriores condicionados à suficiência do ativo. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Processual Civil',
'Você, advogado(a) de José, ajuizou ação de reintegração de posse com pedido de liminar, alegando esbulho praticado por Thiago há dois meses, contados da propositura. Considerando o procedimento especial das ações possessórias e a liminar nele prevista, assinale a opção que indica o que você deve provar para a reintegração liminar.',
'',
'',
'["Apenas a prova da posse do imóvel.","A prova da posse anterior, do esbulho e de sua data.","O justo título de propriedade e a prova da posse de má-fé de Thiago.","A prova da posse anterior, do esbulho e do perigo da demora ou do risco de dano irreparável."]'::jsonb,
'B',
'Tratando-se de posse nova (esbulho de menos de ano e dia), cabe a liminar de reintegração, cujos requisitos são a prova da posse, do esbulho praticado pelo réu, da data do esbulho e da perda da posse (art. 561 do CPC). Não se exige demonstração de perigo da demora nessa liminar possessória específica. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Processual Civil',
'Fernando ingressou com ação de cobrança contra Márcio e, após o trânsito em julgado, iniciou o cumprimento de sentença para receber R$ 10.000,00. Intimado a pagar, Márcio reconheceu o crédito, depositou R$ 3.000,00 à vista e requereu o pagamento do restante em seis parcelas mensais, com correção e juros de 1% ao mês. Assinale a afirmativa correta.',
'',
'',
'["Márcio tem direito ao parcelamento do débito, independentemente de a execução se originar de título judicial ou extrajudicial.","O parcelamento nos moldes propostos por Márcio somente é cabível no prazo para embargos à execução, não se aplicando ao cumprimento de sentença.","O Juiz pode, a seu critério, conceder o parcelamento independentemente da previsão legal, considerando os princípios da razoabilidade e da proporcionalidade.","O pedido de parcelamento formulado por Márcio deve ser deferido, pois a legislação processual permite essa modalidade de pagamento em qualquer fase de execução."]'::jsonb,
'B',
'O parcelamento do art. 916 do CPC (depósito de 30% mais custas e honorários, e o restante em até 6 parcelas) é cabível na execução de título extrajudicial, no prazo dos embargos. Esse benefício não se aplica à fase de cumprimento de sentença (art. 916, § 7º, do CPC). Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Processual Civil',
'Laura alugou imóvel residencial e vem cumprindo regularmente o contrato, até que William, locador, recusou-se a receber o valor mensal sem justificativa. Laura busca a solução judicial que melhor resguarde seu direito de permanecer no imóvel e afaste a mora. Assinale a orientação correta.',
'',
'',
'["Propor ação monitória, pois o contrato de locação é prova escrita sem eficácia de título executivo.","Propor ação de execução por título extrajudicial, uma vez que a obrigação é líquida, certa e exigível.","Propor ação de consignação em pagamento, a fim de efetuar o pagamento e se eximir dos efeitos da mora.","Interpor mandado de segurança e, por meio de depósito, eximir-se da obrigação, pois a recusa de William configura ato coator, que viola o seu direito líquido e certo previsto no contrato."]'::jsonb,
'C',
'Diante da recusa injustificada do credor em receber, o devedor pode valer-se da ação de consignação em pagamento para depositar o valor devido e liberar-se da obrigação, afastando os efeitos da mora (art. 539 e seguintes do CPC e art. 335 do CC). Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Processual Civil',
'Juliana moveu ação indenizatória contra Antônio, com gratuidade de justiça concedida integralmente. A sentença julgou procedentes os pedidos, mas fixou honorários de sucumbência abaixo do esperado por Paula, advogada de Juliana. Paula, que possui recursos suficientes, pretende recorrer exclusivamente quanto aos honorários. Sobre a pretensão de Paula, assinale a afirmativa correta.',
'',
'',
'["Não é cabível recurso para a reforma de sentença no que tange aos honorários de sucumbência, devendo Paula ajuizar ação própria para requerer a majoração dos honorários fixados.","É admitida a interposição de recurso para a majoração de honorários de sucumbência, e Paula não precisará arcar com o preparo, uma vez que Juliana é beneficiária da gratuidade de justiça.","É admitida a interposição de recurso para a majoração de honorários de sucumbência, embora Paula tenha que arcar com o preparo do recurso e dividir o valor das custas processuais pagas pelas partes ao longo do processo.","É admitida a interposição de recurso para a majoração de honorários de sucumbência e Paula terá de arcar com o preparo do recurso, tendo em vista que possui recursos suficientes para pagá-lo e não faz jus à gratuidade de justiça."]'::jsonb,
'D',
'Os honorários sucumbenciais pertencem ao advogado (art. 85, § 14, do CPC), que tem legitimidade e interesse recursal próprio para pleitear sua majoração. A gratuidade concedida à parte (Juliana) não se estende ao advogado; Paula, possuindo recursos, deve arcar com o preparo do recurso. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Processual Civil',
'Paulo descobriu que foi citado nominalmente em relatório de auditoria interna de órgão público estadual como suposto beneficiário de fraude em licitação, sem jamais ter participado de contratação pública nem ter tido defesa. Ingressou com ação declaratória contra o Estado para declarar a ocorrência de ato ilícito em seu desfavor. O Juízo indeferiu a inicial, por entender incabível a via declaratória. Assinale a afirmativa correta.',
'',
'',
'["O Juízo não agiu corretamente e Paulo deverá interpor recurso de apelação, momento em que poderá ser exercido o juízo de retratação no prazo de dez dias.","O Juízo não agiu corretamente, e Paulo deverá interpor recurso de apelação, argumentando a ocorrência de vício, pois é admissível a ação meramente declaratória, ainda que tenha havido a violação do direito do autor.","O Juízo agiu corretamente ao indeferir a petição inicial de Paulo, pois de acordo com o Código de Processo Civil, não é admissível ação declaratória quando o direito já tiver sido violado, devendo o autor buscar a tutela condenatória ou constitutiva.","O Juízo agiu corretamente, uma vez que Paulo buscou tão somente a declaração judicial de inexistência de vínculo com os fatos narrados, e a Fazenda Pública não pode ser compelida a litigar em face de pedidos meramente declaratórios, cabendo ao autor, pelo menos, formular um pedido condenatório."]'::jsonb,
'B',
'É admissível a ação meramente declaratória, ainda que tenha ocorrido a violação do direito (art. 20 do CPC). Logo, o indeferimento da inicial foi indevido. Da sentença de indeferimento da petição inicial cabe apelação, no prazo de 15 dias, admitido o juízo de retratação pelo próprio juiz em 5 dias (art. 331 do CPC). Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Processual Civil',
'Em demanda indenizatória, a sentença condenou a ré ao pagamento de perdas e danos por inadimplemento contratual, estabelecendo de forma detalhada os critérios de apuração (notas fiscais inadimplidas, correção de cada vencimento e juros a partir da citação), sem fixar o montante final, não havendo controvérsia sobre documentos nem necessidade de novas provas. Após o trânsito em julgado, a credora busca a satisfação do crédito. Assinale a afirmativa correta.',
'',
'',
'["É obrigatória a liquidação por arbitramento, em razão da ausência de fixação do valor na sentença.","A prévia liquidação de sentença pelo procedimento comum é indispensável, por se tratar de condenação ilíquida.","A liquidação pelo procedimento comum é obrigatória, pois a apuração do valor da condenação exige dilação probatória.","O credor pode promover desde logo o cumprimento de sentença, mediante apresentação de memória de cálculo, pois a apuração do valor depende apenas de cálculo aritmético."]'::jsonb,
'D',
'Quando a apuração do valor devido depender apenas de cálculo aritmético, não há necessidade de liquidação; o credor promove desde logo o cumprimento de sentença, instruindo o requerimento com a memória discriminada e atualizada do cálculo (art. 509, § 2º, e art. 524 do CPC). Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Penal',
'Teobaldo, 59 anos, desempregado e usuário de drogas, aproveitando a ausência do filho Túlio, 20 anos, jogador profissional, pulou o muro e arrombou a porta da mansão em que Túlio morava, subtraindo o relógio mais valioso da coleção (R$ 100.000,00), com o fim de vendê-lo para comprar drogas. Assinale a afirmativa correta.',
'',
'',
'["Teobaldo deve ser punido pelo crime de furto qualificado pelo rompimento de obstáculo.","Teobaldo praticou comportamento típico e ilícito, mas está isento de pena devido à relação de parentesco.","Teobaldo praticou comportamento típico, mas cuja antijuridicidade está excluída em razão da relação de parentesco.","Teobaldo praticou comportamento atípico por incidência do princípio da insignificância, haja vista o valor do bem subtraído em comparação com o patrimônio de Túlio."]'::jsonb,
'B',
'A subtração foi praticada pelo pai (Teobaldo) contra o filho (Túlio), sem emprego de violência ou grave ameaça à pessoa, sendo a vítima menor de 60 anos. Incide a escusa absolutória (imunidade penal absoluta) do art. 181, II, do CP, que isenta de pena quem comete crime patrimonial em prejuízo de descendente, não se aplicando as exceções do art. 183. A conduta permanece típica e ilícita, mas Teobaldo fica isento de pena em razão da relação de parentesco. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Penal',
'Júlia, funcionária pública federal, desviou dolosamente para sua conta R$ 10.000,00 destinados à aquisição de material, consumando-se em 1º de março de 2025. Após a instauração de inquérito por peculato, Júlia reparou integralmente o dano em 1º de agosto de 2025, após o oferecimento da denúncia, mas antes de seu recebimento. Sobre a reparação, assinale a afirmativa correta.',
'',
'',
'["A reparação antes do trânsito em julgado gera a extinção da punibilidade.","Configura o instituto do arrependimento posterior, gerando a diminuição da pena.","Configura causa legal de diminuição de pena especificamente aplicável ao crime de peculato, por força do princípio da especialidade.","A reparação antes do recebimento da denúncia configura o instituto do arrependimento eficaz, devendo Júlia responder apenas pelos atos praticados, se constituírem crime autônomo."]'::jsonb,
'B',
'A reparação do dano, por ato voluntário do agente, em crime sem violência ou grave ameaça, até o recebimento da denúncia, configura arrependimento posterior (art. 16 do CP), causa geral de diminuição de pena de um a dois terços, aplicável também ao peculato doloso. No peculato culposo é que a reparação até a sentença irrecorrível extingue a punibilidade (art. 312, § 3º), o que não é o caso. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Penal',
'José planejou subtrair equipamento de uma loja no período noturno e convenceu Pierre, primário e de bons antecedentes, a executar a ação, ciente de que José era reincidente específico em crimes patrimoniais. Pierre arrombou a porta, subtraiu o objeto e dividiu o produto com José, que aguardava a fuga. Ambos foram denunciados por furto qualificado pelo rompimento de obstáculo. Assinale a afirmativa correta.',
'',
'',
'["Pierre é autor e José é partícipe do crime de furto, sendo a reincidência uma circunstância pessoal incomunicável a Pierre.","José deve responder por furto simples, pois o rompimento de obstáculo foi executado pessoalmente por outrem, e não se comunica com ele.","Ambos respondem como coautores do furto qualificado, sendo a reincidência comunicável a Pierre, pois estava ciente dessa circunstância que agrava a pena.","José e Pierre devem responder como coautores do furto qualificado pelo rompimento de obstáculo, sendo a reincidência uma circunstância pessoal incomunicável a Pierre."]'::jsonb,
'D',
'Ambos têm o domínio do fato e dividem a execução do plano, respondendo como coautores do furto qualificado pelo rompimento de obstáculo (que é circunstância objetiva, comunicável). A reincidência, porém, é circunstância de caráter pessoal e, por isso, incomunicável (art. 30 do CP), não se estendendo a Pierre pelo simples fato de ele conhecê-la. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Penal',
'Mariana, primária e com bons antecedentes, foi condenada por apropriação indébita (pena de um a quatro anos). O Juiz fixou a pena-base no mínimo (um ano), sem alterações nas demais fases, determinou regime inicial aberto e substituiu a pena privativa de liberdade por duas restritivas de direitos: prestação de serviços à comunidade e prestação pecuniária. Assinale a afirmativa correta.',
'',
'',
'["A substituição da pena privativa de liberdade por duas penas restritivas de direitos é ilegal, pois nas condenações iguais ou inferiores a um ano, a substituição deve ser feita por multa ou uma pena restritiva de direitos.","A substituição da pena privativa de liberdade está equivocada, pois a pena definitiva não pode ser inferior a dois anos para ser substituída por duas penas restritivas de direitos, devendo, no caso, ser substituída apenas por uma multa ou uma pena restritiva de direitos.","A substituição da pena privativa de liberdade pela prestação de serviços e pela prestação pecuniária está correta, mas a modalidade de prestação de serviços à comunidade é obrigatória e deve ser aplicada sozinha, e não em cumulação com a prestação pecuniária.","A substituição da pena privativa de liberdade está correta, pois, sendo a pena inferior a um ano, é possível que a substituição seja feita por multa ou uma pena restritiva de direitos, mas, excepcionalmente, o Juiz pode aplicar duas, se fundamentado na insuficiência de apenas uma."]'::jsonb,
'A',
'Nas condenações iguais ou inferiores a um ano, a substituição pode ser feita por multa ou por uma pena restritiva de direitos; se superior a um ano, pode ser por uma restritiva e multa ou por duas restritivas (art. 44, § 2º, do CP). Sendo a pena de Mariana de exatamente um ano, a substituição por duas penas restritivas é ilegal. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Carlos foi processado por lesão corporal grave (Art. 129, § 1º, do CP, pena de um a cinco anos). Comprovou-se que era inteiramente incapaz de entender o caráter ilícito do fato por doença mental. O Juízo o absolveu, impondo medida de segurança de internação. Após seis anos de internação, a defesa requer a extinção, pois o prazo ultrapassou a pena máxima, e o último exame atestou melhora, embora sem cessação total da patologia. Assinale a afirmativa correta.',
'',
'',
'["A medida de segurança deve ser extinta, uma vez que a sua duração não pode ultrapassar o limite máximo da pena abstrata cominada ao delito.","O Juiz poderá converter a medida de segurança em pena privativa de liberdade, uma vez que foi verificado que a patologia subsiste e o crime foi praticado com violência.","A medida de segurança de internação deve perdurar por prazo ilimitado, enquanto não for verificada, mediante perícia médica, a cessação da patologia do agente.","A desinternação de Carlos será sempre condicional, devendo ser restabelecida caso ele pratique, no prazo de dez anos, fato que revele a persistência de sua periculosidade."]'::jsonb,
'A',
'Segundo a jurisprudência consolidada (STF e Súmula 527 do STJ), a medida de segurança não pode ultrapassar o limite máximo da pena abstratamente cominada ao delito. Decorrido esse limite (cinco anos, no caso), a medida deve ser extinta, sem prejuízo de eventual tratamento no âmbito civil. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Durante assembleia de condomínio, Paulo, Juiz de Direito, ciente da falsidade, afirmou diante de todos que o síndico Roberto, advogado, desviou criminosamente R$ 10.000,00 do fundo de reserva para pagar dívidas pessoais. No dia seguinte, Paulo enviou mensagem privada a Roberto: “Além de desonesto, você é um incapaz e um estúpido.” Assinale a afirmativa correta.',
'',
'',
'["Paulo cometeu o crime de difamação durante a assembleia, ao imputar fato ofensivo à reputação de Roberto, e o crime de injúria, ao enviar a mensagem telefônica privada.","Em relação à afirmação feita na assembleia, Paulo poderia se valer da exceção da verdade apenas se Roberto fosse funcionário público e o crime tivesse sido cometido no exercício de suas funções.","A afirmação feita na assembleia configura o crime de calúnia, pois Paulo imputou falsamente a Roberto um fato definido como crime, enquanto a mensagem telefônica privada configura o crime de injúria.","Por se tratar de uma discussão em assembleia de condomínio, a conduta de Paulo é atípica em relação ao que foi dito publicamente, sendo protegida pela imunidade judiciária, restando apenas o crime de injúria pela mensagem telefônica privada."]'::jsonb,
'C',
'Imputar falsamente a alguém fato definido como crime (o desvio criminoso de valores), ciente da falsidade, configura calúnia (art. 138 do CP). As expressões ofensivas dirigidas a Roberto na mensagem privada (desonesto, incapaz, estúpido) atingem a honra subjetiva, configurando injúria (art. 140). Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Processual Penal',
'Thaís responde a ação penal por roubo e teve decretada a quebra da fiança por, deliberadamente, praticar ato destinado à obstrução do andamento do processo. O Juiz decretou a perda da totalidade do valor da fiança. Em recurso, você deve argumentar que',
'',
'',
'["não é possível decretar a quebra da fiança por ato de obstrução ao andamento do processo.","a consequência legal da quebra da fiança é a perda da metade de seu valor e não a totalidade da fiança.","a quebra da fiança não é matéria passível de discussão perante o Juiz de primeiro grau, porque somente pode ser decretada por decisão de Plenário de Tribunal.","a consequência legal da quebra da fiança é a perda de 1/3 do valor, não sendo possível decretar a quebra da fiança por ato de obstrução ao andamento do processo."]'::jsonb,
'B',
'A obstrução deliberada do andamento do processo é causa de quebramento da fiança (art. 341 do CPP). Quebrada a fiança, a consequência é a perda de metade do seu valor (art. 343 do CPP), e não da totalidade. Logo, deve-se argumentar pela perda de apenas metade. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Processual Penal',
'Amanda, servidora pública federal, durante suas férias, agrediu com socos Joana, sua vizinha, por estacionamento indevido na vaga de garagem, no condomínio em que ambas residem. Joana ficou 50 dias impossibilitada de trabalhar. O MPF ofereceu denúncia por lesão corporal grave, recebida pelo Juiz Federal. Além do mérito, você deve alegar, processualmente,',
'',
'',
'["a incompetência relativa da Justiça Federal.","a exceção da verdade, uma vez que Joana estava estacionando na vaga reservada para Amanda.","a necessidade de enviar o processo para o Superior Tribunal de Justiça, uma vez que a ré é servidora pública federal.","a incompetência absoluta da Justiça Federal, uma vez que o fato não tem relação com a função de servidora pública de Amanda."]'::jsonb,
'D',
'A competência da Justiça Federal exige lesão a bens, serviços ou interesses da União, suas entidades autárquicas ou empresas públicas (art. 109 da CRFB/88). A agressão por desavença de vizinhança, durante as férias e sem relação com a função pública de Amanda, não atrai a Justiça Federal, configurando sua incompetência absoluta (em razão da matéria). Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Processual Penal',
'Sílvia foi vítima de roubo praticado por Antônio, que subtraiu o relógio dela mediante grave ameaça. Antônio foi preso em flagrante e o relógio devolvido. Após a conclusão do inquérito, no dia da remessa ao Ministério Público, Sílvia ofereceu queixa-crime. Como advogado(a) de Antônio, assinale a alegação a apresentar.',
'',
'',
'["A falta de interesse de agir, uma vez que o relógio foi devolvido para a vítima.","A impossibilidade jurídica do pedido, uma vez que caberia ao Ministério Público formular o pedido.","A falta de justa causa para a ação, em virtude da devolução do bem subtraído ser causa extralegal de extinção de punibilidade.","A ilegitimidade ativa para a deflagração da demanda, porque o crime de roubo é de ação penal pública incondicionada e não existe inércia do Ministério Público."]'::jsonb,
'D',
'O roubo é crime de ação penal pública incondicionada, cuja titularidade é do Ministério Público. A queixa-crime (ação penal privada subsidiária) só seria cabível em caso de inércia do MP, o que não ocorreu, pois os autos foram remetidos ao Parquet no mesmo dia. Logo, falta à vítima legitimidade ativa para a propositura da ação. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Processual Penal',
'João, funcionário público, foi condenado a seis anos de reclusão por peculato e interpôs apelação pedindo a pena mínima de dois anos. No julgamento, a sentença foi mantida, tendo sido vencido o voto do relator, que era favorável ao pleito defensivo. Diante disso, a defesa deve opor',
'',
'',
'["revisão criminal.","agravo em execução.","embargos infringentes.","embargos de divergência."]'::jsonb,
'C',
'Cabem embargos infringentes e de nulidade, no prazo de 10 dias, quando não for unânime a decisão de segunda instância desfavorável ao réu (art. 609, parágrafo único, do CPP). Havendo voto vencido favorável à defesa, cabem os embargos infringentes. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Processual Penal',
'Rubens está sendo investigado por tráfico internacional de drogas (Art. 33 c/c Art. 40, I, da Lei nº 11.343/2006). No curso da investigação, foi citado para responder ação penal por receptação de animais (Art. 180-A), com pena de reclusão de 2 a 5 anos. Rubens não possui outras anotações criminais. Em preliminares da resposta à acusação, você deve requerer a remessa ao MP para proposta de',
'',
'',
'["suspensão condicional da pena.","acordo de não persecução penal.","acordo de colaboração premiada.","suspensão condicional do processo."]'::jsonb,
'B',
'O acordo de não persecução penal é cabível em crimes sem violência ou grave ameaça, com pena mínima inferior a 4 anos, para investigado que confesse formalmente (art. 28-A do CPP). A receptação de animais (art. 180-A) tem pena mínima de 2 anos, enquadrando-se. A suspensão condicional do processo exige pena mínima não superior a 1 ano, o que não é o caso. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Processual Penal',
'O Ministério Público arrolou Júlio como testemunha de acusação. Na audiência, Júlio prestou depoimento totalmente favorável à defesa. Por isso, o MP requereu a dispensa e desconsideração da prova, afirmando que, por ter sido ele quem arrolou a testemunha, poderia dispensá-la quando o resultado lhe fosse desfavorável. Na defesa de Cesar, assinale o princípio a ser alegado para manter a prova.',
'',
'',
'["Princípio da oportunidade.","Princípio da comunhão da prova.","Princípio da presunção de inocência.","Princípio da obrigatoriedade da ação penal pública."]'::jsonb,
'B',
'Pelo princípio da comunhão (ou aquisição) da prova, uma vez produzida, a prova pertence ao processo e a todas as partes, não podendo ser desconsiderada apenas porque beneficia a parte contrária àquela que a requereu. Assim, a prova testemunhal favorável à defesa deve ser mantida. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Previdenciário',
'Manuel Luz, profissional autônomo em situação regular perante a Previdência Social, sofreu acidente no fim de semana praticando esportes com amigos, sem conexão com a atividade remunerada, e ficará afastado por, no mínimo, um ano. Assinale a afirmativa correta.',
'',
'',
'["Manuel poderá obter o auxílio-acidente, o qual não possui relação necessária com a atividade remunerada, desde que a incapacidade ultrapasse 30 dias.","O benefício de incapacidade temporária poderá ser concedido a Manuel, independentemente de comprovação de carência, que é dispensada nesse caso hipotético.","Manuel poderá obter aposentadoria por incapacidade permanente, pois o afastamento superior a um ano produz presunção de invalidez, na forma da legislação vigente.","Manuel não terá direito a qualquer prestação da Previdência Social, pois o acidente não possui qualquer conexão com a sua atividade remunerada, sendo decorrência de responsabilidade exclusiva do segurado."]'::jsonb,
'B',
'Independe de carência a concessão do benefício por incapacidade temporária e por incapacidade permanente nos casos de acidente de qualquer natureza ou causa (art. 26, II, da Lei nº 8.213/91). Como Manuel é segurado em situação regular e sofreu acidente de qualquer natureza, pode obter o benefício por incapacidade temporária sem comprovar carência. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Previdenciário',
'Jorge Almeida, servidor público federal vinculado a Regime Próprio de Previdência Social, para o qual contribui normalmente, procura você sobre uma possível nova filiação ao Regime Geral de Previdência Social. Assinale a afirmativa correta.',
'',
'',
'["Jorge, caso manifeste expressamente a vontade, poderá ser segurado facultativo do Regime Geral de Previdência Social.","Jorge, em hipótese alguma, poderá filiar-se ao Regime Geral de Previdência Social de forma simultânea ao Regime Próprio de Previdência Social da União.","Jorge poderá filiar-se ao Regime Geral de Previdência Social na condição de empregador doméstico, situação na qual poderá obter todos os benefícios desse regime.","Jorge, caso desempenhe atividade remunerada lícita, concomitantemente ao seu cargo público federal, poderá ser filiado como segurado obrigatório do Regime Geral de Previdência Social."]'::jsonb,
'D',
'É vedada a filiação ao RGPS como segurado facultativo de quem já é segurado obrigatório de regime próprio (art. 201, § 5º, da CRFB/88). Entretanto, se Jorge exercer, concomitantemente ao cargo público, atividade remunerada abrangida pelo RGPS, será segurado obrigatório desse regime em relação a essa atividade. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito do Trabalho',
'Uma sociedade empresária de varejo implementou banco de horas por acordo individual escrito, com compensação em até seis meses e limite de duas horas extras diárias. Em alguns períodos, o volume de horas acumuladas ficou muito alto e a empresa não conseguiu conceder as folgas no prazo. Os empregados consultam sobre a validade. Assinale a orientação correta.',
'',
'',
'["O banco de horas pode ser instituído por acordo individual escrito, desde que a compensação ocorra no período máximo de seis meses. Ultrapassado esse prazo, as horas não compensadas devem ser pagas como extras, acrescidas do adicional.","O banco de horas implementado por acordo individual é totalmente inválido, pois a Constituição Federal exige uma negociação coletiva para a instituição de qualquer regime de compensação de jornada.","O banco de horas é válido, mesmo por acordo individual, desde que a compensação ocorra no prazo máximo de um ano, sendo o prazo de seis meses estabelecido pela sociedade empresária uma liberalidade.","O banco de horas é válido apenas se a compensação for feita integralmente no mesmo mês, caso contrário, as horas extras devem ser pagas com o adicional legal."]'::jsonb,
'A',
'O banco de horas pode ser pactuado por acordo individual escrito, desde que a compensação ocorra no período máximo de seis meses (art. 59, § 5º, da CLT). Não compensadas as horas nesse prazo, elas devem ser pagas como horas extras, com o respectivo adicional. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito do Trabalho',
'Joana e Paula foram contratadas como Engenheiro Civil Júnior em 1º/01/2020, com as mesmas atribuições. Em 1º/07/2021, Joana foi promovida a Pleno, com novas responsabilidades. Em 1º/01/2022, foi contratada Carla, também Júnior, com salário superior, mesmas funções, igual produtividade e perfeição técnica de Paula. Paula pediu equiparação a Carla, indeferida com base em quadro de carreira que entrará em vigor. Assinale a afirmativa correta.',
'',
'',
'["Paula tem direito à equiparação do seu salário ao de Joana, pois ambas foram contratadas na mesma data e para o mesmo cargo, e a diferença salarial sem justificativa é discriminatória.","Paula não tem direito à equiparação do seu salário ao de Carla, pois a contratação de uma nova empregada com salário superior não configura equiparação, e sim política salarial da sociedade empresária.","Paula não tem direito à equiparação do seu salário ao de Carla, pois a diferença salarial se justifica pela existência de um quadro de carreira na sociedade empresária que entrará em vigor, o que afasta a presunção de discriminação.","Paula tem direito à equiparação do seu salário ao de Carla, porque ambas exercem as mesmas funções, com a mesma produtividade e perfeição técnica, considerando, ainda, que a diferença de tempo na função não é superior a dois anos."]'::jsonb,
'D',
'A equiparação salarial exige identidade de função, mesma produtividade e perfeição técnica, mesmo empregador e localidade, e diferença de tempo de serviço na função não superior a 4 anos e de tempo de serviço para o mesmo empregador não superior a 2 anos (art. 461 da CLT). Paula e Carla exercem a mesma função, com igual produtividade e perfeição técnica, e a diferença de tempo é inferior a dois anos, fazendo jus à equiparação. O quadro de carreira que apenas entrará em vigor não afasta o direito. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito do Trabalho',
'Mariana, empregada gestante, foi dispensada sem justa causa quando, sem saber, estava no terceiro mês de gravidez. Depois, confirmou a gravidez e comunicou ao empregador, que se recusou a reintegrá-la alegando desconhecimento da gravidez no momento da dispensa. Assinale a orientação jurídica correta.',
'',
'',
'["Mariana tem direito à estabilidade da gestante, mas não à reintegração; a garantia restringe-se aos salários e demais direitos correspondentes ao período de estabilidade.","Mariana tem direito à estabilidade provisória da gestante desde a confirmação da gravidez, e tem direito à reintegração ou à indenização substitutiva correspondente ao período.","Mariana tem direito à estabilidade da gestante, mas o empregador só seria obrigado a reintegrá-la se a gravidez tivesse sido comunicada por meio de atestado médico antes da dispensa.","Mariana não tem direito à estabilidade da gestante, pois o empregador desconhecia a condição dela no momento da dispensa, e a lei exige a comunicação formal da gravidez antes da rescisão."]'::jsonb,
'B',
'A estabilidade da gestante é garantida desde a confirmação da gravidez até cinco meses após o parto (art. 10, II, b, do ADCT), sendo de responsabilidade objetiva do empregador, independentemente do seu conhecimento sobre a gravidez (Súmula 244 do TST). A empregada tem direito à reintegração ou, inviável esta, à indenização substitutiva do período. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito do Trabalho',
'Mário, empregado da sociedade Carga Pesada, envolveu-se em acidente de trânsito dirigindo o caminhão da empresa, causando danos ao veículo e à carga. A empresa, alegando culpa exclusiva de Mário por imprudência, descontou o valor do prejuízo do salário dele. Não havia cláusula contratual permitindo o desconto, e ele não agiu com dolo. Assinale a orientação correta.',
'',
'',
'["O desconto salarial é ilícito, porque o dano não foi causado por dolo do empregado.","O desconto salarial é ilícito, pois a CLT veda qualquer tipo de desconto salarial, salvo por determinação judicial ou contribuição previdenciária.","O desconto salarial é lícito, caso Mário tivesse agido com dolo, pois a culpa não autoriza o empregador a efetuar descontos sem a prévia autorização judicial.","O desconto salarial é lícito, pois o empregado é responsável pelos danos que causar ao patrimônio do empregador, independentemente de previsão contratual ou culpa."]'::jsonb,
'A',
'O desconto por danos causados pelo empregado só é lícito quando houver dolo, ou, em caso de culpa, quando essa possibilidade tiver sido acordada previamente (art. 462, § 1º, da CLT). Como Mário não agiu com dolo e não havia cláusula autorizando o desconto em caso de culpa, o desconto é ilícito. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito do Trabalho',
'O proprietário de uma rede de farmácias, irritado com reiterados atrasos de um farmacêutico que já recebera advertências, decidiu aplicar uma suspensão disciplinar de 45 dias como medida educativa severa, para evitar a dispensa por justa causa. O empregado recusou-se a assinar e informou que ingressará com medida judicial. Assinale a orientação correta.',
'',
'',
'["A penalidade é válida e está inserida no poder diretivo e regulamentar do empregador, que possui autonomia para fixar o tempo de suspensão conforme a gravidade da falta.","A suspensão é legítima, mas o empregador deve obrigatoriamente pagar os salários do período, sob pena de configurar alteração contratual lesiva.","O empregador agiu corretamente ao evitar a justa causa, podendo suspender o contrato por até 90 dias antes de optar pela rescisão definitiva.","A suspensão do empregado por mais de 30 dias consecutivos importa na rescisão injusta do contrato de trabalho, sendo a penalidade considerada ilegal."]'::jsonb,
'D',
'A suspensão disciplinar do empregado por mais de 30 dias consecutivos importa na rescisão injusta do contrato de trabalho (art. 474 da CLT). Logo, a suspensão de 45 dias é ilegal e caracteriza dispensa injusta. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual do Trabalho',
'O empregado Antônio e a sociedade Construção Forte Ltda. chegaram a um acordo extrajudicial para pôr fim à relação de emprego e às controvérsias, assistidos por seus respectivos advogados, e desejam homologá-lo pela Justiça do Trabalho para que tenha força de título executivo judicial. Quanto ao procedimento adequado, assinale a afirmativa correta.',
'',
'',
'["As partes devem apresentar, em conjunto, o acordo extrajudicial ao Juízo competente, que designará audiência se entender necessário e proferirá sentença.","A homologação de acordo extrajudicial não é mais possível na Justiça do Trabalho, devendo as partes ajuizar uma reclamação trabalhista e buscar a conciliação em Juízo.","As partes devem requerer a homologação por meio de petição conjunta ao Juízo competente, que analisará a validade e a conformidade do acordo com a lei, sem a previsão legal para a audiência.","As partes podem requerer a homologação, mas o Juiz é obrigado a homologar o acordo, desde que as partes estejam assistidas por advogados distintos, não cabendo a ele analisar o mérito."]'::jsonb,
'A',
'O processo de jurisdição voluntária para homologação de acordo extrajudicial (arts. 855-B a 855-E da CLT) inicia-se por petição conjunta, obrigatoriamente assistidas as partes por advogados distintos. O juiz analisará o acordo, designará audiência se entender necessário e proferirá sentença. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual do Trabalho',
'Joana, ex-empregada da Inovação Digital Ltda., ajuizou reclamação trabalhista pleiteando verbas rescisórias e indenização por danos morais decorrentes de assédio sexual. Pretende também discutir a validade de contrato de participação nos lucros e resultados (PLR), cujas regras teriam sido alteradas unilateralmente. Sobre a competência da Justiça do Trabalho, assinale a afirmativa correta.',
'',
'',
'["É competente apenas para julgar os pedidos de verbas rescisórias, sendo os demais pedidos de competência da Justiça Comum.","É competente para julgar todos os pedidos formulados por Joana, uma vez que decorrem da relação de trabalho, inclusive a questão da PLR.","É competente para julgar os pedidos de verbas rescisórias e danos morais, mas a questão da PLR deve ser discutida na Justiça Comum, pois se trata de direito societário.","É competente para julgar a totalidade dos pedidos, mas a indenização por danos morais deve ser remetida à Justiça Comum, por não ter natureza exclusivamente trabalhista."]'::jsonb,
'B',
'Compete à Justiça do Trabalho processar e julgar as ações oriundas da relação de trabalho, incluindo as indenizações por dano moral ou patrimonial decorrentes dessa relação (art. 114, I e VI, da CRFB/88). As verbas rescisórias, a indenização por assédio sexual e a controvérsia sobre a PLR decorrem da relação de trabalho, sendo todas de competência da Justiça do Trabalho. Correta a alternativa B.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual do Trabalho',
'A sociedade Viação Cruzeiro Ltda. foi condenada em primeira instância a pagar R$ 80.000,00 e deseja interpor Recurso Ordinário. Ela não está em recuperação judicial, falência, nem é beneficiária da justiça gratuita. Quanto às condições para o regular processamento do recurso, assinale a afirmativa correta.',
'',
'',
'["Ela deverá recolher apenas o valor das custas processuais, pois o depósito recursal só é exigível em fase de execução, após a liquidação da sentença.","Ela está isenta do recolhimento do depósito recursal, pois o valor da condenação é inferior a 100 salários mínimos, devendo recolher apenas as custas processuais.","Ela tem o direito de parcelar o valor do depósito recursal em até seis vezes, mediante comprovação de dificuldade financeira, mas o recolhimento das custas deve ser integral.","Ela deverá efetuar o pagamento das custas processuais e do depósito recursal de forma integral, no prazo e nos valores corretos, sob pena de não conhecimento do recurso por deserção."]'::jsonb,
'D',
'O regular processamento do recurso trabalhista exige o recolhimento das custas e do depósito recursal, nos prazos e valores corretos, sob pena de deserção (arts. 789 e 899 da CLT). Não havendo isenção aplicável (recuperação judicial, falência, entidade sem fins lucrativos, etc.), a empresa deve recolher ambos integralmente. Correta a alternativa D.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual do Trabalho',
'Paulo ajuizou reclamação pleiteando horas extras e adicional de insalubridade. A sentença condenou a microempresa só às horas extras, indeferindo a insalubridade. A microempresa interpôs Recurso Ordinário no prazo. Paulo não recorreu, mas, após notificado para contrarrazoar, deseja também recorrer quanto à insalubridade. Assinale a orientação correta.',
'',
'',
'["Paulo poderá interpor Embargos de Declaração, pois ainda não houve o trânsito em julgado da decisão, e essa medida permitirá a rediscussão da matéria relativa ao adicional de insalubridade.","Paulo poderá interpor Recurso de Revista, pois a decisão de primeiro grau já foi proferida e a microempresa já recorreu, o que garante a abertura da instância superior para a análise de todas as matérias controvertidas.","Paulo poderá interpor Recurso Ordinário na modalidade adesiva, dentro do prazo das contrarrazões ao recurso principal da microempresa, pois o Recurso Adesivo segue a sorte do principal e permite a impugnação da parte da sentença que lhe foi desfavorável.","Paulo não poderá mais recorrer, pois o prazo para interpor o Recurso Ordinário já se encerrou, operando-se a preclusão temporal para a sua manifestação de inconformismo com a sentença, podendo apenas se manifestar em contrarrazões sobre o recurso da microempresa."]'::jsonb,
'C',
'Diante da sucumbência recíproca, o recurso adesivo é admissível também no processo do trabalho (Súmula 283 do TST), devendo ser interposto no prazo das contrarrazões. Paulo pode interpor Recurso Ordinário adesivo para impugnar a parte da sentença que lhe foi desfavorável (indeferimento do adicional de insalubridade), ficando subordinado ao recurso principal. Correta a alternativa C.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual do Trabalho',
'Após Dissídio Coletivo de natureza econômica, foi proferida sentença normativa estabelecendo novas condições de trabalho e reajustes para a categoria profissional X na base territorial Y. A sociedade Comércio Atacadista Brasileiro Ltda., abrangida pela sentença, não cumpriu as novas condições. Quanto à medida judicial cabível para exigir o cumprimento, assinale a afirmativa correta.',
'',
'',
'["O empregado individualmente, ou o sindicato da categoria profissional, pode ajuizar Ação de Cumprimento na Justiça do Trabalho para exigir o cumprimento das obrigações decorrentes da sentença normativa, sendo que o empregado não necessita de assistência sindical para ajuizar a ação.","Não é cabível nenhuma medida judicial, pois a sentença normativa tem caráter meramente declaratório e não impõe obrigações diretas de pagamento, dependendo de acordo extrajudicial para sua efetivação.","O empregado deverá necessariamente ajuizar uma reclamação trabalhista individual para pleitear as diferenças salariais e as demais verbas, pois a sentença normativa não possui eficácia executória direta para cada trabalhador.","O sindicato da categoria profissional X deverá ajuizar uma Ação de Cumprimento em nome de todos os empregados, sendo esta a única medida cabível para exigir o cumprimento da sentença normativa."]'::jsonb,
'A',
'Para exigir o cumprimento das obrigações decorrentes de sentença normativa (ou de convenção/acordo coletivo), cabe a ação de cumprimento (art. 872 da CLT). Têm legitimidade tanto o sindicato quanto o próprio empregado, individualmente, não sendo exigida assistência sindical para que o trabalhador ajuíze a ação. Correta a alternativa A.'
from public.exams where slug = 'oab-47-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
