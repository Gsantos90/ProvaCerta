-- Seed: CNU 2025 (2a Edicao) - Bloco 1 (Seguridade Social: Saude, Assistencia Social e Previdencia Social) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-E 32-B 33-D 34-A 35-B 36-A 37-A 38-A 39-B 40-C
-- 41-A 42-E 43-D 44-E 45-D 46-E 47-C 48-E 49-B 50-A
-- 51-C 52-E 53-E 54-E 55-E 56-A 57-E 58-C 59-B 60-E
-- 61-B 62-A 63-B 64-A 65-C 66-E 67-D 68-B 69-A 70-B
-- 71-E 72-C 73-B 74-D 75-A 76-D 77-E 78-B 79-B 80-C
-- 81-B 82-B 83-C 84-B 85-A 86-B 87-C 88-E 89-C 90-C
-- Imagens: a questao 53 possui figura (graficos), salva em /cnu-2025-1-tarde-questao-53.svg. Demais questoes sem figura.

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco1-tarde', 'CNU 2025 (2ª Edição) - Bloco 1 (Tarde) - Seguridade Social', 'cnu', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- CONHECIMENTOS GERAIS (Questoes 1 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Conhecimentos Gerais',
'Em determinado Ministério, foi criado um grupo de trabalho com o objetivo de formar a agenda de uma política pública caracterizada pela oferta de auxílios de ordem material pelo poder público, privilegiando certos grupos historicamente excluídos, em detrimento de outros grupos historicamente beneficiados. Antes de confirmar a agenda, o grupo concluiu corretamente que:',
'',
'',
'["a democracia, baseada na soberania do povo, impede que certos grupos sejam beneficiados e outros não, indicativo da incorreção da referida agenda;","um dos princípios fundamentais do Estado de Direito é o da igualdade, salientando que os seres humanos devem ser contemplados de modo idêntico pelas políticas públicas, indicativo da incorreção da referida agenda;","a autonomia política da União permite que ela defina livremente os beneficiários de suas políticas públicas, independentemente do grupo a que pertençam, indicativo da possibilidade de a referida agenda ser adotada;","apesar de as políticas públicas não poderem contemplar arbitrariamente certos grupos em detrimento de outros, é possível privilegiar grupos historicamente excluídos, em prejuízo daqueles historicamente beneficiados;","como a representação política de agentes eleitos não é segmentada em grupos específicos, estando alicerçada na integralidade da população, está errada a segmentação da política pública, indicativo da incorreção da referida agenda."]'::jsonb,
'D',
'A igualdade material admite tratamento diferenciado para grupos historicamente excluídos (ações afirmativas), desde que não arbitrário. Logo, é possível privilegiar tais grupos em prejuízo dos historicamente beneficiados.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'João, servidor efetivo, foi lotado em setor responsável por respostas a requerimentos de acesso à informação. Foram-lhe passadas três diretrizes: I. as informações pessoais devem ser obtidas junto aos respectivos titulares, não podendo ser requeridas ao poder público; II. a classificação da informação como secreta é realizada conforme o juízo de valor da autoridade administrativa, observadas as diretrizes legais; III. o sigilo da informação, como regra geral, deve ser assegurado, salvo se o fornecimento for necessário para a defesa de interesse individual ou coletivo. João concluiu corretamente que:',
'',
'',
'["todas as diretrizes estão corretas;","apenas a diretriz I está correta;","apenas a diretriz II está correta;","apenas as diretrizes I e III estão corretas;","apenas as diretrizes II e III estão corretas."]'::jsonb,
'C',
'Pela LAI, a regra geral é a publicidade e não o sigilo (afasta III), e informações podem ser requeridas ao poder público (afasta I). A classificação como secreta observa o juízo da autoridade competente dentro das diretrizes legais, tornando correta apenas a diretriz II.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público federal, formulou requerimento à autoridade competente visando a direito previsto no regime jurídico da categoria, mas o pedido foi indeferido sob o argumento de que não tinha amparo legal. Em situação dessa natureza, é correto afirmar que:',
'',
'',
'["somente resta a Pedro submeter o seu pedido ao Poder Judiciário;","somente resta a Pedro interpor recurso a ser apreciado pela autoridade hierarquicamente superior;","Pedro pode ingressar com um único pedido de reconsideração e apresentar recursos das decisões proferidas nos recursos sucessivamente interpostos;","diversamente do pedido de reconsideração, cabível em qualquer hipótese, a interposição de recurso pressupõe a demonstração de ilegalidade ou de abuso de poder;","Pedro pode apresentar tantos pedidos de reconsideração quantos entender necessários, desde que cada um deles seja direcionado especificamente à decisão a ser modificada."]'::jsonb,
'C',
'Na Lei 9.784/1999, admite-se um único pedido de reconsideração à mesma autoridade e, em seguida, recursos sucessivos à autoridade superior, dos quais também cabe recurso. Não há necessidade de esgotar a via judicial nem de demonstrar ilegalidade para recorrer.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'Gestor do alto escalão da administração pública federal direta consultou sua assessoria sobre inserir, no Portal da Transparência, três ordens de informações afetas aos servidores, individualizados e sem prévio consentimento: I. remuneração; II. aplicação da sanção de demissão ou de cassação de aposentadoria; III. filiação a um sindicato. A assessoria respondeu corretamente que:',
'',
'',
'["todas devem ser inseridas;","apenas deve ser inserida a informação referida em I;","apenas devem ser inseridas as informações referidas em I e II;","apenas devem ser inseridas as informações referidas em I e III;","apenas devem ser inseridas as informações referidas em II e III."]'::jsonb,
'C',
'Remuneração e sanções disciplinares (demissão/cassação) são informações de interesse público, divulgáveis. A filiação sindical é dado pessoal sensível (CF e LGPD), não podendo ser divulgada sem consentimento. Logo, apenas I e II.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No estudo da ética para a Administração Pública, pensa-se a integridade como virtude do agente público e do próprio sistema organizacional (códigos de conduta, formação em ética, comissões de ética independentes e prevenção de conflitos de interesses). Com relação à experiência brasileira, é correto afirmar que:',
'',
'',
'["o aprimoramento do sistema de prevenção e regulação do conflito de interesses é importante, o que pode envolver novas restrições ao exercício de empregos adicionais ao principal emprego público, a apresentação de declarações de renda e patrimônio do agente público e de seus familiares e o aperfeiçoamento da quarentena;","as comissões de ética são obrigatórias na estrutura da Administração Federal, tendo um decreto estabelecido a sua criação, com atribuições atinentes à aplicação do Código de Ética, como parte do programa de integridade; no entanto, não há controle do cumprimento de tal exigência;","existe, em nível federal, um Código de Ética aplicável a todos os servidores públicos, não sendo possível o estabelecimento de códigos de ética setoriais que levem em conta as peculiaridades de cada instituição;","os programas de mentoria e de desenvolvimento profissional são muito relevantes, mas não têm qualquer relação com as políticas de integridade no serviço público;","a formação em ética compreende a adoção de vários métodos de ensino, devendo ser prevista exclusivamente para os novos servidores empossados."]'::jsonb,
'A',
'O aprimoramento da prevenção de conflitos de interesses pode envolver restrições a empregos adicionais, declarações de renda e patrimônio (inclusive de familiares) e o aperfeiçoamento da quarentena. As demais contêm erros (há controle das comissões, cabem códigos setoriais, mentoria integra a integridade e a formação não se limita a novos servidores).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 (política de governança da administração pública federal) contém princípios interdependentes, esmiuçados no Referencial Básico de Governança Pública do TCU. Com relação a esses princípios, é correto afirmar que:',
'',
'',
'["o princípio da transparência significa disponibilizar na forma de dados abertos, para os interessados, as informações de seu interesse, enquanto o princípio da equidade supõe promover tratamento justo aos agentes públicos, para que eles não possam ser responsabilizados;","a accountability é um princípio que exige que os agentes públicos prestem contas quando forem cobrados, enquanto a confiabilidade guarda relação com a coerência na atuação das instituições públicas, o que gera insegurança para os cidadãos;","o cultivo da integridade moral, que deve ser uma virtude do agente público, deve se sustentar em programas de integridade bastante rígidos e insensíveis aos contextos de atuação, conforme orientação da OCDE;","o princípio da capacidade de resposta está vinculado à busca da eficiência, não guardando qualquer relação com o princípio da participação;","a participação efetiva das partes interessadas é um dos princípios do governo aberto e facilita a equidade no processo de tomada de decisão."]'::jsonb,
'E',
'A participação efetiva das partes interessadas é princípio do governo aberto e favorece a equidade na tomada de decisão. As demais distorcem os princípios (equidade, accountability, integridade e capacidade de resposta).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, que utiliza cadeira de rodas, compareceu a órgão público cujo acesso era feito exclusivamente por escadas; após reclamação, recebeu como resposta que deveria buscar outra unidade, em outro município. Nos termos da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (Decreto nº 6.949/2009), é correto afirmar que:',
'',
'',
'["a adaptação só seria exigível se Mariana comprovasse prejuízo concreto ao seu atendimento ou violação a direito subjetivo;","não há violação aos direitos de Mariana, pois a administração ofereceu alternativa razoável ao indicar outra unidade acessível, ainda que em outro município;","a obrigação de garantir acessibilidade não se aplica a unidades antigas de atendimento público, desde que sejam anteriores à promulgação da Convenção;","a acessibilidade em estabelecimentos públicos é exigível apenas nos casos em que a pessoa com deficiência tenha previamente comunicado sua necessidade;","o Estado tem o dever de garantir a Mariana adaptações razoáveis, sendo a acessibilidade condição para o exercício de todos os direitos e liberdades fundamentais."]'::jsonb,
'E',
'A Convenção estabelece a acessibilidade como condição para o exercício de todos os direitos e liberdades, impondo ao Estado o dever de prover adaptações razoáveis. Indicar outra unidade em município diverso não afasta a violação.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transexual, deseja retificar seu prenome e a designação de sexo na certidão de nascimento. À luz da legislação vigente e dos direitos reconhecidos às pessoas trans, é correto afirmar que:',
'',
'',
'["a mudança de prenome e da identificação de sexo é admitida, desde que haja realização prévia de cirurgia de redesignação sexual;","o pedido de Cláudia deverá ser negado, visto que o nome e o sexo integram documento essencial à identificação civil, sem prejuízo do uso do nome social;","o procedimento solicitado por Cláudia exige decisão judicial, pois o registro civil de nascimento só pode ser alterado mediante autorização do Poder Judiciário;","Cláudia tem direito à retificação diretamente em cartório, sem necessidade de autorização judicial, cirurgia ou apresentação de laudos médicos ou psicológicos;","Cláudia deverá apresentar laudos médicos e psicológicos que atestem disforia de gênero, para que o cartório possa encaminhar seu pedido à Vara de Registros Públicos."]'::jsonb,
'D',
'O STF (ADI 4275) e o Provimento do CNJ asseguram às pessoas trans a retificação de prenome e sexo diretamente no cartório, independentemente de cirurgia, laudos ou autorização judicial.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Uma comunidade quilombola em território rural busca compreender os direitos assegurados por políticas públicas federais. Considerando o reconhecimento constitucional dos povos quilombolas e políticas como o Programa Aquilomba Brasil, é correto afirmar que a comunidade quilombola:',
'',
'',
'["deve comprovar vínculo formal com entidade cultural reconhecida pelo Ministério da Cultura para acessar políticas públicas voltadas à preservação de suas manifestações culturais;","enfrentará impedimentos para exercer seus direitos educacionais enquanto não houver regularização fundiária do território, condição necessária para a implementação da educação quilombola;","terá acesso a políticas públicas educacionais universais voltadas à assimilação das comunidades quilombolas ao restante da população;","poderá acessar políticas públicas de saúde por intermédio dos entes subnacionais, em razão da ausência de diretrizes federais voltadas à população quilombola no âmbito do Sistema Único de Saúde;","deve ter seus direitos territoriais reconhecidos por meio de titulação das terras tradicionalmente ocupadas, assegurada a partir do processo de certificação pela Fundação Cultural Palmares e posterior atuação do Incra."]'::jsonb,
'E',
'O art. 68 do ADCT assegura a titulação das terras tradicionalmente ocupadas pelos remanescentes de quilombos; o procedimento envolve a certificação pela Fundação Cultural Palmares e a atuação do Incra na regularização fundiária.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana é uma mulher negra que trabalha como empregada doméstica desde os 14 anos. Apesar de alfabetizada ainda criança, não teve acesso à educação formal contínua, por ser a principal provedora de renda da família. A trajetória de Joana reflete o fenômeno da:',
'',
'',
'["discriminação de gênero, caracterizada por desigualdades baseadas no fato de a pessoa ser mulher;","discriminação racial, relacionada ao preconceito e à exclusão baseados na raça ou identidade étnico-racial;","discriminação etária, identificada quando pessoas são prejudicadas em razão da sua idade, especialmente no acesso a direitos e oportunidades;","discriminação de classe, que se refere às desigualdades econômicas e sociais decorrentes da posição que o indivíduo ocupa na estrutura produtiva;","discriminação múltipla ou agravada, que ocorre quando diferentes fatores, como raça, gênero e classe, interagem concomitantemente na produção de desigualdades."]'::jsonb,
'E',
'A trajetória de Joana combina raça (mulher negra), gênero (mulher) e classe (baixa renda), caracterizando a discriminação múltipla ou agravada (interseccional), em que vários fatores atuam concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela e Flávia vivem em união estável. Flávia, mulher trans, relata episódios em que Gabriela a empurra e arremessa objetos, zomba de sua aparência, ameaça expulsá-la de casa e controla seu acesso ao cartão bancário, fazendo transferências sem consultá-la. Diante desse contexto, é correto afirmar que:',
'',
'',
'["como se trata de uma relação entre duas mulheres, há igualdade entre as partes, sendo inadequado aplicar o conceito de violência à relação;","sendo Gabriela a principal provedora da casa, o controle dos recursos financeiros por ela não configura forma de violência;","o caso envolve práticas de violência física, psicológica e patrimonial reconhecidas pela legislação brasileira como formas de violência doméstica;","o fato de Flávia ser uma pessoa trans impede que sejam caracterizados como violência doméstica os atos praticados por Gabriela;","a situação descrita não caracteriza violência psicológica, pois não há registro de sofrimento mental clinicamente diagnosticado."]'::jsonb,
'C',
'A Lei Maria da Penha aplica-se a mulheres (inclusive trans) e a relações entre pessoas do mesmo sexo. Empurrões e arremesso de objetos são violência física; humilhações e ameaças, violência psicológica; e o controle do dinheiro, violência patrimonial.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Joana, servidora pública federal, recebeu a incumbência de adotar medidas no âmbito de um dos sistemas estruturantes de gestão de pessoal da administração pública federal. Ao analisar os aspectos estruturais e a funcionalidade desses sistemas, concluiu corretamente que:',
'',
'',
'["podem ser utilizados apenas pelos órgãos do Poder Executivo federal, cabendo aos demais poderes o uso dos seus próprios sistemas;","buscam centralizar em plataformas tecnológicas a execução de atividades de gestão de pessoal gerenciadas pelo órgão central federal;","foram concebidos para que haja um único órgão gestor, sendo de adesão obrigatória para os órgãos da administração pública direta e para os entes da administração pública indireta;","buscam operacionalizar os mecanismos de gestão orçamentária, de modo que haja uma correspondência recíproca entre as despesas de pessoal e as dotações disponíveis;","configuram arranjos institucionais direcionados à atuação conjunta dos órgãos públicos em projetos de interesse comum, maximizando os recursos humanos disponíveis."]'::jsonb,
'B',
'Os sistemas estruturantes de gestão de pessoal centralizam em plataformas tecnológicas (ex.: SIAPE) a execução das atividades de gestão de pessoal, sob coordenação do órgão central. As demais alternativas restringem ou distorcem sua estrutura.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'O setor competente do Ministério Y foi instado a identificar projetos e levantar custos para subsidiar a proposta orçamentária anual. Um projeto deveria se estender por mais de um exercício financeiro. O setor concluiu corretamente que as despesas com o projeto para os exercícios seguintes:',
'',
'',
'["podem ser previstas na lei orçamentária anual;","somente podem ser previstas no plano plurianual;","somente devem ser objeto da lei de diretrizes orçamentárias que abranja o respectivo período;","devem ser objeto de créditos adicionais tão logo finde o primeiro exercício financeiro de sua execução;","devem ser previstas no plano plurianual e contempladas na lei orçamentária anual de cada exercício financeiro, sendo vedado que lei desta natureza abranja mais de um exercício."]'::jsonb,
'A',
'A LOA abrange um único exercício, mas pode prever as despesas do projeto relativas àquele exercício; a CF (art. 167, §1º) só veda o início de investimento que ultrapasse um exercício sem previsão no PPA. Logo, as despesas podem ser previstas na LOA de cada exercício.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Determinado gestor promoveu campanha publicitária de política pública voltada à população vulnerável, de caráter informativo e sem promoção pessoal, mas criticada por, dada a eleição no ano subsequente, trazer benefícios indiretos ao gestor pré-candidato. Na situação descrita, é correto afirmar que a campanha publicitária:',
'',
'',
'["não poderia ser realizada, por afrontar a moralidade administrativa;","não poderia ser realizada, por configurar publicidade de política pública;","poderia ser realizada, considerando o objetivo almejado com a sua realização;","não poderia ser realizada, por afrontar o princípio da impessoalidade;","poderia ser realizada, considerando a plena liberdade do gestor na definição dos objetivos a serem alcançados com a publicidade institucional."]'::jsonb,
'C',
'A publicidade teve caráter informativo, sem promoção pessoal, atendendo ao art. 37, §1º, da CF. Como visava permitir a fruição dos benefícios pelos destinatários, poderia ser realizada em razão do objetivo legítimo almejado.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A reforma administrativa promovida pela Emenda Constitucional nº 19/1998 alterou a sistemática das funções de confiança e dos cargos em comissão. Considerando o novo modelo, é correto afirmar que:',
'',
'',
'["as funções de confiança e os cargos em comissão são destinados apenas a atribuições de direção;","os cargos em comissão são privativos de servidores ocupantes de cargos de provimento efetivo;","o percentual mínimo de cargos em comissão a ser ocupado por servidores de carreira deve ser previsto em lei;","o acesso às funções de confiança foi democratizado, sendo permitido o seu exercício por qualquer pessoa, servidora ou não;","os cargos em comissão devem ser ocupados preferencialmente por servidores ocupantes de carreira técnica ou profissional."]'::jsonb,
'C',
'Após a EC 19/1998, as funções de confiança são exclusivas de servidores efetivos, e os cargos em comissão têm percentuais mínimos reservados a servidores de carreira, conforme definido em lei (art. 37, V, da CF).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'Em evento, debateu-se o potencial expansivo do termo sustentabilidade na perspectiva da dívida pública e seus impactos na implementação de políticas públicas. Ao final, concluiu-se corretamente que:',
'',
'',
'["a concepção de sustentabilidade é direcionada à preservação do meio ambiente, não às finanças públicas;","a sustentabilidade contribuirá para aferir a trajetória de convergência do montante da dívida com os limites definidos na legislação;","a ausência de previsão constitucional da sustentabilidade não obsta que o conceito seja introduzido pela legislação afeta às finanças públicas;","a concepção de sustentabilidade é incompatível com a discricionariedade do Poder Executivo na governança financeira e na realização de políticas públicas;","a correlação é equivocada entre o crescimento da dívida pública e a implementação de políticas públicas, considerando a possibilidade de serem abertos créditos adicionais."]'::jsonb,
'B',
'A sustentabilidade fiscal serve para aferir a trajetória de convergência do montante da dívida aos limites legais, orientando a governança financeira. As demais negam a aplicação do conceito às finanças públicas ou desconsideram sua previsão.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'Ana, diretora de Gestão de Recursos Humanos, pensou em solicitar que os agentes públicos trabalhem em teletrabalho durante a obra do restaurante do prédio. Em relação à modalidade de teletrabalho, é correto afirmar que:',
'',
'',
'["a estrutura necessária, física e tecnológica, deve ser providenciada e custeada pelo órgão público;","o regime de execução deve ser integral com controle de tempo on-line da equipe para que ela tenha foco no trabalho;","o teletrabalho fica condicionado à compatibilidade com as atividades a serem desenvolvidas pelo agente público e à ausência de prejuízo para a administração;","a formalização do acordo unilateral deve ser registrada em um termo de ciência e responsabilidade, e deverá ser usado um aplicativo de mensagens instantâneas (WhatsApp) como ferramenta de comunicação e organização das tarefas;","a avaliação de desempenho do agente público fica suspensa no período do teletrabalho, mesmo que sejam utilizadas as opções de status (on-line, ocupado, offline etc.) da ferramenta de comunicação da equipe."]'::jsonb,
'C',
'O teletrabalho no serviço público é condicionado à compatibilidade das atividades com a modalidade e à ausência de prejuízo à administração, sendo baseado em metas/resultados. Não há custeio obrigatório de estrutura, controle de jornada on-line nem suspensão da avaliação.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio optou por uma modalidade de trabalho que alterna entre o trabalho dentro e fora das instalações da organização, combinando a flexibilidade do trabalho à distância com a interação do ambiente físico. Antônio deve optar pela modalidade de trabalho:',
'',
'',
'["híbrido;","remoto;","síncrono;","assíncrono;","home office."]'::jsonb,
'A',
'O trabalho híbrido alterna entre o presencial (dentro das instalações) e o remoto (fora), combinando a flexibilidade da distância com a interação do ambiente físico — exatamente a descrição do enunciado.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'João utilizou uma solução de Inteligência Artificial (IA) para revisar um texto informal e obteve uma versão bem estruturada e rica em vocabulário. Para a IA realizar a revisão, a partir de comandos claros e específicos, João utilizou um:',
'',
'',
'["prompt;","big data;","helpdesk;","script low-code;","corretor ortográfico e gramatical."]'::jsonb,
'A',
'O comando claro e específico dado a uma IA generativa para obter determinado resultado é o prompt. As demais opções não descrevem a instrução dada à IA.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José, diariamente, acessa o site do Detran, baixa extratos e os inclui no sistema de procuradorias. O Departamento de TI implementou uma solução que automatiza as tarefas repetitivas; para iniciá-la, José dá um clique em um botão para que as tarefas programadas sejam executadas. A solução é do tipo:',
'',
'',
'["orquestrador;","robô assistido;","robô não assistido;","modelo de imagem;","aprendizado de máquina."]'::jsonb,
'B',
'No RPA, o robô assistido (attended) é acionado pelo próprio usuário (um clique) e executa as tarefas repetitivas em conjunto com a ação humana. O robô não assistido roda de forma autônoma; o orquestrador coordena vários robôs.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro usa uma Inteligência Artificial (IA) para apoiar as decisões no atendimento ao público em um órgão federal, mas se preocupa com os riscos. Para minimizar os riscos relativos ao uso da IA para apoiar as suas decisões, Pedro deve:',
'',
'',
'["usar modelos de imagem seguros;","automatizar o processo decisório;","assumir a responsabilidade pela decisão;","optar por aprendizado profundo sempre que possível;","utilizar ferramentas de controle de acesso confiáveis."]'::jsonb,
'C',
'A IA é ferramenta de apoio: para mitigar riscos, o agente humano deve manter-se responsável pela decisão (supervisão humana), não delegando integralmente o juízo à máquina.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS ESPECIFICOS - Seguridade Social (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Seguridade Social',
'A Constituição Federal traça objetivos para a seguridade social. Sobre eles, é correto afirmar que:',
'',
'',
'["a equidade na forma de participação no custeio da seguridade social dispensa a contribuição de pessoas consideradas de baixa renda, mesmo na previdência social;","a seletividade e a distributividade das prestações às populações urbanas e rurais visam a romper a distinção de tratamento que outrora vigorava entre esses segmentos;","a universalidade da cobertura e do atendimento desdobra-se em dois aspectos, que significam, respectivamente, ampliar o número de pessoas amparadas e excluir a cobertura de idade avançada;","o valor dos benefícios previdenciários é protegido pela vedação de sua redução, garantindo-se o reajustamento a fim de manter, em caráter permanente, o valor originário da prestação;","o caráter democrático e descentralizado da administração materializa-se pela gestão quadripartite, com participação dos trabalhadores, dos empregadores, dos aposentados e do poder público nos órgãos colegiados."]'::jsonb,
'E',
'O art. 194, parágrafo único, VII, da CF prevê o caráter democrático e descentralizado da administração mediante gestão quadripartite, com participação de trabalhadores, empregadores, aposentados e governo nos órgãos colegiados. As demais contrariam os objetivos constitucionais.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Seguridade Social',
'Sobre as fontes que custeiam a seguridade social, é correto afirmar que:',
'',
'',
'["a pessoa jurídica em débito com o sistema de seguridade social não pode contratar com o poder público, embora possa receber dele quaisquer incentivos fiscais ou creditícios;","o ônus contributivo do trabalhador e dos demais segurados do Regime Geral de Previdência Social não autoriza a incidência de contribuição sobre suas respectivas aposentadorias;","a contribuição a cargo do empregador sobre a remuneração paga ou creditada ao trabalhador não inclui aquele trabalhador contratado sem vínculo de emprego;","o lucro é uma grandeza econômica tributada pelo imposto sobre a renda da pessoa jurídica, razão pela qual não pode ser objeto também de contribuição social;","as receitas dos estados e municípios devem integrar o orçamento da União Federal, a fim de melhorar a gestão dos recursos disponíveis para o financiamento da seguridade social."]'::jsonb,
'B',
'No RGPS, as aposentadorias e pensões não sofrem incidência de contribuição previdenciária (art. 195, II, da CF, parte final). As demais estão erradas: o débito veda também incentivos fiscais/creditícios; a contribuição patronal alcança trabalhadores sem vínculo; e o lucro pode, sim, ser base de contribuição social (CSLL).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Seguridade Social',
'O Título VIII da Constituição Federal regula a "Ordem Social". No contexto específico da seguridade social, é correto afirmar que esse sistema protetivo se destina a:',
'',
'',
'["assegurar os direitos relativos à saúde, à educação, à previdência e à assistência social, com especial atenção e prioridade a crianças e adolescentes;","expandir a malha de proteção social, permitindo-se, inclusive, diante de restrições orçamentárias, a instituição de outras contribuições sociais, por decreto presidencial;","oferecer proteção à família, à maternidade, à infância, à adolescência e à velhice no âmbito das ações assistenciais, a toda e qualquer pessoa que alcance 65 anos de idade;","proteger o trabalhador em face de riscos sociais do trabalho e de outros eventos, inclusive o pequeno produtor rural, ainda que exerça suas atividades em regime de economia familiar;","universalizar o atendimento às ações e serviços de saúde, dispensando-se a comprovação de contribuição do usuário do Sistema Único de Saúde (SUS), exceto em relação aos estrangeiros em trânsito no país."]'::jsonb,
'D',
'A seguridade social protege o trabalhador diante de riscos sociais, alcançando o pequeno produtor rural que atue em regime de economia familiar (segurado especial). As demais contêm erros: a seguridade não abrange educação; novas contribuições exigem lei (não decreto); as ações de saúde do SUS são universais e sem exigência de contribuição, inclusive a estrangeiros.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Seguridade Social',
'A necessidade de equilíbrio financeiro na seguridade social é princípio constitucional fundamental. Acerca desse tema, está de acordo com a Constituição Federal:',
'',
'',
'["a vedação de criar, majorar ou estender benefício ou serviço da seguridade social sem a correspondente fonte de custeio total;","a obrigatoriedade de instituir outras contribuições sociais para garantir a expansão da seguridade social, desde que por lei ordinária ou medida provisória;","a dispensa de recolher contribuição social pelas entidades privadas sem fins lucrativos, desde que voltadas a atividades educacionais, somente;","a vedação de recolher contribuição pelo segurado do Regime Geral de Previdência Social na condição de segurado facultativo, caso não possua atividade remunerada;","a possiblidade de se adotarem, em relação às contribuições sociais a cargo das empresas, alíquotas diferenciadas em razão da atividade econômica, desde que limitadas a 20% da remuneração total."]'::jsonb,
'A',
'A regra da contrapartida (art. 195, §5º, da CF) veda criar, majorar ou estender benefício ou serviço da seguridade social sem a correspondente fonte de custeio total. As demais afirmações contrariam o texto constitucional.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Seguridade Social',
'A trajetória da proteção social brasileira é traçada por distintas fases. Sobre o tema, é correto afirmar que:',
'',
'',
'["na fase mutualista (1888-1930), destacam-se a proliferação das sociedades de socorro mútuo e das Caixas de Aposentadorias e Pensões (CAPs) para determinadas categorias profissionais, de caráter público e organizadas por empresas, além da edição da primeira lei sobre acidentes de trabalho;","na fase corporativista (1930-1945), destacam-se a intervenção do Estado em assuntos sociais, a criação dos Institutos de Aposentadorias e Pensões (IAPs), a previsão de proteção ao trabalhador na Constituição de 1934 e a edição da Consolidação das Leis do Trabalho (CLT);","na fase de unificação e expansão (1945-1966), destacam-se o aumento da cobertura previdenciária dos IAPs e a promulgação da Lei Orgânica da Previdência Social (LOPS), que representou a primeira tentativa de sistematização, dando origem, ao mesmo tempo, ao Instituto Nacional de Previdência Social (INPS), ao unificar os antigos IAPs;","na fase do sistema nacional (1966-1988), destacam-se a inclusão dos trabalhadores rurais nas ações protetivas por meio do Programa de Assistência ao Trabalhador Rural (Prorural), o qual, assim como o sistema urbano de proteção social, foi submetido às mesmas regras de contribuição e aposentadoria;","na fase da seguridade social, a partir de 1988, destacam-se a consagração de um modelo de proteção social de caráter universal e tripartite, bem como a criação do Instituto Nacional do Seguro Social (INSS) - decorrente da fusão do INPS, do Instituto de Administração Financeira da Previdência e Assistência Social (Iapas) e do Instituto Nacional de Assistência Médica da Previdência Social (Inamps)."]'::jsonb,
'B',
'A fase corporativista (1930-1945) caracteriza-se pela intervenção do Estado, criação dos IAPs (por categoria profissional), previsão de proteção ao trabalhador na Constituição de 1934 e edição da CLT (1943). As demais fases contêm imprecisões (a LOPS é de 1960 e o INPS surgiu em 1966/67; o Prorural não submeteu o rural às mesmas regras do urbano; o modelo de 1988 não é tripartite e o INSS resultou da fusão do INPS com o Iapas, não do Inamps).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Seguridade Social',
'O sistema protetivo brasileiro é calcado em diversos valores, entre eles a solidariedade social. Sobre a solidariedade social, é correto afirmar que:',
'',
'',
'["requer o financiamento da seguridade social brasileira por toda a sociedade, de forma direta e indireta, nos termos da lei, e de contribuições sociais previstas na Constituição Federal;","orienta o Sistema Único de Saúde (SUS), ao garantir, sob certas hipóteses, acesso universal, independentemente da contribuição financeira direta do usuário, exceto para pessoas com planos privados de saúde;","manifesta-se no custeio coletivo da previdência social, pois trabalhadores ativos e empresas contribuem para financiar os benefícios pagos aos beneficiários. Esse formato está na base do chamado regime de capitalização;","constitui objetivo fundamental da República Brasileira, manifestando-se em particular na seguridade social, para a promoção do bem-estar coletivo, inclusive no regime de previdência privada, com maior destaque;","atua na assistência social ao proteger pessoas em situação de vulnerabilidade, independentemente de contribuição prévia ao sistema. Já o beneficiário do Benefício de Prestação Continuada (BPC) deve contribuir sobre a prestação assistencial."]'::jsonb,
'A',
'A solidariedade impõe que toda a sociedade financie a seguridade social, de forma direta e indireta, nos termos da lei, e mediante as contribuições sociais previstas na CF (art. 195). As demais erram: o SUS é universal sem exceção por plano privado; o custeio coletivo caracteriza regime de repartição (não capitalização); e o BPC é assistencial, sem exigência de contribuição.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Seguridade Social',
'Paulo e Ana são casados. Paulo é aposentado, de forma lícita, pelo RGPS e pelo RPPS da União, e continua dando aulas particulares em casa. Ana não exerce atividade remunerada e sua renda provém de aluguel. O casal tem uma filha, Júlia, de 3 anos, com deficiência em grau elevado. Está de acordo com a legislação sustentar que:',
'',
'',
'["Paulo, a depender do valor dos proventos, terá que contribuir para o RPPS da União, mas não sobre os proventos pagos pelo RGPS;","Ana poderá contribuir como segurada facultativa no RGPS, ainda que venha a desempenhar atividades remuneradas como autônoma;","Paulo, ao falecer, instituirá três pensões por morte em favor de Ana e Júlia, suas dependentes previdenciárias, por ter contribuído para todas;","Júlia poderá fazer jus ao Benefício de Prestação Continuada (BPC) da assistência social, pois não disporá de renda própria, a partir de 18 anos de idade;","Paulo deverá contribuir para o RGPS em razão do exercício da atividade remunerada autônoma, mas não fará jus a prestação alguma da previdência social em decorrência dessa atividade."]'::jsonb,
'A',
'Sobre as aposentadorias (proventos do RGPS e do RPPS) não incide nova contribuição. Como Paulo volta a exercer atividade remunerada vinculada ao respectivo regime, pode haver contribuição referente a essa atividade conforme o valor, mas nunca sobre os proventos de aposentadoria do RGPS. A alternativa A reflete corretamente essa não incidência sobre os proventos do RGPS.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Seguridade Social',
'A Lei nº 8.212/1991 (Lei Orgânica da Seguridade Social) dispõe sobre a organização da seguridade social e institui plano de custeio. Quanto às fontes de financiamento disciplinadas na referida Lei, é correto afirmar que:',
'',
'',
'["o orçamento da seguridade social, em âmbito federal, compõe-se de diversos recursos, que podem ser resumidos em receitas da União, das contribuições sociais e de outras fontes;","100% do resultado dos leilões dos bens apreendidos pela Secretaria Especial da Receita Federal do Brasil constituem receita da seguridade social;","a integralidade das receitas advindas de concursos de prognósticos promovidos pelo poder público destina-se à seguridade social, desde que aprovados por decreto legislativo;","a contribuição da União para a seguridade social é constituída de recursos adicionais do orçamento fiscal, não se responsabilizando pela cobertura de eventuais insuficiências financeiras de qualquer ordem;","o Sistema Único de Saúde poderá receber, por repasse, até 100% do valor do prêmio recolhido em favor do Seguro Obrigatório para Proteção de Vítimas de Acidentes de Trânsito (SPVAT)."]'::jsonb,
'A',
'Pela Lei 8.212/1991 (art. 11), o orçamento da seguridade social no âmbito federal compõe-se de receitas da União, das contribuições sociais e de outras fontes. As demais alternativas distorcem os percentuais e as regras de destinação das receitas e da contribuição da União (que cobre eventuais insuficiências financeiras).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Seguridade Social',
'A Constituição Federal reserva um capítulo aos "Direitos Sociais". A respeito deles, é correto afirmar que:',
'',
'',
'["a saúde, a previdência social, a proteção à maternidade e à infância e a assistência aos desamparados estão expressamente previstos na Constituição Federal, enquanto o direito à educação, à alimentação, à moradia, ao transporte e ao lazer são deduzidos implicitamente;","o poder público garante a todo brasileiro em situação de vulnerabilidade social, nos termos da lei, o direito a uma renda básica familiar, em programa permanente de transferência de renda, efetivado majoritariamente pelo Programa Bolsa Família;","os trabalhadores urbanos e rurais, incluindo os autônomos, têm assegurada a proteção do mercado de trabalho da mulher, mediante incentivos específicos, seguro contra acidentes de trabalho e salário-família;","o salário-maternidade, com duração de 120 dias, que poderá ser cumulado com o trabalho e a manutenção do próprio salário, está entre os direitos sociais garantidos pela Constituição Federal;","alguns dos direitos sociais garantidos aos trabalhadores pela Constituição Federal são de natureza previdenciária, como aposentadoria, Benefício de Prestação Continuada (BPC) e bolsa família."]'::jsonb,
'B',
'O art. 6º da CF prevê a renda básica familiar como direito social, garantida nos termos da lei em programa permanente de transferência de renda, efetivado majoritariamente pelo Bolsa Família. As demais erram: educação/alimentação/moradia/transporte/lazer são expressos; BPC e bolsa família não são previdenciários; e o salário-maternidade não se cumula com manutenção integral do salário nos termos descritos.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Seguridade Social',
'Com relação aos desafios na implementação das políticas sociais no Brasil, é correto afirmar que:',
'',
'',
'["a garantia de fontes de financiamento estáveis e suficientes para políticas sociais é um dos problemas a equacionar, especialmente em contextos de crise econômica. A sustentabilidade fiscal não foi prestigiada pela última reforma da previdência, encampada pela Emenda Constitucional nº 103/2019;","a persistência da desigualdade social exige políticas que combinem universalização e direcionamento. O modelo brasileiro, em geral, alterna entre programas amplos (como o bolsa família) e direcionados (como o Sistema Único de Saúde), o que vai ao encontro de resultados distributivos;","as transformações no mercado laboral, como o crescimento do trabalho informal e por plataformas e o fenômeno da pejotização, dificultam o acesso à proteção previdenciária e aos direitos trabalhistas, desafiando o modelo securitário, cuja base de financiamento radica precipuamente na folha de salário e nos demais rendimentos do trabalho;","a articulação das ações dos diversos segmentos de proteção social em estratégias convergentes enfrenta dificuldade ainda hoje, levando a desperdício de recursos, sobreposição de iniciativas e lacunas na tutela social, apesar de a União Federal exercer a competência privativa no combate às causas da pobreza e aos fatores de marginalização;","grupos como população em situação de rua, povos indígenas, migrantes, pessoas com deficiência e idosos ainda enfrentam obstáculos para acesso pleno aos direitos sociais. Essa realidade reflete insuficiências estruturais e institucionais, apesar da instituição do sistema especial de inclusão previdenciária, destinado a integrar esses segmentos historicamente excluídos ao seguro social."]'::jsonb,
'C',
'As transformações do mercado de trabalho (informalidade, plataformas, pejotização) reduzem a base de financiamento do modelo securitário, assentado na folha de salário e nos rendimentos do trabalho, dificultando o acesso à proteção previdenciária. As demais contêm erros (a EC 103/2019 priorizou a sustentabilidade; o SUS é universal, não direcionado; o combate à pobreza é competência comum; o sistema de inclusão previdenciária não se destina a indígenas/migrantes como descrito).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Seguridade Social',
'De acordo com a Lei nº 8.212/1991 e as disposições constitucionais vigentes, constituem contribuições sociais:',
'',
'',
'["as das empresas e equiparadas, incidentes sobre a remuneração paga ou creditada aos segurados a seu serviço. Assim, se um trabalhador autônomo contratar outra pessoa com vínculo empregatício, aquele deverá recolher contribuição como equiparado a uma empresa;","as dos trabalhadores, incidentes sobre o seu salário de contribuição, inclusive e obrigatoriamente para o pescador artesanal, o qual qualifica-se como segurado facultativo do sistema previdenciário nacional;","as dos empregadores domésticos, homem ou mulher, pois são equiparados a empresas para efeitos da Lei nº 8.212/1991 e, nessa condição, poderão obter benefícios previdenciários, incluindo acidentários;","as do importador de bens ou serviços do exterior. Por isso, se uma pessoa adquirir um produto proveniente do estrangeiro para uso próprio, sem ânimo de lucro, não estará sujeito ao pagamento do tributo;","as das empresas, incidentes sobre o faturamento e lucro, mas não sobre a receita estranha à venda de produtos e prestação de serviços, em razão de falta de previsão constitucional."]'::jsonb,
'A',
'A lei equipara a empresa, para fins previdenciários, o contribuinte individual que se utiliza de segurados a seu serviço. Assim, o autônomo que contrata empregado passa a ter obrigações patronais, recolhendo contribuição como equiparado a empresa. As demais contêm erros quanto ao pescador artesanal (segurado especial), aos benefícios acidentários do doméstico, à incidência sobre importação e sobre a receita.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Seguridade Social',
'De acordo com a Constituição Federal e a Lei nº 8.212/1991, é correto afirmar que:',
'',
'',
'["a centralização político-administrativa, como técnica de gestão eficiente, é uma das diretrizes da assistência social, de tal maneira que a União Federal centralizará todas as ações e recursos da seguridade social;","o acesso às ações de saúde orienta-se pela igualdade e universalidade, com prioridade para as atividades reparadoras, de tal maneira que idosos possuem prioridade absoluta e exclusiva no cuidado médico;","o seguro social tem como uma de suas diretrizes a previdência complementar facultativa, custeada por contribuição adicional, a qual deverá ser fixada em lei complementar federal e disciplinada pelo Poder Executivo;","o orçamento anual da seguridade social será elaborado e aprovado por comissão integrada com participação dos trabalhadores, dos empregadores, dos aposentados e do governo, haja vista o princípio democrático e da gestão quadripartite;","a previdência social tem por fim assegurar aos seus beneficiários meios indispensáveis de manutenção, como, por exemplo, em razão de incapacidade laboral, idade avançada e reclusão ou morte daqueles de quem dependiam economicamente."]'::jsonb,
'E',
'A previdência social visa assegurar aos beneficiários meios indispensáveis de manutenção diante de contingências como incapacidade, idade avançada, reclusão e morte do segurado de quem dependiam (art. 1º da Lei 8.213/1991). As demais contrariam a descentralização da assistência/saúde e a sistemática da previdência complementar e do orçamento.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Saude (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Saúde',
'João leva sua filha para ser atendida na emergência de um grande hospital filantrópico que participa do SUS. Há estudantes da área da saúde que participam do atendimento, sob preceptoria de profissionais que não são professores de escolas da área da saúde, e um deles apresenta formulário de consentimento para coleta de dados para pesquisa. Em relação a situações como essa, é correto afirmar que:',
'',
'',
'["os serviços de saúde públicos não devem servir como campos de prática para pesquisa;","os serviços de saúde públicos não devem servir como ambientes de formação profissional;","a ordenação da formação de recursos humanos na área da saúde cabe ao Ministério da Educação;","Comissões Permanentes de integração entre os serviços de saúde e as instituições de ensino profissional e superior devem ser criadas;","as condições de funcionamento das entidades filantrópicas de saúde devem seguir princípios éticos e normas distintos daqueles dos serviços públicos."]'::jsonb,
'D',
'A Lei 8.080/1990 prevê a criação de Comissões Permanentes de integração entre os serviços de saúde e as instituições de ensino profissional e superior. Compete ao SUS (não ao MEC) ordenar a formação de RH em saúde, e os serviços públicos servem como campo de ensino e pesquisa.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Saúde',
'Numa roda social, muitas pessoas alegam que a população não é ouvida na formulação de políticas e na construção de instrumentos de ação de saúde. Em relação à legislação sobre controle social, é correto afirmar que:',
'',
'',
'["as instâncias colegiadas não existem na esfera federal;","as instâncias colegiadas municipais são representadas pelas associações de bairros;","as instâncias colegiadas estaduais são representadas pelas organizações não governamentais;","representantes do governo não devem atuar nas instâncias colegiadas, para não coibir a participação popular;","a Conferência de Saúde pode ser convocada pelo Poder Executivo, por uma própria Conferência ou pelo Conselho de Saúde."]'::jsonb,
'E',
'Pela Lei 8.142/1990, a Conferência de Saúde reúne-se periodicamente e é convocada pelo Poder Executivo ou, extraordinariamente, pela própria Conferência ou pelo Conselho de Saúde. As instâncias colegiadas (Conferências e Conselhos) existem nas três esferas e têm composição paritária, incluindo governo.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Saúde',
'Uma pessoa de 47 anos, assintomática, é diagnosticada com infecção pelo HIV numa unidade de atenção primária e é informada de que seguirá seu atendimento na própria unidade. No que se refere a essa situação, é correto afirmar que:',
'',
'',
'["o ponto de apoio dessa pessoa, desde o início do processo, deveria ter sido um hospital universitário;","o atendimento dessa pessoa deve ser baseado em equipe unidisciplinar médica;","o atendimento dessa pessoa deveria ser feito, desde o início, por especialista em HIV/aids do adulto;","a atenção primária deve ser a gestora dos fluxos assistenciais, responsabilizando-se pela coordenação do cuidado;","a condução do atendimento foi adequada, uma vez que todas as pessoas com diagnóstico inicial de infecção pelo HIV devem começar seu atendimento pela atenção primária."]'::jsonb,
'D',
'A atenção primária é a coordenadora do cuidado e ordenadora dos fluxos assistenciais na rede, responsabilizando-se pela continuidade do cuidado (inclusive de pessoas vivendo com HIV), articulando os demais pontos de atenção quando necessário. Não é regra que todo diagnóstico de HIV comece obrigatoriamente na APS.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Saúde',
'Um professor de 52 anos, em check-up, não quer fazer exame de colesterol, pois não pretende mudar o estilo de vida nem ter provas documentais do risco. Diante dessa situação, o profissional de saúde deve:',
'',
'',
'["solicitar o exame de colesterol, pois há risco de culpabilização caso ele não o faça;","encaminhar o paciente para atenção especializada para solicitação do exame de colesterol;","solicitar o exame de colesterol, pois ele faz parte do protocolo de prevenção e promoção da saúde;","encaminhar o paciente para outro profissional da equipe, que deverá tentar convencê-lo a fazer o exame;","fortalecer o vínculo com o paciente, para que a questão possa ser abordada novamente em consultas futuras."]'::jsonb,
'E',
'Respeitando a autonomia do paciente, o profissional deve fortalecer o vínculo para que o tema possa ser retomado em consultas futuras, em vez de impor o exame ou encaminhá-lo desnecessariamente. O vínculo e a longitudinalidade são atributos da atenção primária.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Saúde',
'Durante uma campanha de prevenção, uma pessoa recebe diagnóstico de diabetes e inicia o controle na unidade básica de saúde, realizando consultas especializadas quando necessário. Sobre esse acompanhamento, é correto afirmar que:',
'',
'',
'["o paciente não deveria ter sido referenciado para consultas especializadas, pois isso enfraquece o papel da atenção primária;","o paciente deveria ter iniciado seu controle na atenção especializada;","o referenciamento a consultas especializadas não implica falta de efetividade do sistema de atenção à saúde;","o referenciamento a consultas especializadas mostra menor eficiência do sistema de atenção na aplicação de recursos;","o paciente pode buscar os serviços de urgência e emergência quando necessário, pois eles fazem parte da atenção primária."]'::jsonb,
'C',
'O referenciamento para a atenção especializada, quando necessário, integra a lógica das redes de atenção coordenadas pela APS e não significa falta de efetividade do sistema — ao contrário, expressa seu funcionamento integrado.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Saúde',
'Um senhor de 52 anos é hospitalizado para cirurgia de hérnia umbilical. O anestesiologista não passa no quarto antes da cirurgia, deixando para conhecê-lo no centro cirúrgico. A cirurgia e o pós-operatório correm bem. Em relação à segurança do paciente, é correto afirmar que:',
'',
'',
'["o fato de o anestesiologista não ter passado no quarto antes da cirurgia é um evento adverso;","a visita do anestesiologista ao quarto pode ser dispensada, para que sejam cumpridas as metas financeiras;","a visita do anestesiologista ao quarto pode ser dispensada, para que sejam cumpridas as metas operacionais;","a visita do anestesiologista ao quarto pode ser dispensada, pois ele conversou com o senhor no centro cirúrgico;","o fato de o anestesiologista não ter passado no quarto antes da cirurgia deve servir como gatilho para a promoção de aprendizado organizacional."]'::jsonb,
'E',
'A avaliação pré-anestésica prévia é boa prática de segurança do paciente; sua ausência, ainda que não tenha gerado dano, deve ser tratada como gatilho (near miss) para aprendizado organizacional e melhoria de processos. Não é, por si, um evento adverso (não houve dano), nem pode ser dispensada por metas.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Saúde',
'Uma equipe de gestão precisou realizar o diagnóstico situacional da saúde de uma população com foco em doenças crônicas não transmissíveis (DCNT), integrando diferentes fontes de dados do SUS. Considerando os principais Sistemas de Informação em Saúde, é correto afirmar que:',
'',
'',
'["o Sistema de Informações sobre Nascidos Vivos (SINASC) fornece dados de internações hospitalares por causas externas, sendo essencial para analisar morbidade e letalidade das DCNT;","o Sistema de Informações sobre Mortalidade (SIM) é a principal base de dados para análise de óbitos por causa básica, idade e local de ocorrência, sendo fundamental para estudos de carga de doença;","o Sistema de Informações Hospitalares (SIH-SUS) possibilita a análise de internações, mas não permite estimativas por diagnóstico, não sendo útil para esse tipo de levantamento;","o Cadastro Nacional de Estabelecimentos de Saúde (CNES) possibilita o levantamento de dados clínicos de pacientes atendidos no SUS, sendo um sistema importante nas análises de vigilância em saúde;","o Sistema de Informação de Agravos de Notificação (Sinan) é voltado à gestão hospitalar de média e alta complexidade, fornecendo dados relacionados à internação, mortalidade e morbidade."]'::jsonb,
'B',
'O SIM é a principal base para análise de óbitos por causa básica, idade e local de ocorrência, essencial para estudos de carga de doença (inclusive DCNT). As demais descrevem erroneamente SINASC (nascidos vivos), SIH (permite análise por diagnóstico), CNES (cadastro de estabelecimentos) e SINAN (agravos de notificação).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Saúde',
'Em uma capacitação, discutiu-se o uso das tecnologias em saúde. Com base na classificação de Merhy (2002), é correto afirmar que:',
'',
'',
'["tecnologias leves estão relacionadas à interação humana, como acolhimento, vínculo, comunicação e gestão de processos de trabalho;","as tecnologias duras são as únicas capazes de produzir impacto real na saúde dos usuários, pois são baseadas em evidências e possuem respaldo científico;","a principal diferença entre as tecnologias leve-duras e duras é que as primeiras não exigem nenhum conhecimento técnico, apenas habilidades sociais dos profissionais;","tecnologias leves e duras são semelhantes, pois ambas envolvem estruturas organizacionais e equipamentos que garantem a qualidade técnica do atendimento;","tecnologias leves-duras referem-se aos equipamentos utilizados nos serviços de saúde, como tomógrafos e respiradores, sendo essenciais para o diagnóstico."]'::jsonb,
'A',
'Na classificação de Merhy, as tecnologias leves são as das relações (acolhimento, vínculo, comunicação, gestão do trabalho vivo); as leve-duras são os saberes estruturados (clínica, epidemiologia); e as duras, os equipamentos e máquinas. Logo, a alternativa A está correta.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Saúde',
'Durante o planejamento das ações de saúde, discutiu-se a crescente demanda por acompanhamento de pacientes com DCNT (hipertensão, diabetes, câncer, doenças respiratórias crônicas), refletindo o atual cenário epidemiológico do Brasil. A esse respeito, é correto afirmar que:',
'',
'',
'["o envelhecimento da população e as predisposições genéticas são os principais fatores responsáveis pelo aumento das DCNTs no Brasil;","a transição demográfica no Brasil é caracterizada pelo crescimento populacional e pelo aumento das taxas de natalidade e fecundidade e da mortalidade infantil;","a transição epidemiológica no Brasil é influenciada, entre outros fatores, pela redução das causas de morte por doenças infecciosas e parasitárias e materno-infantis e pelo envelhecimento da população;","mesmo com o crescimento das DCNTs, o Brasil ainda vive uma fase inicial da transição epidemiológica, com predominância de doenças infecciosas e parasitárias em todas as faixas etárias;","atualmente as doenças crônicas não transmissíveis, embora persistentes, apresentam forte tendência de declínio, graças ao avanço da tecnologia, da medicina preventiva e das ações de promoção de saúde."]'::jsonb,
'C',
'A transição epidemiológica brasileira é marcada pela redução das mortes por doenças infecciosas/parasitárias e materno-infantis e pelo aumento das DCNT, associado ao envelhecimento populacional. A transição demográfica, por sua vez, envolve queda (não aumento) de natalidade, fecundidade e mortalidade infantil.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Saúde',
'Em discussão sobre a Rede de Atenção Psicossocial (RAPS), uma equipe debateu o papel dos dispositivos e pontos de atenção. Acerca dos serviços que compõem a RAPS, é correto afirmar que:',
'',
'',
'["os Centros de Atenção Psicossocial (CAPS) são destinados apenas ao atendimento de casos leves de sofrimento psíquico, enquanto os casos moderados e graves devem ser tratados em hospitais psiquiátricos;","o Programa de Volta para Casa (PVC) inclui a disponibilização de moradias, destinadas a acolher e cuidar das pessoas em sofrimento psíquico grave e persistente, egressas de internações psiquiátricas de longa permanência em hospitais psiquiátricos;","os Serviços Residenciais Terapêuticos (SRT) foram criados para abrigar pessoas com deficiência intelectual em situação de rua, independentemente de histórico de institucionalização;","a atuação da Estratégia Saúde da Família na saúde mental envolve o encaminhamento de usuários aos serviços especializados, não sendo prevista a atenção direta na atenção básica;","a RAPS é composta por unidades de acolhimento (UAs), que oferecem cuidado residencial transitório para pessoas com necessidades decorrentes do uso de álcool e outras drogas, em situações de vulnerabilidade social e que demandem acolhimento terapêutico e protetivo."]'::jsonb,
'E',
'As Unidades de Acolhimento (UAs) integram a RAPS e oferecem cuidado residencial transitório a pessoas com necessidades decorrentes do uso de álcool e outras drogas, em vulnerabilidade social. As demais erram: CAPS atendem casos moderados/graves; o PVC é auxílio-reabilitação (não moradia — isso é o SRT); SRT acolhe egressos de longa internação; e a ESF faz atenção direta em saúde mental.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Saúde',
'Entre 1990 e 2019, o Brasil passou por mudanças na estruturação de seu sistema de saúde pública e de proteção social. A figura mostra as taxas ajustadas de mortalidade e de anos de vida perdidos ajustados por incapacidade (DALY), totais e por causa, estratificadas por sexo (Doenças Infecciosas, Doenças Crônicas e Causas Externas). A partir dos dados apresentados, é correto concluir que:',
'Figura (GBD, 2021 — Martins et al., 2021): evolução histórica, de 1990 a 2019, das taxas de mortalidade e DALY por grupo de causa (doenças infecciosas, doenças crônicas e causas externas), estratificadas por sexo (total, masculino e feminino). Observa-se queda acentuada das doenças infecciosas e aumento relativo da carga das doenças crônicas não transmissíveis.',
'/cnu-2025-1-tarde-questao-53.svg',
'["houve vantagem masculina, tanto para o cenário de mortalidade, quanto para a DALY, total e por causa;","há um efeito maior da morbidade nas taxas de mortalidade do que no DALY;","a variação foi mais acentuada na mortalidade do que no DALY, tanto em relação ao aumento quanto em relação à queda;","o maior diferencial por sexo está nas causas externas, com taxas de mortalidade e DALY maiores para mulheres, em comparação com homens, em todo o período;","houve um aumento da carga de doenças crônicas e não transmissíveis na morbidade da população do país, concomitantemente à queda da carga de doenças infecciosas."]'::jsonb,
'E',
'Os dados evidenciam a transição epidemiológica: aumento da carga (morbidade/DALY) das doenças crônicas não transmissíveis, concomitante à queda da carga das doenças infecciosas. As demais alternativas não se sustentam nos gráficos (nas causas externas a sobremortalidade é masculina, não feminina).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Saúde',
'Os clássicos estudos de Doll & Hill (1950-1952) sobre a etiologia do câncer de pulmão estudaram pacientes com carcinoma de pulmão em comparação com igual número de controles pareados por sexo, idade e hospital, concluindo pela associação entre o hábito de fumar e o carcinoma de pulmão. Considerando os desenhos de estudos epidemiológicos, esse estudo foi do tipo:',
'',
'',
'["coorte;","seccional;","ecológico;","ensaio clínico;","caso-controle."]'::jsonb,
'E',
'Ao partir de pessoas com a doença (casos) e compará-las a controles pareados, investigando retrospectivamente a exposição (tabagismo), o estudo caracteriza-se como caso-controle.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Assistencia Social (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Assistência Social',
'De acordo com o Decreto nº 6.949/2009, que promulgou a Convenção Internacional sobre os Direitos das Pessoas com Deficiência, a deficiência é compreendida como um conceito:',
'',
'',
'["social, baseado na ideia de que cabe à comunidade o dever de contribuir com as pessoas com deficiência, em vez de esperar delas uma participação ativa na vida comunitária;","político, que compreende as pessoas com deficiência a partir de suas dependências e incapacidades biológicas, justificando a necessidade de maior apoio em relação aos demais cidadãos;","permanente, que reconhece a imutabilidade das questões relacionadas ao convívio social com as pessoas com deficiência;","unificado, que generaliza dependências e necessidades das pessoas com deficiência, com o objetivo de assegurar e proteger seus direitos humanos de forma ampla e global;","evolutivo, resultado da interação entre pessoas com deficiência e barreiras ambientais e atitudinais que impedem sua participação plena e igualitária na sociedade."]'::jsonb,
'E',
'A Convenção adota o conceito de deficiência como evolutivo, resultante da interação entre as pessoas com deficiência e as barreiras ambientais e atitudinais que obstam sua participação plena e efetiva na sociedade em igualdade de condições (modelo social/biopsicossocial).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Assistência Social',
'Sobre os conceitos de Proteção Social Básica e Proteção Social Especial, segundo a PNAS, analise (V/F): ( ) A Proteção Social Básica tem por objetivo prevenir situações de risco, por meio do desenvolvimento de potencialidades, da ampliação de aquisições e do fortalecimento dos vínculos familiares e comunitários. ( ) A Proteção Social Especial atua em situações de exclusão social marcadas não apenas pela ausência de renda, mas também pela ocorrência de violências e violações de direitos. ( ) As duas modalidades direcionam suas ações para medidas preventivas, antecipando-se às situações de risco social. A sequência correta é:',
'',
'',
'["V, V, F;","V, F, V;","F, F, V;","F, V, F;","V, V, V."]'::jsonb,
'A',
'As duas primeiras afirmativas estão corretas (PSB previne riscos e fortalece vínculos; PSE atua em violências e violações de direitos). A terceira é falsa: a PSE atua quando o risco/violação já ocorreu (caráter protetivo/reparador), não sendo apenas preventiva. Logo, V, V, F.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Assistência Social',
'De acordo com a Lei Orgânica da Assistência Social (Lei nº 8.742/1993), a assistência social é regida, dentre outros, pelo seguinte princípio:',
'',
'',
'["a centralização político-administrativa da União se materializa na condução da política de assistência social e na gestão dos recursos públicos, promovendo a unificação entre regiões e municípios;","a priorização da rentabilidade econômica em relação às necessidades sociais garante o uso responsável e eficiente dos recursos públicos;","a seletividade na distribuição dos recursos pelo poder público, com base na comprovação rigorosa da necessidade extrema dos beneficiários, assegura a justa aplicação das políticas públicas;","a concessão de benefícios de forma singular ao destinatário evita acúmulos e assegura o uso racional e coordenado dos recursos oferecidos pelo poder público;","a divulgação pelo poder público dos benefícios, serviços e projetos assistenciais, bem como dos recursos oferecidos e dos critérios para sua concessão, facilita o acesso da população às políticas sociais."]'::jsonb,
'E',
'Entre os princípios da LOAS (art. 4º) está a divulgação ampla dos benefícios, serviços, programas e projetos assistenciais, dos recursos oferecidos e dos critérios para sua concessão. As demais contrariam a descentralização e a supremacia das necessidades sociais sobre a rentabilidade econômica.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Assistência Social',
'A respeito das iniquidades raciais na atenção às puérperas no Brasil, estudo mostrou que puérperas de cor preta tiveram maior risco de pré-natal inadequado, falta de vinculação à maternidade, ausência de acompanhante e peregrinação para o parto, além de receberem menos orientação e menos anestesia local, em comparação às brancas. Essa situação ilustra o fenômeno conceituado como:',
'',
'',
'["racismo científico, que se expressa na avaliação negativa da capacidade física das mulheres afrodescendentes ao classificá-las como mais fracas e débeis;","racismo cultural, que desconsidera as práticas tradicionais próprias das mulheres afrodescendentes, como a escolha de realizar o parto em casa, de acordo com seus costumes;","racismo institucional, que se manifesta na oferta de um atendimento inferior e inadequado às mulheres afrodescendentes, em razão de sua cor;","racismo estrutural, que se revela de forma pontual nas condutas individuais e varia conforme as experiências das mulheres afrodescendentes;","racismo recreativo, que se apresenta por meio de expressões supostamente humorísticas que reforçam estereótipos negativos e contribuem para a inferiorização das mulheres afrodescendentes."]'::jsonb,
'C',
'A oferta sistemática de um atendimento inferior e inadequado às mulheres negras pelos serviços de saúde, em razão da cor, caracteriza o racismo institucional, que opera por meio das rotinas e práticas das instituições, produzindo desigualdades no acesso e na qualidade do cuidado.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Assistência Social',
'João, com deficiência física que compromete sua autonomia, passou a receber o Benefício de Prestação Continuada (BPC) e, após fisioterapia, apresentou melhora parcial que lhe permitiu iniciar atividades laborais em seu próprio comércio. Diante da situação, o benefício de João deve ser suspenso, uma vez que:',
'',
'',
'["a melhora parcial das funções motoras demonstra que João não se enquadra mais nos critérios de impedimento de longo prazo, exigidos para a caracterização da deficiência;","o exercício de atividade remunerada contraria os critérios para a concessão do benefício, ao indicar que João possui meios de prover a própria subsistência;","a redução do grau de deficiência para um nível moderado impede o recebimento, já que o benefício é destinado apenas a pessoas com deficiência de alta complexidade;","a participação em programas de habilitação ou reabilitação profissional constitui critério automático para cessação, por indicar processo de recuperação e redução de dependência do auxílio social;","a manutenção da deficiência para além do prazo de revisão previsto em lei configura causa direta para a suspensão do auxílio, que tem caráter temporário."]'::jsonb,
'B',
'O BPC exige a ausência de meios de prover a própria manutenção. O exercício de atividade remunerada que assegure a subsistência enseja a suspensão do benefício, por descaracterizar o requisito da miserabilidade/necessidade (sem prejuízo de regras de reativação previstas em lei).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Assistência Social',
'Com base no trecho da NOB-RH/SUAS sobre equipes de referência, analise: I. A construção da referência baseia-se na oferta contínua dos serviços socioassistenciais, assegurando atendimento disponível e adequado. II. A referência é válida para famílias e indivíduos que residem em territórios marcados por vulnerabilidade social, definidos por indicadores pactuados no SUAS. III. A equipe de referência atua de forma integrada, com profissionais de diferentes áreas, que definem juntos os objetivos estratégicos, conforme a realidade do território e os recursos disponíveis. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'E',
'As três afirmativas estão corretas: a referência pressupõe oferta contínua e territorializada dos serviços, é válida para famílias/indivíduos de territórios vulneráveis definidos por indicadores pactuados, e a equipe de referência atua de forma integrada e multiprofissional conforme a realidade local.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Assistência Social',
'Na história recente do Brasil, a assistência social deixa de ser prática privada e passa a ser reconhecida institucionalmente como direito social. O marco histórico desse reconhecimento é:',
'',
'',
'["a criação da Legião Brasileira de Assistência (LBA), em 1942, que estabelece a assistência social como política estatal, voltada para a população em situação de pobreza;","a promulgação da Constituição Federal de 1988, que insere a assistência social no sistema de seguridade social e a reconhece como direito do cidadão e dever do Estado;","a publicação da Lei Orgânica da Assistência Social (LOAS), em 1993, que pela primeira vez introduz a assistência social como política pública no Brasil, ainda sem esteio constitucional;","a implantação do Sistema Único de Assistência Social (SUAS), em 2005, que cria as bases para o reconhecimento da assistência social como um direito universal;","a criação do Conselho Nacional de Serviço Social (CNSS), em 1938, que estabelece formalmente a assistência social como direito no Brasil, vinculando-a à proteção social estatal."]'::jsonb,
'B',
'A Constituição de 1988 é o marco do reconhecimento da assistência social como direito do cidadão e dever do Estado, ao inseri-la no tripé da seguridade social (saúde, previdência e assistência). A LOAS (1993) regulamenta esse direito já com esteio constitucional.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Assistência Social',
'O Benefício de Prestação Continuada (BPC) garante um salário mínimo ao idoso com 65 anos ou mais e à pessoa com deficiência, comprovada a ausência de meios próprios ou familiares de manutenção, sendo não vitalício. Um motivo previsto para a cessação direta do BPC é:',
'',
'',
'["o recebimento simultâneo de outro benefício do INSS, como a pensão;","a desatualização do Cadastro Único por parte do beneficiário da política;","o início do exercício de atividade remunerada por parte do beneficiário;","o desenvolvimento das capacidades cognitivas ou motoras por parte da PcD;","a ausência de saque do valor do benefício por período superior a 60 dias."]'::jsonb,
'A',
'O BPC é inacumulável, em regra, com outro benefício no âmbito da seguridade social ou de outro regime, salvo exceções legais (como assistência médica e pensões especiais). O recebimento simultâneo de outro benefício do INSS, como a pensão, é causa de cessação direta do BPC. A desatualização do CadÚnico enseja suspensão (não cessação direta).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Assistência Social',
'Carlos, 52 anos, tem hemiparesia após AVC, com limitações motoras e de fala. Realiza higiene e alimentação com adaptações, mas tem dificuldade para se vestir e se locomover. Mora em casa com barreiras arquitetônicas e depende do apoio da esposa, único facilitador diante da falta de acessibilidade no transporte. Considerando os domínios do Índice de Funcionalidade Brasileiro Modificado (IFBr-M), a dimensão ausente da situação é:',
'',
'',
'["atividades;","participação;","fatores pessoais;","fatores ambientais;","funções e estruturas corporais."]'::jsonb,
'B',
'O caso descreve funções/estruturas corporais (sequelas do AVC), atividades (higiene, vestir-se, locomover-se) e fatores ambientais (barreiras arquitetônicas, apoio da esposa, transporte inacessível). A dimensão não abordada é a participação (envolvimento em situações sociais, como trabalho, vida comunitária e relações).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Assistência Social',
'No âmbito do SUAS, os Benefícios Eventuais constituem prestação provisória destinada a responder a ocorrências como morte, nascimento ou calamidade pública. Os Benefícios Eventuais no SUAS se caracterizam por:',
'',
'',
'["serem desvinculados de exigências de contribuição ou de contrapartidas por integrarem a lógica da proteção social não contributiva;","considerarem a condição de pobreza como requisito central, independentemente da gravidade do evento que motivou a solicitação;","serem prestados quando não há possibilidade de atendimento pela rede de serviços socioassistenciais, como medida de último recurso;","corresponderem a transferências financeiras com valores e critérios uniformemente definidos para todo o âmbito nacional;","serem destinados a famílias que já recebem outros benefícios sociais, funcionando como suplemento à renda obtida em outros programas."]'::jsonb,
'A',
'Os Benefícios Eventuais integram a assistência social (proteção não contributiva), sendo desvinculados de exigência de contribuição prévia ou de contrapartidas. Seus valores e critérios são definidos pelos entes (não uniformemente nacionais) e não exigem o recebimento prévio de outros benefícios.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Assistência Social',
'O reconhecimento da assistência social como direito passa pela sua distinção de práticas arcaicas como o assistencialismo, o paternalismo e o clientelismo. Uma prática própria do clientelismo é:',
'',
'',
'["a prestação de serviços por uma entidade privada que fornece cestas básicas e atendimentos sociais mediante pagamento de mensalidade pelos usuários;","a realização de campanhas beneficentes por instituições religiosas, que arrecadam roupas e alimentos para doar às famílias pobres dos bairros em que se localizam;","a concessão de benefícios sociais aos moradores que apoiam politicamente um gestor local, vinculando o acesso à ajuda social à troca de favores e ao apoio eleitoral;","a entrega de alimentos feita por um agente público que escolhe quem considera merecedor da ajuda, sem critérios claros ou envolvimento da comunidade na decisão;","a criação de um programa municipal de transferência de renda, com critérios definidos por lei e acessível a qualquer cidadão que se enquadre nos critérios técnicos."]'::jsonb,
'C',
'O clientelismo caracteriza-se pela troca de favores: o acesso ao benefício social é condicionado ao apoio político/eleitoral ao gestor. A alternativa D descreve paternalismo/assistencialismo (ajuda discricionária sem critérios), e E descreve a assistência como direito (critérios legais e universais).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Assistência Social',
'O SUAS organiza sua oferta de serviços por escala de complexidade (baixa, média ou alta), conforme a gravidade da situação e a intensidade de proteção requerida. Um exemplo de caso de alta complexidade é:',
'',
'',
'["a participação de famílias em situação de vulnerabilidade social em grupos socioeducativos, com foco no fortalecimento de vínculos;","o atendimento especializado às famílias em que houve denúncia de violência psicológica e cujos vínculos estão fragilizados;","o acompanhamento de adolescentes em cumprimento de medida socioeducativa em meio aberto, articulando apoio psicossocial e rede comunitária;","a intervenção junto a crianças vítimas de negligência leve, visando a orientar os responsáveis e a fortalecer a função protetiva da família;","o acolhimento provisório de adultos em situação de rua, sem vínculos familiares, que necessitam de moradia, alimentação e higienização."]'::jsonb,
'E',
'A alta complexidade compreende os serviços de acolhimento que garantem proteção integral (moradia, alimentação, higienização) a pessoas sem referência familiar e/ou em situação de ameaça — como o acolhimento provisório de adultos em situação de rua. As demais são de proteção básica (A) ou especial de média complexidade (B, C, D).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Previdencia Social (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Previdência Social',
'Jorge, engenheiro civil, é contratado pelo regime celetista, com dedicação exclusiva, pela construtora ABC, em janeiro de 2025, iniciando suas atividades imediatamente. Diante da situação, é correto afirmar que Jorge:',
'',
'',
'["é segurado obrigatório do Regime Geral de Previdência Social, na qualidade de segurado empregado, e contribui facultativamente ao Instituto Nacional do Seguro Social – INSS;","poderá obter aposentadoria especial, nos termos da legislação, desde que comprove ter desempenhado atividade perigosa por 25 anos, com a respectiva contribuição, sempre no mesmo empregador e em construção civil;","viabilizará a concessão de pensão por morte para sua mãe na hipótese de óbito em atividade profissional, desde que comprovada a dependência econômica, mesmo que já seja casado e tenha filhos menores de 21 anos de idade;","poderá obter benefício previdenciário caso sofra acidente de trabalho na mesma semana em que foi contratado, uma vez identificada a incapacidade nos termos da lei, mesmo sem o adimplemento de carência;","é segurado facultativo do Regime Geral de Previdência Social, pois, na condição de engenheiro civil, prestará seus serviços na condição de pessoa jurídica, em fenômeno conhecido como pejotização."]'::jsonb,
'D',
'Os benefícios decorrentes de acidente de trabalho independem de carência (art. 26 da Lei 8.213/1991). Assim, Jorge, segurado empregado desde a admissão, faz jus ao benefício por incapacidade mesmo que o acidente ocorra na primeira semana, sem carência.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Previdência Social',
'Maria, trabalhadora rural, desempenha atividades em gleba rural no Mato Grosso, com apoio do esposo e de dois empregados contratados pelo regime celetista, que trabalham continuamente durante todo o ano. Nesse cenário, é correto afirmar que:',
'',
'',
'["Maria é qualificada como segurada especial do Regime Geral de Previdência Social, sendo, na condição de empregadora, responsável pelas obrigações previdenciárias relativas aos empregados em sua propriedade;","Maria é empregadora rural e, por desempenhar atividade profissional em gleba rural nas condições descritas, qualifica-se como segurada contribuinte individual do Regime Geral de Previdência Social;","Maria é segurada contribuinte individual do Regime Geral de Previdência Social, devendo realizar inscrição previdenciária junto ao INCRA, informando as dimensões de sua propriedade rural;","Maria, caso venha a falecer, não viabilizará pensão por morte para seus dependentes, pois não se qualifica como segurada especial, salvo se, em vida, tiver optado por inscrever-se como segurada facultativa do Regime Geral de Previdência Social;","Maria e seu esposo não poderão vincular-se, simultaneamente, ao Regime Geral de Previdência Social, sendo a inscrição, na qualidade de segurado obrigatório, restrita ao titular da propriedade rural."]'::jsonb,
'B',
'A utilização de empregados permanentes (celetistas, o ano todo) descaracteriza a condição de segurada especial, que pressupõe o regime de economia familiar sem empregados permanentes. Nesse caso, Maria é produtora rural que explora atividade com empregados, enquadrando-se como contribuinte individual (empregadora rural), responsável pelas obrigações previdenciárias de seus empregados.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Previdência Social',
'A seguridade social brasileira integra previdência social, assistência social e saúde. Sobre tais subsistemas, é correto afirmar que:',
'',
'',
'["tanto o modelo previdenciário dos trabalhadores privados quanto o sistema protetivo de servidores públicos, por expresso comando constitucional, são de índole contributiva;","a previdência social, no sistema nacional, é dotada de ampla cobertura, em prol de toda e qualquer pessoa, dispensada qualquer forma de contribuição prévia, haja vista a natureza gratuita do sistema;","a previdência social assim como a saúde pública carecem de aportes contributivos mensais mínimos, denominados legalmente de carência, os quais garantem o atendimento integral;","a assistência social brasileira permite a todo e qualquer brasileiro, ao completar a idade de 65 anos, a obtenção de aposentadoria por velhice, no valor ordinário de um salário mínimo;","a previdência social de servidores públicos, independente do ente federado a que sejam vinculados, gera a necessária vinculação automática ao Regime Geral de Previdência Social – RGPS."]'::jsonb,
'A',
'A CF determina o caráter contributivo tanto do RGPS (trabalhadores privados) quanto do RPPS (servidores públicos). A previdência é contributiva (não gratuita); a saúde é universal e não exige carência; a assistência (BPC) não é aposentadoria; e os servidores podem ter RPPS próprio, sem vinculação automática ao RGPS.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Previdência Social',
'José Célio, médico oftalmologista, é aprovado em concurso público federal para cargo de provimento efetivo, com nomeação formalizada e ingresso em atividade. Diante da situação, é correto afirmar que José:',
'',
'',
'["restará vinculado ao Regime Geral de Previdência Social, na qualidade de segurado contribuinte individual, haja vista a inexistência de relação de emprego entre o médico e seu contratante, público ou privado;","é vinculado, obrigatoriamente, ao Regime Próprio de Previdência Social dos servidores públicos federais, com os encargos legais daí derivados, incluindo contribuições previdenciárias;","terá em seu favor, a depender da data de ingresso no serviço público federal, somente a possibilidade de adesão à previdência complementar, nos termos da lei, em fundos de pensão públicos;","terá ingresso compulsório do Regime Geral de Previdência Social, na condição de segurado empregado, caso tenha ingressado no cargo público após a reforma previdenciária de 2019;","poderá, uma vez em atividade no cargo público de provimento efetivo, verter contribuições ao Regime Geral de Previdência Social, na condição de segurado facultativo, podendo obter dupla aposentadoria."]'::jsonb,
'B',
'O servidor público federal titular de cargo efetivo é vinculado obrigatoriamente ao Regime Próprio de Previdência Social (RPPS) da União, com os encargos legais, inclusive contribuições. Não é contribuinte individual nem segurado empregado do RGPS.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Previdência Social',
'Maria José, pessoa com deficiência e servidora pública federal, exerce suas atividades após aprovação em concurso, sem atividade remunerada prévia. Diante dessa situação, é correto afirmar que Maria José:',
'',
'',
'["somente poderá aposentar-se por idade, nos termos da legislação vigente, aos 62 anos, e desde que tenha 20 anos de contribuição;","poderá, a depender do grau de deficiência, aposentar-se concluídos 20 anos de atividade, após regular avaliação pericial;","poderá obter aposentadoria antecipada, sendo, no caso, irrelevante a avaliação do Índice de Funcionalidade Brasileiro Modificado;","possui a possibilidade de aposentadoria antecipada por incapacidade permanente, haja vista a presunção de invalidez após 15 anos de atividade;","poderá aposentar-se após 20 anos de contribuição, independentemente de idade, caso sua deficiência seja qualificada como leve."]'::jsonb,
'E',
'A aposentadoria da pessoa com deficiência por tempo de contribuição varia conforme o grau de deficiência, aferido inclusive pelo IFBr-M: 25 anos (deficiência grave), 29 anos (moderada) e 33 anos (leve) para homens, e 20, 24 e 28 anos para mulheres, independentemente de idade. Para a mulher com deficiência leve, são exigidos 20 anos de contribuição — o que corresponde à alternativa E.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Previdência Social',
'Jorge, segurado empregado do RGPS, atua em empresa metalúrgica exposto a ruído intenso, de forma contínua, em grau acima dos limites de tolerância. Nessa situação, é correto afirmar que Jorge:',
'',
'',
'["poderá aposentar-se por incapacidade permanente após 15 anos de atividade, em virtude da invalidez presumida;","poderá exigir de seu empregador complemento de aposentadoria junto ao Regime Geral de Previdência Social, na forma de abono anual;","poderá obter aposentadoria especial, na forma da legislação, desde que atendidos os requisitos de tempo mínimo de exposição e idade;","poderá aposentar-se antecipadamente, após 15 anos de atividade, desde que comprovada a efetiva perda auditiva na atividade;","poderá aposentar-se após 20 anos de atividade, desde que demonstrada a ineficácia dos equipamentos de proteção fornecidos pelo empregador."]'::jsonb,
'C',
'A exposição habitual e permanente a agente nocivo (ruído acima do limite de tolerância) pode ensejar aposentadoria especial, desde que atendidos os requisitos legais — após a EC 103/2019, tempo mínimo de exposição e idade mínima. Não há invalidez presumida nem aposentadoria automática por tempo reduzido.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Previdência Social',
'Antônia, dona de casa, sem desempenho de qualquer atividade remunerada, busca orientação sobre seus direitos previdenciários. Diante da situação, é correto afirmar que Antônia:',
'',
'',
'["poderá aposentar-se aos 65 anos de idade, independentemente de contribuição previdenciária, desde que comprove renda familiar reduzida, nos termos da legislação;","poderá obter cobertura previdenciária junto ao Regime Geral de Previdência Social, desde que realize inscrição e recolhimentos na condição de segurada facultativa;","poderá inscrever-se como segurada autônoma, independentemente de atividade remunerada, assegurando, na forma da lei, todos os benefícios previdenciários, incluindo aposentadorias;","poderá vincular-se a regime privado de previdência, que permite a obtenção de aposentadorias nas mesmas condições do Regime Geral de Previdência Social;","tem a possibilidade de aderir ao sistema previdenciário como microempreendedora individual (MEI), devendo verter os recolhimentos previstos na legislação específica."]'::jsonb,
'B',
'Quem não exerce atividade remunerada pode filiar-se ao RGPS como segurado facultativo (ex.: dona de casa), mediante inscrição e recolhimento das contribuições, passando a ter cobertura previdenciária. Não é contribuinte individual/autônoma (não há atividade), nem MEI (que exige atividade empresária).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Previdência Social',
'Maria, empresária do setor de moda, atua de forma autônoma em sua residência e utiliza os serviços de Carla, contratada como empregada doméstica para os cuidados familiares, sem envolvê-la na atividade de moda. Diante da situação, é correto afirmar que:',
'',
'',
'["Carla e Maria são excluídas da cobertura do Regime Geral de Previdência Social, haja vista a ausência de relação de emprego na forma celetista, o que representa requisito para a filiação previdenciária;","Maria é qualificada como empregadora doméstica e, nessa condição, é segurada obrigatória do Regime Geral de Previdência Social, devendo verter as contribuições devidas na forma da lei;","Carla é segurada empregada do Regime Geral de Previdência Social, fazendo jus a prestações previdenciárias diversas, incluindo aposentadoria aos 55 anos de idade ou por tempo de contribuição, após 25 anos;","Maria, na condição de empresária, é segurada obrigatória do Regime Geral de Previdência Social, sendo também qualificada como empregadora, assumindo ambas as responsabilidades legais;","Carla é qualificada como segurada empregada doméstica, sendo irrelevante o fato de sua empregadora não demandar sua mão de obra para a atividade profissional de moda."]'::jsonb,
'D',
'Maria, como empresária/contribuinte individual que exerce atividade por conta própria, é segurada obrigatória do RGPS; e, ao contratar empregada doméstica, torna-se também empregadora doméstica, assumindo as obrigações previdenciárias correspondentes. Acumula, portanto, as duas condições e responsabilidades.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Previdência Social',
'Mário, empregado celetista em dia com os recolhimentos, afasta-se por alguns meses após acidente no trabalho, recebendo o benefício cabível. Após ser considerado apto para retornar, entende ter direito a nova prestação em razão de sequela definitiva que, na sua perspectiva, reduz a capacidade laborativa. O benefício a que Mário acredita fazer jus é:',
'',
'',
'["auxílio-acidente;","auxílio-doença acidentário;","benefício por incapacidade temporária;","aposentadoria por invalidez acidentária;","benefício por incapacidade permanente."]'::jsonb,
'A',
'O auxílio-acidente é benefício de natureza indenizatória, devido quando, após a consolidação das lesões decorrentes de acidente, restam sequelas que impliquem redução da capacidade para o trabalho que o segurado habitualmente exercia. É exatamente a hipótese descrita.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Previdência Social',
'Amanda, trabalhadora autônoma, sofre acidente no final de semana, sem conexão com a atividade, e passa a receber benefício por incapacidade temporária do INSS. Durante o recebimento, é convocada para reabilitação profissional, pois o INSS a entende insuscetível de recuperação para a atividade habitual. A conduta do INSS é:',
'',
'',
'["incorreta, pois a reabilitação profissional é serviço previdenciário limitado a segurados empregados, avulsos e especiais, não sendo extensível a contribuintes individuais, como é o caso de Amanda;","correta, pois Amanda, se não devidamente reabilitada dentro de dois anos, será automaticamente aposentada por incapacidade permanente, recebendo proventos integrais pelo INSS;","incorreta, pois Amanda tem a prerrogativa de recusar a reabilitação profissional, assim como transfusão de sangue e intervenção cirúrgica, em prestígio ao princípio da dignidade humana;","correta, pois a reabilitação profissional é obrigatória em situações como a exposta, de forma a viabilizar o retorno da segurada ao mercado de trabalho, ainda que em atividade diversa;","incorreta, pois, se Amanda é insuscetível de recuperação para sua atividade profissional, deve ser aposentada por invalidez, nos termos da lei, devendo se afastar de toda e qualquer atividade remunerada."]'::jsonb,
'D',
'A reabilitação profissional é serviço obrigatório e devido a todos os segurados (inclusive contribuintes individuais) que, insuscetíveis de recuperação para a atividade habitual, possam ser reabilitados para outra. A conduta do INSS é correta, pois visa o retorno ao trabalho em atividade diversa; o segurado pode recusar tratamento cirúrgico/transfusão, mas não a reabilitação sem consequências.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Previdência Social',
'Carlos, servidor público federal vinculado ao RPPS da União, toma posse em janeiro de 2025, aos 30 anos de idade, após ter sido médico autônomo por dez anos. Diante da situação, é correto afirmar que Carlos:',
'',
'',
'["perde, ao abandonar sua atividade privada, o tempo de contribuição anteriormente realizado junto ao Regime Geral de Previdência Social;","poderá, em sua nova atividade, em função pública, aposentar-se após 35 anos de contribuição, desde que tenha, também, a idade mínima de 55 anos;","poderá manter seus recolhimentos ao Regime Geral de Previdência Social, na condição de segurado facultativo, de forma a ter a possibilidade de dupla aposentadoria;","receberá, caso sofra acidente durante a função pública, que gere incapacidade temporária, a prestação cabível por meio do regime previdenciário dos servidores federais;","poderá aposentar-se aos 65 anos de idade, salvo se comprovada atividade insalubre, situação na qual há a possibilidade de aposentadoria antecipada."]'::jsonb,
'E',
'Conforme o gabarito oficial, a alternativa correta é a E: no RPPS da União (após a EC 103/2019), a regra geral de aposentadoria voluntária exige idade mínima (65 anos para o homem), admitida a aposentadoria especial antecipada quando comprovada atividade com efetiva exposição a agentes nocivos (atividade insalubre), nos termos de lei complementar.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Previdência Social',
'Humberto, empregado celetista em indústria, desenvolve atividades em ambiente reconhecidamente insalubre. Após alguns anos, adoece, com necessidade de afastamento temporário e recebimento do respectivo benefício. Nessa situação, é correto afirmar que o afastamento de Humberto:',
'',
'',
'["é decorrente dos agentes nocivos que existiam no meio ambiente do trabalho, sendo devido o auxílio-acidente ao segurado durante o período de incapacidade;","poderá ser qualificado como acidente do trabalho, desde que evidenciada a exposição ao agente nocivo no meio ambiente do trabalho como causa determinante para a incapacidade;","é de responsabilidade exclusiva do empregador, o qual deverá manter o salário de Humberto durante todo o tempo de afastamento, sem prejuízo de eventuais indenizações;","somente será qualificado como acidente do trabalho na hipótese de aplicação do nexo técnico epidemiológico previdenciário (NTEP), realizado pela perícia médica federal;","é limitado a 36 meses, período que, uma vez ultrapassado, propicia aposentadoria por incapacidade permanente, além de indenização trabalhista."]'::jsonb,
'B',
'A doença ocupacional equipara-se a acidente do trabalho quando evidenciado o nexo entre a exposição ao agente nocivo no meio ambiente laboral e a incapacidade (doença profissional/do trabalho). O NTEP é um dos meios de caracterização do nexo, mas não o único; o auxílio no período de incapacidade é o benefício por incapacidade temporária (acidentário), não o auxílio-acidente.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Saude e Seguranca do Trabalho (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Saúde e Segurança do Trabalho',
'A atividade de garimpo ilegal, principalmente na Região Norte do Brasil, promove danos à saúde humana e ao meio ambiente, tanto para os garimpeiros como para a população da região contaminada, com destaque para os ribeirinhos. Essa atividade econômica irregular pode implicar:',
'',
'',
'["desmatamento e intoxicação por chumbo metálico nos trabalhadores;","intoxicação por mercúrio metálico nos trabalhadores e por metil-mercúrio nas populações próximas;","desmatamento e intoxicação por mercúrio metálico nas populações próximas;","intoxicação por mercúrio metálico nas populações próximas e por metil-mercúrio nos trabalhadores;","desmatamento e intoxicação por metil-mercúrio nos trabalhadores."]'::jsonb,
'B',
'No garimpo, os trabalhadores expõem-se ao mercúrio metálico (vapor), usado na amálgama do ouro; ao ser lançado nos rios, o mercúrio é convertido por microrganismos em metil-mercúrio, que se bioacumula na cadeia alimentar (peixes) e intoxica as populações próximas (ribeirinhas).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Saúde e Segurança do Trabalho',
'Um servidor público, motorista de uma universidade federal, sofre acidente de trabalho que lhe causa cegueira total em ambos os olhos, sem outras sequelas graves. Nesse caso, após a alta hospitalar, o servidor deverá proceder aos seguintes processos:',
'',
'',
'["readaptação e reintegração;","reabilitação física e reversão;","reabilitação física e readaptação;","reabilitação física e reabilitação profissional;","reabilitação física, reabilitação profissional e reintegração."]'::jsonb,
'C',
'Como servidor estatutário que, após a reabilitação física, não poderá exercer a função de motorista (cegueira), ele deverá ser readaptado em cargo/atribuições compatíveis com a limitação. Logo: reabilitação física e readaptação. Reversão e reintegração são institutos diversos (retorno de aposentado e de servidor demitido ilegalmente).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Saúde e Segurança do Trabalho',
'Uma trabalhadora de joalheria, com diagnóstico anterior de cardiopatia, sofre infarto do miocárdio ao vivenciar assalto à mão armada no local de trabalho, afastando-se por 60 dias e retornando às mesmas funções após a perícia médica do INSS. Nesse caso, a trabalhadora faz jus ao:',
'',
'',
'["auxílio-doença e ao auxílio-acidente;","benefício por incapacidade temporária acidentário;","benefício por incapacidade temporária previdenciário;","benefício por incapacidade permanente previdenciário;","auxílio-doença e ao benefício por incapacidade permanente previdenciário."]'::jsonb,
'B',
'O infarto desencadeado por evento ocorrido no local e em razão do trabalho (assalto à mão armada) caracteriza acidente do trabalho. Como houve afastamento temporário (60 dias) com retorno às mesmas funções, o benefício cabível é o benefício por incapacidade temporária de natureza acidentária (antigo auxílio-doença acidentário).'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Saúde e Segurança do Trabalho',
'Uma professora de ensino médio, com histórico de conflitos com alunos, passou a apresentar desesperança, baixo controle emocional, condutas de fuga e evasão, frieza, insensibilidade, dificuldade de concentração, distúrbios gastrointestinais e cefaleia. O psiquiatra receitou ansiolítico e a afastou por 30 dias. Esse quadro pode estar relacionado com o seguinte transtorno mental:',
'',
'',
'["estado de stress pós-traumático;","síndrome do esgotamento profissional;","transtorno psicótico relacionado ao trabalho;","transtorno depressivo relacionado ao trabalho;","ansiedade generalizada relacionada ao trabalho."]'::jsonb,
'B',
'O conjunto de sintomas — exaustão, despersonalização (frieza, insensibilidade, condutas de evasão) e sofrimento associado ao trabalho crônico (conflitos recorrentes) — caracteriza a síndrome do esgotamento profissional (burnout), relacionada ao trabalho e prevista na lista de doenças ocupacionais.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Saúde e Segurança do Trabalho',
'Uma trabalhadora de frigorífico, exposta a movimentos repetitivos, adquiriu síndrome do túnel do carpo e foi demitida sob a alegação de que a doença não teria sido adquirida no trabalho. A doença e o quadro clínico deverão ser caracterizados por relatório médico e exames, além de ser necessário que:',
'',
'',
'["essa documentação seja encaminhada para o INSS, para a emissão da CAT e avaliação pericial para confirmação do nexo causal;","essa documentação seja encaminhada para o INSS, com fotocópia da Carteira de Trabalho, para a emissão da CAT e avaliação pericial para confirmação do nexo causal;","o médico assistente, ou o sindicato, ou a própria trabalhadora emita a CAT, e que essa documentação seja encaminhada para o INSS para confirmação do nexo causal;","exclusivamente o médico assistente ou outra autoridade pública faça a emissão da CAT, e que essa documentação seja encaminhada para o INSS para confirmação do nexo causal;","o próprio médico assistente da paciente emita a CAT, e que essa documentação seja encaminhada para o INSS, para avaliação pericial para confirmação do nexo causal."]'::jsonb,
'C',
'Quando a empresa se omite na emissão da CAT, a legislação (Lei 8.213/1991, art. 22, §2º) autoriza que o próprio acidentado, seus dependentes, o sindicato, o médico assistente ou a autoridade pública a formalizem. Logo, a CAT pode ser emitida pelo médico assistente, pelo sindicato ou pela própria trabalhadora, encaminhando-se a documentação ao INSS para confirmação do nexo.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Saúde e Segurança do Trabalho',
'Um gestor municipal de saúde, ao implementar as ações da Política Nacional de Saúde do Trabalhador e da Trabalhadora, deve obedecer aos princípios do SUS. Nesse sentido, a parcela da população trabalhadora que deve ser priorizada é:',
'',
'',
'["aqueles com maior risco de acidentes e doenças relacionadas ao trabalho;","aqueles inseridos em atividades ou em relações informais e precárias de trabalho;","aqueles de categorias profissionais com maior incidência de acidentes de trabalho graves e fatais;","aqueles de categorias profissionais com maior taxa de mortalidade específica por acidentes de trabalho;","aqueles de categorias profissionais com maior incidência de acidentes de trabalho graves e fatais e maior prevalência de doenças relacionadas ao trabalho."]'::jsonb,
'B',
'A PNSTT, coerente com a equidade do SUS, prioriza os trabalhadores em maior vulnerabilidade — aqueles inseridos em atividades e relações informais e precárias de trabalho —, que normalmente estão desprotegidos e mais expostos a riscos.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Saúde e Segurança do Trabalho',
'Um trabalhador de escritório, ao ir ao banco a serviço da empresa para um depósito, no final do expediente, participa de uma discussão na fila e é agredido, resultando em ferimentos. Em relação ao caso, é correto afirmar que:',
'',
'',
'["é considerado um acidente de trabalho e deve ser aberta a CAT;","não é considerado acidente de trabalho por ter ocorrido fora da empresa;","poderá ser considerado acidente de trabalho após perícia médica no INSS;","não é considerado acidente de trabalho por se tratar de desentendimento pessoal;","não é considerado acidente de trabalho por ter ocorrido fora da empresa e fora do horário de trabalho."]'::jsonb,
'A',
'A lei equipara a acidente de trabalho o evento sofrido pelo empregado, ainda que fora do local e horário de trabalho, na execução de ordem ou serviço da empresa (art. 21 da Lei 8.213/1991), inclusive agressão. Como o trabalhador estava a serviço (depósito bancário), configura-se acidente de trabalho e deve ser aberta a CAT.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Saúde e Segurança do Trabalho',
'Depoimento: durante sete anos, um trabalhador de clínica foi vítima de gritos e insultos da chefe imediata, que convocava reuniões para falar mal e isolar colegas, pressionando os demais a aderirem, sob pena de perseguição; ao pedir mudança de área, a chefe de RH pediu que aguardasse, pois a situação seria passageira. A responsabilidade pelo assédio cabe:',
'',
'',
'["à chefe imediata (como agressora ativa), apenas;","à chefe imediata (como agressora ativa) e à chefe de Recursos Humanos (como sustento);","à chefe imediata (como agressora ativa) e aos companheiros da vítima (que sustentam a situação);","à chefe imediata (como agressora ativa), aos companheiros da vítima (como apoiadores) e à chefe de Recursos Humanos (como sustento);","à chefe imediata (como agressora ativa), aos companheiros da vítima (como seguidores) e à chefe de Recursos Humanos (como sustento)."]'::jsonb,
'B',
'No assédio moral organizacional, respondem a agressora ativa (chefe imediata) e quem, podendo agir, se omite e sustenta a situação (a chefe de RH, que ignorou o pedido). Os colegas, pressionados e também vítimas da perseguição, não são responsabilizados como apoiadores/seguidores. Logo, a responsabilidade cabe à chefe imediata e à chefe de RH.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Saúde e Segurança do Trabalho',
'Para a psicodinâmica do trabalho, a saúde mental está ligada à organização do trabalho. Diante de relatório que aponta ambiente tenso nas relações, distribuição de atividades e infraestrutura precárias, influência do contexto político/econômico/social e lógica de produtividade com metas acima do planejado, o responsável decide, corretamente, priorizar os seguintes aspectos da dinâmica psicossocial:',
'',
'',
'["relações de trabalho; divisão do trabalho; tipo de contrato; rotação de postos;","trabalho prescrito e trabalho real; tipo de contrato; responsabilidades; rotação de postos;","relações de trabalho; divisão do trabalho; conteúdo da tarefa; responsabilidades;","trabalho prescrito e trabalho real; tipo de contrato; modalidades de comando; divisão do trabalho;","divisão do trabalho; sistema hierárquico e modalidades de comando; relações de trabalho; tipo de contrato."]'::jsonb,
'C',
'Os problemas descritos (tensão relacional, distribuição de atividades e infraestrutura precárias, pressão por metas acima do planejado) remetem às dimensões da organização do trabalho: relações de trabalho, divisão do trabalho, conteúdo da tarefa e responsabilidades — foco da psicodinâmica do trabalho na prevenção do adoecimento.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Saúde e Segurança do Trabalho',
'Em uma instituição pública, um questionário a 35 funcionários que atendem o público e usam computador destacou como fatores de risco a demanda mental, a exigência emocional e a pressão de tempo (metas de atendimento), com menor relevância da demanda física; a carga mental era maior nos de vínculo mais antigo, sem diferença por sexo, e cresceram absenteísmo e licenças. Entendendo que a gestão da carga mental envolve diversas ações, mas o cenário requer medidas urgentes, o responsável decide, corretamente:',
'',
'',
'["reduzir de imediato a carga horária de trabalho de todos os funcionários, dar uma bonificação e contratar uma entidade externa para elaborar um diagnóstico neutro e corroborar os resultados;","reduzir de imediato a carga horária de trabalho dos funcionários mais antigos e instituir uma bonificação para deixá-los satisfeitos;","reduzir de imediato a carga horária de trabalho de todos os funcionários e contratar uma entidade externa para elaborar um diagnóstico neutro e corroborar os resultados;","reduzir de imediato a carga horária de trabalho dos funcionários com vínculo mais recente e desenhar um programa participativo de promoção de saúde mental e prevenção de desgaste emocional;","reduzir a carga de trabalho de todos os funcionários e desenhar um programa participativo de promoção de saúde mental e prevenção de desgaste emocional."]'::jsonb,
'E',
'Diante do nexo entre a carga mental elevada e o adoecimento (aumento de absenteísmo e licenças), a medida urgente e tecnicamente adequada é reduzir a carga de trabalho de todos os funcionários e, de forma estrutural, desenhar um programa participativo de promoção da saúde mental e prevenção do desgaste emocional. A redução deve alcançar todos (o problema é coletivo), não só os mais recentes.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Saúde e Segurança do Trabalho',
'Durante a movimentação de um arquivo pesado, um trabalhador lesionou a coluna e foi afastado por dois dias. O gestor alegou que o afastamento foi curto e, por isso, não emitiu a CAT. Considerando esse contexto, o correto seria a empresa:',
'',
'',
'["emitir a CAT apenas se o afastamento ultrapassar 15 dias;","comunicar o acidente ao sindicato e aguardar orientação;","emitir a CAT até o primeiro dia útil após a ocorrência do acidente;","registrar internamente o fato e arquivar o prontuário do atendimento;","encaminhar o trabalhador ao INSS somente se houver agravamento do quadro."]'::jsonb,
'C',
'A empresa deve comunicar o acidente de trabalho à Previdência até o primeiro dia útil seguinte ao da ocorrência (e, em caso de morte, de imediato), independentemente de haver ou não afastamento superior a determinado prazo. A emissão da CAT não depende da duração do afastamento.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Saúde e Segurança do Trabalho',
'Em uma empresa de médio porte, uma avaliação das condições ambientais identificou exposições a agentes químicos, mas o empregador não tomou nenhuma providência imediata. Com base nesse cenário, a medida mais adequada, conforme o Programa de Gerenciamento de Riscos (PGR), é:',
'',
'',
'["aguardar a próxima auditoria do Ministério do Trabalho;","comunicar a exposição aos órgãos de vigilância sanitária;","planejar ações de controle e registrar as medidas no inventário de riscos;","solicitar que os empregados usem protetores respiratórios por iniciativa própria;","transferir os trabalhadores expostos para outro setor até o problema ser resolvido."]'::jsonb,
'C',
'Pela NR-01, o PGR exige a identificação dos perigos, a avaliação dos riscos e o seu registro no inventário de riscos, com o consequente plano de ação para implementar medidas de prevenção/controle. Logo, o correto é planejar ações de controle e registrá-las no inventário de riscos.'
from public.exams where slug = 'cnu-2025-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
