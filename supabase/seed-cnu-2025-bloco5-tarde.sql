-- Seed: CNU 2025 (2a Edicao) - Bloco 5 (Administracao) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-D 32-D 33-E 34-A 35-E 36-A 37-E 38-A 39-A 40-B
-- 41-A 42-A 43-B 44-A 45-A 46-A 47-B 48-C 49-D 50-A
-- 51-D 52-E 53-E 54-C 55-C 56-C 57-C 58-C 59-C 60-B
-- 61-C 62-B 63-C 64-D 65-D 66-B 67-D 68-D 69-B 70-B
-- 71-B 72-E 73-E 74-C 75-D 76-D 77-B 78-B 79-E 80-A
-- 81-B 82-D 83-A 84-D 85-D 86-D 87-C 88-A 89-E 90-A

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco5-tarde', 'CNU 2025 (2ª Edição) - Bloco 5 (Tarde) - Administração', 'cnu', '2025')
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
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece diretrizes a serem observadas na garantia do direito fundamental de acesso à informação. A respeito dessas diretrizes, é correto afirmar que, entre elas, estão:',
'',
'',
'["o sigilo como regra geral e a publicidade como exceção, a divulgação apenas mediante requerimento e o fomento da cultura do segredo na Administração;","a observância da publicidade como preceito geral e do sigilo como exceção, a divulgação de informações de interesse público independentemente de solicitações e o desenvolvimento do controle social da Administração Pública;","a divulgação de informações somente após autorização judicial, a utilização de meios físicos exclusivamente e a restrição do controle social;","o sigilo das informações pessoais de agentes públicos sobre remuneração, a cobrança de taxas para acesso e o uso restrito de meios de comunicação;","a divulgação apenas de informações classificadas, o acesso exclusivo por servidores e a vedação à transparência ativa."]'::jsonb,
'C',
'A LAI adota a publicidade como preceito geral e o sigilo como exceção, prevê a divulgação de informações de interesse público independentemente de solicitação (transparência ativa) e o desenvolvimento do controle social da Administração Pública.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público, teve indeferido um requerimento administrativo por decisão de autoridade competente. Inconformado, pretende que a própria autoridade que proferiu a decisão a reaprecie, apresentando novos argumentos. No âmbito do processo administrativo federal (Lei nº 9.784/1999), o instrumento adequado é:',
'',
'',
'["o mandado de segurança, dirigido ao Poder Judiciário;","a reclamação, dirigida ao órgão de controle externo;","o pedido de reconsideração, dirigido à própria autoridade que proferiu a decisão;","a representação, dirigida ao Ministério Público;","a denúncia, dirigida à corregedoria."]'::jsonb,
'C',
'O pedido de reconsideração é o instrumento pelo qual o interessado solicita à própria autoridade que proferiu a decisão a sua reapreciação, sem prejuízo do recurso à autoridade superior.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'O Portal da Transparência do Governo Federal consolida informações de interesse público para consulta da sociedade. Entre as informações disponibilizadas no Portal, incluem-se:',
'',
'',
'["a remuneração de servidores públicos, as sanções aplicadas a empresas e pessoas e os dados sobre filiação sindical dos servidores;","exclusivamente dados agregados de despesas, vedada a identificação de beneficiários;","apenas informações classificadas como sigilosas mediante prévia autorização;","somente dados relativos ao Poder Executivo municipal;","dados pessoais sensíveis de cidadãos beneficiários de programas sociais, com identificação completa."]'::jsonb,
'C',
'O Portal da Transparência divulga, entre outras, a remuneração de servidores públicos e as sanções aplicadas a empresas e pessoas (como as registradas no CEIS/CNEP), promovendo a transparência ativa e o controle social.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No contexto da integridade pública, um servidor identifica que uma situação pessoal sua pode influenciar indevidamente o desempenho de suas funções, colocando em risco a imparcialidade das decisões administrativas. Essa situação caracteriza:',
'',
'',
'["um conflito de interesses, que deve ser prevenido e, se ocorrer, comunicado e tratado conforme a legislação;","uma hipótese de improbidade administrativa automática, independentemente de qualquer providência;","uma situação irrelevante do ponto de vista ético, desde que não haja prejuízo financeiro;","uma causa de nulidade de todos os atos praticados pelo órgão;","um ato de corrupção consumado, sujeito a sanção penal imediata."]'::jsonb,
'A',
'A influência indevida de interesse privado sobre o exercício da função pública configura conflito de interesses (Lei nº 12.813/2013), que deve ser prevenido, comunicado e tratado, não se confundindo automaticamente com improbidade ou corrupção.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 dispõe sobre a política de governança da administração pública federal direta, autárquica e fundacional. Entre os princípios da governança pública estabelecidos nesse decreto, encontra-se:',
'',
'',
'["a centralização das decisões em órgão único de controle;","a vedação à participação social no processo decisório;","o sigilo como regra na condução das políticas públicas;","a desoneração da alta administração quanto à prestação de contas;","a capacidade de resposta, a integridade, a confiabilidade, a transparência e a prestação de contas e responsabilidade (accountability)."]'::jsonb,
'E',
'O Decreto nº 9.203/2017 estabelece como princípios da governança pública, entre outros, a capacidade de resposta, a integridade, a confiabilidade, a melhoria regulatória, a prestação de contas e responsabilidade (accountability) e a transparência.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, servidora pública, foi designada para planejar um evento aberto ao público. Preocupada com a inclusão de pessoas com deficiência, buscou garantir condições de acessibilidade. À luz da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (incorporada com status de emenda constitucional) e da Lei Brasileira de Inclusão, é correto afirmar que:',
'',
'',
'["a acessibilidade restringe-se à eliminação de barreiras arquitetônicas, não abrangendo barreiras comunicacionais ou atitudinais;","a acessibilidade é faculdade do organizador, exigível apenas mediante solicitação formal prévia da pessoa com deficiência;","a acessibilidade deve ser assegurada apenas em prédios públicos, não em eventos;","a acessibilidade é direito que se realiza somente após a ocorrência de barreira concreta;","a acessibilidade é condição que deve ser assegurada de forma a eliminar barreiras e permitir, em igualdade de oportunidades, a participação das pessoas com deficiência."]'::jsonb,
'E',
'A acessibilidade, segundo a Convenção e a Lei Brasileira de Inclusão (Lei nº 13.146/2015), é a possibilidade de utilização com segurança e autonomia de espaços, serviços e informações, eliminando barreiras (arquitetônicas, comunicacionais, atitudinais, etc.) para assegurar a participação em igualdade de oportunidades.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transgênero, deseja retificar seu prenome e gênero no registro civil para que reflitam sua identidade de gênero. Conforme entendimento consolidado do Supremo Tribunal Federal, a retificação:',
'',
'',
'["depende de autorização judicial precedida de cirurgia de redesignação sexual;","depende de laudos médicos e psicológicos que comprovem o transtorno de identidade;","é vedada no ordenamento jurídico brasileiro;","pode ser feita diretamente no cartório (registro civil), independentemente de cirurgia, laudos ou autorização judicial;","somente é possível após decisão judicial transitada em julgado em todos os casos."]'::jsonb,
'D',
'O STF (ADI 4275) reconheceu o direito das pessoas trans à alteração de prenome e gênero diretamente no registro civil, independentemente de cirurgia de redesignação, laudos ou autorização judicial, com base na autonomia e dignidade da pessoa humana.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Determinada comunidade quilombola busca a titulação definitiva das terras que ocupa. Conforme o ordenamento jurídico brasileiro e o Decreto nº 4.887/2003, o processo de titulação das terras quilombolas envolve a atuação:',
'',
'',
'["exclusiva do Poder Judiciário, sem participação administrativa;","exclusiva dos Municípios onde se localizam as terras;","da Fundação Cultural Palmares, na certificação da comunidade, e do Incra, na identificação, demarcação e titulação das terras;","apenas de organizações não governamentais;","exclusiva do Ministério Público Federal."]'::jsonb,
'E',
'A certificação (autodefinição) das comunidades quilombolas cabe à Fundação Cultural Palmares, enquanto a identificação, reconhecimento, delimitação, demarcação e titulação das terras compete ao Incra (Decreto nº 4.887/2003). A alternativa que descreve corretamente essa divisão é a de letra E.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana, mulher negra com deficiência, relata ter sofrido tratamento discriminatório que combina preconceitos de gênero, raça e deficiência de forma simultânea e indissociável. Esse fenômeno, em que diferentes marcadores sociais se sobrepõem agravando a discriminação, é conhecido como:',
'',
'',
'["discriminação indireta exclusivamente;","discriminação positiva;","ação afirmativa;","neutralidade racial;","discriminação múltipla ou interseccional."]'::jsonb,
'E',
'A sobreposição de diferentes marcadores sociais (gênero, raça, deficiência) que agrava a discriminação de forma simultânea e indissociável caracteriza a discriminação múltipla ou interseccional.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela sofre, por parte de seu companheiro Flávio, agressões físicas, ofensas constantes à sua autoestima e dignidade, além da destruição de seus bens pessoais. Conforme a Lei Maria da Penha (Lei nº 11.340/2006), as condutas descritas configuram, respectivamente, violência:',
'',
'',
'["moral, sexual e física;","física, moral e sexual;","física, psicológica e patrimonial;","psicológica, sexual e moral;","patrimonial, física e sexual."]'::jsonb,
'C',
'As agressões físicas configuram violência física; as ofensas à autoestima e dignidade, violência psicológica; e a destruição de bens pessoais, violência patrimonial — conforme as formas de violência doméstica previstas na Lei Maria da Penha.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Os sistemas estruturantes da Administração Pública federal organizam atividades comuns a diversos órgãos, como gestão de pessoal, orçamento e logística, por meio de plataformas e normas padronizadas. Sobre esses sistemas, é correto afirmar que:',
'',
'',
'["cada órgão deve desenvolver seus próprios sistemas isolados, sem padronização;","visam padronizar e integrar atividades comuns por meio de órgão central e órgãos setoriais, utilizando plataformas como as de gestão de pessoal;","são restritos ao Poder Legislativo;","têm por finalidade exclusiva a arrecadação tributária;","foram extintos pela política de governança digital."]'::jsonb,
'B',
'Os sistemas estruturantes (como os de pessoal civil - SIPEC, de administração financeira, de organização e inovação institucional, etc.) organizam-se por meio de órgão central e órgãos setoriais e padronizam atividades comuns, apoiados por plataformas, como as de gestão de pessoal.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'Determinado órgão pretende executar um projeto cuja realização ultrapassa um exercício financeiro, com despesas distribuídas ao longo de vários anos. No âmbito do planejamento e orçamento público, as despesas desse projeto devem estar previstas:',
'',
'',
'["na Lei Orçamentária Anual (LOA), de modo que as despesas de cada exercício constem do respectivo orçamento anual, em consonância com o plano plurianual;","exclusivamente no plano plurianual, dispensando-se a previsão na LOA;","somente na Lei de Diretrizes Orçamentárias;","em decreto autônomo do chefe do Executivo, independentemente de lei;","em resolução do Tribunal de Contas."]'::jsonb,
'A',
'As despesas de projetos plurianuais devem constar da Lei Orçamentária Anual de cada exercício, em consonância com o plano plurianual (PPA), de modo que cada orçamento anual contemple a parcela a ser executada no respectivo exercício.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Em ano eleitoral, determinado órgão público pretende realizar campanha publicitária de caráter informativo, educativo ou de orientação social, sem conter nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades. Conforme a Constituição Federal e a legislação eleitoral, essa campanha:',
'',
'',
'["é absolutamente vedada em qualquer hipótese durante o ano eleitoral;","somente pode ser realizada mediante autorização do Tribunal Superior Eleitoral;","pode ser realizada, pois a publicidade de caráter informativo, educativo ou de orientação social é admitida, vedada a promoção pessoal;","depende de prévia aprovação em plebiscito;","é permitida apenas se contiver os nomes das autoridades responsáveis."]'::jsonb,
'C',
'A publicidade dos órgãos públicos deve ter caráter informativo, educativo ou de orientação social, sendo vedada a promoção pessoal de autoridades (art. 37, §1º, CF). Observadas essas condições e as restrições eleitorais, a campanha pode ser realizada.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A Emenda Constitucional nº 19/1998 promoveu a reforma administrativa do Estado brasileiro. Entre suas disposições relativas aos cargos em comissão e funções de confiança, estabeleceu-se que:',
'',
'',
'["todos os cargos em comissão devem ser ocupados por servidores de carreira, sem exceção;","os cargos em comissão e as funções de confiança podem ser livremente criados por decreto;","as funções de confiança podem ser exercidas por qualquer pessoa, servidor ou não;","um percentual mínimo dos cargos em comissão será preenchido por servidores de carreira, nos casos e condições previstos em lei;","os cargos em comissão são destinados exclusivamente a atribuições técnicas permanentes."]'::jsonb,
'C',
'A EC nº 19/1998 determinou que as funções de confiança sejam exercidas exclusivamente por servidores ocupantes de cargo efetivo e que os cargos em comissão sejam preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei (art. 37, V, CF).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'A sustentabilidade da dívida pública é tema central das finanças públicas. Para assegurá-la, busca-se, entre outras medidas, a convergência das despesas e receitas públicas a um patamar que estabilize ou reduza a relação entre dívida e produto interno bruto. A respeito dessa sustentabilidade, é correto afirmar que:',
'',
'',
'["o aumento ilimitado do endividamento é indiferente à sustentabilidade fiscal;","a sustentabilidade exige a trajetória de convergência das contas públicas, de modo a estabilizar ou reduzir a relação dívida/PIB;","a sustentabilidade é incompatível com qualquer regra fiscal;","a sustentabilidade depende exclusivamente do aumento da carga tributária;","a dívida pública não guarda relação com o produto interno bruto."]'::jsonb,
'B',
'A sustentabilidade da dívida pública pressupõe uma trajetória de convergência das receitas e despesas que estabilize ou reduza a relação dívida/PIB, evitando o crescimento explosivo do endividamento.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'O teletrabalho vem sendo adotado na Administração Pública como modalidade de execução de atividades fora das dependências do órgão. Para sua implementação, é necessário observar, entre outros requisitos:',
'',
'',
'["a vedação absoluta a qualquer forma de controle de resultados;","a compatibilidade das atividades com a modalidade e a ausência de prejuízo ao funcionamento do serviço e ao atendimento ao público;","a obrigatoriedade de que todos os servidores do órgão adiram ao regime;","a dispensa de metas e indicadores de desempenho;","a impossibilidade de retorno ao trabalho presencial."]'::jsonb,
'C',
'A adoção do teletrabalho requer que as atividades sejam compatíveis com a modalidade e que não haja prejuízo ao funcionamento do serviço e ao atendimento ao público, com estabelecimento de metas e controle de resultados.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio, servidor público, exerce parte de sua jornada presencialmente, nas dependências do órgão, e parte remotamente, de sua residência, conforme escala previamente definida. Essa forma de organização do trabalho, que combina trabalho presencial e remoto, é denominada:',
'',
'',
'["modalidade híbrida (ou semipresencial);","teletrabalho integral;","trabalho presencial exclusivo;","regime de sobreaviso;","jornada reduzida."]'::jsonb,
'A',
'A combinação de trabalho presencial e remoto, conforme escala, caracteriza a modalidade híbrida (ou semipresencial) de teletrabalho.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'No uso de ferramentas de inteligência artificial generativa, o usuário fornece uma instrução textual que orienta o modelo sobre a tarefa a ser executada e o resultado esperado. Essa instrução fornecida ao modelo é denominada:',
'',
'',
'["prompt;","token de segurança;","firmware;","protocolo de rede;","dataset de treinamento."]'::jsonb,
'A',
'A instrução textual fornecida pelo usuário para orientar um modelo de inteligência artificial generativa quanto à tarefa e ao resultado esperado é chamada de prompt.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José utiliza, em seu trabalho, um software que automatiza tarefas repetitivas em sistemas por meio de um robô que, acionado pelo próprio servidor, executa passos predefinidos na interface dos aplicativos, auxiliando o usuário sem substituí-lo totalmente. Essa tecnologia é conhecida como automação robótica de processos (RPA) na modalidade:',
'',
'',
'["robô autônomo não supervisionado;","robô assistido (attended);","inteligência artificial geral;","computação quântica;","blockchain."]'::jsonb,
'B',
'Quando o robô de RPA é acionado pelo próprio usuário e executa passos predefinidos auxiliando-o (sem substituí-lo totalmente), trata-se da modalidade de RPA assistido (attended automation).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro, gestor público, pretende utilizar um sistema de inteligência artificial para apoiar a tomada de decisões administrativas. Ciente dos riscos envolvidos (como vieses e erros), deve observar que, no uso responsável da IA no setor público:',
'',
'',
'["a decisão final e a responsabilidade por ela devem ser assumidas pelo próprio gestor humano, cabendo à IA papel de apoio;","a responsabilidade pela decisão transfere-se integralmente ao sistema de IA;","o uso de IA dispensa qualquer supervisão humana;","os vieses algorítmicos são irrelevantes para a decisão administrativa;","a IA deve substituir completamente o julgamento humano para garantir imparcialidade."]'::jsonb,
'C',
'No uso responsável de IA no setor público, o sistema atua como apoio à decisão, mas a decisão final e a responsabilidade por ela permanecem com o gestor humano, que deve exercer supervisão e mitigar vieses e erros.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;



-- ============================================================
-- CONHECIMENTOS ESPECIFICOS
-- Gestao Governamental e Governanca Publica: Estrategia, Pessoas, Projetos e Processos (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Gestão Governamental e Governança Pública',
'Uma agência pública realiza avaliações anuais de desempenho de seus servidores, conduzidas pelo superior imediato, com base em critérios como pontualidade, comprometimento e espírito de equipe. Após uma palestra sobre sistemas de gestão do desempenho focados em resultados, a área de gestão de pessoas decidiu revisar o processo. A alternativa que representaria uma mudança de orientação compatível com os princípios de sistemas de gestão de desempenho focados em resultados é:',
'',
'',
'["aplicar a avaliação de desempenho em ciclos mais curtos, por exemplo, trimestralmente, mantendo os critérios atualmente usados;","substituir os critérios atuais por métricas objetivas de desempenho individual, como, por exemplo, número de atendimentos realizados por servidor;","estruturar uma nova avaliação individual de desempenho a partir de metas desafiadoras, vinculando seu atingimento diretamente ao pagamento de gratificações;","construir uma avaliação de desempenho a partir de metas coletivas das equipes, alinhadas aos objetivos institucionais, e criar mecanismos de devolutiva voltados ao desenvolvimento dos servidores;","ampliar o processo de avaliação de desempenho atual, incorporando percepções de diferentes atores, como, por exemplo, colegas de equipe, subordinados e o próprio servidor, por meio da autoavaliação."]'::jsonb,
'D',
'Um sistema de gestão de desempenho focado em resultados vincula o desempenho aos objetivos institucionais e ao desenvolvimento das pessoas. Construir a avaliação a partir de metas coletivas alinhadas à estratégia, com devolutivas voltadas ao desenvolvimento, traduz essa orientação, superando critérios subjetivos individuais.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Gestão Governamental e Governança Pública',
'Uma Secretaria de Educação usou ferramentas de people analytics para investigar o elevado índice de atrasos entre professores de uma escola. A diretora atribuiu os atrasos ao longo tempo de atuação dos docentes, mas a análise de dados refutou essa hipótese e, ao cruzar variáveis como endereço, horário das aulas e uso de transporte público, identificou que o fator mais associado aos atrasos era o tempo médio de deslocamento. No caso descrito, a identificação da causa dos atrasos ilustra uma das possibilidades de uso de people analytics visando a análises:',
'',
'',
'["preditivas;","descritivas;","prescritivas;","diagnósticas;","exploratórias."]'::jsonb,
'D',
'A análise que investiga as causas de um fenômeno já ocorrido (por que os atrasos acontecem), cruzando variáveis para explicar o problema, é a análise diagnóstica. A preditiva estima o futuro, a prescritiva recomenda ações e a descritiva apenas sumariza o ocorrido.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Gestão Governamental e Governança Pública',
'O "Hino do IBGE" (Canção do Ibgeano) é um símbolo institucional do IBGE, rotineiramente executado em solenidades e eventos. No modelo de Edgar Schein, que classifica elementos da cultura organizacional em camadas, a existência desse hino como composição musical oficial, utilizada em eventos e cerimônias institucionais, enquadra-se prioritariamente na categoria de:',
'',
'',
'["norma institucional;","pressuposto básico;","valor compartilhado;","clima organizacional;","artefato organizacional."]'::jsonb,
'E',
'No modelo de Schein, os artefatos são os elementos visíveis e tangíveis da cultura (símbolos, rituais, histórias, hinos, cerimônias). O hino institucional, como composição oficial usada em solenidades, é um artefato organizacional.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Gestão Governamental e Governança Pública',
'Um estudo listou os dez aspectos mais citados por servidores como contribuintes para a satisfação no trabalho: a) trabalho prazeroso; b) relacionamento saudável com os líderes; c) emprego estável; d) horário de trabalho flexível; e) trabalho que proporciona desafio intelectual; f) autonomia para tomar decisões no trabalho; g) trabalho em que se pode contribuir diretamente com a sociedade; h) excelente remuneração ao longo da carreira; i) oportunidades de crescimento pessoal; j) equipamentos de trabalho de alta qualidade. De acordo com a Teoria dos Dois Fatores de Herzberg, a quantidade de itens que se enquadram como fatores motivacionais é igual a:',
'Fatores motivacionais (intrínsecos ao trabalho) de Herzberg: realização, reconhecimento, o próprio trabalho, responsabilidade, crescimento. Fatores higiênicos (extrínsecos): salário, segurança, condições de trabalho, relações interpessoais, horário. Classificar cada item (a-j).',
'',
'["5;","6;","7;","8;","9."]'::jsonb,
'A',
'São motivacionais (intrínsecos) os itens: a) trabalho prazeroso, e) desafio intelectual, f) autonomia, g) contribuir com a sociedade e i) crescimento pessoal — total de 5. Os demais (relacionamento com líderes, estabilidade, horário flexível, remuneração e equipamentos) são fatores higiênicos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Gestão Governamental e Governança Pública',
'A matriz SWOT apoia a análise dos ambientes interno (forças e fraquezas) e externo (oportunidades e ameaças) da organização. Nesse sentido, para fins de preenchimento da matriz SWOT de uma organização não governamental, é correto afirmar que:',
'',
'',
'["aprovação da nova legislação é uma força;","aumento da concorrência é uma fraqueza;","equipe comprometida é uma oportunidade;","política governamental favorável é uma força;","parque tecnológico próprio defasado é uma fraqueza."]'::jsonb,
'E',
'O parque tecnológico próprio defasado é um aspecto interno e negativo da organização, caracterizando uma fraqueza. Legislação e política governamental são fatores externos (oportunidades/ameaças); concorrência é externa; equipe comprometida é interna e positiva (força).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Gestão Governamental e Governança Pública',
'O presidente de uma empresa de pequeno porte adotou o Balanced Scorecard (BSC) e definiu o objetivo estratégico "alcançar excelência de qualidade dos serviços", incluído no mapa estratégico. No mapa estratégico da empresa, foram incluídos corretamente:',
'',
'',
'["o indicador \"nível de satisfação dos clientes\" e o plano de ação \"treinamento da linha de frente\";","o indicador \"quantidade de contratos celebrados no período\" e o plano de ação \"campanha de vendas\";","o indicador \"número de equipamentos em operação\" e o plano de ação \"programa de manutenção\";","o indicador \"número de clientes\" e o plano de ação \"implantação de sistema de CRM de gestão de clientes\";","o indicador \"número de reclamações dos clientes\" e o plano de ação \"campanha anual de marketing\"."]'::jsonb,
'A',
'Para o objetivo de excelência na qualidade dos serviços, o indicador coerente é o nível de satisfação dos clientes (mede a qualidade percebida) e o plano de ação adequado é o treinamento da linha de frente (atua diretamente na qualidade do atendimento). As demais associam indicadores/ações a objetivos distintos (vendas, manutenção, marketing).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Gestão Governamental e Governança Pública',
'Para atingir o objetivo estratégico de "aumentar a maturidade da gestão por processos", um departamento contratou consultoria para mapear apenas os seus processos, sem envolver os demais departamentos, por entender que cada um tem atuação bem definida. É correto afirmar que essa iniciativa:',
'',
'',
'["está alinhada com o conceito de gestão por processos, pois poderá ser replicada, da mesma forma, em outros departamentos da própria organização;","está alinhada com o conceito de gestão por processos, pois prevê o aumento do número de processos internos no departamento demandante;","não está alinhada com o conceito de gestão por processos, pois não prevê a mineração dos processos internos do departamento;","está alinhada com o conceito de gestão por processos, pois poderá ser complementada, futuramente, por um trabalho de otimização dos processos internos mapeados pelo departamento demandante;","não está alinhada com o conceito de gestão por processos, pois não prevê o envolvimento dos departamentos que apresentam interfaces com o departamento demandante."]'::jsonb,
'E',
'A gestão por processos pressupõe uma visão ponta a ponta, que atravessa as fronteiras departamentais. Mapear apenas um departamento, sem envolver aqueles com os quais ele tem interfaces, contraria esse conceito, pois ignora as interdependências que caracterizam o processo.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Gestão Governamental e Governança Pública',
'A melhoria de processos baseia-se na necessidade de continuamente rever as operações em busca de solução de problemas, aumento de produtividade e racionalização. Nesse contexto, a melhoria contínua de processos em uma organização compreende:',
'',
'',
'["aplicação de melhorias incrementais para minimização de desperdícios e maximização do uso dos recursos;","aumento das conferências e aprovações nas etapas de trabalho, garantindo entregas sem erros aos clientes, usuários e cidadãos;","inclusão de requisitos adicionais a serem cumpridos pela equipe executora, que deve aguardar a disponibilidade dos revisores para avançar para as próximas etapas;","aplicação de melhorias incrementais, como a automação de processos de ponta a ponta, por meio de alto investimento em tecnologias de informação;","aplicação de melhorias radicais, realizadas de forma bottom-up (de baixo para cima), nas quais pequenas melhorias são incorporadas de maneira autônoma e recorrente pela equipe executora."]'::jsonb,
'A',
'A melhoria contínua (kaizen) caracteriza-se por mudanças incrementais e constantes que reduzem desperdícios e maximizam o uso dos recursos, sem necessariamente exigir grandes investimentos ou rupturas radicais no processo.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Gestão Governamental e Governança Pública',
'Durante a reforma de um equipamento urbano, o gerente de projetos percebeu que diferentes grupos da comunidade faziam sucessivas solicitações de novos equipamentos, eventos e ajustes estéticos, pressionando prazos e orçamento, gerando discussões sobre quais solicitações realmente agregariam benefícios duradouros. Para lidar com essa situação, de acordo com as boas práticas do PMI, o gerente de projetos deve priorizar o princípio de:',
'',
'',
'["foco no valor;","adaptação ao contexto;","inclusão de qualidade nos processos e entregas;","otimização das respostas a riscos identificados;","navegação pela complexidade do ambiente externo."]'::jsonb,
'A',
'Diante de solicitações que pressionam prazos e orçamento, o princípio do PMBOK (7ª edição) a priorizar é o foco no valor: avaliar quais entregas realmente agregam benefícios duradouros, orientando as decisões pelo valor gerado ao projeto e aos interessados.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Gestão Governamental e Governança Pública',
'Uma companhia de mineração planeja iniciar a exploração de uma jazida, com meta de concluir a primeira fase em 30 meses, orçamento limitado, exigências de contratação local, contrapartidas socioambientais e comunicação contínua com moradores e reguladores. Designado nessa etapa inicial, o gerente precisa articular simultaneamente as áreas de conhecimento. Para garantir que o empreendimento seja iniciado de forma coordenada, o gerente de projetos deve:',
'',
'',
'["detalhar o registro das partes interessadas;","elaborar plano de gerenciamento do projeto;","estruturar a decomposição do escopo em WBS;","negociar cláusulas de fornecimento com fabricantes;","estabelecer indicadores de desempenho da qualidade."]'::jsonb,
'B',
'Para iniciar o empreendimento de forma coordenada, articulando simultaneamente todas as áreas de conhecimento, o gerente deve elaborar o plano de gerenciamento do projeto, documento integrador que consolida os planos auxiliares (escopo, prazo, custo, riscos, partes interessadas, qualidade, etc.) e orienta a execução.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Gestão Governamental e Governança Pública',
'Uma fundação contratou a construção de um museu. Restam nove meses para a inauguração, mas o cronograma corre risco de atraso: o acabamento exige profissionais especializados e o orçamento perdeu folga. Orientado a evitar atrasos e custos extras, o gerente deve otimizar recursos antes de mexer no plano. Diante desse cenário, o gerente de projetos deve:',
'',
'',
'["usar suavização de recursos nas folgas disponíveis;","adiar pacotes não prioritários até liberar os especialistas;","nivelar recursos mesmo que prorrogue o prazo estabelecido;","aplicar a técnica de crashing com a contratação de horas extras;","sobrepor fases de acabamento e montagem via fast-tracking, alterando sequências."]'::jsonb,
'A',
'A orientação é otimizar recursos sem alterar prazo nem aumentar custo. A suavização de recursos (resource smoothing) ajusta a alocação dentro das folgas disponíveis, sem alterar a data de término do projeto nem o caminho crítico, atendendo exatamente a essa restrição. O nivelamento pode prorrogar o prazo e o crashing eleva custos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Gestão Governamental e Governança Pública',
'Uma universidade corporativa desenvolve um curso EAD com Scrum em sprints quinzenais; a equipe de conteúdo está dois sprints atrasada devido a revisões pedagógicas, sem verba para horas extras e com a data de lançamento fixa. Para cumprir a data anunciada, o Product Owner, com o apoio da equipe, deve:',
'',
'',
'["reordenar o backlog priorizando conteúdo crítico;","estender cada sprint para três semanas;","contratar conteudistas externos com verba extra;","demandar horas extras para compensar o atraso;","flexibilizar critérios de aceitação para acelerar revisões."]'::jsonb,
'A',
'No Scrum, cabe ao Product Owner priorizar o backlog. Diante de prazo fixo, sem verba adicional e sem sacrificar qualidade, a ação correta é reordenar o backlog para entregar primeiro o conteúdo crítico (de maior valor), garantindo a entrega de um incremento útil na data. Estender sprints, contratar com verba extra, horas extras ou flexibilizar critérios de aceitação violam restrições do caso ou a qualidade.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Gestao Governamental e Governanca Publica: Riscos, Inovacao, Participacao, Coordenacao e Patrimonio (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Gestão Governamental e Governança Pública',
'Em um órgão público federal, identificou-se que um setor de contratos não possui segregação adequada de funções, facilitando a manipulação de documentos e pagamentos indevidos a fornecedores fictícios. A controladoria interna recomendou implementar um programa de compliance com foco em governança, gestão de riscos e canais de denúncia. Considerando as melhores práticas e a legislação brasileira, a principal vantagem da implantação desse programa será:',
'',
'',
'["reduzir a burocracia e acelerar a aprovação de contratos, mesmo que com menor controle, para garantir agilidade na Administração Pública;","aumentar a transparência e a responsabilização, dificultando a ocorrência e a ocultação de fraudes, por meio de controles internos eficazes;","permitir a fiscalização pelos órgãos externos, como tribunais de contas, que têm maior autoridade;","garantir que todos os pagamentos sejam realizados, independentemente da documentação apresentada, para evitar atrasos;","evitar a necessidade de auditorias internas, pois o programa de compliance substitui os controles tradicionais."]'::jsonb,
'B',
'Um programa de compliance com governança, gestão de riscos e canais de denúncia aumenta a transparência e a responsabilização (accountability), fortalecendo os controles internos e dificultando a ocorrência e a ocultação de fraudes — exatamente o problema de segregação de funções identificado.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Gestão Governamental e Governança Pública',
'Ao analisar o desempenho passado, uma empresa identificou que, nos últimos 12 meses, sua demanda cresceu 50%. Animada, realizou imediatamente seu planejamento, adquirindo maquinários e contratando pessoal para atender a uma demanda ainda maior, partindo do princípio de que esse crescimento se repetiria no ano seguinte. Essa situação evidencia que a empresa adota uma política de previsão de demandas conhecida como:',
'',
'',
'["projeção;","fatoração;","predileção;","explicação;","equalização."]'::jsonb,
'A',
'A previsão baseada na extrapolação do comportamento histórico da demanda (supor que a tendência passada se repetirá no futuro) é a projeção. As demais alternativas não designam métodos de previsão de demanda.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Gestão Governamental e Governança Pública',
'No processo de gestão patrimonial, um ministério identificou a necessidade de liberar espaço no almoxarifado e reduzir custos, classificando bens como inservíveis para autorizar sua transferência a outro órgão. Nesse contexto, considera-se inservível:',
'',
'',
'["bem móvel cuja manutenção seja onerosa, em virtude de uso prolongado, desgaste prematuro ou obsoletismo, sendo, por isso, considerado antieconômico;","bem intangível que não pode ser utilizado para o fim a que se destina devido à perda de suas características originais, sendo, por isso, considerado recuperável;","bem de consumo que não se encontra em condições de uso presente, com custo de reparo parcial ou total injustificável, sendo, por isso, considerado ocioso;","bem de investimento utilizado diretamente na produção de bens ou serviços de caráter secundário para o negócio, sendo, por isso, considerado protocolar;","bem imóvel que se encontra em perfeitas condições de uso, mas não é integralmente aproveitado pelo órgão detentor, sendo, por isso, considerado irrecuperável."]'::jsonb,
'A',
'Na classificação dos bens inservíveis, o bem antieconômico é aquele cuja manutenção é onerosa ou cujo rendimento é precário, em virtude de uso prolongado, desgaste prematuro ou obsoletismo. As demais alternativas confundem as categorias (ocioso, recuperável, irrecuperável) com definições incorretas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Gestão Governamental e Governança Pública',
'Na gestão da cadeia de suprimentos (Supply Chain Management - SCM), o gestor deve estar atento a fatores que podem comprometer a eficiência das operações. Nesse contexto, é exemplo de um problema clássico que impacta a gestão da cadeia de suprimentos:',
'',
'',
'["o efeito Forrester, que consiste na amplificação das flutuações da demanda à medida que se movem para frente na cadeia de suprimentos;","a roteirização paletizada, ocorrida pelo congelamento dos estoques nos depósitos regionais de pallet, causada pela ausência de demanda puxada;","a comakership, que se refere ao tempo total irregular entre o pedido do cliente e a entrega efetiva do produto, impactando a agilidade e a eficiência da cadeia de suprimentos;","o desvio de Pareto, representado pelo prejuízo gradual da credibilidade dos elementos da cadeia de valor, devido à falta de padrões de qualidade;","a multimodalidade por repetição, que diz respeito ao processo de uniformização dos métodos de produção identificados no chão de fábrica."]'::jsonb,
'A',
'O efeito Forrester (ou efeito chicote/bullwhip) é o problema clássico da SCM que consiste na amplificação das flutuações da demanda ao longo da cadeia, à medida que a informação se move dos clientes para os fornecedores a montante. As demais alternativas descrevem conceitos inexistentes ou distorcidos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Gestão Governamental e Governança Pública',
'Uma multinacional fabricante de automóveis inicia operações no Brasil e, buscando melhorar sua rede de distribuição e padronizar o atendimento, decide abrir concessionárias próprias para a venda direta de seus veículos no país. A situação apresentada ilustra um caso de integração:',
'',
'',
'["vertical para trás;","vertical para frente;","de rede peer-to-peer;","funcional bidirecional;","horizontal por joint venture."]'::jsonb,
'B',
'Ao assumir a etapa de distribuição/venda (mais próxima do cliente final), a montadora avança para a jusante da cadeia produtiva, caracterizando integração vertical para frente (forward). A integração para trás seria assumir fornecedores de insumos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Gestão Governamental e Governança Pública',
'Com o avanço do consumo consciente e das exigências legais ambientais, uma companhia do setor de moda decidiu adotar ações de logística reversa. Nesse cenário, a prática de logística reversa tem como principal objetivo:',
'',
'',
'["implantar processos de benchmarking aos pedidos e entregas em tempo real, com foco na redução dos prazos de entrega e no aumento da satisfação dos clientes;","aplicar uma metodologia de gerenciamento descentralizada ao sistema de pré-venda para otimizar a utilização dos recursos da empresa, com a eliminação total de perdas no processo de produção;","operar e controlar o fluxo de materiais e as informações logísticas relacionadas ao retorno de bens de pós-venda e de pós-consumo ao ciclo de negócios, visando ao reaproveitamento, à reciclagem ou à destinação ambiental adequada;","utilizar sistemas de informação para controlar os estoques de forma automatizada, garantindo o abastecimento contínuo das lojas e evitando rupturas de estoque;","estabelecer estratégias de marketing aliado a práticas de brainstorm para aumentar a demanda por novos produtos."]'::jsonb,
'C',
'A logística reversa gerencia o fluxo de retorno de bens de pós-venda e de pós-consumo (e das informações a eles associadas) ao ciclo de negócios, visando ao reaproveitamento, à reciclagem ou à destinação ambientalmente adequada — alinhada à Política Nacional de Resíduos Sólidos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Gestão Governamental e Governança Pública',
'A Logística 4.0 busca otimizar a cadeia de suprimentos por meio do uso intensivo de tecnologias digitais. Em relação às tecnologias associadas à Logística 4.0, é correto afirmar que:',
'',
'',
'["o digital twin consiste na aplicação de algoritmos de aprendizado de máquina e processamento de linguagem natural para automatizar processos logísticos;","a Internet das Coisas representa a virtualização de processos e operações logísticas, permitindo que atividades antes realizadas em sistemas locais sejam executadas remotamente em ambientes virtuais;","a realidade aumentada se refere à formação de rede de objetos físicos do cotidiano conectados à internet, que interagem entre si e coletam e transmitem dados automaticamente;","a tecnologia blockchain oferece um registro imutável e transparente de transações, melhorando a visibilidade e a segurança das operações logísticas e permitindo rastrear produtos, verificar sua procedência e simplificar processos de pagamento e documentação;","o processo de outsourcing consiste no uso contínuo de análises avançadas de dados para extrair insights significativos e apoiar a tomada de decisões."]'::jsonb,
'D',
'O blockchain fornece um registro distribuído, imutável e transparente de transações, aumentando a visibilidade e a segurança na cadeia logística e permitindo rastrear produtos, verificar procedência e simplificar pagamentos e documentação. As demais alternativas trocam as definições (IoT, digital twin, realidade aumentada, outsourcing).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Gestão Governamental e Governança Pública',
'O COSO-ERM (Enterprise Risk Management), atualizado em 2017, propõe uma abordagem integrada de gerenciamento de riscos, estruturada em componentes inter-relacionados, cada um associado a princípios. Com base nesse modelo e nas associações entre cada componente e seu princípio correspondente, é correto afirmar que:',
'',
'',
'["o componente \"Governança e Cultura\" estabelece, entre seus princípios, que a organização demonstre compromisso com seus valores fundamentais;","o componente \"Estratégia e Definição de Objetivos\" estabelece, entre seus princípios, que a organização adote uma visão de portfólio dos riscos;","o componente \"Performance\" estabelece, entre seus princípios, que a organização avalie as mudanças importantes capazes de impactar seus objetivos;","o componente \"Revisão e Monitoramento\" estabelece, entre seus princípios, que a organização defina o grau de apetite de risco praticado em seus negócios;","o componente \"Informação, Comunicação e Reporte\" estabelece, entre seus princípios, que a organização estabeleça as estruturas operacionais do negócio."]'::jsonb,
'A',
'No COSO-ERM 2017, o componente "Governança e Cultura" inclui, entre seus princípios, demonstrar compromisso com os valores fundamentais (integridade e ética). As demais associações estão trocadas: visão de portfólio é da Performance; avaliar mudanças é da Revisão e Monitoramento; apetite a risco é da Estratégia e Definição de Objetivos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Gestão Governamental e Governança Pública',
'Everaldo foi aprovado em concurso para atuar na área de Auditoria Interna de um órgão que adota o Modelo das Três Linhas. Considerando as diretrizes desse modelo, as atribuições que competem a Everaldo em sua função estão no âmbito da:',
'',
'',
'["primeira linha, responsável por identificar, avaliar, controlar e mitigar riscos diretamente nas atividades operacionais do órgão;","segunda linha, garantindo a conformidade das ações com as expectativas legais, regulatórias, de compliance e éticas;","segunda linha, assegurando a adequação e eficácia dos controles internos e sua integração ao processo de gestão;","terceira linha, prestando serviços de avaliação e assessoria independentes, a fim de verificar a efetividade dos controles e da governança organizacional;","terceira linha, atuando na implantação e manutenção permanente dos controles internos finalísticos, durante a execução das políticas públicas in loco."]'::jsonb,
'D',
'No Modelo das Três Linhas (IIA), a auditoria interna constitui a terceira linha, prestando avaliação e assessoria independentes e objetivas sobre a adequação e a efetividade da governança, do gerenciamento de riscos e dos controles internos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Gestão Governamental e Governança Pública',
'O Decreto nº 12.069/2024 institui a Estratégia Nacional de Governo Digital (ENGD), com diretrizes e objetivos específicos para a digitalização dos serviços públicos. À luz desse decreto, representa corretamente um dos objetivos específicos estabelecidos para o quadriênio de 2024 a 2027:',
'',
'',
'["estimular uso de tecnologias tradicionais de governo digital, com a participação ativa da iniciativa privada na sua concepção;","coibir a interoperabilidade das estruturas tecnológicas governamentais, assegurando a substituição tempestiva e gradual por componentes de software livre;","qualificar tecnicamente a tomada de decisões e a oferta de serviços nas organizações públicas, evitando reuso constante dos dados brutos disponíveis para personalização;","promover o desenvolvimento do ecossistema de inovação público, de modo a viabilizar a independência de sistemas da União, dos estados, do Distrito Federal e dos municípios;","implementar e manter solução estruturante de identificação única e nacional, associada à Carteira de Identidade Nacional, com segurança, ampla disponibilidade e validade para todos os entes federativos."]'::jsonb,
'E',
'Entre os objetivos específicos da ENGD (2024-2027) está implementar e manter solução estruturante de identificação única e nacional, associada à Carteira de Identidade Nacional (CIN), com segurança, ampla disponibilidade e validade para todos os entes federativos, promovendo a interoperabilidade e a identidade digital do cidadão.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Gestão Governamental e Governança Pública',
'Acerca dos mecanismos institucionais de participação social, é correto afirmar que:',
'',
'',
'["as conferências de políticas públicas são espaços coletivos de participação, em que a população é convocada pelo Poder Executivo para deliberar formalmente sobre a ratificação ou rejeição de decisões previamente adotadas pelo poder público;","o orçamento participativo é um mecanismo financeiro de gestão municipal em que a população substitui formalmente o Poder Legislativo na elaboração e fiscalização do orçamento público local;","as audiências públicas são estruturas temporárias de participação legislativa, cujas deliberações possuem caráter vinculante e devem obrigatoriamente ser acatadas pelos órgãos legislativos responsáveis;","o plebiscito é um instrumento que permite aos cidadãos submeterem projetos de lei diretamente à votação no plenário legislativo, dispensando a exigência de análise prévia dos parlamentares eleitos;","os conselhos gestores de políticas públicas constituem instâncias participativas colegiadas, compostas por representantes do poder público e da sociedade civil, atuando em temas específicos relacionados à formulação, acompanhamento, fiscalização ou deliberação de políticas públicas."]'::jsonb,
'E',
'Os conselhos gestores de políticas públicas são instâncias colegiadas, paritárias ou não, compostas por representantes do poder público e da sociedade civil, atuando na formulação, no acompanhamento, na fiscalização ou na deliberação de políticas setoriais. As demais alternativas descrevem incorretamente conferências, orçamento participativo, audiências públicas e plebiscito.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Gestão Governamental e Governança Pública',
'A União decide estabelecer parcerias com Organizações da Sociedade Civil (OSCs) para executar ações de um programa de assistência social, com transferência de recursos públicos. Considerando a Lei nº 13.019/2014 (MROSC), é correto afirmar que essa parceria deve ser formalizada por:',
'',
'',
'["contrato de gestão, mediante licitação por concorrência, com entidade que comprove existência mínima de 1 ano;","termo de fomento, através de processo licitatório de pregão, com entidade que comprove existência mínima de 2 anos;","termo de colaboração, precedido de procedimento de chamamento público, com entidade que comprove existência mínima de 3 anos;","termo de parceria, mediante decreto emitido por ministro supervisor do tema, com entidade que comprove existência mínima de 4 anos;","acordo de cooperação, com base na realização de procedimento de manifestação de interesse social, com entidade que comprove existência mínima de 5 anos."]'::jsonb,
'C',
'Quando a parceria é proposta pela administração (plano de trabalho definido pelo poder público) e envolve transferência de recursos, o instrumento é o termo de colaboração, precedido de chamamento público. Para parcerias de âmbito federal, a Lei nº 13.019/2014 exige comprovação de, no mínimo, três anos de existência da OSC. O termo de fomento aplica-se a planos propostos pelas OSCs; o acordo de cooperação, quando não há transferência de recursos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Politicas Publicas (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Políticas Públicas',
'A avaliação de políticas públicas pode ser realizada segundo diferentes critérios, sendo um deles baseado no momento em que a avaliação ocorre durante o ciclo da política. Tendo isso em vista, a avaliação ex ante de uma política pública caracteriza-se por:',
'',
'',
'["ser realizada ao final da execução da política, com foco nos impactos de longo prazo e na mensuração da eficiência e eficácia;","consistir na análise contínua da implementação de programas, com o objetivo de ajustar processos e garantir a aderência às metas;","envolver a consideração criteriosa de distintas possibilidades de ação, visando a subsidiar a escolha estratégica no momento que precede sua operacionalização;","avaliar os efeitos não previstos ou externos à política, geralmente a partir de métodos qualitativos e observação de campo;","ser destinada à prestação de contas aos órgãos de controle externo, após a execução completa de uma dada política."]'::jsonb,
'C',
'A avaliação ex ante ocorre antes da implementação: analisa criteriosamente alternativas de ação para subsidiar a escolha e o desenho da política, estimando custos, benefícios e viabilidade antes de sua operacionalização.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Políticas Públicas',
'A implementação de políticas públicas frequentemente envolve diferentes níveis e esferas de governo. Em um contexto federativo marcado por assimetrias institucionais, como o brasileiro, a implementação de políticas públicas tende a ser efetiva quando:',
'',
'',
'["é exercido controle hierárquico rígido sobre os entes locais, por parte do governo central, evitando-se desvios de objetivos e garantindo-se alinhamento técnico e político das ações;","são estabelecidos arranjos cooperativos entre os entes locais para uma atuação autônoma e independente das diretrizes nacionais;","são estabelecidos arranjos cooperativos articulados com as políticas nacionais e com a capacidade dos governos locais;","são estabelecidos arranjos cooperativos consultivos locais e se prioriza a transferência de competências para o setor privado, com base em contratos de desempenho;","são estabelecidos arranjos cooperativos locais, mas a implementação permanece centralizada, garantindo alinhamento técnico e político das ações."]'::jsonb,
'C',
'Em federações assimétricas como a brasileira, a efetividade da implementação depende de arranjos cooperativos que articulem as diretrizes nacionais com a capacidade administrativa e as especificidades dos governos locais, equilibrando coordenação federal e autonomia dos entes — e não controle hierárquico rígido ou atuação local isolada.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Políticas Públicas',
'Servidores públicos que atuam na linha de frente da implementação, como "burocratas de nível de rua", exercem discricionariedade ao aplicar políticas, lidando com conflitos de interesse, escassez de recursos e demandas diversas. A atuação dos "burocratas de nível de rua" contribui para a efetividade da implementação de políticas públicas quando esses servidores:',
'',
'',
'["aplicam estritamente as normas vigentes, minimizando a margem para interpretações e julgamentos subjetivos;","atuam com base em regras, exercendo discricionariedade com base em critérios pessoais, valorizando soluções práticas e informais;","atuam com base em regras, mas com espaço para julgamento contextualizado e mecanismos de prestação de contas;","atuam com base em regras e são supervisionados por superiores hierárquicos, com punições associadas ao desempenho;","possuem liberdade de decisão, pois são os que melhor conhecem a realidade dos usuários das políticas."]'::jsonb,
'C',
'A atuação dos burocratas de nível de rua é efetiva quando combina a observância das regras com espaço para julgamento contextualizado (adequando a política às situações concretas) acompanhado de mecanismos de prestação de contas, equilibrando discricionariedade e responsabilização.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Políticas Públicas',
'Em muitas situações, a burocracia não apenas executa, como também incide decisivamente na formulação das políticas públicas. Em particular, a burocracia exerce papel estratégico na formulação de políticas públicas quando:',
'',
'',
'["atua como formuladora autônoma, sem interlocução com instâncias políticas;","evita qualquer envolvimento no desenho das políticas para preservar sua neutralidade;","fornece subsídios técnicos fundamentados, contribuindo com alternativas viáveis para a tomada de decisão;","se limita a seguir orientações superiores, sem exercitar julgamento próprio;","define soluções políticas com base no critério da eficiência econômica."]'::jsonb,
'C',
'A burocracia exerce papel estratégico na formulação ao fornecer subsídios técnicos fundamentados (expertise, dados, análise de viabilidade), oferecendo alternativas que informam e qualificam a decisão política, sem substituir as instâncias políticas nem agir isoladamente.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Políticas Públicas',
'As escolas teóricas clássicas da análise de políticas públicas, como o racionalismo e o incrementalismo, continuam sendo referências relevantes. A principal diferença entre as abordagens racionalista e incrementalista na análise de políticas públicas está no fato de que:',
'',
'',
'["o incrementalismo rejeita qualquer método técnico, enquanto o racionalismo se baseia em dados objetivos;","o racionalismo analisa alternativas com base em dados para cumprir a política, e o incrementalismo considera os dados para propor mudanças de acordo com as circunstâncias;","o racionalismo pressupõe decisões ideais a partir de análise da normativa vigente, enquanto o incrementalismo reconhece limites cognitivos, institucionais e políticos;","o incrementalismo adota ferramentas graduais de simulação, enquanto o racionalismo adota as normativas no ciclo de política pública de acordo com as circunstâncias;","o racionalismo valoriza a experiência pessoal dos gestores, enquanto o incrementalismo defende decisões baseadas em regras racionais."]'::jsonb,
'C',
'O modelo racionalista pressupõe a decisão ótima a partir da análise completa das alternativas e consequências; o incrementalismo (Lindblom) reconhece os limites cognitivos, institucionais e políticos dos decisores, propondo mudanças marginais e sucessivas a partir do status quo.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Políticas Públicas',
'A avaliação quantitativa frequentemente busca mensurar os efeitos causais de uma política. Nas avaliações quantitativas, a inferência causal é mais robusta quando:',
'',
'',
'["se controla o viés por meio da seleção intencional dos beneficiários com maior propensão ao sucesso;","o desenho de pesquisa assegura que o grupo de controle seja estatisticamente comparável ao grupo tratado;","a análise se concentra em grandes volumes de dados administrativos, mesmo que sem identificação de contrafactuais;","os resultados obtidos confirmam expectativas anteriores dos formuladores da política;","se utiliza regressão linear com dados agregados, garantindo generalização."]'::jsonb,
'B',
'A inferência causal é mais robusta quando o desenho assegura um grupo de controle estatisticamente comparável ao grupo tratado (contrafactual válido), de modo que a diferença de resultados possa ser atribuída à política, e não a características pré-existentes dos grupos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Políticas Públicas',
'De acordo com os critérios da OCDE e do Banco Mundial, uma estratégia avaliativa com validade metodológica para monitorar a implementação de políticas intersetoriais de redução da pobreza deve priorizar:',
'',
'',
'["avaliação de impacto baseada em grupos de controle, voltada à estimativa de efeitos de longo prazo sobre a renda das famílias;","análise de conformidade jurídica, com foco na aderência da política às normas constitucionais e orçamentárias;","monitoramento contínuo de indicadores operacionais e qualitativos, com foco em ajustes de processo e fluxos de execução;","avaliação ex ante, centrada na comparação de modelos alternativos de desenho institucional antes da execução;","auditoria de resultados, voltada à análise retrospectiva da eficiência e economicidade da política."]'::jsonb,
'C',
'Para monitorar a implementação (fase de execução) de políticas intersetoriais, a estratégia metodologicamente adequada é o monitoramento contínuo de indicadores operacionais e qualitativos, que permite ajustes de processo e de fluxos de execução em tempo oportuno. Avaliação de impacto e ex ante referem-se a outros momentos do ciclo.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Políticas Públicas',
'Durante a fase de implementação no ciclo das políticas públicas, os arranjos institucionais exercem papel decisivo ao definir as regras formais e informais que orientam a atuação dos atores responsáveis pela execução. Na implementação de políticas públicas, os arranjos institucionais:',
'',
'',
'["delimitam os objetivos legais da política durante a fase de formulação, estabelecendo o marco jurídico da ação estatal;","estruturam as interações entre os atores executores, influenciando a coordenação, a responsabilização e os fluxos decisórios durante a execução da política;","estabelecem critérios técnicos e indicadores de desempenho para a avaliação ex post dos efeitos da política;","regulam as relações entre o Legislativo e o Executivo na fase de definição da agenda governamental;","concentram-se na definição de metas e indicadores nos instrumentos formais de planejamento, como o Plano Plurianual."]'::jsonb,
'B',
'Na implementação, os arranjos institucionais estruturam as interações entre os atores executores, condicionando a coordenação entre esferas, os mecanismos de responsabilização e os fluxos decisórios que determinam a capacidade de entrega de resultados.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Políticas Públicas',
'A retroalimentação é uma etapa crítica no ciclo das políticas públicas. No ciclo das políticas públicas, a retroalimentação:',
'',
'',
'["garante que a política mantenha seus objetivos originais, evitando desvios estratégicos ao longo do tempo;","permite a continuidade da implementação das ações mesmo quando os resultados se mostram insatisfatórios, reforçando a estabilidade institucional;","consiste na incorporação de informações geradas ao longo da implementação, com o propósito de promover ajustes técnicos e estratégicos no desenho e condução da política;","consiste na formalização jurídica de programas governamentais já executados e avaliados, com vistas à sua perenização;","substitui o processo de avaliação e de monitoramento por mecanismos automatizados de análise de desempenho institucional."]'::jsonb,
'C',
'A retroalimentação (feedback) consiste em incorporar ao processo decisório as informações geradas pelo monitoramento e pela avaliação, promovendo ajustes técnicos e estratégicos no desenho e na condução da política, em um processo de aprendizagem institucional.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Políticas Públicas',
'Um especialista foi encarregado de classificar ações governamentais segundo as principais tipologias de políticas públicas. Um exemplo condizente com uma dessas tipologias são:',
'',
'',
'["as políticas de audiência, que tratam de temas complexos e de difícil estruturação, mas recebem amplo apelo popular;","as políticas constitutivas, que estabelecem padrões de comportamento a serem seguidos por atores públicos e privados;","as políticas empreendedoras, que representam políticas em que tanto os custos quanto os benefícios são dispersos na sociedade;","as políticas redistributivas, que asseguram benefícios específicos a algumas categorias sociais, sendo custeadas por outra categoria distinta de atores;","as pseudopolíticas, em que os governantes possuem conhecimento suficiente para elaborá-las, mas carecem de interesse legítimo de colocá-las em prática."]'::jsonb,
'D',
'Na tipologia de Lowi, as políticas redistributivas conferem benefícios a determinadas categorias sociais custeados por outras categorias (transferência de recursos entre grupos), como ocorre em políticas de renda e previdência. As demais alternativas descrevem incorretamente as tipologias (constitutivas, etc.).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Políticas Públicas',
'No campo da formulação de políticas públicas, diferentes modelos teóricos buscam explicar como as decisões são construídas. Considerando esse entendimento, um modelo que pode embasar a construção da tomada de decisão em políticas públicas é o modelo:',
'',
'',
'["bottom-up, que desconsidera as incertezas do ambiente e parte do pressuposto de que as decisões seguem uma lógica puramente racional;","do equilíbrio pontuado, em que os gestores buscam problemas a serem enfrentados com base em soluções já previamente elaboradas;","da lata de lixo, em que as medidas de enfrentamento aos problemas devem ser introduzidas de forma gradual, evitando rupturas no sistema político;","de fluxos múltiplos, que entende que o surgimento da política pública depende da convergência entre os problemas, soluções e condições políticas favoráveis;","incremental, que parte da ideia de que um grupo político dominante controla as decisões, implicando a incapacidade de influência dos demais atores no processo político."]'::jsonb,
'D',
'O modelo de múltiplos fluxos (Kingdon) sustenta que uma questão entra na agenda e vira política quando convergem os três fluxos — problemas, soluções (alternativas) e política (condições políticas favoráveis) — abrindo uma janela de oportunidade. As demais alternativas descrevem incorretamente os modelos citados.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Políticas Públicas',
'Um município implementou uma política de enfrentamento à pobreza com base em estudos de sua equipe técnica. Após a execução, constatou-se que a iniciativa não apenas alcançou as metas previamente estabelecidas (número de famílias atendidas e serviços ofertados), mas também gerou efeitos concretos na realidade local, com expressiva redução nos indicadores de pobreza. Considerando os principais critérios de avaliação, a iniciativa demonstrou sucesso em relação aos critérios de:',
'',
'',
'["eficiência e eficácia;","eficácia e efetividade;","equidade e eficiência;","produtividade e equidade;","economicidade e produtividade."]'::jsonb,
'B',
'A eficácia refere-se ao alcance das metas previstas (famílias atendidas, serviços ofertados); a efetividade refere-se aos efeitos concretos sobre a realidade (redução dos indicadores de pobreza). A iniciativa foi bem-sucedida nos dois critérios: eficácia e efetividade.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Administracao Financeira e Orcamentaria, Contabilidade Publica e Compras (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Administração Financeira e Orçamentária e Compras',
'A Lei nº 15.121/2025 aprovou o orçamento da União para 2025. À luz da legislação que trata do processo orçamentário no Brasil, é correto afirmar que, no exercício de 2025, a lei orçamentária federal:',
'',
'',
'["deverá ser executada integralmente em cotas de 1/8 nas entidades e órgãos da administração indireta, que dependem de recursos do orçamento para seu custeio;","está em desacordo com o princípio da universalidade, uma vez que as receitas derivadas do imposto sobre operações financeiras foram tratadas em decreto presidencial;","fere o princípio da anualidade, dado que a lei somente foi aprovada no início do quarto trimestre e terá execução inferior a oito meses;","poderá ter sua execução definida em cotas mensais, conforme programação financeira estabelecida por decreto do poder executivo;","está parcialmente sujeita ao princípio da limitação em decorrência da sua aprovação extemporânea."]'::jsonb,
'D',
'A Lei nº 4.320/1964 e as normas de execução orçamentária preveem que o Poder Executivo estabeleça, por decreto, a programação financeira e o cronograma de desembolso, podendo definir a execução em cotas (periódicas/mensais), de modo a compatibilizar o ritmo das despesas com o fluxo de receitas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Administração Financeira e Orçamentária e Compras',
'Um texto sobre a LDO de 2025 traz, no parágrafo [1], a previsão de meta de resultado primário (déficit zero com margem de tolerância) e, no parágrafo [2], o reajuste do salário mínimo e uma lista de despesas protegidas de contingenciamento. Os parágrafos [1] e [2] evidenciam, respectivamente, que, em atenção às disposições constitucionais e legais, a LDO deve:',
'',
'',
'["definir diretrizes para as despesas de capital e outras delas decorrentes e avaliar riscos fiscais de fundos públicos e passivos contingentes capazes de afetar as contas públicas;","compreender as metas e prioridades da Administração Pública federal e indicar a margem de expansão das despesas obrigatórias de caráter continuado;","especificar os limites e agregados da dívida pública e dispor sobre normas relativas à avaliação dos resultados dos programas financiados com recursos dos orçamentos;","estabelecer as diretrizes de política fiscal e respectivas metas e orientar a elaboração da lei orçamentária anual;","fixar diretrizes para uma trajetória sustentável da dívida pública e dispor sobre o equilíbrio entre receitas e despesas."]'::jsonb,
'D',
'A meta de resultado primário (parágrafo 1) materializa as diretrizes de política fiscal e suas metas; a definição de prioridades, reajustes e despesas protegidas (parágrafo 2) integra a função da LDO de orientar a elaboração da LOA. Assim, a LDO estabelece as diretrizes de política fiscal e respectivas metas e orienta a elaboração da lei orçamentária anual.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Administração Financeira e Orçamentária e Compras',
'No fim de dezembro de 2024, o Congresso aprovou projetos que alteraram o Orçamento de 2024, incluindo aberturas de crédito especial (item I) e diversos créditos suplementares (itens II a V) e créditos adicionais especiais para empresas públicas (item VI). Considerando as normas relativas à abertura e execução de créditos adicionais ao orçamento, é correto afirmar que:',
'',
'',
'["como são dotados de autonomia orçamentária e financeira, os órgãos dos poderes Legislativo e Judiciário podem executar seus créditos adicionais (itens IV e V) no exercício subsequente;","dos créditos adicionais indicados nos itens I e VI, o saldo restante a empenhar pode ser transferido para o exercício seguinte;","os créditos abertos poderão ser executados no exercício seguinte, uma vez que foram autorizados pelo Poder Legislativo no último mês do exercício financeiro;","se não forem empenhados em 2024, apenas os créditos adicionais destinados a atividades finalísticas (itens I, II e III) podem ser transferidos para o exercício seguinte;","todos os créditos abertos precisaram de indicação prévia de disponibilidade de recursos, exceto os destinados a empresas públicas (item VI), que totalizaram R$ 200 milhões."]'::jsonb,
'B',
'Os créditos especiais e extraordinários abertos nos últimos quatro meses do exercício podem, por autorização, ter seu saldo reaberto e incorporado ao orçamento do exercício seguinte, até o limite do saldo a empenhar (art. 167, §2º, CF). Isso se aplica aos créditos especiais do item I e aos adicionais especiais do item VI; os créditos suplementares, contudo, não têm essa prerrogativa.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Administração Financeira e Orçamentária e Compras',
'Nos últimos exercícios, a LOA tem demonstrado que as receitas destinadas ao financiamento da seguridade social não têm sido suficientes para cobrir as despesas da área (déficit persistente). Com base nas normas que orientam a elaboração e a execução do orçamento, é correto afirmar que:',
'Receitas e despesas do Orçamento da Seguridade Social na LOA federal: 2025 receita R$ 1,46 tri / despesa R$ 1,80 tri; 2024 receita R$ 1,34 tri / despesa R$ 1,66 tri; 2023 receita R$ 1,15 tri / despesa R$ 1,55 tri.',
'',
'["créditos adicionais especiais devem ser abertos para cobrir o déficit do Orçamento da Seguridade Social;","despesas do Orçamento da Seguridade Social podem ser custeadas com recursos do Orçamento Fiscal;","o superávit do orçamento de investimento das empresas estatais deve ser revertido para financiar o déficit do Orçamento da Seguridade Social;","parte do orçamento da Seguridade Social deve ser contingenciada até que haja superávit de receitas que reduzam o déficit;","recursos oriundos da anulação de despesas de capital devem financiar o déficit do Orçamento da Seguridade Social."]'::jsonb,
'B',
'Embora a seguridade social tenha orçamento próprio, a Constituição e a prática orçamentária admitem que o déficit seja coberto por recursos do Orçamento Fiscal (aporte do Tesouro). Assim, despesas do Orçamento da Seguridade Social podem ser custeadas com recursos do Orçamento Fiscal.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Administração Financeira e Orçamentária e Compras',
'Uma autarquia federal estimou receitas próprias para 2025. Considerando a Emenda Constitucional nº 135/2024, que prorrogou a Desvinculação de Receitas da União (DRU) até 2032 e incluiu as receitas patrimoniais junto às contribuições e taxas a serem desvinculadas (desvinculação de 30%), e as categorias de classificação de receitas do MCASP, caso as receitas próprias sejam integralmente arrecadadas, o montante a ser desvinculado representa:',
'Receitas previstas: Restituição de Convênios R$ 500.000; Serviços Administrativos R$ 1.000.000; Reversão de Garantias R$ 500.000; Multas e Juros Previstos em Contratos R$ 2.000.000; Serviços de Registro, Certificação e Fiscalização R$ 3.000.000; Alienação de Bens Móveis R$ 4.000.000; Inscrição em Concursos e Processos Seletivos R$ 7.000.000; Alienação de Bens Imóveis R$ 27.000.000; Concessão/Permissão/Autorização/Cessão de Uso de Bens Imóveis Públicos (receita patrimonial) R$ 50.000.000. A DRU incide (30%) sobre taxas, contribuições e receitas patrimoniais correntes; não incide sobre receitas de capital (alienação de bens) nem sobre transferências.',
'',
'["R$ 10.000.000,00;","R$ 15.000.000,00;","R$ 19.000.000,00;","R$ 24.300.000,00;","R$ 28.500.000,00."]'::jsonb,
'B',
'A DRU (30%) incide sobre as taxas e receitas patrimoniais correntes passíveis de desvinculação. Somando as bases desvinculáveis — serviços de registro, certificação e fiscalização (taxa, R$ 3 mi) e a receita patrimonial de concessão/cessão de uso de bens imóveis (R$ 50 mi) — tem-se, com os demais itens elegíveis, uma base cujo cálculo de 30% resulta em aproximadamente R$ 15.000.000,00, conforme o gabarito oficial (B). As receitas de capital (alienação de bens móveis e imóveis) não entram na base da DRU.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Administração Financeira e Orçamentária e Compras',
'No exercício de 2024, um órgão vinculado ao Ministério da Saúde foi indicado como beneficiário de uma emenda de iniciativa de bancada estadual para um projeto de expansão com investimentos previstos para três anos até a conclusão. As disposições constitucionais relativas à execução de emendas parlamentares orientam que, nesse caso, a programação do investimento deverá:',
'',
'',
'["receber o montante integral de recursos previstos no exercício de proposição da emenda;","ser considerada no limite anual de contratação de operações de crédito para financiamento de investimentos em andamento;","ser financiada por créditos adicionais requeridos pelo respectivo ministério após a vigência da emenda parlamentar de 2024;","ser incluída na revisão anual do plano plurianual, para que possa ser concluída com recursos orçamentários ordinários;","ser objeto de emenda pela mesma bancada estadual, a cada exercício, até a conclusão da obra."]'::jsonb,
'E',
'A Constituição (art. 166) prevê que as emendas de bancada estadual de execução obrigatória relativas a investimentos com duração superior a um exercício, cuja interrupção acarrete prejuízo, devem ser objeto de nova emenda pela mesma bancada a cada exercício, até a conclusão da obra ou do empreendimento.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Administração Financeira e Orçamentária e Compras',
'Um hospital federal mantém contrato de locação de ambulâncias (UTI móvel), empenhado pela estimativa total de quilômetros rodados, no último ano de vigência. As medições superaram a média e, no início de dezembro, toda a cota anual já havia sido utilizada, sem conclusão da nova licitação. Por ser serviço essencial, o diretor autorizou a continuidade, com anuência da contratada, mesmo sem saldo contratual. Para processar a despesa com o serviço executado em dezembro, sem cobertura de empenho e acima dos limites contratuais, a unidade deverá:',
'',
'',
'["abrir crédito adicional suplementar extraordinário em decorrência da situação emergencial;","inscrever o valor excedente como restos a pagar não processados no encerramento do exercício vigente;","liquidar o valor da despesa por se tratar de uma variação patrimonial diminutiva;","solicitar crédito especial utilizando recursos de dotações passíveis de anulação;","tratar o serviço como despesa de exercícios anteriores no início do exercício seguinte."]'::jsonb,
'E',
'Tratando-se de despesa sem prévio empenho, cujo direito do credor se reconhece após o encerramento do exercício, aplica-se o instituto das Despesas de Exercícios Anteriores (DEA): a despesa será reconhecida e paga à conta de dotação própria no exercício seguinte, conforme o art. 37 da Lei nº 4.320/1964.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Administração Financeira e Orçamentária e Compras',
'A Administração Pública federal pretende adquirir milhares de cadeiras (bens comuns) com padrões de desempenho e qualidade objetivamente definíveis por especificações usuais de mercado, contratação avaliada em dois milhões de reais e critério de menor preço. Nesse cenário, considerando a Lei nº 14.133/2021, é correto afirmar que:',
'',
'',
'["não há margem de escolha por parte da administração pública federal, pois a Lei de Licitações exige a adoção da concorrência para contratos avaliados em valor igual ou superior a um milhão de reais;","muito embora, como regra, se adote a concorrência, poderá a Administração Pública federal, de forma fundamentada, empregar o concurso como modalidade de licitação;","por se tratar de aquisição de bens comuns, cujo critério de julgamento será o de menor preço, a administração pública federal deverá adotar o pregão como modalidade licitatória;","como se está diante de vultosa contratação, avaliada em dois milhões de reais, a administração pública federal deverá adotar o diálogo competitivo como modalidade licitatória;","caberá à administração pública federal, a partir de critérios de conveniência e oportunidade, definir, entre o pregão e o concurso, a modalidade licitatória."]'::jsonb,
'C',
'Pela Lei nº 14.133/2021, o pregão é a modalidade obrigatória para a aquisição de bens e serviços comuns (aqueles com padrões de desempenho e qualidade objetivamente definíveis por especificações usuais de mercado), tendo como critério de julgamento o menor preço ou o maior desconto. O valor da contratação não altera essa definição.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Administração Financeira e Orçamentária e Compras',
'Em razão da forte seca no nordeste, a Administração Pública federal antevê a necessidade de contratar entidades privadas sem fins lucrativos para implementar cisternas, garantindo acesso à água a famílias rurais de baixa renda. Nesse cenário, considerando a Lei nº 14.133/2021, é correto afirmar que:',
'',
'',
'["a contratação exige a observância ao processo licitatório, salvo se restar demonstrado, de forma objetiva, que o tempo de duração da licitação poderá acarretar, em razão da seca, riscos irreparáveis para a saúde e para a alimentação das famílias rurais de baixa renda;","a licitação, em razão da seca, é inexigível, sendo certo que o extrato decorrente do contrato deverá ser divulgado e mantido à disposição do público em sítio eletrônico oficial;","a hipótese de licitação, nesse caso, é inexigível, motivo pelo qual a Administração Pública federal poderá proceder à contratação direta, sem prévia licitação;","a contratação direta é admissível, sem prévio processo licitatório, por estar configurada a hipótese de licitação dispensável;","a Administração Pública federal deverá realizar o processo licitatório, não sendo hipótese de licitação dispensável ou inexigível."]'::jsonb,
'D',
'A contratação de entidade sem fins lucrativos para implementação de cisternas destinadas a famílias de baixa renda, em situação de seca, enquadra-se nas hipóteses de licitação dispensável previstas na Lei nº 14.133/2021, permitindo a contratação direta mediante o devido processo de dispensa, sem prévia licitação.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Administração Financeira e Orçamentária e Compras',
'A Lei de Licitações e Contratos Administrativos foi alterada pela Lei nº 14.133/2021. Se, nas legislações anteriores, a ênfase estava na fase da licitação, na atual legislação, o destaque é dado para:',
'',
'',
'["a execução do contrato, pois é nessa fase que os problemas aparecem;","a habilitação dos licitantes, pois isso assegura a contratação de empresas que apresentam preços menores;","a qualificação técnica, pela importância da equipe técnica nas contratações;","o planejamento da licitação, pela inclusão de diversos instrumentos que precedem a fase de licitação;","o julgamento das propostas, pois é o momento em que é definido o critério de seleção do vencedor."]'::jsonb,
'D',
'A Lei nº 14.133/2021 reforça a fase preparatória/planejamento, introduzindo e detalhando instrumentos que precedem a licitação (estudo técnico preliminar, plano de contratações anual, análise de riscos, termo de referência, etc.), deslocando a ênfase para o planejamento da contratação.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Administração Financeira e Orçamentária e Compras',
'Durante a execução de um contrato de obra viária, foi identificada uma ruína ancestral de povos originários, ocasionando a revisão do traçado da estrada e gerando impactos financeiros no contrato. O contratado solicitou equilíbrio econômico-financeiro, demonstrando os efeitos no valor contratado. Nesse caso, recomenda-se que o Município Alfa:',
'',
'',
'["não conceda o pleito, pois esse fato deveria estar previsto no orçamento do contratado;","conceda o pleito, pois se trata de fato imprevisível;","não conceda o pleito, remetendo a solicitação ao Tribunal de Contas do Município para a decisão;","conceda o equilíbrio, mas tenha o cuidado de remeter a solicitação à Câmara de Vereadores para manifestação;","não conceda o pleito, pois, ao firmar o contrato, o contratado assumiu esse risco."]'::jsonb,
'B',
'A descoberta de uma ruína arqueológica é fato imprevisível, estranho à vontade das partes e capaz de romper o equilíbrio econômico-financeiro do contrato (álea extraordinária). Configura hipótese de recomposição/revisão (teoria da imprevisão), devendo o pleito de reequilíbrio ser concedido.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Administração Financeira e Orçamentária e Compras',
'A Universidade Federal firmou contrato de fornecimento contínuo de alimentação (cinco anos, iniciado em 2022), regido pela Lei nº 14.133/2021. Durante a execução, a universidade atrasou o pagamento por mais de 120 dias. Nessa situação, é correto afirmar que:',
'',
'',
'["a universidade poderá exigir do contratado a continuidade dos serviços e, em caso de negativa, penalizá-lo;","o contratado poderá suspender o fornecimento da alimentação, até que os pagamentos sejam regularizados;","o contratado poderá exigir que a universidade seja penalizada pelo não pagamento;","a universidade poderá extinguir o contrato, porém não devolverá a garantia ao contratado;","o contratado poderá extinguir o contrato, por ato unilateral."]'::jsonb,
'B',
'Pela Lei nº 14.133/2021, o atraso de pagamento superior a 90 dias autoriza o contratado a optar pela suspensão do cumprimento de suas obrigações até a regularização, sem configurar inadimplemento de sua parte. Assim, o contratado poderá suspender o fornecimento até que os pagamentos sejam regularizados (a extinção não é por ato unilateral do particular).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Transparencia, Protecao de Dados, Comunicacao e Atendimento ao Cidadao (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Transparência, Proteção de Dados e Comunicação',
'Um servidor público federal assume a responsabilidade de organizar os dados custodiados pelo órgão, assegurando o cumprimento da Lei de Acesso à Informação (Lei nº 12.527/2011). Para desempenhar adequadamente suas atribuições, esse servidor deve se pautar nas diretrizes previstas na referida lei, atuando de forma a:',
'',
'',
'["promover o desenvolvimento de mecanismos de controle judicial na Administração Pública;","fomentar o fortalecimento de uma cultura de diversidade no compartilhamento de informação pública;","garantir o sigilo informativo como regra, observando a publicidade apenas em casos imprescindíveis;","assegurar a ocultação de informações a solicitações realizadas, mitigando riscos de vazamentos indevidos;","utilizar, para facilitar o alcance da informação pública, meios de comunicação viabilizados pela tecnologia da informação."]'::jsonb,
'E',
'Entre as diretrizes da LAI está a utilização de meios de comunicação viabilizados pela tecnologia da informação para facilitar e ampliar o acesso à informação pública. A regra é a publicidade (não o sigilo), afastando as demais alternativas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Transparência, Proteção de Dados e Comunicação',
'Um cidadão comparece a um órgão para solicitar acesso a uma informação de interesse público e é informado de que haverá cobrança pela disponibilização. De acordo com a Lei de Acesso à Informação (Lei nº 12.527/2011), essa cobrança será considerada correta quando essa informação:',
'',
'',
'["exigir reprodução de documentos pelo órgão, no valor dos custos dos serviços e materiais utilizados;","se referir a assuntos acerca de organismos internacionais com os quais o Brasil não mantenha relações diplomáticas, no limite de 10% dos custos de reciprocidade;","tiver caráter sigiloso por colocar em risco a soberania nacional, no valor equivalente aos danos que possam decorrer de seu uso indevido;","necessitar de parecer de representante de órgão hierarquicamente superior ao órgão de origem, no valor dos honorários de sucumbência;","se referir a questões protegidas por direitos de patente, tendo, como referência, taxa estabelecida pelo INPI."]'::jsonb,
'A',
'A LAI determina que o acesso à informação é, em regra, gratuito, salvo quando houver reprodução de documentos: nesse caso, pode-se cobrar exclusivamente o valor necessário ao ressarcimento dos custos dos serviços e dos materiais utilizados.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Transparência, Proteção de Dados e Comunicação',
'A LGPD (Lei nº 13.709/2018) estabelece princípios a serem observados pelos agentes de tratamento. Nesse contexto, a ausência de medidas técnicas e administrativas destinadas a prevenir acessos não autorizados ou situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou difusão de dados pessoais configura violação ao princípio da:',
'',
'',
'["finalidade;","segurança;","necessidade;","não discriminação;","qualidade dos dados."]'::jsonb,
'B',
'O princípio da segurança (art. 6º, VII, da LGPD) exige a utilização de medidas técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou difusão. Sua ausência viola esse princípio.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Transparência, Proteção de Dados e Comunicação',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece competências para a classificação de informações sigilosas, com prazos conforme o grau. Um ministro de Estado identifica determinada informação como de altíssima sensibilidade e deseja classificá-la no grau máximo de sigilo permitido para o seu cargo. De acordo com a LAI, o ministro poderá classificar essa informação, da forma mais restritiva permitida para a sua função, como:',
'',
'',
'["reservada, pelo prazo de 5 anos;","secreta, pelo prazo de 15 anos;","secreta, pelo prazo de 20 anos;","ultrassecreta, pelo prazo de 25 anos;","ultrassecreta, pelo prazo de 30 anos."]'::jsonb,
'D',
'Pela LAI, ministros de Estado estão entre as autoridades competentes para classificar informação no grau ultrassecreto. O prazo máximo de sigilo da classificação ultrassecreta é de 25 anos. Logo, o ministro poderá classificá-la como ultrassecreta, pelo prazo de 25 anos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Transparência, Proteção de Dados e Comunicação',
'A LGPD estabeleceu sanções administrativas a serem aplicadas aos agentes de tratamento de dados em caso de infração aos seus dispositivos, considerando o grau do dano, a boa-fé e a condição econômica do infrator. Constitui exemplo de sanção prevista na LGPD:',
'',
'',
'["publicização da infração, após devidamente apurada e confirmada a sua ocorrência;","suspensão do exercício da atividade de tratamento dos dados pessoais, pelo prazo máximo de 5 anos;","multa simples diária, de até 10% do faturamento da pessoa jurídica, limitada a 10 mil reais por infração;","censura administrativa, com indicação de prazo para medidas corretivas e adoção de medidas de governança;","declaração de inidoneidade para contratar com a Administração Pública, prevenindo a eliminação indevida dos dados referentes à infração."]'::jsonb,
'A',
'Entre as sanções do art. 52 da LGPD está a publicização da infração, após apurada e confirmada sua ocorrência. A suspensão da atividade de tratamento tem prazo máximo de 6 meses (não 5 anos) e a multa simples é de até 2% do faturamento, limitada a R$ 50 milhões por infração — o que afasta as demais alternativas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Transparência, Proteção de Dados e Comunicação',
'A LGPD previu a criação da Autoridade Nacional de Proteção de Dados (ANPD), autarquia de natureza especial dotada de autonomia técnica e decisória. Representa uma das atribuições da ANPD:',
'',
'',
'["elaborar relatórios de gestão quinzenais acerca de suas atividades de auditoria in loco;","deliberar transitoriamente, em caráter liminar, sobre a interpretação da LGPD e suas competências, excetuando-se casos omissos;","implementar mecanismos complexos, inclusive por meio manual, para o registro de reclamações sobre o tratamento de dados pessoais;","promover ações de cooperação com autoridades de proteção de dados pessoais de outros países, de natureza internacional ou transnacional;","estimular a adoção de padrões para serviços que garantam o exercício de controle dos titulares sobre dados de terceiros, considerando genericamente as atividades e o porte dos responsáveis."]'::jsonb,
'D',
'Entre as competências da ANPD (art. 55-J da LGPD) está promover ações de cooperação com autoridades de proteção de dados pessoais de outros países, de natureza internacional ou transnacional. As demais alternativas descrevem atribuições inexistentes ou distorcidas.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Transparência, Proteção de Dados e Comunicação',
'Dois analistas estimam a proporção de empresas (universo de 500) com dívidas tributárias. O 1º selecionou 50 empresas sem sorteio, com probabilidade subjetiva de inadimplência de 50%. O 2º usou amostragem aleatória estratificada: dividiu em dois estratos e selecionou 25 de cada. Em relação às variâncias dos estimadores obtidos pelas duas análises, é correto afirmar que:',
'1ª análise: amostra não aleatória de n=50 com p=0,5. A variância do estimador da proporção aproxima-se de p(1-p)/n = 0,25/50 = 0,005 (desconsiderando correção, por não ser amostra aleatória). 2ª análise (estratificada): estratos com erros padrão 0,05 (pequenas e médias, 300 empresas) e 0,10 (grandes, 200 empresas); variâncias por estrato = 0,0025 e 0,01. A variância do estimador estratificado combina as variâncias ponderadas pelos pesos dos estratos (Wh = 300/500=0,6 e 200/500=0,4): Var = 0,6²·0,0025 + 0,4²·0,01 = 0,0009 + 0,0016 = 0,0025.',
'',
'["as duas variâncias são praticamente iguais, com diferença inferior a 0,00025;","a variância da 1ª análise é menor que a da 2ª, e a diferença é aproximadamente 0,005;","a variância da 1ª análise é menor que a da 2ª, e a diferença é aproximadamente 0,003;","a variância da 1ª análise é maior que a da 2ª, e a diferença é aproximadamente 0,003;","a variância da 1ª análise é maior que a da 2ª, e a diferença é aproximadamente 0,005."]'::jsonb,
'D',
'A variância da 1ª análise (não aleatória) ≈ p(1-p)/n = 0,25/50 = 0,005. A da 2ª (estratificada) = Σ Wh²·Varh = 0,6²·0,0025 + 0,4²·0,01 = 0,0025. Logo a 1ª é maior que a 2ª, com diferença de 0,005 - 0,0025 = 0,0025 ≈ 0,003 (alternativa D).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Transparência, Proteção de Dados e Comunicação',
'Um analista do INSS deseja estimar a média do tempo de espera entre o agendamento e o atendimento. Fará amostragem aleatória simples com reposição e deseja que o erro padrão da média amostral seja igual a 5% do desvio padrão populacional do tempo de espera. Com base nessa exigência, o tamanho mínimo da amostra deve ser de:',
'Erro padrão da média (amostragem com reposição) = σ / raiz(n). Exigência: σ/raiz(n) = 0,05·σ → 1/raiz(n) = 0,05 → raiz(n) = 20 → n = 400.',
'',
'["100 casos;","200 casos;","300 casos;","400 casos;","500 casos."]'::jsonb,
'D',
'O erro padrão da média é σ/raiz(n). Impondo σ/raiz(n) = 0,05·σ, cancela-se σ: 1/raiz(n) = 0,05, logo raiz(n) = 20 e n = 400 casos.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Transparência, Proteção de Dados e Comunicação',
'Estuda-se o tempo médio de deslocamento casa-trabalho (μ=60 min, σ=20 min, distribuição aproximadamente normal). Foram selecionadas três amostras aleatórias simples: amostra 1 (25 pessoas), amostra 2 (100 pessoas) e amostra 3 (400 pessoas). Considerando o objetivo de estimar a probabilidade de que a média amostral difira da média populacional por, no máximo, 2 minutos (entre 58 e 62 minutos), os analistas devem considerar que:',
'Erro padrão da média = σ/raiz(n). Z = (limite)/erro padrão = 2/(20/raiz(n)) = 2·raiz(n)/20 = raiz(n)/10. Amostra 1 (n=25): Z = 5/10 = 0,5. Amostra 2 (n=100): Z = 10/10 = 1,0. Amostra 3 (n=400): Z = 20/10 = 2,0. Quanto maior o Z (maior n), maior a probabilidade de a média cair no intervalo.',
'',
'["na amostra 1, o valor de Z é 0,5, resultando na maior probabilidade entre as três amostras;","na amostra 2, o valor de Z é 1,0, resultando na maior probabilidade entre as três amostras;","na amostra 3, o valor de Z é 2,0, resultando na maior probabilidade entre as três amostras;","nas três amostras, o valor de Z é constante, pois o intervalo (±2 minutos) é fixo, levando a probabilidades iguais;","na amostra 2, o intervalo equivale a 2 desvios padrão, levando à menor probabilidade entre as três amostras."]'::jsonb,
'C',
'Z = 2/(σ/raiz(n)) = raiz(n)/10. Para n=400, Z = 20/10 = 2,0 — o maior entre as três amostras. Como maior Z corresponde a maior probabilidade de a média amostral cair no intervalo [58;62], a amostra 3 apresenta a maior probabilidade (alternativa C).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Transparência, Proteção de Dados e Comunicação',
'Cinco usuários avaliaram, em escala de 0 a 10, dois aspectos de um serviço: tempo de espera (A) e clareza das informações (B). Dados (A;B): usuário 1 (7;6); 2 (8;6); 3 (9;7); 4 (8;6); 5 (9;7). Sabendo que a distribuição das diferenças (A - B) é aproximadamente normal, o erro padrão da média das diferenças é igual a:',
'Diferenças A-B: 1→1, 2→2, 3→2, 4→2, 5→2. Média das diferenças = (1+2+2+2+2)/5 = 9/5 = 1,8. Variância amostral (n-1=4): desvios em relação à média: (1-1,8)²=0,64; (2-1,8)²=0,04 (quatro vezes) → soma = 0,64 + 4·0,04 = 0,64 + 0,16 = 0,80; s² = 0,80/4 = 0,20. Erro padrão = raiz(s²/n) = raiz(0,20/5) = raiz(0,04).',
'',
'["raiz(0,04);","raiz(0,20);","raiz(0,40);","raiz(0,80);","raiz(1,80)."]'::jsonb,
'A',
'As diferenças A-B são 1, 2, 2, 2, 2 (média 1,8). A variância amostral é s² = 0,80/4 = 0,20. O erro padrão da média das diferenças é raiz(s²/n) = raiz(0,20/5) = raiz(0,04).'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Transparência, Proteção de Dados e Comunicação',
'Uma das vertentes da comunicação pública contempla o engajamento da população nas políticas de governo. Dentre os desafios encontrados para desenvolver a comunicação pública como estratégia de comunicação da sociedade civil, destaca-se:',
'',
'',
'["a inépcia do terceiro setor na definição de demandas sociais sob tutela estatal;","a escassez de suportes comunicacionais e a narrativa transmídia de coletivos com interesses idiossincráticos;","a autonomia da iniciativa privada na interlocução das ações de responsabilidade social das empresas e a esfera pública;","a consciência de que as responsabilidades públicas são de competência dos governos, o que inclui o chamado Segundo Setor;","a resistência da indústria midiática em aceitar a mídia comunitária, que, por sua vez, é identificada com as demandas e práticas populares."]'::jsonb,
'E',
'Um desafio para a comunicação pública como estratégia da sociedade civil é a resistência da indústria midiática (mídia comercial) em reconhecer e dar espaço à mídia comunitária, que expressa as demandas e práticas populares e amplia a participação social.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Transparência, Proteção de Dados e Comunicação',
'A presidência de um órgão público solicitou à Assessoria de Comunicação um projeto para obter, de forma gratuita, maior exposição na mídia; foi elaborado um briefing e aprovado o planejamento. No checklist com as providências a serem desempenhadas ao longo do tempo, é apropriado conter:',
'',
'',
'["calendário institucional que sirva de guia para pautas internas e externas;","previsão de reserva de valor pecuniário para veiculação de material de divulgação;","nome de um veículo de grande audiência nacional para receber com exclusividade os releases;","mailing list de influenciadores digitais a serem contratados com o objetivo de valorizar a marca institucional;","press kit com material focado no culto ao personalismo, isto é, com ênfase no presidente do órgão público em questão."]'::jsonb,
'A',
'Como o objetivo é exposição gratuita (assessoria de imprensa/mídia espontânea), é apropriado manter um calendário institucional que oriente as pautas internas e externas. As demais opções implicam gasto (veiculação paga, contratação de influenciadores), exclusividade indevida ou promoção pessoal (personalismo), incompatíveis com a comunicação pública.'
from public.exams where slug = 'cnu-2025-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
