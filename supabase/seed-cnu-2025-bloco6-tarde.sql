-- Seed: CNU 2025 (2a Edicao) - Bloco 6 (Desenvolvimento Socioeconomico) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-E 32-E 33-C 34-E 35-E 36-E 37-A 38-C 39-E 40-C
-- 41-D 42-D 43-A 44-E 45-D 46-C 47-A 48-D 49-C 50-E
-- 51-E 52-D 53-A 54-B 55-B 56-C 57-C 58-B 59-E 60-D
-- 61-E 62-D 63-A 64-D 65-D 66-C 67-C 68-C 69-D 70-B
-- 71-B 72-D 73-A 74-C 75-D 76-A 77-E 78-E 79-D 80-D
-- 81-A 82-C 83-D 84-A 85-C 86-C 87-E 88-A 89-A 90-D

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco6-tarde', 'CNU 2025 (2ª Edição) - Bloco 6 (Tarde) - Desenvolvimento Socioeconômico', 'cnu', '2025')
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
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece diretrizes a serem observadas na garantia do direito fundamental de acesso à informação. A respeito dessas diretrizes, é correto afirmar que, entre elas, estão:',
'',
'',
'["o sigilo como regra geral e a publicidade como exceção, a divulgação apenas mediante requerimento e o fomento da cultura do segredo na Administração;","a observância da publicidade como preceito geral e do sigilo como exceção, a divulgação de informações de interesse público independentemente de solicitações e o desenvolvimento do controle social da Administração Pública;","a divulgação de informações somente após autorização judicial, a utilização de meios físicos exclusivamente e a restrição do controle social;","o sigilo das informações pessoais de agentes públicos sobre remuneração, a cobrança de taxas para acesso e o uso restrito de meios de comunicação;","a divulgação apenas de informações classificadas, o acesso exclusivo por servidores e a vedação à transparência ativa."]'::jsonb,
'C',
'A LAI adota a publicidade como preceito geral e o sigilo como exceção, prevê a divulgação de informações de interesse público independentemente de solicitação (transparência ativa) e o desenvolvimento do controle social da Administração Pública.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público, teve indeferido um requerimento administrativo por decisão de autoridade competente. Inconformado, pretende que a própria autoridade que proferiu a decisão a reaprecie, apresentando novos argumentos. No âmbito do processo administrativo federal (Lei nº 9.784/1999), o instrumento adequado é:',
'',
'',
'["o mandado de segurança, dirigido ao Poder Judiciário;","a reclamação, dirigida ao órgão de controle externo;","o pedido de reconsideração, dirigido à própria autoridade que proferiu a decisão;","a representação, dirigida ao Ministério Público;","a denúncia, dirigida à corregedoria."]'::jsonb,
'C',
'O pedido de reconsideração é o instrumento pelo qual o interessado solicita à própria autoridade que proferiu a decisão a sua reapreciação, sem prejuízo do recurso à autoridade superior.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'O Portal da Transparência do Governo Federal consolida informações de interesse público para consulta da sociedade. Entre as informações disponibilizadas no Portal, incluem-se:',
'',
'',
'["a remuneração de servidores públicos, as sanções aplicadas a empresas e pessoas e os dados sobre filiação sindical dos servidores;","exclusivamente dados agregados de despesas, vedada a identificação de beneficiários;","apenas informações classificadas como sigilosas mediante prévia autorização;","somente dados relativos ao Poder Executivo municipal;","dados pessoais sensíveis de cidadãos beneficiários de programas sociais, com identificação completa."]'::jsonb,
'C',
'O Portal da Transparência divulga, entre outras, a remuneração de servidores públicos e as sanções aplicadas a empresas e pessoas (como as registradas no CEIS/CNEP), promovendo a transparência ativa e o controle social.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No contexto da integridade pública, um servidor identifica que uma situação pessoal sua pode influenciar indevidamente o desempenho de suas funções, colocando em risco a imparcialidade das decisões administrativas. Essa situação caracteriza:',
'',
'',
'["um conflito de interesses, que deve ser prevenido e, se ocorrer, comunicado e tratado conforme a legislação;","uma hipótese de improbidade administrativa automática, independentemente de qualquer providência;","uma situação irrelevante do ponto de vista ético, desde que não haja prejuízo financeiro;","uma causa de nulidade de todos os atos praticados pelo órgão;","um ato de corrupção consumado, sujeito a sanção penal imediata."]'::jsonb,
'A',
'A influência indevida de interesse privado sobre o exercício da função pública configura conflito de interesses (Lei nº 12.813/2013), que deve ser prevenido, comunicado e tratado, não se confundindo automaticamente com improbidade ou corrupção.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 dispõe sobre a política de governança da administração pública federal direta, autárquica e fundacional. Entre os princípios da governança pública estabelecidos nesse decreto, encontra-se:',
'',
'',
'["a centralização das decisões em órgão único de controle;","a vedação à participação social no processo decisório;","o sigilo como regra na condução das políticas públicas;","a desoneração da alta administração quanto à prestação de contas;","a capacidade de resposta, a integridade, a confiabilidade, a transparência e a prestação de contas e responsabilidade (accountability)."]'::jsonb,
'E',
'O Decreto nº 9.203/2017 estabelece como princípios da governança pública, entre outros, a capacidade de resposta, a integridade, a confiabilidade, a melhoria regulatória, a prestação de contas e responsabilidade (accountability) e a transparência.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, servidora pública, foi designada para planejar um evento aberto ao público. Preocupada com a inclusão de pessoas com deficiência, buscou garantir condições de acessibilidade. À luz da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (incorporada com status de emenda constitucional) e da Lei Brasileira de Inclusão, é correto afirmar que:',
'',
'',
'["a acessibilidade restringe-se à eliminação de barreiras arquitetônicas, não abrangendo barreiras comunicacionais ou atitudinais;","a acessibilidade é faculdade do organizador, exigível apenas mediante solicitação formal prévia da pessoa com deficiência;","a acessibilidade deve ser assegurada apenas em prédios públicos, não em eventos;","a acessibilidade é direito que se realiza somente após a ocorrência de barreira concreta;","a acessibilidade é condição que deve ser assegurada de forma a eliminar barreiras e permitir, em igualdade de oportunidades, a participação das pessoas com deficiência."]'::jsonb,
'E',
'A acessibilidade, segundo a Convenção e a Lei Brasileira de Inclusão (Lei nº 13.146/2015), é a possibilidade de utilização com segurança e autonomia de espaços, serviços e informações, eliminando barreiras (arquitetônicas, comunicacionais, atitudinais, etc.) para assegurar a participação em igualdade de oportunidades.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transgênero, deseja retificar seu prenome e gênero no registro civil para que reflitam sua identidade de gênero. Conforme entendimento consolidado do Supremo Tribunal Federal, a retificação:',
'',
'',
'["depende de autorização judicial precedida de cirurgia de redesignação sexual;","depende de laudos médicos e psicológicos que comprovem o transtorno de identidade;","é vedada no ordenamento jurídico brasileiro;","pode ser feita diretamente no cartório (registro civil), independentemente de cirurgia, laudos ou autorização judicial;","somente é possível após decisão judicial transitada em julgado em todos os casos."]'::jsonb,
'D',
'O STF (ADI 4275) reconheceu o direito das pessoas trans à alteração de prenome e gênero diretamente no registro civil, independentemente de cirurgia de redesignação, laudos ou autorização judicial, com base na autonomia e dignidade da pessoa humana.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Determinada comunidade quilombola busca a titulação definitiva das terras que ocupa. Conforme o ordenamento jurídico brasileiro e o Decreto nº 4.887/2003, o processo de titulação das terras quilombolas envolve a atuação:',
'',
'',
'["exclusiva do Poder Judiciário, sem participação administrativa;","exclusiva dos Municípios onde se localizam as terras;","da Fundação Cultural Palmares, na certificação da comunidade, e do Incra, na identificação, demarcação e titulação das terras;","apenas de organizações não governamentais;","exclusiva do Ministério Público Federal."]'::jsonb,
'E',
'A certificação (autodefinição) das comunidades quilombolas cabe à Fundação Cultural Palmares, enquanto a identificação, reconhecimento, delimitação, demarcação e titulação das terras compete ao Incra (Decreto nº 4.887/2003). A alternativa que descreve corretamente essa divisão é a de letra E.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana, mulher negra com deficiência, relata ter sofrido tratamento discriminatório que combina preconceitos de gênero, raça e deficiência de forma simultânea e indissociável. Esse fenômeno, em que diferentes marcadores sociais se sobrepõem agravando a discriminação, é conhecido como:',
'',
'',
'["discriminação indireta exclusivamente;","discriminação positiva;","ação afirmativa;","neutralidade racial;","discriminação múltipla ou interseccional."]'::jsonb,
'E',
'A sobreposição de diferentes marcadores sociais (gênero, raça, deficiência) que agrava a discriminação de forma simultânea e indissociável caracteriza a discriminação múltipla ou interseccional.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela sofre, por parte de seu companheiro Flávio, agressões físicas, ofensas constantes à sua autoestima e dignidade, além da destruição de seus bens pessoais. Conforme a Lei Maria da Penha (Lei nº 11.340/2006), as condutas descritas configuram, respectivamente, violência:',
'',
'',
'["moral, sexual e física;","física, moral e sexual;","física, psicológica e patrimonial;","psicológica, sexual e moral;","patrimonial, física e sexual."]'::jsonb,
'C',
'As agressões físicas configuram violência física; as ofensas à autoestima e dignidade, violência psicológica; e a destruição de bens pessoais, violência patrimonial — conforme as formas de violência doméstica previstas na Lei Maria da Penha.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Os sistemas estruturantes da Administração Pública federal organizam atividades comuns a diversos órgãos, como gestão de pessoal, orçamento e logística, por meio de plataformas e normas padronizadas. Sobre esses sistemas, é correto afirmar que:',
'',
'',
'["cada órgão deve desenvolver seus próprios sistemas isolados, sem padronização;","visam padronizar e integrar atividades comuns por meio de órgão central e órgãos setoriais, utilizando plataformas como as de gestão de pessoal;","são restritos ao Poder Legislativo;","têm por finalidade exclusiva a arrecadação tributária;","foram extintos pela política de governança digital."]'::jsonb,
'B',
'Os sistemas estruturantes (como os de pessoal civil - SIPEC, de administração financeira, de organização e inovação institucional, etc.) organizam-se por meio de órgão central e órgãos setoriais e padronizam atividades comuns, apoiados por plataformas, como as de gestão de pessoal.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'Determinado órgão pretende executar um projeto cuja realização ultrapassa um exercício financeiro, com despesas distribuídas ao longo de vários anos. No âmbito do planejamento e orçamento público, as despesas desse projeto devem estar previstas:',
'',
'',
'["na Lei Orçamentária Anual (LOA), de modo que as despesas de cada exercício constem do respectivo orçamento anual, em consonância com o plano plurianual;","exclusivamente no plano plurianual, dispensando-se a previsão na LOA;","somente na Lei de Diretrizes Orçamentárias;","em decreto autônomo do chefe do Executivo, independentemente de lei;","em resolução do Tribunal de Contas."]'::jsonb,
'A',
'As despesas de projetos plurianuais devem constar da Lei Orçamentária Anual de cada exercício, em consonância com o plano plurianual (PPA), de modo que cada orçamento anual contemple a parcela a ser executada no respectivo exercício.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Em ano eleitoral, determinado órgão público pretende realizar campanha publicitária de caráter informativo, educativo ou de orientação social, sem conter nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades. Conforme a Constituição Federal e a legislação eleitoral, essa campanha:',
'',
'',
'["é absolutamente vedada em qualquer hipótese durante o ano eleitoral;","somente pode ser realizada mediante autorização do Tribunal Superior Eleitoral;","pode ser realizada, pois a publicidade de caráter informativo, educativo ou de orientação social é admitida, vedada a promoção pessoal;","depende de prévia aprovação em plebiscito;","é permitida apenas se contiver os nomes das autoridades responsáveis."]'::jsonb,
'C',
'A publicidade dos órgãos públicos deve ter caráter informativo, educativo ou de orientação social, sendo vedada a promoção pessoal de autoridades (art. 37, §1º, CF). Observadas essas condições e as restrições eleitorais, a campanha pode ser realizada.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A Emenda Constitucional nº 19/1998 promoveu a reforma administrativa do Estado brasileiro. Entre suas disposições relativas aos cargos em comissão e funções de confiança, estabeleceu-se que:',
'',
'',
'["todos os cargos em comissão devem ser ocupados por servidores de carreira, sem exceção;","os cargos em comissão e as funções de confiança podem ser livremente criados por decreto;","as funções de confiança podem ser exercidas por qualquer pessoa, servidor ou não;","um percentual mínimo dos cargos em comissão será preenchido por servidores de carreira, nos casos e condições previstos em lei;","os cargos em comissão são destinados exclusivamente a atribuições técnicas permanentes."]'::jsonb,
'C',
'A EC nº 19/1998 determinou que as funções de confiança sejam exercidas exclusivamente por servidores ocupantes de cargo efetivo e que os cargos em comissão sejam preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei (art. 37, V, CF).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'A sustentabilidade da dívida pública é tema central das finanças públicas. Para assegurá-la, busca-se, entre outras medidas, a convergência das despesas e receitas públicas a um patamar que estabilize ou reduza a relação entre dívida e produto interno bruto. A respeito dessa sustentabilidade, é correto afirmar que:',
'',
'',
'["o aumento ilimitado do endividamento é indiferente à sustentabilidade fiscal;","a sustentabilidade exige a trajetória de convergência das contas públicas, de modo a estabilizar ou reduzir a relação dívida/PIB;","a sustentabilidade é incompatível com qualquer regra fiscal;","a sustentabilidade depende exclusivamente do aumento da carga tributária;","a dívida pública não guarda relação com o produto interno bruto."]'::jsonb,
'B',
'A sustentabilidade da dívida pública pressupõe uma trajetória de convergência das receitas e despesas que estabilize ou reduza a relação dívida/PIB, evitando o crescimento explosivo do endividamento.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'O teletrabalho vem sendo adotado na Administração Pública como modalidade de execução de atividades fora das dependências do órgão. Para sua implementação, é necessário observar, entre outros requisitos:',
'',
'',
'["a vedação absoluta a qualquer forma de controle de resultados;","a compatibilidade das atividades com a modalidade e a ausência de prejuízo ao funcionamento do serviço e ao atendimento ao público;","a obrigatoriedade de que todos os servidores do órgão adiram ao regime;","a dispensa de metas e indicadores de desempenho;","a impossibilidade de retorno ao trabalho presencial."]'::jsonb,
'C',
'A adoção do teletrabalho requer que as atividades sejam compatíveis com a modalidade e que não haja prejuízo ao funcionamento do serviço e ao atendimento ao público, com estabelecimento de metas e controle de resultados.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio, servidor público, exerce parte de sua jornada presencialmente, nas dependências do órgão, e parte remotamente, de sua residência, conforme escala previamente definida. Essa forma de organização do trabalho, que combina trabalho presencial e remoto, é denominada:',
'',
'',
'["modalidade híbrida (ou semipresencial);","teletrabalho integral;","trabalho presencial exclusivo;","regime de sobreaviso;","jornada reduzida."]'::jsonb,
'A',
'A combinação de trabalho presencial e remoto, conforme escala, caracteriza a modalidade híbrida (ou semipresencial) de teletrabalho.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'No uso de ferramentas de inteligência artificial generativa, o usuário fornece uma instrução textual que orienta o modelo sobre a tarefa a ser executada e o resultado esperado. Essa instrução fornecida ao modelo é denominada:',
'',
'',
'["prompt;","token de segurança;","firmware;","protocolo de rede;","dataset de treinamento."]'::jsonb,
'A',
'A instrução textual fornecida pelo usuário para orientar um modelo de inteligência artificial generativa quanto à tarefa e ao resultado esperado é chamada de prompt.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José utiliza, em seu trabalho, um software que automatiza tarefas repetitivas em sistemas por meio de um robô que, acionado pelo próprio servidor, executa passos predefinidos na interface dos aplicativos, auxiliando o usuário sem substituí-lo totalmente. Essa tecnologia é conhecida como automação robótica de processos (RPA) na modalidade:',
'',
'',
'["robô autônomo não supervisionado;","robô assistido (attended);","inteligência artificial geral;","computação quântica;","blockchain."]'::jsonb,
'B',
'Quando o robô de RPA é acionado pelo próprio usuário e executa passos predefinidos auxiliando-o (sem substituí-lo totalmente), trata-se da modalidade de RPA assistido (attended automation).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro, gestor público, pretende utilizar um sistema de inteligência artificial para apoiar a tomada de decisões administrativas. Ciente dos riscos envolvidos (como vieses e erros), deve observar que, no uso responsável da IA no setor público:',
'',
'',
'["a decisão final e a responsabilidade por ela devem ser assumidas pelo próprio gestor humano, cabendo à IA papel de apoio;","a responsabilidade pela decisão transfere-se integralmente ao sistema de IA;","o uso de IA dispensa qualquer supervisão humana;","os vieses algorítmicos são irrelevantes para a decisão administrativa;","a IA deve substituir completamente o julgamento humano para garantir imparcialidade."]'::jsonb,
'C',
'No uso responsável de IA no setor público, o sistema atua como apoio à decisão, mas a decisão final e a responsabilidade por ela permanecem com o gestor humano, que deve exercer supervisão e mitigar vieses e erros.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;



-- ============================================================
-- CONHECIMENTOS ESPECIFICOS (Questoes 31 a 90)
-- ============================================================

-- Eixo Tematico 1 - Desenvolvimento, Sustentabilidade e Inclusao (31 a 42)

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Desenvolvimento, Sustentabilidade e Inclusão',
'A tese estruturalista de Raúl Prebisch, difundida pela Comissão Econômica para a América Latina e o Caribe (CEPAL), durante a década de 1950, foi considerada uma importante contribuição ao pensamento latino-americano. A alternativa que se relaciona corretamente à tese estruturalista é a seguinte:',
'',
'',
'["a deterioração dos termos de troca era explicada pelas exportações de produtos primários;","criou-se um objeto de análise importado do debate que se fazia nos grandes centros de desenvolvimento industrial;","as economias centrais transferiam renda aos países em desenvolvimento ao importar matérias-primas e exportar bens industriais;","no governo de Juscelino Kubitschek, a indústria automobilística nacional se transformou e colocou o Brasil como um país central, comparativamente aos vizinhos latino-americanos;","procurava-se compreender a dinâmica do desenvolvimento em economias de industrialização tardia, definindo-se relações de dependência entre os países periféricos e os países centrais."]'::jsonb,
'E',
'A tese estruturalista cepalina de Prebisch buscava compreender a dinâmica do desenvolvimento em economias de industrialização tardia, estabelecendo o esquema centro-periferia, no qual os países periféricos mantêm relação de dependência com os países centrais. As demais alternativas distorcem o conteúdo da tese (os termos de troca se deterioravam contra a periferia, não eram explicados simplesmente pelas exportações primárias; o objeto de análise era próprio, não importado; a renda era transferida da periferia para o centro).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Desenvolvimento, Sustentabilidade e Inclusão',
'"Formação econômica do Brasil" é um livro clássico, escrito por Celso Furtado, que tratou de temas relativos ao desenvolvimento econômico do país desde a colonização até o século XX. O pensamento do autor, no que tange à economia de transição para um sistema industrial, é corretamente retratado na seguinte alternativa:',
'',
'',
'["a queima e a destruição dos estoques de café, no Convênio de Taubaté, permitiam uma política de valorização do produto;","a queima do excedente de café impunha, como consequência lógica, uma redução dos investimentos agrícolas e da colheita futura de café;","o preço do café era condicionado fundamentalmente pelos fatores que prevaleciam do lado da demanda, notadamente na década de 1930;","a baixa brusca do preço internacional do café após a crise de 1929 e a falência do sistema de conversibilidade acarretaram a alta do valor externo da moeda;","a política de destruição de parte da produção cafeeira evitou contração da renda do setor exportador, reduzindo os efeitos do multiplicador do desemprego no resto da economia."]'::jsonb,
'E',
'Para Furtado, a política de defesa do café (compra e destruição de estoques) funcionou como um mecanismo keynesiano avant la lettre: ao sustentar a renda do setor exportador, evitou-se a contração mais profunda da economia, reduzindo os efeitos do multiplicador do desemprego sobre o restante do sistema econômico. Foi essa manutenção da renda interna que criou condições para o deslocamento do centro dinâmico para o mercado interno.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Desenvolvimento, Sustentabilidade e Inclusão',
'O sistema de bem-estar social no Brasil, nos moldes da Constituição Federal de 1988, incluiu a previdência social. Em relação ao regime de previdência social no país, é correto afirmar que:',
'',
'',
'["a previdência social não atenderá a proteção ao trabalhador em situação de desemprego involuntário;","a previdência social é organizada sob a forma do Regime Geral de Previdência Social (RGPS), de caráter contributivo e de filiação facultativa;","nenhum benefício que substitua o salário de contribuição ou o rendimento do trabalho do segurado terá valor mensal inferior ao salário mínimo;","os professores não podem mais se aposentar com tempo de contribuição menor do que outros trabalhadores, já que estresse, pressão para cumprir metas e exposição a doenças são consideradas condições inerentes ao trabalho contemporâneo;","a aposentadoria no RGPS é assegurada, nos termos da lei, para homens com idade de 55 anos e para mulheres com idade de 50 anos, nos casos de trabalhadores rurais e para os que exerçam suas atividades em regime de economia familiar, como produtor rural, garimpeiro e pescador artesanal."]'::jsonb,
'C',
'Nos termos do art. 201, §2º, da Constituição, nenhum benefício que substitua o salário de contribuição ou o rendimento do trabalho do segurado terá valor mensal inferior ao salário mínimo. A previdência atende sim o desemprego involuntário (A errada), o RGPS tem filiação obrigatória, não facultativa (B errada), professores mantêm aposentadoria com requisitos reduzidos (D errada) e as idades rurais são de 60 anos para homens e 55 para mulheres (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Com base nas diretrizes da educação brasileira, analise as afirmativas a seguir, considerando V para a(s) verdadeira(s) e F para a(s) falsa(s). ( ) As universidades gozam de autonomia didático-científica, administrativa, e de gestão financeira e patrimonial, buscando fazer ensino, pesquisa e extensão. ( ) Os municípios atuarão somente no ensino infantil, enquanto estados e o Distrito Federal atuarão prioritariamente no ensino fundamental e médio. ( ) O ensino religioso, de matrícula obrigatória, constitui disciplina dos horários regulares das escolas públicas de ensino fundamental. A sequência correta é:',
'',
'',
'["F, F, V;","F, V, V;","V, V, F;","V, F, V;","V, F, F."]'::jsonb,
'E',
'A primeira afirmativa é verdadeira (art. 207 da CF: autonomia didático-científica, administrativa e de gestão financeira e patrimonial, com indissociabilidade de ensino, pesquisa e extensão). A segunda é falsa: os municípios atuam prioritariamente no ensino fundamental e na educação infantil, não "somente" no infantil. A terceira é falsa: o ensino religioso é de matrícula facultativa (art. 210, §1º, da CF), e não obrigatória. Sequência V, F, F.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Com base na transição energética e no desenvolvimento econômico brasileiro, é correto afirmar que:',
'',
'',
'["o consumo de etanol na economia brasileira tornou-se a principal fonte de energia hoje consumida no país;","em 2020, o consumo americano de energia renovável, em valores absolutos, foi maior do que o consumo brasileiro;","entre 2010 e 2020, o consumo de petróleo no mundo diminuiu, sinalizando para a transição energética global, com a busca de fontes renováveis de energia;","a energia nuclear é considerada uma fonte limpa, já que não emite gases de efeito estufa na atmosfera; portanto, é uma fonte renovável e muito utilizada nos países desenvolvidos;","em um comparativo com Alemanha, França e Estados Unidos, em termos percentuais, o Brasil tem a matriz energética mais limpa, ou seja, concentrada em fontes renováveis de energia."]'::jsonb,
'E',
'Em termos percentuais, a matriz energética brasileira é a mais limpa quando comparada à de Alemanha, França e Estados Unidos, por sua elevada participação de fontes renováveis (hidrelétrica, biomassa, etanol, eólica e solar). O etanol não é a principal fonte do país (A errada); em valores absolutos o Brasil consome muita energia renovável (B errada); o consumo mundial de petróleo cresceu nesse período (C errada); e a energia nuclear, embora de baixa emissão de GEE, é fonte não renovável (D errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Lançada em 1948, a Comissão Econômica para a América Latina e o Caribe (Cepal) representou um dos raros momentos em que os países latino-americanos se articularam em torno de uma visão comum de desenvolvimento. Contrapondo-se ao pensamento econômico liberal dominante, a Cepal formulou uma escola de pensamento desenvolvimentista que enfatizava o papel ativo do Estado e propunha a industrialização como eixo central da estratégia de crescimento. Segundo a teoria cepalina, é correto afirmar que:',
'',
'',
'["a principal causa do subdesenvolvimento latino-americano era o baixo nível de poupança interna, o que exigia a atração de capital estrangeiro como forma de iniciar o processo de industrialização;","os termos de troca da periferia eram naturalmente favoráveis, dado que os produtos primários se valorizavam com maior rapidez do que os bens manufaturados no comércio internacional;","o subdesenvolvimento latino-americano era uma etapa transitória do desenvolvimento econômico, causada por deficiências institucionais internas e superáveis por meio da liberalização comercial;","a especialização em produtos primários permitiu à América Latina acompanhar o ritmo de incorporação de progresso técnico dos países industrializados, elevando a produtividade do trabalho de forma contínua;","a inserção primário-exportadora da América Latina gerou estruturas econômicas pouco integradas onde o setor dinâmico de exportação de produtos primários não conseguiu difundir progresso técnico para o restante da economia, limitando o crescimento dos salários reais e a absorção de mão de obra."]'::jsonb,
'E',
'Para a Cepal, a inserção primário-exportadora da periferia gerou estruturas heterogêneas e pouco integradas, nas quais o setor exportador dinâmico não difundia progresso técnico para o conjunto da economia, limitando o crescimento dos salários reais e a absorção de mão de obra - fundamento do conceito de heterogeneidade estrutural. As demais invertem o diagnóstico cepalino, que apontava deterioração (e não melhora) dos termos de troca e defendia industrialização por substituição, não liberalização.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Ao longo do século XX, países em desenvolvimento adotaram diferentes estratégias de crescimento industrial, como a industrialização por substituição das importações (ISI) e o modelo de crescimento orientado às exportações (export-led growth). Sobre essas estratégias, é correto afirmar que:',
'',
'',
'["no crescimento liderado pelas exportações há uma relação direta entre desempenho do setor exportador e o desenvolvimento industrial mais abrangente;","a ISI permite aos países que a adotam se beneficiarem de suas vantagens comparativas, internalizarem processos e exporem suas indústrias à competição internacional, promovendo inovação e eficiência;","no pós-guerra, países em desenvolvimento do leste asiático adotaram a ISI, priorizando setores de alta tecnologia e abrindo suas economias à concorrência estrangeira desde o início do processo de industrialização;","o crescimento liderado pelas exportações, adotado por países latino-americanos no pós-guerra, baseava-se na ideia de que a industrialização exigiria intervenção estatal para superar os efeitos negativos do livre-comércio e da deterioração dos termos de troca;","o crescimento liderado pelas exportações na América Latina orientou-se pela crença cepalina de que a industrialização interna deveria preceder qualquer inserção competitiva no comércio internacional, priorizando inicialmente bens de consumo não duráveis para posterior diversificação exportadora."]'::jsonb,
'A',
'No modelo de crescimento liderado pelas exportações (export-led growth), adotado notadamente pelos tigres asiáticos, há relação direta entre o desempenho do setor exportador e o desenvolvimento industrial mais amplo, pois a competição externa estimula ganhos de produtividade e escala que se difundem pela economia. As demais confundem as características da ISI (que protegia o mercado interno da concorrência) com as do export-led growth, ou atribuem a este último estratégias cepalinas de substituição de importações.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Desenvolvimento, Sustentabilidade e Inclusão',
'A partir da década de 1930, o crescimento industrial no Brasil ganhou força e diversificação, iniciando um processo aprofundado de substituição de importações (PSI) que se estenderia por aproximadamente cinquenta anos. No Brasil, o processo de substituição de importações:',
'',
'',
'["se encerrou com a primeira crise do petróleo;","foi marcado pelo fim da proteção ao setor agroexportador;","teve sua origem derivada da crise do setor cafeeiro e da crise de 1929;","levou ao desenvolvimento de um setor industrial competitivo;","teve ampla participação do setor privado e redução da participação estatal na economia."]'::jsonb,
'C',
'O processo de substituição de importações (PSI) no Brasil teve origem na crise do setor cafeeiro combinada com a crise mundial de 1929, que reduziu drasticamente a capacidade de importar e tornou vantajoso produzir internamente o que antes era importado. O PSI não se encerrou com a 1ª crise do petróleo (A errada), contou com forte participação do Estado (D e E erradas) e não resultou em uma indústria plenamente competitiva internacionalmente (D errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Considerando os séculos XIX e XX em conjunto, o período 1950-1973 destaca-se como o de mais rápido crescimento econômico já registrado entre as economias capitalistas avançadas. Na Europa, esse período ficou conhecido como Era de Ouro. O continente emergiu da Segunda Guerra Mundial econômica e socialmente devastado, mas sua recuperação foi rápida. Comparando o crescimento econômico dos países nesse período, nota-se que:',
'',
'',
'["os países europeus cresceram a taxas similares, não havendo grandes diferenças entre eles;","apesar do forte crescimento, não houve redução do abismo existente entre as economias europeias e norte-americana;","os países do leste europeu, sob influência soviética, apresentaram crescimento superior ao dos países da Europa ocidental;","o Reino Unido teve o melhor desempenho dentre as nações desenvolvidas, retomando seu protagonismo no cenário econômico e comercial mundial;","o crescimento observado na Europa ocidental pode ser creditado à combinação entre aprofundamento do capital, crescimento da produtividade total dos fatores e pactos sociais."]'::jsonb,
'E',
'O crescimento da Era de Ouro (1950-1973) na Europa ocidental resultou da combinação de aprofundamento do capital (forte investimento), elevação da produtividade total dos fatores (incorporação de tecnologia e catching-up) e pactos sociais que garantiam estabilidade institucional e distributiva. As demais são incorretas: houve diferenças de desempenho entre países, redução do hiato em relação aos EUA (convergência) e o Reino Unido teve desempenho relativamente modesto.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Segundo o Programa das Nações Unidas para o Meio Ambiente (PNUMA), o mundo enfrenta três grandes crises ambientais interconectadas: mudanças climáticas, perda de natureza e de biodiversidade, e aumento da poluição e dos resíduos. A adoção de uma Economia Circular representa a transição para um sistema econômico de produção e consumo sustentáveis. Considerando o trecho, é correto afirmar que:',
'',
'',
'["um exemplo de Economia Circular é a produção de energia a partir da queima de resíduos urbanos e industriais;","o poder público pode atuar no incentivo à Economia Circular ao criar políticas que incentivem o uso de matéria-prima não renovável para a produção de bens de consumo duráveis;","a Economia Circular visa a criar um sistema de ciclo fechado, em que resíduos são transformados em insumos produtivos por meio da reutilização, reciclagem e valorização energética;","a Economia Circular relega para segundo plano aspectos de justiça social, pois tende a priorizar ganhos ambientais e econômicos derivados da reciclagem e do reuso de materiais;","o setor privado na Economia Circular é o responsável por assegurar que seus produtos sejam reintegrados à economia, minimizando o volume de resíduos sólidos produzidos em seus processos."]'::jsonb,
'C',
'A Economia Circular busca criar um sistema de ciclo fechado, no qual os resíduos deixam de ser descartados e passam a ser reincorporados como insumos produtivos por meio de reutilização, reciclagem e valorização energética, reduzindo a extração de recursos virgens. A queima pura de resíduos não é exemplo típico (A), o incentivo deve priorizar matéria-prima renovável (B), a dimensão social é parte integrante do conceito (D) e a responsabilidade é compartilhada entre diversos atores, não exclusiva do setor privado (E).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Os Objetivos de Desenvolvimento Sustentável (ODS), também conhecidos como Objetivos Globais, foram adotados pelos países-membros das Nações Unidas em 2015 como um apelo universal à ação para acabar com a pobreza, proteger o planeta e garantir que até 2030 todas as pessoas desfrutem de paz e prosperidade. Dentre as metas dos ODS e da Agenda 2030, está:',
'',
'',
'["desregulamentar o mercado, segundo o ODS 10 - Redução das Desigualdades;","garantir a igualdade étnico-racial, segundo o ODS 5 - Igualdade de Gênero;","garantir acesso a água potável e saneamento a pelo menos 40% da população mundial;","promover o desenvolvimento sustentável em três dimensões: econômica, social e ambiental;","realizar investimentos em energia nuclear para melhorar a produtividade energética e garantir energia a todos."]'::jsonb,
'D',
'A Agenda 2030 e os ODS estruturam-se sobre três dimensões integradas do desenvolvimento sustentável: econômica, social e ambiental. As demais estão erradas: o ODS 10 não propõe desregulamentação; o ODS 5 trata de igualdade de gênero (não étnico-racial); o ODS 6 busca acesso universal (e não apenas 40%) à água e saneamento; e o ODS 7 trata de energia limpa e acessível, sem priorizar a energia nuclear.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Desenvolvimento, Sustentabilidade e Inclusão',
'Na 21ª Conferência das Partes (COP21) da Convenção-Quadro das Nações Unidas sobre a Mudança do Clima (UNFCCC), realizada em Paris, foi adotado o Acordo de Paris, com o objetivo de intensificar a resposta global às mudanças climáticas. Sobre as medidas de mitigação do aquecimento global, o Acordo de Paris estabelece que:',
'',
'',
'["os países devem seguir as medidas acordadas na COP21 para atingir as metas de redução de emissão de GEE;","os países em desenvolvimento ficam isentos de medidas de redução da emissão de GEE que impeçam seu desenvolvimento;","seus signatários se comprometam a manter o aquecimento global abaixo de 3°C acima dos níveis pré-industriais, com esforços para limitá-lo a 2,5°C;","os países desenvolvidos devem continuar a assumir a dianteira, adotando metas de redução de emissões absolutas para o conjunto da economia;","países desenvolvidos devem continuar a fortalecer seus esforços de mitigação, e ser encorajados a progressivamente transitar para metas de redução ou de limitação de emissões para o conjunto da economia, à luz das diferentes circunstâncias nacionais."]'::jsonb,
'D',
'O Acordo de Paris (art. 4º) determina que os países desenvolvidos devem continuar assumindo a dianteira, adotando metas absolutas de redução de emissões para o conjunto da economia, enquanto os países em desenvolvimento são encorajados a transitar progressivamente para esse tipo de meta. A meta de temperatura é manter o aquecimento bem abaixo de 2°C, com esforços para 1,5°C (C errada), e as NDCs são determinadas nacionalmente, não impostas pela COP (A errada); nenhum país fica totalmente isento (B errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- Eixo Tematico 2 - Desenvolvimento Produtivo e Regional no Brasil (43 a 54)

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Desenvolvimento Produtivo e Regional no Brasil',
'A tabela ao lado apresenta dados hipotéticos de três cultivos: preço (R$/ton), produtividade (ton/ha), custos (R$/ton) e frete (R$ por tonelada por km rodado). Com base na teoria de uso da terra de von Thünen, cada produtor escolhe o que produzir em cada localização, de modo a maximizar a renda locacional da terra. A partir das informações da tabela e da teoria locacional de von Thünen, analise as afirmativas, considerando V para a(s) verdadeira(s) e F para a(s) falsa(s). ( ) A qualidade (propriedades físicas) e a fertilidade do solo são crescentes quanto mais próximas ambas estiverem do centro de mercado. ( ) O raio máximo do último anel de von Thünen se dará a uma distância de 75 km do centro de mercado. ( ) A renda da terra é o que sobra após subtrairmos da produção de um hectare os custos produtivos e os gastos de transporte, ignorando o custo do hectare de terra. A sequência correta é:',
'Dados hipotéticos de três atividades agrícolas no Brasil (von Thünen):
Cultivo | Preço (R$/ton) | Produtividade (ton/ha) | Custos (R$/ton) | Frete (R$/ton.km)
Soja    | 10 | 4 | 5 | 0,10
Arroz   | 15 | 2 | 7 | 0,12
Milho   | 20 | 1 | 9 | 0,14',
'/cnu-2025-6-tarde-questao-43.png',
'["F, F, V;","F, V, V;","V, V, F;","V, F, V;","V, F, F."]'::jsonb,
'A',
'No modelo de von Thünen, a terra é considerada homogênea em fertilidade e qualidade física - a diferenciação locacional decorre apenas da distância ao mercado, não de o solo ser mais fértil perto do centro (1ª afirmativa FALSA). O cálculo da renda locacional de cada cultivo (receita por hectare menos custos de produção e de transporte) mostra que a soja, de maior renda líquida e menor frete, estende seu anel além de 75 km, de modo que o raio do último anel não é de 75 km (2ª afirmativa FALSA). A renda da terra é exatamente o excedente após subtrair custos produtivos e de transporte da produção de um hectare, ignorando o custo do hectare (3ª afirmativa VERDADEIRA). Sequência F, F, V.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Desenvolvimento Produtivo e Regional no Brasil',
'Corden e Neary (1982) foram os primeiros pesquisadores a estudar o fenômeno da doença holandesa. Com base no conhecimento sobre esse tema, é correto afirmar que:',
'',
'',
'["o aumento da rentabilidade do setor mais competitivo estaria condicionado à descoberta de novas reservas naturais, que ampliaria a oferta produtiva;","o modelo teórico para compreender a maldição dos recursos naturais era baseado em dois setores: o primário e a indústria;","o aumento do preço do gás gerou expansão substancial das receitas de exportação dos Países Baixos, o que causou desvalorização da moeda;","a doença holandesa, também chamada de maldição dos recursos naturais, estaria relacionada à redução de receitas do setor exportador de manufaturas, considerado o setor competitivo;","o modelo para compreender esse fenômeno era baseado em um setor competitivo (centrado na exploração de recursos naturais), um menos competitivo (indústria em geral); e um terceiro não exposto à concorrência internacional (serviços)."]'::jsonb,
'E',
'O modelo de Corden e Neary (1982) é tripartite: um setor em expansão (booming sector, ligado aos recursos naturais), um setor atrasado ou lagging (indústria/manufaturas exposta à concorrência internacional) e um setor não-comercializável (serviços, não exposto ao comércio externo). O boom de recursos naturais valoriza a moeda e prejudica o setor manufatureiro - daí o nome maldição dos recursos naturais. A alternativa B reduz indevidamente a dois setores; a C inverte o efeito cambial (o boom valoriza, não desvaloriza); a D e a A trocam qual é o setor competitivo.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Desenvolvimento Produtivo e Regional no Brasil',
'Com base na diversificação e na modernização produtiva do Brasil no século XX, é correto afirmar que:',
'',
'',
'["a depreciação do câmbio na segunda metade dos anos 1990 prejudicou o desempenho do setor industrial no país;","o Plano de Metas buscou acelerar o crescimento econômico do Brasil por meio de investimentos em setores estratégicos e com redução de barreiras tarifárias;","o II PND foi um importante plano de fomento à indústria de bens não duráveis e constituiu-se na última etapa do processo de substituição de importações;","\"carroça\" foi a metáfora utilizada por Fernando Collor, no início dos anos 1990, para enfatizar a necessidade da abertura de mercado e modernização do setor automotivo brasileiro;","a Petrobras, nos anos 1970, após os dois choques do petróleo, reduziu os seus investimentos na exploração offshore, o que prejudicou o desempenho tecnológico da firma na década seguinte."]'::jsonb,
'D',
'Fernando Collor, ao criticar o atraso do setor automotivo brasileiro no início dos anos 1990, afirmou que os carros nacionais eram "carroças", metáfora usada para justificar a abertura comercial e a necessidade de modernização da indústria. O Plano de Metas não reduziu barreiras tarifárias, ao contrário, protegeu a indústria (B errada); o II PND fomentava bens de capital e insumos básicos, não bens não duráveis (C errada); a Petrobras ampliou o investimento offshore nos anos 1970 (E errada); e a depreciação cambial tende a favorecer, não prejudicar, a indústria (A errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Desenvolvimento Produtivo e Regional no Brasil',
'Em relação ao conceito de "segurança alimentar e nutricional", analise as afirmativas, considerando V para a(s) verdadeira(s) e F para a(s) falsa(s). ( ) A visão malthusiana, na qual a produção de alimentos cresceria em progressão aritmética, enquanto o crescimento da população se daria em progressão geométrica, expressa o fundamento inicial do conceito de "segurança alimentar". ( ) O conceito foi debatido, em meados da década de 1970, em torno de uma crise alimentar global; primeiramente, o termo se associou aos problemas de oferta, com atenção na disponibilidade e na estabilidade de preços dos alimentos básicos. ( ) Mais tarde, entendeu-se que o conceito estaria ligado aos problemas de demanda, com foco na pobreza estrutural; porém, somente após a pandemia é que o conceito se expandiria para "segurança alimentar e nutricional", com o objetivo de incluir questões relativas à desnutrição. A sequência correta é:',
'',
'',
'["F, F, V;","F, V, V;","V, V, F;","V, F, V;","V, F, F."]'::jsonb,
'C',
'A primeira afirmativa é verdadeira: a preocupação malthusiana com o descompasso entre crescimento populacional (geométrico) e produção de alimentos (aritmético) é um fundamento inicial do tema. A segunda é verdadeira: na crise alimentar dos anos 1970 o conceito focou a oferta, disponibilidade e estabilidade de preços. A terceira é falsa: a ampliação para "segurança alimentar e nutricional", incorporando questões nutricionais, ocorreu bem antes da pandemia (a partir dos anos 1990/2000). Sequência V, V, F.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Desenvolvimento Produtivo e Regional no Brasil',
'Complete a frase: "A política de _____ busca promover o desenvolvimento industrial com o aumento de _____ dos bens _____. Esse instrumento tende a _____ a competitividade da firma doméstica, dado o aumento do custo de produção." A alternativa que preenche corretamente a frase é a seguinte:',
'',
'',
'["conteúdo local - insumos nacionais - exportados - reduzir;","substituição de importações - tarifas - importados - aumentar;","conteúdo local - tarifas - importados - reduzir;","substituição de importações - tarifas - exportados - aumentar;","conteúdo local - insumos nacionais - importados - reduzir."]'::jsonb,
'A',
'A política de conteúdo local exige o uso de insumos nacionais na produção de bens que serão exportados; ao obrigar a aquisição de insumos domésticos (muitas vezes mais caros), eleva o custo de produção e tende a reduzir a competitividade da firma doméstica no mercado internacional. A sequência correta é conteúdo local - insumos nacionais - exportados - reduzir.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Desenvolvimento Produtivo e Regional no Brasil',
'O programa Minha Casa, Minha Vida tem por finalidade promover o acesso à moradia de famílias residentes em áreas urbanas e rurais, bem como promover o desenvolvimento urbano e econômico, a geração de trabalho e de renda e a elevação dos padrões de habitabilidade e de qualidade de vida da população. Em relação a esse programa, é correto afirmar que:',
'',
'',
'["visa a atender famílias com renda anual de até R$ 50.000,00;","exclui os participantes de outros programas sociais, como o Programa Bolsa Família;","atende famílias e indivíduos, sem limite de renda, desde que não possuam habitação própria;","ampliou-se em 2025 a política habitacional para atender famílias com renda entre R$ 8.600,00 e R$ 12.000,00;","oferece subsídios e taxa de juros mais baixos para as famílias da Faixa 1, com renda mensal de até R$ 850,00."]'::jsonb,
'D',
'Em 2025, o programa Minha Casa, Minha Vida foi ampliado com a criação de uma nova faixa (classe média), destinada a famílias com renda mensal entre cerca de R$ 8.600,00 e R$ 12.000,00. O programa tem limites de renda (contrariando a C), não exclui beneficiários do Bolsa Família (B errada) e trabalha com faixas de renda mensal, não anual (A errada); a Faixa 1 abrange renda bem superior a R$ 850,00 (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Desenvolvimento Produtivo e Regional no Brasil',
'O Marco Legal do Saneamento Básico (Lei nº 14.026/2020) trouxe alterações na sistemática legal relativa ao saneamento básico, especialmente em relação a titularidade, contratos, concessões, universalização, resíduos sólidos, entre outras mudanças em relação à lei anterior. Em relação ao Marco Legal do Saneamento Básico, é correto afirmar que:',
'',
'',
'["prevê a universalização do serviço de saneamento básico até 2030, em consonância com a Agenda 2030 da ONU;","não permite subsídios tarifários e não tarifários para os usuários que não estejam registrados no CadÚnico;","passa para a Agência Nacional de Águas e Saneamento Básico (ANA) a responsabilidade por emitir normas de referência para a regulação dos serviços públicos de saneamento básico;","estabelece que a responsabilidade pelos serviços de saneamento é circunscrita aos municípios, e que esses serviços devem ser prestados por empresas públicas ou sociedades de economia mista;","estabelece que os serviços relativos à destinação de resíduos sólidos e à drenagem urbana passam a ser de responsabilidade bipartite dos governos estaduais e das municipalidades."]'::jsonb,
'C',
'O Marco Legal (Lei nº 14.026/2020) atribuiu à Agência Nacional de Águas e Saneamento Básico (ANA) a competência de editar normas de referência para a regulação dos serviços públicos de saneamento básico, buscando uniformização regulatória nacional. A meta de universalização é 2033 (99% de água e 90% de esgoto), não 2030 (A errada); subsídios podem ocorrer (B errada); o Marco ampliou a possibilidade de prestação por empresas privadas via concessão (D errada); e a titularidade dos serviços é municipal (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Desenvolvimento Produtivo e Regional no Brasil',
'A Constituição Federal, em seu Art. 21, inciso IX, estabelece que a União deve elaborar e executar planos nacionais e regionais de ordenamento do território e de desenvolvimento econômico e social. Em 2024 foi formado um Grupo de Trabalho Interministerial para a criação da Política Nacional de Ordenamento Territorial (PNOT). A construção de uma política de ordenamento do território visa a:',
'',
'',
'["planejar a expansão da matriz energética nacional com base na ocupação territorial;","estabelecer critérios para exploração de áreas ambientalmente protegidas;","criar zonas de uso econômico em áreas preservadas, priorizando atividades produtivas;","redefinir os limites das unidades federativas, criando uma nova divisão político-administrativa do país;","reorganizar o uso do território nacional e integrar ações públicas de forma coordenada, eficiente e sustentável."]'::jsonb,
'E',
'A Política Nacional de Ordenamento Territorial (PNOT) tem por objetivo reorganizar o uso do território nacional e integrar as ações públicas de maneira coordenada, eficiente e sustentável, articulando as diversas políticas setoriais no espaço. Não se destina a redefinir limites de estados (D), nem a abrir áreas protegidas à exploração (B e C), nem se restringe à matriz energética (A).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Desenvolvimento Produtivo e Regional no Brasil',
'O debate sobre a gênese e expansão da indústria no Brasil é longo e complexo. Como observa Flávio Saes (1989), o processo de industrialização "se traduz em relações complexas entre indústria, exportações e economia mundial que, em determinados momentos, passam por mudanças qualitativas fundamentais". Sobre a indústria no Brasil, é correto afirmar que:',
'',
'',
'["tem origem nos anos 1950, com o Plano de Metas de Juscelino Kubitschek;","remonta ao período colonial, com os engenhos de açúcar no Nordeste;","ganha impulso com o início do programa de substituição de importações na ditadura militar;","vem aumentando consistentemente sua participação no PIB e na pauta de exportações desde o início do século XX;","inicia-se com ciclos de investimentos e crescimento industrial durante a expansão de exportações de produtos primários no final do século XIX."]'::jsonb,
'E',
'As primeiras indústrias brasileiras surgiram no final do século XIX, associadas à expansão da economia agroexportadora (especialmente o café), que gerou capital, mercado consumidor, mão de obra imigrante e infraestrutura - condições que impulsionaram os primeiros ciclos de investimento industrial. A origem não está no Plano de Metas dos anos 1950 (A), nem nos engenhos coloniais (B, que eram atividade agromanufatureira primária), nem no PSI da ditadura militar (C, que começou nos anos 1930); e a participação industrial no PIB não cresceu de forma consistente e ininterrupta (D).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Desenvolvimento Produtivo e Regional no Brasil',
'Ao longo do século XX, a economia brasileira passou por uma significativa transformação, marcada pela perda de poder das oligarquias regionais, ascensão de uma classe urbana com novos padrões de consumo e mudanças no cenário externo. Sobre esse tema, é correto afirmar que:',
'',
'',
'["o Plano Estratégico de Desenvolvimento levou à mudança do centro dinâmico da economia agroexportadora para o mercado interno;","o governo Vargas, ao manter a defesa contra o desequilíbrio externo, levou a uma reação desfavorável da capacidade produtiva existente, atrasando a modernização do país;","o Plano de Metas previu a criação de empresas estatais como a CSN e a Vale, visando a modernizar a indústria e buscando intervir especialmente em áreas onde a iniciativa privada era ausente;","foi promovida a substituição de importações por meio de um complexo sistema tarifário que favorecia a importação de mercadorias essenciais, matérias-primas e bens de capital, protegendo o mercado interno;","a reorganização da economia mundial nos moldes liberais de Bretton Woods aumentou a demanda internacional por bens industrializados, permitindo ao Brasil diversificar sua produção manufatureira para o mercado externo."]'::jsonb,
'D',
'A industrialização por substituição de importações no Brasil apoiou-se em um sistema tarifário diferenciado (como a Lei de Similares e, mais tarde, a reforma cambial de 1957), que onerava a importação de bens de consumo final e favorecia a entrada de matérias-primas, insumos e bens de capital essenciais, protegendo o mercado interno para a produção nacional. A CSN e a Vale foram criadas ainda no governo Vargas, não no Plano de Metas (C errada); as demais distorcem a cronologia e a lógica do processo.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Desenvolvimento Produtivo e Regional no Brasil',
'A interrupção de atividades presenciais com a pandemia de covid-19 impôs duras perdas ao setor cultural brasileiro. Diante disso, foram elaboradas medidas para mitigar esses problemas. Sobre esse tema, é correto afirmar que:',
'',
'',
'["a Lei Paulo Gustavo e a Lei Aldir Blanc foram ações emergenciais destinadas ao setor cultural em decorrência da pandemia de covid-19;","a Lei Aldir Blanc foi uma medida pontual, com repasses diretos em caráter emergencial, e tinha como foco específico fomentar o audiovisual;","o ponto central das ações de mitigação aos efeitos da pandemia de covid-19 foi o setor cultural, sobretudo com as medidas de virtualização da atividade artística;","a Política Nacional Aldir Blanc de Fomento à Cultura (PNAB) foi sancionada pelo presidente Jair Bolsonaro por ser considerada de amplo interesse nacional;","a Lei Paulo Gustavo foi transformada em política pública regular em 2025, destinando o superávit financeiro do Fundo Nacional de Cultura para o fomento de atividades e produtos culturais."]'::jsonb,
'A',
'Tanto a Lei Aldir Blanc (Lei nº 14.017/2020) quanto a Lei Paulo Gustavo (LC nº 195/2022) foram criadas como ações emergenciais de apoio ao setor cultural fortemente afetado pela pandemia de covid-19, com repasses da União a estados e municípios. A Lei Aldir Blanc não se restringia ao audiovisual (B errada); a PNAB foi sancionada no governo Lula (D errada); e a Lei Paulo Gustavo não foi convertida em política regular em 2025 nos termos descritos (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Desenvolvimento Produtivo e Regional no Brasil',
'Ao longo do século XX, diversos autores se propuseram a estudar as dinâmicas de crescimento regional, buscando explicar a diferença entre regiões e propondo formas de superar o subdesenvolvimento. Em relação às diferentes teorias de localização e desenvolvimento regional, é correto afirmar que:',
'',
'',
'["Hirschman afirma que o processo de crescimento não surge de forma homogênea, manifestando-se com intensidades variáveis nos chamados polos de crescimento;","Boudeville defende que o crescimento regional ocorre de forma concentrada em polos e se propaga espacialmente para as áreas vizinhas por meio de diferentes canais, gerando efeitos variáveis na região;","a teoria do desenvolvimento desequilibrado de Hirschman sustenta que a desigualdade inicial leva a desequilíbrios permanentes e desestimula investimentos e inovações em setores atrasados;","os autores da teoria clássica da localização não levam em conta fatores como custo de transporte e proximidade de mercados consumidores na explicação de como as atividades industriais se desenvolvem;","para os autores da teoria da base da exportação, as atividades do setor interno são a base do desenvolvimento econômico regional, gerando efeitos multiplicadores em outros setores da região."]'::jsonb,
'B',
'Boudeville regionalizou o conceito de polo de crescimento de Perroux, defendendo que o crescimento se concentra em polos e se propaga espacialmente para as áreas vizinhas por diferentes canais, com efeitos variáveis sobre a região. O conceito de polos de crescimento é originalmente de Perroux, não de Hirschman (A imprecisa); Hirschman via nos desequilíbrios um motor do crescimento, não um bloqueio permanente (C errada); a teoria clássica da localização (von Thünen, Weber) considera, sim, custos de transporte e mercados (D errada); e na teoria da base de exportação é o setor exportador (base), e não o interno, que gera os efeitos multiplicadores (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- Eixo Tematico 3 - Gestao Estrategica e Regulacao (55 a 66)

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Gestão Estratégica e Regulação',
'A Diretoria de Planejamento de uma agência reguladora iniciou um processo de fortalecimento da gestão orientada por resultados, mobilizando os gestores para revisar objetivos organizacionais e estabelecer metas que permitam monitorar o desempenho institucional. Foi reforçada a importância de formular objetivos, indicadores e metas com base em critérios técnicos. Nesse contexto, a etapa de estabelecimento de objetivos, indicadores e metas organizacionais:',
'',
'',
'["permite a definição de metas qualitativas em contextos de alta complexidade, desde que essas sejam complementadas por explicações dos gestores das unidades validadas pela alta direção;","exige alinhamento entre os objetivos estratégicos, sendo importante que os indicadores e metas expressem resultados esperados de forma específica, mensurável e temporalmente definida;","pode adotar objetivos abertos e metas indicativas quando não houver clareza sobre os recursos disponíveis na região, desde que os registros sejam validados pelos gestores das unidades regionais;","permite o ajuste dos indicadores ao longo do período de planejamento, quando existir dificuldade de aferição;","deve priorizar a padronização dos três elementos estratégicos para todas as unidades regionais, assegurando comparabilidade de desempenho independentemente de características locais."]'::jsonb,
'B',
'A gestão orientada por resultados exige alinhamento entre objetivos estratégicos e que os indicadores e metas expressem resultados esperados de forma específica, mensurável e temporalmente definida (lógica SMART). Metas apenas qualitativas, objetivos abertos ou ajuste contínuo de indicadores comprometem o monitoramento (A, C, D erradas); e a padronização forçada ignora características locais relevantes (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Gestão Estratégica e Regulação',
'Com o intuito de melhorar a articulação entre sua estratégia institucional e a execução de programas prioritários pelas unidades regionais, uma empresa pública de infraestrutura adotou o método Balanced Scorecard (BSC), de Kaplan e Norton, para desdobramento de objetivos estratégicos e elaboração de planos de ação. A diretoria determinou que o mapa estratégico central aprovado pelo conselho fosse desdobrado para cada unidade regional. Nesse contexto, é correto afirmar que:',
'',
'',
'["o método oferece estrutura de gestão que garante os resultados definidos pelo conselho;","cada unidade regional deve elaborar seu mapa estratégico considerando apenas os resultados do workshop com sua equipe;","cada unidade deve elaborar seu mapa estratégico a partir do mapa central com objetivos, indicadores, metas e iniciativas estratégicas;","os objetivos estratégicos das perspectivas externas (financeira e mercado) requerem indicadores, mas as metas são reservadas para as perspectivas internas (aprendizado e crescimento e processos internos);","cada unidade deve elaborar seu mapa estratégico a partir do mapa central com objetivos, indicadores e metas. As iniciativas estratégicas devem ser definidas ao longo do período de planejamento, dependendo da condição orçamentária."]'::jsonb,
'C',
'No desdobramento do BSC, cada unidade elabora seu mapa estratégico a partir do mapa central (alinhamento vertical), contemplando os quatro componentes: objetivos, indicadores, metas e iniciativas estratégicas (projetos/ações). O método não garante por si os resultados (A); o desdobramento não se baseia apenas em workshop local (B); todas as perspectivas têm indicadores e metas (D); e as iniciativas integram o mapa, não ficam postergadas conforme orçamento (E).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Gestão Estratégica e Regulação',
'A Secretaria de Modernização Administrativa de um estado está conduzindo um exercício de planejamento estratégico para os próximos quatro anos. Diante de incertezas orçamentárias, foi proposta a realização de uma análise de cenários prospectivos para apoiar decisões sobre a alocação de recursos, identificando variáveis-chave, explorando suas interações e construindo cenários coerentes e plausíveis. Nesse contexto, é correto afirmar que a análise de cenários:',
'',
'',
'["tem como finalidade principal eliminar a incerteza no processo decisório, estabelecendo previsões objetivas;","pressupõe a escolha de um único cenário provável como referência para as decisões estratégicas da organização;","parte da identificação de variáveis críticas e de incertezas estruturantes para construir narrativas alternativas sobre o futuro;","busca identificar o cenário mais otimista, a fim de orientar os investimentos e as ações prioritárias para impactos positivos na população;","depende exclusivamente de modelos quantitativos de projeção de tendências, sendo pouco aplicável em ambientes com baixa disponibilidade de dados."]'::jsonb,
'C',
'A análise de cenários prospectivos parte da identificação de variáveis críticas e de incertezas estruturantes para construir múltiplas narrativas alternativas e plausíveis sobre o futuro, permitindo decisões adaptativas. Ela não elimina a incerteza nem produz previsão única (A, B erradas); não se limita ao cenário otimista (D errada); e combina abordagens qualitativas e quantitativas, sendo útil justamente em contextos de dados escassos (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Gestão Estratégica e Regulação',
'Analistas financeiros avaliam demonstrativos contábeis de empresas para calcular a Rentabilidade sobre o Patrimônio Líquido (ROE) de determinado ano. Esse mesmo resultado é obtido pela multiplicação de três indicadores de desempenho: Margem Líquida, Giro dos Ativos e Alavancagem Financeira. Considerando que quanto maior o ROE, melhor para os donos da empresa, os gestores devem buscar:',
'',
'',
'["maximizar a Alavancagem Financeira;","maximizar a multiplicação Margem Líquida * Giro dos Ativos;","igualar a Margem Líquida ao Giro dos Ativos;","minimizar a multiplicação Giro dos Ativos * Alavancagem Financeira;","minimizar a Alavancagem Financeira."]'::jsonb,
'B',
'Pela decomposição DuPont, ROE = Margem Líquida x Giro dos Ativos x Alavancagem Financeira. O produto Margem Líquida x Giro dos Ativos corresponde ao retorno operacional sobre os ativos (ROA), que mede a eficiência operacional e de uso de ativos - a parte sustentável e desejável de ser maximizada. Maximizar isoladamente a alavancagem (A) eleva o ROE à custa de maior risco financeiro, não sendo o objetivo recomendável; as demais não correspondem à lógica do indicador.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Gestão Estratégica e Regulação',
'O Índice de Liquidez Corrente é o resultado da divisão entre a totalidade do Ativo Circulante e a totalidade do Passivo Circulante de uma empresa. No intuito de refinar esse indicador, tornando-o mais prudente e conservador, os analistas criaram o Índice de Liquidez Seca, que, na sua forma mais tradicional, possui, em comparação com o Índice de Liquidez Corrente:',
'',
'',
'["o mesmo numerador na fórmula, aumentando o denominador ao adicionar o passivo de longo prazo;","o mesmo numerador na fórmula, reduzindo o denominador ao retirar os passivos operacionais;","o mesmo numerador e o mesmo denominador na fórmula, mas o resultado agora é apresentado em formato percentual;","o mesmo denominador na fórmula, aumentando o numerador ao adicionar recebíveis de longo prazo;","o mesmo denominador na fórmula, reduzindo o numerador ao retirar os estoques."]'::jsonb,
'E',
'O Índice de Liquidez Seca mantém o mesmo denominador (Passivo Circulante) do Índice de Liquidez Corrente, mas reduz o numerador ao excluir os estoques do Ativo Circulante. Como os estoques são os ativos de menor liquidez (dependem de venda para se converterem em caixa), sua exclusão torna o indicador mais conservador e prudente na avaliação da capacidade de pagamento de curto prazo.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Gestão Estratégica e Regulação',
'A criação das agências reguladoras no Brasil, no final dos anos 1990, impulsionou a elaboração de leis gerais de processo administrativo, influenciada também pelo contexto democrático pós-1985 e pela previsão constitucional do devido processo legal na esfera administrativa. No que se refere à atuação das agências reguladoras, sua vinculação ao processo administrativo promove:',
'',
'',
'["celeridade, pois elide a necessidade de análise fática na tomada de decisões;","celeridade, pois elide a necessidade de oitiva da sociedade quando da elaboração ou alteração de regulamentos;","segurança jurídica, pois as decisões tomadas em conformidade com o devido processo administrativo não podem ser revisadas pelo Poder Judiciário;","segurança jurídica, pois garante previsibilidade procedimental e necessidade de motivação nas tomadas de decisão;","igualdade, pois o entendimento fixado em decisão poderá retroagir para modificar processos já concluídos."]'::jsonb,
'D',
'A vinculação da atuação das agências ao processo administrativo promove segurança jurídica, ao assegurar previsibilidade procedimental e o dever de motivação das decisões. O processo administrativo não dispensa a análise fática nem a participação social (A, B erradas); as decisões continuam sujeitas a controle judicial (C errada); e, pela segurança jurídica, novos entendimentos não retroagem para desfazer situações já consolidadas (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Gestão Estratégica e Regulação',
'A função regulatória compreende o complexo de atribuições normativas, gerenciais, negociais e sancionatórias, exteriorizadas nas funções de regulamentação, gestão, negociação, fiscalização e fomento do ordenamento social e econômico. No que se refere às semelhanças entre as agências reguladoras e as autarquias comuns, é correto afirmar que ambas:',
'',
'',
'["vinculam-se a políticas de governo;","gozam do mesmo grau de autonomia orçamentária;","são criadas por lei que fixa parâmetros de atuação, ao mesmo tempo em que confere liberdade normativa;","possuem corpo diretivo com mandato fixo e com exigências de qualificação mínima exigidas em lei;","estão submetidas às regras de investidura mediante concurso público e contratações por meio de licitação."]'::jsonb,
'E',
'As agências reguladoras são espécie do gênero autarquia (autarquias em regime especial). Logo, assim como as autarquias comuns, submetem-se às regras gerais da Administração Pública: investidura de servidores mediante concurso público e contratações por meio de licitação. As demais apontam características que distinguem as agências (maior autonomia, mandato fixo dos dirigentes, poder normativo mais amplo e menor vinculação a políticas de governo), não semelhanças com as autarquias comuns.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Gestão Estratégica e Regulação',
'Uma situação de monopólio natural se manifesta quando uma única firma minimiza os custos de suprir todo o mercado, sendo marcada por importantes custos fixos, alta intensidade de capital, longos prazos de maturação e ativos específicos com custos irrecuperáveis (sunk cost). Nesse contexto, o papel da agência reguladora em monopólios naturais consiste em:',
'',
'',
'["induzir a abertura de mercado;","analisar e aprovar processos de fusões e aquisições;","subsidiar investimentos para garantir acesso amplo dos consumidores;","restringir a lucratividade da atividade por meio do preço-teto ou taxa de retorno;","garantir que os preços unitários do monopolista só cresçam na medida do ganho de escala da produção."]'::jsonb,
'D',
'Em monopólios naturais não é eficiente nem viável promover concorrência, de modo que o papel da agência reguladora é controlar o poder de mercado do monopolista, limitando sua lucratividade por meio de mecanismos de regulação de preços, como o preço-teto (price cap) ou a taxa de retorno (rate of return), protegendo os consumidores de preços abusivos. Induzir abertura de mercado (A) e analisar fusões (B) são atribuições típicas da defesa da concorrência, não da regulação de monopólio natural.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Gestão Estratégica e Regulação',
'Com a publicação do Decreto Federal nº 10.411/2020, a Análise de Impacto Regulatório (AIR) ganhou uma "irmã", a Avaliação de Resultado Regulatório (ARR): enquanto na AIR são estudados os efeitos esperados de uma regulação, na ARR são estudados seus efeitos observados. No que se refere à ARR, é correto afirmar que:',
'',
'',
'["poderá analisar apenas parte específica da norma;","afasta a aplicabilidade de AIR, para não sobrecarregar a atividade regulatória da agência;","deve determinar a manutenção, alteração ou revogação de normas cujos efeitos tenham sido negativos;","identificará e responsabilizará gestores pelos resultados inesperados eventualmente gerados pela norma;","será feita mediante conveniência e oportunidade da agência, que escolherá, em cada caso, as normas a serem analisadas."]'::jsonb,
'A',
'A ARR (avaliação ex post) pode se debruçar sobre a norma inteira ou apenas sobre parte específica dela, verificando os efeitos efetivamente observados do dispositivo analisado. Ela não substitui nem afasta a AIR, que é ex ante (B errada); seu papel é avaliar e recomendar, não impor automaticamente revogação (C errada) nem responsabilizar gestores (D errada); e sua realização segue critérios normativos (há normas de edição obrigatória de ARR), não mera conveniência discricionária (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Gestão Estratégica e Regulação',
'A respeito do risco de captura de um agente regulador por agente regulado, há relação proporcional do risco com:',
'',
'',
'["a presença de mecanismos institucionais de interação entre regulador e interessados;","a duração do mandato do corpo diretivo das agências, pois favorece a criação de vínculos com os regulados;","o baixo volume de estoque regulatório, já que a produção de normas indica funcionamento adequado da agência;","a ausência de sistemas auditáveis de compartilhamento de dados, pois aumenta-se a assimetria de informações;","a ausência de normas punitivas, visto que a previsão normativa de sanções é suficiente para coibir desvios de conduta."]'::jsonb,
'D',
'A captura regulatória se alimenta da assimetria de informações entre regulador e regulado: quanto menor a transparência e menos auditáveis os sistemas de compartilhamento de dados, maior a assimetria e, portanto, maior o risco de captura. Logo, há relação proporcional (direta) entre a ausência de sistemas auditáveis de dados e o risco de captura. Os mecanismos de interação transparentes e o mandato fixo dos dirigentes, ao contrário, tendem a reduzir a captura.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Gestão Estratégica e Regulação',
'Em um modelo contratual de concessão de serviço público, o Estado delega a prestação à iniciativa privada, mantendo a responsabilidade de regulação e fiscalização. Considerando a perspectiva dos aspectos informacionais, a alternativa que descreve com maior precisão um risco típico associado à presença de informações privadas do concessionário e uma medida eficaz para mitigá-lo é a seguinte:',
'',
'',
'["risco de seleção adversa, mitigado por cláusulas que permitam renegociação automática em função de flutuações de demanda;","risco de captura regulatória, mitigado pela redução da transparência pública dos relatórios da concessionária;","risco de assimetria técnica, mitigado por contratos incompletos com discricionariedade ampliada ao concessionário;","risco moral, mitigado por incentivos explícitos atrelados a metas verificáveis e monitoramento independente de desempenho;","risco de falha de mercado, mitigado por transferência total das decisões operacionais para o poder concedente."]'::jsonb,
'D',
'O risco moral (moral hazard) decorre de ações ocultas do concessionário após a assinatura do contrato (ex.: reduzir esforço ou qualidade quando o esforço não é observável). Mitiga-se com desenho de incentivos explícitos atrelados a metas verificáveis e monitoramento independente de desempenho, alinhando o comportamento do concessionário ao interesse público. As demais associam incorretamente risco e remédio (ex.: reduzir transparência agrava, não mitiga, a captura).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Gestão Estratégica e Regulação',
'Em um processo de Análise de Impacto Regulatório (AIR), uma agência federal identificou evidências de falha de mercado relacionada à assimetria informacional entre prestadores de serviço e usuários finais. Considerando os princípios metodológicos e os requisitos de qualidade da AIR, a conduta que reflete uma etapa crítica e tecnicamente consistente no desenvolvimento da análise é:',
'',
'',
'["definir como problema central a ausência de norma vigente sobre o tema, de modo a justificar a edição de nova regulamentação setorial;","formular o problema regulatório como a proposta de solução preferencial da agência, com base em diretrizes institucionais já estabelecidas;","descrever de forma neutra os efeitos indesejados da situação vigente, com base em evidências empíricas, sem antecipar julgamentos normativos ou escolhas específicas;","excluir da matriz de alternativas aquelas soluções que envolvam alterações legislativas ou ajustes interinstitucionais, por extrapolarem a competência estrita da agência;","estabelecer a alternativa regulatória pretendida como referência-base para a análise de impactos, a fim de agilizar o processo e permitir foco nos efeitos esperados."]'::jsonb,
'C',
'Uma etapa crítica da AIR é a correta definição do problema regulatório, que deve descrever de forma neutra e baseada em evidências empíricas os efeitos indesejados da situação atual, sem já embutir a solução preferida ou antecipar julgamentos normativos. Definir o problema como a mera ausência de norma (A) ou como a solução pretendida (B, E) enviesa a análise; e excluir previamente alternativas legislativas ou interinstitucionais (D) empobrece a matriz de opções.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- Eixo Tematico 4 - Desenvolvimento Socioeconomico no Brasil (67 a 78)

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Desenvolvimento Socioeconômico no Brasil',
'A Era Vargas refere-se ao período de 1930 a 1945, no qual o Brasil foi governado por Getúlio Vargas, presidente que implementou uma série de políticas socioeconômicas. Em relação a esse período da história, é correto afirmar que:',
'',
'',
'["Getúlio Vargas descentralizou o poder e implementou a política de valorização do preço do café, como forma de recuperar o crescimento econômico do país;","a carta constitucional de 1934 instituiu o salário mínimo, as férias anuais remuneradas, bem como o décimo terceiro salário;","o período foi autoritário, com um governante populista em defesa das massas e que ampliou benefícios trabalhistas e reconheceu sindicatos e associações profissionais;","o fim da política do café com leite em 1930 fez com que Getúlio Vargas perdesse as eleições para Júlio Prestes, que foi deposto por um golpe de Estado;","o Estado Novo (1937-1945), embora tenha sido uma fase ditatorial, não promoveu a censura de opiniões contrárias ao governo, mas tornou-se o momento oportuno para a Consolidação das Leis do Trabalho (CLT)."]'::jsonb,
'C',
'A Era Vargas caracterizou-se por um governo centralizador e autoritário, com forte apelo populista de defesa das massas, que ampliou benefícios trabalhistas e reconheceu sindicatos e associações profissionais (atrelando-os ao Estado). Vargas centralizou (não descentralizou) o poder (A errada); o décimo terceiro salário é bem posterior (1962) (B errada); Vargas chegou ao poder pela Revolução de 1930, após Júlio Prestes ter sido eleito (D errada); e o Estado Novo foi marcado por intensa censura (DIP) (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Desenvolvimento Socioeconômico no Brasil',
'O governo Juscelino Kubitschek caracterizou-se pelo comprometimento do setor público com uma política explícita de desenvolvimento. Em relação ao Plano de Metas e ao papel do Estado na segunda metade da década de 1950, é correto afirmar que:',
'',
'',
'["o desenvolvimento industrial se baseou nos investimentos privados, notadamente com a presença de capital nacional;","a política nacional-desenvolvimentista implementada seguiu as recomendações feitas pelo Fundo Monetário Internacional;","a Instrução nº 113 da Superintendência da Moeda e do Crédito foi um marco importante para a criação de um ambiente favorável à entrada de capital estrangeiro no país;","o governo Juscelino Kubitschek priorizou a construção de ferrovias em detrimento da construção de rodovias, no intuito de dinamizar a industrialização brasileira no período;","a ideia da construção de Brasília, uma nova capital, para interiorizar o país, foi proposta, pela primeira vez na história, por Juscelino Kubitschek, em um comício de campanha eleitoral."]'::jsonb,
'C',
'A Instrução nº 113 da SUMOC (1955) permitiu que empresas estrangeiras importassem máquinas e equipamentos sem cobertura cambial, criando um ambiente altamente favorável à entrada de capital estrangeiro e sendo peça-chave do Plano de Metas. O desenvolvimento combinou capital estatal, estrangeiro e nacional (A errada); o plano foi nacional-desenvolvimentista, contrariando o receituário do FMI (B errada); JK priorizou rodovias, não ferrovias (D errada); e a ideia de interiorizar a capital é bem anterior a JK (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Desenvolvimento Socioeconômico no Brasil',
'A indústria de produção de petróleo no Brasil é um exemplo do surgimento e desenvolvimento de uma rede de conhecimento centrada na firma. Com base na evolução do setor de exploração e produção de petróleo no país, é correto afirmar que:',
'',
'',
'["a primeira descoberta comercial de petróleo ocorreu após a criação da Petrobras, em 1953;","o Brasil, com o aumento do preço do petróleo nos anos 1970, reduziu a exploração offshore, notadamente na Bacia de Campos;","o debate que antecedeu a criação da Petrobras foi unânime em defender que a exploração deveria ser feita por uma empresa estatal brasileira;","o programa de capacitação da Petrobras, dividido em três etapas, foi essencial para gerar conhecimento de exploração em águas ultraprofundas;","o governo brasileiro, com a descoberta do pré-sal, manteve a legislação regulatória da atividade de exploração e produção por compreender ser o melhor mecanismo de desenvolvimento econômico e regional."]'::jsonb,
'D',
'O desenvolvimento tecnológico da Petrobras, especialmente por meio dos programas de capacitação em águas profundas (PROCAP), estruturados em etapas sucessivas, foi essencial para gerar conhecimento próprio de exploração e produção em águas profundas e ultraprofundas, consolidando a liderança tecnológica da empresa. A 1ª descoberta comercial (Lobato/BA) é anterior à Petrobras (A errada); o Brasil ampliou o offshore nos anos 1970 (B errada); o debate "O petróleo é nosso" foi acirrado, não unânime (C errada); e com o pré-sal foi criado o regime de partilha, alterando a legislação (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Desenvolvimento Socioeconômico no Brasil',
'Em relação ao crescimento econômico de economias emergentes no mundo, como China, Índia e Brasil, e à emergência de um ciclo de preços favoráveis das commodities a partir de meados da década de 2000, é correto afirmar que:',
'',
'',
'["os riscos de insegurança alimentar no Brasil aumentavam quanto maiores eram as exportações do agronegócio nesse período;","os saldos superavitários do agronegócio contribuíram para a acumulação de reservas internacionais, que, para países como o Brasil, eram essenciais para evitar crises cambiais mais agudas;","o aumento das exportações do agronegócio brasileiro foi liderado pela incorporação de terras baratas no processo produtivo, o que permitiu ao país vender seus produtos a preços competitivos;","apesar de a indústria nacional obter saldos superavitários na balança comercial, foi o agronegócio que puxou o crescimento econômico do país no período em questão;","a frase \"a inflação aleija, mas o câmbio mata\", de Mário Henrique Simonsen, implica que, com o câmbio flutuante, a expansão da agropecuária prejudicou o equilíbrio macroeconômico do Brasil."]'::jsonb,
'B',
'O boom das commodities nos anos 2000 gerou expressivos saldos superavitários no agronegócio brasileiro, que contribuíram para a forte acumulação de reservas internacionais - instrumento essencial para reduzir a vulnerabilidade externa e evitar crises cambiais mais agudas (como se viu na crise de 2008). A competitividade do agronegócio decorreu sobretudo de ganhos de produtividade e tecnologia (não de terras baratas, C errada), e as demais afirmam relações equivocadas.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Desenvolvimento Socioeconômico no Brasil',
'A crise financeira de 2008 foi uma das maiores crises econômicas da história, desde o crash da bolsa de Nova York em 1929. Em relação a seus impactos no mundo e no Brasil, é correto afirmar que:',
'',
'',
'["a crise financeira internacional, de 2008 a 2013, apresentou alto impacto na dinâmica das exportações brasileiras, sendo a taxa de crescimento das exportações nacionais inferior à média mundial;","a crise de 2008 afetou a economia mundial, mas a expansão do mercado consumidor nos países emergentes manteve elevada a demanda por bens agropecuários;","o emprego na indústria de produção de aeronaves no Brasil não apresentou queda no período de 2008 a 2009, já que o impacto da crise financeira foi baixo no país;","os bancos centrais, nos anos subsequentes, buscaram elevar as taxas de juros e implementaram políticas fiscais de estímulo ao crescimento;","a bolha imobiliária americana estourou em 2009, levando a uma queda nos preços das casas e uma perda de valor dos ativos no mercado estadunidense."]'::jsonb,
'B',
'Apesar de global, a crise de 2008 teve seus efeitos atenuados sobre as commodities agropecuárias porque a expansão do mercado consumidor dos países emergentes (sobretudo a China) manteve elevada a demanda por esses bens, sustentando as exportações do agronegócio. Os bancos centrais reduziram juros e adotaram afrouxamento (não elevaram, D errada); a bolha estourou a partir de 2007-2008, não em 2009 (E errada); a indústria aeronáutica sofreu, sim, retração (C errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Desenvolvimento Socioeconômico no Brasil',
'A partir de texto de Michael Hall sobre os imigrantes italianos em São Paulo (1880-1920), as elites brasileiras tiveram que lidar, ao longo do século XIX, com o constante problema da mão de obra no país, temendo que o fim da escravidão trouxesse desorganização no mercado de trabalho. Em relação à transição do trabalho escravo para o trabalho livre, é correto afirmar que:',
'',
'',
'["a imigração ocorreu de forma homogênea e contínua em todo o país ao longo do século XIX, permitindo a transição pacífica para o sistema de trabalho livre;","a imigração ocorreu por meio de correntes espontâneas de imigrantes, vindos principalmente do norte da Europa para núcleos coloniais, primeiramente localizados no Sul e, posteriormente, espalhados pelo restante do país;","as primeiras experiências com o uso de mão de obra imigrante ocorreram no começo do século XIX, nas fazendas cafeeiras do Vale do Paraíba, no litoral norte de São Paulo, e pavimentaram o caminho para a transição para o trabalho livre;","a Sociedade Promotora de Imigração foi responsável pela organização do programa de subsídios do governo paulista, permitindo resolver o problema da atração de mão de obra livre e criando uma corrente massiva de imigrantes, especialmente italianos, para o trabalho nas fazendas cafeeiras de São Paulo;","a Sociedade Central de Imigração teve papel fundamental na atração de imigrantes europeus para o Brasil, defendendo a doação de lotes de terras em núcleos coloniais para que se instalassem primeiramente como pequenos proprietários e, posteriormente, ofertassem sua mão de obra para os cafeicultores, resolvendo o problema da falta de braços para as lavouras."]'::jsonb,
'D',
'A Sociedade Promotora de Imigração, criada em 1886 e financiada pelos cafeicultores com apoio do governo paulista, organizou o programa de imigração subsidiada, custeando a vinda de imigrantes europeus - sobretudo italianos - para trabalhar nas fazendas de café de São Paulo, resolvendo o problema da atração de mão de obra livre e gerando uma corrente massiva de imigração. A imigração não foi homogênea nem espontânea (A, B erradas); as primeiras experiências relevantes de colonato datam de meados do século XIX (C imprecisa); e a Sociedade Central de Imigração tinha orientação distinta (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Desenvolvimento Socioeconômico no Brasil',
'Após 21 anos de ditadura, em março de 1985, José Sarney assumiu a presidência com a tarefa de redemocratizar o país, enfrentando a maior taxa de inflação da história. Três grandes planos foram postos em prática entre 1986 e 1990, sem resolver o problema. Nesse contexto, é correto afirmar que:',
'',
'',
'["o Plano Cruzado propôs um \"choque heterodoxo\", e suas principais medidas foram: criação do Cruzado (Cz$); congelamento de preços; reajuste salarial pela média dos últimos seis meses e criação do gatilho salarial; e substituição das ORTNs por OTNs e do IPCA pelo IPC;","o Plano Bresser, de caráter marcadamente ortodoxo, visava promover um choque desinflacionário na economia por meio de desvalorizações cambiais, congelamento de preços e salários, reajustes trimestrais com base na inflação do período, corte de subsídios e política monetária ativa;","o fracasso do Plano Cruzado pode ser creditado ao congelamento de preços, que, posto em prática por pouco tempo, não foi suficiente para evitar os efeitos redistributivos da inflação, e ao excesso de demanda e incapacidade de investir o suficiente para aumentar a oferta no curto prazo;","o Plano Verão, lançado em janeiro de 1989, previa restrição ao crédito e suspensão da correção monetária para prazos inferiores a 90 dias, criação do Cruzeiro Novo com paridade ao dólar, cortes de gastos, redução de pessoal e um programa de privatizações como forma de resolver o desequilíbrio fiscal crônico;","o Plano Cruzado previa novas modalidades de caderneta de poupança, proibição de contratação de funcionários públicos, redução de gastos públicos, reajuste de preços de serviços de setores específicos (combustíveis, automóveis e cigarros), elevação de impostos, incentivos fiscais e desvalorização cambial para estimular exportações."]'::jsonb,
'A',
'O Plano Cruzado (1986) foi um "choque heterodoxo" cujas medidas centrais foram: criação do Cruzado (Cz$); congelamento de preços; reajuste salarial pela média dos últimos meses com o chamado gatilho salarial; e reformas nos indexadores (substituição das ORTNs por OTNs e do índice de preços de referência). As demais alternativas atribuem a planos específicos (Bresser, Verão) características ou medidas que não correspondem corretamente ao seu desenho.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Desenvolvimento Socioeconômico no Brasil',
'Para sustentar o programa desenvolvimentista, o governo Juscelino Kubitschek organizou o Plano de Metas, o mais completo e coerente conjunto de investimentos feito até então. Sobre esse tema, é correto afirmar que:',
'',
'',
'["o Plano de Metas possuía mecanismos bem estruturados de financiamento;","o Plano de Metas não previa a expansão dos meios de pagamento como forma de financiamento dos gastos públicos;","as áreas consideradas cruciais dentro do Plano de Metas eram: energia, transporte, alimentação, indústrias de base e educação;","dentre as áreas prioritárias, alimentação e educação foram as que receberam as maiores fatias dos recursos alocados para o Plano de Metas;","o setor público teve papel secundário na criação da infraestrutura necessária para o processo de industrialização previsto no Plano de Metas."]'::jsonb,
'C',
'O Plano de Metas organizou-se em torno de cinco grandes áreas (setores) consideradas cruciais: energia, transporte, alimentação, indústrias de base e educação, sendo esta última conhecida como a "meta-síntese". O plano tinha mecanismos de financiamento frágeis e dependeu de expansão monetária (A e B erradas); os maiores recursos foram para energia e transporte, não para alimentação e educação (D errada); e o setor público teve papel central na criação da infraestrutura (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Desenvolvimento Socioeconômico no Brasil',
'Durante o governo de Fernando Henrique Cardoso (1995-2002), a política de privatizações foi um dos pilares da agenda de reformas do Estado. Em relação à onda de privatizações ocorrida nos anos 1990, é correto afirmar que:',
'',
'',
'["o setor bancário estatal foi inteiramente privatizado;","o envolvimento do capital nacional foi fundamental para que as privatizações ocorressem;","objetivava-se a modernização das empresas estatais para torná-las mais competitivas;","não houve qualquer tipo de regulamentação posterior, deixando os setores sujeitos ao livre funcionamento do mercado;","focava nas pequenas empresas sem relevância estratégica para a economia."]'::jsonb,
'D',
'Conforme o gabarito oficial, a resposta é a letra D. Durante a onda de privatizações dos anos 1990, a transferência dos ativos ao setor privado nem sempre foi acompanhada, de imediato, de um arcabouço regulatório maduro para os setores desestatizados; em diversos casos, as empresas passaram a operar sob forte influência da dinâmica de mercado antes da plena estruturação das agências e marcos regulatórios setoriais. As demais são incorretas: o setor bancário estatal não foi inteiramente privatizado (A); houve participação relevante de capital estrangeiro, não apenas nacional (B); a modernização era um objetivo, mas não é a assertiva apontada como correta no gabarito (C); e o programa alcançou grandes empresas estratégicas, não pequenas firmas (E).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Desenvolvimento Socioeconômico no Brasil',
'Elaborado durante o governo Ernesto Geisel, o II Plano Nacional de Desenvolvimento (1975-1979) foi a principal resposta do regime militar à crise internacional provocada pelo choque do petróleo de 1973. Em relação ao II PND, é correto afirmar que:',
'',
'',
'["previu investimentos estatais em infraestrutura e na industrialização, buscando reduzir a vulnerabilidade externa e ampliar a capacidade produtiva do país;","evitou a participação de empresas estrangeiras no processo de industrialização, priorizando o capital nacional como forma de proteção ao mercado interno;","concentrou seus investimentos nos setores de bens de consumo e comércio varejista, diferentemente do I Plano Nacional de Desenvolvimento, visando a estimular o consumo interno no curto prazo;","teve como principal meta o controle inflacionário, buscando crescimento moderado e o equilíbrio fiscal como forma de estabilizar a economia frente à crise do petróleo;","limitou a atuação estatal na economia, cabendo ao setor privado nacional e internacional a liderança nos investimentos em infraestrutura e indústria pesada."]'::jsonb,
'A',
'O II PND respondeu ao choque do petróleo de 1973 com forte investimento estatal em infraestrutura (energia, transporte, comunicações) e na indústria de base (bens de capital, insumos básicos, siderurgia, petroquímica), buscando completar o processo de substituição de importações, reduzir a vulnerabilidade externa e ampliar a capacidade produtiva. O plano foi estatizante e aberto a capital estrangeiro (B, E erradas), focou bens de capital e insumos (não consumo/varejo, C errada) e priorizou crescimento, não o controle inflacionário (D errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Desenvolvimento Socioeconômico no Brasil',
'A pandemia de covid-19 expôs e agravou desigualdades sociais e econômicas preexistentes. As disparidades no risco de infecção, gravidade da doença e mortalidade estiveram fortemente associadas a fatores como renda, condições de moradia, tipo de ocupação e acesso à saúde. Em relação à pandemia de covid-19 no Brasil, é correto afirmar que:',
'',
'',
'["o Auxílio Emergencial não foi suficiente para mitigar a perda de renda das classes mais baixas;","as regiões Norte e Nordeste, por terem áreas rurais maiores, foram mais afetadas pela pandemia;","a crise sanitária afetou de forma igualitária a população brasileira, sem diferenças entre raças e níveis sociais;","apesar da desigualdade existente no Brasil, não se registrou diferença na perda de postos de trabalho entre brancos e negros;","as desigualdades estruturais e os altos níveis de informalidade são fatores positivamente correlacionados com os casos de covid-19."]'::jsonb,
'E',
'As desigualdades estruturais e os altos níveis de informalidade mostraram-se positivamente correlacionados com a incidência de covid-19: trabalhadores informais, com menor possibilidade de isolamento e piores condições de moradia e acesso à saúde, estiveram mais expostos ao contágio. O Auxílio Emergencial teve efeito relevante na mitigação da perda de renda e da pobreza (A errada); a crise afetou de forma desigual por raça e classe (C, D erradas); e a maior afetação não se explica pela extensão de áreas rurais (B errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Desenvolvimento Socioeconômico no Brasil',
'Considere que a desindustrialização tem implicações diretas para o desenvolvimento do país, pois a indústria de transformação pode ser considerada o motor de crescimento econômico no longo prazo, por operar economias de escala, criar e difundir progresso técnico e apresentar fortes encadeamentos a jusante e a montante. Sobre o processo de desindustrialização no Brasil, é correto afirmar que:',
'',
'',
'["a queda da participação da indústria no PIB brasileiro desde os anos 1980 decorre de um processo de desindustrialização natural;","o processo foi marcado por uma redução da participação da indústria de transformação no PIB, após o país ter consolidado um setor de serviços altamente sofisticado;","o setor industrial brasileiro perdeu participação no PIB após os anos 2000 como resultado do protecionismo crescente e da redução da concorrência externa;","ele foi impulsionado principalmente pela substituição da produção industrial doméstica por exportações de produtos manufaturados de alto valor agregado;","sua manifestação expressa-se pela menor participação da indústria no PIB, pela perda de espaço de setores mais tecnológicos, pela queda das exportações de manufaturados e pela redução do emprego industrial."]'::jsonb,
'E',
'A desindustrialização brasileira é considerada precoce (prematura) e manifesta-se pela queda da participação da indústria no PIB, pela perda de espaço dos setores de maior intensidade tecnológica, pela redução da participação de manufaturados na pauta exportadora (reprimarização) e pela diminuição do emprego industrial. Não é um processo "natural" nem decorreu de serviços sofisticados ou de protecionismo/concorrência reduzida (A, B, C erradas), nem foi puxado por exportações de manufaturados de alto valor (D errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- Eixo Tematico 5 - Desigualdades e Dinamicas Socioeconomicas no Brasil (79 a 90)

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Nas últimas décadas, o meio rural e o urbano sofreram transformações significativas que devem ser entendidas com base na dinâmica e estrutura demográfica do Brasil. Em relação a essas mudanças, é correto afirmar que:',
'',
'',
'["o crescimento da população ocupada na agropecuária ocorreu notadamente na pequena propriedade familiar, que é intensiva em mão de obra;","segundo os últimos levantamentos censitários, a mão de obra no campo aumentou drasticamente desde os anos 1990, com o crescimento do setor agropecuário;","as mulheres e os jovens estão mais dispostos a permanecer nas áreas rurais, já que se trata de grupos não favorecidos pelo mercado de trabalho nos grandes centros urbanos;","entre 2006 e 2017, a população ocupada reduziu-se em 1,5 milhão, em virtude de dois fatores centrais: redução da fecundidade nas áreas rurais e permanência dos fluxos migratórios rural-urbano;","entre os três últimos censos agropecuários (1995, 2006 e 2017), a população ocupada aumentou no Centro-Oeste, acompanhando a expansão da moderna agricultura, mas diminuiu nas demais regiões do país."]'::jsonb,
'D',
'Entre os censos agropecuários de 2006 e 2017, a população ocupada na agropecuária reduziu-se em cerca de 1,5 milhão de pessoas, resultado de dois fatores centrais: a queda da fecundidade nas áreas rurais e a persistência dos fluxos migratórios do campo para a cidade, somados à mecanização. A ocupação não cresceu na agropecuária (A, B erradas); mulheres e jovens tendem a migrar para os centros urbanos (C errada); e a redução não foi exclusiva das demais regiões com aumento isolado no Centro-Oeste (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Desde 2011 surgiu no Brasil o serviço de delivery de comidas e, em 2014, o transporte por aplicativo, elevando a participação desses serviços na geração de empregos. Com a revolução digital, o conceito clássico de subordinação do trabalho vem se alterando. Em relação a essa temática e segundo os princípios gerais da atividade econômica, a alternativa que vai CONTRA o princípio da livre concorrência é a seguinte:',
'',
'',
'["os modelos de negócios que conectam fornecedores de serviços com consumidores, por meio de plataformas digitais, estimulam a concorrência via entrada de novos competidores;","a \"uberização\" incentivou a inovação, uma vez que as empresas competem de forma schumpeteriana para se manterem competitivas no mercado;","a oferta de serviços por meio das plataformas amplia as opções ao consumidor, que pode escolher o serviço que melhor atende às suas necessidades e preferências;","preços dinâmicos manipulados podem elevar a diferença entre preço e custo marginal do serviço, afetando o mercado com discriminação de preços, barreiras à entrada e preços predatórios;","o empregado ou motorista por aplicativo tem maior flexibilidade para escolher horários de trabalho, podendo atuar em diferentes plataformas simultaneamente."]'::jsonb,
'D',
'A manipulação de preços dinâmicos, ao ampliar artificialmente a diferença entre preço e custo marginal, pode gerar discriminação de preços, barreiras à entrada e preços predatórios - práticas que restringem a competição e, portanto, vão CONTRA o princípio constitucional da livre concorrência (art. 170, IV, da CF). As demais alternativas descrevem efeitos que estimulam ou são compatíveis com a livre concorrência (entrada de competidores, inovação, ampliação de opções e flexibilidade do prestador).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'O sistema educacional brasileiro sempre sofreu com financiamento inadequado e problemas no acesso, na permanência dos alunos e na atratividade da carreira docente. Com a redemocratização, diversas mudanças foram feitas. A Constituição de 1988 atuou nessas mudanças ao:',
'',
'',
'["garantir aos analfabetos o direito ao voto e aumentar a vinculação de gastos com educação;","desvincular a obrigatoriedade federal dos gastos com educação básica, passando essa responsabilidade aos estados e municípios;","desvincular a obrigatoriedade federal dos gastos com educação, permitindo que os estados e municípios atuassem mais ativamente nesse quesito;","estabelecer que estados e municípios deveriam investir no mínimo 25% de suas receitas em educação, e a União, 18%, permitindo a uniformização da qualidade da educação em todo o país;","estabelecer, por meio do Fundo de Manutenção e Desenvolvimento do Ensino Fundamental e de Valorização do Magistério (Fundef), a forma de financiamento da Educação Básica pelos estados e municípios."]'::jsonb,
'A',
'A Constituição de 1988 garantiu aos analfabetos o direito ao voto (facultativo) e ampliou a vinculação de recursos à educação, fixando percentuais mínimos de receita de impostos a serem aplicados no setor (art. 212: 18% da União e 25% de estados, DF e municípios). Embora os percentuais estejam na alternativa D, esta erra ao afirmar que isso "uniformizaria a qualidade"; o Fundef (E) foi criado em 1996 por emenda posterior, não pela redação original de 1988.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'O Programa Bolsa Família (PBF) foi criado em 2003 como forma de combate à fome e à extrema pobreza, visando a unificar diversos outros programas sociais existentes. Em relação à estrutura e ao escopo do PBF, é correto afirmar que:',
'',
'',
'["seu baixo custo levanta questionamentos sobre a extensão de seus impactos positivos;","pode ser considerado universalista, por ser focalizado entre os mais pobres do país;","atua, por seus condicionantes, para além da simples transferência monetária aos beneficiários;","contribui para a redução da oferta de trabalho e teve efeito adverso na fertilidade das famílias atendidas;","exclui parte significativa dos indivíduos que poderiam ser abrangidos pelo programa, em virtude da exigência de que a transferência do benefício seja feita via Caixa Econômica Federal."]'::jsonb,
'C',
'O PBF atua para além da simples transferência monetária porque associa o benefício a condicionalidades nas áreas de educação (frequência escolar) e saúde (vacinação, acompanhamento pré-natal e nutricional), articulando alívio imediato da pobreza com rompimento do ciclo intergeracional. Não é universalista, mas focalizado (B contraditória); as evidências não confirmam redução relevante da oferta de trabalho nem efeito adverso na fertilidade (D errada); e a forma de pagamento não exclui elegíveis de modo significativo (E errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'A Constituição Federal de 1988 estabeleceu a saúde como direito de todos e dever do Estado, resultando na criação do Sistema Único de Saúde (SUS) em 1990. Em relação à estrutura, atuação e evolução do SUS desde a sua criação, é correto afirmar que:',
'',
'',
'["o SUS não se consolidou como política pública de combate às desigualdades sociais, em função do caráter descentralizado do seu financiamento;","a descentralização do SUS limitou sua efetividade ao transferir as responsabilidades de gestão aos municípios sem ampliar recursos ou capacidade de gestão local;","houve redução das desigualdades no acesso à saúde apenas nas regiões Sul e Sudeste, sendo insignificante o impacto nas regiões mais pobres, como o Norte e o Nordeste;","houve redução das desigualdades no acesso à saúde ao se expandir o acesso à atenção primária, especialmente por meio da Estratégia Saúde da Família, com foco nas populações de baixa renda;","as medidas de austeridade fiscal adotadas em 2019, ao limitar o crescimento dos gastos públicos, não afetaram o financiamento do SUS, uma vez que seus recursos estão assegurados constitucionalmente."]'::jsonb,
'D',
'O SUS contribuiu para reduzir desigualdades no acesso à saúde ao expandir fortemente a atenção primária, sobretudo por meio da Estratégia Saúde da Família (ESF), que levou equipes de saúde a territórios vulneráveis e populações de baixa renda, inclusive em regiões historicamente desassistidas. As demais negam ou minimizam equivocadamente esses avanços e os impactos de restrições fiscais sobre o financiamento do sistema.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'O governo federal instituiu a Lei nº 12.711/2012, conhecida como Lei de Cotas, que reservou 50% das vagas em universidades e institutos federais para estudantes que cursaram integralmente o ensino médio em escolas públicas, adotando também critérios de renda e de cor ou etnia, com o objetivo de promover maior equidade no acesso ao ensino superior. A Lei de Cotas pode ser caracterizada como uma política:',
'',
'',
'["distributiva, destinada a uma parcela específica da população;","compensatória, visando a corrigir desigualdades históricas e sociais;","assistencialista, já que oferece um benefício imediato e direto aos cotistas;","constitutiva, já que busca alterar o desenho institucional do sistema educacional de nível superior;","emancipatória, buscando transformar estruturalmente as condições sociais que provocam exclusão."]'::jsonb,
'A',
'Conforme o gabarito oficial, a resposta é a letra A: a Lei de Cotas pode ser caracterizada como uma política distributiva, destinada a uma parcela específica da população, pois direciona um recurso escasso (vagas em universidades e institutos federais) a grupos determinados - estudantes de escola pública, de baixa renda e de cor ou etnia -, promovendo redistribuição de oportunidades de acesso ao ensino superior. As demais tipologias (compensatória, assistencialista, constitutiva, emancipatória) não correspondem à classificação adotada como correta.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'O Programa Bolsa Família (PBF) e o Benefício de Prestação Continuada (BPC) são os dois maiores programas de transferência de renda do Brasil. Considerando-se a estrutura e o desenho dos programas, é correto afirmar que:',
'',
'',
'["ambos possuem a mesma focalização e escopo;","ambos possuem condicionalidades que potencializam os benefícios da transferência de renda;","ambos visam a diminuir desigualdades sociais e oferecer alívio à pobreza via aumento geral da renda familiar;","as transferências de renda vinculadas ao salário mínimo são mais eficazes e apresentam resultados melhores que políticas assistencialistas;","por ter grau de focalização maior, o BPC é mais eficiente na alocação de recursos e alcança mais diretamente a população pobre do que o PBF."]'::jsonb,
'C',
'Tanto o PBF quanto o BPC são programas de transferência de renda que visam reduzir desigualdades sociais e oferecer alívio à pobreza, elevando a renda das famílias beneficiárias. Eles diferem em focalização e desenho: o BPC (assistência social, art. 203 da CF/LOAS) é um benefício no valor de um salário mínimo para idosos e pessoas com deficiência de baixa renda e NÃO possui condicionalidades, enquanto o PBF é focalizado em famílias pobres e extremamente pobres e EXIGE condicionalidades (A, B, E erradas).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Com base em gráfico sobre a fração do 1% mais rico e o Coeficiente de Gini nas PNADs corrigido pelos dados tributários para o Brasil no período de 1926-2013 (SOUZA, 2016), sobre a concentração de renda no Brasil, é correto afirmar que:',
'Descrição do gráfico (Pedro H. G. F. de Souza, "A desigualdade vista do topo", 2016): o eixo horizontal mostra os anos de 1926 a 2013; o eixo vertical esquerdo mede a fração da renda total apropriada pelo 1% mais rico (em %) e o eixo vertical direito mede o Coeficiente de Gini. As duas séries (fração do 1% mais rico e Gini corrigido pelos dados tributários) permanecem em patamares historicamente altos ao longo de quase todo o período, com oscilações, mas sem uma tendência clara e sustentada de queda da concentração no topo da pirâmide ao longo do século XX e início do XXI.',
'/cnu-2025-6-tarde-questao-86.png',
'["a Hipótese de Kuznets pode ser confirmada para o caso brasileiro a partir da análise do gráfico;","a queda no Coeficiente de Gini nas PNADs corrigido pelos dados tributários mostra o efeito de políticas tributárias mais progressivas desde os anos 1990;","as mudanças estruturais ocorridas ao longo do século XX e começo do XXI pouco afetaram a concentração de renda no topo da pirâmide social;","o padrão de concentração apresentado no gráfico indica que não houve qualquer melhora na concentração de renda no país nos últimos 40 anos;","as políticas redistributivas implementadas desde a redemocratização levaram a uma queda acentuada na concentração de renda do topo nas últimas duas décadas."]'::jsonb,
'C',
'A tese central do trabalho de Pedro Souza é que a concentração de renda no topo (fração apropriada pelo 1% mais rico) manteve-se estável e em patamares elevados ao longo do século XX e início do XXI, de modo que as grandes mudanças estruturais do período pouco afetaram essa concentração no topo da pirâmide. Isso contraria a Hipótese de Kuznets (A errada) e afasta tanto a ideia de queda acentuada (B, E erradas) quanto o extremo oposto de "nenhuma melhora" absoluta nos indicadores mais amplos de desigualdade (D errada, pois o Gini geral chegou a cair, ainda que o topo permaneça concentrado).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Considere notícia segundo a qual, em 2024, a Justiça do Trabalho registrou um aumento de 57% nos processos que pedem reconhecimento de vínculo empregatício, refletindo o crescimento das ações sobre a chamada "pejotização", em que profissionais registrados como pessoa jurídica (PJ) ou autônomos buscam o reconhecimento de direitos. O regime de pessoa jurídica permite que:',
'',
'',
'["trabalhadores terceirizados sejam contratados, desde que não exerçam a atividade-fim da empresa;","os encargos trabalhistas, na contratação como prestador de serviços, sejam divididos entre contratado e contratante;","trabalhadores regidos pela CLT sejam legalmente substituídos por prestadores de serviço, desde que sem vínculo de exclusividade;","o contratado tenha os mesmos direitos trabalhistas previstos na CLT, desde que tenha inscrição no Cadastro Nacional da Pessoa Jurídica;","o contratado atue como prestador de serviços por meio de empresa própria, eximindo o contratante das obrigações trabalhistas típicas da relação celetista."]'::jsonb,
'E',
'No regime de pessoa jurídica (PJ), o profissional presta serviços por meio de empresa própria, de modo que a relação é regida como prestação de serviços (civil/empresarial) e não como vínculo celetista; com isso, o contratante se exime das obrigações trabalhistas típicas da CLT (férias, 13º, FGTS, verbas rescisórias etc.). É justamente a controvérsia sobre a presença dos requisitos de vínculo empregatício nesse arranjo que motiva as ações de reconhecimento mencionadas na notícia.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'A Reforma Trabalhista de 2017, instituída pela Lei nº 13.467, promoveu alterações relevantes nas relações de trabalho no Brasil, com efeitos expressivos sobre o papel e a atuação dos sindicatos. Dentre as mudanças, ressalta-se:',
'',
'',
'["a facultatividade da contribuição sindical;","a criação de novas formas de cobrança da contribuição sindical;","a introdução do princípio da prevalência do legislado sobre o negociado;","o fato de que a contribuição sindical torna-se responsabilidade dos empregadores;","a ampliação do valor da contribuição sindical para o correspondente a dois dias de trabalho."]'::jsonb,
'A',
'Uma das principais mudanças da Reforma Trabalhista de 2017 foi tornar a contribuição sindical facultativa, condicionando-a à autorização prévia e expressa do trabalhador, o que antes era um desconto compulsório equivalente a um dia de trabalho por ano. Isso afetou fortemente o financiamento dos sindicatos. A reforma consagrou a prevalência do negociado sobre o legislado (C invertida), não criou novas cobranças obrigatórias (B, D, E erradas).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Segundo as Projeções de População do IBGE a partir dos dados do Censo Demográfico de 2022, estima-se que a população do país vai parar de crescer em 2041, quando chegará a 220.425.299 habitantes, e começará a diminuir, chegando a 199.228.708 habitantes em 2070. No Brasil, observa-se um processo de desaceleração do crescimento populacional, marcado pelo(a):',
'',
'',
'["redução da mortalidade e da natalidade;","aumento da mortalidade e da natalidade;","redução da mortalidade e aumento da natalidade;","crescimento da população economicamente ativa;","aumento da população rural e redução da densidade demográfica nos centros urbanos."]'::jsonb,
'A',
'A desaceleração do crescimento populacional brasileiro é explicada pela transição demográfica: queda da mortalidade (maior expectativa de vida) combinada com forte redução da natalidade/fecundidade. Como a taxa de fecundidade caiu para níveis abaixo da reposição, o ritmo de crescimento diminui, levando à estabilização e posterior declínio da população e ao envelhecimento da estrutura etária.'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Desigualdades e Dinâmicas Socioeconômicas no Brasil',
'Com a promulgação da Constituição Federal de 1988, a seguridade social passou a ser concebida como um amplo sistema de proteção social, integrando saúde, previdência e assistência social. A chamada "Constituição Cidadã" redefiniu a forma de disciplinar a seguridade social. Uma das inovações trazidas por esse novo ordenamento foi:',
'',
'',
'["a vinculação da seguridade social ao Regime Geral da Previdência Social;","a regressividade dos mecanismos de financiamento e centralização do processo decisório;","o acesso à assistência social por aqueles que realizam contribuições regulares à seguridade social;","a articulação entre Estado e sociedade na implementação de ações destinadas a garantir os direitos sociais à saúde, à previdência e à assistência social;","a ampliação do acesso à previdência a todos os cidadãos brasileiros, além de assistência social e saúde como direitos aos mais necessitados com base na renda familiar."]'::jsonb,
'D',
'A grande inovação da CF/1988 foi conceber a seguridade social como um conjunto integrado de ações de iniciativa do Estado e da sociedade, articulados para assegurar os direitos à saúde, à previdência e à assistência social (art. 194), com gestão democrática e participativa. A assistência social independe de contribuição (C errada); a saúde é universal e a previdência é contributiva (A e E imprecisas); e a Constituição buscou financiamento diversificado e descentralização, não regressividade e centralização (B errada).'
from public.exams where slug = 'cnu-2025-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
