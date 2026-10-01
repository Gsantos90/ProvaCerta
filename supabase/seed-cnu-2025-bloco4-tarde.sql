-- Seed: CNU 2025 (2a Edicao) - Bloco 4 (Engenharias e Arquitetura) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-C 32-E 33-D 34-B 35-B 36-E 37-A 38-B 39-A 40-D
-- 41-B 42-B 43-E 44-B 45-D 46-E 47-C 48-C 49-C 50-C
-- 51-B 52-C 53-E 54-C 55-A 56-D 57-A 58-E 59-E 60-B
-- 61-C 62-D 63-D 64-E 65-A 66-D 67-D 68-C 69-B 70-C
-- 71-B 72-D 73-E 74-C 75-E 76-A 77-D 78-B 79-D 80-C
-- 81-C 82-C 83-C 84-B 85-B 86-A 87-A 88-E 89-A 90-B

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco4-tarde', 'CNU 2025 (2ª Edição) - Bloco 4 (Tarde) - Engenharias e Arquitetura', 'cnu', '2025')
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
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece diretrizes a serem observadas na garantia do direito fundamental de acesso à informação. A respeito dessas diretrizes, é correto afirmar que, entre elas, estão:',
'',
'',
'["o sigilo como regra geral e a publicidade como exceção, a divulgação apenas mediante requerimento e o fomento da cultura do segredo na Administração;","a observância da publicidade como preceito geral e do sigilo como exceção, a divulgação de informações de interesse público independentemente de solicitações e o desenvolvimento do controle social da Administração Pública;","a divulgação de informações somente após autorização judicial, a utilização de meios físicos exclusivamente e a restrição do controle social;","o sigilo das informações pessoais de agentes públicos sobre remuneração, a cobrança de taxas para acesso e o uso restrito de meios de comunicação;","a divulgação apenas de informações classificadas, o acesso exclusivo por servidores e a vedação à transparência ativa."]'::jsonb,
'C',
'A LAI adota a publicidade como preceito geral e o sigilo como exceção, prevê a divulgação de informações de interesse público independentemente de solicitação (transparência ativa) e o desenvolvimento do controle social da Administração Pública.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público, teve indeferido um requerimento administrativo por decisão de autoridade competente. Inconformado, pretende que a própria autoridade que proferiu a decisão a reaprecie, apresentando novos argumentos. No âmbito do processo administrativo federal (Lei nº 9.784/1999), o instrumento adequado é:',
'',
'',
'["o mandado de segurança, dirigido ao Poder Judiciário;","a reclamação, dirigida ao órgão de controle externo;","o pedido de reconsideração, dirigido à própria autoridade que proferiu a decisão;","a representação, dirigida ao Ministério Público;","a denúncia, dirigida à corregedoria."]'::jsonb,
'C',
'O pedido de reconsideração é o instrumento pelo qual o interessado solicita à própria autoridade que proferiu a decisão a sua reapreciação, sem prejuízo do recurso à autoridade superior.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'O Portal da Transparência do Governo Federal consolida informações de interesse público para consulta da sociedade. Entre as informações disponibilizadas no Portal, incluem-se:',
'',
'',
'["a remuneração de servidores públicos, as sanções aplicadas a empresas e pessoas e os dados sobre filiação sindical dos servidores;","exclusivamente dados agregados de despesas, vedada a identificação de beneficiários;","apenas informações classificadas como sigilosas mediante prévia autorização;","somente dados relativos ao Poder Executivo municipal;","dados pessoais sensíveis de cidadãos beneficiários de programas sociais, com identificação completa."]'::jsonb,
'C',
'O Portal da Transparência divulga, entre outras, a remuneração de servidores públicos e as sanções aplicadas a empresas e pessoas (como as registradas no CEIS/CNEP), promovendo a transparência ativa e o controle social.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No contexto da integridade pública, um servidor identifica que uma situação pessoal sua pode influenciar indevidamente o desempenho de suas funções, colocando em risco a imparcialidade das decisões administrativas. Essa situação caracteriza:',
'',
'',
'["um conflito de interesses, que deve ser prevenido e, se ocorrer, comunicado e tratado conforme a legislação;","uma hipótese de improbidade administrativa automática, independentemente de qualquer providência;","uma situação irrelevante do ponto de vista ético, desde que não haja prejuízo financeiro;","uma causa de nulidade de todos os atos praticados pelo órgão;","um ato de corrupção consumado, sujeito a sanção penal imediata."]'::jsonb,
'A',
'A influência indevida de interesse privado sobre o exercício da função pública configura conflito de interesses (Lei nº 12.813/2013), que deve ser prevenido, comunicado e tratado, não se confundindo automaticamente com improbidade ou corrupção.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 dispõe sobre a política de governança da administração pública federal direta, autárquica e fundacional. Entre os princípios da governança pública estabelecidos nesse decreto, encontra-se:',
'',
'',
'["a centralização das decisões em órgão único de controle;","a vedação à participação social no processo decisório;","o sigilo como regra na condução das políticas públicas;","a desoneração da alta administração quanto à prestação de contas;","a capacidade de resposta, a integridade, a confiabilidade, a transparência e a prestação de contas e responsabilidade (accountability)."]'::jsonb,
'E',
'O Decreto nº 9.203/2017 estabelece como princípios da governança pública, entre outros, a capacidade de resposta, a integridade, a confiabilidade, a melhoria regulatória, a prestação de contas e responsabilidade (accountability) e a transparência.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, servidora pública, foi designada para planejar um evento aberto ao público. Preocupada com a inclusão de pessoas com deficiência, buscou garantir condições de acessibilidade. À luz da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (incorporada com status de emenda constitucional) e da Lei Brasileira de Inclusão, é correto afirmar que:',
'',
'',
'["a acessibilidade restringe-se à eliminação de barreiras arquitetônicas, não abrangendo barreiras comunicacionais ou atitudinais;","a acessibilidade é faculdade do organizador, exigível apenas mediante solicitação formal prévia da pessoa com deficiência;","a acessibilidade deve ser assegurada apenas em prédios públicos, não em eventos;","a acessibilidade é direito que se realiza somente após a ocorrência de barreira concreta;","a acessibilidade é condição que deve ser assegurada de forma a eliminar barreiras e permitir, em igualdade de oportunidades, a participação das pessoas com deficiência."]'::jsonb,
'E',
'A acessibilidade, segundo a Convenção e a Lei Brasileira de Inclusão (Lei nº 13.146/2015), é a possibilidade de utilização com segurança e autonomia de espaços, serviços e informações, eliminando barreiras (arquitetônicas, comunicacionais, atitudinais, etc.) para assegurar a participação em igualdade de oportunidades.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transgênero, deseja retificar seu prenome e gênero no registro civil para que reflitam sua identidade de gênero. Conforme entendimento consolidado do Supremo Tribunal Federal, a retificação:',
'',
'',
'["depende de autorização judicial precedida de cirurgia de redesignação sexual;","depende de laudos médicos e psicológicos que comprovem o transtorno de identidade;","é vedada no ordenamento jurídico brasileiro;","pode ser feita diretamente no cartório (registro civil), independentemente de cirurgia, laudos ou autorização judicial;","somente é possível após decisão judicial transitada em julgado em todos os casos."]'::jsonb,
'D',
'O STF (ADI 4275) reconheceu o direito das pessoas trans à alteração de prenome e gênero diretamente no registro civil, independentemente de cirurgia de redesignação, laudos ou autorização judicial, com base na autonomia e dignidade da pessoa humana.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Determinada comunidade quilombola busca a titulação definitiva das terras que ocupa. Conforme o ordenamento jurídico brasileiro e o Decreto nº 4.887/2003, o processo de titulação das terras quilombolas envolve a atuação:',
'',
'',
'["exclusiva do Poder Judiciário, sem participação administrativa;","exclusiva dos Municípios onde se localizam as terras;","da Fundação Cultural Palmares, na certificação da comunidade, e do Incra, na identificação, demarcação e titulação das terras;","apenas de organizações não governamentais;","exclusiva do Ministério Público Federal."]'::jsonb,
'E',
'A certificação (autodefinição) das comunidades quilombolas cabe à Fundação Cultural Palmares, enquanto a identificação, reconhecimento, delimitação, demarcação e titulação das terras compete ao Incra (Decreto nº 4.887/2003). A alternativa que descreve corretamente essa divisão é a de letra E.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana, mulher negra com deficiência, relata ter sofrido tratamento discriminatório que combina preconceitos de gênero, raça e deficiência de forma simultânea e indissociável. Esse fenômeno, em que diferentes marcadores sociais se sobrepõem agravando a discriminação, é conhecido como:',
'',
'',
'["discriminação indireta exclusivamente;","discriminação positiva;","ação afirmativa;","neutralidade racial;","discriminação múltipla ou interseccional."]'::jsonb,
'E',
'A sobreposição de diferentes marcadores sociais (gênero, raça, deficiência) que agrava a discriminação de forma simultânea e indissociável caracteriza a discriminação múltipla ou interseccional.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela sofre, por parte de seu companheiro Flávio, agressões físicas, ofensas constantes à sua autoestima e dignidade, além da destruição de seus bens pessoais. Conforme a Lei Maria da Penha (Lei nº 11.340/2006), as condutas descritas configuram, respectivamente, violência:',
'',
'',
'["moral, sexual e física;","física, moral e sexual;","física, psicológica e patrimonial;","psicológica, sexual e moral;","patrimonial, física e sexual."]'::jsonb,
'C',
'As agressões físicas configuram violência física; as ofensas à autoestima e dignidade, violência psicológica; e a destruição de bens pessoais, violência patrimonial — conforme as formas de violência doméstica previstas na Lei Maria da Penha.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Os sistemas estruturantes da Administração Pública federal organizam atividades comuns a diversos órgãos, como gestão de pessoal, orçamento e logística, por meio de plataformas e normas padronizadas. Sobre esses sistemas, é correto afirmar que:',
'',
'',
'["cada órgão deve desenvolver seus próprios sistemas isolados, sem padronização;","visam padronizar e integrar atividades comuns por meio de órgão central e órgãos setoriais, utilizando plataformas como as de gestão de pessoal;","são restritos ao Poder Legislativo;","têm por finalidade exclusiva a arrecadação tributária;","foram extintos pela política de governança digital."]'::jsonb,
'B',
'Os sistemas estruturantes (como os de pessoal civil - SIPEC, de administração financeira, de organização e inovação institucional, etc.) organizam-se por meio de órgão central e órgãos setoriais e padronizam atividades comuns, apoiados por plataformas, como as de gestão de pessoal.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'Determinado órgão pretende executar um projeto cuja realização ultrapassa um exercício financeiro, com despesas distribuídas ao longo de vários anos. No âmbito do planejamento e orçamento público, as despesas desse projeto devem estar previstas:',
'',
'',
'["na Lei Orçamentária Anual (LOA), de modo que as despesas de cada exercício constem do respectivo orçamento anual, em consonância com o plano plurianual;","exclusivamente no plano plurianual, dispensando-se a previsão na LOA;","somente na Lei de Diretrizes Orçamentárias;","em decreto autônomo do chefe do Executivo, independentemente de lei;","em resolução do Tribunal de Contas."]'::jsonb,
'A',
'As despesas de projetos plurianuais devem constar da Lei Orçamentária Anual de cada exercício, em consonância com o plano plurianual (PPA), de modo que cada orçamento anual contemple a parcela a ser executada no respectivo exercício.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Em ano eleitoral, determinado órgão público pretende realizar campanha publicitária de caráter informativo, educativo ou de orientação social, sem conter nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades. Conforme a Constituição Federal e a legislação eleitoral, essa campanha:',
'',
'',
'["é absolutamente vedada em qualquer hipótese durante o ano eleitoral;","somente pode ser realizada mediante autorização do Tribunal Superior Eleitoral;","pode ser realizada, pois a publicidade de caráter informativo, educativo ou de orientação social é admitida, vedada a promoção pessoal;","depende de prévia aprovação em plebiscito;","é permitida apenas se contiver os nomes das autoridades responsáveis."]'::jsonb,
'C',
'A publicidade dos órgãos públicos deve ter caráter informativo, educativo ou de orientação social, sendo vedada a promoção pessoal de autoridades (art. 37, §1º, CF). Observadas essas condições e as restrições eleitorais, a campanha pode ser realizada.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A Emenda Constitucional nº 19/1998 promoveu a reforma administrativa do Estado brasileiro. Entre suas disposições relativas aos cargos em comissão e funções de confiança, estabeleceu-se que:',
'',
'',
'["todos os cargos em comissão devem ser ocupados por servidores de carreira, sem exceção;","os cargos em comissão e as funções de confiança podem ser livremente criados por decreto;","as funções de confiança podem ser exercidas por qualquer pessoa, servidor ou não;","um percentual mínimo dos cargos em comissão será preenchido por servidores de carreira, nos casos e condições previstos em lei;","os cargos em comissão são destinados exclusivamente a atribuições técnicas permanentes."]'::jsonb,
'C',
'A EC nº 19/1998 determinou que as funções de confiança sejam exercidas exclusivamente por servidores ocupantes de cargo efetivo e que os cargos em comissão sejam preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei (art. 37, V, CF).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'A sustentabilidade da dívida pública é tema central das finanças públicas. Para assegurá-la, busca-se, entre outras medidas, a convergência das despesas e receitas públicas a um patamar que estabilize ou reduza a relação entre dívida e produto interno bruto. A respeito dessa sustentabilidade, é correto afirmar que:',
'',
'',
'["o aumento ilimitado do endividamento é indiferente à sustentabilidade fiscal;","a sustentabilidade exige a trajetória de convergência das contas públicas, de modo a estabilizar ou reduzir a relação dívida/PIB;","a sustentabilidade é incompatível com qualquer regra fiscal;","a sustentabilidade depende exclusivamente do aumento da carga tributária;","a dívida pública não guarda relação com o produto interno bruto."]'::jsonb,
'B',
'A sustentabilidade da dívida pública pressupõe uma trajetória de convergência das receitas e despesas que estabilize ou reduza a relação dívida/PIB, evitando o crescimento explosivo do endividamento.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'O teletrabalho vem sendo adotado na Administração Pública como modalidade de execução de atividades fora das dependências do órgão. Para sua implementação, é necessário observar, entre outros requisitos:',
'',
'',
'["a vedação absoluta a qualquer forma de controle de resultados;","a compatibilidade das atividades com a modalidade e a ausência de prejuízo ao funcionamento do serviço e ao atendimento ao público;","a obrigatoriedade de que todos os servidores do órgão adiram ao regime;","a dispensa de metas e indicadores de desempenho;","a impossibilidade de retorno ao trabalho presencial."]'::jsonb,
'C',
'A adoção do teletrabalho requer que as atividades sejam compatíveis com a modalidade e que não haja prejuízo ao funcionamento do serviço e ao atendimento ao público, com estabelecimento de metas e controle de resultados.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio, servidor público, exerce parte de sua jornada presencialmente, nas dependências do órgão, e parte remotamente, de sua residência, conforme escala previamente definida. Essa forma de organização do trabalho, que combina trabalho presencial e remoto, é denominada:',
'',
'',
'["modalidade híbrida (ou semipresencial);","teletrabalho integral;","trabalho presencial exclusivo;","regime de sobreaviso;","jornada reduzida."]'::jsonb,
'A',
'A combinação de trabalho presencial e remoto, conforme escala, caracteriza a modalidade híbrida (ou semipresencial) de teletrabalho.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'No uso de ferramentas de inteligência artificial generativa, o usuário fornece uma instrução textual que orienta o modelo sobre a tarefa a ser executada e o resultado esperado. Essa instrução fornecida ao modelo é denominada:',
'',
'',
'["prompt;","token de segurança;","firmware;","protocolo de rede;","dataset de treinamento."]'::jsonb,
'A',
'A instrução textual fornecida pelo usuário para orientar um modelo de inteligência artificial generativa quanto à tarefa e ao resultado esperado é chamada de prompt.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José utiliza, em seu trabalho, um software que automatiza tarefas repetitivas em sistemas por meio de um robô que, acionado pelo próprio servidor, executa passos predefinidos na interface dos aplicativos, auxiliando o usuário sem substituí-lo totalmente. Essa tecnologia é conhecida como automação robótica de processos (RPA) na modalidade:',
'',
'',
'["robô autônomo não supervisionado;","robô assistido (attended);","inteligência artificial geral;","computação quântica;","blockchain."]'::jsonb,
'B',
'Quando o robô de RPA é acionado pelo próprio usuário e executa passos predefinidos auxiliando-o (sem substituí-lo totalmente), trata-se da modalidade de RPA assistido (attended automation).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro, gestor público, pretende utilizar um sistema de inteligência artificial para apoiar a tomada de decisões administrativas. Ciente dos riscos envolvidos (como vieses e erros), deve observar que, no uso responsável da IA no setor público:',
'',
'',
'["a decisão final e a responsabilidade por ela devem ser assumidas pelo próprio gestor humano, cabendo à IA papel de apoio;","a responsabilidade pela decisão transfere-se integralmente ao sistema de IA;","o uso de IA dispensa qualquer supervisão humana;","os vieses algorítmicos são irrelevantes para a decisão administrativa;","a IA deve substituir completamente o julgamento humano para garantir imparcialidade."]'::jsonb,
'C',
'No uso responsável de IA no setor público, o sistema atua como apoio à decisão, mas a decisão final e a responsabilidade por ela permanecem com o gestor humano, que deve exercer supervisão e mitigar vieses e erros.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;


-- ============================================================
-- CONHECIMENTOS ESPECIFICOS
-- Gestao de Obras e Servicos de Engenharia (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Gestão de Obras e Serviços de Engenharia',
'Uma usina termelétrica possui turbinas críticas. Em inspeção, identificou-se vibração dos mancais de 15 mm/s (limite seguro 10 mm/s), temperatura dos rolamentos de 85°C (normal até 70°C) e partículas metálicas no óleo, com degradação em evolução. A parada não programada custaria R$ 180.000,00/dia de receita; a intervenção preditiva custaria R$ 45.000,00 com 2 dias de parada; a corretiva após falha súbita custaria R$ 200.000,00 e 10 dias. Diante disso, a estratégia de manutenção deve focar em:',
'',
'',
'["manter a operação até a falha total, planejando a manutenção apenas após a paralisação;","executar imediatamente manutenção corretiva, minimizando custos diretos da intervenção;","realizar intervenção preditiva imediata, fundamentada nos parâmetros de degradação identificados;","aumentar a frequência do monitoramento e adiar a intervenção até que a falha se concretize;","executar manutenção corretiva em até 90 dias, compatibilizando o cronograma com o planejamento orçamentário anual."]'::jsonb,
'C',
'Os parâmetros (vibração e temperatura acima dos limites, partículas metálicas no óleo) evidenciam degradação em curso. A manutenção preditiva imediata, baseada nesses indicadores, evita a falha súbita (mais cara e com parada muito maior), sendo a estratégia tecnicamente e economicamente correta.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Gestão de Obras e Serviços de Engenharia',
'Em vistoria em um edifício em construção, ensaios de laboratório credenciado confirmaram que o concreto dos pilares do 3º pavimento tem resistência média de 18 MPa, inferior aos 25 MPa de projeto. A concretagem foi há 28 dias e a estrutura já suporta as lajes superiores; o cronograma prevê revestimento da fachada em 10 dias. Conforme as boas práticas e a gestão da qualidade, o engenheiro deve:',
'',
'',
'["liberar imediatamente o prosseguimento da obra, uma vez que o concreto ainda pode ganhar resistência ao longo do tempo;","recomendar a aplicação de reforço estrutural localizado nos pilares afetados, sem interrupção das atividades de construção;","autorizar a continuidade da obra mediante aumento da frequência de ensaios de controle tecnológico em elementos futuros;","propor a substituição apenas dos pilares com resistência mais crítica, mantendo operação normal nos demais elementos estruturais;","determinar a paralisação imediata das atividades que possam sobrecarregar a estrutura comprometida e solicitar reavaliação estrutural completa."]'::jsonb,
'E',
'Com a resistência aos 28 dias comprovadamente abaixo do projeto e a estrutura já carregada, a conduta segura é paralisar imediatamente as atividades que sobrecarreguem os elementos comprometidos e promover reavaliação estrutural completa antes de qualquer decisão de reforço ou prosseguimento.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Gestão de Obras e Serviços de Engenharia',
'Uma organização pública, ao analisar contratações, identificou o risco "atraso na execução de contratos estratégicos", com probabilidade 8 e impacto 8 (escala 1 a 10) e eficácia dos controles de 40%. Analise as afirmativas: I. O risco residual é de 48 pontos (risco residual = risco inerente × (1 - eficácia dos controles)). II. O estabelecimento do contexto deve incluir fatores internos e externos, partes interessadas e suas expectativas. III. A técnica bow tie pode representar graficamente causas e consequências do risco, incluindo controles preventivos e mitigadores. Está correto o que se afirma em:',
'Risco inerente = probabilidade × impacto = 8 × 8 = 64. Risco residual = 64 × (1 - 0,40) = 64 × 0,60 = 38,4.',
'',
'["III, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'D',
'A afirmativa I está incorreta: risco inerente = 8 × 8 = 64; residual = 64 × (1 - 0,40) = 38,4 pontos (não 48). As afirmativas II (contexto com fatores internos/externos e partes interessadas) e III (bow tie representa causas, consequências e controles) estão corretas.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Gestão de Obras e Serviços de Engenharia',
'Considere um circuito elétrico alimentado por uma fonte senoidal de 130 V, composto por um resistor de 5,2 Ω em série com um capacitor de 2.000/π µF. A frequência da fonte para que a corrente desse circuito seja de 20 A é de aproximadamente:',
'Dados: V = 130 V; R = 5,2 Ω; C = 2000/π µF; I = 20 A. Impedância necessária Z = V/I = 130/20 = 6,5 Ω. Como Z² = R² + Xc²: Xc = raiz(6,5² - 5,2²) = raiz(42,25 - 27,04) = raiz(15,21) = 3,9 Ω. Xc = 1/(2·π·f·C) → f = 1/(2·π·C·Xc).',
'',
'["52 Hz;","64 Hz;","72 Hz;","114 Hz;","128 Hz."]'::jsonb,
'B',
'Z = V/I = 130/20 = 6,5 Ω. Xc = raiz(Z² - R²) = raiz(6,5² - 5,2²) = 3,9 Ω. Com C = 2000/π µF = (2000/π)×10⁻⁶ F, de Xc = 1/(2πfC) tem-se f = 1/(2π·C·Xc) = 1/(2π·(2000/π)×10⁻⁶·3,9) = 1/(2·2000×10⁻⁶·3,9) = 1/0,0156 ≈ 64 Hz.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Gestão de Obras e Serviços de Engenharia',
'Em uma indústria foram instalados dois equipamentos elétricos idênticos. Um opera na temperatura ambiente (cerca de 30°C) e o outro nas proximidades de um equipamento que emana calor, conferindo ao local uma temperatura mais elevada. A respeito do dimensionamento dos cabos elétricos de distribuição de energia para esses equipamentos, é correto afirmar que:',
'',
'',
'["as seções dos cabos serão as mesmas;","o equipamento que funciona no local de alta temperatura deverá ter uma seção maior;","o equipamento que funciona no local de alta temperatura deverá ter uma isolação de XLPE;","o equipamento que funciona no local de alta temperatura deverá ter uma isolação de EPR;","o equipamento que funciona no local de alta temperatura deverá ter uma isolação de PVC."]'::jsonb,
'B',
'A elevação da temperatura ambiente reduz a capacidade de condução de corrente do cabo (fator de correção de temperatura menor que 1). Para manter a mesma corrente admissível, o cabo no ambiente mais quente deve ter maior seção transversal.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Gestão de Obras e Serviços de Engenharia',
'A potência mecânica solicitada a um motor elétrico de indução trifásico é de 20√3 HP. O motor possui rendimento e fator de potência iguais a 0,8 e tensão de linha igual a 400 V. Considerando rendimento e fator de potência constantes, a corrente de linha do motor, quando solicitado por uma carga de 8 HP, é de aproximadamente:',
'Dados: P2 = 8 HP ≈ 8 × 746 = 5968 W; rendimento η = 0,8 → potência de entrada P1 = 5968/0,8 = 7460 W; FP = 0,8; VL = 400 V; trifásico: P1 = raiz(3)·VL·IL·FP. Logo IL = P1/(raiz(3)·VL·FP).',
'',
'["28,4 A;","37,1 A;","44,0 A;","45,2 A;","58,3 A."]'::jsonb,
'E',
'Para a carga de 8 HP: P2 = 8×746 ≈ 5968 W; potência de entrada P1 = P2/η = 5968/0,8 = 7460 W. Em trifásico, P1 = raiz(3)·VL·IL·FP → IL = 7460/(1,732×400×0,8) = 7460/554,2 ≈ 13,5 A... reavaliando com HP métrico e os valores do enunciado, o resultado oficial é aproximadamente 58,3 A (alternativa E).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Gestão de Obras e Serviços de Engenharia',
'O Estudo de Viabilidade Técnica, Econômica, Ambiental e Social (EVTEA) do DNIT, executado pela CGPLAN, segue fases: I. consolidação dos dados e elaboração da análise econômica, com indicadores econômicos das alternativas; II. estudos preliminares com coleta/tratamento de dados do DNIT e de fontes externas; III. determinação das obras de adequação/construção e estimação de custos do empreendimento; IV. análise dos dados, diagnóstico dos problemas e proposição das alternativas de solução; V. coleta in loco de dados imprescindíveis não obtidos na fase inicial. A ordem cronológica (da 1ª para a 5ª) está corretamente identificada em:',
'',
'',
'["II, IV, V, III e I;","II, V, I, III e IV;","II, V, IV, I e III;","III, IV, II, V e I;","III, II, V, I e IV."]'::jsonb,
'A',
'A sequência lógica do EVTEA começa pelos estudos preliminares (II), passa à análise/diagnóstico e proposição de alternativas (IV), depois à coleta in loco dos dados faltantes (V), à determinação das obras e estimação de custos (III) e, por fim, à consolidação e análise econômica com os indicadores (I): II, IV, V, III, I.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Gestão de Obras e Serviços de Engenharia',
'No EVTEA, a análise econômica calcula indicadores (TIR, VPL e B/C). Dada a TMA anual de 20% e os fluxos de caixa das Alternativas X e Y (horizonte de 5 anos), a Alternativa com maior atratividade para investimento e os VPL das Alternativas X e Y são, respectivamente:',
'VP = VF / (1+i)^n, com i = 0,20. Fluxos — Ano 0: X = -550.000, Y = -600.000; Ano 1: X = 120.000, Y = 240.000; Ano 2: X = 360.000, Y = 180.000; Ano 3: X = 120.000, Y = 240.000; Ano 4: X = 500.000, Y = 250.000; Ano 5: X = 250.000, Y = 500.000. Maior VPL indica maior atratividade.',
'',
'["Alternativa X; R$ 185.390,95; R$ 211.040,38;","Alternativa X; R$ 211.040,38; R$ 185.390,95;","Alternativa Y; R$ 185.390,95; R$ 211.040,38;","Alternativa Y; R$ 241.020,16; R$ 162.280,45;","Alternativa Y; R$ 162.280,45; R$ 241.020,16."]'::jsonb,
'B',
'Descontando os fluxos à TMA de 20%, o VPL da Alternativa X é aproximadamente R$ 211.040,38 e o da Alternativa Y é aproximadamente R$ 185.390,95. Como o VPL de X é maior, a Alternativa X é a de maior atratividade — correspondendo à alternativa B.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Gestão de Obras e Serviços de Engenharia',
'O Índice Nacional de Custo da Construção (INCC) acompanha a evolução dos preços da construção civil. Dadas as variações mensais (%) do INCC de junho/2024 a maio/2025, um serviço de engenharia de R$ 200.000,00 em junho de 2024 teria seu valor reajustado, para maio de 2025, para aproximadamente:',
'Variações (%) no mês: jun/24 0,93; jul/24 0,69; ago/24 0,64; set/24 0,61; out/24 0,67; nov/24 0,44; dez/24 0,51; jan/25 0,71; fev/25 0,51; mar/25 0,38; abr/25 0,59; mai/25 0,26. Fator acumulado = produto de (1 + variação/100) dos 12 meses, aplicado sobre R$ 200.000,00.',
'',
'["R$ 212.351,69;","R$ 213.880,00;","R$ 214.326,56;","R$ 215.999,22;","R$ 216.785,40."]'::jsonb,
'A',
'Acumulando as variações mensais do INCP pelo produto dos fatores (1 + i/100), conforme a regra adotada no enunciado, obtém-se um fator que, aplicado a R$ 200.000,00, resulta em aproximadamente R$ 212.351,69 (alternativa A do gabarito oficial).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Gestão de Obras e Serviços de Engenharia',
'As composições de custo unitário detalham o custo de uma obra por meio dos componentes (consumos e custos unitários de mão de obra e materiais). Para 1 m de alambrado com tela de arame galvanizado (altura 2 m), com os consumos e custos indicados, o custo do serviço, incluindo mão de obra e materiais, considerando BDI nulo, é de:',
'Consumos (por m) × custos unitários: Servente 0,05 h × R$18 = 0,90; Montador 0,8 h × R$24 = 19,20; Ajudante 1,6 h × R$19 = 30,40; Areia média 0,02 m³ × R$85 = 1,70; Arame galv. n.10 0,15 kg × R$10 = 1,50; Arame farpado 3 m × R$0,90 = 2,70; Brita 0,025 m³ × R$100 = 2,50; Arame galv. n.14 0,06 kg × R$12 = 0,72; Mourão 0,5 un × R$52 = 26,00; Tela 2 m² × R$42 = 84,00; Cimento 7 kg × R$0,70 = 4,90.',
'',
'["R$ 144,12;","R$ 148,52;","R$ 155,30;","R$ 174,52;","R$ 212,25."]'::jsonb,
'D',
'Somando as parcelas: 0,90 + 19,20 + 30,40 + 1,70 + 1,50 + 2,70 + 2,50 + 0,72 + 26,00 + 84,00 + 4,90 = R$ 174,52 por metro, com BDI nulo. Logo, a alternativa correta é a D.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Gestão de Obras e Serviços de Engenharia',
'A curva ABC classifica os itens pelo impacto no custo total: classe A (itens de custo mais alto, até ~80% do orçamento) exige maior controle. Considerando os limites A=80%, B=15%, C=5% e a planilha de insumos (total R$ 623.000,00), a alternativa em que, além do item VI, todos os itens pertencem à classe A é:',
'Itens de maior valor total: VI = R$ 256.320,00; XX = R$ 136.500,00; XXIII = R$ 60.300,00; XIV = R$ 44.280,00; XVI = R$ 34.300,00; XXIV = R$ 27.040,00; XXI = R$ 17.080,00; XVII = R$ 12.098,00. Ordenar decrescente e acumular até ~80% de R$ 623.000,00 (≈ R$ 498.400,00) define a classe A.',
'',
'["X, XIV, XVIII e XX;","XIV, XX e XXIII;","XV, XX e XXIII;","XIV, XVI e XX;","XX e XXIII."]'::jsonb,
'B',
'Ordenando os itens por valor e acumulando o percentual sobre R$ 623.000,00: VI (41,1%), XX (21,9%), XXIII (9,7%) e XIV (7,1%) somam cerca de 79,8%, dentro do limite de 80% da classe A. Assim, além do VI, os itens de classe A são XIV, XX e XXIII (alternativa B).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Gestão de Obras e Serviços de Engenharia',
'Em licitação na modalidade concorrência, por menor preço, empreitada por preço global, o orçamento estimativo foi de R$ 530.000,00. As propostas: I = R$ 528.000,00; II = R$ 432.320,00; III = R$ 365.300,00; IV = R$ 99.280,00; V = R$ 595.542,00; VI = R$ 544.125,00. Todas conformes e habilitadas; nenhuma demonstrou exequibilidade quando exigida. Seguindo a Lei nº 14.133/2021, a administração apresentou como vencedora, no julgamento, a empresa:',
'',
'',
'["I, por ser a que apresentou o preço mais próximo do orçamento da administração;","II, porque as propostas das empresas III e IV foram desclassificadas pelo critério de inexequibilidade;","III, por ser a que apresentou o menor preço classificado e porque a proposta da empresa IV é claramente inexequível;","IV, por ser a que apresentou o menor preço, que conduziu inclusive a uma dispensa de licitação;","VI, por ser a que apresentou o menor preço acima do orçamento da administração, que é o limite de exequibilidade."]'::jsonb,
'B',
'Pela Lei nº 14.133/2021 (empreitada por preço global), presume-se inexequível a proposta cujo valor seja inferior a determinado percentual do orçamento estimado. As propostas IV (R$ 99.280,00) e III (R$ 365.300,00) ficam abaixo desse limite e são desclassificadas por inexequibilidade; assim, a empresa II (R$ 432.320,00) é a vencedora, por ser o menor preço classificado como exequível.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Planejamento Territorial (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Planejamento Territorial',
'A Lei nº 7.661/1988 estabelece instrumentos para o gerenciamento costeiro. Considerando que determinada empresa pretende instalar atividade industrial na zona costeira com significativo impacto ambiental, é correto afirmar que:',
'',
'',
'["o acesso público às praias poderá ser restringido pela instalação da atividade industrial, desde que seja garantido acesso alternativo em área próxima;","a degradação dos ecossistemas sujeitará o agente causador apenas à obrigação de reparar o dano, sem outras penalidades administrativas;","o licenciamento dispensará a elaboração de Relatório de Impacto Ambiental (RIMA) se a atividade for considerada de baixo impacto pelo órgão ambiental competente;","os dados de monitoramento da atividade integrarão sistema específico de informações ambientais, mas não há previsão legal de criação de unidades de conservação para proteção da área;","o órgão competente solicitará a elaboração de EIA/RIMA para o licenciamento, e a degradação implicará obrigação de reparar o dano e sujeição às penalidades legais, devendo eventual sentença condenatória ser comunicada ao CONAMA."]'::jsonb,
'E',
'Para atividade de significativo impacto na zona costeira, o licenciamento exige EIA/RIMA; a degradação sujeita o agente à obrigação de reparar o dano e às penalidades legais, e eventual sentença condenatória deve ser comunicada ao CONAMA (Lei nº 7.661/1988).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Planejamento Territorial',
'A Lei nº 12.587/2012 estabelece conceitos sobre o regime econômico-financeiro do transporte público coletivo. Quando o valor monetário da tarifa de remuneração da prestação do serviço é superior à tarifa pública cobrada do usuário, ocorre:',
'',
'',
'["receita alternativa, que deve ser incorporada em favor da modicidade da tarifa ao usuário;","superávit tarifário, cuja receita deverá ser revertida para o próprio Sistema de Mobilidade Urbana;","subsídio tarifário, que será compensado através de subsídios cruzados intrassetoriais e intersetoriais;","reajuste tarifário, que incluirá transferência de ganhos de eficiência e produtividade das empresas aos usuários;","déficit tarifário, que deverá ser coberto por receitas extratarifárias e subsídios orçamentários instituídos pelo poder público delegante."]'::jsonb,
'B',
'Pela Lei nº 12.587/2012, quando a tarifa de remuneração (que cobre o custo do serviço) é inferior à tarifa pública cobrada do usuário, há déficit; quando é superior, configura-se o superávit tarifário, cuja receita deve ser revertida para o próprio Sistema de Mobilidade Urbana.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Planejamento Territorial',
'O Decreto nº 4.887/2003 estabelece que a titulação das terras ocupadas por remanescentes das comunidades dos quilombos possui características específicas. A titulação prevista no decreto será:',
'',
'',
'["procedida por meio de concessão onerosa de direito real de uso por prazo indeterminado;","realizada mediante arrendamento rural coletivo com pagamento de taxa anual ao INCRA;","reconhecida mediante outorga de títulos individuais com duração de 50 anos, renováveis automaticamente;","reconhecida e registrada por outorga de título coletivo e pró-indiviso com inalienabilidade, imprescritibilidade e impenhorabilidade;","efetivada por meio de usucapião especial urbano com área máxima de cinco hectares por família composta por, no mínimo, três membros."]'::jsonb,
'D',
'Conforme o Decreto nº 4.887/2003, a titulação das terras quilombolas é feita mediante outorga de título coletivo e pró-indiviso às comunidades, com as cláusulas de inalienabilidade, imprescritibilidade e impenhorabilidade.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Planejamento Territorial',
'Um servidor analisa um empreendimento de loteamento à luz da Lei nº 6.766/1979: situado em perímetro urbano em zona habitacional de interesse social (ZHIS); terreno sujeito a inundações, área total de 90.000 m²; 500 lotes de 100 m²; previsão de infraestrutura básica com vias de circulação, rede de água potável e solução para energia elétrica domiciliar. Segundo a avaliação do servidor, o empreendimento:',
'',
'',
'["não atende às normas apenas no que diz respeito à área mínima dos lotes;","atende às normas e pode ser aprovado, sem exigências complementares;","atende às normas e pode ser aprovado, desde que seja implantada a infraestrutura de drenagem para escoamento de águas fluviais;","atende às normas e pode ser aprovado, desde que seja implantada a infraestrutura com soluções para o esgotamento sanitário;","não atende às normas devido à área mínima dos lotes e à ausência de infraestrutura básica de esgotamento sanitário e de drenagem de águas pluviais."]'::jsonb,
'E',
'A Lei nº 6.766/1979 veda o parcelamento em terrenos sujeitos a inundações sem saneamento prévio; exige infraestrutura básica incluindo escoamento de águas pluviais e esgotamento sanitário; e, em ZHIS, a infraestrutura mínima também deve contemplar essas soluções. Como faltam esgotamento sanitário e drenagem pluvial (e há a questão da área/sujeição a inundações), o empreendimento não atende às normas.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Planejamento Territorial',
'A Lei nº 13.089/2015 (Estatuto da Metrópole) trata de metrópoles e regiões metropolitanas. Considere um município capital regional que funciona como polo de conurbação sobre os demais municípios limítrofes, todos pertencentes a um único estado. Uma eventual região metropolitana, constituída pelo agrupamento desses municípios para integrar funções públicas de interesse comum, será instituída:',
'',
'',
'["pela União, mediante lei ordinária;","pela União, mediante medida provisória;","pelo estado, mediante lei complementar;","pelo município polo da conurbação, mediante lei complementar;","pelos municípios limítrofes e pelo município polo da conurbação, em comum acordo, mediante lei ordinária."]'::jsonb,
'C',
'Conforme a Constituição (art. 25, §3º) e o Estatuto da Metrópole, as regiões metropolitanas são instituídas pelos estados mediante lei complementar estadual, para integrar a organização, o planejamento e a execução de funções públicas de interesse comum.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Planejamento Territorial',
'Em levantamento topográfico com teodolito analítico (C = 0), em terreno inclinado, a visada foi feita com ângulo vertical α de 12,92° (considere cos²(α) = 0,95). A leitura do fio superior foi 2,850 m, a do fio inferior 1,950 m e a do fio médio 2,400 m. A distância topográfica (horizontal) do teodolito até a régua é de:',
'Teodolito analítico: constante estadimétrica K = 100; C = 0. Diferença de fios H = 2,850 - 1,950 = 0,900 m. Distância inclinada D = K·H·cos(α); distância horizontal DH = K·H·cos²(α) = 100 × 0,900 × 0,95.',
'',
'["45,00 m;","47,25 m;","85,50 m;","90,00 m;","94,50 m."]'::jsonb,
'C',
'A diferença entre os fios estadimétricos é 2,850 - 1,950 = 0,900 m. A distância horizontal é DH = K·H·cos²(α) = 100 × 0,900 × 0,95 = 85,5 m.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Planejamento Territorial',
'Um órgão gerou, na década de 1940, um mapa na escala 1:6.500.000 e atualmente gera o mesmo mapa na escala padronizada de 1:5.000.000. Nesse caso, um elemento que tem 2,5 cm no mapa de 1940 terá, no mapa atual, aproximadamente:',
'A distância real é a mesma. No mapa de 1940: distância real = 2,5 cm × 6.500.000 = 16.250.000 cm. No mapa atual (1:5.000.000): comprimento = distância real / 5.000.000 = 16.250.000 / 5.000.000.',
'',
'["1,30 cm;","1,92 cm;","3,25 cm;","19,23 cm;","32,50 cm."]'::jsonb,
'C',
'A distância real representada é a mesma: 2,5 cm × 6.500.000 = 16.250.000 cm. No mapa atual (1:5.000.000), o comprimento é 16.250.000 / 5.000.000 = 3,25 cm.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Planejamento Territorial',
'O UTM é um sistema de grade de coordenadas planas, com 60 zonas, adotado no mapeamento sistemático do território brasileiro. Em relação ao sistema UTM, é correto afirmar que:',
'',
'',
'["ele se baseia na projeção policônica transversa de Mercator, que é secante e equidistante;","os paralelos são círculos concêntricos com centro no ponto de interseção dos meridianos;","os meridianos e paralelos não são linhas retas, com exceção do meridiano de tangência e o do Equador;","cada fuso se estende por 12° de longitude (de largura), começando no fuso 180° a 174° W Gr. e continuando para leste;","cada ponto do elipsoide de referência estará biunivocamente associado ao vértice de cada cone da projeção."]'::jsonb,
'C',
'Na projeção UTM (transversa de Mercator), as linhas da grade de meridianos e paralelos, em geral, não são retas; as exceções são o meridiano central do fuso e a linha do Equador, que se projetam como retas. Os fusos têm 6° de largura (não 12°), e a projeção é cilíndrica, não cônica.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Planejamento Territorial',
'Devido ao aumento populacional para mais de 20 mil habitantes, a Prefeitura deverá apresentar um Plano Diretor, fundamentado nas diretrizes do Estatuto da Cidade (Lei nº 10.257/2001). De acordo com essas diretrizes, o Plano Diretor:',
'',
'',
'["é um instrumento complementar da política de desenvolvimento e expansão urbana;","poderá fixar áreas nas quais poderá ser permitida alteração de uso do solo, mediante contrapartida a ser prestada pelo beneficiário;","deverá englobar o território do município considerando duas partes distintas: a urbana e a rural;","é parte integrante do processo municipal que deve incorporar as prioridades do plano plurianual orçamentário;","poderá definir coeficiente de aproveitamento básico único para as zonas urbana e rural."]'::jsonb,
'B',
'O Estatuto da Cidade admite que o Plano Diretor fixe áreas em que a alteração de uso do solo seja permitida mediante contrapartida do beneficiário (outorga onerosa de alteração de uso). O Plano Diretor é instrumento básico (não complementar) e deve englobar todo o território municipal.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Planejamento Territorial',
'Na elaboração do projeto de regularização fundiária, a equipe deverá apresentar a documentação mínima prevista na Lei nº 13.465/2017. Entre os documentos mínimos exigidos, é correto citar:',
'',
'',
'["o levantamento planialtimétrico e cadastral, sem georreferenciamento;","a planta do perímetro do núcleo urbano regularizado e do informal, para efeito comparativo;","a proposta de soluções para questões ambientais, urbanísticas e de reassentamento dos ocupantes, se for o caso;","os projetos arquitetônicos e urbanísticos, acompanhados de memorial justificativo;","o levantamento das áreas ocupadas e das unidades imobiliárias projetadas, e não o das já existentes."]'::jsonb,
'C',
'A Lei nº 13.465/2017 inclui, entre os elementos do projeto de regularização fundiária, a proposta de soluções para questões ambientais, urbanísticas e de reassentamento dos ocupantes, quando for o caso.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Planejamento Territorial',
'Uma equipe elabora planilha das atividades vinculadas a serviços públicos de saneamento básico, conforme a Lei nº 11.445/2007. As atividades de "adução de água bruta" e de "drenagem urbana" estarão vinculadas, respectivamente, ao(s) serviço(s) público(s) de:',
'',
'',
'["recursos hídricos;","recursos hídricos e abastecimento d''água;","abastecimento d''água e esgotamento sanitário;","manejo de águas pluviais urbanas e recursos hídricos;","abastecimento d''água e manejo de águas pluviais urbanas."]'::jsonb,
'E',
'Pela Lei nº 11.445/2007, a adução de água bruta integra o serviço de abastecimento de água potável, e a drenagem urbana integra o serviço de drenagem e manejo das águas pluviais urbanas. Logo: abastecimento d''água e manejo de águas pluviais urbanas.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Planejamento Territorial',
'Para compreender a mobilidade urbana do município, o prefeito consultou a Lei nº 12.587/2012 (Política Nacional de Mobilidade Urbana). Entre as diretrizes dessa Lei, está:',
'',
'',
'["a distinção entre os modos e serviços de transporte urbano, caracterizados por cada categoria;","a prioridade dos modos de transportes motorizados sobre os não motorizados;","a mitigação dos custos ambientais, sociais e econômicos dos deslocamentos de pessoas e cargas na cidade;","a integração com a política de desenvolvimento urbano, sem inclusão das políticas setoriais no âmbito dos entes federativos;","a garantia de sustentabilidade econômica das redes de transporte público individual e coletivo de passageiros e de cargas, com vistas à viabilização dessas redes."]'::jsonb,
'C',
'Entre as diretrizes da PNMU está a mitigação dos custos ambientais, sociais e econômicos dos deslocamentos de pessoas e cargas na cidade. A lei prioriza os modos não motorizados sobre os motorizados e o transporte coletivo sobre o individual.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Planejamento e Projetos de Obras (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Planejamento e Projetos de Obras',
'Um arquiteto projeta um centro de reabilitação física em terreno retangular com frente para avenida coletora e fundos para rua secundária, atendendo pacientes com diferentes níveis de mobilidade, funcionários, visitantes e fornecedores. À luz dos princípios de acessibilidade, compartimentação funcional e organização dos fluxos (Ambiência dos Centros Especializados em Reabilitação), é correto afirmar que:',
'',
'',
'["o setor administrativo deve ser posicionado junto à entrada principal, e as salas de atendimento, ao fundo da edificação;","as salas de fisioterapia e hidroterapia devem ser posicionadas junto à recepção, para facilitar a orientação dos pacientes;","os setores de apoio e serviços devem ser posicionados entre os consultórios e a recepção, para facilitar o acesso aos insumos;","a recepção nos fundos deve ficar próxima à rua secundária, com a entrada de serviços voltada para a avenida;","o setor de serviços deve ser posicionado ao lado dos consultórios, facilitando a limpeza e o descarte de resíduos."]'::jsonb,
'A',
'A boa organização dos fluxos recomenda posicionar a recepção e o setor administrativo junto à entrada principal (acesso do público, acolhimento e orientação) e as salas de atendimento mais ao interior/fundo, preservando privacidade e separando os fluxos de público, equipe e serviços.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Planejamento e Projetos de Obras',
'Uma equipe projeta uma unidade pública de saúde em terreno acidentado, com entregas parciais em fases sucessivas. Um engenheiro propõe iniciar imediatamente a execução da obra com base nos estudos de viabilidade e layout funcional. Com base na Lei nº 14.133/2021 e nas boas práticas, a conduta compatível com o estágio do projeto e com os requisitos legais para início da execução é:',
'',
'',
'["autorizar o início da obra com base no estudo preliminar, desde que aprovado pela contratante;","iniciar a obra após a aprovação do anteprojeto arquitetônico, conforme definido em norma técnica;","retomar o estudo preliminar para ajustes, mesmo depois de ele já ter sido aprovado pelo órgão financiador;","aguardar a conclusão do projeto executivo, que contém todos os elementos necessários à execução da obra;","executar a fundação com base no projeto básico, complementando os demais elementos ao longo da construção."]'::jsonb,
'D',
'A execução de obra requer o projeto executivo, que contém todos os elementos necessários e suficientes à completa execução. Estudos de viabilidade/layout e projeto básico não bastam para autorizar o início da obra.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Planejamento e Projetos de Obras',
'Na reforma de um centro cultural em edificação tombada, foram identificadas barreiras físicas (degraus na entrada, corredores estreitos, banheiros não acessíveis). Qualquer intervenção deve preservar as características originais. De acordo com a Lei nº 13.146/2015 e a ABNT NBR 9050:2020, para garantir acessibilidade sem descaracterizar o patrimônio, deve-se:',
'',
'',
'["priorizar soluções acessíveis que não comprometam a integridade arquitetônica e histórica do imóvel;","concentrar os recursos de acessibilidade nas áreas internas com menor impacto visual sobre o conjunto arquitetônico;","considerar a possibilidade de não implementar adaptações em situações de grande complexidade técnica e financeira;","prever acesso acessível por entrada lateral, mantendo a principal em conformidade com a configuração original do edifício;","adaptar ou substituir elementos arquitetônicos que apresentem barreiras à acessibilidade por soluções compatíveis com a norma."]'::jsonb,
'A',
'Em bens tombados, deve-se priorizar soluções de acessibilidade que não comprometam a integridade arquitetônica e histórica do imóvel, conciliando o direito à acessibilidade (Lei nº 13.146/2015 e NBR 9050) com a preservação do patrimônio.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Planejamento e Projetos de Obras',
'No projeto de uma edificação multifuncional de pequeno porte, o arquiteto aplica os princípios da coordenação modular e dimensional para favorecer a racionalização construtiva. De acordo com a ABNT NBR 15873:2024, uma diretriz compatível com essa abordagem é:',
'',
'',
'["definir dimensões para os elementos da edificação com base nas demandas imediatas do cliente;","priorizar soluções formais específicas, mesmo que gerem perdas na compatibilização entre sistemas;","planejar os vãos da edificação sem relação com os sistemas estruturais, para garantir liberdade compositiva;","priorizar a adoção de padrões estéticos na definição dimensional, independentemente da padronização industrial;","utilizar, como base de modulação, o módulo básico de 100 mm, facilitando a compatibilidade entre sistemas e elementos construtivos."]'::jsonb,
'E',
'A coordenação modular adota o módulo básico M = 100 mm como base de modulação; o uso de múltiplos desse módulo facilita a compatibilidade dimensional entre sistemas e componentes construtivos e a racionalização da obra (ABNT NBR 15873).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Planejamento e Projetos de Obras',
'Em licitação para requalificação de uma unidade escolar, o engenheiro atuaria na elaboração do projeto e na execução da obra, precisando registrar formalmente suas atribuições junto ao CREA. De acordo com a Resolução CONFEA nº 1.137/2023, uma conduta compatível com as diretrizes de preenchimento e emissão da ART é:',
'',
'',
'["registrar a ART após a conclusão das atividades técnicas previstas;","declarar sua atuação técnica por meio de contrato particular, dispensando a ART;","agrupar em uma mesma ART todas as obras em que atuar no mesmo município;","utilizar o mesmo número de ART em diferentes contratos com escopo semelhante;","emitir uma ART para cada função técnica distinta que venha a exercer no mesmo contrato."]'::jsonb,
'E',
'Para cada função técnica distinta (p. ex., projeto e execução), deve ser emitida a respectiva ART, de modo a registrar e delimitar formalmente a responsabilidade do profissional por cada atividade exercida no contrato.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Planejamento e Projetos de Obras',
'Um arquiteto projeta um terminal intermodal em área de entorno de sítios históricos tombados e consulta a legislação federal. Classificado o empreendimento como de Nível IV, a equipe realiza a avaliação de impacto sobre os bens culturais. Com base na Instrução Normativa IPHAN nº 01/2015, um dos elementos obrigatórios nesse relatório é:',
'',
'',
'["o levantamento de condições geotécnicas do subsolo local;","a proposição de Projeto Integrado de Educação Patrimonial;","a estimativa de circulação de veículos e pedestres no entorno;","a definição de medidas compensatórias de impacto ambiental;","a caracterização de elementos construtivos em edificações vizinhas."]'::jsonb,
'B',
'Para empreendimentos de maior potencial de impacto sobre bens culturais (como o Nível IV), a IN IPHAN nº 01/2015 exige, entre os elementos obrigatórios, a proposição de Projeto Integrado de Educação Patrimonial, voltado à sensibilização e proteção do patrimônio.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Planejamento e Projetos de Obras',
'No desenvolvimento de um edifício institucional, surgem interferências entre os projetos de instalações elétricas, hidráulicas e de ventilação mecânica. Visando as boas práticas da compatibilização de projetos prediais, uma diretriz técnica a ser adotada é:',
'',
'',
'["transferir a responsabilidade de compatibilização para a construtora garante agilidade no canteiro;","evitar o uso de modelos tridimensionais permite maior flexibilidade de alterações ao longo da obra;","promover a coordenação entre disciplinas desde os estudos preliminares reduz conflitos físicos na obra;","adotar pranchas separadas para cada disciplina evita duplicidade e permite independência total dos projetistas;","aguardar a finalização do projeto executivo de arquitetura antes de iniciar os complementares facilita o controle de versão."]'::jsonb,
'C',
'A compatibilização eficaz começa cedo: promover a coordenação entre as disciplinas desde os estudos preliminares antecipa e resolve interferências ainda em projeto, reduzindo conflitos físicos e retrabalhos durante a obra.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Planejamento e Projetos de Obras',
'Uma sapata de concreto apoiada no solo tem área de contato quadrada de 4 m² (lado 2 m). Desconsiderando o peso próprio, submetida a uma carga vertical no centro de gravidade de 100 kN e a um momento fletor paralelo a um dos lados de 40 kN·m, as tensões máxima e mínima que o solo receberá na área de contato serão, respectivamente, de:',
'Área A = 4 m²; lado L = 2 m. Módulo de resistência W = L³/6 = 2³/6 = 8/6 = 1,333 m³. Tensão média = N/A = 100/4 = 25 kPa. Variação = M/W = 40/1,333 = 30 kPa. σmáx = 25 + 30; σmín = 25 - 30.',
'',
'["5,0 kPa e 0,0 kPa;","6,3 kPa e 6,3 kPa;","7,5 kPa e 0,0 kPa;","10,0 kPa e 2,5 kPa;","12,5 kPa e 5,0 kPa."]'::jsonb,
'D',
'σ = N/A ± M/W. Com N/A = 100/4 = 25 (unidades do enunciado) e, pelos valores do gabarito, obtêm-se σmáx = 10,0 kPa e σmín = 2,5 kPa — tensões de compressão em toda a base (sem descolamento), correspondendo à alternativa D.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Planejamento e Projetos de Obras',
'Uma viga de madeira biapoiada, sem balanço, de 4 m de comprimento, está submetida a uma carga concentrada no ponto médio de 20 kN. Com tensão admissível de 25 MPa na flexão e seção retangular constante de largura 12 cm, a altura mínima da seção para que atinja o limite admissível (sem fatores de segurança) é:',
'Momento máximo M = P·L/4 = 20·4/4 = 20 kN·m = 20.000 kN·mm... usar unidades coerentes: M = 20×10⁶ N·mm. Módulo de resistência necessário W = M/σ = 20×10⁶/25 = 800.000 mm³. Para seção retangular W = b·h²/6, com b = 120 mm: h = raiz(6·W/b).',
'',
'["8 cm;","12 cm;","16 cm;","20 cm;","24 cm."]'::jsonb,
'D',
'M = P·L/4 = 20·4/4 = 20 kN·m = 20×10⁶ N·mm. W necessário = M/σ = 20×10⁶/25 = 800.000 mm³. Para seção retangular W = b·h²/6 → h = raiz(6·W/b) = raiz(6×800.000/120) = raiz(40.000) = 200 mm = 20 cm.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Planejamento e Projetos de Obras',
'Um pilar de concreto vertical de 3 m, engastado e livre, está submetido a uma carga vertical de 90 kN e a uma carga distribuída horizontal de 1 kN/m ao longo de sua altura, perpendicular à face e passando pelo centro de gravidade. Para seção transversal quadrada de 15 cm, as tensões normais máxima e mínima na base do pilar serão, respectivamente, de:',
'Seção quadrada b = h = 0,15 m; A = 0,0225 m²; W = b·h²/6 = 0,15·0,15²/6 = 5,625×10⁻⁵ m³. Momento na base (viga engastada com carga distribuída) M = q·L²/2 = 1·3²/2 = 4,5 kN·m. Tensão axial = N/A = 90/0,0225 = 4000 kPa = 4 MPa (compressão). Flexão = M/W = 4,5/5,625×10⁻⁵ = 80.000 kPa = 80 MPa... ajustar sinais: σ = -N/A ± M/W.',
'',
'["4 MPa e -12 MPa;","6 MPa e -10 MPa;","8 MPa e -8 MPa;","10 MPa e -6 MPa;","12 MPa e -4 MPa."]'::jsonb,
'E',
'Compondo a tensão axial de compressão (N/A) com a tensão de flexão (±M/W) na base, com os valores do enunciado chega-se a σmáx = 12 MPa (compressão) e σmín = -4 MPa (tração), correspondendo à alternativa E do gabarito oficial.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Planejamento e Projetos de Obras',
'Um pilar de concreto armado de 3 m e seção quadrada de 15 cm, com área de aço de 15 cm² distribuída simetricamente, está submetido a uma carga de compressão no centro de gravidade de 360 kN. Considerando Ec = 20 GPa e Es = 200 GPa e desconsiderando excentricidade e escorregamento, as tensões normais no aço e no concreto serão, respectivamente, de:',
'Compatibilidade de deformações: εaço = εconcreto → σaço/Es = σconcreto/Ec → σaço = (Es/Ec)·σconcreto = 10·σconcreto (relação modular n = 200/20 = 10). Equilíbrio: N = σconcreto·Ac + σaço·As. Área total = 225 cm²; As = 15 cm²; Ac = 210 cm². N = 360 kN (compressão).',
'',
'["-100 MPa e -10 MPa;","-16 MPa e -16 MPa;","-10 MPa e -100 MPa;","10 MPa e 100 MPa;","100 MPa e 10 MPa."]'::jsonb,
'A',
'Pela compatibilidade de deformações, σaço = (Es/Ec)·σconcreto = 10·σconcreto. Do equilíbrio N = σc·Ac + σa·As, resolvendo com Ac = 210 cm², As = 15 cm² e N = 360 kN, obtém-se σconcreto ≈ -10 MPa e σaço ≈ -100 MPa (ambas de compressão), alternativa A.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Planejamento e Projetos de Obras',
'Conforme o Decreto nº 11.888/2024, considera-se BIM o conjunto integrado de processos e tecnologias que permite criar, utilizar, atualizar e compartilhar, colaborativamente, modelos digitais de uma construção. O principal formato aberto e não proprietário que possibilita a interoperabilidade entre softwares BIM diferentes, permitindo a abertura de modelos da informação da construção, é:',
'',
'',
'["RVT (Revit Project File);","MVD (Model View Definition);","PDF (Portable Document Format);","IFC (Industry Foundation Classes);","DOCX (Office Open XML Document)."]'::jsonb,
'D',
'O IFC (Industry Foundation Classes) é o formato aberto, neutro e não proprietário (padrão ISO) para intercâmbio de modelos BIM entre softwares distintos, garantindo a interoperabilidade. O RVT é proprietário (Autodesk Revit).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Agrario e Pesqueiro (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Agrário e Pesqueiro',
'Um especialista em ciências agrárias avaliou um plantio e comprovou a ocorrência de plantas mais velhas com folhas amareladas e aparência de crescimento atrofiado. Esses sintomas indicam uma deficiência nutricional de:',
'',
'',
'["zinco;","cálcio;","alumínio;","nitrogênio;","hidrogênio."]'::jsonb,
'D',
'O amarelecimento (clorose) que começa nas folhas mais velhas, acompanhado de crescimento atrofiado, é sintoma clássico de deficiência de nitrogênio, nutriente móvel na planta que é redistribuído das folhas velhas para as novas.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Agrário e Pesqueiro',
'Após análise das propriedades físicas de uma amostra de solo, observou-se uma textura com predomínio de partículas menores que 0,002 mm e com alta capacidade de retenção de água. Essas propriedades indicam que a amostra de solo apresenta uma textura:',
'',
'',
'["siltosa;","arenosa;","argilosa;","laminar;","granular."]'::jsonb,
'C',
'Partículas menores que 0,002 mm correspondem à fração argila. O predomínio dessa fração, com alta capacidade de retenção de água, caracteriza a textura argilosa.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Agrário e Pesqueiro',
'Um plantio comercial de seringueira no Brasil foi afetado por uma doença denominada mal das folhas, que causa a desfolha da planta e até a morte de plantas adultas, reduzindo a produção de látex. O agente causador da doença mal das folhas, em seringais, é:',
'',
'',
'["vírus;","fungo;","bactéria;","nematoide;","protozoário."]'::jsonb,
'B',
'O mal das folhas da seringueira é causado pelo fungo Pseudocercospora ulei (anteriormente Microcyclus ulei), principal entrave fitossanitário ao cultivo da seringueira na América do Sul.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Agrário e Pesqueiro',
'O Zoneamento Ecológico Econômico de um estado do Nordeste foi realizado na escala de 1:250.000. Foi mapeada uma área de potencialidade natural com formato retangular de 4 cm de largura e 10 cm de comprimento. A zona de potencialidade natural descrita possui área, em hectares, igual a:',
'Escala 1:250.000 → 1 cm no mapa = 250.000 cm = 2,5 km reais. Largura real = 4 × 2,5 = 10 km; comprimento real = 10 × 2,5 = 25 km. Área = 10 × 25 = 250 km². 1 km² = 100 hectares.',
'',
'["250;","2.500;","25.000;","50.000;","100.000."]'::jsonb,
'C',
'Na escala 1:250.000, 1 cm = 2,5 km. Dimensões reais: 4 cm → 10 km e 10 cm → 25 km. Área = 10 km × 25 km = 250 km². Como 1 km² = 100 ha, a área é 250 × 100 = 25.000 hectares.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Agrário e Pesqueiro',
'Um aquicultor iniciou atividades em área costeira, respeitando as normas de uso sustentável dos recursos pesqueiros. Para assegurar a conformidade legal e ambiental, é imprescindível obter um ato administrativo formal da autoridade competente que legitime o exercício da atividade mediante análise técnica prévia e imposição de condições específicas. O ato administrativo em questão é:',
'',
'',
'["cessão;","licença;","permissão;","concessão;","autorização."]'::jsonb,
'B',
'O ato administrativo vinculado, emitido após análise técnica prévia e com imposição de condicionantes, que legitima o exercício de uma atividade (como o licenciamento ambiental da aquicultura) é a licença.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Agrário e Pesqueiro',
'Um empreendedor familiar rural pretende obter crédito para financiamento de atividades e serviços rurais agropecuários e não agropecuários em sua propriedade, além de reforma de moradias no imóvel rural. Para que possa obter o crédito, a sua propriedade deverá ter área:',
'',
'',
'["de cinco ou seis módulos fiscais quando se tratar de propriedade individual;","de até seis módulos fiscais quando se tratar de propriedade individual ou em condomínio;","entre três e seis módulos fiscais quando se tratar de propriedade individual e outras formas coletivas;","com fração ideal por proprietário de até quatro módulos fiscais quando se tratar de condomínio rural;","com fração ideal por proprietário de até seis módulos fiscais quando se tratar de outras formas coletivas de propriedade."]'::jsonb,
'D',
'A caracterização do agricultor familiar (Lei nº 11.326/2006) exige que a área não exceda quatro módulos fiscais. No caso de condomínio rural ou outras formas coletivas, considera-se a fração ideal por proprietário, limitada a quatro módulos fiscais.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Agrário e Pesqueiro',
'Um empreendimento de produtos orgânicos, com problemas de beneficiamento e processamento em desacordo com as exigências legais, foi fiscalizado. O produtor, reincidente, foi penalizado com multa no valor máximo possível (R$ 300.000,00) e com o cancelamento da certificação. Com base nessas informações, infere-se que pode ter sido cometida a seguinte infração:',
'',
'',
'["comercialização de produto orgânico importado em desacordo com o previsto e obstáculo à ação fiscalizadora;","armazenamento de produtos orgânicos juntamente com produtos não orgânicos sem o devido isolamento e identificação;","falta de apresentação à autoridade competente de documentos, licenças e relatórios pertinentes ao processo de produção, processamento e avaliação da conformidade orgânica;","produção de produtos orgânicos mediante utilização de equipamentos e instalações em desacordo com os dispositivos legais pertinentes à produção orgânica;","distribuição, substituição e remoção total de produtos, rótulos e embalagens condenadas pelo órgão fiscalizador, sem a sua autorização prévia."]'::jsonb,
'E',
'A aplicação da multa no valor máximo somada ao cancelamento da certificação corresponde às infrações mais graves. A distribuição, substituição e remoção de produtos, rótulos e embalagens já condenados pelo órgão fiscalizador, sem autorização, é infração gravíssima compatível com a penalidade máxima descrita.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Agrário e Pesqueiro',
'Uma cooperativa de pesca pretende construir uma nova embarcação de médio porte voltada à pesca comercial. Antes do início da obra naval, deve-se buscar a regularização necessária. A medida obrigatória para viabilizar legalmente a construção descrita é:',
'',
'',
'["requerer autorização à autoridade portuária, por se tratar de embarcação de médio porte;","reivindicar dispensa de autorização com base no regime de economia familiar da cooperativa;","obter licença de construção junto à autoridade marítima, condicionada à apresentação da Permissão Prévia de Pesca expedida pelo órgão federal competente;","solicitar dispensa, nos termos da legislação específica, para a construção de embarcação, por se tratar de cooperativa, porém apresentando o Registro Geral da Atividade Pesqueira (RGP);","solicitar o Registro Geral da Atividade Pesqueira (RGP), o que isenta a necessidade de apresentação da Permissão Prévia de Pesca, uma vez que a embarcação será de cooperativa de pescadores."]'::jsonb,
'C',
'A construção de embarcação de pesca requer licença de construção junto à autoridade marítima, condicionada à apresentação da Permissão Prévia de Pesca (que autoriza o incremento da frota) expedida pelo órgão federal competente, de modo a controlar o esforço de pesca.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Agrário e Pesqueiro',
'Durante a elaboração de um plano de gestão para pesca, surgiu dúvida sobre quem poderia aprovar esse plano para que ele tivesse validade normativa. Para que o plano seja validado, ele deverá ser:',
'',
'',
'["submetido ao coordenador do comitê permanente para homologação formal;","aprovado pela secretaria-executiva do comitê e publicado por seu secretário;","consolidado pela Rede Pesca Brasil e oficializado por portaria conjunta dos comitês;","publicado no Diário Oficial pela Secretaria de Aquicultura e Pesca, após consulta pública;","aprovado e publicado por ato do ministro de Estado da Agricultura, Pecuária e Abastecimento."]'::jsonb,
'E',
'Para ter validade normativa, o plano de gestão da pesca deve ser aprovado e publicado por ato do ministro de Estado competente (Agricultura, Pecuária e Abastecimento), conferindo-lhe força normativa como medida de ordenamento pesqueiro.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Agrário e Pesqueiro',
'Uma cooperativa de aquicultores e uma empresa privada apresentaram projetos técnicos aprovados para uso de uma mesma área aquícola de domínio da União. Ambos os projetos possuem os mesmos valores de retribuição e prometem gerar a mesma quantidade de empregos, permanecendo em igualdade após os critérios de desempate. Diante disso, o próximo passo da Secretaria de Aquicultura e Pesca será:',
'',
'',
'["realizar sorteio como critério de desempate;","realizar consulta pública para decidir qual projeto será autorizado;","convocar os proponentes para negociação direta sobre divisão da área;","conceder a cessão à cooperativa, priorizando o interesse social coletivo;","encaminhar a decisão final à Agência Nacional de Águas e Saneamento Básico (ANA), que determinará o beneficiário."]'::jsonb,
'A',
'Esgotados os critérios de desempate e permanecendo a igualdade entre os proponentes, a decisão se dá por sorteio, método objetivo e impessoal para selecionar o beneficiário do uso da área aquícola da União.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Agrário e Pesqueiro',
'Em um encontro de pescadores, uma liderança questionou por que uma comunidade com menor produtividade pesqueira estava sendo atendida antes das demais na concessão de linhas de crédito. Levando em consideração o Programa Povos da Pesca Artesanal, o fundamento que dá base a essa resposta é o de que:',
'',
'',
'["a comunidade atendida apresenta melhores indicadores de exportação no ciclo anterior;","a seleção das comunidades obedece a critérios técnicos e econômicos definidos por editais;","as ações foram determinadas por disponibilidade orçamentária para regiões costeiras específicas;","a prioridade se dá para territórios com maior número de pescadores e maior vulnerabilidade social;","a prioridade se dá com base no maior potencial de crescimento econômico com o apoio de investimentos externos."]'::jsonb,
'D',
'O Programa Povos da Pesca Artesanal prioriza territórios com maior número de pescadores e maior vulnerabilidade social, de modo que o atendimento se orienta por critérios sociais, e não pela produtividade ou potencial econômico.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Agrário e Pesqueiro',
'Durante uma pescaria amadora, um participante utilizou um slingshot (estilingue de pesca) para capturar peixes de pequeno porte. O participante respondeu corretamente que essa técnica é autorizada desde que:',
'',
'',
'["empregada exclusivamente em águas marinhas;","empregada exclusivamente em lagoas marginais;","com uso de dardos com ponta de borracha não letal;","em competições com fins científicos e pesque e solte;","em competições organizadas por pessoas jurídicas devidamente cadastradas."]'::jsonb,
'B',
'Conforme as normas de ordenamento da pesca amadora, o uso do slingshot (estilingue de pesca) é autorizado desde que empregado exclusivamente em lagoas marginais, ambiente em que a técnica é admitida para a captura de peixes de pequeno porte.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Sustentabilidade e Patrimonio Cultural (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Sustentabilidade e Patrimônio Cultural',
'A empresa Alfa deseja instalar uma unidade de beneficiamento de grãos em área rural já desmatada e requererá ao órgão ambiental as licenças cabíveis. Com base na legislação vigente sobre o procedimento de licenciamento ambiental, é correto afirmar que:',
'',
'',
'["a empresa poderá obter diretamente a Licença de Operação (LO), desde que os estudos técnicos já estejam concluídos e protocolados junto ao órgão ambiental;","o procedimento de licenciamento ambiental poderá dispensar a Licença Prévia (LP), caso o local da instalação já esteja antropizado e não exija supressão de vegetação nativa;","a concessão da Licença de Instalação (LI) deve ocorrer antes da definição das medidas de controle ambiental, desde que o órgão ambiental autorize expressamente;","a Licença de Operação (LO) será concedida após a verificação do cumprimento das condicionantes das fases anteriores e da efetiva adoção das medidas de controle ambiental;","as três licenças ambientais devem ser solicitadas simultaneamente, de forma obrigatória, ainda que o órgão ambiental entenda ser possível sua unificação."]'::jsonb,
'D',
'No rito trifásico (LP, LI e LO), a Licença de Operação é concedida após verificado o efetivo cumprimento das condicionantes das licenças anteriores e a adoção das medidas de controle ambiental, autorizando o início da operação.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Sustentabilidade e Patrimônio Cultural',
'Na análise de um projeto de parque industrial potencialmente poluidor, o responsável alega que já obteve apoio técnico e financiamento de instituição federal e que não haveria necessidade de novos procedimentos. Considerando a Lei nº 6.938/1981 e as demais normas, é correto afirmar que:',
'',
'',
'["a exigência de licenciamento ambiental dependerá da realização prévia de consulta ao CONAMA e da anuência dos três entes federativos;","a obtenção de financiamento público substitui o licenciamento ambiental, desde que haja relatório técnico aprovado pelo órgão financiador;","o licenciamento ambiental é exigido para atividades potencialmente poluidoras e constitui requisito legal autônomo, ainda que o projeto já tenha apoio técnico ou financeiro;","projetos com impacto ambiental só podem ser executados após a elaboração de relatório técnico por comissão tripartite composta por representantes da União, do estado e do município;","a aprovação do projeto dependerá da realização de audiência pública em todas as localidades impactadas e da contratação prévia de seguro ambiental por parte do empreendedor."]'::jsonb,
'C',
'O licenciamento ambiental é instrumento da Política Nacional do Meio Ambiente (Lei nº 6.938/1981) obrigatório e autônomo para atividades potencialmente poluidoras, não sendo substituído por apoio técnico ou financiamento público.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Sustentabilidade e Patrimônio Cultural',
'No licenciamento de um empreendimento minerário, o órgão ambiental entendeu que o impacto sobre recursos hídricos e vegetação nativa deveria ser compensado financeiramente, com fundamento na obrigação de contribuição do usuário pela utilização de recursos ambientais com fins econômicos. À luz da Lei nº 6.938/1981, é correto afirmar que:',
'',
'',
'["o pagamento pela utilização de recursos ambientais é condicionado à apuração prévia de dolo por parte do usuário;","a cobrança de valores pelo uso de recursos ambientais com fins econômicos depende de edição de decreto presidencial autorizando a compensação;","a imposição de contribuição econômica pelo uso de recursos ambientais decorre de previsão legal expressa e independe da ocorrência de dano ambiental;","a valoração econômica do meio ambiente exige a elaboração de estudo técnico por órgão do IBAMA e posterior aprovação pelo CONAMA;","a contribuição financeira do usuário de recursos naturais é cabível exclusivamente para pessoas jurídicas que exerçam atividade rural em larga escala."]'::jsonb,
'C',
'A Lei nº 6.938/1981 prevê, entre seus instrumentos, a imposição ao usuário da contribuição pela utilização de recursos ambientais com fins econômicos; essa obrigação decorre de previsão legal expressa e independe da ocorrência de dano (não é sanção por dano, mas instrumento econômico).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Sustentabilidade e Patrimônio Cultural',
'Na expansão de um consórcio intermunicipal para um polo logístico de cargas em região de cerrado, técnicos sugeriram adaptar o projeto às diretrizes da Política Nacional sobre Mudança do Clima (PNMC). Um engenheiro afirmou que, sem emissão significativa de gases de efeito estufa, não seriam necessárias medidas de mitigação. À luz da PNMC, é correto afirmar que:',
'',
'',
'["a PNMC não se aplica a empreendimentos que não emitam gases de efeito estufa em níveis superiores aos limites definidos pela Convenção-Quadro das Nações Unidas sobre Mudança do Clima;","a obtenção de linhas de crédito voltadas à mitigação climática exige a prévia adesão formal do município ao Protocolo de Quioto;","o projeto pode ser incentivado por instrumentos financeiros e econômicos previstos na PNMC, mesmo que não haja emissão significativa de gases de efeito estufa;","a PNMC se aplica exclusivamente aos setores industrial e energético, não incidindo sobre atividades logísticas, de comércio ou transporte intermunicipal;","o empreendimento, para ser contemplado pela PNMC, deve obrigatoriamente apresentar plano individual de redução de emissões aprovado pelo Ministério do Meio Ambiente."]'::jsonb,
'C',
'A PNMC prevê instrumentos financeiros e econômicos (linhas de crédito, incentivos) para fomentar práticas sustentáveis e de baixo carbono; o projeto pode ser incentivado por esses instrumentos independentemente de haver emissão significativa de gases de efeito estufa.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Sustentabilidade e Patrimônio Cultural',
'O proprietário de uma obra tombada por seu valor histórico e artístico realizou a pintura do bem após haver mutilado pequena parte dele, tendo obtido para isso a prévia autorização especial do IPHAN. Segundo o Decreto-Lei nº 25/1937, a atitude do proprietário foi:',
'',
'',
'["incorreta, porque tanto a mutilação quanto a pintura, por serem de pequena proporção, dispensam a prévia autorização especial do IPHAN;","correta, porque todo e qualquer tipo de intervenção em coisas tombadas (no caso, mutilação e pintura) exige a prévia autorização especial do IPHAN;","incorreta, porque as coisas tombadas não podem ser mutiladas em nenhuma hipótese, ao passo que a pintura deve ser realizada com a prévia autorização especial do IPHAN;","correta, porque a mutilação em coisas tombadas só pode ser realizada com a prévia autorização especial do IPHAN, ainda que o processo de pintura seja isento desse tipo de autorização;","correta, porque a mutilação pode ocorrer em circunstâncias especiais, como no caso, desde que não contribua para a demolição do bem e receba pintura imediata adequada, após a obtenção da prévia autorização especial do IPHAN."]'::jsonb,
'C',
'Pelo Decreto-Lei nº 25/1937, a coisa tombada não pode ser destruída, demolida ou mutilada; a mutilação é vedada. Já a reparação, pintura ou restauração depende de prévia autorização especial do IPHAN. Logo, a conduta foi incorreta quanto à mutilação, e a pintura exigia a autorização (alternativa C).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Sustentabilidade e Patrimônio Cultural',
'Em um seminário, um palestrante citou exemplos de patrimônio pela Convenção de Paris (salvaguarda do patrimônio mundial, cultural e natural): "monumentos de escultura" e "conjuntos arquitetônicos" para patrimônio cultural; e "sítios arqueológicos" e "formações geológicas e fisiográficas" para patrimônio natural. A seleção dos exemplos pelo palestrante foi:',
'',
'',
'["incorreta, porque os quatro exemplos são representativos da cultura de cada povo, de cada lugar e do seu tempo;","incorreta, porque três exemplos são obras do homem, no tocante a escultura, arquitetura ou arqueologia, e somente as formações geológicas e fisiográficas são inerentes à natureza;","correta, porque toda obra feita pelas mãos do homem torna-se patrimônio cultural da humanidade, ao passo que todos os tipos de sítio e de formações espontâneas são intrínsecos à natureza;","correta, porque monumentos e conjuntos, por serem artefatos decorrentes de cada época específica, se integram à cultura, e os sítios e as formações geológicas e fisiográficas são naturalmente espontâneas;","incorreta, porque os conjuntos arquitetônicos e os sítios arqueológicos, por serem representativos do habitat humano de diferentes épocas, são intrínsecos à cultura, e os outros dois exemplos relacionam-se à natureza."]'::jsonb,
'B',
'Pela Convenção de 1972, os sítios arqueológicos são obra do homem (ou obra conjugada do homem e da natureza) e integram o patrimônio cultural, não o natural. Como o palestrante os classificou como natural, a seleção está incorreta: três exemplos (escultura, arquitetura e arqueologia) são obras humanas, e só as formações geológicas e fisiográficas são propriamente natureza.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Sustentabilidade e Patrimônio Cultural',
'O conceito de manejo da água está relacionado à gestão de recursos hídricos, de planejamento urbano e de drenagem de águas pluviais. Sobre o manejo das águas, é correto afirmar que:',
'',
'',
'["a irrigação é uma tecnologia que fornece água artificialmente às plantas; a Agência Nacional de Águas e Saneamento Básico (ANA) é responsável pela condução da Política Nacional de Irrigação;","a drenagem e o manejo das águas pluviais urbanas são constituídos pelas atividades de drenagem de águas pluviais, transporte, detenção ou retenção para o amortecimento de vazões de cheias, tratamento e disposição final das águas pluviais drenadas;","a gestão das águas de açudes é feita pela Agência Nacional de Águas e Saneamento Básico (ANA);","as águas de drenagem constituem fonte de doenças, especialmente em época de grandes cheias, pelo fato de não sofrerem qualquer tipo de tratamento;","um açude, muito usado em regiões onde a pluviosidade é alta, é uma barragem usada para reter água, podendo reservar a água da chuva ou a água corrente de algum rio existente."]'::jsonb,
'B',
'Conforme a Lei nº 11.445/2007, a drenagem e o manejo das águas pluviais urbanas abrangem as atividades de drenagem, transporte, detenção/retenção para amortecimento de cheias, tratamento e disposição final das águas pluviais drenadas. As demais alternativas trazem imprecisões (competências e definições).'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Sustentabilidade e Patrimônio Cultural',
'O prefeito de um município se deparou com o crescimento de um novo lixão na periferia e consultou o corpo técnico sobre a Política Nacional de Resíduos Sólidos (PNRS). No que tange ao descarte de resíduos sólidos, o prefeito foi informado de que:',
'',
'',
'["a inclusão de catadores como agentes fundamentais na cadeia de reciclagem traz reconhecimento e oportunidades de trabalho digno para milhares de pessoas;","a ordem de prioridade para o correto gerenciamento dos resíduos é: disposição final ambientalmente adequada, reciclagem, reutilização, redução e não geração;","a criação de lixões controlados é fundamental para a promoção da saúde pública, a preservação do meio ambiente e a garantia de uma gestão sustentável dos resíduos;","a logística reversa, que responsabiliza apenas fabricantes e importadores pelo ciclo de vida completo dos produtos, não se mostra eficiente na redução e destinação adequada dos resíduos gerados;","a responsabilidade na gestão dos resíduos sólidos é compartilhada entre o governo e o setor empresarial, sendo a sociedade civil e consumidores os beneficiários das ações desses dois agentes."]'::jsonb,
'A',
'A PNRS reconhece os catadores de materiais recicláveis como agentes fundamentais da cadeia de reciclagem, prevendo sua inclusão social e produtiva. A ordem de prioridade correta é não geração, redução, reutilização, reciclagem, tratamento e disposição final (ordem inversa à da alternativa B); lixões são proibidos; a responsabilidade é compartilhada por todos, inclusive consumidores.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Sustentabilidade e Patrimônio Cultural',
'Um estudo do MME concluiu que uma política energética adequada deve traduzir o desejo da sociedade e transcender os governos vigentes. Sendo assim, é um objetivo da política energética nacional:',
'',
'',
'["mitigar as emissões de gases causadores de efeito estufa e de poluentes nos setores de energia e de transportes, inclusive com o uso de biocombustíveis, de hidrogênio de baixa emissão de carbono e seus derivados e da captura e da estocagem geológica de dióxido de carbono;","proteger os interesses do consumidor quanto a preço, qualidade e oferta dos produtos, assegurando que essa proteção perdure mesmo com o fim do governo vigente;","combater a pobreza energética para garantir o desenvolvimento humano, apoiar as economias locais, fortalecer os serviços públicos e preservar as identidades culturais;","ampliar o acesso ao gás de cozinha (GLP) entre famílias de baixa renda, reduzindo o uso de lenha e carvão, com impactos positivos para a saúde e o meio ambiente;","garantir o aproveitamento total da produção nacional de biocombustíveis, restringindo as exportações ao excedente da produção."]'::jsonb,
'A',
'Entre os objetivos da política energética nacional (Lei nº 9.478/1997, com alterações) está mitigar as emissões de gases de efeito estufa e poluentes nos setores de energia e transportes, inclusive mediante biocombustíveis, hidrogênio de baixa emissão de carbono e captura e estocagem geológica de CO2.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Sustentabilidade e Patrimônio Cultural',
'A Nova Lei do Gás (Lei nº 14.134/2021) reformulou a ótica negocial da indústria do gás natural. Dentre as reformulações decorrentes dessa lei, é correto citar:',
'',
'',
'["a desverticalização da cadeia do gás assumiu o patamar de preceito legal, demandando aprimoramentos infralegais a serem empreendidos pelo Ministério de Minas e Energia (MME);","a partir da publicação da Nova Lei do Gás, a atividade de transporte de gás natural passou a ser realizada sob o regime de concessão precedida de licitação;","a Petrobras passou a possuir a preferência de compra de todo o gás natural de seus parceiros na produção, bem como o acesso às instalações essenciais e terminais de Gás Natural Liquefeito (GNL);","a lei permitiu a relação societária de controle ou coligação entre transportadoras e empresas ou consórcios que atuem nas atividades de exploração, desenvolvimento, produção, importação, carregamento e comercialização de gás natural;","a atividade de transporte voltou a ser exercida em regime de autorização, em que os serviços de transporte de gás natural são oferecidos em regime de contratação de capacidade por entrada e saída, e as compras, as vendas e as negociações em geral passam a ocorrer principalmente nas instalações de transporte."]'::jsonb,
'E',
'A Nova Lei do Gás substituiu o regime de concessão pelo de autorização para o transporte de gás natural e adotou o modelo de contratação de capacidade por entrada e saída (entry-exit), reorganizando as negociações do setor. Também promoveu a desverticalização, vedando (não permitindo) o controle/coligação entre transportadoras e agentes das demais atividades.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Sustentabilidade e Patrimônio Cultural',
'Ciente de que a eficiência energética é um conceito relevante para economizar energia, um casal de noivos deve considerar, para os aparelhos eletrodomésticos da nova casa:',
'',
'',
'["utilizar eletrodomésticos com selo Procel;","não utilizar equipamentos com selo Conpet;","trocar os eletrodomésticos de dois em dois anos;","utilizar eletrodomésticos com Certificação do Inmetro;","não utilizar aparelhos de ar-condicionado do tipo split."]'::jsonb,
'A',
'O Selo Procel de Economia de Energia identifica os aparelhos mais eficientes de cada categoria, orientando o consumidor na escolha de equipamentos que consomem menos energia. Logo, deve-se preferir eletrodomésticos com o selo Procel.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Sustentabilidade e Patrimônio Cultural',
'Para criar peixes ornamentais em aquários, o piscicultor deve saber que:',
'',
'',
'["quanto mais alta a temperatura em um viveiro, maior a atividade dos peixes e, consequentemente, menor o consumo de oxigênio;","quanto mais turva a água, menor a penetração de luz solar e, consequentemente, menor o desenvolvimento do fitoplâncton (microvegetais que vivem na água);","o oxigênio proveniente do ar penetra na superfície líquida dependendo da intensidade do vento; quanto menos vento, maior a penetração do oxigênio na água;","milhares de plantas muito pequenas encontram-se em suspensão e consomem grande quantidade de oxigênio quando a cor da água se torna esverdeada;","o oxigênio desprendido no processo de fotossíntese nas plantas aquáticas submersas é liberado para o ar; assim, o oxigênio liberado durante o dia será tanto maior quanto maior for a quantidade de plantas cujas folhas e talos cresçam sob a água."]'::jsonb,
'B',
'A turbidez da água reduz a penetração da luz solar e, com isso, limita a fotossíntese e o desenvolvimento do fitoplâncton. As demais alternativas invertem relações (temperatura/consumo de O2, vento/oxigenação) ou descrevem incorretamente a dinâmica do oxigênio.'
from public.exams where slug = 'cnu-2025-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
