-- Seed: CNU 2025 (2a Edicao) - Bloco 7 (Justica e Defesa) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial:
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-D 32-D 33-C 34-D 35-E 36-C 37-D 38-B 39-E 40-D
-- 41-A 42-E 43-D 44-D 45-E 46-D 47-D 48-E 49-D 50-A
-- 51-A 52-C 53-D 54-E 55-B 56-A 57-E 58-A 59-B 60-C
-- 61-D 62-B 63-C 64-B 65-D 66-C 67-E 68-A 69-D 70-A
-- 71-E 72-A 73-C 74-B 75-A 76-B 77-B 78-E 79-A 80-C
-- 81-D 82-E 83-C 84-A 85-A 86-B 87-E 88-B 89-C 90-D
-- Observacao: nenhuma questao desta prova possui figura/grafico/imagem de apoio (support_image vazio).

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco7-tarde', 'CNU 2025 (2ª Edição) - Bloco 7 (Tarde) - Justiça e Defesa', 'cnu', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- CONHECIMENTOS GERAIS (Questoes 1 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Conhecimentos Gerais',
'Em determinado Ministério, foi criado um grupo de trabalho com o objetivo de formar a agenda de uma política pública que seria caracterizada pela oferta de alguns auxílios de ordem material oferecidos pelo poder público. Essa política pública privilegiaria certos grupos historicamente excluídos, o que ocorreria em detrimento de outros grupos historicamente beneficiados. No entanto, havia dúvidas quanto à correção da referida agenda, o que poderia acarretar a judicialização da política pública. Antes de confirmar a agenda e individualizar os contornos das medidas passíveis de serem adotadas, o grupo concluiu corretamente que:',
'',
'',
'["a democracia, baseada na soberania do povo, impede que certos grupos sejam beneficiados e outros não, indicativo da incorreção da referida agenda;","um dos princípios fundamentais do Estado de Direito é o da igualdade, salientando que os seres humanos devem ser contemplados de modo idêntico pelas políticas públicas, indicativo da incorreção da referida agenda;","a autonomia política da União permite que ela defina livremente os beneficiários de suas políticas públicas, independentemente do grupo a que pertençam, indicativo da possibilidade de a referida agenda ser adotada;","apesar de as políticas públicas não poderem contemplar arbitrariamente certos grupos em detrimento de outros, é possível privilegiar grupos historicamente excluídos, em prejuízo daqueles historicamente beneficiados;","como a representação política de agentes eleitos não é segmentada em grupos específicos, estando alicerçada na integralidade da população, está errada a segmentação da política pública, indicativo da incorreção da referida agenda."]'::jsonb,
'D',
'A igualdade material admite tratamento diferenciado para grupos historicamente excluídos (ações afirmativas), desde que não seja arbitrário. Logo, é possível privilegiar tais grupos em prejuízo dos historicamente beneficiados, sem que isso viole a igualdade ou a democracia.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições sistemáticas a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica e têm impactos diretos no ambiente sociopolítico. Além disso, ainda que não seja possível o restabelecimento da situação anterior, são definidas estimativas pecuniárias quando identificada a afronta a bens que não possuem propriamente um preço, mas um valor. Considerando os balizamentos estabelecidos para essa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, no contexto da justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830), no contexto da diferenciação entre a liberdade dos modernos e a liberdade dos antigos, contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto de parte da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz da correlação do texto de Constant com o alicerce de sustentação da atuação estatal, na perspectiva da democracia e dos direitos individuais, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta), não havendo espaço próprio para a democracia representativa como instrumento adequado; a representação é característica da liberdade dos modernos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em determinada legislatura, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar os referenciais de governabilidade e controle, de modo que o crescimento do primeiro não importe na correlata redução do segundo. Para tanto, seria necessária uma atuação combativa do bloco de oposição, independentemente dos referenciais ideológicos que o impulsionam. Na perspectiva das relações entre os Poderes Executivo e Legislativo, consoante o discurso de João, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e de oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, a tendência para o liberalismo é oposta à do totalitarismo, e não se deve confundir o conceito de liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com o conceito democrático de liberdade (status activus, participação na formação da vontade comum); a maioria democrática pode exercer uma tirania pouco liberal. Ao se contextualizarem as observações de Zippelius no processo de formação histórica do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder. As demais tratam a efetividade como garantida, contrariando o texto.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências para fundamentar a tomada de decisão. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas, como concebido classicamente, pode ser mais bem compreendido se considerarmos que as várias etapas se sobrepõem e não se colocam de forma linear na prática. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente. As demais confundem conceitos ou atribuem exclusividade indevida.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Quando se leva em conta a necessidade de formulação e implementação de políticas públicas voltadas para os grupos sociais em situação de vulnerabilidade, aos quais muitas vezes é negada a própria condição de sujeito de direito, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos. As demais alternativas negam ou minimizam indevidamente essa diretriz.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A transformação digital vem se acelerando, sendo relevante a Lei nº 14.129/2021, que estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento e considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade/troca de informações entre entes governamentais. A transformação é gradual (não imediata), preza pela transparência (não pelo sigilo irrestrito) e busca eficiência (não impactos negativos).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua, criada pelo Decreto nº 7.053/2009, contém, entre outras inovações, a criação de um Comitê Intersetorial de Acompanhamento e Monitoramento. Para dar consecução a essa política, o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual encontrado, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente as políticas, congrega vários ministérios e conta com participação da sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'João, servidor efetivo, foi lotado em setor responsável por respostas aos requerimentos de acesso à informação. Foram-lhe passadas três diretrizes: I. as informações pessoais devem ser obtidas junto aos respectivos titulares, não podendo ser requeridas ao poder público; II. a classificação da informação como secreta é realizada conforme o juízo de valor da autoridade administrativa, observadas as diretrizes legais; III. o sigilo da informação, como regra geral, deve ser assegurado, salvo se o seu fornecimento for necessário para a defesa de interesse individual ou coletivo. Após analisar a compatibilidade dessas diretrizes com as normas afetas à temática, João concluiu corretamente que:',
'',
'',
'["todas as diretrizes estão corretas;","apenas a diretriz I está correta;","apenas a diretriz II está correta;","apenas as diretrizes I e III estão corretas;","apenas as diretrizes II e III estão corretas."]'::jsonb,
'C',
'Pela LAI (Lei 12.527/2011), a regra geral é a publicidade e não o sigilo (afasta III), e as informações podem ser requeridas ao poder público (afasta I). A classificação como secreta observa juízo da autoridade competente dentro das diretrizes legais, tornando correta apenas a diretriz II.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público federal, entendia fazer jus a um direito previsto no regime jurídico da categoria e formulou requerimento à autoridade competente. O requerimento foi indeferido sob o argumento de que não tinha amparo legal. Em uma situação dessa natureza, é correto afirmar que:',
'',
'',
'["somente resta a Pedro submeter o seu pedido ao Poder Judiciário;","somente resta a Pedro interpor recurso a ser apreciado pela autoridade hierarquicamente superior;","Pedro pode ingressar com um único pedido de reconsideração e apresentar recursos das decisões proferidas nos recursos sucessivamente interpostos;","diversamente do pedido de reconsideração, cabível em qualquer hipótese, a interposição de recurso pressupõe a demonstração de ilegalidade ou de abuso de poder;","Pedro pode apresentar tantos pedidos de reconsideração quantos entender necessários, desde que cada um deles seja direcionado especificamente à decisão a ser modificada."]'::jsonb,
'C',
'Na Lei 9.784/1999, admite-se um único pedido de reconsideração à mesma autoridade e, em seguida, recursos sucessivos à autoridade superior, dos quais também cabe recurso. Não há necessidade de esgotar a via judicial nem de demonstrar ilegalidade para recorrer.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'Determinado gestor do alto escalão da administração pública federal direta consultou sua assessoria sobre a possibilidade de inserir, no Portal da Transparência, três ordens de informações afetas aos servidores públicos, individualizados e independentemente de prévio consentimento: I. remuneração; II. aplicação da sanção de demissão ou de cassação de aposentadoria; III. filiação a um sindicato. Considerando a natureza das informações, a assessoria respondeu corretamente que:',
'',
'',
'["todas devem ser inseridas;","apenas deve ser inserida a informação referida em I;","apenas devem ser inseridas as informações referidas em I e II;","apenas devem ser inseridas as informações referidas em I e III;","apenas devem ser inseridas as informações referidas em II e III."]'::jsonb,
'C',
'Remuneração e sanções disciplinares (demissão/cassação de aposentadoria) são informações de interesse público, divulgáveis. A filiação sindical é dado pessoal sensível (protegido pela LGPD e pela CF), não podendo ser divulgada sem consentimento. Logo, apenas I e II.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No estudo da ética para a Administração Pública, pensa-se a integridade não apenas como virtude do agente público, mas também do próprio sistema organizacional, com elementos como códigos de conduta, formação em ética, comissões de ética independentes e prevenção/regulação de conflitos de interesses. Com relação à experiência brasileira, é correto afirmar que:',
'',
'',
'["o aprimoramento do sistema de prevenção e regulação do conflito de interesses é importante, o que pode envolver novas restrições ao exercício de empregos adicionais ao principal emprego público, a apresentação de declarações de renda e patrimônio do agente público e de seus familiares e o aperfeiçoamento da quarentena;","as comissões de ética são obrigatórias na estrutura da Administração Federal, tendo um decreto estabelecido a sua criação, com atribuições atinentes à aplicação do Código de Ética, como parte do programa de integridade; no entanto, não há controle do cumprimento de tal exigência;","existe, em nível federal, um Código de Ética aplicável a todos os servidores públicos, não sendo possível o estabelecimento de códigos de ética setoriais que levem em conta as peculiaridades de cada instituição;","os programas de mentoria e de desenvolvimento profissional são muito relevantes, mas não têm qualquer relação com as políticas de integridade no serviço público;","a formação em ética compreende a adoção de vários métodos de ensino, devendo ser prevista exclusivamente para os novos servidores empossados."]'::jsonb,
'A',
'O aprimoramento da prevenção de conflitos de interesses pode envolver restrições a empregos adicionais, declarações de renda e patrimônio (inclusive de familiares) e o aperfeiçoamento da quarentena. As demais contêm erros: há controle das comissões, cabem códigos setoriais, mentoria integra a integridade e a formação em ética não se limita a novos servidores.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017, que dispõe sobre a política de governança da administração pública federal, foi inspirado na literatura internacional sobre governança e contém princípios que funcionam como valores interdependentes, esmiuçados no Referencial Básico de Governança Pública do TCU. Com relação a esses princípios, é correto afirmar que:',
'',
'',
'["o princípio da transparência significa disponibilizar na forma de dados abertos, para os interessados, as informações de seu interesse, enquanto o princípio da equidade supõe promover tratamento justo aos agentes públicos, para que eles não possam ser responsabilizados;","a accountability é um princípio que exige que os agentes públicos prestem contas quando forem cobrados, enquanto a confiabilidade guarda relação com a coerência na atuação das instituições públicas, o que gera insegurança para os cidadãos;","o cultivo da integridade moral, que deve ser uma virtude do agente público, deve se sustentar em programas de integridade bastante rígidos e insensíveis aos contextos de atuação, conforme orientação da OCDE;","o princípio da capacidade de resposta está vinculado à busca da eficiência, não guardando qualquer relação com o princípio da participação;","a participação efetiva das partes interessadas é um dos princípios do governo aberto e facilita a equidade no processo de tomada de decisão."]'::jsonb,
'E',
'A participação efetiva das partes interessadas é princípio do governo aberto e favorece a equidade na tomada de decisão. As demais distorcem os princípios: equidade não é evitar responsabilização, accountability é dever contínuo, integridade deve ser sensível ao contexto e capacidade de resposta relaciona-se com participação.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, pessoa que utiliza cadeira de rodas, compareceu diversas vezes a um órgão público cujo acesso era feito exclusivamente por escadas. Após reclamação formal, recebeu como resposta que deveria buscar outra unidade, em outro município. Nos termos da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (Decreto nº 6.949/2009), é correto afirmar que:',
'',
'',
'["a adaptação só seria exigível se Mariana comprovasse prejuízo concreto ao seu atendimento ou violação a direito subjetivo;","não há violação aos direitos de Mariana, pois a administração ofereceu alternativa razoável ao indicar outra unidade acessível, ainda que em outro município;","a obrigação de garantir acessibilidade não se aplica a unidades antigas de atendimento público, desde que sejam anteriores à promulgação da Convenção;","a acessibilidade em estabelecimentos públicos é exigível apenas nos casos em que a pessoa com deficiência tenha previamente comunicado sua necessidade;","o Estado tem o dever de garantir a Mariana adaptações razoáveis, sendo a acessibilidade condição para o exercício de todos os direitos e liberdades fundamentais."]'::jsonb,
'E',
'A Convenção estabelece a acessibilidade como condição para o exercício de todos os direitos e liberdades, impondo ao Estado o dever de prover adaptações razoáveis. Indicar outra unidade em município diverso não afasta a violação nem substitui a obrigação de acessibilidade.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, uma mulher transexual, deseja retificar seu prenome e a designação de sexo em sua certidão de nascimento. À luz da legislação vigente e dos direitos reconhecidos às pessoas trans, é correto afirmar que:',
'',
'',
'["a mudança de prenome e da identificação de sexo é admitida, desde que haja realização prévia de cirurgia de redesignação sexual;","o pedido de Cláudia deverá ser negado, visto que o nome e o sexo integram documento essencial à identificação civil, sem prejuízo do uso do nome social;","o procedimento solicitado por Cláudia exige decisão judicial, pois o registro civil de nascimento só pode ser alterado mediante autorização do Poder Judiciário;","Cláudia tem direito à retificação diretamente em cartório, sem necessidade de autorização judicial, cirurgia ou apresentação de laudos médicos ou psicológicos;","Cláudia deverá apresentar laudos médicos e psicológicos que atestem disforia de gênero, para que o cartório possa encaminhar seu pedido à Vara de Registros Públicos."]'::jsonb,
'D',
'O STF (ADI 4275) e o Provimento do CNJ asseguram às pessoas trans a retificação de prenome e sexo diretamente no cartório (via administrativa), independentemente de cirurgia, laudos ou autorização judicial.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Uma comunidade quilombola, localizada em território rural, busca compreender os direitos assegurados por políticas públicas federais. Considerando o reconhecimento constitucional dos povos quilombolas e políticas como o Programa Aquilomba Brasil, é correto afirmar que a comunidade quilombola:',
'',
'',
'["deve comprovar vínculo formal com entidade cultural reconhecida pelo Ministério da Cultura para acessar políticas públicas voltadas à preservação de suas manifestações culturais;","enfrentará impedimentos para exercer seus direitos educacionais enquanto não houver regularização fundiária do território, condição necessária para a implementação da educação quilombola;","terá acesso a políticas públicas educacionais universais voltadas à assimilação das comunidades quilombolas ao restante da população;","poderá acessar políticas públicas de saúde por intermédio dos entes subnacionais, em razão da ausência de diretrizes federais voltadas à população quilombola no âmbito do Sistema Único de Saúde;","deve ter seus direitos territoriais reconhecidos por meio de titulação das terras tradicionalmente ocupadas, assegurada a partir do processo de certificação pela Fundação Cultural Palmares e posterior atuação do Incra."]'::jsonb,
'E',
'O art. 68 do ADCT assegura a titulação das terras tradicionalmente ocupadas pelos remanescentes de quilombos; o procedimento envolve a certificação pela Fundação Cultural Palmares e a atuação do Incra na regularização fundiária. As demais alternativas contrariam os direitos reconhecidos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana é uma mulher negra que trabalha como empregada doméstica desde os 14 anos. Apesar de ter se alfabetizado ainda criança, não teve acesso à educação formal contínua, por ser a principal provedora de renda em sua família. A trajetória de Joana reflete o fenômeno da:',
'',
'',
'["discriminação de gênero, caracterizada por desigualdades baseadas no fato de a pessoa ser mulher;","discriminação racial, relacionada ao preconceito e à exclusão baseados na raça ou identidade étnico-racial;","discriminação etária, identificada quando pessoas são prejudicadas em razão da sua idade, especialmente no acesso a direitos e oportunidades;","discriminação de classe, que se refere às desigualdades econômicas e sociais decorrentes da posição que o indivíduo ocupa na estrutura produtiva;","discriminação múltipla ou agravada, que ocorre quando diferentes fatores, como raça, gênero e classe, interagem concomitantemente na produção de desigualdades."]'::jsonb,
'E',
'A trajetória de Joana combina raça (mulher negra), gênero (mulher) e classe (baixa renda, trabalho doméstico desde cedo), caracterizando a discriminação múltipla ou agravada (interseccional), em que vários fatores atuam concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela e Flávia vivem em união estável. Flávia, mulher trans, relata episódios em que Gabriela a empurra e arremessa objetos, zomba de sua aparência, ameaça expulsá-la de casa e controla seu acesso ao cartão bancário, exigindo justificativas de gastos e fazendo transferências sem consultá-la. Diante desse contexto, é correto afirmar que:',
'',
'',
'["como se trata de uma relação entre duas mulheres, há igualdade entre as partes, sendo inadequado aplicar o conceito de violência à relação;","sendo Gabriela a principal provedora da casa, o controle dos recursos financeiros por ela não configura forma de violência;","o caso envolve práticas de violência física, psicológica e patrimonial reconhecidas pela legislação brasileira como formas de violência doméstica;","o fato de Flávia ser uma pessoa trans impede que sejam caracterizados como violência doméstica os atos praticados por Gabriela;","a situação descrita não caracteriza violência psicológica, pois não há registro de sofrimento mental clinicamente diagnosticado."]'::jsonb,
'C',
'A Lei Maria da Penha aplica-se a mulheres (inclusive trans) e alcança relações entre pessoas do mesmo sexo. Empurrões e arremesso de objetos configuram violência física; humilhações e ameaças, violência psicológica; e o controle do dinheiro, violência patrimonial.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Joana, servidora pública federal, recebeu a incumbência de adotar medidas no âmbito de um dos sistemas que integram o rol de sistemas estruturantes de gestão de pessoal da administração pública federal. Ao analisar os aspectos estruturais e a funcionalidade desses sistemas, concluiu corretamente que:',
'',
'',
'["podem ser utilizados apenas pelos órgãos do Poder Executivo federal, cabendo aos demais poderes o uso dos seus próprios sistemas;","buscam centralizar em plataformas tecnológicas a execução de atividades de gestão de pessoal gerenciadas pelo órgão central federal;","foram concebidos para que haja um único órgão gestor, sendo de adesão obrigatória para os órgãos da administração pública direta e para os entes da administração pública indireta;","buscam operacionalizar os mecanismos de gestão orçamentária, de modo que haja uma correspondência recíproca entre as despesas de pessoal e as dotações disponíveis;","configuram arranjos institucionais direcionados à atuação conjunta dos órgãos públicos em projetos de interesse comum, maximizando os recursos humanos disponíveis."]'::jsonb,
'B',
'Os sistemas estruturantes de gestão de pessoal centralizam em plataformas tecnológicas (ex.: SIAPE) a execução das atividades de gestão de pessoal, sob coordenação do órgão central do sistema. As demais alternativas restringem ou distorcem sua estrutura e finalidade.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'O setor competente do Ministério Y foi instado a identificar os projetos a serem conduzidos no próximo exercício e a levantar seus custos, para subsidiar a proposta orçamentária anual. Um desses projetos deveria se estender por mais de um exercício financeiro. Após analisar a sistemática vigente, o setor concluiu corretamente que as despesas com o projeto para os exercícios financeiros seguintes:',
'',
'',
'["podem ser previstas na lei orçamentária anual;","somente podem ser previstas no plano plurianual;","somente devem ser objeto da lei de diretrizes orçamentárias que abranja o respectivo período;","devem ser objeto de créditos adicionais tão logo finde o primeiro exercício financeiro de sua execução;","devem ser previstas no plano plurianual e contempladas na lei orçamentária anual de cada exercício financeiro, sendo vedado que lei desta natureza abranja mais de um exercício."]'::jsonb,
'A',
'A LOA abrange um único exercício, mas pode prever despesas de projetos plurianuais relativas àquele exercício; a CF (art. 167, §1º) só veda o início de investimento que ultrapasse um exercício sem previsão no PPA. A alternativa A está correta ao afirmar que essas despesas podem ser previstas na LOA (de cada exercício).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Determinado gestor dedicou-se à implementação de política pública voltada à população em situação de vulnerabilidade socioeconômica e promoveu campanha publicitária de caráter informativo, sem promoção pessoal. Diversos setores criticaram, pois, considerando eleições no ano subsequente, a campanha traria benefícios indiretos ao gestor, que já se apresentava como pré-candidato. Na situação descrita, é correto afirmar que a campanha publicitária:',
'',
'',
'["não poderia ser realizada, por afrontar a moralidade administrativa;","não poderia ser realizada, por configurar publicidade de política pública;","poderia ser realizada, considerando o objetivo almejado com a sua realização;","não poderia ser realizada, por afrontar o princípio da impessoalidade;","poderia ser realizada, considerando a plena liberdade do gestor na definição dos objetivos a serem alcançados com a publicidade institucional."]'::jsonb,
'C',
'A publicidade teve caráter informativo, sem promoção pessoal, atendendo ao art. 37, §1º, da CF (educativa, informativa ou de orientação social). Como visava permitir a fruição dos benefícios pelos destinatários, poderia ser realizada em razão do objetivo legítimo almejado.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A reforma administrativa promovida pela Emenda Constitucional nº 19/1998 alterou a sistemática das funções de confiança e dos cargos em comissão. Considerando o novo modelo estabelecido por essa reforma, é correto afirmar que:',
'',
'',
'["as funções de confiança e os cargos em comissão são destinados apenas a atribuições de direção;","os cargos em comissão são privativos de servidores ocupantes de cargos de provimento efetivo;","o percentual mínimo de cargos em comissão a ser ocupado por servidores de carreira deve ser previsto em lei;","o acesso às funções de confiança foi democratizado, sendo permitido o seu exercício por qualquer pessoa, servidora ou não;","os cargos em comissão devem ser ocupados preferencialmente por servidores ocupantes de carreira técnica ou profissional."]'::jsonb,
'C',
'Após a EC 19/1998, as funções de confiança são exclusivas de servidores efetivos, e os cargos em comissão têm percentuais mínimos reservados a servidores de carreira, conforme definido em lei (art. 37, V, da CF). As demais alternativas contrariam esse regime.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'Em um evento, debateu-se o potencial expansivo do termo sustentabilidade na perspectiva da dívida pública, verificando a compatibilidade entre os conceitos na perspectiva constitucional e os impactos que o crescimento da dívida gera na implementação de políticas públicas. Ao final do debate, concluiu-se corretamente que:',
'',
'',
'["a concepção de sustentabilidade é direcionada à preservação do meio ambiente, não às finanças públicas;","a sustentabilidade contribuirá para aferir a trajetória de convergência do montante da dívida com os limites definidos na legislação;","a ausência de previsão constitucional da sustentabilidade não obsta que o conceito seja introduzido pela legislação afeta às finanças públicas;","a concepção de sustentabilidade é incompatível com a discricionariedade do Poder Executivo na governança financeira e na realização de políticas públicas;","a correlação é equivocada entre o crescimento da dívida pública e a implementação de políticas públicas, considerando a possibilidade de serem abertos créditos adicionais."]'::jsonb,
'B',
'A sustentabilidade fiscal serve para aferir a trajetória de convergência do montante da dívida aos limites legais, orientando a governança financeira. As demais alternativas negam a aplicação do conceito às finanças públicas ou desconsideram sua previsão constitucional.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'Ana, diretora de Gestão de Recursos Humanos, trabalha em um prédio cujo restaurante entrará em obras. Como os restaurantes da região são de difícil acesso, pensou em solicitar que os agentes públicos trabalhem em teletrabalho durante o período da obra. Em relação à modalidade de teletrabalho, é correto afirmar que:',
'',
'',
'["a estrutura necessária, física e tecnológica, deve ser providenciada e custeada pelo órgão público;","o regime de execução deve ser integral com controle de tempo on-line da equipe para que ela tenha foco no trabalho;","o teletrabalho fica condicionado à compatibilidade com as atividades a serem desenvolvidas pelo agente público e à ausência de prejuízo para a administração;","a formalização do acordo unilateral deve ser registrada em um termo de ciência e responsabilidade, e deverá ser usado um aplicativo de mensagens instantâneas (WhatsApp) como ferramenta de comunicação e organização das tarefas;","a avaliação de desempenho do agente público fica suspensa no período do teletrabalho, mesmo que sejam utilizadas as opções de status (on-line, ocupado, offline etc.) da ferramenta de comunicação da equipe."]'::jsonb,
'C',
'O teletrabalho no serviço público é condicionado à compatibilidade das atividades com a modalidade e à ausência de prejuízo à administração, sendo baseado em metas/resultados. Não há custeio obrigatório de estrutura pelo órgão, nem controle de jornada on-line, nem suspensão da avaliação de desempenho.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio e a maioria de seus colegas gastam mais de uma hora para chegar ao trabalho. O chefe busca melhorar o desempenho oferecendo modalidades de trabalho. Antônio optou por uma modalidade que alterna entre o trabalho dentro e fora das instalações da organização, combinando a flexibilidade do trabalho à distância com a interação e a colaboração do ambiente físico. Antônio deve optar pela modalidade de trabalho:',
'',
'',
'["híbrido;","remoto;","síncrono;","assíncrono;","home office."]'::jsonb,
'A',
'O trabalho híbrido alterna entre o presencial (dentro das instalações) e o remoto (fora), combinando a flexibilidade da distância com a interação do ambiente físico — exatamente a descrição do enunciado.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'João elaborou um texto informal e utilizou uma solução de Inteligência Artificial (IA) para revisá-lo, obtendo uma versão bem estruturada e rica em vocabulário. Para a IA realizar a revisão com esse objetivo, a partir de comandos claros e específicos, João utilizou um:',
'',
'',
'["prompt;","big data;","helpdesk;","script low-code;","corretor ortográfico e gramatical."]'::jsonb,
'A',
'O comando claro e específico dado a uma IA generativa para obter determinado resultado é o prompt. Big data, helpdesk, script low-code e corretor ortográfico não descrevem a instrução dada à IA para reescrever o texto.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José, diariamente, acessa o site do Detran, baixa extratos e os inclui no sistema de procuradorias. Para otimizar o trabalho, o Departamento de TI implementou uma solução que automatiza as tarefas repetitivas do processo; para iniciá-lo, José dá um clique em um botão para que as tarefas programadas sejam executadas. A solução implementada é do tipo:',
'',
'',
'["orquestrador;","robô assistido;","robô não assistido;","modelo de imagem;","aprendizado de máquina."]'::jsonb,
'B',
'No RPA, o robô assistido (attended) é acionado pelo próprio usuário (um clique) e executa as tarefas repetitivas em conjunto com a ação humana. O robô não assistido roda de forma autônoma, sem intervenção; orquestrador coordena vários robôs.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro utiliza uma Inteligência Artificial (IA) para apoiar as decisões que toma no atendimento ao público em um órgão da Administração Pública federal, mas se preocupa com os riscos dessa prática. Para minimizar os riscos relativos ao uso da IA para apoiar as suas decisões, Pedro deve:',
'',
'',
'["usar modelos de imagem seguros;","automatizar o processo decisório;","assumir a responsabilidade pela decisão;","optar por aprendizado profundo sempre que possível;","utilizar ferramentas de controle de acesso confiáveis."]'::jsonb,
'C',
'A IA é ferramenta de apoio: para mitigar riscos, o agente humano deve manter-se responsável pela decisão (supervisão humana), não delegando integralmente o juízo à máquina. Automatizar totalmente o processo aumentaria o risco.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS ESPECIFICOS - Eixo 1: Gestao Governamental e Metodos Aplicados (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Eixo 1',
'Durante a reformulação do sistema de governança de uma autarquia federal, determinou-se a revisão total do planejamento estratégico, com equipe multidisciplinar designada para assegurar o vínculo entre os níveis de planejamento (estratégico, tático e operacional) e os elementos identitários da organização (missão, visão e valores). Nesse contexto, a articulação entre os elementos de identidade institucional e os níveis de planejamento:',
'',
'',
'["deve assegurar que os valores organizacionais sejam expressos prioritariamente nos planos operacionais;","implica que os objetivos estratégicos sejam estabelecidos com base nas capacidades técnicas disponíveis no nível tático;","exige que a visão de futuro seja desdobrada exclusivamente em metas quantitativas de curto prazo;","pressupõe a definição da missão e dos valores como fundamentos orientadores do planejamento estratégico, com desdobramentos coerentes nos níveis seguintes;","recomenda que as ações operacionais antecedam a definição dos objetivos estratégicos, para garantir realismo na formulação do plano institucional."]'::jsonb,
'D',
'Missão, visão e valores são fundamentos que orientam o planejamento estratégico e se desdobram, de forma coerente, nos níveis tático e operacional. O fluxo é do estratégico para o operacional, não o inverso, e os valores permeiam todos os níveis, não apenas o operacional.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Eixo 1',
'A Fundação Cidadania Sustentável utilizou a matriz SWOT para apoiar o diagnóstico organizacional. Em uma análise SWOT estratégica bem estruturada, o ambiente interno contempla fatores como os recursos humanos e tecnológicos disponíveis, enquanto o ambiente externo deve considerar elementos como:',
'',
'',
'["a cultura organizacional e a capacidade de inovação dos times operacionais;","as práticas de gestão da equipe e o modelo de governança interna vigente;","as competências técnicas e a eficiência dos processos internos da organização;","as políticas públicas, as tendências socioeconômicas e as exigências legais em vigor;","as tecnologias transferidas aos colaboradores que participam de eventos externos em outros estados."]'::jsonb,
'D',
'O ambiente externo da SWOT (oportunidades e ameaças) compreende fatores fora do controle da organização, como políticas públicas, tendências socioeconômicas e exigências legais. Cultura, práticas de gestão, competências e processos internos são do ambiente interno.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Eixo 1',
'Um instituto público de pesquisa buscou aprimorar sua avaliação de resultados por meio da adoção de indicadores de desempenho organizacional, capazes de mensurar tanto a entrega de produtos e serviços quanto os efeitos gerados para a sociedade. Nesse contexto, um bom indicador de desempenho organizacional deve ser construído de forma a:',
'',
'',
'["contemplar descrições qualitativas, com foco em narrativas dos especialistas sobre o desempenho institucional;","enfatizar a avaliação de recursos utilizados, considerando que a eficiência operacional independe da alocação orçamentária;","refletir as prioridades estratégicas da organização e possibilitar o monitoramento de metas com base em dados claros e verificáveis;","basear-se em percepções dos atores externos sempre que não houver definição de critérios de análise ou periodicidade definida de coleta;","destacar os procedimentos administrativos adotados nos processos internos, quando não estiverem diretamente associados aos resultados obtidos."]'::jsonb,
'C',
'Um bom indicador deve refletir as prioridades estratégicas e permitir o monitoramento de metas com base em dados claros, mensuráveis e verificáveis (atributos como validade, confiabilidade e simplicidade). As demais opções dissociam o indicador da estratégia e dos dados objetivos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Eixo 1',
'Um órgão público federal decidiu adotar práticas formais de gestão de projetos, estudando os conceitos fundamentais, os modelos de estruturação e as metodologias de avaliação, com foco na entrega de valor público e na racionalização de recursos. Segundo os princípios da gestão moderna de projetos, um projeto:',
'',
'',
'["possui estrutura cíclica e duração indefinida;","é executado sem necessidade de metas mensuráveis;","visa a atender a demandas recorrentes e rotineiras da organização;","é caracterizado por ser temporário, orientado por objetivos claros e estruturado em fases distintas;","deve contar com a aplicação de modernas metodologias ágeis, independentemente do seu contexto organizacional."]'::jsonb,
'D',
'Um projeto é um esforço temporário, com início e fim definidos, orientado por objetivos claros e estruturado em fases, empreendido para criar um produto/serviço/resultado único. Demandas rotineiras e duração indefinida caracterizam operações continuadas, não projetos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Eixo 1',
'Na implementação de um novo programa de transformação digital em um órgão federal, a equipe de controles internos recomendou a adoção formal de práticas de gestão de riscos como parte integrante do gerenciamento do projeto. Nesse contexto, é correto afirmar que a gestão de riscos consiste em um processo:',
'',
'',
'["padronizado, voltado à rápida correção de falhas após sua ocorrência;","centrado exclusivamente na análise de riscos financeiros e orçamentários;","independente e isolado por segurança da informação das demais práticas de planejamento organizacional;","proativo, dependente da experiência individual dos gestores, sendo aplicado somente em situações excepcionais;","estruturado, sistemático e contínuo, que visa a identificar, avaliar, tratar e monitorar eventos que possam impactar os objetivos organizacionais."]'::jsonb,
'E',
'A gestão de riscos é um processo estruturado, sistemático e contínuo de identificar, avaliar, tratar e monitorar eventos que possam afetar os objetivos organizacionais. Não é reativo, nem restrito a riscos financeiros, nem isolado das demais práticas de planejamento.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Eixo 1',
'Durante a implantação de uma política de requalificação urbana em comunidades vulneráveis, o governo estadual enfrentou resistência de moradores e lideranças que alegavam falta de diálogo e ameaças a seus meios de subsistência. A equipe técnica foi orientada a adotar práticas de gestão de crises, incluindo negociação e mediação. Nesse contexto, uma estratégia eficaz de negociação e resolução de conflitos:',
'',
'',
'["deve focar na apresentação clara da proposta institucional, reforçando os aspectos técnicos da política pública;","pode incluir concessões táticas, que comprometam a autoridade da instituição diante das demais partes envolvidas;","exige escuta ativa e reconhecimento mútuo das partes, mesmo que os interesses em jogo não sejam imediatamente conciliáveis;","tende a produzir resultados mais eficazes quando conduzida com neutralidade técnica, minimizando interferências emocionais;","deve priorizar a rapidez na resolução, evitando processos longos de escuta e pactuação que possam comprometer prazos políticos."]'::jsonb,
'C',
'A negociação eficaz baseada em interesses exige escuta ativa e reconhecimento mútuo das partes, ainda que os interesses não sejam imediatamente conciliáveis. Focar apenas na proposta técnica, ignorar emoções ou priorizar rapidez sobre a pactuação compromete o processo.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Eixo 1',
'A motivação no ambiente de trabalho pode ser compreendida como um conjunto de forças que impulsionam os indivíduos a escolher determinados comportamentos. Com base nas teorias motivacionais com foco no processo, a teoria da equidade se baseia no princípio de que:',
'',
'',
'["os indivíduos avaliam o esforço a partir dos resultados que esperam alcançar coletivamente;","a motivação é determinada pelos fatores externos que recompensam o bom desempenho;","a motivação está relacionada ao desejo inconsciente de atender a necessidades fisiológicas básicas;","os indivíduos comparam suas contribuições e recompensas com as de outras pessoas para avaliar se estão sendo tratados de forma justa;","a satisfação tende a estar garantida quando os objetivos propostos são alcançados, a despeito da percepção de justiça no ambiente de trabalho."]'::jsonb,
'D',
'A teoria da equidade (Adams) sustenta que as pessoas comparam a relação entre suas contribuições e recompensas com a de outros, motivando-se conforme percebam justiça (equidade) ou injustiça nessa comparação.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Eixo 1',
'Uma teoria situacional de liderança conduz o gestor, por meio da análise de fatores situacionais, até um estilo de decisão recomendado. Esse modelo é utilizado quando o objetivo principal não é a velocidade da decisão, mas o fortalecimento da capacidade de participação dos subordinados no processo decisório, contribuindo para seu desenvolvimento ao longo do tempo. O modelo descrito é classificado como:',
'',
'',
'["teoria do caminho-objetivo;","árvore de decisão de Vroom;","perspectiva comportamental;","paradigma LPC sobre a liderança;","abordagem dos traços de liderança."]'::jsonb,
'B',
'O modelo de Vroom (árvore de decisão / normativo de decisão) orienta o líder, com base em fatores situacionais, a escolher o grau de participação dos subordinados na decisão, favorecendo o desenvolvimento deles quando o tempo não é o fator crítico.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Eixo 1',
'Historicamente, o Brasil recebeu diferentes fluxos migratórios que contribuíram para sua constituição étnico-racial. Apesar do princípio de igualdade previsto na Constituição, persistem formas de discriminação associadas à precarização do trabalho. No que diz respeito à relação entre precarização, discriminação e inserção social no contexto dos trabalhadores migrantes, é correto afirmar que:',
'',
'',
'["a proteção legal tem sido profícua na garantia da igualdade entre trabalhadores nacionais e migrantes;","quanto mais precário é o vínculo de trabalho, menor é o impacto do ambiente profissional na inserção social dos migrantes;","a precariedade do trabalho tende a atenuar a percepção de discriminação, pois os migrantes focam na manutenção de sua renda básica;","a discriminação no trabalho atua como mediadora, neutralizando os efeitos negativos da precarização sobre a dignidade dos trabalhadores migrantes;","a exposição à precarização e à discriminação no ambiente de trabalho intensifica a percepção de desigualdade racial e étnica, dificultando a inserção social dos migrantes."]'::jsonb,
'E',
'A exposição combinada à precarização e à discriminação no trabalho intensifica a percepção de desigualdade racial e étnica e dificulta a inserção social dos migrantes. As demais alternativas minimizam ou invertem indevidamente esses efeitos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Eixo 1',
'Dois estudos foram conduzidos por analistas do MGI. O primeiro levantou hipóteses iniciais sobre fatores que dificultam a adesão de municípios a uma plataforma digital, com base em entrevistas e relatórios preliminares. O segundo teve como foco a identificação dos determinantes estatísticos da não adesão, considerando dados de 1.800 municípios e variáveis como cobertura de internet, capacitação digital e porte populacional. Considerando os objetivos e as etapas, os dois tipos de pesquisa foram, respectivamente:',
'',
'',
'["descritiva e exploratória;","descritiva e explicativa;","exploratória e descritiva;","exploratória e explicativa;","explicativa e exploratória."]'::jsonb,
'D',
'O primeiro estudo, que levanta hipóteses iniciais e explora o problema, é exploratório. O segundo, que busca identificar determinantes/causas (relações entre variáveis) da não adesão, é explicativo. Logo, exploratória e explicativa.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Eixo 1',
'No âmbito de ações de transformação digital, uma equipe do MGI realizou entrevistas com servidores e cidadãos sobre barreiras no uso de plataformas digitais. Após análise qualitativa inicial (com softwares apenas para registrar/organizar os códigos), emergiram categorias como "falta de capacitação", "resistência à tecnologia", "experiências positivas" e "percepção de eficiência". Agora, pretendem compreender como as categorias se relacionam entre si, organizando os dados em torno de eixos explicativos. O método mais adequado para a etapa de análise que será iniciada é a codificação:',
'',
'',
'["axial;","aberta;","seletiva;","automatizada;","por incidência."]'::jsonb,
'A',
'Na Teoria Fundamentada (Grounded Theory), após a codificação aberta (geração de categorias), a codificação axial relaciona as categorias entre si em torno de eixos, para depois se chegar à codificação seletiva (categoria central). Como as categorias já emergiram e se busca relacioná-las, a etapa é a axial.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Eixo 1',
'No processo de digitalização de serviços públicos, o MGI registrou os tempos de atendimento (em minutos) de uma amostra de 100 registros: média 12; mediana 10; desvio padrão 6; mínimo 3; máximo 32. Os analistas consideram inserir uma etapa prévia que aumentaria o tempo de cada atendimento em 20%. Considerando os princípios da inferência estatística e da interpretação de medidas de posição e dispersão, se implementada, a mudança no processo de atendimento:',
'',
'',
'["aumentaria a distância entre as medidas de tendência central e os valores extremos;","aumentaria a média, mas reduziria o desvio padrão, alterando o coeficiente de variação;","alteraria a mediana e faria com que ela se igualasse à média, porém manteria a distribuição original;","alteraria a posição da média em relação à mediana, indicando mudança no tipo de assimetria;","manteria as proporções entre os dados e não alteraria o formato da distribuição original."]'::jsonb,
'E',
'Multiplicar todos os valores por um fator constante (1,20) escala igualmente média, mediana, desvio padrão e valores extremos, mantendo as proporções relativas e preservando o formato/assimetria da distribuição (o coeficiente de variação permanece igual).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Eixo 2: Politicas de Seguranca e Defesa - Ambiente Internacional e Tecnologias Emergentes (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Eixo 2',
'Em um cenário internacional marcado por ataques a infraestruturas críticas, ciberespionagem, crimes cibernéticos e ataques a cadeias produtivas, o Brasil estabeleceu a Política Nacional de Cibersegurança (PNCiber), fixando um marco regulatório para proteger ativos digitais e articular ações de prevenção, defesa e resiliência cibernética. Considerando o arcabouço normativo brasileiro, é correto afirmar que a PNCiber caracteriza-se por:',
'',
'',
'["delegar a execução operacional ao Comitê Gestor da Internet no Brasil, focando em regulação de provedores de acesso e neutralidade da rede, em detrimento de padrões técnicos para segurança de infraestruturas;","subordinar-se ao Comando de Defesa Cibernética militar, extinguindo políticas civis prévias e transferindo para as Forças Armadas o controle exclusivo de redes corporativas, dados sensíveis e sistemas financeiros;","ter sua implementação vinculada à aprovação prévia de leis setoriais, como a LGPD e o Marco Civil da Internet, condicionando ações de defesa cibernética à autorização do Poder Legislativo para cada iniciativa operacional;","centralizar a governança no Gabinete de Segurança Institucional (GSI), priorizando a proteção de infraestruturas críticas e estabelecendo mecanismos de coordenação público-privada para prevenção, detecção e resposta a incidentes;","estar limitado, em seu escopo, à regulação de provedores de internet, excluindo deliberadamente os setores de energia, saúde, transporte e abastecimento de água, bem como as iniciativas de cooperação internacional de seu planejamento estratégico."]'::jsonb,
'D',
'A PNCiber centraliza a governança no GSI, prioriza a proteção de infraestruturas críticas e institui mecanismos de coordenação público-privada para prevenção, detecção e resposta a incidentes. As demais alternativas restringem indevidamente o escopo ou transferem competências.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Eixo 2',
'A Política Nacional de Defesa (PND), coordenada pelo Ministério da Defesa, estabelece como área de interesse prioritário o entorno estratégico brasileiro (América do Sul, Atlântico Sul, países da costa ocidental africana e Antártica). Por outro lado, a escola geopolítica brasileira enfatiza a inserção internacional autônoma do Brasil. A alternativa que retrata, de maneira integral e correta, as relações entre o conceito de entorno estratégico da PND e a base fundante da escola geopolítica brasileira é:',
'',
'',
'["a criação de uma moeda comum sul-americana, como o sur ou o peso real, dentro da concepção geopolítica do quaterno, de Mafra, reflete a tentativa de reforçar a lógica da teoria das casas comuns ou zonas monetárias de Brochard;","o pensamento acadêmico de Therezinha de Castro está em plena consonância com o conceito de entorno estratégico no que se refere ao Atlântico Sul, aos países da costa ocidental africana e à Antártica, mas não à integração da América do Sul;","os rumos do pensamento brasileiro no início do século XXI seguiram a tradição da escola geopolítica brasileira (Travassos, Golbery, Therezinha de Castro e Meira Mattos), marcada pela ideia de Brasil potência e adequação às diretrizes do Consenso de Washington;","a ideia de projeção mundial do Brasil, de Meira Mattos, rejeita a teoria da tríade de Brzezinski, inspirada na Comissão Trilateral de 1973, ao sustentar a tese de Brasil potência, baseada na projeção do país sem alinhamentos automáticos aos polos de poder mundial;","a concepção de projeção continental do Brasil, de Travassos, se coaduna com a concepção original de Karl Haushofer, formulada no início do século XX, na qual o mundo deveria ser organizado em grandes blocos regionais, cada um liderado por uma potência hegemônica."]'::jsonb,
'D',
'A projeção mundial de Meira Mattos, ancorada na tese de Brasil potência e na inserção autônoma (sem alinhamentos automáticos aos polos de poder), contrapõe-se à lógica da tríade de Brzezinski/Comissão Trilateral, o que se harmoniza com o entorno estratégico da PND e a autonomia da escola geopolítica brasileira.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Eixo 2',
'No contexto de intensificação das disputas geopolíticas e transição tecnológica, o conceito de tecnologias emergentes ganha centralidade estratégica. Destaca-se uma tecnologia com aplicações essenciais em segurança e defesa (controle de armamentos autônomos, defesa cibernética, análise preditiva de ameaças e vigilância estratégica), associada à capacidade de lidar com grandes volumes de dados em tempo real. Diante disso, a tecnologia emergente de maior impacto geopolítico e militar é a:',
'',
'',
'["genômica;","biotecnologia;","nanotecnologia;","robótica avançada;","inteligência artificial."]'::jsonb,
'E',
'A capacidade de processar grandes volumes de dados em tempo real, otimizar decisões, apoiar armamentos autônomos, defesa cibernética e análise preditiva de ameaças é característica central da inteligência artificial, apontada como a tecnologia emergente de maior impacto geopolítico e militar.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Eixo 2',
'O conceito de grande estratégia ainda não está plenamente consolidado. Nos Estados Unidos, a National Security Strategy (NSS) foi criada após a Lei Goldwater-Nichols (1986), exigindo que o presidente apresente periodicamente ao Congresso um documento de estratégia de segurança nacional. Diante desse contexto, é correto afirmar que:',
'',
'',
'["com o objetivo de conter a expansão comercial da China a partir da Rota da Seda, a estratégia de Barack Obama priorizou a aliança atlântica em detrimento dos seus aliados da região da Ásia e do Pacífico;","com o objetivo de responder aos ataques de 11 de setembro, a estratégia de George W. Bush estabeleceu a chamada Guerra ao Terror, fortalecendo, assim, a própria ordem jurídica internacional e seus organismos multilaterais;","com o objetivo de resgatar a liderança do sistema de governança global liberal, a estratégia de Barack Obama reeditou e fortaleceu a Área de Livre Comércio das Américas (ALCA), o Mercado Transatlântico e a Cooperação Econômica Ásia-Pacífico (APEC);","com o objetivo de consolidar sua hegemonia mundial pós-Guerra Fria, a estratégia de engajamento e expansão de Bill Clinton constituiu um arquétipo estratégico que promoveu a globalização econômica, a expansão democrática e o controle ocidental das cadeias globais;","com o objetivo de consolidar a hegemonia americana na era pós-Guerra Fria, a estratégia de Clinton fortaleceu ainda mais o projeto Guerra nas Estrelas (Strategic Defense Initiative), priorizando a dissuasão nuclear clássica, em detrimento da segurança multidimensional."]'::jsonb,
'D',
'A estratégia de engajamento e expansão (engagement and enlargement) de Bill Clinton, no pós-Guerra Fria, promoveu a globalização econômica, a expansão da democracia liberal e o controle ocidental das cadeias globais, configurando um arquétipo estratégico de consolidação da hegemonia dos EUA.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Eixo 2',
'A Política Nacional de Fronteiras (PNFron), instituída pelo Decreto nº 12.038/2024, é um instrumento de Estado voltado à gestão integrada das regiões fronteiriças. A partir dessa contextualização, é correto afirmar que a PNFron:',
'',
'',
'["substitui as competências constitucionais das Forças Armadas no controle fronteiriço, transferindo suas atribuições estratégicas para entes civis aduaneiros e de segurança pública no âmbito do Comitê Nacional de Fronteiras (CNFron);","transfere a titularidade da fiscalização aduaneira para os municípios fronteiriços, descentralizando o controle alfandegário, em busca da articulação sistêmica entre os entes políticos da federação;","prioriza as dimensões econômica e diplomática, atribuindo especial atenção à integração cultural e econômica das regiões de fronteira, em detrimento da fiscalização aduaneira;","fortalece a sinergia entre instituições civis e militares para ampliar a prevenção de crimes transnacionais, atribuindo ao representante do Gabinete de Segurança Institucional (GSI) a presidência do Comitê Nacional de Fronteiras (CNFron);","desativa estruturas de segurança em fronteiras com baixa densidade demográfica, concentrando recursos em zonas populosas, de modo a garantir a sua cobertura integral, implantando maior número de unidades móveis e postos avançados nessas áreas."]'::jsonb,
'D',
'A PNFron fortalece a sinergia entre instituições civis e militares para prevenir crimes transnacionais e estabelece o Comitê Nacional de Fronteiras (CNFron) presidido por representante do GSI. As demais alternativas atribuem à política medidas que ela não adota (substituir competências, transferir fiscalização ou desativar estruturas).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Eixo 2',
'A PND e a END estabelecem a concepção de fronteira e de entorno estratégico como elementos vitais para a soberania, a integridade territorial e os interesses nacionais. Considerando as diretrizes contidas na PND e na END sobre o conceito de fronteira e de entorno estratégico, é correto afirmar que:',
'',
'',
'["as fronteiras brasileiras são classificadas como áreas secundárias na política de defesa, sendo priorizadas as regiões urbanas e industriais do litoral e do Sudeste, conforme a PND e a END;","o entorno estratégico brasileiro abarca a região amazônica e as áreas fronteiriças terrestres, sem considerar o espaço marítimo do Atlântico Sul e da costa africana para a defesa nacional;","a proteção das fronteiras, de acordo com a END, deve se limitar à prevenção de conflitos armados, não incluindo o enfrentamento de ilícitos transnacionais ou a integração com comunidades fronteiriças;","as fronteiras brasileiras são tratadas como limites geográficos fixos, cuja proteção cabe exclusivamente às Forças Armadas, sem necessidade de articulação com outros órgãos de segurança pública ou cooperação regional;","as fronteiras e o entorno estratégico são espaços prioritários, exigindo coordenação entre órgãos das Forças Armadas, Segurança Pública e Diplomacia, bem como cooperação com os países vizinhos para enfrentamento de ilícitos e defesa de interesses comuns."]'::jsonb,
'E',
'A PND e a END tratam fronteiras e entorno estratégico como espaços prioritários, exigindo coordenação entre Forças Armadas, Segurança Pública e Diplomacia e cooperação com países vizinhos para enfrentar ilícitos e defender interesses comuns. As demais restringem indevidamente o escopo.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Eixo 2',
'Com o fim da Guerra Fria, o declínio da disputa ideológica e a redução da ameaça nuclear, o cenário internacional passou a ser marcado pela globalização e por desafios transnacionais, expondo a necessidade de rever as concepções tradicionais de segurança. Nesse contexto, consolidou-se a concepção de segurança que:',
'',
'',
'["se concentrou na repressão de conflitos internos e no controle da ordem pública, tratando ameaças domésticas como os principais riscos à integridade e à estabilidade dos Estados, configurando-se como segurança interna;","manteve o foco na proteção territorial contra agressões externas, priorizando a dissuasão militar e a defesa soberana como fundamentos centrais da estabilidade global, caracterizando-se como segurança tradicional;","limitou-se à prevenção de conflitos armados entre Estados soberanos, priorizando negociações diplomáticas e acordos bélicos como meios de evitar guerras convencionais, caracterizando-se como segurança interestatal clássica;","passou a incluir ameaças militares e não militares, ampliando o conceito de segurança para incorporar, por exemplo, novas variáveis econômicas, ambientais, sociais, políticas e sanitárias, decorrendo daí a ideia de segurança multidimensional (cidadã, ambiental, energética etc.);","baseou-se na preservação do equilíbrio de poder entre grandes potências, utilizando alianças estratégicas e diplomacia para conter a ascensão de rivais e preservar o status quo, caracterizando-se como segurança de equilíbrio regional e interestatal."]'::jsonb,
'D',
'No pós-Guerra Fria consolidou-se a segurança multidimensional, que amplia o conceito para além do militar, incorporando variáveis econômicas, ambientais, sociais, políticas e sanitárias (segurança cidadã, ambiental, energética etc.).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Eixo 2',
'A crise financeira de 2008 evidenciou a ascensão econômica, militar e tecnológica da China e reconfigurou a ordem geopolítica, com polarização de mecanismos multilaterais. É correto afirmar, em síntese, que os principais organismos e arranjos internacionais liderados ou impulsionados pelos Estados Unidos com o objetivo de conter a influência da China incluem:',
'',
'',
'["QUAD (Quadrilateral Security Dialogue), SWIFT (Society for Worldwide Interbank Financial Telecommunication) e IPEF (Indo-Pacific Economic Framework);","OECD (Organisation for Economic Co-operation and Development), CIPS (Cross-Border Interbank Payment System) e 5E (Five Eyes);","EFTA (European Free Trade Association), APEC (Asia-Pacific Economic Cooperation), NDB (New Development Bank) e SEATO (Southeast Asia Treaty Organization);","ASEAN (Association of Southeast Asian Nations), AIIB (Asian Infrastructure Investment Bank) e AUKUS (Australia, United Kingdom and United States);","CARICOM (Caribbean Community), CIPS (Cross-Border Interbank Payment System) e OECD (Organisation for Economic Co-operation and Development)."]'::jsonb,
'A',
'QUAD, SWIFT e IPEF são arranjos liderados/impulsionados pelos EUA no esforço de conter a China. As demais opções misturam instituições associadas à própria China (CIPS, NDB, AIIB, ASEAN) ou blocos sem esse propósito.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Eixo 2',
'A MINUSTAH (Missão das Nações Unidas para a Estabilização no Haiti), liderada pelo Brasil, combinou esforços militares, policiais e civis, com o objetivo de restaurar a segurança, reduzir a violência, reconstruir instituições, implementar iniciativas humanitárias (escolas, hospitais, infraestrutura), promover eleições e fortalecer a governança local. Com base nas características descritas, a MINUSTAH, no contexto das operações da ONU, pode ser classificada como uma:',
'',
'',
'["operação de manutenção da paz multidimensional;","operação tradicional de manutenção da paz;","operação de prevenção de conflitos;","operação impositiva de paz;","missão política especial."]'::jsonb,
'A',
'A combinação de componentes militares, policiais e civis, com reconstrução institucional, apoio a eleições, tarefas humanitárias e fortalecimento da governança caracteriza uma operação de manutenção da paz multidimensional, distinta das operações tradicionais (apenas monitoramento militar).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Eixo 2',
'Os termos biossegurança, bioproteção, biodefesa, genômica e biotecnologia são conceitos centrais no manejo de agentes biológicos. Nesse cenário, a expressão "biossegurança" se refere:',
'',
'',
'["ao ramo da biologia dedicado ao estudo completo do material genético total de uma célula ou organismo (DNA ou RNA), buscando compreender a organização, função e variações dos genes;","à segurança contra usos maliciosos de agentes biológicos, sistemas ou tecnologias, como o bioterrorismo, incluindo monitoramento de agentes sensíveis e controle de acesso a instalações;","às políticas, práticas e barreiras implementadas para prevenir o acesso acidental a agentes biológicos perigosos e proteger a saúde humana, animal e ambiental, por meio de boas práticas operacionais, EPIs e descarte adequado de resíduos;","ao conjunto de ações, estratégias e instrumentos voltados para a prevenção, detecção e resposta a ameaças biológicas, intencionais (bioterrorismo) ou acidentais (pandemias), incluindo vigilância epidemiológica e desenvolvimento de vacinas;","ao campo interdisciplinar que emprega organismos vivos, sistemas biológicos ou derivados para criar produtos e processos inovadores nas áreas de saúde, agricultura, meio ambiente e indústria."]'::jsonb,
'C',
'Biossegurança refere-se às políticas, práticas e barreiras para prevenir a exposição acidental a agentes biológicos perigosos e proteger a saúde humana, animal e ambiental (boas práticas, EPIs, descarte). A opção B descreve bioproteção; D, biodefesa; A, genômica; e E, biotecnologia.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Eixo 2',
'A concepção de grande estratégia varia entre países, escolas geopolíticas e contextos históricos. No caso brasileiro, os objetivos nacionais de longo prazo já estão definidos no Art. 3º, incisos I a IV, da Constituição de 1988. A partir de uma perspectiva do Sul, e levando-se em consideração a escola brasileira de geopolítica, é correto afirmar que a grande estratégia brasileira deve:',
'',
'',
'["buscar a integração prioritária com os países da OTAN em relação à tríade atlântica (Amazônia Azul, Projeção Atlântica sobre a África Ocidental e Antártica);","favorecer a exportação de commodities relativamente aos núcleos estratégicos de desenvolvimento, em especial, as empresas inseridas nas cadeias globais de valor;","escolher um dos polos de poder mundial, procurando o alinhamento automático com os Estados Unidos ou China, a partir de um modelo de equidistância geopolítica;","priorizar os quatro grandes arquétipos da geopolítica brasileira, que posicionam o país como uma superpotência energética, alimentar, ambiental/verde e aquífera;","privilegiar acordos bilaterais com potências estrangeiras em detrimento da tríade sul-americana (Arco Amazônico, Frente Andina e Cone Sul), nos termos da política de defesa brasileira."]'::jsonb,
'D',
'A escola brasileira de geopolítica, numa perspectiva do Sul e de autonomia, aponta para a valorização dos arquétipos que posicionam o Brasil como superpotência energética, alimentar, ambiental/verde e aquífera. As demais opções contrariam a autonomia (alinhamento automático, prioridade à OTAN) ou desvalorizam a integração regional.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Eixo 2',
'As mudanças climáticas intensificam tensões entre proteção ambiental, desenvolvimento nacional, segurança e defesa. Nesse contexto, o Brasil busca equilibrar a conservação de biomas estratégicos, como a Amazônia e a Amazônia Azul, com demandas de crescimento econômico e soberania. A partir dessa contextualização, é correto afirmar que:',
'',
'',
'["a Política Nacional de Defesa (PND) considera o potencial energético da Amazônia Azul como secundário, frente à necessidade de preservação ambiental e de proteção da biodiversidade marítima;","a Estratégia Nacional de Defesa (END) recomenda priorizar o desenvolvimento econômico na Amazônia e na Amazônia Azul, mesmo que essas iniciativas impliquem a flexibilização de políticas ambientais para viabilizar o crescimento;","a exploração de recursos naturais na Amazônia integra a END como uma das principais ações para garantir o desenvolvimento econômico e a conservação ambiental do bioma;","a proteção da Amazônia Azul, delimitada pela extensão da Plataforma Continental Brasileira, é prioritária apenas em aspectos relacionados à soberania marítima, conforme previsto na PND;","a conservação dos biomas da Amazônia e da Amazônia Azul é considerada estratégica na PND e na END, que indicam que o Brasil deve fortalecer medidas de proteção ambiental integradas a políticas de defesa e desenvolvimento sustentável."]'::jsonb,
'E',
'A PND e a END tratam a conservação da Amazônia e da Amazônia Azul como estratégica, integrando a proteção ambiental às políticas de defesa e ao desenvolvimento sustentável. As demais alternativas subordinam ou flexibilizam indevidamente a dimensão ambiental.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Eixo 3: Politicas de Seguranca e Defesa - Ambiente Nacional e Questoes Emergentes (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Eixo 3',
'O Ministério da Defesa recebeu notícia anônima sobre embarcações estrangeiras em águas brasileiras, sem autorização, para exploração da fauna marítima, em três áreas: I. ilha pelágica; II. ilha costeira; III. área posterior ao mar territorial, que se estende até 200 milhas marítimas das linhas de base. Para fins de enquadramento nas normas nacionais e internacionais, o órgão concluiu corretamente que se estava perante, respectivamente:',
'',
'',
'["área continental, mar territorial e plataforma continental;","alto-mar, plataforma continental e zona econômica exclusiva;","zona costeira, área continental e área de livre comércio marítimo;","zona econômica exclusiva, área de livre comércio marítimo e alto-mar;","área de livre comércio marítimo, zona econômica exclusiva e zona de amortecimento."]'::jsonb,
'B',
'A ilha pelágica (oceânica, afastada da costa) situa-se em alto-mar; a ilha costeira relaciona-se à plataforma continental; e a área posterior ao mar territorial até 200 milhas das linhas de base é a zona econômica exclusiva. Logo, alto-mar, plataforma continental e zona econômica exclusiva.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Eixo 3',
'No âmbito de projeto para implementação de hidrovia em trecho de rio navegável que conecta dois estados, de modo a implementar um transporte menos poluente e mais competitivo, foram analisadas alternativas e estimados os custos das medidas de segurança da infraestrutura. Na situação descrita, à luz da sistemática vigente, é correto afirmar que:',
'',
'',
'["há previsão de elaboração de um plano setorial de segurança, de competência do Ministério da Infraestrutura;","o transporte aquaviário em águas interiores não está inserido no rol de infraestruturas críticas; logo, está sujeito às medidas gerais de segurança dos órgãos estatais;","a segurança no transporte aquaviário está lastreada no mapeamento e na prevenção de riscos, conduzidos, na fase de planejamento, pela Agência Brasileira de Inteligência;","por se tratar de infraestrutura crítica, o plano de segurança deve ser elaborado de forma integrada, não setorial, ainda que os custos possam ser segmentados para fins avaliativos;","as medidas de segurança são adotadas pelo Ministério da Defesa, ouvida a Agência Nacional de Transportes Aquaviários, além de ser considerado o efeito sinergético dos demais planos setoriais."]'::jsonb,
'A',
'A sistemática de segurança de infraestruturas críticas prevê planos setoriais de segurança, cabendo, no setor de transportes, ao ministério competente da área de infraestrutura a elaboração do respectivo plano setorial. As demais alternativas destoam da divisão setorial e das competências vigentes.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Eixo 3',
'Foram apresentadas propostas de estratégias no âmbito do Sistema de Proteção da Amazônia (SIPAM). No plano geográfico, argumentou-se que, apesar de a "Amazônia Legal" não se restringir à Região Norte, seria possível estender medidas a certas áreas da Região Nordeste. No plano estrutural, defendeu-se que o Conselho Deliberativo do SIPAM, por sua composição interorgânica e por congregar membros das Casas Legislativas, teria competência para estabelecer diretrizes e prioridades. No plano do conteúdo, sustentou-se que o SIPAM se instrumentaliza com a integração, a avaliação e a difusão de informações. Considerando a sistemática vigente, é correto afirmar que:',
'',
'',
'["nenhum deles se ajusta à juridicidade;","somente apresentam injuridicidade no plano estrutural;","somente apresentam injuridicidade no plano geográfico;","somente apresentam injuridicidade no plano do conteúdo;","somente apresentam injuridicidade nos planos geográfico e estrutural."]'::jsonb,
'E',
'O plano do conteúdo está correto (o SIPAM integra, avalia e difunde informações). Já os planos geográfico (a Amazônia Legal não se restringe à Região Norte, e a descrição do enunciado inverte o conceito) e estrutural (a competência do Conselho Deliberativo e sua composição não correspondem ao descrito) apresentam injuridicidade.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Eixo 3',
'Determinado processo administrativo no Ministério da Defesa tem por objeto ações estratégicas de desenvolvimento científico e tecnológico e inovação de interesse de defesa, para definir prioridades. Considerando os balizamentos da Portaria MD nº 3.063/2021, é correto afirmar que as referidas ações:',
'',
'',
'["são segmentadas em dez objetivos específicos, alcançando, inclusive, o aperfeiçoamento do plano de carreira de servidores de ICTs militares;","estão previstas no marco legal da ciência, tecnologia e inovação, cabendo ao Ministério da Defesa a definição das prioridades, considerando os objetivos específicos da pasta;","estão alicerçadas em cinco eixos fundamentais, direcionados às medidas de orientar, estimular, fortalecer, incentivar e promover a governança interna, sendo possível a priorização de um desses eixos;","uma vez definidas, conforme o planejamento a ser adotado pelos órgãos do Ministério da Defesa, irão permitir a definição dos objetivos gerais, e estes irão permitir a definição das diretrizes da Política de Ciência, Tecnologia e Inovação de Defesa;","devem direcionar a elaboração das diretrizes de atuação da Política de Ciência, Tecnologia e Inovação de Defesa, entre as quais se encontra o incentivo à participação das Forças Armadas no esforço nacional de educação científica."]'::jsonb,
'A',
'Conforme a Portaria MD nº 3.063/2021, as ações estratégicas de CT&I de defesa são segmentadas em dez objetivos específicos, entre os quais o aperfeiçoamento do plano de carreira de servidores das Instituições Científicas e Tecnológicas (ICTs) militares.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Eixo 3',
'A República Federativa do Brasil celebrou tratado internacional bilateral com a República Alfa, com posterior aprovação pelo Congresso, ratificação, comunicação e promulgação na ordem interna. Anos depois, em razão da ruptura da democracia em Alfa, iniciaram-se estudos sobre a medida a ser adotada para que o tratado não mais produzisse efeitos no âmbito interno. Ao final dos estudos, concluiu-se corretamente que:',
'',
'',
'["o presidente da República deve revogar o decreto que promulgou o tratado na ordem interna;","o presidente da República deve denunciar o tratado, e, para que produza efeitos no âmbito interno, é exigida a aprovação do Congresso Nacional;","caso o tratado tenha por objeto a proteção dos direitos humanos, não é possível a sua denúncia, considerando a vedação de retrocesso nessa seara;","o presidente da República deve denunciar o tratado, comunicando à autoridade competente de Alfa e revogando o decreto que o promulgou na ordem interna;","deve ser encaminhada mensagem ao Congresso Nacional para que aprove a denúncia ao tratado, com posterior comunicação à autoridade competente de Alfa."]'::jsonb,
'B',
'A denúncia é ato do presidente da República; após denunciar (comunicando à outra parte), para que a cessação de efeitos se opere no plano interno é adequada a participação do Congresso Nacional. A simples revogação do decreto de promulgação não é o meio próprio para desconstituir o compromisso.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Eixo 3',
'A sociedade empresária Sigma, da área de TI, desenvolve softwares de identificação de ameaças (territorial, aéreo e marítimo) com integração dos sistemas de defesa. A União lançou edital de licitação para a contratação de conteúdo tecnológico dessa natureza, considerando-o um produto estratégico de defesa (PED). À luz da Lei nº 12.598/2012, é correto afirmar que a participação de Sigma na licitação pressupõe:',
'',
'',
'["o seu prévio credenciamento como empresa estratégica de defesa;","que já tenha celebrado e cumprido contrato administrativo para fornecimento de algum produto de defesa (PRODE);","o seu prévio credenciamento, caso a licitação seja destinada exclusivamente à participação de empresa estratégica de defesa;","que tenha sede no território brasileiro e que a maioria do capital social ou o controle acionário pertença a pessoas físicas ou jurídicas brasileiras;","que, em seus atos constitutivos ou nos atos de seu controlador, o conjunto de sócios ou acionistas e grupos de sócios ou acionistas estrangeiros não possam exercer em cada assembleia geral número de votos superior a dois terços do total."]'::jsonb,
'C',
'Pela Lei 12.598/2012, o credenciamento como Empresa Estratégica de Defesa (EED) só é exigível quando a licitação for destinada exclusivamente à participação de EED. Se a licitação não tiver essa restrição, o credenciamento prévio não é pressuposto de participação.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Eixo 3',
'O responsável por estrutura do Poder Executivo federal constatou que seu setor mantinha informações que poderiam pôr em risco a segurança de familiares de altas autoridades nacionais ou estrangeiras, classificadas de maneiras distintas e com prazos diversos. Após analisar a Lei nº 12.527/2011, concluiu corretamente que as informações:',
'',
'',
'["não são consideradas como imprescindíveis à segurança da sociedade ou do Estado, mas podem ser classificadas como reservadas;","permanecerão sob sigilo por até 25 anos caso sejam classificadas como ultrassecretas, sendo necessária a sua reavaliação a cada lustro;","podem ser classificadas como de acesso restrito, secretas ou ultrassecretas, o que gera reflexos no prazo em que serão automaticamente de acesso público;","que possam colocar em risco a segurança do presidente da República e seus respectivos cônjuge, filhos ou dependentes serão classificadas como reservadas e ficarão sob sigilo até o término do mandato em exercício ou do último mandato, em caso de reeleição;","podem ser objeto de sigilo por até 100 anos, mediante ato fundamentado, ressalvada a existência de requisição judicial, considerando a necessidade de ponderação com outros bens e valores igualmente protegidos pela ordem constitucional ou infraconstitucional."]'::jsonb,
'D',
'Pela LAI, as informações que possam pôr em risco a segurança do presidente e vice e de seus cônjuges, filhos ou dependentes são classificadas como reservadas e ficam sob sigilo até o término do mandato em exercício ou do último mandato, em caso de reeleição.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Eixo 3',
'No contexto da Política Nacional de Defesa, defendeu-se a necessidade de construir um protótipo de reator tipo PWR no âmbito do Programa Nuclear da Marinha (PNM) e, na construção do núcleo do poder naval, a obtenção de navios-aeródromos (PRONAE) para a Primeira e a Segunda Esquadras. À luz do Livro Branco de Defesa Nacional, é correto afirmar que:',
'',
'',
'["a construção do protótipo cogitado pressupõe aprovação prévia do Congresso Nacional;","a obtenção de navios-aeródromos pode resultar tanto do desenvolvimento nacional quanto de parceria no exterior, visando aos fins descritos;","a construção do protótipo cogitado é incompatível com a determinação constitucional de limitação ao uso da energia nuclear para fins pacíficos;","os navios-aeródromos se enquadram no contexto de parcerias estratégicas com organizações internacionais, a partir de ajustes multilaterais, apenas para fins de defesa;","o PNM, no atual decênio, é direcionado ao desenvolvimento do ciclo de combustível e à construção e validação do Laboratório de Geração de Energia Nucleoelétrica (LABGENE), e não à construção do protótipo cogitado."]'::jsonb,
'B',
'Conforme o Livro Branco de Defesa Nacional, a obtenção dos navios-aeródromos (PRONAE) pode decorrer tanto do desenvolvimento nacional quanto de parceria no exterior. O uso nuclear da Marinha é para fins pacíficos (propulsão), sem necessidade de aprovação prévia do Congresso para o protótipo.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Eixo 3',
'A Convenção das Nações Unidas sobre o Direito do Mar (CNUDM) consolidou um amplo acordo sobre a governança dos espaços marítimos, definindo conceitos como mar territorial, alto-mar, plataforma continental, zona econômica exclusiva e zona contígua. Com base na CNUDM, é correto afirmar que:',
'',
'',
'["o mar territorial tem início na linha de base de referência e se superpõe à zona contígua por uma faixa de 24 milhas náuticas;","a plataforma continental tem início no fim da zona econômica exclusiva e abrange as águas sobrejacentes do alto-mar até 350 milhas náuticas;","a zona contígua é contígua ao seu mar territorial e não pode se estender além de 24 milhas náuticas, contadas a partir da linha de base de referência para a delimitação do mar territorial;","o alto-mar começa onde termina o alcance do Acordo sobre Diversidade Biológica Marinha em Áreas Além da Jurisdição Nacional (Acordo BBNJ), com exceção das áreas marítimas sobrejacentes à plataforma continental estendida, quando esta ocorrer;","a zona econômica exclusiva tem início com a zona contígua, estendendo-se até 200 milhas náuticas ou até o prolongamento da plataforma continental estendida, quando esta ocorrer, tendo como limite 350 milhas náuticas a partir da linha de base."]'::jsonb,
'C',
'Pela CNUDM, a zona contígua é adjacente ao mar territorial e não pode ultrapassar 24 milhas náuticas contadas a partir das linhas de base a partir das quais se mede a largura do mar territorial. As demais alternativas confundem os limites e as sobreposições dos espaços marítimos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Eixo 3',
'O Brasil vem estabelecendo relações com países do seu entorno estratégico, com atenção à costa ocidental da África, sendo um dos temas o aumento da segurança marítima contra ilícitos transnacionais. Uma operação naval multinacional foi criada por iniciativa do Brasil para o fomento da capacitação, troca de experiências, adestramento e interoperabilidade entre as forças navais e guardas-costeiras da região. Iniciada em 2021, essa operação foi intitulada:',
'',
'',
'["Unitas;","Guinex;","Obangame Express;","Grand African Nemo;","Atlantic Partnership."]'::jsonb,
'B',
'A Operação Guinex (Guiné Experimental/Exercício), iniciada em 2021 por iniciativa do Brasil, promove a capacitação, o adestramento e a interoperabilidade entre marinhas e guardas-costeiras dos países do entorno estratégico, com atenção à costa ocidental da África (Golfo da Guiné).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Eixo 3',
'A Estratégia Nacional de Defesa (END) define as Capacidades Nacionais de Defesa como compostas por diferentes parcelas das expressões do Poder Nacional. Entre essas capacidades, a que melhor instrumenta a solução para uma rápida resposta com o emprego da força em defesa dos interesses nacionais em qualquer área de emprego, no país ou no exterior, é a capacidade:',
'',
'',
'["de dissuasão;","de mobilização;","logística para defesa;","de mobilidade estratégica;","de monitoramento e vigilância."]'::jsonb,
'D',
'A capacidade de mobilidade estratégica é a que permite o deslocamento rápido e o emprego da força em qualquer área, no país ou no exterior, garantindo pronta resposta em defesa dos interesses nacionais.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Eixo 3',
'No atual contexto geopolítico, países centrais elevam seus investimentos em Defesa, e o mercado internacional de defesa é competitivo, fechado e liderado por potências centrais. Países emergentes anseiam por melhor inserção, mas enfrentam desafios em suas bases industriais de defesa. No caso brasileiro, o fator que requer maior atenção é:',
'',
'',
'["a carência de matérias-primas e terras raras;","o nível elevado de exigências por parte de países compradores;","a defasagem tecnológica e barreiras de acesso a tecnologias críticas;","a dificuldade de integrar um mercado regional de defesa sul-americano;","a dificuldade de adaptação às normas do comércio internacional da Organização Mundial do Comércio (OMC)."]'::jsonb,
'C',
'Para a base industrial de defesa brasileira, o principal desafio é a defasagem tecnológica e as barreiras de acesso a tecnologias críticas (controladas pelas potências centrais), que dificultam a competitividade e a inserção no mercado internacional de defesa.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Eixo 4: Politicas de Seguranca Publica (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Eixo 4',
'Considere a hipótese de um prefeito municipal que, diante de índices altos de criminalidade, encaminha à Câmara Municipal projeto de lei prevendo a aplicação de pena de multa a usuários de drogas em via pública e a criação de uma polícia militar municipal. A partir das características do federalismo no Brasil em matéria de segurança pública, é correto afirmar que:',
'',
'',
'["ambas as proposições são constitucionais e corretas, visto que a segurança pública é dever de todos os entes federados;","somente a proposta de imposição de pena de multa a usuários de drogas em via pública pode ser aprovada, pois a competência para legislar sobre direito penal é concorrente;","somente a proposta de criação de uma polícia militar municipal é constitucional, considerando a posição assumida pelo Supremo Tribunal Federal sobre a matéria;","a imposição de pena de multa a usuários de drogas em via pública é possível, desde que a lei municipal preveja um procedimento com direito à ampla defesa e ao contraditório;","ambas as propostas violam os princípios e regras sobre o federalismo brasileiro em segurança pública e não podem ser aprovadas."]'::jsonb,
'E',
'Compete privativamente à União legislar sobre direito penal (art. 22, I, CF), o que impede o município de criar sanções penais a usuários de drogas; e a CF (art. 144) não prevê polícia militar municipal, cabendo às polícias militares vínculo estadual. Assim, ambas as propostas violam o federalismo em segurança pública.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Eixo 4',
'A Política Nacional de Segurança Pública e Defesa Social (PNSPDS) busca promover um sistema de segurança mais integrado e eficaz. Analisando criticamente os princípios e objetivos subjacentes à PNSPDS, a alternativa que representa corretamente a aplicação coerente e estratégica desses princípios é:',
'',
'',
'["em face de um cenário de aumento da criminalidade cibernética, a PNSPDS fomenta a articulação entre diferentes órgãos de segurança e a integração de dados e informações, buscando o gerenciamento eficaz de crises e incidentes e respeitando as competências de cada ente federativo;","diante do aumento da criminalidade em um dado estado, a União pode impor a adoção integral da PNSPDS, uniformizando as ações e limitando a autonomia dos órgãos estaduais para garantir uma resposta rápida e coordenada;","para fortalecer a integração entre os entes federativos, a PNSPDS destina a maior parte dos recursos financeiros para a contratação de consultorias externas, que devem elaborar planos de segurança padronizados para cada estado, garantindo a aplicação uniforme da política nacional;","em resposta a uma crise de segurança em uma região metropolitana, as diretrizes da PNSPDS priorizam o policiamento ostensivo e a ação militarizada em áreas de conflito, visando à repressão imediata do crime organizado e o restabelecimento da ordem, mesmo que isso resulte em tensões com a comunidade local;","visando à modernização da gestão, a PNSPDS estimula a nomeação de gestores sem experiência prévia nas carreiras policiais para cargos de chefia, buscando trazer novas perspectivas e abordagens inovadoras."]'::jsonb,
'A',
'A PNSPDS baseia-se na integração, articulação entre órgãos, compartilhamento de dados e gerenciamento de crises, com respeito às competências de cada ente federativo. As demais alternativas contrariam esses princípios (imposição uniforme, foco em consultorias, militarização com conflito comunitário ou nomeação sem qualificação).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Eixo 4',
'De acordo com pesquisa recente (Genial/Quaest), 29% dos brasileiros acreditam que a criminalidade é o mais grave problema do Brasil. Sobre o tema, é correto afirmar que:',
'',
'',
'["as mortes violentas intencionais no Brasil vêm crescendo nos últimos anos;","uma das características da violência letal no Brasil é sua distribuição em proporção similar pelas cinco macrorregiões do país;","a região Sudeste concentra as maiores taxas de violência letal do país, o que pode ser explicado, em parte, por sua alta concentração populacional;","a transformação digital vem favorecendo um grande aumento do número de estelionatos, embora a tendência geral seja de queda dos crimes contra o patrimônio;","o tráfico de drogas é o responsável pela grande maioria dos crimes que compõem a estatística referente às mortes violentas intencionais."]'::jsonb,
'D',
'A transformação digital tem impulsionado forte aumento dos estelionatos (fraudes on-line), ainda que a tendência geral dos crimes patrimoniais tradicionais (como roubos) seja de queda. As demais afirmativas contrariam os dados (as MVI têm caído; a distribuição é desigual entre regiões; o Sudeste não concentra as maiores taxas).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Eixo 4',
'A Constituição e a legislação brasileira preveem diversas forças de segurança pública em diferentes níveis e esferas de atuação. Em relação à atuação dessas forças, é correto afirmar que:',
'',
'',
'["a Polícia Federal pode investigar crimes de competência da Justiça Estadual caso haja repercussão interestadual ou internacional que exija repressão uniforme;","a Força Nacional de Segurança Pública faz parte das Forças Armadas e pode ser convocada para preservação da ordem pública, da segurança de pessoas e de patrimônio, bem como em emergências e calamidades públicas;","as polícias estaduais atuam em regime de ciclo único, conjugando as atribuições de policiamento ostensivo e de investigação de delitos praticados;","a atuação das polícias estaduais, a critério da administração municipal, pode ser substituída em determinado município pela ação de guardas municipais;","a atribuição de investigação compete à Polícia Rodoviária Federal caso o crime seja cometido em rodovia ou estrada federal."]'::jsonb,
'A',
'A CF (art. 144, §1º, I) autoriza a Polícia Federal a apurar infrações cuja prática tenha repercussão interestadual ou internacional e exija repressão uniforme. A Força Nacional não integra as Forças Armadas, as polícias estaduais atuam em ciclo dividido (PM ostensiva, PC investigativa), guardas não substituem as polícias e a PRF não detém a atribuição investigativa apenas por o crime ocorrer em rodovia.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Eixo 4',
'Considere a situação de João, condenado a 20 anos de prisão pela Justiça Federal, em regime inicial fechado, com transferência prevista para uma penitenciária do Sistema Penitenciário Federal. Nesse caso, é correto afirmar que:',
'',
'',
'["os gastos da União na administração da execução da pena de João fazem parte da despesa pública do Sistema Penitenciário Federal, responsável por aproximadamente metade da despesa pública nacional com o sistema prisional, sendo a outra metade dividida entre os estados;","o local correto de execução da pena de João é uma penitenciária federal, pois são elas as responsáveis pela custódia das pessoas condenadas à prisão pela Justiça Federal;","quando cumprir os requisitos legais, e desde que autorizado pelo juiz competente, João poderá progredir para um estabelecimento penal federal de regime semiaberto;","na penitenciária federal, em regime disciplinar diferenciado, João não terá direito à saída da cela, devendo ser garantida a ventilação e o contato com o sol;","na penitenciária federal, em regime disciplinar diferenciado, João não terá direito a visitas íntimas."]'::jsonb,
'E',
'No regime disciplinar diferenciado (RDD), há restrições severas, entre elas a vedação de visitas íntimas. O condenado tem direito a banho de sol diário (afasta D), as penitenciárias federais destinam-se a presos de alta periculosidade (não a todo condenado federal) e não existe estabelecimento federal de regime semiaberto (afasta B e C); a despesa federal não corresponde à metade do total (afasta A).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Eixo 4',
'Segundo pesquisa do Instituto Datafolha e do Fórum Brasileiro de Segurança Pública, mais de 21 milhões de mulheres sofreram violência em 2024. Analise: I. Há padrões de letalidade e vitimização distintos entre estados e regiões, considerando que a violência contra a mulher é impactada por dinâmicas regionais. II. A maior parte dos casos de violência contra a mulher ocorre em via pública e em meios de transporte coletivo. III. De acordo com um ponto de vista interseccional, a vulnerabilidade socioeconômica é a variável central de discriminação e fragilização da mulher vítima de violência. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'A',
'Apenas a afirmativa I está correta: há padrões regionais distintos de letalidade e vitimização. A II é falsa (a maior parte da violência contra a mulher ocorre no ambiente doméstico, não em via pública/transporte). A III é falsa: na perspectiva interseccional, não há uma variável única central — raça, gênero e classe interagem.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Eixo 4',
'O crime organizado e as milícias representam desafios distintos para a segurança pública no Brasil. Sobre tais organizações criminosas, é correto afirmar que:',
'',
'',
'["a formação de milícias é permitida quando tem o fim exclusivo de combater grupos armados de traficantes de drogas, sendo entendida como um meio legítimo de defesa da comunidade;","se entende por organização criminosa o grupo paramilitar, grupo ou esquadrão criado com o objetivo de praticar crimes previstos pelo Código Penal brasileiro;","o controle territorial em áreas específicas e a participação de agentes ou ex-agentes estatais são características típicas das milícias;","o aumento do número de pessoas presas no Brasil, sobretudo lideranças de facções, vem sendo relacionado à constatação de enfraquecimento do crime organizado;","a constituição de milícias privadas não é um crime autônomo no Brasil, enquadrando-se a conduta como associação criminosa, formação de quadrilha ou organização criminosa."]'::jsonb,
'C',
'As milícias caracterizam-se pelo controle territorial de áreas específicas e pela participação de agentes ou ex-agentes estatais. A formação de milícia não é permitida e constitui crime autônomo (art. 288-A do CP), e o encarceramento em massa não indica enfraquecimento do crime organizado.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Eixo 4',
'Bartolomeu, pessoa presa em regime fechado, apresenta febre alta, dor de cabeça e sangramento pelo nariz, indicando necessidade de atendimento imediato à sua saúde. Com base nos princípios e diretrizes da Política Nacional de Atenção Integral à Saúde das Pessoas Privadas de Liberdade no Sistema Prisional (PNAISP), é correto afirmar que:',
'',
'',
'["o atendimento à saúde de Bartolomeu deve ser realizado preferencialmente dentro do próprio estabelecimento prisional;","Bartolomeu tem o direito de acessar, em igualdade de condições com as demais pessoas, todos os níveis de atenção à saúde ofertados pelo Sistema Único de Saúde;","o atendimento à saúde ocorrerá exclusivamente no interior do estabelecimento prisional caso Bartolomeu tenha sido condenado por crime hediondo ou equiparado;","o acesso de Bartolomeu aos serviços de saúde do município é hipótese de saída temporária, sendo condicionado à sua boa conduta carcerária e à autorização prévia da direção do estabelecimento prisional;","a PNAISP garante a Bartolomeu o acesso a serviços básicos de saúde, como consultas médicas gerais e distribuição de medicamentos, sendo o atendimento especializado e a realização de exames complementares de responsabilidade do próprio preso ou de seus familiares."]'::jsonb,
'B',
'A PNAISP integra as pessoas privadas de liberdade ao SUS, garantindo acesso, em igualdade de condições com as demais pessoas, a todos os níveis de atenção à saúde (básica, média e alta complexidade), não restrito ao interior do presídio nem à responsabilidade do preso.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Eixo 4',
'O Fundo Nacional de Segurança Pública (FNSP) e o Fundo Penitenciário Nacional (FUNPEN) são importantes instrumentos na relação entre União e entes federados. Sobre o tema, é correto afirmar que:',
'',
'',
'["os entes federados integrantes do Sistema Nacional de Informações de Segurança Pública, Prisionais, de Rastreabilidade de Armas e Munições, de Material Genético, de Digitais e de Drogas (Sinesp) que deixarem de fornecer ou atualizar seus dados no referido Sistema não poderão receber recursos do Fundo Penitenciário Nacional;","os recursos do Fundo Penitenciário Nacional podem ser aplicados em programas de assistência jurídica aos presos e internados carentes, mas não há previsão de sua destinação a programas de assistência às vítimas de crime;","tanto o Fundo Nacional de Segurança Pública como o Fundo Penitenciário Nacional têm sua gestão descentralizada e coordenada pelos estados, os quais decidem livremente a aplicação dos recursos em projetos locais;","uma das principais fontes de receita do Fundo Nacional de Segurança Pública vem de multas decorrentes de sentenças penais condenatórias com trânsito em julgado;","uma das principais fontes de receita do Fundo Penitenciário Nacional vem da exploração de loterias, nos termos da legislação vigente."]'::jsonb,
'A',
'A legislação condiciona o repasse de recursos do FUNPEN ao cumprimento do dever de fornecer e atualizar os dados no Sinesp; os entes que deixarem de fazê-lo ficam impedidos de receber tais recursos. As demais alternativas contrariam as regras dos fundos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Eixo 4',
'Sobre a questão do encarceramento em massa no Brasil, analise: I. O período de maior aumento do número de pessoas presas no Brasil ocorreu após o fim do regime militar, com a redemocratização e a Constituição de 1988. II. O encarceramento no Brasil atinge majoritariamente jovens adultos de baixa escolaridade. III. Homicídios dolosos e latrocínios são causas da maior parte das condenações à prisão. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'As afirmativas I e II estão corretas: o encarceramento cresceu fortemente no período pós-redemocratização e atinge sobretudo jovens de baixa escolaridade. A III é falsa: a maior parte das condenações decorre de crimes contra o patrimônio e de tráfico de drogas, não de homicídios e latrocínios.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Eixo 4',
'As Regras de Mandela e as Regras de Bangkok são importantes documentos relacionados ao sistema prisional. Sobre elas, é correto afirmar que:',
'',
'',
'["são tratados internacionais com força vinculante para os Estados signatários;","são conjuntos de regras da Organização das Nações Unidas (ONU), sem caráter obrigatório, fornecendo padrões e princípios para o tratamento de pessoas privadas de liberdade;","são normas técnicas da Organização Mundial da Saúde (OMS) que estabelecem padrões mínimos de infraestrutura prisional, com foco em higiene e salubridade;","as Regras de Bangkok correspondem às Regras Mínimas das Nações Unidas para o Tratamento de Reclusos, com a versão original datada de 1955;","as Regras de Mandela se destinam com exclusividade às mulheres privadas de liberdade, recomendando medidas que visem a evitar o encarceramento, especialmente nas hipóteses de mulheres grávidas, mães com filhos pequenos e mulheres vítimas de violência doméstica."]'::jsonb,
'B',
'As Regras de Mandela e de Bangkok são conjuntos de regras da ONU, sem força vinculante (soft law), que fornecem padrões e princípios para o tratamento de pessoas presas. As Regras de Mandela são as Regras Mínimas para o Tratamento de Reclusos; as de Bangkok voltam-se às mulheres presas.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Eixo 4',
'A Corte Interamericana de Direitos Humanos, no caso Favela Nova Brasília, e o STF, na Arguição de Descumprimento de Preceito Fundamental nº 635, trataram da temática da letalidade e vitimização policial. No julgamento final do STF na ADPF 635, foi decidido que:',
'',
'',
'["os policiais militares em atividade operacional não precisam usar câmeras corporais nas fardas;","é vedada a documentação, por meio de fotografia, pelos órgãos da polícia técnico-científica em provas periciais produzidas em investigações de crime contra a vida;","é proibido qualquer tipo de prioridade nas investigações de incidentes que tenham como vítimas crianças ou adolescentes;","nunca poderá ser determinada ao estado, pelo poder judiciário, a elaboração de um plano de recuperação territorial de áreas sob domínio de organizações criminosas;","sempre que houver suspeita de envolvimento de agentes de segurança pública na prática de crime doloso contra a vida, a investigação será atribuição do órgão do Ministério Público competente."]'::jsonb,
'E',
'Na ADPF 635 (ADPF das Favelas), o STF determinou, entre outras medidas, que havendo suspeita de envolvimento de agentes de segurança pública em crime doloso contra a vida, a investigação seja atribuída ao Ministério Público. As demais alternativas contrariam as determinações (uso de câmeras, preservação de perícia, prioridade a casos com crianças e planos de redução da letalidade).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Eixo 5: Politicas de Justica e Cidadania (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Eixo 5',
'Carlos mora em área de ocupação urbana precária e enfrenta dificuldades para regularizar a posse de sua moradia. Ao procurar ajuda jurídica, foi informado sobre a possibilidade de atendimento pela Defensoria Pública. Considerando os princípios constitucionais e legais que regem o acesso à justiça no Brasil, é correto afirmar que a Defensoria Pública:',
'',
'',
'["exerce função essencial à justiça, prestando orientação jurídica e defesa integral e gratuita às pessoas que comprovam insuficiência de recursos;","desenvolve sua atuação apenas na área penal, com foco em casos em que haja denúncia formal do Ministério Público;","limita-se à atuação judicial, sem atribuição para realizar atividades extrajudiciais;","atua em nome do Estado nos processos judiciais, como parte representativa do poder público;","concentra seu atendimento nas capitais estaduais, considerando critérios administrativos e orçamentários."]'::jsonb,
'A',
'A Defensoria Pública é função essencial à justiça (art. 134 da CF), incumbida da orientação jurídica e da defesa, em todos os graus, integral e gratuita, dos necessitados. Sua atuação não se restringe ao penal nem ao judicial, e ela defende os cidadãos, não o poder público.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Eixo 5',
'Duas abordagens marcam o debate sobre as desigualdades no Brasil. Uma (Marta Arretche, Trajetórias da desigualdade) enfatiza os efeitos positivos de políticas públicas na redução das desigualdades, resultantes de mudanças incrementais. Outra (Pedro Ferreira de Souza, Uma história da desigualdade) destaca a persistência histórica da concentração de renda no topo, sugerindo resistência estrutural às reformas graduais. A alternativa que expressa corretamente um ponto de tensão entre as abordagens é:',
'',
'',
'["ambas as abordagens associam a ampliação do sufrágio universal a uma queda sustentada da desigualdade, destacando a eficácia da participação eleitoral como principal motor redistributivo;","uma das abordagens atribui a redução das desigualdades à institucionalização de espaços participativos, enquanto a outra identifica na fragmentação federativa o principal entrave à coordenação de políticas redistributivas;","uma abordagem destaca o impacto de políticas redistributivas pontuais na inclusão social, enquanto a outra enfatiza os limites dessas ações frente à estabilidade dos interesses das elites econômicas;","uma das abordagens enfatiza a herança econômica do regime autoritário como fator de continuidade da desigualdade, enquanto a outra sustenta que a manutenção dos altos níveis de desigualdade decorre do excesso de gasto social em períodos de crescimento;","ambas as abordagens convergem ao explicar a desigualdade brasileira a partir de traços culturais persistentes, como o patrimonialismo e o clientelismo, que impedem a consolidação de políticas públicas universais."]'::jsonb,
'C',
'O ponto de tensão é que Arretche destaca o impacto de políticas redistributivas na inclusão social (mudanças incrementais eficazes), enquanto Souza enfatiza os limites dessas ações diante da estabilidade dos interesses das elites econômicas (resistência estrutural no topo).'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Eixo 5',
'Durante uma operação em rodovia federal, a Polícia Rodoviária interceptou um veículo que transportava adolescentes aliciados com promessas de emprego, que seriam levados a outro estado para exploração sexual. Após o resgate, as vítimas foram encaminhadas a serviços de acolhimento, e os autores foram detidos em flagrante. Nesse caso, o tráfico de pessoas está caracterizado porque:',
'',
'',
'["os adolescentes foram levados para outro estado e foram necessariamente vinculados ao trabalho escravo, configurando, portanto, o tráfico de pessoas, segundo a legislação pertinente;","os adolescentes consentiram em serem levados para outro estado, e, por serem maiores de idade no momento do aliciamento, restou caracterizado o tráfico de pessoas, segundo previsto na política nacional vigente;","a interceptação foi realizada pela polícia federal, que tem a competência exclusiva para a proteção às vítimas e repressão ao tráfico de pessoas, conforme previsto na legislação;","o encaminhamento dos adolescentes a serviços de acolhimento e a detenção dos autores em flagrante são ações integradas de prevenção, repressão e proteção às vítimas, conforme previsto na política nacional vigente;","houve remuneração paga pelos adolescentes e por seus familiares, e o crime de tráfico só se configura se houver a remuneração paga, nos termos descritos na legislação pertinente."]'::jsonb,
'D',
'A Política Nacional de Enfrentamento ao Tráfico de Pessoas estrutura-se em eixos de prevenção, repressão e atenção/proteção às vítimas. O encaminhamento das vítimas a serviços de acolhimento (proteção) e a detenção dos autores em flagrante (repressão) exemplificam essas ações integradas.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Eixo 5',
'Marcos adquiriu um eletrodoméstico pela internet, mas o produto chegou danificado. A empresa negou-se a trocar o item, alegando responsabilidade do transportador. Sentindo-se lesado, Marcos procurou orientação no Procon. O Procon, cuja atuação está inserida na Política Nacional das Relações de Consumo, se propõe a:',
'',
'',
'["garantir a conciliação entre as partes, sem previsão de sanções administrativas à empresa;","atuar como mediador informal, sem respaldo legal, restringindo-se a fornecer orientações genéricas ao consumidor;","impedir que o consumidor recorra ao Judiciário enquanto houver tentativa de solução administrativa;","exercer função consultiva e judicial, podendo obrigar a empresa a ressarcir o consumidor diretamente;","fiscalizar e aplicar sanções às empresas infratoras, integrando o Sistema Nacional de Defesa do Consumidor."]'::jsonb,
'E',
'O Procon integra o Sistema Nacional de Defesa do Consumidor (SNDC) e possui competência administrativa para fiscalizar as relações de consumo e aplicar sanções às empresas infratoras. Não tem função judicial nem impede o acesso ao Judiciário.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Eixo 5',
'Durante uma capacitação, foi apresentado o papel da Estratégia Nacional de Combate à Corrupção e à Lavagem de Dinheiro (ENCCLA). Uma participante afirmou que a ENCCLA funciona como uma política pública executada diretamente por um órgão central do governo federal. Com base nos princípios da ENCCLA, a afirmativa da participante está:',
'',
'',
'["correta, pois a ENCCLA é coordenada exclusivamente pelo Ministério da Justiça e executada por meio de programas permanentes;","incorreta, pois a ENCCLA é um programa sob responsabilidade do Conselho de Controle de Atividades Financeiras (COAF);","incorreta, pois a ENCCLA é uma estratégia interinstitucional, construída por consensos entre órgãos dos Três Poderes e da sociedade civil;","correta, pois a ENCCLA impõe metas obrigatórias a todos os órgãos envolvidos em sua estrutura;","incorreta, pois a ENCCLA tem caráter internacional e é executada sob a coordenação da ONU e do GAFI."]'::jsonb,
'C',
'A ENCCLA é uma estratégia articulada e interinstitucional, construída por consensos entre diversos órgãos dos Três Poderes, do Ministério Público e da sociedade civil, e não uma política executada diretamente por um único órgão central.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Eixo 5',
'A literatura sobre migrações internacionais contemporâneas enfatiza a complexidade crescente das motivações e dos perfis dos migrantes. No caso da emigração brasileira para Portugal, excertos apontam a interação de condições políticas e aspirações de estilo de vida (Azevedo et al., 2022), a nova economia da migração com foco na minimização de risco (Brum, 2024), a diversificação de perfis com aumento de estudantes (Fernandes et al., 2020) e o crescimento de estudantes como novos atores (Iorio e Ferreira, 2023). Com base nesses excertos e nos debates contemporâneos sobre migração, é correto afirmar que:',
'',
'',
'["os textos apontam para a coexistência de múltiplos fatores — políticos, econômicos e subjetivos — na decisão migratória, problematizando tanto os modelos clássicos quanto as visões que romantizam o estilo de vida;","as teorias neoclássicas explicam de forma abrangente a recente emigração brasileira, especialmente por sua capacidade de integrar fatores como redes sociais e políticas migratórias;","os fatores macroeconômicos foram suprimidos como explicação central da emigração brasileira, sendo substituídos por motivações predominantemente culturais e educacionais;","a migração estudantil para Portugal substituiu integralmente os fluxos migratórios anteriores, indicando um rompimento estrutural no perfil do migrante brasileiro;","a ideia de mobilidade qualificada está associada à precarização laboral no país de destino, o que desestimula o prolongamento da permanência e acarreta o retorno em massa à sociedade de origem."]'::jsonb,
'A',
'Os excertos, em conjunto, evidenciam a coexistência de fatores políticos, econômicos e subjetivos na decisão migratória, problematizando os modelos clássicos (neoclássicos) e as visões que romantizam o estilo de vida cosmopolita. As demais alternativas fazem afirmações absolutas não sustentadas pelos textos.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Eixo 5',
'A Comissão de Direitos Humanos, Minorias e Igualdade Racial da Câmara dos Deputados aprovou proposta que estabelece como requisito obrigatório, para a concessão de licença ambiental, o consentimento de comunidades indígenas afetadas pelo empreendimento. Essa medida respeita a Convenção nº 169 da Organização Internacional do Trabalho (OIT), que reconhece o direito dos povos indígenas:',
'',
'',
'["à consulta prévia;","ao plebiscito prévio;","ao contrato acordado na Funai;","à convenção coletiva acordada;","à soberania nacional de seu território."]'::jsonb,
'A',
'A Convenção nº 169 da OIT assegura aos povos indígenas e tribais o direito à consulta prévia, livre e informada sobre medidas administrativas ou legislativas que os afetem diretamente, como o licenciamento de empreendimentos em seus territórios.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Eixo 5',
'Na contemporaneidade, as redes sociais se converteram em impulsionadoras da polarização política. A associação das mídias com o aumento da polarização decorre dos próprios algoritmos, na medida em que a estrutura das redes estimula:',
'',
'',
'["o isolamento social, levando a que os indivíduos prefiram conversar com inteligências artificiais;","a formação de filtros-bolhas, ao aproximar as opiniões semelhantes e afastar as opiniões contrárias;","câmaras de eco, ao facilitar o encontro com ideias e posições diferentes, produzindo consensos;","o escapismo do real por meio do virtual, impedindo o indivíduo de se sentir parte de uma comunidade;","o debate amplo e aberto, no qual as opiniões diferentes tendem a se encontrar, estimulando o dissenso."]'::jsonb,
'B',
'Os algoritmos de recomendação favorecem a formação de filtros-bolha (filter bubbles), aproximando conteúdos e opiniões semelhantes e afastando as contrárias, o que reforça a polarização. A alternativa C descreve erroneamente as câmaras de eco como produtoras de consenso a partir de ideias diferentes.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Eixo 5',
'O país A foi invadido pelo país B, levando a um genocídio orquestrado com declaração do governante de B, condenado pelo Tribunal Penal Internacional. Uma família de A (pai, mãe e dois filhos) escapou para o Brasil. Destituído e com medo de represálias, o governante de B busca asilo no Brasil. Em relação a essa situação hipotética, é correto afirmar que:',
'',
'',
'["o governante do país B, em caso de anuência do presidente da República, poderá receber o asilo político;","a família perde imediatamente o direito de solicitar proteção ao Estado brasileiro em caso de um eventual cessar-fogo;","o governante do país B, em caso de decisão favorável do Congresso, por maioria absoluta, poderá receber o asilo político;","a família, ao deixar o país A devido à guerra, tornou-se apátrida e poderá solicitar a nacionalidade brasileira, caso reconhecida sua condição;","a família, ao deixar o país A devido à guerra, tornou-se refugiada, e o pai tem direito a carteira de trabalho, caso reconhecida sua condição."]'::jsonb,
'E',
'A família que fugiu de guerra e perseguição enquadra-se na condição de refugiada (Lei 9.474/1997); reconhecida essa condição, o refugiado tem direito a documentos, incluindo a carteira de trabalho. O governante responsável por genocídio (crime contra a humanidade) não pode receber asilo político, e sair do país por guerra não gera apatridia.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Eixo 5',
'Uma empresa automotora A procurou garantir a inclusão social ao contratar mulheres como secretárias e trabalhadores negros para a fábrica. As mulheres negras, no entanto, contestaram que nenhuma delas foi contratada nem para os cargos de secretária nem para o trabalho na fábrica. Considerando a questão das desigualdades sociais, é correto afirmar que:',
'',
'',
'["a empresa A foi inclusiva, porque combateu de modo eficiente as desigualdades de raça e gênero;","a empresa A não levou em consideração a discriminação interseccional, resultante da combinação da opressão de raça e de gênero;","a dificuldade das mulheres negras em se inserir na empresa A se deve à estratificação vertical, dada a origem social diferente dos grupos sociais envolvidos;","a empresa A não levou em consideração o racismo estrutural, segundo o qual o racismo vem da percepção subjetiva do indivíduo sobre o racismo sofrido;","a dificuldade das mulheres negras em se inserir na empresa A é decorrente da diferença de classe social entre as mulheres brancas e as mulheres negras."]'::jsonb,
'B',
'Ao contratar mulheres (para secretárias) e negros (para a fábrica) separadamente, a empresa não contemplou as mulheres negras, evidenciando a discriminação interseccional, que resulta da combinação simultânea das opressões de raça e gênero — categoria não capturada quando se tratam os eixos isoladamente.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Eixo 5',
'O aumento da participação social no Brasil reflete um tecido social mais denso desde os anos 1970, com os novos movimentos sociais. A Constituição de 1988 consolidou esse processo, valorizando a participação da sociedade no Estado. Sobre a participação social no Brasil, é correto afirmar que:',
'',
'',
'["a Constituição Federal não se preocupou em incluir os movimentos sociais ou suas demandas e, por consequência, não temos mecanismos de participação social;","os novos movimentos sociais foram importantes na década de 1970, mas deixaram de ser um vetor de participação social após a promulgação da Constituição Cidadã;","os conselhos de políticas públicas são um mecanismo de participação social instituído, tanto em âmbito federal como em âmbito local, a partir do qual a sociedade civil pode exercer controle social;","o plebiscito é uma das formas de participação social instituídas, na qual a população é consultada a ratificar ou a rejeitar proposta de um ato legislativo, posteriormente à sua existência;","em que pese a relevância dos mecanismos de participação social para a Constituição de 1988, não houve um crescimento significativo no número de conselhos desde a redemocratização até os dias de hoje."]'::jsonb,
'C',
'Os conselhos de políticas públicas, existentes nas esferas federal, estadual e municipal, são mecanismo institucionalizado de participação social pelo qual a sociedade civil exerce controle social. O plebiscito é consulta prévia (não posterior), e houve, sim, expansão dos conselhos após a redemocratização.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Eixo 5',
'A empresa X, com sede no Canadá, pretende criar um sistema universal de identificação a partir do cadastro da biometria da íris, gerando um identificador digital único associado a um token, sem exigir nome ou CPF. Instalou estandes em cidades brasileiras. Na política de privacidade, afirmava que a coleta ocorreria para "fins de identificação e autenticação, sem prejuízo de utilização dos dados para outras finalidades de interesse da empresa X". Diante do cenário, é correto afirmar que o tratamento de dados pessoais realizado pela empresa X:',
'',
'',
'["não está sujeito à Lei Geral de Proteção de Dados brasileira (LGPD), pois o país sede da empresa é o Canadá;","está em conformidade com a Lei Geral de Proteção de Dados brasileira (LGPD), pois é realizado mediante o consentimento do titular;","não está em conformidade com a Lei Geral de Proteção de Dados brasileira (LGPD), pois o tratamento de dados pessoais biométricos é vedado pela LGPD;","não está em conformidade com a Lei Geral de Proteção de Dados brasileira (LGPD), pois o consentimento não é obtido de forma específica e destacada;","está em conformidade com a Lei Geral de Proteção de Dados brasileira (LGPD), pois, como não há exigência de apresentação do nome ou CPF, a informação coletada não pode ser relacionada a pessoa natural identificada ou identificável."]'::jsonb,
'D',
'A LGPD aplica-se por o tratamento ocorrer em território nacional (coleta em estandes no Brasil). O consentimento para dados sensíveis (biometria) deve ser específico e destacado para finalidades determinadas; a cláusula genérica de uso para "outras finalidades de interesse da empresa" viola a LGPD, tornando o tratamento não conforme.'
from public.exams where slug = 'cnu-2025-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
