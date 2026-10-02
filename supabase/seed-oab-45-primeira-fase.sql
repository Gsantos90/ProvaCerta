-- Seed: OAB - 45o Exame de Ordem Unificado (1a fase)
-- Ordem dos Advogados do Brasil - Banca FGV - Tipo 1 (Branca) - 80 questoes
-- Gabarito oficial (Tipo 1):
--  1-A  2-A  3-C  4-C  5-B  6-A  7-D  8-B  9-B 10-C
-- 11-C 12-D 13-B 14-A 15-D 16-A 17-B 18-A 19-C 20-A
-- 21-D 22-C 23-A 24-D 25-B 26-C 27-B 28-B 29-D 30-B
-- 31-D 32-A 33-A 34-D 35-D 36-C 37-C 38-D 39-A 40-A
-- 41-B 42-D 43-D 44-C 45-B 46-D 47-B 48-C 49-A 50-C
-- 51-B 52-C 53-D 54-A 55-B 56-D 57-D 58-C 59-D 60-C
-- 61-A 62-B 63-C 64-A 65-B 66-C 67-B 68-D 69-A 70-D
-- 71-A 72-D 73-D 74-B 75-D 76-C 77-B 78-B 79-A 80-A

insert into public.exams (slug, title, source, year)
values ('oab-45-primeira-fase', 'OAB 45º Exame de Ordem Unificado (1ª fase)', 'oab', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- ETICA E ESTATUTO DA OAB (Questoes 1 a 8)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Ética e Estatuto da OAB',
'Os irmãos Matilde, advogada, e Frederico, consultor de empresas, decidiram firmar sociedade para prestar serviços jurídicos e de consultoria empresarial em Belo Horizonte, divulgando os serviços por panfletos e redes sociais e ressaltando a natureza jurídica e empresarial das atividades. Em relação às regras sobre a atividade privativa de advocacia e à publicidade de serviços advocatícios, conforme o Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["É vedada a divulgação dos serviços advocatícios em conjunto com qualquer outra atividade, inclusive a de consultoria empresarial.","A publicidade conjunta dos serviços advocatícios e empresariais é permitida apenas quando realizada por meio de plataformas digitais, como redes sociais.","Matilde e Frederico podem atuar conjuntamente, já que as atividades jurídicas e de consultoria empresarial possuem afinidade e se complementam.","A divulgação dos serviços advocatícios juntamente com atividades de consultoria empresarial é permitida, desde que os materiais de publicidade sejam sóbrios e não induzam ao erro."]'::jsonb,
'A',
'A advocacia é incompatível com a exploração conjunta com outra atividade, e o Estatuto e o Código de Ética vedam a divulgação da advocacia em conjunto com outra atividade (como a consultoria empresarial), bem como a mercantilização da profissão. Por isso, é vedada a divulgação dos serviços advocatícios em conjunto com qualquer outra atividade (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Ética e Estatuto da OAB',
'Helena, mestre em Administração Pública, sem formação em Direito nem inscrição na OAB, passou a oferecer consultoria jurídica e a atuar em audiências representando clientes. André, advogado inscrito, foi suspenso por infração disciplinar e, mesmo suspenso, continuou a peticionar e participar de audiências. Com base nessas situações, assinale a afirmativa correta.',
'',
'',
'["Os atos praticados por André, após a sua suspensão da OAB, são nulos, pois ele está impedido de exercer a advocacia enquanto durar a suspensão.","Os atos privativos da advocacia praticados por Helena, que não possui inscrição na OAB, são válidos, desde que seus clientes a autorizem expressamente, ratificando os atos por ela praticados.","Os atos praticados por Helena são válidos, desde que restritos à consultoria extrajudicial e relacionados à administração pública, uma vez que ela não representa clientes em processos judiciais.","Tanto os atos praticados por Helena quanto os atos praticados por André são anuláveis, porém sujeitos à convalidação, pois a atuação em audiências e a prática de consultoria jurídica, embora preferencialmente exercidas por advogados, podem, excepcionalmente, ser exercidas por pessoa com conhecimento jurídico."]'::jsonb,
'A',
'Os atos privativos de advocacia praticados por quem não é inscrito, ou por advogado impedido/suspenso, são nulos (art. 4º do Estatuto da OAB). Como André estava suspenso, estava impedido de exercer a advocacia, de modo que os atos por ele praticados nesse período são nulos (alternativa A). Os atos de Helena, não inscrita, também são nulos - não se convalidam por autorização do cliente (afastando B, C e D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Ética e Estatuto da OAB',
'Tarcísio, advogado trabalhista, após aprovação em concurso para a Outorga de Delegações de Serventias Notariais e Registrais, assumiu um Tabelionato de Notas e Ofício de Registro Civil. Ele deseja continuar advogando em causa própria e patrocinar ação contra a empresa pública estadual de água. Sobre incompatibilidades e impedimentos, com base no Estatuto da OAB, assinale a afirmativa correta.',
'',
'',
'["Tarcísio poderá exercer a advocacia apenas em causa própria, conforme prevê o Estatuto da OAB, mas estará impedido de advogar contra a empresa pública estadual de fornecimento de água.","Tarcísio poderá advogar livremente, inclusive contra a empresa pública estadual de fornecimento de água, uma vez que o exercício da atividade notarial não gera impedimento para o exercício da advocacia.","Tarcísio está em situação de incompatibilidade total com o exercício da advocacia, sendo vedada a atuação em qualquer causa, inclusive em causa própria, em razão de seu cargo como titular de serventia notarial e registral.","Tarcísio poderá continuar exercendo a advocacia, desde que em causas particulares que não envolvam empresas públicas ou concessionárias de serviço público, estando livre de impedimentos em ações de interesse pessoal."]'::jsonb,
'C',
'Os titulares de serventias notariais e de registro estão em situação de INCOMPATIBILIDADE com a advocacia (art. 28 do Estatuto da OAB), que é a proibição total do exercício, inclusive em causa própria. Diferentemente do impedimento (proibição parcial), a incompatibilidade veda a advocacia em qualquer causa (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Ética e Estatuto da OAB',
'A advogada Jéssica foi contratada pela sociedade empresária Alfa para trabalhar 10 horas contínuas por dia, de segunda a quinta-feira, totalizando 40 horas semanais, com previsão de horas extras remuneradas com adicional de 50%. Jéssica questiona a validade dessas condições. Com base no Art. 20 do Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["O contrato de Jéssica é válido, pois a jornada semanal não ultrapassa 40 horas, e as horas extras podem ser remuneradas com um adicional de 50% conforme estipulado no contrato.","A sociedade empresária está correta ao fixar 10 horas de trabalho por dia, desde que Jéssica cumpra apenas quatro dias de trabalho por semana, sem a necessidade de pagamento de horas extras.","O contrato de Jéssica é inválido, pois a jornada diária não pode exceder 8 horas contínuas, e as horas extras devem ser remuneradas com um adicional de 100%, conforme previsto no Estatuto da OAB, independentemente do contrato firmado.","A sociedade empresária está agindo corretamente, pois Jéssica pode trabalhar até 10 horas por dia desde que sua jornada semanal não ultrapasse 40 horas, mas a remuneração das horas extras deveria ser de 100% sobre o valor da hora normal, independentemente do contrato escrito."]'::jsonb,
'C',
'O art. 20 do Estatuto da OAB fixa a jornada do advogado empregado em, no máximo, 4 horas contínuas e 20 horas semanais (salvo acordo/convenção ou dedicação exclusiva), e determina que as horas extras sejam remuneradas com adicional não inferior a 100%. Logo, a jornada de 10 horas diárias é inválida e o adicional correto é de 100% (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ética e Estatuto da OAB',
'Marcos, auxiliar de escritório sem graduação em Direito, inscreveu-se no Exame da Ordem e, depois, na OAB, usando diploma falsificado de bacharel. Seis anos após os fatos, denúncia anônima ensejou processo administrativo disciplinar. Considerando o Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["A gravidade da conduta atribuída a Marcos atrai a competência do Conselho Federal da Ordem dos Advogados do Brasil para apurar e punir a infração disciplinar.","Para a aplicação da sanção correspondente prevista em lei é necessária a manifestação de dois terços dos membros do Conselho Seccional competente.","A sanção disciplinar prevista para a conduta de Marcos é a de suspensão, que deve perdurar até que seja apresentado documento idôneo, cumulada com a aplicação de multa.","A pretensão à punibilidade da infração disciplinar encontra-se prescrita, uma vez que foi ultrapassado o prazo legal de cinco anos, contado da última data em que Marcos fez uso do documento falso."]'::jsonb,
'B',
'A conduta atrai a sanção de EXCLUSÃO, que, nos termos do art. 38, parágrafo único, do Estatuto, exige a manifestação favorável de dois terços dos membros do Conselho Seccional competente (alternativa B). A competência disciplinar é da Seccional em que o inscrito tem inscrição principal (não do Conselho Federal, afastando A); e a prescrição não se consumou pela continuidade do uso do documento (afastando D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Ética e Estatuto da OAB',
'João representou Pedro como advogado em diversas causas. Após encerrados os vínculos, Pedro passou a ser investigado por ilícitos tributários. De acordo com o Estatuto da Ordem e o Código de Ética e Disciplina da OAB, assinale a afirmativa correta.',
'',
'',
'["João não poderá ser obrigado a depor como testemunha no curso de eventual processo judicial em face de Pedro, ainda que este expressamente o autorize ou solicite o depoimento do ex-advogado.","João não poderá ser obrigado a depor como testemunha no curso de eventual processo judicial em face de Pedro, exceto se este expressamente o autorizar, ou no caso de solicitação do próprio ex-constituinte.","João poderá ser obrigado a depor sobre fatos que constituam sigilo profissional caso seu depoimento seja considerado imprescindível para a instrução em processos criminais que apurem a prática de crimes dolosos contra a vida.","Considerando que a investigação se iniciou após a extinção da relação profissional existente entre João e Pedro, não há qualquer prerrogativa em favor de João que o escuse da obrigação de depor como testemunha no curso de processo judicial sobre fato relacionado com pessoa de quem já foi advogado."]'::jsonb,
'A',
'O sigilo profissional é dever e prerrogativa do advogado e persiste mesmo após o fim da relação profissional. O advogado não é obrigado a depor sobre fato relacionado a pessoa de quem seja ou tenha sido advogado, AINDA QUE autorizado ou solicitado pelo constituinte (art. 7º, XIX, do Estatuto; CED). Por isso, a alternativa A está correta, e a B erra ao admitir exceção pela autorização do cliente.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Ética e Estatuto da OAB',
'Ana é advogada e acaba de dar à luz seu primeiro filho, a quem ainda amamenta. Ela foi cientificada de que a Sexta Câmara Cível julgará caso em que é uma das advogadas constituídas pelo recorrente. Assinale a opção que indica o direito que Ana tem assegurado.',
'',
'',
'["Vaga reservada na garagem do Fórum.","Suspensão de prazos processuais, desde que haja notificação por escrito ao cliente.","Entrada em tribunais sem ser submetida a detectores de metais e aparelhos de raios X.","Acesso a creche, onde houver, ou a local adequado para o atendimento das necessidades do bebê."]'::jsonb,
'D',
'Entre os direitos assegurados à advogada (art. 7º-A do Estatuto, incluído pela Lei nº 13.363/2016 e alterações), está o acesso a creche, onde houver, ou a local adequado ao atendimento das necessidades do bebê durante o período de amamentação (alternativa D). As demais não correspondem a prerrogativas previstas em lei.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Ética e Estatuto da OAB',
'Pedro, advogado inscrito no Conselho Seccional do Estado Alfa, constituiu uma Sociedade Unipessoal de Advocacia ativa no mesmo Estado. Foi convidado a integrar, como sócio, uma Sociedade de Advogados também sediada no Estado Alfa, acreditando poder participar de ambas. Com base no Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["Pedro poderá integrar ambas as sociedades, desde que atue em processos distintos e jamais represente partes com interesses opostos.","Pedro poderá aceitar o convite de Abraão apenas se encerrar formalmente a Sociedade Unipessoal de Advocacia que já possui no Estado Alfa.","Pedro poderá participar das duas sociedades se firmar declaração formal de que manterá independência profissional e não haverá conflito de interesses.","Pedro poderá manter a sua sociedade unipessoal e, ao mesmo tempo, integrar a sociedade de Abraão desde que a nova sociedade registre filial em outra área territorial, ainda que continue atuando no Estado Alfa."]'::jsonb,
'B',
'O advogado não pode integrar mais de uma sociedade de advogados (nem sociedade unipessoal e sociedade pluripessoal simultaneamente) com sede ou filial na mesma área territorial do respectivo Conselho Seccional. Assim, para aceitar o convite, Pedro teria de encerrar formalmente sua sociedade unipessoal no Estado Alfa (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- FILOSOFIA DO DIREITO (Questoes 9 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Filosofia do Direito',
'Leia o fragmento: "Encontrar uma forma de associação que defenda e proteja as pessoas e os bens de cada associado com toda a força comum, e pela qual cada um, unindo-se a todos, só obedece a si mesmo, permanecendo, assim, tão livre quanto antes." (Jean-Jacques Rousseau). Assinale a opção que indica a forma de associação que, segundo Rousseau, responde a esse problema.',
'',
'',
'["Luta de Classes.","Contrato Social.","União das Nações.","Utilitarismo de Regras."]'::jsonb,
'B',
'O fragmento é a célebre formulação do problema fundamental de "O Contrato Social" de Rousseau. A solução por ele proposta é justamente o Contrato Social, pacto pelo qual cada indivíduo, ao se unir à vontade geral, obedece a si mesmo e permanece livre (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Filosofia do Direito',
'Determinado Tribunal profere decisões: I. ao analisar lei que proíbe "a entrada de animais em estabelecimentos comerciais", decide que cães-guias de pessoas com deficiência visual não estão abrangidos pela norma; II. ao interpretar lei que proíbe "fumar em ambientes fechados", limita a proibição ao que está textualmente contido na norma; III. com base em lei que prevê "o benefício da licença-maternidade à mãe biológica", defere o benefício a uma mãe adotiva. Assinale a opção que indica os tipos de interpretação adotados em I, II e III, respectivamente.',
'',
'',
'["Extensiva, teleológica e axiológica.","Axiológica, restritiva e especificadora.","Restritiva, especificadora e extensiva.","Especificadora, restritiva e teleológica."]'::jsonb,
'C',
'No caso I, o Tribunal reduz o alcance da norma, excluindo os cães-guia - interpretação RESTRITIVA. No caso II, limita-se exatamente ao texto da norma - interpretação ESPECIFICADORA (declarativa). No caso III, amplia o alcance para situação não expressamente prevista (mãe adotiva) - interpretação EXTENSIVA. Logo: restritiva, especificadora e extensiva (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CONSTITUCIONAL (Questoes 11 a 16)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Direito Constitucional',
'A Faculdade de Direito da Universidade do Estado Beta publicou edital de ingresso em mestrado e doutorado com sistema de cotas para graduados negros, indígenas, quilombolas e pessoas com deficiência, baseado em lei estadual que garante, por cinco anos, o acesso diferenciado. Um graduado pediu a exclusão das cotas, alegando violação à isonomia. Segundo o sistema jurídico-constitucional brasileiro, assinale a opção que indica o parecer correto.',
'',
'',
'["O acesso diferenciado, como apresentado no edital, só pode ser admitido para as educações básica e superior, sendo expressamente vedada a sua utilização em cursos de pós-graduação.","A diretoria da Faculdade de Direito tem discricionariedade para, livremente, estabelecer critérios para o acesso aos cursos de graduação e pós-graduação para quaisquer grupos sociais, com base na autonomia didático-científica e administrativa de que gozam as universidades públicas.","A realização da dimensão material do princípio da igualdade coaduna-se com a adoção de ações afirmativas que atinja grupos sociais determinados, atribuindo-lhes certas vantagens, normalmente por tempo definido, com vistas à superação de desigualdades decorrentes de situações históricas.","O edital elaborado pela Faculdade de Direito viola o princípio da isonomia formal, princípio constitucional elementar, que tem por função garantir idênticas condições de acesso ao ensino de pós-graduação a todos, relativizando possíveis diferenças culturais, de raça ou mesmo por deficiência."]'::jsonb,
'C',
'As ações afirmativas (cotas) são expressão da dimensão MATERIAL (substancial) do princípio da igualdade: tratam desigualmente os desiguais, atribuindo vantagens temporárias a grupos historicamente discriminados para superar desigualdades concretas. O STF já reconheceu a constitucionalidade de cotas, inclusive na pós-graduação (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Direito Constitucional',
'Romualdo, empresário de supermercados, teve negada licença para instalar loja em um bairro sob a justificativa de já existir estabelecimento do mesmo ramo na região, com base em Lei Complementar Municipal que exige distância mínima de mil metros entre estabelecimentos que comercializem produtos semelhantes. Assinale a opção que apresenta a análise correta, à luz da ordem jurídico-constitucional.',
'',
'',
'["A norma municipal deve ser observada, em respeito à autonomia municipal garantida pela ordem jurídica brasileira.","A LC X é inconstitucional, já que Alfa, por não ser ente federativo, não possui competência legislativa para produzir leis complementares.","A existência de norma legal federal sobre a questão deve ser avaliada, porque, pelo critério hierárquico, esta última prevaleceria sobre a norma municipal.","A abertura do negócio em questão não deve ser restringida, porque a LC X, ao adotar o referido critério geográfico, viola o princípio constitucional da livre concorrência."]'::jsonb,
'D',
'A exigência de distância mínima entre estabelecimentos do mesmo ramo cria reserva de mercado e barreira artificial à entrada de concorrentes, violando o princípio constitucional da livre concorrência (art. 170, IV, da CF). Nesse sentido, há inclusive a Súmula Vinculante 49 do STF (ofende a livre concorrência lei que impede, por limites de distância, a instalação de estabelecimento do mesmo ramo). Alternativa D.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Direito Constitucional',
'Marcos (56 anos) e Joana (58 anos) tiveram reconhecidos créditos contra o Estado Alfa, sem natureza alimentícia. Foi autorizada a expedição do precatório de Marcos e, dois meses depois, o de Joana. Joana pergunta se tem prioridade de recebimento por ser mais velha. Assinale a opção que indica a resposta correta.',
'',
'',
'["A CRFB/88 não estabelece critérios de prioridade cronológica para o recebimento dos precatórios, quando os créditos não têm natureza alimentícia.","Tanto Joana quanto Marcos, por terem menos de 60 anos, devem receber seus créditos na ordem cronológica de apresentação dos precatórios.","Ambos, em razão da idade, terão direito ao recebimento imediato, sem se submeter à ordem cronológica estabelecida para a sistemática de precatórios pela CRFB/88.","Joana, por ter idade superior à de Marcos, possui prioridade etária sobre ele e, por isso, receberá seus créditos em data anterior à realização do pagamento a Marcos."]'::jsonb,
'B',
'A prioridade etária no pagamento de precatórios (CF, art. 100, §2º) é reservada aos titulares com 60 anos de idade ou mais (ou portadores de doença grave/deficiência) e incide sobre créditos de natureza alimentícia. Como ambos têm menos de 60 anos e os créditos não são alimentícios, aplica-se a regra geral da ordem cronológica de apresentação (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Direito Constitucional',
'Carlos Frederico, Deputado Estadual no Estado Alfa, apresentou projeto de lei sobre tema de grande relevância que não se enquadra no rol de competências legislativas expressas de qualquer ente federativo. Suscitada a possível incompetência da Assembleia, assinale a opção que apresenta o esclarecimento correto, segundo o sistema jurídico-constitucional brasileiro.',
'',
'',
'["A Assembleia Legislativa do Estado Alfa pode legislar sobre a matéria.","O projeto de lei é inconstitucional, porque a competência legislativa sobre a matéria é exclusiva da União.","A omissão constitucional permite concluir que se está diante de matéria de interesse local, de competência municipal.","A constitucionalidade do projeto de lei somente será reconhecida se, aprioristicamente, a Assembleia Legislativa de Alfa solicitar autorização ao Congresso Nacional para a respectiva tramitação."]'::jsonb,
'A',
'Vigora a competência legislativa REMANESCENTE (residual) dos Estados (art. 25, §1º, da CF): são reservadas aos Estados as competências que não lhes sejam vedadas pela Constituição. Como a matéria não foi atribuída expressamente a nenhum ente, a Assembleia Legislativa de Alfa pode legislar sobre ela (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Direito Constitucional',
'O Diretório Nacional do Partido Político Alfa consultou sobre a possibilidade de ingressar com Ação Direta de Inconstitucionalidade (ADI) para impugnar dispositivos da Lei nº 1.079/1950 (crimes de responsabilidade do Presidente), que considera incompatíveis com a ordem constitucional. Assinale a afirmativa correta.',
'',
'',
'["Como a Lei nº 1.079/1950 foi recepcionada pela ordem constitucional vigente, continuando a produzir efeitos nas últimas décadas, a Ação Direta de Inconstitucionalidade é a via de controle objetivo adequada para impugná-la.","Diante da fungibilidade reconhecida pelo Supremo Tribunal Federal entre a Ação Direta de Inconstitucionalidade e a Arguição de Descumprimento de Preceito Fundamental, admite-se, em qualquer caso, a conversão de uma via impugnativa em outra.","Embora seja cabível o ajuizamento de Ação Declaratória de Constitucionalidade em face da Lei nº 1.079/1950, para reconhecer a compatibilidade de seus dispositivos com a CRFB/88, a Ação Direta de Inconstitucionalidade não se presta a impugnar dispositivos de lei pré-constitucional.","A Ação Direta de Inconstitucionalidade não é a via de controle objetivo adequada para impugnar os dispositivos da Lei nº 1.079/1950, e, por se tratar de erro grosseiro, o Supremo Tribunal Federal não admite sua fungibilidade com a Arguição de Descumprimento de Preceito Fundamental."]'::jsonb,
'D',
'Lei pré-constitucional (anterior à CF/88) não pode ser objeto de ADI, pois a questão se resolve em recepção ou revogação, não em inconstitucionalidade. O instrumento adequado seria a ADPF. Embora o STF admita, em regra, a fungibilidade entre ADI e ADPF, não a admite quando houver erro grosseiro - como é o caso de ajuizar ADI contra lei claramente pré-constitucional (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Direito Constitucional',
'Mariana, nascida no Brasil, adquiriu voluntariamente a nacionalidade de um país asiático, que não impôs condições para permanência ou exercício de direitos civis, apenas para facilitar sua circulação pelo continente. Nunca pediu expressamente para abdicar da nacionalidade brasileira. Sobre a situação de Mariana, assinale a afirmativa correta.',
'',
'',
'["Ela mantém a nacionalidade brasileira, pois, no caso em análise, apenas o pedido expresso de perda da nacionalidade pode gerar tal consequência.","Ela não perde a nacionalidade brasileira, desde que comunique previamente ao governo brasileiro que não deseja renunciar a ela ao adquirir a nova nacionalidade.","Ela perde a nacionalidade brasileira apenas se deixar de exercer direitos políticos e civis no Brasil, como o voto ou a manutenção de propriedades, após adquirir a nova nacionalidade.","Ela perde a nacionalidade brasileira, pois ao adquirir voluntariamente outra nacionalidade, sem imposição do Estado estrangeiro, ela perde automaticamente a nacionalidade originária."]'::jsonb,
'A',
'Após a EC nº 131/2023, a aquisição voluntária de outra nacionalidade deixou de acarretar, por si só, a perda da nacionalidade brasileira; a perda, nessa hipótese, passou a depender de pedido EXPRESSO do próprio nacional (salvo risco à soberania). Como Mariana não requereu expressamente a perda, ela mantém a nacionalidade brasileira (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITOS HUMANOS (Questoes 17 a 18)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Direitos Humanos',
'Como advogado(a) de uma comunidade de povos originários interessada em regularizar as terras tradicionalmente ocupadas, em relação ao sistema regional americano e ao ordenamento nacional, assinale a opção que apresenta o esclarecimento correto.',
'',
'',
'["De acordo com o ordenamento jurídico interno, aos povos originários é assegurado o usufruto exclusivo das riquezas do solo por eles tradicionalmente ocupado. Nesse sentido, pode a comunidade, exercendo o seu direito à autodeterminação, cultivar organismos geneticamente modificados em suas terras.","A Convenção nº 169, da Organização Internacional do Trabalho, reconhece expressamente o direito de propriedade dos povos originários em relação às terras que tradicionalmente ocupam.","Ao reconhecer, em favor das comunidades de povos originários, os direitos originários sobre as terras que tradicionalmente ocupam, o ordenamento jurídico nacional admite que tais áreas possam ser objeto de contrato de arrendamento, desde que celebrado pelos próprios, adequadamente representados e informados.","Embora a Corte Interamericana de Direitos Humanos não reconheça o direito de propriedade coletiva em favor das comunidades de povos originários quanto às terras que tradicionalmente ocupam, a Constituição Federal de 1988 expressamente determinou a outorga do título de propriedade aos povos originários, desde que demonstrada a tradicionalidade da sua ocupação."]'::jsonb,
'B',
'A Convenção nº 169 da OIT reconhece aos povos indígenas e tribais o direito de propriedade e de posse sobre as terras que tradicionalmente ocupam (arts. 13 a 17). No ordenamento brasileiro, as terras indígenas são bens da União, cabendo aos indígenas a posse permanente e o usufruto exclusivo das riquezas (não a propriedade), razão pela qual as demais alternativas estão incorretas. Alternativa B.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Direitos Humanos',
'De acordo com a jurisprudência da Corte Interamericana de Direitos Humanos, em relação ao Direito à Proteção Judicial (Art. 25 do Pacto de São José da Costa Rica), assinale a afirmativa correta.',
'',
'',
'["O direito à proteção judicial não se exaure na prestação da tutela judicial cognitiva, sendo imprescindível que o Estado garanta os meios para executar, de maneira efetiva, as suas decisões definitivas.","Trata-se de direito que impõe obrigação meramente instrumental aos Estados-parte. Nesse sentido, é suficiente a previsão de recursos no plano formal para que a garantia seja considerada efetivamente observada.","Com vistas à preservação da soberania dos Estados-parte, caso sejam necessários esclarecimentos quanto à violação ou não por determinado Estado, de suas obrigações internacionais em virtude das atuações de seus órgãos judiciais, não poderá a Corte IDH examinar os processos judiciais internos, devendo se valer de outros elementos de análise.","Nos casos em que se verificou uma situação de graves violações a Direitos Humanos, é obrigação do Estado-parte promover a devida apuração e responsabilização de todos os envolvidos, sejam autoridades oficiais ou particulares. Admite-se, como única justificativa legítima ao não sancionamento dos responsáveis, a concessão de anistia, quando prevista em lei, devidamente aprovada pelo Poder Legislativo competente."]'::jsonb,
'A',
'Segundo a jurisprudência da Corte IDH, o direito à proteção judicial (art. 25 da Convenção) exige recurso efetivo e não se esgota na fase de conhecimento: compreende também a execução efetiva das decisões, cabendo ao Estado assegurar meios para cumpri-las (alternativa A). A mera previsão formal de recursos não basta (B), a Corte pode examinar processos internos (C) e a anistia a graves violações de direitos humanos não é admitida (D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ELEITORAL (Questoes 19 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Direito Eleitoral',
'João, prefeito do Município Alfa, em ano de eleições municipais, cedeu gratuitamente o uso de uma escola pública, fora do horário de aulas, para que os partidos realizassem convenções partidárias de escolha de candidatos. Em relação à atitude de João, assinale a afirmativa correta.',
'',
'',
'["A decisão proferida gera prejuízo ao erário, pois, embora o prédio público possa ser utilizado pelos partidos políticos para a finalidade indicada, deveria ser pago aluguel.","João decidiu de maneira harmônica com a legislação eleitoral, pois o prédio público não pode ser utilizado para finalidades privadas, estando configurada uma conduta vedada aos agentes públicos em campanhas eleitorais.","A decisão de João mostra-se correta, pois, embora exista a regra geral de que os agentes públicos não podem ceder imóveis públicos em benefício dos partidos políticos, é ressalvada a realização de convenção partidária.","A decisão de João está ajustada à sistemática legal, pois, em prol do princípio democrático, os imóveis públicos devem ser cedidos, para fins exclusivamente eleitorais, aos candidatos, aos partidos e às coligações que os solicitem."]'::jsonb,
'C',
'A Lei nº 9.504/1997 (art. 73, I e §§) veda a cessão de bens públicos em benefício de candidatos, partidos ou coligações, RESSALVADA, expressamente, a realização de convenção partidária. Como a cessão da escola, fora do horário de aulas, destinou-se à convenção, enquadra-se na ressalva legal (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Direito Eleitoral',
'João, tesoureiro do partido político Alfa, pediu orientação sobre a aplicação dos recursos do Fundo Especial de Assistência Financeira aos Partidos Políticos (Fundo Partidário), quanto à liberdade de aplicação e à necessidade de prestação de contas. Assinale a afirmativa correta.',
'',
'',
'["Os recursos devem ser aplicados por Alfa, nas finalidades autorizadas em lei, sendo objeto de prestação de contas à Justiça Eleitoral, embora o referido Fundo receba tanto valores de origem pública como privada.","Os recursos recebidos por Alfa devem ser aplicados nas finalidades autorizadas em lei, sendo objeto de prestação de contas apenas ao seu órgão de direção nacional, embora o referido Fundo seja formado a partir das sobras da arrecadação da União.","Como Alfa tem personalidade jurídica de direito privado, pode aplicar livremente os recursos recebidos nas finalidades previstas em seu estatuto e deve prestar contas à Justiça Eleitoral, quando se comprometer a realizar um projeto de interesse público.","Os recursos devem ser aplicados por Alfa nas finalidades livremente autorizadas em seu estatuto, mas, como os valores remetidos ao referido Fundo são captados pela Justiça Eleitoral com as multas eleitorais e as dotações da União, deve haver prestação de contas ao Tribunal de Contas da União."]'::jsonb,
'A',
'O Fundo Partidário é constituído por recursos de origem pública (dotações orçamentárias, multas) e privada (doações), e sua aplicação está vinculada às finalidades legalmente autorizadas (Lei nº 9.096/1995), com prestação de contas à JUSTIÇA ELEITORAL (alternativa A). Não há plena liberdade de aplicação, nem prestação de contas apenas ao órgão interno ou ao TCU.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO INTERNACIONAL (Questoes 21 a 22)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direito Internacional',
'Hector, cidadão espanhol, chega ao Brasil em janeiro de 2024 para passar férias em Salvador, mas é proibido de ingressar pela Polícia Federal porque, em janeiro de 2020, foi expulso do Brasil, com impedimento de reingresso por cinco anos. Assinale a opção que indica a medida de retirada compulsória aplicável a Hector.',
'',
'',
'["Extradição.","Expulsão.","Deportação.","Repatriação."]'::jsonb,
'D',
'A repatriação (art. 49 da Lei de Migração) é a medida administrativa de devolução ao país de procedência ou de nacionalidade da pessoa impedida de ingressar no território nacional (impedimento de ingresso). Como Hector foi barrado no momento da entrada, por constar impedimento de reingresso, a medida é a repatriação (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direito Internacional',
'Sobre a concessão de visto, com base na Lei de Migração e na Constituição da República, assinale a afirmativa correta.',
'',
'',
'["O visto de visita poderá ser concedido ao imigrante que venha ao Brasil com o intuito de estabelecer residência por tempo indeterminado para tratar de sua saúde.","O visto de visita não será exigido do estrangeiro em caso de escala ou conexão em território nacional, ainda que o visitante deixe a área de trânsito internacional por algumas horas.","Entre as hipóteses de concessão do visto temporário está a do imigrante que vem ao Brasil com o intuito de estabelecer residência por tempo determinado e que venha praticar atividade religiosa ou serviço voluntário.","O visto diplomático não poderá ser estendido aos dependentes das autoridades e funcionários estrangeiros que viajem ao Brasil em missão oficial de caráter transitório ou permanente, representando Estado estrangeiro ou organismo internacional."]'::jsonb,
'C',
'A Lei de Migração (art. 14) prevê o visto TEMPORÁRIO para quem venha ao Brasil com o intuito de estabelecer residência por tempo determinado, incluindo as hipóteses de atividade religiosa ou serviço voluntário (alternativa C). O visto de visita destina-se a estadas de curta duração sem ânimo de residência (A errada); a escala/conexão com saída da área de trânsito exige visto (B errada); e o visto diplomático pode ser estendido a dependentes (D errada).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO FINANCEIRO (Questoes 23 a 24)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direito Financeiro',
'As despesas da Secretaria de Obras do Estado Alfa, embora previstas na lei orçamentária anual, vinham sendo pagas de maneira direta e antecipada ao vencedor da licitação, logo após a conclusão do edital. À luz da Lei nº 4.320/1964, assinale a afirmativa correta.',
'',
'',
'["Inicialmente deve ser feito o empenho da despesa contratada e, em seguida, salvo casos especiais previstos em legislação específica, a emissão da nota de empenho; após a verificação da entrega do material e da conclusão integral da obra deve haver a liquidação; por último, será emitida a ordem de pagamento para a empresa credora.","Após a entrega do material e a conclusão da obra certificada pelo servidor público responsável, será emitida a ordem de pagamento, a qual será utilizada pelo credor para sacar o valor devido na instituição bancária oficial, não sendo nos dias de hoje mais necessário o empenho e a liquidação.","Tendo havido licitação regular para a contratação de uma empresa para a realização de obras, sendo esta de notória reputação, ficam dispensados empenho e a liquidação, bastando que seja assinado o contrato da obra e apresentada a planilha de custos para que o pagamento seja feito antecipadamente, ficando a contratada responsável pela imediata devolução caso a obra não seja concluída.","Após a realização da licitação regular e contratação formal, mas antes do início da obra, deverá ser obtida autorização prévia do Tribunal de Contas para que este órgão fiscalizador realize o empenho e emita a nota de empenho; em seguida, o órgão contratante deverá acompanhar a entrega do material e a realização da obra, ficando a cargo deste apenas a liquidação e emissão da ordem de pagamento."]'::jsonb,
'A',
'A Lei nº 4.320/1964 estabelece os estágios da despesa pública: empenho (reserva da dotação, com emissão da nota de empenho, salvo casos especiais), liquidação (verificação do direito do credor após a entrega do material/execução da obra) e pagamento (ordem de pagamento ao credor). O pagamento antecipado, antes da liquidação, viola essa sistemática (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direito Financeiro',
'O Estado Alfa, ao final do segundo bimestre, percebeu que a realização da receita poderia não comportar as metas de resultado primário do Anexo de Metas Fiscais, tendo de realizar, nos trinta dias subsequentes, limitação de empenho e movimentação financeira. Assinale a opção que apresenta a despesa que poderia ser objeto dessa limitação.',
'',
'',
'["A despesa que constitua obrigação legal do ente estadual.","A despesa com o pagamento do serviço da dívida estadual.","A despesa com desenvolvimento científico custeada por fundo criado para tal finalidade.","A despesa com aquisição de material de consumo para setores administrativos do Poder Executivo."]'::jsonb,
'D',
'A Lei de Responsabilidade Fiscal (art. 9º, §2º) exclui da limitação de empenho (contingenciamento) as despesas que constituam obrigações constitucionais e legais do ente, inclusive o serviço da dívida, e as ressalvadas pela LDO. Assim, podem ser objeto de limitação as despesas discricionárias, como a aquisição de material de consumo para setores administrativos (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO TRIBUTARIO (Questoes 25 a 29)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direito Tributário',
'Nova lei federal, ampliando o prazo de pagamento de certo tributo federal, foi publicada em 15/06/2023, mas foi omissa quanto ao momento em que entraria em vigor. Assinale a opção que indica o momento em que tal lei tributária entrará em vigor, em todo o país.',
'',
'',
'["30 dias depois de oficialmente publicada.","45 dias depois de oficialmente publicada.","90 dias depois de oficialmente publicada.","no 1º dia do exercício seguinte àquele em que foi oficialmente publicada."]'::jsonb,
'B',
'Na omissão quanto à vigência, aplica-se a regra geral da Lei de Introdução às Normas do Direito Brasileiro: a lei começa a vigorar 45 dias após a publicação oficial (vacatio legis geral). Como a lei apenas ampliou prazo de pagamento (não instituiu nem majorou tributo), não incidem as anterioridades; vale a vacatio de 45 dias (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direito Tributário',
'O Estado Alfa publicou, em 29/12/2024, lei ordinária instituindo IPVA sobre a propriedade de veículos automotores aéreos e aquáticos, com fato gerador em 1º de janeiro de cada ano. A partir de janeiro de 2025, começou a enviar carnês de IPVA sobre tais veículos, com pagamento até o fim de fevereiro de 2025. Assinale a afirmativa correta.',
'',
'',
'["A cobrança poderia ser feita a partir de 01/01/2025.","As novas hipóteses de incidência de IPVA são inconstitucionais.","A cobrança poderia ser feita apenas decorridos 90 dias da data em que foi publicada a nova lei.","A lei somente poderia instituir a incidência de IPVA sobre a propriedade de veículos automotores aquáticos."]'::jsonb,
'C',
'Conforme o gabarito oficial, a resposta é a letra C. A lei que instituiu a nova incidência do IPVA foi publicada em 29/12/2024, de modo que sua cobrança sujeita-se à anterioridade nonagesimal (noventena, art. 150, III, "c", da CF): o tributo só pode ser exigido depois de decorridos 90 dias da data da publicação da lei que o instituiu. Assim, a cobrança a partir de janeiro/fevereiro de 2025 é indevida, só podendo ocorrer após o transcurso dos 90 dias (observada também a base de cálculo, que é exceção à noventena, mas não a instituição da nova hipótese de incidência).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direito Tributário',
'No Estado Alfa, a lei do ITCMD prevê lançamento por homologação. Dentro do prazo, Júlia, única herdeira, apresentou declaração correta de todos os bens recebidos por transmissão causa mortis, sendo o tributo integralmente devido. O sistema gerou guia com vencimento em 07/03/2024, mas o pagamento não foi efetuado. Assinale a opção que indica a partir de quando se conta o prazo prescricional para a cobrança.',
'',
'',
'["Da data do óbito da mãe de Júlia, seu fato gerador.","Do dia seguinte ao vencimento previsto na guia de pagamento.","Do primeiro dia do exercício seguinte àquele do óbito da autora da herança.","Da data em que Júlia entrega a declaração ao Fisco estadual, seu fato gerador."]'::jsonb,
'B',
'Nos tributos lançados por homologação, a entrega da declaração pelo contribuinte, reconhecendo o débito, constitui o crédito tributário (Súmula 436 do STJ), dispensando outra providência do Fisco. Vencido o prazo para pagamento sem quitação, inicia-se a contagem do prazo prescricional (de 5 anos) para a cobrança a partir do dia seguinte ao vencimento (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direito Tributário',
'Educando 100%, associação sem fins lucrativos com CEBAS, contratou a Construtora ABC Ltda. para construir um edifício. Sobre o serviço incide ISS, e a lei local estabelece que é obrigação da tomadora a retenção do ISS devido. Educando 100% não reteve o ISS, e a construtora também não pagou. Sobre a pretensão do Fisco de cobrar a dívida, assinale a afirmativa correta.',
'',
'',
'["A imunidade de Educando 100% impede que incida o ISS nessa prestação de serviços de obras.","Como responsável tributária pela retenção do ISS devido, Educando 100% pode ser cobrada pelo Fisco municipal.","Educando 100%, na condição de contribuinte, pode ser cobrada pelo Fisco municipal quanto a tais débitos de ISS.","Educando 100% é uma entidade imune, de modo que não se aplica a ela a lei local que estabelece a obrigação de o tomador do serviço reter o ISS."]'::jsonb,
'B',
'A imunidade da entidade beneficente alcança os impostos sobre seu patrimônio, renda e serviços próprios, mas não a transforma em contribuinte do ISS devido pela construtora (que é a prestadora/contribuinte). Como a lei local atribuiu à tomadora a condição de RESPONSÁVEL pela retenção, Educando 100% responde por essa obrigação de reter e recolher, podendo ser cobrada pelo Fisco (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direito Tributário',
'O Município Alfa instituiu, por lei ordinária publicada em 10/07/2025, um novo imposto sobre a concessão de autorizações para localização e funcionamento de estabelecimentos comerciais, com efeitos a partir de 01/01/2026. A sociedade ABC Ltda. quer ajuizar ação declaratória antes da vigência da lei para não ser cobrada. Assinale a afirmativa correta.',
'',
'',
'["A ação correta a ser manejada seria a ação anulatória tributária.","O novo imposto só pode ser criado por meio de uma lei complementar municipal, e não por mera lei ordinária.","A anterioridade nonagesimal não foi obedecida, pois a lei apenas entraria em vigor 90 dias após 01/01/2026.","O Município Alfa não pode criar esse novo imposto, por não estar compreendido em sua competência tributária constitucional."]'::jsonb,
'D',
'A competência tributária é taxativamente repartida pela Constituição. Um "imposto sobre a concessão de autorizações para localização e funcionamento" não está entre os impostos atribuídos aos Municípios (que são IPTU, ITBI e ISS) - a competência residual para novos impostos é exclusiva da União, por lei complementar. Logo, o Município Alfa não pode criar esse imposto (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ADMINISTRATIVO (Questoes 30 a 36)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direito Administrativo',
'José, servidor de controle interno, deparou-se com ato administrativo que beneficia a sociedade Calêndula, com vício de constituição, mas que está produzindo efeitos. À luz do Decreto-Lei nº 4.657/1942 (LINDB), com a redação da Lei nº 13.655/2018, assinale a opção que indica o esclarecimento correto da assessoria jurídica.',
'',
'',
'["A existência de vício exige que a Administração decrete a invalidação do ato administrativo, com efeitos retroativos, ainda que tal decisão imponha aos sujeitos atingidos ônus e perdas que, em função das peculiaridades do caso, sejam anormais ou excessivos.","Constatado que o vício é insanável, a decisão na esfera administrativa que venha a decretar a invalidação de tal ato administrativo, que ainda não exauriu os seus efeitos, deverá indicar de modo expresso as suas consequências jurídicas e administrativas.","A verificação de qualquer vício em ato administrativo deve ensejar necessariamente a sua invalidação, independentemente do momento em que for verificado e de possíveis alternativas para melhor atender ao interesse público, ainda que tais alternativas possam justificar a sua convalidação.","No âmbito da esfera controladora, observado o vício, é imperiosa a anulação do ato, a ser prontamente realizada de ofício pela Administração, o que prescinde da observância da ampla defesa e do contraditório, bem como da justificação acerca da necessidade e adequação de tal invalidação."]'::jsonb,
'B',
'A LINDB (art. 20 e art. 21, incluídos pela Lei nº 13.655/2018) exige que a decisão que decrete a invalidação de ato indique de modo expresso suas consequências jurídicas e administrativas, inclusive para regularizar a situação e evitar ônus anormais ou excessivos aos atingidos (alternativa B). O vício não impõe invalidação automática e retroativa sem ponderação (afastando A, C e D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'A sociedade XYZ celebrou contrato administrativo com o Estado Alfa, sem cláusula compromissória ou compromisso arbitral. Sem justificativa, a Administração, por ordem escrita, suspendeu a execução do contrato, o que já perdura por seis meses. Considerando a Lei nº 14.133/2021, assinale a afirmativa correta.',
'',
'',
'["A extinção do contrato administrativo não é juridicamente cabível, pois a suspensão da sua execução não ultrapassou o prazo de 12 meses.","A sociedade empresária XYZ não tem direito à extinção do contrato administrativo, pois, como o Estado Alfa suspendeu a sua execução, inexiste inadimplemento contratual.","A extinção do contrato administrativo de forma consensual é vedada por expressa previsão legal, a qual impede o emprego da conciliação e da mediação no âmbito da Administração Pública.","A entidade privada contratada tem direito à extinção do contrato administrativo, que poderá ser consensual, por acordo entre as partes, por conciliação, por mediação ou por comitê de resolução de disputas, desde que haja interesse da Administração ou, ainda, por meio de decisão judicial."]'::jsonb,
'D',
'A Lei nº 14.133/2021 autoriza o uso dos meios alternativos de resolução de controvérsias (conciliação, mediação, comitês de resolução de disputas e arbitragem) nos contratos administrativos. A suspensão da execução por prazo superior a determinado limite, sem justificativa, dá ao contratado direito à extinção do contrato, que pode ser consensual ou judicial (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'Caio, político em primeira legislatura, responde por ato doloso de improbidade administrativa que teria causado prejuízo ao erário (fatos de fevereiro de 2024). O MP requereu a indisponibilidade de todos os seus bens, inclusive o bem de família, adquirido licitamente. Caio cogita acordo de não persecução cível e pode ressarcir até 80% do dano. Considerando a Lei nº 8.429/1992, assinale a opção que apresenta a orientação correta.',
'',
'',
'["A defesa técnica poderá interpor agravo de instrumento, caso o Juiz afaste as questões preliminares suscitadas por Caio em sua contestação.","O Juiz poderá, convencido da probabilidade da ocorrência do ato de improbidade administrativa descrito na petição inicial, decretar a indisponibilidade dos bens de Caio, inclusive o bem de família.","Caio sendo condenado em sentença transitada em julgado, além da perda dos valores acrescidos ilicitamente ao patrimônio, estará sujeito à perda da função pública desempenhada e à cassação dos direitos políticos.","O Ministério Público e Caio poderão celebrar acordo de não persecução cível, desde que, além do ressarcimento de 80% do dano causado ao erário, o acusado confesse, formalmente, a prática do ato ímprobo."]'::jsonb,
'A',
'Na Lei de Improbidade com a redação da Lei nº 14.230/2021, da decisão interlocutória cabe agravo de instrumento (art. 17, §21). Assim, se o Juiz afastar as preliminares suscitadas na contestação, a defesa pode interpor agravo de instrumento (alternativa A). A indisponibilidade não alcança o bem de família (B); a improbidade acarreta suspensão (não cassação) dos direitos políticos (C); e o acordo não exige confissão formal nos termos postos em D.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'Matheus, servidor público federal estável do Ministério do Meio Ambiente, deseja concorrer a Prefeito do Município Alfa. Considerando a Lei nº 8.112/1990, assinale a afirmativa correta.',
'',
'',
'["Investido no mandato de Prefeito do Município Alfa, Matheus ficará afastado do cargo público ocupado no Ministério do Meio Ambiente, sendo-lhe facultado optar pela sua remuneração.","Como os servidores públicos federais não podem dispor de filiação político-partidária, Matheus deverá exonerar-se do cargo público ocupado no Ministério do Meio Ambiente para que possa concorrer nas eleições municipais.","Havendo compatibilidade de horários e sendo investido no mandato de Prefeito do Município Alfa, Matheus perceberá as vantagens do cargo público ocupado no Ministério do Meio Ambiente, sem prejuízo da remuneração do cargo eletivo.","Matheus, a partir do dia primeiro de janeiro do ano da eleição, terá direito, por se tratar de servidor público federal estável, à licença para o exercício de atividade política, que perdurará até o dia subsequente à data da eleição, assegurados os vencimentos do cargo efetivo."]'::jsonb,
'A',
'Pela regra constitucional (art. 38 da CF) aplicável ao servidor investido em mandato de PREFEITO, ele fica afastado do cargo, emprego ou função, sendo-lhe facultado optar pela sua remuneração (a do cargo efetivo ou a do mandato). Logo, Matheus será afastado e poderá optar pela remuneração (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'Lucas, servidor do Município Alfa, procurou Rodrigo, dono do estabelecimento XYZ (manutenção de automóveis), para firmar contrato administrativo de R$ 60.000,00 para manutenção dos veículos do Município. Considerando a Lei nº 14.133/2021, assinale a afirmativa que apresenta a orientação correta.',
'',
'',
'["Em razão da inexigibilidade da licitação, é admissível a contratação direta entre o Município Alfa e o particular Rodrigo, desde que seja apresentada justificativa de preço.","O Município Alfa deverá realizar o processo licitatório para celebrar o contrato administrativo, vedando-se a contratação direta no cenário narrado, por ausência de previsão legal.","Admitir-se-á a contratação direta entre o Município Alfa e o particular Rodrigo, desde que o estabelecimento comercial XYZ esteja situado nos limites territoriais do ente federativo contratante.","É possível a contratação direta entre o Município Alfa e o particular Rodrigo, para a prestação de serviços de manutenção de veículos automotores de propriedade do ente federativo, por ser caso de licitação dispensável."]'::jsonb,
'D',
'A Lei nº 14.133/2021 (art. 75, II) permite a contratação direta por DISPENSA de licitação em razão do valor, para serviços e compras de pequeno vulto (atualizados por decreto; patamar de dezenas de milhares de reais). A manutenção de veículos por R$ 60.000,00 enquadra-se como licitação dispensável em razão do valor (alternativa D), que exige apenas o cumprimento dos requisitos legais, não a inexigibilidade (A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Ambiental',
'A sociedade Algoz causou danos ambientais ao solo de sua propriedade (Estado X e Município Y foram omissos na fiscalização). Após mascarar os danos, vendeu o imóvel à sociedade Crédula, que não sabia dos fatos. O MP ajuizou ação civil pública incluindo no polo passivo Crédula (atual proprietária), Algoz (poluidora), o Estado X e o Município Y (omissos). Assinale a afirmativa correta.',
'',
'',
'["Os entes federativos têm legitimidade passiva para a demanda, na medida em que sua conduta omissiva não pode ensejar a responsabilização civil.","Apenas a sociedade empresária Algoz tem legitimidade passiva para a demanda, na medida em que foi a única que praticou a conduta comissiva que ensejou o dano ambiental.","A sociedade empresária Crédula não pode ser civilmente responsabilizada pelos danos ambientais em comento, de modo que não poderia constar do polo passivo da demanda.","Tanto as referidas sociedades quanto os entes federativos têm legitimidade passiva para a demanda, pois são passíveis de responsabilização civil todos aqueles que concorrerem para o dano ambiental, comissiva ou omissivamente, sendo certo que a obrigação ambiental é de natureza propter rem."]'::jsonb,
'D',
'A responsabilidade civil ambiental é objetiva e solidária, abrangendo todos os que concorrem para o dano, direta ou indiretamente, por ação ou omissão (inclusive os entes públicos omissos na fiscalização). Além disso, a obrigação de reparar o dano ambiental é propter rem, acompanhando a coisa e podendo ser exigida do atual proprietário (Crédula), ainda que não tenha causado o dano (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Ambiental',
'A sociedade XYZ, com sede no Estado Alfa, pretende desenvolver atividade potencialmente causadora de significativa degradação ambiental nos territórios dos Estados Alfa e Beta. Considerando a Resolução nº 237/1997 do CONAMA, assinale a opção que apresenta a orientação correta sobre o licenciamento ambiental.',
'',
'',
'["O licenciamento ambiental deverá ser realizado pelo órgão ambiental competente do Estado Alfa, onde está localizada a sede da sociedade empresária XYZ.","Caberá aos órgãos ambientais dos Estados Alfa e Beta, em conjunto, procederem ao licenciamento ambiental da atividade econômica que a sociedade empresária XYZ pretende desenvolver.","Compete ao Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renováveis (Ibama), autarquia de natureza federal, o licenciamento ambiental da atividade econômica que será desenvolvida pela sociedade empresária XYZ.","A sociedade empresária XYZ poderá, a seu critério, requerer o licenciamento ambiental junto ao órgão ambiental competente do Estado Alfa ou do Estado Beta, já que a atividade econômica será desenvolvida nos dois entes federativos."]'::jsonb,
'C',
'Quando o impacto ambiental ultrapassa os limites territoriais de um Estado, atingindo dois ou mais Estados (impacto regional/interestadual), a competência para o licenciamento é do órgão federal - o IBAMA (Resolução CONAMA nº 237/1997 e LC nº 140/2011). Alternativa C.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CIVIL (Questoes 37 a 43)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Civil',
'Dagoberto comprometeu-se a comprar a casa de Marina SE seu investimento em ações atingisse rendimento acima de 10% no dia 20 do mês. No dia indicado, as ações renderam 15%, mas Dagoberto se negou a comprar. Assinale a opção que indica a correta orientação jurídica.',
'',
'',
'["Ela pode exigir a compra da casa, porque o encargo foi cumprido.","Ela não pode exigir a compra da casa, por se tratar de termo incerto.","Ela pode exigir a compra da casa, já que se implementou a condição suspensiva.","Ela não pode exigir a compra da casa, pois a condição do negócio é puramente potestativa."]'::jsonb,
'C',
'O negócio foi submetido a uma CONDIÇÃO SUSPENSIVA (evento futuro e incerto - o rendimento acima de 10% - do qual se faz depender a eficácia do negócio). Implementada a condição (as ações renderam 15%), o negócio adquire eficácia e Marina pode exigir seu cumprimento (a compra da casa). Trata-se de condição simplesmente potestativa/casual, válida (não puramente potestativa). Alternativa C.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Civil',
'Mateus e Pedro adquiriram um veículo de Joana, como devedores solidários, com pagamento em 30 dias. Dez dias após o acordo, Mateus faleceu, deixando dois herdeiros. Sobre as obrigações de cada um dos herdeiros de Mateus, assinale a afirmativa correta.',
'',
'',
'["Estão obrigados a pagar a dívida como um todo, se a obrigação for divisível, com direito de ação regressiva contra Pedro.","Estão desobrigados de qualquer pagamento, pois a responsabilidade pelo pagamento não é transmitida aos herdeiros.","São obrigados, individualmente, a pagar a dívida que corresponder ao devedor solidário falecido, pois a obrigação é divisível.","São obrigados a pagar apenas a parte que corresponder à sua cota hereditária, pois a obrigação é divisível."]'::jsonb,
'D',
'Com a morte do devedor solidário, a solidariedade não se transmite integralmente a cada herdeiro: o art. 276 do Código Civil dispõe que os herdeiros do devedor solidário, salvo se a obrigação for indivisível, só respondem até o quinhão hereditário, ou seja, cada herdeiro é obrigado apenas pela parte correspondente à sua cota na herança (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Civil',
'Ariano ofereceu carona a João, seu amigo. Em alta velocidade, colidiu com um poste e João sofreu graves lesões, com amputação de uma perna. A esposa de João, grávida, ficou abalada e internada em UTI. Com base nas súmulas do STJ sobre responsabilidade civil, assinale a afirmativa correta.',
'',
'',
'["É possível a cumulação das indenizações de dano estético e dano moral eventualmente sofridos por João, em razão das graves lesões sofridas no acidente.","A legitimidade para pleitear a indenização por dano moral é exclusiva de João, sendo inadmissível que sua esposa venha a pleitear perdas e danos pelo acidente.","Mesmo que o transporte realizado por Ariano tenha sido desinteressado e de simples cortesia, ele responde objetivamente pelos danos sofridos por João.","Como se trata de responsabilidade civil extracontratual, os eventuais danos sofridos por João geram juros moratórios e correção monetária a partir do trânsito em julgado da sentença."]'::jsonb,
'A',
'A Súmula 387 do STJ permite a cumulação das indenizações por dano estético e dano moral, ainda que decorrentes do mesmo fato, quando passíveis de apuração em separado - exatamente o caso das graves lesões de João (alternativa A). No transporte de cortesia a responsabilidade é subjetiva (Súmula 145, afastando C); terceiros prejudicados podem pleitear dano (afastando B); e os juros, em ato ilícito, correm desde o evento danoso (Súmula 54, afastando D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Civil',
'Gustavo, viúvo, pai de Heitor e Gabriela, doou à filha uma casa que, ao tempo da liberalidade, correspondia a pequena fração de seu patrimônio, sem cláusula especial no contrato. Dois anos depois, elaborou testamento dispensando Gabriela de colacionar o bem. Com a morte de Gustavo, Heitor questiona a validade da doação e da dispensa de colação. Assinale a afirmativa correta.',
'',
'',
'["O contrato de doação é válido, e Gabriela está dispensada de colacionar o bem por força do testamento.","O contrato de doação é válido, mas a dispensa de colação é nula. Essa dispensa só pode ocorrer no próprio contrato de doação.","O contrato de doação é nulo, uma vez que a doação de ascendente para um descendente exige o consentimento dos demais descendentes.","O contrato de doação é anulável, uma vez que a doação de ascendente para um descendente exige o consentimento dos demais descendentes."]'::jsonb,
'A',
'A doação de ascendente a descendente é válida e representa adiantamento da legítima (art. 544 do CC), sujeita à colação. Contudo, o doador pode DISPENSAR a colação, determinando que a doação saia da parte disponível, desde que não a exceda (art. 2.006 do CC); essa dispensa pode ser feita no próprio título de liberalidade OU em testamento. Como, à época, o bem era pequena fração do patrimônio (cabendo na parte disponível), a doação é válida e a dispensa por testamento é eficaz (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Civil',
'A Farmácia Vida+, de um programa de descontos vinculado à operadora de planos de saúde MedSaúde S.A., compartilhou com a operadora informações detalhadas das compras de clientes (medicamentos, frequência, histórico de fármacos), sem o consentimento explícito dos clientes. Cristina, cliente, pede parecer. Com base na LGPD, assinale a opção que apresenta o parecer correto.',
'',
'',
'["O compartilhamento de dados foi legal, pois tanto a farmácia como a operadora de saúde são autorizadas a tratar os dados pessoais de saúde para a execução dos seus contratos.","A Farmácia Vida+ violou a LGPD ao compartilhar dados pessoais sensíveis sem o consentimento dos titulares, estando sujeita a sanções e obrigada a eliminar os dados compartilhados.","O compartilhamento de dados foi lícito, pois a operadora de saúde tem interesse legítimo na obtenção dessas informações para aprimorar os seus serviços e oferecer benefícios aos clientes.","O compartilhamento de dados foi ilegal, mas a Farmácia Vida+ não pode ser responsabilizada, pois a operadora de planos de saúde é a responsável final pelo tratamento das informações, mas ambas são obrigadas a eliminar os dados."]'::jsonb,
'B',
'Dados sobre saúde (medicamentos, histórico de fármacos) são dados pessoais SENSÍVEIS (art. 5º, II, da LGPD) e exigem base legal específica, em regra o consentimento destacado do titular. O compartilhamento sem consentimento, para fins de marketing/benefícios, é ilícito, sujeitando a farmácia a sanções e à obrigação de eliminar os dados tratados irregularmente (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Civil',
'Ruth mantém, há 15 anos, canos subterrâneos de irrigação que atravessam o Sítio da Lua (de Demétrio) para captar água de uma nascente, de forma contínua e sem oposição, mas invisível a olho nu, sem registro da servidão. Pedro, novo dono do Sítio da Lua, notificou Ruth para interromper o uso, alegando falta de registro. Com base no Código Civil sobre servidões, assinale a afirmativa correta.',
'',
'',
'["A usucapião da servidão poderia ser reconhecida após cinco anos de uso contínuo, dada a boa-fé e a posse qualificada de Ruth.","Ruth adquiriu a servidão por usucapião, pois o uso foi contínuo e incontestado por mais de dez anos, ainda que não fosse visível.","O direito de Ruth configura mera detenção tolerada, mas poderia ser convertido em servidão após 20 anos de utilização contínua.","Ruth não adquiriu a servidão, pois, não sendo aparente, exige registro no Cartório de Imóveis para a sua constituição válida, não admitindo usucapião."]'::jsonb,
'D',
'Somente as servidões APARENTES (exteriorizadas por obras ou sinais visíveis) podem ser adquiridas por usucapião (Súmula 415 do STF; art. 1.213 do CC). Como a tubulação é subterrânea e invisível (servidão NÃO aparente), ela não se adquire por usucapião e, para se constituir validamente, depende de registro no Cartório de Imóveis (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Direito Civil',
'Maria e José, divorciados, têm o filho Paulo (17 anos), com guarda unilateral de Maria; José exerce convivência em finais de semana alternados. Maria quer fazer uma viagem de uma semana, dentro do território nacional, com Paulo, sem afetar as visitas, mas José se opõe sem justificativa. De acordo com o ECA, assinale a opção que indica a orientação correta.',
'',
'',
'["Maria deverá buscar o Juízo da Infância e Juventude e obter alvará para a autorização de viagem.","José só pode se opor à viagem se tivesse sido estipulada a guarda compartilhada, o que não é a hipótese apresentada.","Maria só pode fazer essa viagem com expressa autorização de José, já que ambos são detentores do poder familiar.","Maria não precisa da anuência do genitor, nem de autorização judicial, uma vez que a viagem é dentro do território nacional."]'::jsonb,
'D',
'Viagem de criança ou adolescente DENTRO do território nacional, acompanhada de um dos pais (ou responsável), não exige autorização judicial nem a anuência do outro genitor (o ECA só impõe exigências para viagens desacompanhadas ou ao exterior). Como Paulo viajará acompanhado da mãe, dentro do país, Maria não precisa de anuência de José nem de autorização judicial (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Estatuto da Criança e do Adolescente',
'Marcos, 17 anos, responde a processo de apuração de ato infracional análogo a furto. Sua mãe o constituiu, como advogado(a), para a defesa. Na audiência de apresentação, Marcos e a mãe confirmaram perante o Juízo que você fará a defesa técnica, mas, por não haver procuração nos autos, o Juízo excluiu o advogado e nomeou a Defensoria Pública, contra a vontade de ambos. Assinale a afirmativa correta.',
'',
'',
'["O Magistrado errou ao nomear a Defensoria Pública, pois deveria ter adiado a audiência e dado um prazo razoável para a juntada da procuração.","Considerando a ausência de procuração, o adolescente estava indefeso, de modo que o Juízo agiu corretamente ao nomear a Defensoria Pública.","O Magistrado errou, uma vez que é dispensada a outorga de mandato quando o advogado(a) constituído(a) tiver sido indicado(a) por ocasião de ato formal com a presença da autoridade judiciária.","O Juízo errou, pois deveria adiar o ato e oficiar à OAB para a apuração de eventual infração disciplinar, já que o advogado(a) não poderia se apresentar na audiência sem a juntada da respectiva procuração."]'::jsonb,
'C',
'O advogado pode atuar sem procuração nos autos quando constituído pela parte em ato formal, perante a autoridade judiciária, que registra a indicação (mandato apud acta). Como Marcos e a mãe confirmaram a constituição do advogado perante o Juízo, era dispensável a juntada da procuração, e a nomeação da Defensoria, contra a vontade deles, foi equivocada (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito do Consumidor',
'Augusto, consumidor, assinou contrato de adesão com a AquaLimpa (fornecimento de água) e foi surpreendido por cobrança de R$ 2.500,00 a título de "ajuste de consumo retroativo", não prevista no contrato nem explicada, sob ameaça de corte. Com base no Código de Defesa do Consumidor, assinale a afirmativa correta.',
'',
'',
'["Por ser um contrato escrito, Augusto não tem direito de contestar a cobrança, já que os termos do contrato foram previamente estipulados pela sociedade empresária e aceitos por ele.","Augusto deve questionar judicialmente a cobrança, uma vez que o contrato de adesão deve ser interpretado da forma mais favorável ao consumidor quando houver cláusulas ambíguas, contraditórias ou omissas.","Como o fornecimento de água é um serviço essencial, a sociedade empresária AquaLimpa não pode cortar o fornecimento de água, embora possa realizar a cobrança dos valores retroativos nos termos pactuados.","A sociedade empresária AquaLimpa pode cortar o fornecimento de água imediatamente se Augusto não pagar a dívida, pois a imediata interrupção no fornecimento de serviços em razão de inadimplência, independentemente de notificação, é lícita."]'::jsonb,
'B',
'No contrato de adesão, as cláusulas são interpretadas de maneira mais favorável ao consumidor (art. 47 do CDC), e cláusulas/cobranças ambíguas, contraditórias ou não previstas não podem ser impostas unilateralmente. Diante da cobrança retroativa não prevista no contrato, Augusto pode questioná-la judicialmente, prevalecendo a interpretação pró-consumidor (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito do Consumidor',
'Maria adquiriu aquecedor elétrico de marca renomada; após uma semana, houve curto-circuito e incêndio que danificou parte da residência, por falha de fabricação já relatada por outros consumidores. O fabricante alegou uso inadequado e negou responsabilidade. Com base no Código de Defesa do Consumidor, assinale a afirmativa correta.',
'',
'',
'["No caso, não há que se falar em responsabilidade do fornecedor, pois o risco de curto-circuito é inerente a todos os produtos elétricos.","O fabricante só será responsabilizado se Maria provar que o acidente não decorreu de uso inadequado, independentemente da constatação do defeito do produto.","O fabricante poderá ser responsabilizado se Maria provar que utilizou o aquecedor conforme as instruções do manual de uso, bem como demonstrar a adequação de suas instalações elétricas.","O fabricante é responsável pelos danos causados pelo aquecedor defeituoso, independentemente de culpa e, comprovado o nexo causal entre o defeito e os danos, responderá de forma objetiva."]'::jsonb,
'D',
'Trata-se de responsabilidade por FATO DO PRODUTO (acidente de consumo), regida pelo art. 12 do CDC: o fabricante responde objetivamente (independentemente de culpa) pelos danos causados por defeito do produto. Comprovados o defeito e o nexo causal com os danos, surge o dever de indenizar, só se eximindo o fornecedor nas hipóteses legais de exclusão, que lhe cabe provar (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Empresarial',
'À Assembleia de Credores da recuperação judicial de Atacado Têxtil Itapemirim Ltda. compareceram: Afonso Fundão, sócio da recuperanda e credor por empréstimo a ela; e Viana & Cia. Ltda., credor por duplicatas cujo valor e condições de pagamento não serão alterados pelo plano. Com base na Lei nº 11.101/2005, assinale a afirmativa correta.',
'',
'',
'["Apenas Afonso Fundão poderá votar, já que se trata de credor subordinado, integrante da classe III; Viana & Cia. Ltda. não poderá votar, porque o plano não alterou o valor ou as condições originais de pagamento.","Nenhum dos credores poderá votar na Assembleia, em razão de o primeiro ser sócio da devedora, e o segundo não ter alterado o valor ou as condições originais de pagamento.","Ambos poderão votar, em razão de o primeiro ser credor subordinado e o segundo credor quirografário, integrando a classe III na composição da Assembleia.","Apenas Viana & Cia. Ltda. poderá votar na Assembleia por ser credor quirografário, integrando a classe III; Afonso Fundão não poderá votar, em razão de ser sócio da devedora."]'::jsonb,
'B',
'Não terá direito a voto, e não será considerado para fins de quórum, o credor cujo crédito não for atingido pelo plano (art. 45, §3º, da Lei nº 11.101/2005) - caso de Viana & Cia., cujas condições não serão alteradas. Também não vota o sócio da devedora quanto a crédito dela decorrente (há impedimento por conflito de interesses) - caso de Afonso Fundão. Logo, nenhum dos dois vota (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Empresarial',
'Pedro e Vitória são casados desde 2005 no regime de comunhão parcial de bens e pretendem constituir sociedade simples com seus filhos Carlos e Conceição. De acordo com as regras do Código Civil para a participação de pessoas casadas em sociedade, assinale a afirmativa correta.',
'',
'',
'["É possível a constituição de sociedade simples simultaneamente entre os cônjuges e seus filhos, tendo em vista não ser a sociedade empresária.","É defeso a constituição de sociedade simples simultaneamente entre os cônjuges e seus filhos, qualquer que seja o regime de bens do casamento.","É possível a constituição de sociedade simples entre os cônjuges e seus filhos simultaneamente, tendo em vista ser o regime de bens do casamento de comunhão parcial.","É defeso a constituição de sociedade simples simultaneamente entre os cônjuges e seus filhos, pois o casamento foi celebrado em regime de bens diferente do da separação absoluta."]'::jsonb,
'C',
'O art. 977 do Código Civil veda a sociedade entre cônjuges apenas quando casados no regime da comunhão UNIVERSAL de bens ou no da separação OBRIGATÓRIA (legal). Como Pedro e Vitória são casados em comunhão PARCIAL, podem contratar sociedade entre si e, por consequência, também com os filhos (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Empresarial',
'A sociedade Brasilândia Materiais de Construção contraiu empréstimo junto ao Banco Figueirão S.A., garantido por alienação fiduciária de seis veículos. Após 17 dos 36 meses, deixou de pagar as prestações, com mora comprovada por carta registrada com AR. Diante da mora, assinale a opção que indica a prerrogativa do Banco Figueirão, na condição de proprietário fiduciário dos veículos.',
'',
'',
'["Poderá vendê-los a terceiros, independentemente de leilão, hasta pública, avaliação prévia ou qualquer outra medida judicial ou extrajudicial, salvo disposição expressa em contrário prevista no contrato.","Deverá ajuizar ação declaratória para positivar a mora da fiduciante e, após a avaliação dos bens e alvará judicial, poderá vendê-los a terceiros, devendo aplicar o preço da venda no pagamento de seu crédito e das despesas decorrentes.","Poderá vendê-los a terceiros desde que interpele previamente a devedora fiduciante para que realize o pagamento no prazo improrrogável de 15 dias, findo o qual a propriedade estará consolidada se não for realizado o pagamento integral do saldo devedor.","Deverá ajuizar ação de execução por quantia certa em face da fiduciante para cobrar o crédito, que abrange o principal, a correção monetária, os juros, as comissões, as taxas e a cláusula penal, podendo requerer, liminarmente, uma autorização judicial para a venda do bem em sede de tutela de evidência."]'::jsonb,
'A',
'Na alienação fiduciária de bens móveis (Decreto-Lei nº 911/1969), consolidada a propriedade em nome do credor fiduciário após a mora, este poderá vender a coisa a terceiros, independentemente de leilão, hasta pública, avaliação prévia ou qualquer outra medida judicial ou extrajudicial, aplicando o preço no pagamento do crédito e despesas, salvo disposição contratual em contrário (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Civil',
'A sociedade Elétrica Passa Sete Ltda. ajuizou tempestivamente ação renovatória de locação não residencial. Na inicial, indicou as condições oferecidas, inclusive o novo aluguel. Na contestação, o locador informou ter recebido proposta de terceiro em melhores condições, com valor locativo 12% maior. Assinale a afirmativa correta.',
'',
'',
'["O locador não pode apresentar na contestação proposta de terceiro para a locação, ainda que em condições melhores, diante do direito potestativo do locatário à renovação compulsória.","A proposta de terceiro pode ser apresentada em documento público ou particular. Caso o documento seja particular e esteja com assinatura autenticada, é dispensável a intervenção de testemunhas.","O locatário poderá, em réplica, manifestar ao locador que aceita as condições apresentadas por terceiro para obter a renovação pretendida.","O ramo de negócio a ser explorado pelo terceiro proponente pode ou não ser o mesmo do locatário, desde que seja explorado continuadamente nos últimos três anos."]'::jsonb,
'C',
'Na ação renovatória, se o locador apresenta proposta melhor de terceiro, a Lei do Inquilinato (Lei nº 8.245/1991, art. 72, §2º) assegura ao LOCATÁRIO o direito de, em réplica, manifestar que aceita cobrir a proposta de terceiro (igualar as condições oferecidas), obtendo assim a renovação (alternativa C). A proposta de terceiro deve ser firmada por este e por duas testemunhas, com indicação do ramo (afastando B e D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PROCESSUAL CIVIL (Questoes 51 a 56)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Processual Civil',
'José ajuizou ação de indenização por danos materiais e morais contra Ana e requereu tutela provisória de urgência para bloqueio imediato de bens de Ana até o valor pleiteado. Admitida a inicial, o magistrado concedeu a tutela de urgência em favor de José. Assinale a opção que indica o recurso a ser interposto por Ana.',
'',
'',
'["Não cabe recurso imediato contra a decisão que defere a tutela provisória de urgência.","Agravo de instrumento, uma vez que a decisão que defere a tutela provisória de urgência é decisão interlocutória impugnável por tal recurso.","Apelação, tendo em vista que a decisão que defere a tutela provisória de urgência tem natureza de sentença, passível de impugnação por tal recurso.","Apelação, tendo em vista que a decisão que defere a tutela provisória de urgência é decisão interlocutória passível de impugnação por tal recurso."]'::jsonb,
'B',
'A decisão que versa sobre tutela provisória é decisão interlocutória e desafia AGRAVO DE INSTRUMENTO, nos termos do art. 1.015, I, do CPC. Logo, Ana deve interpor agravo de instrumento (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Processual Civil',
'Joana ajuizou ação declaratória de nulidade de negócio jurídico contra João e Regina, alegando dolo de ambos. Em contestação, João e Regina pretendem reconvir contra Joana e também contra Marcelo, seu fiador, para cobrar parcelas em atraso do contrato. Assinale a opção que apresenta a orientação jurídica correta.',
'',
'',
'["Joana poderá desistir da ação para impedir o prosseguimento da reconvenção.","Joana, com a propositura da reconvenção, será citada pessoalmente e deverá apresentar resposta no prazo de 15 dias.","Não há óbice à propositura da reconvenção em face de Joana e de Marcelo, ainda que este não tenha sido o autor do processo originário.","A reconvenção somente poderá ser admitida porque João e Regina contestaram o pedido, não sendo lícita a propositura de reconvenção sem que o réu ofereça contestação."]'::jsonb,
'C',
'O CPC admite a reconvenção subjetivamente ampliada: a reconvenção pode ser proposta contra o autor e TERCEIRO (art. 343, §3º), bem como pelo réu em litisconsórcio com terceiro (§4º). Assim, é possível reconvir contra Joana e também contra Marcelo, o fiador, mesmo que não fosse parte originária (alternativa C). A desistência da ação não impede o prosseguimento da reconvenção (afastando A); a reconvenção independe de contestação (afastando D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Processual Civil',
'Lucas requereu cumprimento de sentença de alimentos (20% dos rendimentos líquidos) contra seu pai Leonardo, servidor público. Intimado, Leonardo não pagou, mas alegou dificuldades financeiras e pediu mais prazo. Assinale a afirmativa correta.',
'',
'',
'["A comprovação de que Leonardo poderá cumprir parcialmente a obrigação alimentar justificará o inadimplemento em absoluto.","Não acolhida a defesa de Leonardo, o Juiz decretará a sua prisão pelo prazo de dois a seis meses, que, se cumprida, o eximirá do pagamento das prestações vencidas.","O Juiz poderá ordenar a prisão civil de Leonardo em razão do inadimplemento das obrigações referentes às cinco prestações anteriores ao ajuizamento da execução e as que vencerem no curso do processo.","Lucas poderá requerer o desconto em folha de pagamento da importância da prestação alimentícia, buscando o pagamento dos alimentos vencidos e vincendos devidos por Leonardo, até o limite de 50% dos ganhos líquidos do executado."]'::jsonb,
'D',
'Sendo o executado servidor com rendimentos (relação de emprego/vínculo), o exequente pode optar pelo cumprimento mediante DESCONTO EM FOLHA de pagamento (art. 529 do CPC), inclusive para parcelas vencidas e vincendas; o desconto das prestações, somado ao que se cobrar de parcelas pretéritas, está limitado a 50% dos ganhos líquidos do executado (art. 529, §3º). Alternativa D.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Processual Civil',
'Marta faleceu deixando três filhos, cônjuge e bens a inventariar. Nenhum herdeiro é incapaz, há consenso sobre a partilha e todos querem o inventário o mais rápido possível. Assinale a afirmativa que apresenta a providência a ser adotada.',
'',
'',
'["Realizar o inventário extrajudicial por meio de escritura pública, sendo necessária a assistência de um(a) advogado(a).","Realizar o inventário extrajudicial por meio de escritura pública, exigindo-se assistência de um(a) advogado(a) e a intervenção do Ministério Público a fim de controlar a legalidade da partilha.","Ajuizar ação pelo procedimento comum de inventário e partilha, os quais necessariamente devem ocorrer pela via judicial, independentemente da existência de consenso entre os herdeiros.","Comparecer perante o Tabelionato e realizar o inventário e a partilha mediante escritura pública, dispensada a assistência de um(a) advogado(a) por haver acordo sobre a partilha."]'::jsonb,
'A',
'Havendo acordo entre as partes e sendo todos capazes, o inventário e a partilha podem ser feitos extrajudicialmente, por escritura pública (art. 610, §1º, do CPC). Essa escritura, contudo, exige a assistência de advogado (ou defensor público), cuja qualificação e assinatura devem constar do ato; não há intervenção obrigatória do MP (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Processual Civil',
'Alex, no cumprimento de sentença, foi intimado para pagar o débito no prazo legal, mas não pagou. Seis dias após o término do prazo para pagamento, afirmou que ainda aguardava intimação específica para impugnar. Assinale a afirmativa correta.',
'',
'',
'["Alex está correto, pois o prazo para impugnação ao cumprimento de sentença só se inicia após uma nova intimação específica para esse fim.","O prazo para impugnação ao cumprimento de sentença tem início após o transcurso do prazo para o pagamento voluntário, independentemente de nova intimação.","Alex pode apresentar a impugnação a qualquer momento durante a execução, pois não há prazo específico para essa manifestação, em razão do princípio da ampla defesa, devendo ser apresentada em autos apartados.","O prazo para a impugnação ao cumprimento de sentença tem início antes do prazo para o pagamento voluntário, isto é, primeiro Alex é intimado para impugnar e, caso a impugnação não seja acolhida, ele é intimado para efetuar o pagamento do débito."]'::jsonb,
'B',
'No cumprimento de sentença, transcorrido o prazo de 15 dias para pagamento voluntário sem a quitação, inicia-se automaticamente, nos 15 dias seguintes, o prazo para o executado apresentar impugnação, INDEPENDENTEMENTE de nova intimação ou de penhora (art. 525 do CPC). Logo, não é preciso aguardar intimação específica (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Processual Civil',
'Joana ajuizou ação contra Pietra, cirurgiã plástica, pedindo danos morais e estéticos por procedimento malsucedido. Anteriormente, em decisão transitada em julgado, com a mesma causa de pedir e contra a mesma profissional, pedido idêntico de Joana foi julgado improcedente. Assinale a opção que indica o fenômeno processual cabível para extinguir a nova ação.',
'',
'',
'["Conexão, por ser comum o pedido e a causa de pedir.","Litispendência, por se repetir ação já proposta e em curso.","Perempção, por ter havido extinção de ação anteriormente proposta por Joana.","Coisa julgada, por haver decisão de mérito transitada em julgado com as mesmas partes, causa de pedir e pedido."]'::jsonb,
'D',
'Há COISA JULGADA quando se repete ação idêntica (mesmas partes, mesma causa de pedir e mesmo pedido) que já foi decidida por sentença de mérito transitada em julgado (art. 337, §4º, e art. 502 do CPC). Como o pedido anterior foi julgado improcedente, com trânsito em julgado, a nova ação deve ser extinta por coisa julgada (alternativa D). A litispendência pressupõe ação ainda em curso (não é o caso).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PENAL (Questoes 57 a 62)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Penal',
'Waldir, brasileiro, em aeronave privada de bandeira brasileira a caminho dos EUA, agrediu fisicamente o comissário de bordo (brasileiro), causando-lhe lesão corporal grave, quando o avião já sobrevoava território estrangeiro. Assinale a afirmativa correta.',
'',
'',
'["O fato está incondicionalmente sujeito à legislação brasileira, tendo em vista a nacionalidade do autor e da vítima do delito.","O fato está sujeito, simultaneamente, à legislação brasileira e à legislação estrangeira, sendo aplicável a teoria da ubiquidade quanto ao tempo do delito.","O fato está sujeito exclusivamente à legislação estrangeira, haja vista que a aeronave privada estava em território estrangeiro quando ocorreu a prática do delito.","O fato estará sujeito à legislação brasileira, caso não seja julgado no país estrangeiro em cujo território se encontrava a aeronave no momento da prática do delito."]'::jsonb,
'D',
'Aeronaves privadas brasileiras em espaço aéreo estrangeiro NÃO são extensão do território nacional (diferente das públicas/a serviço do Estado). Aplica-se a extraterritorialidade CONDICIONADA (art. 7º, II, "c", e §2º, do CP): o fato sujeita-se à lei brasileira desde que o agente entre em território nacional e, entre outras condições, não tenha sido julgado no estrangeiro. Logo, aplica-se a lei brasileira caso não julgado no país estrangeiro (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Penal',
'Júnior, recém-completados 19 anos, sem a carteira de habilitação (esquecida em casa), pegou o carro potente do pai e, por desconhecer a potência do motor, perdeu o controle e atropelou José, que teve as pernas amputadas. Com base no conflito aparente de normas penais, assinale a afirmativa correta.',
'',
'',
'["Por força do princípio da consunção, Júnior deverá responder pelo delito de tentativa de homicídio culposo.","Por força do princípio da subsidiariedade, Júnior deverá responder pelo delito de lesão corporal de natureza grave.","Por força do princípio da especialidade, Júnior deverá responder pelo delito de lesão corporal culposa na direção de veículo automotor.","Por força do princípio da alternatividade, Júnior deverá responder pelo delito de dirigir veículo automotor, em via pública, sem a devida habilitação, ou pelo delito de lesão corporal culposa."]'::jsonb,
'C',
'A conduta amolda-se ao crime de lesão corporal culposa NA DIREÇÃO DE VEÍCULO AUTOMOTOR (art. 303 do Código de Trânsito Brasileiro), norma ESPECIAL em relação à lesão corporal culposa do Código Penal. Pelo princípio da especialidade, aplica-se o CTB; a falta de habilitação funciona como causa de aumento, e não crime autônomo neste contexto (alternativa C). Não há dolo (afastando "tentativa de homicídio").'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Penal',
'João planejou apropriar-se do dinheiro dos dízimos guardado por Pedro. Quando Pedro se ausentou, João pulou o muro e arrombou a fechadura, mas, ao se aproximar da urna, foi tomado por sentimento sobrenatural, orou e foi embora. Sobre a ação de João, assinale a afirmativa correta.',
'',
'',
'["João percorreu as fases da cogitação, preparação e execução, que integram o iter criminis, mas não exauriu a conduta, o que era imprescindível para a caracterização da tentativa.","João praticou tentativa de furto e ser-lhe-á aplicada a pena do crime consumado a ser reduzida, dentro das margens legais, segundo o trecho do iter criminis que foi percorrido.","João praticou tentativa imperfeita de furto, pois, apesar de ter praticado todos os atos executórios, o resultado não foi atingido por circunstâncias sobrenaturais avessas à vontade do agente.","João consumou o crime de violação de domicílio, pois, de maneira livre e consciente, ingressou na casa alheia contra a vontade de quem de direito."]'::jsonb,
'D',
'João, por sua própria vontade, desistiu de prosseguir na execução do furto antes de subtrair a coisa (desistência voluntária, art. 15 do CP): assim, não responde pela tentativa de furto, mas apenas pelos atos já praticados. Ao pular o muro e arrombar a fechadura, ingressando em casa alheia contra a vontade do morador, consumou o crime de VIOLAÇÃO DE DOMICÍLIO (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Penal',
'Abelardo manteve a filha de Geraldo sob seu poder durante cinco dias, liberando-a após o pagamento de R$ 100.000,00. No terceiro dia do cativeiro, entrou em vigor nova lei que dobrou a pena do crime de extorsão mediante sequestro. Sobre a aplicabilidade da nova lei ao caso, assinale a afirmativa correta.',
'',
'',
'["É inaplicável, por força do princípio da retroatividade da lei penal.","É aplicável, por força do princípio da alternatividade da lei penal.","É aplicável, por força do princípio da continuidade das leis.","É inaplicável, por força do princípio da ubiquidade da lei penal."]'::jsonb,
'C',
'A extorsão mediante sequestro é crime PERMANENTE: a consumação se protrai no tempo enquanto a vítima permanece em poder do agente. Aplica-se a Súmula 711 do STF - a lei penal mais grave aplica-se ao crime permanente (ou continuado) se sua vigência é anterior à cessação da permanência. Como a nova lei entrou em vigor durante o cativeiro, ela é aplicável (princípio da continuidade/atividade da lei penal no crime permanente) - alternativa C.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Maria, para "pregar uma peça", encenou a própria morte: pediu a José que divulgasse seu falecimento, sedou-se e deitou-se em caixão lacrado, enviado com documentos falsos ao cemitério. Sem saber da farsa, o coveiro Pedro, cumprindo seu dever, cremou o corpo e guardou as cinzas. Sobre o procedimento de Pedro, assinale a afirmativa correta.',
'',
'',
'["Ele não praticou crime, pois agiu com base em erro de tipo invencível.","Ele praticou apenas o delito de vilipêndio culposo das cinzas do cadáver de Maria.","Ele praticou o delito de homicídio culposo por descumprir dever de cuidado objetivo.","Ele praticou o delito de homicídio qualificado pela impossibilidade de reação da vítima."]'::jsonb,
'A',
'Pedro desconhecia que havia uma pessoa viva no caixão - incidiu em ERRO DE TIPO quanto a elemento essencial (a existência de vida). Diante das circunstâncias (documentação falsa, encenação sofisticada), o erro era INVENCÍVEL/escusável, o que exclui o dolo e também a culpa, afastando o crime (art. 20 do CP). Logo, Pedro não praticou crime (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Bernardo, gerente bancário, teve o filho sequestrado, com exigência de um milhão de reais para devolvê-lo com vida. Valendo-se de sua condição, foi à agência e subtraiu a quantia, sendo flagrado ao chegar em casa com o dinheiro. Sobre a situação de Bernardo, assinale a afirmativa correta.',
'',
'',
'["Agiu amparado por exercício regular de direito.","Está isento de pena por inexigibilidade de conduta diversa.","Agiu em legítima defesa de terceiro e está excluída a antijuridicidade da conduta.","Deve responder pelo crime de furto consumado, pois chegou a ter posse pacífica do dinheiro."]'::jsonb,
'B',
'Bernardo agiu sob coação moral irresistível/estado de necessidade exculpante decorrente do sequestro do filho, situação em que não se podia exigir dele conduta diversa. A INEXIGIBILIDADE DE CONDUTA DIVERSA é causa supralegal/legal de exclusão da culpabilidade, isentando-o de pena (alternativa B). Não se trata de causa de exclusão da ilicitude (exercício regular de direito ou legítima defesa).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PROCESSUAL PENAL (Questoes 63 a 68)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Processual Penal',
'Lucas era investigado por estupro de vulnerável; a 1ª Vara Criminal expediu mandado de busca e apreensão de seus aparelhos eletrônicos. Nos dispositivos, foram achados arquivos de abuso sexual infantil compartilhados em redes sociais acessíveis de todo o país e do exterior, sem se confirmar o estupro. Lucas foi denunciado pelos Arts. 241-A e 241-B do ECA, condenado a 5 anos, com trânsito em julgado. Assinale a opção que apresenta a providência processual correta a ser adotada pelo advogado.',
'',
'',
'["A ocorrência do trânsito em julgado impede que sejam suscitadas questões processuais atinentes à nulidade ou à incompetência absoluta, admitindo-se a rediscussão dos fatos apenas se for baseada em prova nova, mediante revisão criminal.","Pode ser alegada a nulidade da busca e apreensão e de todos os atos dela decorrentes, diante da incompetência absoluta do Juízo que determinou a diligência, impetrando-se habeas corpus.","Pode ser impetrado habeas corpus, alegando a nulidade da sentença e de todos os atos decisórios posteriores à realização da busca e apreensão, diante da incompetência absoluta do Juízo.","Tendo em vista que a busca e apreensão foi deferida apenas para a investigação de estupro de vulnerável, é incabível a utilização das provas na persecução penal relativa a fato diverso, o que pode ser alegado pela impetração de um mandado de segurança."]'::jsonb,
'C',
'A divulgação de material de abuso sexual infantil por rede social acessível no país e no exterior caracteriza crime de competência da Justiça FEDERAL (transnacionalidade; art. 109, V, da CF e entendimento do STF). Como o processo tramitou na Justiça Estadual, há incompetência ABSOLUTA, que pode ser alegada mesmo após o trânsito em julgado, por habeas corpus, buscando anular a sentença e os atos decisórios (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Processual Penal',
'Arthur cumpre pena por furto qualificado e, durante a execução, ficou tetraplégico (laudo oficial). O Presidente da República concedeu indulto natalino abrangendo tetraplegia superveniente, para crimes sem violência ou grave ameaça. O pedido de extinção da punibilidade foi indeferido pelo Juízo da Execução, sem fundamentação. Como advogado de Arthur, você deve interpor:',
'',
'',
'["agravo em execução, no prazo de cinco dias. Sem prejuízo, pode ser impetrado habeas corpus.","recurso de apelação, no prazo de cinco dias. Sem prejuízo, pode ser impetrado habeas corpus.","agravo em execução, no prazo de cinco dias. Apenas em caso de não ser interposto recurso, pode-se optar pela via do habeas corpus.","recurso em sentido estrito, no prazo de cinco dias. Diante da unirecorribilidade das decisões, de forma alternativa, pode-se optar pela via do habeas corpus."]'::jsonb,
'A',
'Das decisões proferidas pelo Juízo da Execução cabe AGRAVO EM EXECUÇÃO (art. 197 da LEP), no prazo de 5 dias (Súmula 700 do STF). Nada impede, concomitantemente, a impetração de habeas corpus, por se tratar de constrição à liberdade e de decisão sem fundamentação (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Processual Penal',
'Túlio, ao beber sua água com gás, sentiu gosto estranho (solvente) e chamou a esposa Felícia de "assassina". Esclarecido que o solvente fora posto por engano pelo filho, Túlio pediu desculpas. Dias depois, Felícia contou o episódio, em roda informal, a uma amiga Promotora de Justiça, e o MP ofereceu denúncia por injúria. Como advogado de Túlio, assinale a afirmativa correta.',
'',
'',
'["Em razão de envolver violência doméstica, o crime é de ação penal pública incondicionada, cabendo apenas se defender quanto ao mérito da acusação.","O crime é de ação penal privada, devendo ser alegada a ilegitimidade do Ministério Público para a propositura da ação.","O crime é de ação penal pública condicionada à representação, e essa conversa informal já vale como representação, cabendo apenas se defender quanto ao mérito da acusação.","O crime é de ação pública condicionada à representação, mas a conversa informal não pode ser aceita como exercício do direito de representar."]'::jsonb,
'B',
'O crime de injúria (art. 140 do CP) é, em regra, de AÇÃO PENAL PRIVADA, processado mediante queixa-crime do ofendido. Logo, o Ministério Público não tem legitimidade para oferecer denúncia, cabendo à defesa alegar a ilegitimidade ativa do MP (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Processual Penal',
'Joaquim, menor impúbere de 8 anos, sofreu castigos físicos imoderados praticados pelo pai, Geraldo. A mãe, representando-o, constituiu você como advogado(a). Assinale a opção que apresenta o requerimento correto a ser apresentado.',
'',
'',
'["A fixação de medida cautelar do Código de Processo Penal, pois ausente um regramento específico em favor de vítimas do sexo masculino.","A destituição de guarda, no âmbito cível, e, somente então, haverá legitimidade de Joaquim para postular qualquer medida no âmbito criminal.","A fixação de medida protetiva de urgência de proibição de contato e aproximação, com base na lei específica de prevenção e enfrentamento à violência doméstica e familiar contra a criança e o adolescente.","A fixação de medida protetiva de urgência de alimentos provisórios, com base na lei de violência doméstica e familiar contra a mulher, por analogia, ante a ausência de lei específica que ampare a pretensão de Joaquim."]'::jsonb,
'C',
'Há lei específica de prevenção e enfrentamento da violência doméstica e familiar contra a criança e o adolescente (Lei nº 14.344/2022 - Lei Henry Borel), que prevê medidas protetivas de urgência, como a proibição de contato e aproximação do agressor em relação à vítima. Logo, a providência adequada é o requerimento dessa medida protetiva com base na lei específica (alternativa C), tornando desnecessária a aplicação por analogia da Lei Maria da Penha.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Processual Penal',
'Caim, querendo matar Abel, ofereceu-lhe pastel de camarão sabendo da alergia grave; Abel comeu esse e outros salgados e faleceu de crise alérgica. A perícia concluiu que TODOS os alimentos continham traços de camarão suficientes para matar, não se podendo precisar se a contaminação ocorreu na cozinha ou no recolhimento pela Polícia (em um mesmo invólucro), não sendo mais possível repetir a colheita. Como advogado de Caim, é correto afirmar que a quebra da cadeia de custódia enseja:',
'',
'',
'["a ausência de fiabilidade do laudo de necrópsia.","a ausência de prova fiável do nexo de causalidade.","a nulidade absoluta do processo, atingindo todas as provas produzidas.","a nulidade da prova pericial, a qual deve ser desentranhada do processo."]'::jsonb,
'B',
'A cadeia de custódia garante a integridade e a rastreabilidade da prova. Seu rompimento (aqui, o recolhimento de todos os alimentos em um mesmo invólucro, impedindo saber se a contaminação ocorreu antes ou depois) compromete a confiabilidade do exame quanto à origem da substância, de modo que não há prova FIÁVEL do nexo de causalidade entre a conduta de Caim e a morte (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Processual Penal',
'Flávia foi pronunciada por crime de aborto. O processo tramita em Salgados, PA, com grande repercussão local e várias ameaças de populares contra a ré. A sessão do júri já foi designada e a defesa, intimada. Assinale a opção que indica o modo adequado de requerer que o julgamento ocorra em outra Comarca.',
'',
'',
'["Suscitar incidente de deslocamento de competência para a Justiça Federal.","Apresentar um pedido de Revisão Criminal.","Oferecer exceção de incompetência territorial.","Pedir o desaforamento do júri."]'::jsonb,
'D',
'No procedimento do Tribunal do Júri, quando houver dúvida sobre a imparcialidade do júri ou risco à segurança pessoal do réu (como as ameaças de populares), cabe o DESAFORAMENTO (arts. 427 e 428 do CPP), que transfere o julgamento para outra comarca. Logo, a providência correta é o pedido de desaforamento (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PREVIDENCIARIO (Questoes 69 a 70)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Previdenciário',
'Joana, empregada doméstica por cinco anos consecutivos, foi demitida por justa causa (ilícito comprovado). Seis meses após o desligamento, sofreu acidente de trânsito, ficando permanentemente incapacitada para qualquer atividade remunerada. Assinale a afirmativa correta.',
'',
'',
'["Joana poderá obter o benefício previdenciário de aposentadoria por incapacidade permanente.","Joana não possui direito a qualquer prestação previdenciária, haja vista o desligamento por justa causa.","Joana, caso comprove ter efetuado recolhimentos como facultativa, pode obter a concessão do benefício previdenciário.","Joana somente pode obter o benefício previdenciário se o acidente tiver ocorrido no prazo de três meses após a demissão."]'::jsonb,
'A',
'Após a cessação das contribuições, o segurado mantém a qualidade de segurado durante o PERÍODO DE GRAÇA (em regra, até 12 meses, prorrogáveis). Como o acidente ocorreu seis meses após o desligamento, Joana ainda mantinha a qualidade de segurada e, incapacitada permanentemente, faz jus à aposentadoria por incapacidade permanente (alternativa A). A justa causa não retira direitos previdenciários.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Previdenciário',
'Sílvia Lima, empregada segurada do RGPS, atua em atividades externas de entregas. Ao retornar ao posto após uma entrega, foi atingida por veículo em alta velocidade. Permaneceu afastada por um ano em benefício por incapacidade temporária e recuperou-se plenamente. Sobre a situação de Sílvia, segundo o RGPS, assinale a afirmativa correta.',
'',
'',
'["Ela poderá se aposentar por incapacidade permanente.","Ela tem direito ao auxílio-acidente após o retorno às atividades.","Ela, durante o afastamento, deve continuar a receber salários, normalmente.","Ela, após o retorno à sua atividade, gozará de estabilidade provisória de 12 meses no emprego."]'::jsonb,
'D',
'O acidente ocorrido no deslocamento a serviço (durante entregas externas) é acidente de trabalho (por equiparação). O segurado que sofre acidente de trabalho e recebe benefício por incapacidade temporária tem garantida, pela Lei nº 8.213/1991 (art. 118), a ESTABILIDADE PROVISÓRIA de 12 meses após a cessação do benefício, quando do retorno ao emprego (alternativa D). Como se recuperou plenamente, não cabe aposentadoria por incapacidade permanente nem auxílio-acidente (que pressupõe sequela redutora da capacidade).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO DO TRABALHO (Questoes 71 a 75)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito do Trabalho',
'A sociedade Bons Caminhos Ltda. pretende contratar, em setembro de 2025, aprendizes e estagiários com 18 anos para atividades na modalidade de teletrabalho e quer saber se a pretensão é válida. Considerando os termos da CLT, assinale a afirmativa correta.',
'',
'',
'["É permitido contratar aprendizes e estagiários para realizarem atividades na modalidade de teletrabalho.","É permitido contratar aprendizes na modalidade de teletrabalho, mas não estagiários, por desvirtuar a filosofia do estágio.","É permitido contratar estagiários na modalidade de teletrabalho, mas não aprendizes, porque o contrato de trabalho deles é especial.","Somente é permitido contratar aprendizes e estagiários em regime de teletrabalho se houver autorização dos seus pais ou responsáveis."]'::jsonb,
'A',
'A CLT, após a Reforma Trabalhista e alterações posteriores, passou a admitir expressamente o teletrabalho inclusive para aprendizes e estagiários (art. 75-B, §5º, da CLT), não havendo vedação a essas modalidades. Como ambos têm 18 anos (maiores), é válida a contratação de aprendizes e estagiários em teletrabalho (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito do Trabalho',
'Em outubro de 2023, Plantas Ornamentais Ltda. dispensou Josimar sem justa causa, pagou as verbas rescisórias em cinco dias e recolheu a multa de 40% do FGTS. Contudo, por equívoco do RH, as guias para saque do FGTS e os formulários do seguro-desemprego só foram entregues 60 dias após o término do aviso prévio. Considerando a CLT, assinale a afirmativa correta.',
'',
'',
'["Não se cogitará qualquer multa ou penalidade pela ausência de prejuízo, já que as verbas foram depositadas na conta de Josimar no prazo legal.","A sociedade empresária pagará uma multa de 50% do valor das verbas resilitórias, em razão do atraso na entrega dos documentos do FGTS e do seguro-desemprego.","A situação gerou enorme prejuízo ao trabalhador, daí porque as verbas referentes à saída deverão ser pagas em dobro como forma de punição da sociedade empresária.","A sociedade empresária pagará multa pelo atraso na entrega dos documentos do FGTS e do seguro-desemprego em favor do trabalhador, no valor equivalente ao seu salário."]'::jsonb,
'D',
'A não entrega, no prazo legal, dos documentos que permitem o saque do FGTS e o requerimento do seguro-desemprego gera, em favor do empregado, multa equivalente ao seu salário (aplicação do art. 477 da CLT e entendimento consolidado), independentemente de prejuízo concreto, pois impede o acesso tempestivo a esses direitos (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito do Trabalho',
'Jéssica trabalhava em setor de doenças infectocontagiosas, com adicional de insalubridade em grau máximo. Ao engravidar, foi transferida para o setor de convênios, em sala arejada, sem agente insalubre e sem atendimento ao público. Sobre a situação, de acordo com a CLT, assinale a afirmativa correta.',
'',
'',
'["A empregada, durante a gestação, fez jus ao adicional de insalubridade, que cessará após o nascimento da criança, não se estendendo ao período de lactação.","O direito ao adicional de insalubridade, até o retorno, deverá cessar porque a transferência foi uma necessidade para a qual a sociedade empresária não colaborou.","Jéssica, de acordo com a norma de regência, terá direito à metade do valor do adicional de insalubridade que recebia, enquanto estiver em local sem agente agressor à saúde.","A sociedade empresária deve pagar o adicional de insalubridade à gestante enquanto ela estiver no setor de convênios, fazendo a compensação desse valor na cota-parte do INSS."]'::jsonb,
'D',
'A CLT (art. 394-A, com a redação dada pela Reforma e à luz do julgamento da ADI 5938 pelo STF) determina o afastamento da gestante de atividades insalubres. Quando afastada, a empregada tem assegurada a percepção do adicional de insalubridade, cujo pagamento, nos termos legais, é efetuado pelo empregador, com compensação na cota-parte das contribuições devidas ao INSS (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito do Trabalho',
'Luana trabalha das 7h às 13h15min e desfruta de 15 minutos de intervalo (10h às 10h15min), mas pretende receber 1 hora como extraordinária, alegando ter direito a, no mínimo, 1 hora de intervalo. Segundo a legislação trabalhista em vigor, assinale a resposta correta.',
'',
'',
'["Luana deverá receber o restante do período do intervalo para inteirar 1 hora de forma indenizatória.","Luana não tem direito ao pagamento do intervalo, considerando que a jornada não excede 6 horas e os 15 minutos são de intervalo.","Luana deverá receber o valor correspondente a uma hora integral, com os devidos reflexos nas parcelas salariais do contrato de trabalho.","Luana deverá receber a diferença de 45 minutos de forma indenizatória, com repercussão nas parcelas salariais do contrato de trabalho."]'::jsonb,
'B',
'A jornada de Luana é de 6h15min. O intervalo intrajornada de 1 hora só é obrigatório para jornadas que EXCEDEM 6 horas; para jornadas entre 4 e 6 horas, basta intervalo de 15 minutos. Embora a jornada ultrapasse 6 horas em 15 minutos, a questão adota o entendimento de que, nessa situação, os 15 minutos de intervalo são compatíveis e não geram direito ao pagamento de 1 hora (alternativa B, conforme o gabarito oficial).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito do Trabalho',
'Reginaldo, montador exemplar desde 2021, compareceu ao trabalho com tornozeleira eletrônica, colocada cautelarmente em processo ainda no início, referente a vias de fato com um torcedor em um estádio, no fim de semana. A empresa consulta sobre o que ocorrerá com o contrato de trabalho. Assinale a opção correta.',
'',
'',
'["Será interrompido, sendo garantido a Reginaldo 50% do seu salário.","Será suspenso, até que haja decisão final da justiça criminal.","Será rompido por justa causa, em razão do mau procedimento.","Não sofrerá qualquer consequência."]'::jsonb,
'D',
'Os fatos imputados a Reginaldo ocorreram fora do ambiente e do horário de trabalho (fim de semana, no estádio), sem relação com o emprego, e o processo está apenas no início, sem condenação. Não há justa causa (não configura mau procedimento ligado ao trabalho) nem causa de suspensão/interrupção do contrato. Logo, o contrato de trabalho não sofre qualquer consequência (alternativa D).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PROCESSUAL DO TRABALHO (Questoes 76 a 80)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual do Trabalho',
'João Paulo trabalhou em loja de calçados em Duque de Caxias (RJ), ia a pé ao serviço (menos de 50 m) e não optou pelo vale-transporte. Ao ser dispensado, ajuizou ação reclamando o benefício, mas distribuída para a 100ª Vara do Trabalho do Rio de Janeiro, que designou audiência presencial. A loja e o advogado da ré estão em Duque de Caxias. Sobre a competência territorial e a medida processual, assinale a afirmativa correta.',
'',
'',
'["A ação poderá transcorrer no Rio de Janeiro, tendo sido essa a opção do empregado, pelo que se prorrogou a competência.","Deverá ser apresentada exceção de incompetência territorial em preliminar de contestação, podendo também ser suscitada oralmente no momento da audiência, antes da defesa.","Deverá ser apresentada petição de exceção de incompetência territorial até cinco dias após o recebimento da notificação citatória, em peça autônoma e antes da audiência.","Deverá ser apresentada exceção de incompetência territorial no ato da audiência em peça autônoma, mas junto com a apresentação da defesa, de modo a evitar eventual preclusão."]'::jsonb,
'C',
'No processo do trabalho, a incompetência territorial é arguida por meio de EXCEÇÃO DE INCOMPETÊNCIA, que, nos termos do art. 800 da CLT (com a redação da Reforma Trabalhista), deve ser apresentada no prazo de 5 dias a contar da notificação, em PEÇA AUTÔNOMA e ANTES da audiência, suspendendo o processo (alternativa C).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual do Trabalho',
'Lorena, tosadora, recebe um salário mínimo. Ainda com contrato em vigor, ajuizou, em 2024, reclamação pedindo adicional noturno. Na inicial, não requereu gratuidade de justiça nem juntou declaração de miserabilidade. O pedido foi julgado totalmente improcedente, mas o Juiz concedeu, de ofício, a gratuidade de justiça. Considerando a CLT e o entendimento do TST, assinale a afirmativa correta.',
'',
'',
'["A lei é omissa quanto aos critérios para deferir a gratuidade de justiça, podendo o Juiz concedê-la ou não.","O Juiz está correto, porque o nível salarial de Lorena autoriza a concessão da gratuidade de justiça de ofício.","A parte não requereu gratuidade de justiça, caracterizando, assim, julgamento extra petita, vedado na hipótese.","A gratuidade de justiça na Justiça do Trabalho é um pedido implícito, devendo ser automaticamente concedida a qualquer trabalhador."]'::jsonb,
'B',
'A CLT (art. 790, §3º) autoriza a concessão da gratuidade de justiça, inclusive de ofício, àqueles que percebam salário igual ou inferior a 40% do teto do RGPS - presunção de hipossuficiência. Como Lorena recebe um salário mínimo (abaixo desse patamar), o Juiz pode conceder a gratuidade de ofício (alternativa B). A gratuidade não é pedido de mérito, de modo que sua concessão não configura julgamento extra petita.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual do Trabalho',
'Jean ajuizou, em 2024, reclamação pedindo adicional de insalubridade. O Juiz determinou perícia a cargo de engenheiro do trabalho. A ré protestou, alegando que apenas médico do trabalho poderia realizá-la. Considerando a CLT e a jurisprudência do TST, assinale a afirmativa correta.',
'',
'',
'["A sociedade empresária está correta, porque a realização de perícia de insalubridade é ato privativo de médico do trabalho, conforme prevê a CLT.","A sociedade empresária está equivocada, porque a perícia pode ser realizada por médico do trabalho ou engenheiro do trabalho registrados no Ministério do Trabalho.","Sendo da confiança do Juiz, qualquer profissional poderá ser nomeado perito para a realização de perícia de insalubridade, cabendo à empresa antecipar os honorários.","A perícia para fins de insalubridade somente pode ser realizada por engenheiro do trabalho, desde que registrado no Ministério do Trabalho."]'::jsonb,
'B',
'A CLT (art. 195) determina que a caracterização e a classificação da insalubridade e da periculosidade sejam feitas por perícia a cargo de MÉDICO do trabalho OU ENGENHEIRO do trabalho, registrados no Ministério do Trabalho. Logo, a perícia pode ser feita por qualquer dos dois profissionais, estando equivocada a ré (alternativa B).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual do Trabalho',
'Um sindicato de empregados ajuizou, perante o TRT competente, dissídio coletivo de natureza econômica com alcance municipal. Após contestado, o processo foi extinto sem resolução do mérito, não havendo margem para embargos de declaração. Considerando que você é advogado do sindicato autor, assinale a opção que indica o recurso cabível e o respectivo prazo.',
'',
'',
'["Recurso ordinário, no prazo de 8 dias.","Recurso de revista, no prazo de 8 dias.","Agravo de petição, no prazo de 15 dias.","Recurso extraordinário, no prazo de 15 dias."]'::jsonb,
'A',
'Nos dissídios coletivos de competência originária dos Tribunais Regionais do Trabalho, da decisão cabe RECURSO ORDINÁRIO para o TST, no prazo de 8 dias (art. 895, II, da CLT), inclusive quando o processo é extinto sem resolução de mérito. Alternativa A.'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual do Trabalho',
'Um Sindicato de Empregados deseja ajuizar ação contra outro Sindicato de Empregados para discutir a legitimidade de receber as contribuições sindicais de determinada sociedade empresária. Assinale a afirmativa correta.',
'',
'',
'["A ação deverá ser ajuizada na Justiça do Trabalho.","A ação deverá ser ajuizada na Justiça Comum Federal.","A ação deverá ser ajuizada na Justiça Comum Estadual.","Não caberá ajuizamento de ação judicial, mas apenas procedimento administrativo no Ministério do Trabalho e Emprego."]'::jsonb,
'A',
'Compete à JUSTIÇA DO TRABALHO processar e julgar as ações sobre representação sindical, entre sindicatos, entre sindicatos e trabalhadores, e entre sindicatos e empregadores (art. 114, III, da CF). A disputa entre dois sindicatos sobre a legitimidade para receber a contribuição sindical insere-se nessa competência (alternativa A).'
from public.exams where slug = 'oab-45-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
