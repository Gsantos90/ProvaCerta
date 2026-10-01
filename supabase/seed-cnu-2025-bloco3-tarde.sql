-- Seed: CNU 2025 (2a Edicao) - Bloco 3 (Ciencias, Dados e Tecnologia) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-C 32-C 33-E 34-D 35-B 36-D 37-B 38-A 39-E 40-E
-- 41-C 42-E 43-A 44-A 45-D 46-B 47-C 48-D 49-E 50-B
-- 51-E 52-D 53-A 54-A 55-C 56-A 57-B 58-B 59-B 60-C
-- 61-E 62-D 63-E 64-D 65-E 66-C 67-B 68-B 69-A 70-A
-- 71-E 72-A 73-D 74-B 75-C 76-E 77-C 78-B 79-E 80-C
-- 81-D 82-E 83-D 84-D 85-D 86-D 87-C 88-A 89-D 90-B

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco3-tarde', 'CNU 2025 (2ª Edição) - Bloco 3 (Tarde) - Ciências, Dados e Tecnologia', 'cnu', '2025')
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
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece diretrizes a serem observadas na garantia do direito fundamental de acesso à informação. A respeito dessas diretrizes, é correto afirmar que, entre elas, estão:',
'',
'',
'["o sigilo como regra geral e a publicidade como exceção, a divulgação apenas mediante requerimento e o fomento da cultura do segredo na Administração;","a observância da publicidade como preceito geral e do sigilo como exceção, a divulgação de informações de interesse público independentemente de solicitações e o desenvolvimento do controle social da Administração Pública;","a divulgação de informações somente após autorização judicial, a utilização de meios físicos exclusivamente e a restrição do controle social;","o sigilo das informações pessoais de agentes públicos sobre remuneração, a cobrança de taxas para acesso e o uso restrito de meios de comunicação;","a divulgação apenas de informações classificadas, o acesso exclusivo por servidores e a vedação à transparência ativa."]'::jsonb,
'C',
'A LAI adota a publicidade como preceito geral e o sigilo como exceção, prevê a divulgação de informações de interesse público independentemente de solicitação (transparência ativa) e o desenvolvimento do controle social da Administração Pública.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público, teve indeferido um requerimento administrativo por decisão de autoridade competente. Inconformado, pretende que a própria autoridade que proferiu a decisão a reaprecie, apresentando novos argumentos. No âmbito do processo administrativo federal (Lei nº 9.784/1999), o instrumento adequado é:',
'',
'',
'["o mandado de segurança, dirigido ao Poder Judiciário;","a reclamação, dirigida ao órgão de controle externo;","o pedido de reconsideração, dirigido à própria autoridade que proferiu a decisão;","a representação, dirigida ao Ministério Público;","a denúncia, dirigida à corregedoria."]'::jsonb,
'C',
'O pedido de reconsideração é o instrumento pelo qual o interessado solicita à própria autoridade que proferiu a decisão a sua reapreciação, sem prejuízo do recurso à autoridade superior.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'O Portal da Transparência do Governo Federal consolida informações de interesse público para consulta da sociedade. Entre as informações disponibilizadas no Portal, incluem-se:',
'',
'',
'["a remuneração de servidores públicos, as sanções aplicadas a empresas e pessoas e os dados sobre filiação sindical dos servidores;","exclusivamente dados agregados de despesas, vedada a identificação de beneficiários;","apenas informações classificadas como sigilosas mediante prévia autorização;","somente dados relativos ao Poder Executivo municipal;","dados pessoais sensíveis de cidadãos beneficiários de programas sociais, com identificação completa."]'::jsonb,
'C',
'O Portal da Transparência divulga, entre outras, a remuneração de servidores públicos e as sanções aplicadas a empresas e pessoas (como as registradas no CEIS/CNEP), promovendo a transparência ativa e o controle social.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No contexto da integridade pública, um servidor identifica que uma situação pessoal sua pode influenciar indevidamente o desempenho de suas funções, colocando em risco a imparcialidade das decisões administrativas. Essa situação caracteriza:',
'',
'',
'["um conflito de interesses, que deve ser prevenido e, se ocorrer, comunicado e tratado conforme a legislação;","uma hipótese de improbidade administrativa automática, independentemente de qualquer providência;","uma situação irrelevante do ponto de vista ético, desde que não haja prejuízo financeiro;","uma causa de nulidade de todos os atos praticados pelo órgão;","um ato de corrupção consumado, sujeito a sanção penal imediata."]'::jsonb,
'A',
'A influência indevida de interesse privado sobre o exercício da função pública configura conflito de interesses (Lei nº 12.813/2013), que deve ser prevenido, comunicado e tratado, não se confundindo automaticamente com improbidade ou corrupção.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 dispõe sobre a política de governança da administração pública federal direta, autárquica e fundacional. Entre os princípios da governança pública estabelecidos nesse decreto, encontra-se:',
'',
'',
'["a centralização das decisões em órgão único de controle;","a vedação à participação social no processo decisório;","o sigilo como regra na condução das políticas públicas;","a desoneração da alta administração quanto à prestação de contas;","a capacidade de resposta, a integridade, a confiabilidade, a transparência e a prestação de contas e responsabilidade (accountability)."]'::jsonb,
'E',
'O Decreto nº 9.203/2017 estabelece como princípios da governança pública, entre outros, a capacidade de resposta, a integridade, a confiabilidade, a melhoria regulatória, a prestação de contas e responsabilidade (accountability) e a transparência.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, servidora pública, foi designada para planejar um evento aberto ao público. Preocupada com a inclusão de pessoas com deficiência, buscou garantir condições de acessibilidade. À luz da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (incorporada com status de emenda constitucional) e da Lei Brasileira de Inclusão, é correto afirmar que:',
'',
'',
'["a acessibilidade restringe-se à eliminação de barreiras arquitetônicas, não abrangendo barreiras comunicacionais ou atitudinais;","a acessibilidade é faculdade do organizador, exigível apenas mediante solicitação formal prévia da pessoa com deficiência;","a acessibilidade deve ser assegurada apenas em prédios públicos, não em eventos;","a acessibilidade é direito que se realiza somente após a ocorrência de barreira concreta;","a acessibilidade é condição que deve ser assegurada de forma a eliminar barreiras e permitir, em igualdade de oportunidades, a participação das pessoas com deficiência."]'::jsonb,
'E',
'A acessibilidade, segundo a Convenção e a Lei Brasileira de Inclusão (Lei nº 13.146/2015), é a possibilidade de utilização com segurança e autonomia de espaços, serviços e informações, eliminando barreiras (arquitetônicas, comunicacionais, atitudinais, etc.) para assegurar a participação em igualdade de oportunidades.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transgênero, deseja retificar seu prenome e gênero no registro civil para que reflitam sua identidade de gênero. Conforme entendimento consolidado do Supremo Tribunal Federal, a retificação:',
'',
'',
'["depende de autorização judicial precedida de cirurgia de redesignação sexual;","depende de laudos médicos e psicológicos que comprovem o transtorno de identidade;","é vedada no ordenamento jurídico brasileiro;","pode ser feita diretamente no cartório (registro civil), independentemente de cirurgia, laudos ou autorização judicial;","somente é possível após decisão judicial transitada em julgado em todos os casos."]'::jsonb,
'D',
'O STF (ADI 4275) reconheceu o direito das pessoas trans à alteração de prenome e gênero diretamente no registro civil, independentemente de cirurgia de redesignação, laudos ou autorização judicial, com base na autonomia e dignidade da pessoa humana.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Determinada comunidade quilombola busca a titulação definitiva das terras que ocupa. Conforme o ordenamento jurídico brasileiro e o Decreto nº 4.887/2003, o processo de titulação das terras quilombolas envolve a atuação:',
'',
'',
'["exclusiva do Poder Judiciário, sem participação administrativa;","exclusiva dos Municípios onde se localizam as terras;","da Fundação Cultural Palmares, na certificação da comunidade, e do Incra, na identificação, demarcação e titulação das terras;","apenas de organizações não governamentais;","exclusiva do Ministério Público Federal."]'::jsonb,
'E',
'A certificação (autodefinição) das comunidades quilombolas cabe à Fundação Cultural Palmares, enquanto a identificação, reconhecimento, delimitação, demarcação e titulação das terras compete ao Incra (Decreto nº 4.887/2003). A alternativa que descreve corretamente essa divisão é a de letra E.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana, mulher negra com deficiência, relata ter sofrido tratamento discriminatório que combina preconceitos de gênero, raça e deficiência de forma simultânea e indissociável. Esse fenômeno, em que diferentes marcadores sociais se sobrepõem agravando a discriminação, é conhecido como:',
'',
'',
'["discriminação indireta exclusivamente;","discriminação positiva;","ação afirmativa;","neutralidade racial;","discriminação múltipla ou interseccional."]'::jsonb,
'E',
'A sobreposição de diferentes marcadores sociais (gênero, raça, deficiência) que agrava a discriminação de forma simultânea e indissociável caracteriza a discriminação múltipla ou interseccional.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela sofre, por parte de seu companheiro Flávio, agressões físicas, ofensas constantes à sua autoestima e dignidade, além da destruição de seus bens pessoais. Conforme a Lei Maria da Penha (Lei nº 11.340/2006), as condutas descritas configuram, respectivamente, violência:',
'',
'',
'["moral, sexual e física;","física, moral e sexual;","física, psicológica e patrimonial;","psicológica, sexual e moral;","patrimonial, física e sexual."]'::jsonb,
'C',
'As agressões físicas configuram violência física; as ofensas à autoestima e dignidade, violência psicológica; e a destruição de bens pessoais, violência patrimonial — conforme as formas de violência doméstica previstas na Lei Maria da Penha.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Os sistemas estruturantes da Administração Pública federal organizam atividades comuns a diversos órgãos, como gestão de pessoal, orçamento e logística, por meio de plataformas e normas padronizadas. Sobre esses sistemas, é correto afirmar que:',
'',
'',
'["cada órgão deve desenvolver seus próprios sistemas isolados, sem padronização;","visam padronizar e integrar atividades comuns por meio de órgão central e órgãos setoriais, utilizando plataformas como as de gestão de pessoal;","são restritos ao Poder Legislativo;","têm por finalidade exclusiva a arrecadação tributária;","foram extintos pela política de governança digital."]'::jsonb,
'B',
'Os sistemas estruturantes (como os de pessoal civil - SIPEC, de administração financeira, de organização e inovação institucional, etc.) organizam-se por meio de órgão central e órgãos setoriais e padronizam atividades comuns, apoiados por plataformas, como as de gestão de pessoal.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'Determinado órgão pretende executar um projeto cuja realização ultrapassa um exercício financeiro, com despesas distribuídas ao longo de vários anos. No âmbito do planejamento e orçamento público, as despesas desse projeto devem estar previstas:',
'',
'',
'["na Lei Orçamentária Anual (LOA), de modo que as despesas de cada exercício constem do respectivo orçamento anual, em consonância com o plano plurianual;","exclusivamente no plano plurianual, dispensando-se a previsão na LOA;","somente na Lei de Diretrizes Orçamentárias;","em decreto autônomo do chefe do Executivo, independentemente de lei;","em resolução do Tribunal de Contas."]'::jsonb,
'A',
'As despesas de projetos plurianuais devem constar da Lei Orçamentária Anual de cada exercício, em consonância com o plano plurianual (PPA), de modo que cada orçamento anual contemple a parcela a ser executada no respectivo exercício.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Em ano eleitoral, determinado órgão público pretende realizar campanha publicitária de caráter informativo, educativo ou de orientação social, sem conter nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades. Conforme a Constituição Federal e a legislação eleitoral, essa campanha:',
'',
'',
'["é absolutamente vedada em qualquer hipótese durante o ano eleitoral;","somente pode ser realizada mediante autorização do Tribunal Superior Eleitoral;","pode ser realizada, pois a publicidade de caráter informativo, educativo ou de orientação social é admitida, vedada a promoção pessoal;","depende de prévia aprovação em plebiscito;","é permitida apenas se contiver os nomes das autoridades responsáveis."]'::jsonb,
'C',
'A publicidade dos órgãos públicos deve ter caráter informativo, educativo ou de orientação social, sendo vedada a promoção pessoal de autoridades (art. 37, §1º, CF). Observadas essas condições e as restrições eleitorais, a campanha pode ser realizada.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A Emenda Constitucional nº 19/1998 promoveu a reforma administrativa do Estado brasileiro. Entre suas disposições relativas aos cargos em comissão e funções de confiança, estabeleceu-se que:',
'',
'',
'["todos os cargos em comissão devem ser ocupados por servidores de carreira, sem exceção;","os cargos em comissão e as funções de confiança podem ser livremente criados por decreto;","as funções de confiança podem ser exercidas por qualquer pessoa, servidor ou não;","um percentual mínimo dos cargos em comissão será preenchido por servidores de carreira, nos casos e condições previstos em lei;","os cargos em comissão são destinados exclusivamente a atribuições técnicas permanentes."]'::jsonb,
'C',
'A EC nº 19/1998 determinou que as funções de confiança sejam exercidas exclusivamente por servidores ocupantes de cargo efetivo e que os cargos em comissão sejam preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei (art. 37, V, CF).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'A sustentabilidade da dívida pública é tema central das finanças públicas. Para assegurá-la, busca-se, entre outras medidas, a convergência das despesas e receitas públicas a um patamar que estabilize ou reduza a relação entre dívida e produto interno bruto. A respeito dessa sustentabilidade, é correto afirmar que:',
'',
'',
'["o aumento ilimitado do endividamento é indiferente à sustentabilidade fiscal;","a sustentabilidade exige a trajetória de convergência das contas públicas, de modo a estabilizar ou reduzir a relação dívida/PIB;","a sustentabilidade é incompatível com qualquer regra fiscal;","a sustentabilidade depende exclusivamente do aumento da carga tributária;","a dívida pública não guarda relação com o produto interno bruto."]'::jsonb,
'B',
'A sustentabilidade da dívida pública pressupõe uma trajetória de convergência das receitas e despesas que estabilize ou reduza a relação dívida/PIB, evitando o crescimento explosivo do endividamento.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'O teletrabalho vem sendo adotado na Administração Pública como modalidade de execução de atividades fora das dependências do órgão. Para sua implementação, é necessário observar, entre outros requisitos:',
'',
'',
'["a vedação absoluta a qualquer forma de controle de resultados;","a compatibilidade das atividades com a modalidade e a ausência de prejuízo ao funcionamento do serviço e ao atendimento ao público;","a obrigatoriedade de que todos os servidores do órgão adiram ao regime;","a dispensa de metas e indicadores de desempenho;","a impossibilidade de retorno ao trabalho presencial."]'::jsonb,
'C',
'A adoção do teletrabalho requer que as atividades sejam compatíveis com a modalidade e que não haja prejuízo ao funcionamento do serviço e ao atendimento ao público, com estabelecimento de metas e controle de resultados.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio, servidor público, exerce parte de sua jornada presencialmente, nas dependências do órgão, e parte remotamente, de sua residência, conforme escala previamente definida. Essa forma de organização do trabalho, que combina trabalho presencial e remoto, é denominada:',
'',
'',
'["modalidade híbrida (ou semipresencial);","teletrabalho integral;","trabalho presencial exclusivo;","regime de sobreaviso;","jornada reduzida."]'::jsonb,
'A',
'A combinação de trabalho presencial e remoto, conforme escala, caracteriza a modalidade híbrida (ou semipresencial) de teletrabalho.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'No uso de ferramentas de inteligência artificial generativa, o usuário fornece uma instrução textual que orienta o modelo sobre a tarefa a ser executada e o resultado esperado. Essa instrução fornecida ao modelo é denominada:',
'',
'',
'["prompt;","token de segurança;","firmware;","protocolo de rede;","dataset de treinamento."]'::jsonb,
'A',
'A instrução textual fornecida pelo usuário para orientar um modelo de inteligência artificial generativa quanto à tarefa e ao resultado esperado é chamada de prompt.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José utiliza, em seu trabalho, um software que automatiza tarefas repetitivas em sistemas por meio de um robô que, acionado pelo próprio servidor, executa passos predefinidos na interface dos aplicativos, auxiliando o usuário sem substituí-lo totalmente. Essa tecnologia é conhecida como automação robótica de processos (RPA) na modalidade:',
'',
'',
'["robô autônomo não supervisionado;","robô assistido (attended);","inteligência artificial geral;","computação quântica;","blockchain."]'::jsonb,
'B',
'Quando o robô de RPA é acionado pelo próprio usuário e executa passos predefinidos auxiliando-o (sem substituí-lo totalmente), trata-se da modalidade de RPA assistido (attended automation).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro, gestor público, pretende utilizar um sistema de inteligência artificial para apoiar a tomada de decisões administrativas. Ciente dos riscos envolvidos (como vieses e erros), deve observar que, no uso responsável da IA no setor público:',
'',
'',
'["a decisão final e a responsabilidade por ela devem ser assumidas pelo próprio gestor humano, cabendo à IA papel de apoio;","a responsabilidade pela decisão transfere-se integralmente ao sistema de IA;","o uso de IA dispensa qualquer supervisão humana;","os vieses algorítmicos são irrelevantes para a decisão administrativa;","a IA deve substituir completamente o julgamento humano para garantir imparcialidade."]'::jsonb,
'C',
'No uso responsável de IA no setor público, o sistema atua como apoio à decisão, mas a decisão final e a responsabilidade por ela permanecem com o gestor humano, que deve exercer supervisão e mitigar vieses e erros.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;


-- ============================================================
-- CONHECIMENTOS ESPECIFICOS
-- Ciencia, Tecnologia e Sociedade (CTS) (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Ciência, Tecnologia e Sociedade',
'Roberto buscava compreender os processos de inovação na empresa em que atua. Durante seus estudos sobre os diferentes modelos de inovação, deparou-se com o modelo linear reverso de inovação (demand pull). No modelo identificado por Roberto:',
'',
'',
'["a organização centraliza o processo inovador, desenvolvendo soluções exclusivamente com recursos e conhecimentos internos;","os produtos são frutos de avanços tecnológicos realizados tanto internamente quanto fora das organizações, por meio de redes colaborativas;","o departamento de Pesquisa e Desenvolvimento (P&D) assume o papel de transformar em produtos as ideias originadas no setor de marketing, resultantes da interação direta com os clientes;","a inovação é analisada como fruto da interação entre necessidades de mercado e avanços em P&D, sem um ponto específico de partida;","os avanços gerados pelo departamento de Pesquisa e Desenvolvimento (P&D) da organização são convertidos em produtos, que são posteriormente apresentados ao mercado pelo setor de marketing."]'::jsonb,
'C',
'No modelo linear reverso (demand pull), a inovação parte da demanda do mercado: o setor de marketing capta necessidades dos clientes e o P&D transforma essas ideias em produtos. O ponto de partida é o mercado, não o laboratório.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Ciência, Tecnologia e Sociedade',
'Ao investigar questões sociais para sua tese, Diógenes entrou em contato com a abordagem CTS (Ciência, Tecnologia e Sociedade), que concebe a ciência como instrumento de desenvolvimento social e destaca a importância de considerar os impactos e as responsabilidades sociais na produção científica e nas inovações tecnológicas. Um exemplo de situação em que os três elementos da abordagem CTS são articulados de maneira ética e responsável é:',
'',
'',
'["a criação de alimentos ultraprocessados com maior durabilidade;","a implementação de tecnologias de vigilância massiva em espaços públicos;","o uso da inteligência artificial na reciclagem para tornar a separação dos resíduos mais precisa;","a introdução, no mercado nacional, de tecnologias embrionárias voltadas para carros autônomos;","a substituição de trabalhadores por máquinas automatizadas para garantir o aumento da produtividade e do lucro real."]'::jsonb,
'C',
'O uso de IA na reciclagem articula ciência e tecnologia a um benefício social e ambiental (gestão de resíduos), de forma ética e responsável. As demais alternativas priorizam lucro ou controle, com impactos sociais negativos ou riscos não mitigados.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Ciência, Tecnologia e Sociedade',
'O Governo Federal, por meio de órgãos como o MCTI, tem promovido ações afirmativas que estimulam a participação das mulheres na pesquisa científica (Futuras Cientistas, Meninas nas Ciências Exatas, Guardiãs das Águas). Uma forma de mensurar os efeitos dessas ações é observar a participação feminina nas Bolsas de Produtividade 2024 do CNPq. A respeito dessa participação, é correto afirmar que:',
'',
'',
'["as ações afirmativas não tiveram impacto significativo na distribuição das bolsas de produtividade;","houve uma queda no número de bolsistas mulheres em decorrência da eliminação das cotas de gênero;","o número de bolsistas mulheres permaneceu estável em relação aos anos anteriores, com pequena variação percentual;","houve um leve aumento na presença feminina entre os bolsistas; contudo, ela ainda é menor do que em anos anteriores;","observou-se um aumento significativo no número de bolsistas mulheres, com crescimento expressivo em comparação aos editais anteriores."]'::jsonb,
'E',
'Os dados das Bolsas de Produtividade 2024 do CNPq apontam aumento significativo da participação feminina, com crescimento expressivo em relação a editais anteriores, refletindo o efeito das ações afirmativas de equidade de gênero na ciência.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Ciência, Tecnologia e Sociedade',
'Entre os marcos teóricos que influenciaram a abordagem CTS, destaca-se o chamado Programa Forte, que propôs novas diretrizes para a análise sociológica da ciência. Segundo os princípios que orientam a perspectiva do Programa Forte, é correto afirmar que:',
'',
'',
'["a reflexividade determina que uma explicação satisfatória de um episódio científico deve centrar-se no fim em si mesmo independentemente de seus resultados ou contribuições para outros propósitos;","a conectividade defende que o conhecimento científico deve ser construído isoladamente dos entendimentos consolidados em contextos locais, a fim de se alcançar uma visão unificada e em rede da ciência;","a imparcialidade sustenta que apenas fatores técnicos e empíricos são relevantes para explicar descobertas científicas, excluindo-se fatores metafísicos ambíguos, ainda que tidos como verdadeiros;","a simetria estabelece que as explicações para crenças consideradas verdadeiras e falsas devem utilizar os mesmos tipos de causas, evitando critérios distintos para justificar o sucesso ou o fracasso de teorias científicas;","a causalidade estabelece que o conhecimento válido deve ser fundamentado em métodos científicos rigorosos, ao passo que formas alternativas de conhecimento, ainda que factuais, não têm critérios que assegurem a verificabilidade."]'::jsonb,
'D',
'O princípio da simetria do Programa Forte (David Bloor) exige que crenças verdadeiras e falsas sejam explicadas pelos mesmos tipos de causas, sem recorrer a critérios distintos para justificar sucesso ou fracasso de teorias científicas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Ciência, Tecnologia e Sociedade',
'Considere que o governo de um país decida adotar a "Recomendação da UNESCO sobre Ciência Aberta". Entre as áreas de atuação previstas nesse documento, destaca-se aquela que tem como objetivo promover um entendimento comum sobre o que é a ciência aberta, seus benefícios, seus desafios e os caminhos possíveis para sua implementação. A alternativa que identifica corretamente uma ação alinhada a essa área de atuação é:',
'',
'',
'["integração de aspectos relativos à igualdade de gênero nas políticas, estratégias e práticas de ciência aberta;","incentivo ao multilinguismo na prática da ciência, em publicações científicas e em comunicações acadêmicas;","estabelecimento de mecanismos regionais e internacionais de financiamento para promover ciência aberta no microcontexto local da comunidade;","promoção do desenvolvimento de infraestruturas compartilhadas para a coleta, a preservação e o acesso fácil a softwares e códigos-fonte de código aberto;","implementação de sistemas de monitoramento e informação com base na comunidade para complementar os dados e os sistemas de informação nacionais, regionais e globais."]'::jsonb,
'B',
'A área que visa promover um entendimento comum sobre ciência aberta engloba ações de comunicação e disseminação, como o incentivo ao multilinguismo na prática científica, nas publicações e nas comunicações acadêmicas, ampliando o acesso e a compreensão.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Ciência, Tecnologia e Sociedade',
'Considere que, em meio a uma epidemia nacional, uma instituição pública brasileira tenha sido incumbida de conduzir uma pesquisa clínica com seres humanos. De acordo com a Lei nº 14.874/2024, que dispõe sobre a pesquisa com seres humanos, a pesquisa deverá atender às exigências éticas aplicáveis, especialmente:',
'',
'',
'["provimento dos cuidados assistenciais integrais aos voluntários em casos que não envolvam intervenção;","registro custodiado em biorrepositórios particulares internacionais, respeitando a natureza de fins lucrativos da organização gestora;","garantia da publicidade dos dados do participante da pesquisa e atenção às regras de transparência de seus dados, favorecendo a relação risco-benefício para a comunidade;","respeito aos direitos, à dignidade, à segurança e ao bem-estar do participante da pesquisa, que deverá prevalecer sobre os interesses da ciência e da sociedade;","garantia da participação de representantes de ambos os sexos e de todos os segmentos raciais constitutivos da sociedade, desde que os prejuízos gerados ao andamento sejam apenas residuais."]'::jsonb,
'D',
'Princípio ético central da pesquisa com seres humanos: o respeito aos direitos, à dignidade, à segurança e ao bem-estar do participante deve prevalecer sobre os interesses da ciência e da sociedade.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Ciência, Tecnologia e Sociedade',
'A Lei nº 14.874/2024 atribui aos Comitês de Ética em Pesquisa (CEPs) a competência para realizar a análise ética prévia das pesquisas com seres humanos. Com relação a esse processo de análise ética realizado pelos CEPs, é correto afirmar que:',
'',
'',
'["os documentos requisitados pelos CEPs terão caráter obrigatório, ainda que não tenham relação com a matéria analisada;","cabe recurso, em primeira instância, da decisão constante do parecer do CEP, no prazo de 30 dias úteis, ao próprio CEP que tenha emitido o parecer;","a análise ética da pesquisa que envolva mais de um centro de pesquisa no país será realizada por voto em assembleia on-line com a participação integral dos CEPs envolvidos;","a análise realizada pelos CEPs, com emissão do parecer, não poderá ultrapassar o prazo de 120 dias úteis a partir da data de aceitação da integralidade dos documentos da pesquisa;","o CEP responsável pela análise manterá em arquivo todos os documentos referentes ao projeto pelo período de 10 anos após o encerramento da pesquisa, sendo obrigatório o arquivamento por meio digital."]'::jsonb,
'B',
'Pela Lei nº 14.874/2024, da decisão constante do parecer do CEP cabe recurso, em primeira instância, ao próprio CEP que o emitiu, no prazo de 30 dias úteis. As demais alternativas distorcem prazos, documentos exigíveis e o rito da análise multicêntrica.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Ciência, Tecnologia e Sociedade',
'A comunicação científica tem passado por transformações, buscando tornar os processos de produção e circulação do conhecimento mais rápidos, abertos e participativos. A proposta que está corretamente identificada e descrita é:',
'',
'',
'["preprint: publicação de um original antes da avaliação pelos pares, permitindo que o trabalho receba comentários de uma audiência mais ampla;","datificação: disponibilização em tempo real de todas as etapas de experimentos científicos, incluindo metodologias de coleta e resultados parciais;","publicações líquidas: publicações curtas e independentes que relatam apenas uma observação experimental, um dado específico ou uma hipótese;","scholarly skywriting: comunicação realizada por meio de revisão por pares selecionados por critérios objetivos e públicos, mitigando a disseminação de fake news;","micropublicações: formato que oferece informações descritivas (metadados) sobre conjuntos de dados, sendo acessíveis on-line e publicadas em revistas com sistema de revisão por pares."]'::jsonb,
'A',
'O preprint é a disponibilização de um manuscrito original antes da revisão por pares, permitindo que receba comentários de uma audiência ampla e acelere a circulação do conhecimento. As demais descrições estão trocadas em relação aos conceitos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Ciência, Tecnologia e Sociedade',
'A abordagem de Ciência, Tecnologia e Sociedade (CTS) questiona a tradicional visão da ciência como neutra e autônoma, destacando sua relação com fatores sociais, políticos e culturais. Sobre esse campo de estudo, é correto afirmar que:',
'',
'',
'["a teoria ator-rede (TAR) foca no papel de rede de cientistas como atores que determinam o desenvolvimento tecnocientífico;","o determinismo tecnológico estabelece que parâmetros sociais determinam a direção de evolução tecnológica, independente de influências externas;","a democratização da ciência, segundo a CTS, propõe que as prioridades científicas sejam definidas consensualmente pela comunidade científica;","a teoria de Thomas Kuhn sobre paradigmas científicos propõe que o desenvolvimento científico seja concebido como um processo linear e cumulativo, culturalmente determinado;","a teoria da construção social da tecnologia (SCOT) afirma que a tecnologia não possui uma trajetória autônoma de evolução, sendo resultado de negociações entre grupos sociais e contextos históricos."]'::jsonb,
'E',
'A SCOT (Social Construction of Technology) sustenta que a tecnologia não evolui de forma autônoma e determinística, mas resulta de negociações entre grupos sociais relevantes em contextos históricos específicos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Ciência, Tecnologia e Sociedade',
'O modelo de Sistemas de Inovação (SI) representa uma evolução paradigmática na compreensão dos processos inovativos, superando as limitações dos modelos lineares. Com relação a esse referencial, é correto afirmar que:',
'',
'',
'["em sistemas setoriais de inovação, as condições de oportunidade tecnológica determinam as condições de apropriabilidade;","a eficácia da interação universidade-empresa em sistemas de inovação é determinada pelo grau de formalização dos mecanismos de transferência tecnológica;","na abordagem de Sistemas de Inovação, o aprendizado interativo entre fornecedores, produtores, usuários e universidades é um mecanismo secundário, dada a importância predominante dos investimentos em P&D;","a noção de sistema de inovação se coloca em direta oposição à noção de inovação aberta, na medida em que a primeira preconiza as estratégias de inovação fechada e a segunda, a noção de inovação em rede de atores;","a noção de path dependence (dependência da trajetória) explica por que alguns sistemas nacionais de inovação mantêm trajetórias tecnológicas obsoletas, mesmo diante de alternativas mais eficientes, devido a lock-ins institucionais e investimentos irrecuperáveis."]'::jsonb,
'E',
'A dependência da trajetória (path dependence) explica a persistência de trajetórias tecnológicas obsoletas em sistemas de inovação, mesmo havendo alternativas mais eficientes, em razão de lock-ins institucionais e de investimentos irrecuperáveis (sunk costs).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Ciência, Tecnologia e Sociedade',
'O referencial dos paradigmas tecnoeconômicos oferece uma estrutura para compreender como revoluções tecnológicas transformam sistemas econômicos e sociais, seguindo um padrão cíclico de implantação, turbulência e maturidade. Considerando esse referencial, a fase de frenesi (frenzy phase) de um paradigma tecnoeconômico é marcada por um(a):',
'',
'',
'["resistência generalizada às novas tecnologias;","declínio tecnológico e redução dos retornos econômicos;","tendência a investimentos especulativos e bolhas financeiras;","momento de estabilidade organizacional e equilíbrio de mercado;","processo de consolidação institucional e difusão massiva das tecnologias."]'::jsonb,
'C',
'Na teoria de Carlota Perez, a fase de frenesi (frenzy) é marcada por intensa especulação financeira e formação de bolhas, com o capital financeiro impulsionando a difusão da nova tecnologia de forma desordenada antes da fase de sinergia/maturidade.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Ciência, Tecnologia e Sociedade',
'Nos países subdesenvolvidos, as desigualdades no acesso à ciência e tecnologia manifestam-se não apenas no acesso a tecnologias e infraestrutura, mas em profundas brechas de aprendizagem (learning divide). Considerando a natureza estrutural das brechas de aprendizagem, o cerne desse conceito está diretamente relacionado com:',
'',
'',
'["a marginalização de saberes tradicionais nos currículos;","a adoção passiva de inovações tecnológicas estrangeiras;","a escassez de recursos digitais em territórios marginalizados;","a subutilização de equipamentos tecnológicos no sistema de ensino;","a incapacidade de converter acesso à tecnologia em produção autônoma de conhecimento."]'::jsonb,
'E',
'A brecha de aprendizagem (learning divide) não se reduz ao acesso a dispositivos: seu cerne é a incapacidade de converter o acesso à tecnologia em produção autônoma de conhecimento e inovação, perpetuando dependências cognitivas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Politicas Publicas de Ciencia, Tecnologia e Inovacao (CT&I) (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Políticas Públicas de CT&I',
'O Sistema Nacional de Ciência, Tecnologia e Inovação (SNCTI) é uma rede articulada de instituições, políticas e instrumentos voltados ao desenvolvimento científico e tecnológico do Brasil. Sobre o papel desempenhado por cada um dos atores, é correto afirmar que:',
'',
'',
'["o Ministério da Ciência, Tecnologia e Inovação (MCTI) exerce a função de coordenador do SNCTI;","ao Poder Executivo compete estabelecer normas que regulem e facilitem o pleno desenvolvimento das atividades de CT&I;","aos operadores de Ciência, Tecnologia e Inovação (CT&I) compete o domínio dos instrumentos que viabilizarão as decisões tomadas pelos atores políticos;","as agências de fomento têm papel crucial ao emanar normas que definem obrigações legais de investimento privado em Pesquisa, Desenvolvimento e Inovação (PD&I), chamadas cláusulas de PD&I;","o Ministério do Desenvolvimento, Indústria, Comércio e Serviços (MDIC) exerce a governança do Fundo para o Desenvolvimento Tecnológico das Telecomunicações, um dos principais apoiadores do SNCTI."]'::jsonb,
'A',
'O MCTI exerce a função de coordenação do SNCTI, articulando os diversos atores (operadores, agências de fomento, instâncias políticas). As demais alternativas atribuem incorretamente competências aos atores do sistema.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Políticas Públicas de CT&I',
'A Lei nº 10.973/2004 (Lei da Inovação) facilitou a aproximação entre ciência e mercado. Para apoiar a gestão de sua política de inovação, a ICT pública deve dispor de Núcleo de Inovação Tecnológica (NIT). Com relação à Lei da Inovação, é uma competência do NIT:',
'',
'',
'["acompanhar o processamento dos pedidos e a manutenção dos títulos de propriedade intelectual da instituição;","financiar ações que visem a estimular e promover o desenvolvimento da ciência, da tecnologia e da inovação;","elaborar a proposta de orçamento anual da instituição, com discriminação detalhada das receitas e despesas previstas;","definir o regulamento e executar o controle sobre questões éticas e ambientais envolvidas nas criações desenvolvidas na instituição;","executar atividades e projetos de pesquisa que contribuam para a geração de conhecimento e a inovação em áreas estratégicas."]'::jsonb,
'A',
'Entre as competências do NIT previstas na Lei da Inovação está acompanhar o processamento dos pedidos e a manutenção dos títulos de propriedade intelectual da instituição. Financiar, orçar e executar pesquisa não são atribuições do NIT.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Políticas Públicas de CT&I',
'A CAPES concebe e implementa políticas públicas de fomento ao Sistema Nacional de Pós-Graduação (SNPG), utilizando instrumentos como os Programas de Desenvolvimento da Pós-Graduação (PDPGs). Sobre os programas implementados pela CAPES, é correto afirmar que:',
'',
'',
'["o PDPG Solidariedade Acadêmica visa ao aprimoramento da infraestrutura científica e tecnológica de instituições com limitada capacidade financeira, por meio da modernização de laboratórios e qualificação de recursos humanos;","o PDPG Vulnerabilidade Social e Direitos Humanos tem por meta apoiar estudos voltados à prevenção, mitigação e superação de questões como o racismo e o preconceito, enfrentados por minorias sociais no contexto brasileiro;","o PDPG Pós-Doutorado Estratégico busca a formação de recursos humanos de alto nível, alinhados às competências exigidas pela Indústria 4.0 e considerados estratégicos para a implementação de suas diretrizes tecnológicas e produtivas;","o PDPG Equipamentos na Amazônia Legal objetiva a formação de recursos humanos de alto nível, por meio do financiamento de equipamentos de pequeno e médio porte para as Instituições de Ensino Superior integrantes da região da Amazônia Legal;","o PDPG Recursos do Mar é uma parceria com o Ministério da Defesa, destinada a apoiar projetos voltados ao desenvolvimento tecnológico da indústria naval, com o objetivo de ampliar a capacidade da Marinha do Brasil na projeção de poder sobre os recursos marítimos."]'::jsonb,
'D',
'O PDPG Equipamentos na Amazônia Legal tem por objetivo apoiar a pós-graduação e a formação de recursos humanos de alto nível na região por meio do financiamento de equipamentos de pequeno e médio porte às Instituições de Ensino Superior da Amazônia Legal.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Políticas Públicas de CT&I',
'O CNPq é uma fundação pública que promove o fomento à pesquisa e à formação de recursos humanos qualificados. Em relação aos programas do CNPq, é correto afirmar que:',
'',
'',
'["o PIBITI visa a contribuir para a formação e inserção de estudantes em atividades de pesquisa e tem como requisito que os bolsistas estejam vinculados a universidades públicas e comprovem hipossuficiência;","o Programa de Mestrado e Doutorado Acadêmico para Inovação (MAI/DAI) busca fortalecer a pesquisa, nas ICTs, por meio do envolvimento de estudantes em projetos de interesse do setor empresarial;","o Programa Institutos Regionais de Ciência, Tecnologia e Inovação (IRCTIs) tem como objetivo a criação de IRCTIs para impulsionar a produção científica no Norte e Nordeste, reduzindo as disparidades históricas em relação ao Sul e Sudeste;","o Programa de Formação de Recursos Humanos em Áreas Estratégicas (RHAE) foi uma parceria do CNPq com o Ministério da Defesa para capacitar recursos humanos nos setores nuclear, cibernético e de petróleo;","o Programa Inova Talentos, utilizando recursos do Fundo de Amparo ao Trabalhador, concede bolsas no exterior a mestres e doutores de excelência em ciência, tecnologia e inovação."]'::jsonb,
'B',
'O MAI/DAI (Mestrado e Doutorado Acadêmico para Inovação) do CNPq fortalece a pesquisa nas ICTs ao envolver estudantes de pós-graduação em projetos de interesse do setor empresarial, aproximando academia e empresa. As demais alternativas descrevem incorretamente os programas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Políticas Públicas de CT&I',
'Júlio, funcionário de uma empresa brasileira com patrimônio líquido de R$ 70 milhões, analisa os instrumentos de financiamento da FINEP, com a intenção de captar R$ 40 milhões em recursos com prazo e juros compatíveis, para apoiar um projeto de inovação vinculado à Nova Indústria Brasil (NIB), Missão 4. O instrumento que se encaixa nas características da empresa é o(a):',
'',
'',
'["investimento estratégico;","subvenção econômica a empresas;","financiamento reembolsável direto;","financiamento não reembolsável a empresas;","financiamento reembolsável descentralizado."]'::jsonb,
'C',
'Para uma empresa de maior porte que pretende captar vulto significativo (R$ 40 milhões) com prazo e juros compatíveis, o instrumento adequado da FINEP é o financiamento reembolsável direto (crédito à inovação concedido diretamente pela FINEP).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Políticas Públicas de CT&I',
'As discussões sobre desenvolvimento socioeconômico evidenciaram a importância de o governo atuar na promoção de ações coordenadas entre o setor empresarial e o sistema de ciência e tecnologia, contexto em que se destaca a abordagem do Triângulo de Sábato. Em relação às características dos vértices do Triângulo de Sábato, é correto afirmar que:',
'',
'',
'["o vértice regulador abrange os instrumentos jurídico-administrativos que regulam o funcionamento das instituições de pesquisa e a gestão dos recursos financeiros a elas destinados;","o vértice governo inclui, entre outros elementos, o sistema educacional responsável pela formação dos profissionais que lideram atividades de pesquisa;","o vértice estrutura de fomento refere-se ao grupo de atores que detêm os instrumentos necessários para operacionalizar as decisões formuladas pelas instâncias políticas;","o vértice estrutura produtiva representa o agrupamento de setores produtivos responsáveis pela oferta de bens e serviços que atendem às demandas da sociedade;","o vértice infraestrutura científico-tecnológica corresponde ao conjunto de instituições encarregadas da execução de políticas públicas, atuando na concretização das diretrizes governamentais junto à sociedade."]'::jsonb,
'D',
'No Triângulo de Sábato (governo, estrutura produtiva e infraestrutura científico-tecnológica), o vértice da estrutura produtiva corresponde ao conjunto de setores produtivos que ofertam bens e serviços para atender às demandas da sociedade.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Políticas Públicas de CT&I',
'A Lei de Inovação (Lei nº 10.973/2004) foi revista pela Lei nº 13.243/2016, constituindo-se o novo Marco Legal da Inovação. Com relação às mudanças trazidas pela Lei nº 13.243/2016, é correto afirmar que:',
'',
'',
'["são criados os núcleos de inovação tecnológica (NITs) para gerir a propriedade intelectual em universidades;","é ampliado o escopo de isenção de IPI na compra de máquinas e equipamentos para pesquisa e desenvolvimento (P&D);","é inaugurado o mecanismo de subvenção econômica, provendo financiamento não reembolsável para projetos inovadores;","são introduzidos mecanismos para incentivar a pesquisa e desenvolvimento (P&D) no setor privado por meio de benefícios fiscais;","é facilitada a colaboração entre empresas e instituições de pesquisa, permitindo que estas compartilhem equipamentos e instalações sem necessidade de contrapartida financeira."]'::jsonb,
'E',
'O novo Marco Legal da Inovação (Lei nº 13.243/2016) flexibilizou e facilitou a colaboração entre ICTs e empresas, permitindo o compartilhamento de laboratórios, equipamentos e instalações para pesquisa, inclusive sem exigência de contrapartida financeira. Os NITs e a subvenção já existiam na redação original de 2004.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Políticas Públicas de CT&I',
'A criação dos fundos setoriais garantiu arrecadação própria ao Fundo Nacional de Desenvolvimento Científico e Tecnológico (FNDCT). Sobre o FNDCT, é correto afirmar que:',
'',
'',
'["a Financiadora de Estudos e Projetos (Finep) e o Banco Nacional de Desenvolvimento Econômico e Social (BNDES) são responsáveis pela execução da modalidade de subvenção econômica;","dentre as operações especiais previstas, está a subvenção econômica que destina recursos não reembolsáveis diretamente a empresas para apoio à inovação e à equalização da taxa de juros em financiamento à inovação tecnológica;","esse fundo é composto por diversos fundos relativos a setores específicos e dois fundos transversais, o Fundo Verde Amarelo (CT-FVA) e o Fundo de Infraestrutura (CT-Infra), cujos recursos advêm de parcelas de cada um dos demais fundos setoriais;","a modalidade de apoio não reembolsável do FNDCT é destinada a dois propósitos: o financiamento a projetos de ICTs e o aporte de capital mediante participação societária em empresas inovadoras;","a ampliação do número de fundos setoriais que compõem o FNDCT teve seu pleno uso frustrado a partir de 2022, em função da necessidade de ajuste fiscal, que impôs contingenciamento direto e de reserva de contingência."]'::jsonb,
'B',
'Entre as operações do FNDCT está a subvenção econômica, que destina recursos não reembolsáveis diretamente a empresas para apoio à inovação, incluindo a equalização de taxa de juros em financiamentos à inovação tecnológica.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Políticas Públicas de CT&I',
'As Parcerias para o Desenvolvimento Produtivo (PDPs) no âmbito do Complexo Econômico-Industrial da Saúde (CEIS) articulam poder de compra estatal, transferência de tecnologia e desenvolvimento industrial. Sobre os mecanismos institucionais das PDPs no CEIS, é correto afirmar que:',
'',
'',
'["focam unicamente em parcerias com empresas nacionais de grande porte;","baseiam-se exclusivamente em editais públicos para seleção de empresas privadas;","dispensam totalmente a necessidade de contratos formais para transferência de tecnologia;","exigem que laboratórios estrangeiros transfiram integralmente suas linhas de produção para o Brasil;","envolvem obrigatoriamente a participação tripartite entre Estado, empresa nacional e detentor estrangeiro da tecnologia."]'::jsonb,
'E',
'As PDPs no CEIS envolvem, em regra, participação tripartite: o Estado (poder de compra), uma instituição/empresa pública nacional e o detentor (frequentemente estrangeiro) da tecnologia a ser transferida, viabilizando a produção nacional e a redução da dependência de importados.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Políticas Públicas de CT&I',
'A Nova Indústria Brasil (NIB) é a política industrial lançada em janeiro de 2024, liderada pelo MDIC, com recursos administrados pelo BNDES, Finep e Embrapii. Considerando as diretrizes e instrumentos da NIB, é correto afirmar que sua atuação no âmbito das políticas de CT&I:',
'',
'',
'["prioriza as universidades e instituições de pesquisa localizadas na região Nordeste e Amazônia Legal;","atribui protagonismo à Embrapii em operações de participação acionária (equity) em empresas inovadoras;","apresenta como um dos quatro eixos estruturantes o fortalecimento de micro e pequenas empresas inovadoras;","articula-se com o FNDCT para financiar projetos de P&D em tecnologias críticas, como semicondutores e energias limpas;","prevê financiamento a juros subsidiados para a implantação de parques tecnológicos em zonas de processamento de exportações."]'::jsonb,
'D',
'A NIB articula-se com o FNDCT para financiar projetos de pesquisa e desenvolvimento em tecnologias críticas e estratégicas (como semicondutores e energias limpas), integrando política industrial e política de CT&I.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Políticas Públicas de CT&I',
'Nas últimas décadas, os indicadores de CT&I evoluíram de métricas baseadas no modelo linear para abordagens sistêmicas. Considerando as críticas contemporâneas aos indicadores de CT&I, uma limitação dos manuais tradicionais (como Frascati e Oslo) para mensurar a inovação na atualidade é o fato de tais manuais:',
'',
'',
'["desconsiderarem dimensões como sustentabilidade e impacto social;","ignorarem a contribuição de patentes para o crescimento econômico;","subestimarem as relações de colaboração entre universidades e empresas;","subestimarem o papel do setor público no financiamento de atividades inovativas;","desconsiderarem a relação entre publicações científicas e desenvolvimento tecnológico."]'::jsonb,
'A',
'Uma crítica contemporânea aos manuais tradicionais (Frascati, Oslo) é que, centrados em P&D e patentes, desconsideram dimensões hoje essenciais da inovação, como a sustentabilidade e o impacto social.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Políticas Públicas de CT&I',
'Os Objetivos de Desenvolvimento Sustentável (ODS) reconhecem a CT&I como vetores centrais. No Brasil, o Plano Nacional de CT&I 2023-2030 (PNCTI) alinha a produção científica à Agenda 2030. Considerando a articulação entre políticas de CT&I e os ODS no contexto brasileiro, é correto afirmar que:',
'',
'',
'["um dos eixos estruturantes da PNCTI foca o desenvolvimento social por meio, dentre outros mecanismos, de tecnologias sociais e assistivas;","o Programa Nova Indústria Brasil tem o ODS 13 (combate à mudança climática) como meta estruturante das ações de longo prazo;","os indicadores de monitoramento de políticas de CT&I consideram apenas aspectos econômicos do desenvolvimento industrial;","a Lei do Bem estabelece critérios diferenciados para projetos de inovação em energias renováveis, associados ao ODS 7 (energia limpa e acessível);","o Fundo Nacional de Desenvolvimento Científico e Tecnológico (FNDCT) direciona cerca de 85% de seus recursos para fundos setoriais vinculados a metas de sustentabilidade."]'::jsonb,
'A',
'Um dos eixos estruturantes da PNCTI 2023-2030 é o desenvolvimento social, promovido, entre outros mecanismos, por tecnologias sociais e assistivas, alinhando a CT&I à redução de desigualdades da Agenda 2030.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Gestao de Projetos em Ciencia, Tecnologia e Inovacao (CT&I) (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Gestão de Projetos em CT&I',
'A escolha pela CT&I como eixo estratégico de desenvolvimento implica consolidar um sistema de governança capaz de alinhar políticas públicas, instituições de fomento e ações regionais. A estrutura do Sistema Nacional de Ciência, Tecnologia e Inovação (SNCTI) no Brasil é caracterizada por um modelo de governança que envolve:',
'',
'',
'["uma gestão centralizada em agências federais, com menor participação das instâncias estaduais e municipais;","a autonomia plena de cada estado da federação, sem necessidade de articulação com diretrizes federais;","um modelo de coordenação central acompanhado de agências de fomento e articulações federativas que respeitem as especificidades regionais;","a dependência de recursos internacionais, equilibrando eventual limitação do orçamento público nacional;","uma estrutura de financiamento baseada principalmente em organizações privadas e em parcerias com empresas estrangeiras."]'::jsonb,
'C',
'O SNCTI combina coordenação central (MCTI) com a atuação de agências de fomento e articulações federativas que respeitam as especificidades regionais, equilibrando direção nacional e autonomia dos entes.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Gestão de Projetos em CT&I',
'O ODS 9 propõe uma industrialização inclusiva e sustentável, apoiada em inovação, tecnologias limpas e fortalecimento da infraestrutura científica e produtiva. É correto afirmar que projetos de CT&I voltados à promoção do ODS 9 contribuem de maneira crítica para o desenvolvimento sustentável quando:',
'',
'',
'["integram inovação tecnológica com inclusão territorial e social, mitigando desigualdades produtivas e ambientais no modelo de indústria;","atualizam o parque industrial vigente com tecnologias importadas de última geração, aumentando a produtividade;","subsidiam grandes conglomerados para recuperar níveis históricos de crescimento do PIB industrial;","mantêm a lógica de modernização restrita a setores lucrativos, sem questionar seus impactos socioambientais;","priorizam a exportação de commodities com menor interferência regulatória para garantir competitividade internacional."]'::jsonb,
'A',
'Alinhados ao ODS 9, os projetos de CT&I contribuem criticamente quando integram inovação tecnológica com inclusão territorial e social, mitigando desigualdades produtivas e ambientais — e não apenas modernizando setores lucrativos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Gestão de Projetos em CT&I',
'Ferramentas como PERT (Program Evaluation and Review Technique) e CPM (Critical Path Method) são utilizadas para identificar sequências críticas, prever atrasos e otimizar recursos. A utilização combinada das técnicas PERT e CPM é mais indicada quando:',
'',
'',
'["o projeto é altamente padronizado e segue um cronograma fixo, com baixa variabilidade nas tarefas;","é necessário analisar estatisticamente prazos e incertezas, identificando o caminho crítico e as folgas das atividades;","o principal objetivo é registrar visualmente os responsáveis por cada atividade no ciclo do projeto;","se deseja acompanhar de forma contínua o fluxo de demandas, sem priorização de prazos ou dependências;","se pretende dividir o projeto em sprints curtos, com entregas incrementais, lideradas por equipes autônomas."]'::jsonb,
'B',
'PERT (probabilístico, trata incertezas de prazo) e CPM (identifica caminho crítico e folgas) são combinados quando se precisa analisar estatisticamente prazos e incertezas, determinando o caminho crítico e as folgas das atividades interdependentes.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Gestão de Projetos em CT&I',
'Projetos de CT&I envolvem desenvolvimento de novos conhecimentos, tecnologias e processos, apresentando alto grau de incerteza e singularidade. A singularidade e a incerteza em projetos de CT&I exigem abordagens específicas de gestão, pois esses projetos:',
'',
'',
'["se beneficiam de modelos industriais padronizados;","envolvem testes sucessivos, revisão de metas e adaptação a mudanças no contexto institucional;","têm suas metas definidas a partir de benchmarks de mercado com baixa necessidade de adaptação;","apresentam adaptações técnicas, com cronogramas e escopos rigidamente definidos;","dependem exclusivamente de recursos fixos e equipes estáveis para evitar mudanças ao longo de sua execução."]'::jsonb,
'B',
'Projetos de CT&I, por sua incerteza e singularidade, exigem gestão flexível e iterativa: testes sucessivos, revisão de metas e adaptação a mudanças no contexto institucional, em vez de cronogramas e escopos rígidos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Gestão de Projetos em CT&I',
'O Programa Rota 2030 visa a estimular a competitividade da indústria automotiva nacional por meio de incentivos à inovação tecnológica, eficiência energética e segurança veicular. No contexto desse programa, o alinhamento estratégico de projetos de inovação tecnológica com políticas públicas é efetivo quando:',
'',
'',
'["os projetos nacionais que priorizam a redução de custos seguem uma estratégia econômica, passível de articulação futura com a inovação tecnológica;","as iniciativas enfrentam desafios nacionais, como eficiência energética e segurança veicular, integrando pesquisa e aplicação industrial;","a empresa executora define os objetivos do projeto baseada em suas metas comerciais internas;","a inovação é medida pelo número de patentes geradas ao final da sua execução;","os recursos públicos são aplicados na aquisição de maquinaria para modernização de plantas industriais existentes."]'::jsonb,
'B',
'O alinhamento estratégico é efetivo quando os projetos enfrentam desafios nacionais definidos pela política pública (eficiência energética, segurança veicular), integrando pesquisa científica e aplicação industrial — e não apenas metas comerciais internas da empresa.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Gestão de Projetos em CT&I',
'A gestão da inovação está vinculada à capacidade de transformar conhecimentos científicos e tecnológicos em soluções úteis e sustentáveis. A capacidade de uma organização de transformar conhecimento em inovação efetiva depende de um processo estruturado que envolva sistematicamente:',
'',
'',
'["a incorporação de tecnologias emergentes como diferencial competitivo, independentemente de sua aderência a prioridades sociais ou setoriais;","o investimento continuado em pesquisa fundamental, mesmo sem vínculos explícitos com aplicação imediata;","a articulação entre atividades de pesquisa, desenvolvimento, validação e difusão tecnológica, alinhadas a diretrizes institucionais e objetivos estratégicos;","a replicação de práticas de inovação consagradas no mercado, priorizando a adaptação em vez da geração autônoma de soluções;","o aproveitamento de soluções tecnológicas disponíveis, com ênfase em implantação rápida e de baixo custo."]'::jsonb,
'C',
'A transformação de conhecimento em inovação efetiva depende da articulação sistemática entre pesquisa, desenvolvimento, validação e difusão tecnológica, alinhada às diretrizes institucionais e aos objetivos estratégicos da organização.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Gestão de Projetos em CT&I',
'O encerramento de projetos de CT&I necessita mais do que o cumprimento técnico e financeiro das atividades planejadas. Em vista disso, a fase de encerramento de projetos de CT&I apresenta dificuldades recorrentes, sobretudo porque:',
'',
'',
'["a padronização dos procedimentos operacionais nos projetos de CT&I tende a reduzir a variabilidade nos processos de finalização, conferindo previsibilidade à fase de encerramento e minimizando seus riscos estruturais;","o cumprimento dos marcos técnicos e financeiros previstos no planejamento é usualmente interpretado como critério suficiente para validar a efetividade do projeto e viabilizar a apropriação dos seus produtos e aprendizados;","a principal exigência nessa etapa é o cumprimento de requisitos contábeis e administrativos, que dispensam análise sobre efeitos qualitativos;","os resultados obtidos durante o projeto são mensuráveis, o que torna o monitoramento posterior mais qualitativo;","há obstáculos para sistematizar o conhecimento gerado, acompanhar impactos de médio e longo prazo e incorporar os aprendizados às práticas institucionais."]'::jsonb,
'E',
'A dificuldade recorrente no encerramento de projetos de CT&I está em sistematizar o conhecimento gerado, acompanhar impactos de médio e longo prazo e incorporar os aprendizados às práticas institucionais, indo além do mero cumprimento técnico-financeiro.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Gestão de Projetos em CT&I',
'Um instituto desenvolve um projeto de inovação em energia sustentável com alto grau de incerteza técnica e financiamento público a fundo perdido. Durante a execução, uma hipótese científica não se confirmou, exigindo redirecionamento de recursos e revisão do cronograma. A melhor estratégia para realinhar o projeto sem comprometer seus objetivos principais é:',
'',
'',
'["a interrupção imediata do projeto e a busca por novos recursos de fomento, uma vez que o escopo original foi invalidado;","a manutenção do plano original e ajuste no cronograma, de forma a cumprir os objetivos definidos no edital;","a utilização de uma ferramenta de gestão, como o Gráfico de Gantt, para redesenhar o planejamento financeiro e redefinir o nível de maturidade tecnológica;","a aplicação de uma abordagem de gestão ágil, como o Scrum, dividindo o trabalho em etapas curtas para testar rapidamente novas hipóteses e ajustar o planejamento;","a transferência da responsabilidade para um parceiro industrial, terceirizando o desenvolvimento da tecnologia."]'::jsonb,
'D',
'Diante de alta incerteza e necessidade de testar novas hipóteses, a gestão ágil (como o Scrum), dividindo o trabalho em ciclos curtos e iterativos, permite validar rapidamente alternativas e ajustar o planejamento sem comprometer os objetivos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Gestão de Projetos em CT&I',
'Um consórcio de universidades e empresas desenvolve um projeto estratégico em biotecnologia com financiamento do BNDES, enfrentando: (i) elevada incerteza técnica; (ii) necessidade de integração entre pesquisa e aplicação industrial; (iii) prazos inflexíveis por acordos de propriedade intelectual. O processo piloto não alcança os padrões de pureza; uma nova técnica demandaria seis meses adicionais. Para realinhar o projeto, o gestor deve:',
'',
'',
'["interromper a linha de pesquisa problemática e realocar recursos para uma versão menos inovadora da pesquisa, porém exequível no prazo original;","contratar um laboratório especializado para desenvolver uma solução para o problema técnico, mesmo que cedendo parte da propriedade intelectual;","prosseguir com o cronograma inicial e divulgar resultados parciais como prova de conceito, postergando a solução industrial para uma eventual fase subsequente;","solicitar a prorrogação de prazo e o aumento orçamentário ao financiador, mantendo a equipe original até se lograr a aplicação da nova abordagem;","constituir um comitê tripartite (universidade-empresa-financiador) para reavaliar o escopo e os marcos, analisando a relação custo-benefício da nova técnica e os impactos sobre o posicionamento estratégico das empresas."]'::jsonb,
'E',
'Diante de incerteza técnica, exigência de integração e prazos atrelados a acordos de PI, a decisão adequada é governança colaborativa: constituir um comitê tripartite (universidade-empresa-financiador) para reavaliar escopo e marcos, ponderando custo-benefício da nova técnica e impactos estratégicos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Gestão de Projetos em CT&I',
'Uma empresa desenvolveu um método de produção de biocombustíveis a partir de microalgas, com financiamento da Finep. Sabe-se que: (i) os princípios científicos foram validados em artigos; (ii) um protótipo laboratorial funciona em condições controladas; (iii) testes em ambiente simulado apresentaram eficiência de 70% da meta; (iv) ainda não houve integração com sistemas industriais. A alternativa que melhor define o estágio de maturidade (TRL) dessa tecnologia é:',
'',
'',
'["TRL 9 - tecnologia implementada com sucesso no mercado;","TRL 7 - sistema protótipo testado em condições operacionais reais;","TRL 6 - demonstração em ambiente relevante com eficiência parcial;","TRL 4 - validação em ambiente controlado com um protótipo funcional;","TRL 2 - conceito tecnológico formulado, mas sem comprovação experimental."]'::jsonb,
'D',
'Princípios validados e protótipo funcional testado em laboratório/ambiente controlado (ainda sem integração industrial) caracterizam o TRL 4 - validação de componente/protótipo em ambiente controlado (laboratório).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Gestão de Projetos em CT&I',
'A interação entre usuários e produtores é um dos pilares centrais para a inovação contínua em ambientes digitais. A alternativa que descreve corretamente um desafio crítico e sua solução estratégica é:',
'',
'',
'["métodos ágeis como Scrum eliminam a necessidade de interação contínua com usuários, já que times internos podem antecipar as demandas do mercado por meio de sprints isolados;","a especificidade de ativos em ambientes digitais reduz a necessidade de interação usuário-produtor, pois a tecnologia padronizada garante que soluções genéricas atendam a maioria dos casos de uso;","a análise de sentimentos em redes sociais substitui a interação direta com usuários, pois algoritmos de IA conseguem prever necessidades não articuladas, sem necessidade de participação ativa dos clientes;","a cocriação com usuários é limitada pela falta de ferramentas de CRM, sendo resolvida pela adoção de surveys tradicionais;","o paradoxo da personalização em massa ocorre quando usuários demandam soluções únicas, mas os produtores precisam explorar as economias de escala na produção, sendo mitigado por plataformas de inovação aberta que integram feedback em tempo real com módulos de produção flexível."]'::jsonb,
'E',
'O paradoxo da personalização em massa (demanda por soluções únicas versus necessidade de economias de escala) é mitigado por plataformas de inovação aberta que integram feedback dos usuários em tempo real a módulos de produção flexível.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Gestão de Projetos em CT&I',
'O modelo de difusão tecnológica de Abernathy-Utterback (modelo A-U) descreve como as estratégias de inovação devem se adaptar às fases do ciclo de vida tecnológico (fluida, transicional e específica). Quando a tecnologia de baterias de estado sólido atingir a fase transicional, a estratégia adequada a ser adotada pela empresa é:',
'',
'',
'["a manutenção do foco em inovações radicais, explorando potenciais novos designs dominantes;","a implementação de um sistema preciso de gestão de portfólio de projetos sem adaptação às mudanças de mercado;","a consolidação de parcerias para padronização do design dominante e o investimento em melhoria de eficiência da tecnologia;","a redução dos investimentos em P&D e a reorientação dos investimentos para a otimização de processos para a produção em escala;","a manutenção de uma estrutura organizacional totalmente flexível como na fase inicial, de forma a potencializar inovações radicais de produto."]'::jsonb,
'C',
'Na fase transicional do modelo A-U consolida-se o design dominante; a estratégia adequada é firmar parcerias para padronizar esse design e investir na melhoria da eficiência da tecnologia, deslocando o foco da inovação radical de produto para a de processo.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Tecnologias da Informacao e Comunicacao (TICs) & Ciencia de Dados (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Tecnologias da Informação e Ciência de Dados',
'João está preparando um conjunto de dados para publicar no Portal de Dados Abertos. Um dos descritores é a licença de uso que permite o uso, a modificação e a distribuição dos dados, exigindo atribuição ao autor original. De acordo com as instruções de publicação do Portal de Dados Abertos, a licença de uso que João deve informar é:',
'',
'',
'["Creative Commons CC0;","Creative Commons Atribuição;","Licença Aberta do esquema e organização do Banco de Dados;","Licença e Dedicação ao Domínio Público do Open Data Commons;","Licença Aberta para Bases de Dados (ODbL) do Open Data Commons."]'::jsonb,
'B',
'A licença que permite uso, modificação e distribuição exigindo atribuição ao autor original é a Creative Commons Atribuição (CC BY). A CC0 e a dedicação ao domínio público dispensam atribuição.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Tecnologias da Informação e Ciência de Dados',
'Ana, gestora do Cadastro Único (CadÚnico), irá disponibilizar duas distribuições (CSV e XLSX) no Catálogo Nacional de Dados utilizando o padrão DCAT-BR. Nesse padrão, para indicar o endereço da web onde o recurso está hospedado, Ana deve usar a propriedade:',
'',
'',
'["dcat:location","dcat:accessURL","dcat:landingPage","dcat:contactPoint","dcat:endpointURL"]'::jsonb,
'B',
'No vocabulário DCAT (e no perfil DCAT-BR), a propriedade dcat:accessURL indica a URL por meio da qual se acessa o recurso/distribuição (o endereço web onde o recurso está hospedado).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Tecnologias da Informação e Ciência de Dados',
'Luiz está desenvolvendo um dashboard em um mapa do Brasil e precisa implementar um programa que acesse o Cadastro Base de Endereço da Infraestrutura Nacional de Dados (IND) e retorne UF, Cidade e Bairro a partir do CEP. Para obter os dados de forma programática, por meio de uma interface, Luiz deve usar o(a) respectivo(a):',
'',
'',
'["API;","VPN;","VoIP;","HDFS;","NoSQL."]'::jsonb,
'A',
'Para acessar dados de forma programática por meio de uma interface, utiliza-se uma API (Application Programming Interface), que expõe os serviços do cadastro para consulta por outros sistemas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Tecnologias da Informação e Ciência de Dados',
'Tomás está desenvolvendo um projeto de IoT para acompanhar a assiduidade escolar, capturando a hora de entrada e de saída das crianças da escola. Dentre os componentes de um projeto de IoT, para capturar a hora de entrada e de saída, Tomás deve usar um:',
'',
'',
'["sensor;","buzzer;","atuador;","gateway;","streaming."]'::jsonb,
'A',
'Para capturar (medir/detectar) grandezas do ambiente físico, como a presença e o horário de entrada e saída, utiliza-se um sensor. O atuador age sobre o ambiente, o buzzer emite som, o gateway concentra a comunicação e o streaming é um fluxo de dados.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Tecnologias da Informação e Ciência de Dados',
'No setor público, as ferramentas de Inteligência Artificial Generativa (IAG) precisam de supervisão humana para que vieses ou informações imprecisas não sejam reproduzidos. A fase do ciclo de desenvolvimento de modelos de IAG na qual ocorre essa supervisão, com o ajuste e a captura de padrões nos dados, é a de:',
'',
'',
'["aplicação;","inferência;","alucinação;","implantação;","treinamento."]'::jsonb,
'E',
'É na fase de treinamento que o modelo ajusta seus parâmetros e captura padrões nos dados; é também quando a supervisão humana (curadoria de dados, ajustes, mitigação de vieses) atua para evitar a reprodução de imprecisões.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Tecnologias da Informação e Ciência de Dados',
'Martin está elaborando uma cartilha sobre o uso ético da IA em seu setor. A IA deve fornecer informações sobre as entradas, as saídas e o funcionamento do algoritmo, bem como a forma como cada parte contribui para o resultado final. Na cartilha de uso ético da IA de Martin, devem constar requisitos sobre:',
'',
'',
'["explicabilidade;","hiperparametrização;","aprendizado profundo;","modelos largos de linguagem;","processamento de linguagem natural."]'::jsonb,
'A',
'A capacidade de explicar entradas, saídas e o funcionamento do algoritmo, evidenciando como cada parte contribui para o resultado, é o princípio da explicabilidade (explainability) da IA, essencial para o uso ético e transparente.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Tecnologias da Informação e Ciência de Dados',
'Maria precisa de dados sobre nacionalidade e naturalidade do cidadão, já armazenados no Cadastro Base do Cidadão (CPF) da Receita Federal. Para que o cidadão não reapresente essas informações, é necessário recuperá-las do programa do governo federal que promove a troca automática e segura de dados entre os sistemas de informação governamentais. Para isso, Maria deve usar o programa:',
'',
'',
'["CISC GOV.BR","Conta GOV.BR","Agenda GOV.BR","Conecta GOV.BR","Protocolo GOV.BR"]'::jsonb,
'D',
'O Conecta GOV.BR (Conecta gov.br) é a plataforma de interoperabilidade do governo federal que promove a troca automática e segura de dados entre sistemas governamentais, evitando que o cidadão reapresente informações já disponíveis em bases oficiais.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Tecnologias da Informação e Ciência de Dados',
'Aldo está implementando um painel de visualização com a quantidade de atendimentos ao público ao longo do tempo. Para apresentar a quantidade de atendimentos, Aldo deve implementar uma variável do tipo:',
'',
'',
'["ordinal;","discreta;","nominal;","contínua;","categórica."]'::jsonb,
'B',
'A quantidade de atendimentos é uma variável quantitativa que assume valores inteiros contáveis (0, 1, 2, ...), caracterizando uma variável discreta. Contínua seria para medições fracionárias; nominal/ordinal/categórica são qualitativas.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Tecnologias da Informação e Ciência de Dados',
'Paulo precisa analisar dados sobre a educação pública ao longo do tempo (ingressos, egressos, bolsas, capacitação de docentes). Para realizar esse monitoramento visando à avaliação das políticas da educação, Paulo deve:',
'',
'',
'["aderir ao programa Capacita GOV.BR para obter dados e analisar o resultado da capacitação de alunos aplicando algoritmos de Aprendizado de Máquina, como o Random Forest;","coletar indicadores de desempenho escolar da Infovia Brasília e implementar as métricas correspondentes em um ambiente de visualização com dashboards;","acessar os recursos de dados sobre o tema Educação no Portal Brasileiro de Dados Abertos (https://dados.gov.br) e analisá-los por meio de métricas usando uma ferramenta como o Power BI;","desenvolver um projeto de Ciência de Dados fazendo uso de linguagens como Python para coletar dados disponíveis nos sites dos órgãos de educação e realizar o Reconhecimento de Entidades Nomeadas;","utilizar o serviço Modelo de Acessibilidade em Governo Eletrônico (eMAG) para avaliar o nível de acesso dos alunos às escolas públicas e outros índices educacionais."]'::jsonb,
'C',
'A abordagem adequada é acessar os dados do tema Educação no Portal Brasileiro de Dados Abertos (dados.gov.br) e analisá-los por meio de métricas e dashboards com uma ferramenta de BI (como o Power BI). As demais opções desviam para serviços ou técnicas inadequadas ao objetivo.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Tecnologias da Informação e Ciência de Dados',
'Ana precisa de um ambiente de computação em nuvem para hospedar serviços com dados de acesso restrito que crescem sob demanda, suportados e compartilhados exclusivamente por um grupo específico de órgãos e entidades que têm requisitos compartilhados e um relacionamento entre si. Diante disso, Ana deve contratar ou adquirir um(a):',
'',
'',
'["switch;","firewall;","storage all-flash;","chave criptográfica;","nuvem comunitária."]'::jsonb,
'E',
'Quando a infraestrutura em nuvem é compartilhada exclusivamente por um grupo específico de organizações com requisitos e relacionamento comuns, trata-se de nuvem comunitária (community cloud), conforme a classificação do NIST.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Tecnologias da Informação e Ciência de Dados',
'Uma metrópole costeira implementa um gêmeo digital (digital twin) que integra dados de sensores IoT, câmeras, satélite e modelos de IA para prever alagamentos e recomendar rotas em tempo real, com camadas de ingestão, processamento em nuvem e visualização 3D. Sobre a concepção e operação desse gêmeo digital, é correto afirmar que:',
'',
'',
'["a latência na atualização do modelo 3D é irrelevante para decisões operacionais, desde que os dados históricos estejam completos, pois o valor do gêmeo digital reside em análises retroativas;","o uso de IA no gêmeo digital é restrito a aprendizado supervisionado, pois modelos supervisionados não conseguem lidar com séries temporais oriundas de múltiplos sensores ambientais;","a integração de dados heterogêneos no gêmeo digital exige normalização semântica e temporal, de modo que informações de sensores com diferentes frequências e formatos possam alimentar modelos preditivos de forma coerente;","o emprego de câmeras e sensores no gêmeo digital substitui a necessidade de modelagem física, já que o fluxo contínuo de dados garante previsões corretas sem simulação de cenários;","a arquitetura de um gêmeo digital para riscos climáticos prioriza o desacoplamento entre as camadas de ingestão e de visualização, mas não requer interoperabilidade com sistemas externos, pois todo o ecossistema de dados é necessariamente fechado."]'::jsonb,
'C',
'A integração de dados heterogêneos (diferentes fontes, frequências e formatos) em um gêmeo digital exige normalização semântica e temporal, para que os dados possam alimentar modelos preditivos de forma coerente e produzir previsões confiáveis em tempo real.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Tecnologias da Informação e Ciência de Dados',
'O artigo Attention is All You Need (Vaswani et al., 2017) apresentou a arquitetura Transformer. Sobre a arquitetura Transformer, é correto afirmar que:',
'',
'',
'["o Transformer substitui mecanismos recorrentes por atenção, mas não utiliza codificação posicional, pois o alinhamento sequencial é aprendido implicitamente pelas cabeças de atenção;","a introdução do multi-head attention permite ao modelo aprender relações diferentes entre tokens em subespaços de projeção distintos, preservando a informação posicional por meio de codificadores específicos;","o Transformer original evita camadas feed-forward densas para reduzir a complexidade, compensando essa ausência com mais cabeças de atenção por bloco;","o mecanismo de scaled dot-product attention multiplica os escores de similaridade pela raiz quadrada da dimensão das keys para intensificar as diferenças entre tokens distantes;","a arquitetura de encoder-decoder é composta por blocos distintos no encoder e no decoder, sem reutilização estrutural, a fim de especializar cada parte para tarefas diferentes."]'::jsonb,
'B',
'O multi-head attention permite ao modelo aprender, em paralelo, diferentes relações entre tokens em subespaços de projeção distintos; a informação de ordem é preservada pela codificação posicional (positional encoding) adicionada às representações de entrada.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Metodologia da Pesquisa Cientifica (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Metodologia da Pesquisa Científica',
'Nos estudos dedutivos, os pesquisadores devem elaborar enunciados básicos, que se colocam à prova durante a pesquisa e podem, ou não, ser confirmados. Esses enunciados geralmente afirmam uma relação entre duas ou mais variáveis e estabelecem uma previsão a partir de uma teoria ou estudos prévios. Tais enunciados são conhecidos como:',
'',
'',
'["suposições metodológicas;","suposições teóricas;","discussões teóricas;","conclusões;","hipóteses."]'::jsonb,
'E',
'Enunciados que afirmam uma relação entre variáveis e são colocados à prova (confirmados ou refutados) ao longo da pesquisa são as hipóteses.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Metodologia da Pesquisa Científica',
'No processo seletivo de um grupo de pesquisa, o entrevistador argumenta a favor de incluir a observação participante no trabalho de campo. Em sua argumentação, ele observa que essa técnica, além de permitir o registro de informações em primeira mão, possibilita ao pesquisador:',
'',
'',
'["adotar uma perspectiva objetiva;","controlar comportamentos e questionamentos;","explorar tópicos delicados de forma menos invasiva;","mostrar experiência em transcrição e digitalização ótica;","registrar informações indiretas, filtradas pelas opiniões dos observados."]'::jsonb,
'C',
'A observação participante, ao inserir o pesquisador no contexto estudado, permite registrar informações em primeira mão e explorar tópicos delicados de forma menos invasiva, acompanhando o fenômeno no ambiente natural dos sujeitos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Metodologia da Pesquisa Científica',
'Considerando o tempo delimitado para um estudo sobre tecnologias sociais no Instituto Terroá, os pesquisadores podem levantar dados de distintas fontes: (a) relatórios e indicadores; (b) entrevista a lideranças; (c) dados observacionais in situ; e (d) experiências dos membros-chave da comunidade. É proposto ao grupo um projeto com uso de métodos qualitativos que, nesse contexto, é denominado:',
'',
'',
'["survey;","etnografia;","pesquisa-ação;","estudo de casos;","pesquisa narrativa."]'::jsonb,
'D',
'A investigação aprofundada de uma unidade específica (o Instituto), em tempo delimitado e com múltiplas fontes de evidência (documentos, entrevistas, observação, experiências), caracteriza o estudo de caso.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Metodologia da Pesquisa Científica',
'João precisa elaborar um projeto de pesquisa sobre os impactos ecológicos relacionados à atividade humana no planeta. Considerando que ele tem um prazo curto para enviar uma primeira versão, seu ponto de partida para elaborar o projeto deve ser:',
'',
'',
'["formular a justificativa do problema de pesquisa, com base na sua experiência;","definir o problema de pesquisa, a partir de sua experiência no campo e da sua opinião;","começar a estruturar o cronograma de trabalho, para ter uma ideia precisa dos prazos disponíveis;","estruturar a metodologia e o cronograma das etapas de trabalho, uma vez que a primeira etapa deve ser operativa;","iniciar o levantamento bibliográfico para definir a teoria que será utilizada, considerando que as demais partes do projeto serão consequentes."]'::jsonb,
'E',
'O ponto de partida de um projeto de pesquisa é o levantamento bibliográfico, que fundamenta teoricamente o problema e orienta as demais etapas (problema, hipóteses, metodologia), evitando que a pesquisa se baseie apenas em opinião ou experiência pessoal.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Metodologia da Pesquisa Científica',
'Um grupo está em dúvida entre a pesquisa experimental ou quase experimental em um projeto sobre o impacto das políticas públicas de saúde na prevenção de doenças sexualmente transmissíveis na população jovem. Nesse caso, é recomendável o desenho:',
'',
'',
'["quase experimental seguido de um survey;","experimental, para garantir o rigor metodológico e obter dados confiáveis e qualitativos;","quase experimental, porque a atribuição dos grupos é aleatória e garante o rigor metodológico;","quase experimental, porque os grupos são predefinidos, o que é adequado para medir o impacto de políticas públicas específicas;","experimental, porque os grupos são predefinidos, o que é adequado para medir o impacto de políticas públicas específicas."]'::jsonb,
'D',
'Na avaliação de impacto de políticas públicas, geralmente não é possível a aleatorização dos grupos; os grupos já são predefinidos (p. ex., quem recebeu a política). Isso caracteriza o desenho quase experimental, adequado a esse contexto.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Metodologia da Pesquisa Científica',
'O relatório de pesquisa exige o uso correto da ABNT. Identifica-se a seguinte referência: "GRBICH, Carol. (2013). Qualitative data analysis: an introduction. 2ª. Ed. Londres: Sage, 2013." Para que a referência fique correta, é necessário:',
'',
'',
'["eliminar o ano 2013 do final, porque está repetido;","colocar o título completo do livro em negrito e eliminar o ano 2013 do final, porque está repetido;","colocar a primeira parte do título do livro em negrito e eliminar o ano 2013 do final, porque está repetido;","colocar a primeira parte do título do livro em negrito e eliminar o ano 2013 do início, retirando também os parênteses;","colocar o título completo do livro em negrito e eliminar o ano 2013 do início, retirando também os parênteses."]'::jsonb,
'D',
'Pela ABNT, destaca-se (negrito) apenas o título, até o subtítulo (a primeira parte, antes dos dois-pontos), e a data vai ao final da referência. Assim, elimina-se o ano do início (e os parênteses) e coloca-se em negrito a primeira parte do título ("Qualitative data analysis").'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Metodologia da Pesquisa Científica',
'Segundo Robert Yin (2014), os estudos de caso único e múltiplos são similares e apresentam a mesma estrutura metodológica. Ao adotar o estudo de casos múltiplos, devem-se considerar, na etapa de desenho, as seguintes atividades sequenciais:',
'',
'',
'["seleção de casos; desenho do protocolo de coleta de dados; desenvolvimento teórico;","seleção de casos; condução dos casos de forma paralela; redação do relatório de cada caso; desenvolvimento teórico;","seleção de casos; condução dos casos de forma sequencial; redação dos relatórios respectivos; desenvolvimento teórico;","desenvolvimento teórico; seleção de casos; desenho do protocolo de coleta de dados;","desenvolvimento teórico; seleção e condução dos casos de forma paralela; redação dos relatórios respectivos."]'::jsonb,
'D',
'Em Yin, a etapa de desenho (define) começa pelo desenvolvimento teórico, seguido da seleção de casos e do desenho do protocolo de coleta de dados; só depois ocorrem a condução dos casos e a redação dos relatórios (fases de prepare/collect/analyze).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Metodologia da Pesquisa Científica',
'Um pesquisador decide coletar dados qualitativos em uma pesquisa sobre a transformação tecnológica na vida cotidiana de jovens estudantes universitários de 18 a 26 anos. A entrevista episódica é uma opção interessante porque:',
'',
'',
'["tem elevada capacidade de captar percepções, por empregar escala do tipo Likert;","faz obrigatoriamente uso da triangulação, o que a torna uma das formas de entrevista mais robustas;","se apresenta em formatos que podem ser autoaplicados, o que otimiza o tempo da coleta de dados;","pode captar a representação social de um conhecimento específico partilhado pelos membros de um grupo;","leva à obtenção de indicadores e índices, muito úteis para a elaboração de políticas públicas sobre ciência e tecnologia."]'::jsonb,
'D',
'A entrevista episódica combina narrativas de episódios concretos com respostas conceituais, sendo adequada para captar a representação social de um conhecimento específico partilhado pelos membros de um grupo.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Metodologia da Pesquisa Científica',
'Em um projeto de pesquisa-ação transdisciplinar, os pesquisadores realizaram atividades de pesquisa tradicionais e também contribuíram ativamente para políticas públicas (webinar para formuladores, evento participativo com agricultores e sessão para desenvolver uma agenda de pesquisa e um esquema de recompensa por KPI). Na avaliação do papel dos pesquisadores, identificou-se que eles assumiram os papéis de:',
'',
'',
'["cientista reflexivo (atividades de pesquisa tradicionais) e cientista autorreflexivo (refletem sobre seu próprio papel e posição nos desafios do fenômeno estudado);","cientista reflexivo (atividades de pesquisa tradicionais) e agente de mudança (são ativos na formulação de políticas públicas e facilitam processos com outros atores em direção a soluções);","agente de mudança (são ativos na formulação de políticas públicas e facilitam processos com outros atores) e facilitador de processos (iniciam e coordenam o processo de aprendizagem entre os atores);","cientista autorreflexivo (refletem sobre seu próprio papel) e agente de mudança (são ativos na formulação de políticas públicas);","facilitador de processos (iniciam e coordenam o processo de aprendizagem entre os atores) e corretor de conhecimento (atuam como intermediários e integram as diferentes perspectivas e tipos do conhecimento)."]'::jsonb,
'C',
'As atividades descritas (promover eventos, articular agricultores e formuladores, coordenar a construção de uma agenda de pesquisa) revelam os pesquisadores atuando como agentes de mudança (ativos na formulação de políticas e facilitando soluções com outros atores) e como facilitadores de processos (iniciando e coordenando o processo de aprendizagem entre os atores).'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Metodologia da Pesquisa Científica',
'Uma equipe classifica textos quanto à natureza (básica ou aplicada) e aos objetivos (exploratória, descritiva ou explicativa). Um texto apresenta uma caracterização morfométrica das larvas de Anisakis spp. (medições de comprimento), revelando que larvas de um hospedeiro eram maiores que de outro, e constitui o primeiro registro molecular de A. pegreffii em hospedeiros na costa chilena. Nesse caso, a pesquisa deve ser registrada como:',
'',
'',
'["básica e descritiva;","básica e explicativa;","aplicada e explicativa;","básica e exploratória;","aplicada e exploratória."]'::jsonb,
'A',
'O estudo visa gerar conhecimento sem aplicação prática imediata (pesquisa básica) e caracteriza/descreve as larvas por meio de medições morfométricas, sem buscar relações causais, o que configura objetivo descritivo. Logo: básica e descritiva.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Metodologia da Pesquisa Científica',
'Uma pesquisa avaliou a adoção de Big Data na Agricultura e Pecuária de Precisão com método misto: um estudo de caso dos 12 casos publicados em um relatório e um survey com stakeholders (n=56) com perguntas em escala Likert e opções abertas. Os resultados, descritivos em ambas as abordagens, foram apresentados de forma complementar. Considerando os métodos mistos e as formas de integração dos dados, essa pesquisa adota uma estratégia:',
'',
'',
'["exploratória sequencial de métodos mistos;","explanatória sequencial de métodos mistos;","transformativa sequencial de métodos mistos;","de triangulação convergente de métodos mistos;","transformativa convergente de métodos mistos."]'::jsonb,
'D',
'Quando as abordagens qualitativa e quantitativa são coletadas em paralelo e seus resultados apresentados de forma complementar para corroboração, trata-se da estratégia de triangulação convergente (convergente paralela) de métodos mistos.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Metodologia da Pesquisa Científica',
'Um coordenador encontrou poucas publicações em revistas indexadas de rigor sobre o tema, mas constatou interesse crescente em bases de acesso aberto, documentos técnicos e bancos de teses nos últimos três anos. Diante disso, decidiu adotar a revisão de escopo (um tipo de revisão sistemática de literatura), a qual:',
'',
'',
'["tem o objetivo de combinar resultados de estudos quantitativos para definir de forma mais precisa efeitos de intervenções em determinado fenômeno;","avalia preliminarmente a quantidade de estudos e evidências disponíveis sobre o tema e o potencial da literatura;","visa a fornecer respostas a perguntas muito específicas e, em consequência, requer que seja avaliada rigorosamente a qualidade dos estudos incluídos;","permite avaliar com rigor a qualidade das evidências disponíveis nos estudos prévios levantados;","oferece um padrão de referência para confirmar ou refutar se a prática atual se baseia, ou não, em evidências que serão usadas para subsidiar a prática em qualquer campo do saber."]'::jsonb,
'B',
'A revisão de escopo (scoping review) mapeia e avalia preliminarmente a amplitude e a quantidade de estudos e evidências disponíveis sobre um tema (identificando lacunas e o potencial da literatura), sem a avaliação rigorosa de qualidade e a resposta a perguntas específicas típicas da revisão sistemática ou da metanálise.'
from public.exams where slug = 'cnu-2025-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
