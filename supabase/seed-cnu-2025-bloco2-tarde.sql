-- Seed: CNU 2025 (2a Edicao) - Bloco 2 (Cultura e Educacao) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Superior - Tipo 1 (Branca) - 90 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-D  2-B  3-A  4-C  5-B  6-A  7-C  8-D  9-C 10-C
-- 11-C 12-C 13-C 14-A 15-E 16-E 17-D 18-E 19-E 20-C
-- 21-B 22-A 23-C 24-C 25-B 26-C 27-A 28-A 29-B 30-C
-- 31-E 32-C 33-D 34-E 35-B 36-B 37-D 38-D 39-A 40-C
-- 41-B 42-E 43-C 44-E 45-B 46-D 47-E 48-E 49-C 50-B
-- 51-D 52-D 53-A 54-C 55-B 56-A 57-D 58-C 59-C 60-B
-- 61-D 62-B 63-B 64-D 65-E 66-B 67-E 68-B 69-E 70-D
-- 71-B 72-E 73-C 74-B 75-E 76-A 77-D 78-C 79-B 80-E
-- 81-E 82-C 83-A 84-E 85-B 86-E 87-A 88-C 89-D 90-C
-- Imagens: questao 36 (/cnu-2025-2-tarde-questao-36.svg) e questao 47 (/cnu-2025-2-tarde-questao-47.svg).

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco2-tarde', 'CNU 2025 (2ª Edição) - Bloco 2 (Tarde) - Cultura e Educação', 'cnu', '2025')
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
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Conhecimentos Gerais',
'No contexto da reparação das violações históricas aos direitos humanos, decorrentes de rupturas com a democracia e de perseguições a minorias étnicas e culturais, têm sido recorrentes as práticas de justiça restaurativa, que buscam sedimentar a verdade histórica. Considerando os balizamentos dessa modalidade de justiça, é correto afirmar que ela:',
'',
'',
'["busca apagar as marcas do passado, de modo que o presente seja estabilizado e o futuro seja projetado de maneira idealística;","busca não só recompor a esfera jurídica individual e estabilizar o ambiente sociopolítico, como também efetivar o direito à memória;","está comprometida com um padrão de justiça social, de modo a solucionar carências individuais em prol do desenvolvimento coletivo;","está associada à realização da justiça individual, não propriamente à realização de objetivos coletivos, que são contingentes, não essenciais;","está comprometida, em sua essência, com o direito ao esquecimento e à recomposição da esfera jurídica individual, estabilizando o ambiente sociopolítico com a reconciliação de vítimas e algozes."]'::jsonb,
'B',
'A justiça restaurativa, na justiça de transição, recompõe a esfera jurídica individual, estabiliza o ambiente sociopolítico e efetiva o direito à memória e à verdade — não o direito ao esquecimento nem o apagamento do passado.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Conhecimentos Gerais',
'Benjamin Constant (1767-1830) contrapõe a liberdade dos modernos (direito de não ser submetido senão às leis e de influir sobre a administração do governo) à liberdade dos antigos (exercício coletivo e direto da soberania, admitindo a sujeição completa do indivíduo à autoridade do conjunto). À luz dessa correlação, é correto afirmar que:',
'',
'',
'["para os antigos, a democracia representativa não é um instrumento adequado ao exercício do poder;","para os modernos, o interesse coletivo deve se sobrepor ao individual, que apenas o instrumentaliza;","para os modernos, a liberdade política é a verdadeira liberdade, que se sobrepõe aos direitos individuais;","para os antigos, a atuação estatal estava essencialmente comprometida com a plena realização da personalidade individual;","tanto os antigos como os modernos buscam legitimar o poder na vontade popular e direcionar o seu exercício à realização dos direitos individuais."]'::jsonb,
'A',
'Para os antigos, a liberdade consistia no exercício coletivo e direto da soberania (democracia direta); a representação é característica dos modernos. Logo, a democracia representativa não era instrumento adequado ao exercício do poder para os antigos.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Conhecimentos Gerais',
'Em discurso, o parlamentar João sustentou que um dos desafios do crescimento do bloco de governo consistia em conjugar governabilidade e controle, de modo que o crescimento do primeiro não importe na redução do segundo, sendo necessária atuação combativa da oposição. Na perspectiva das relações entre Executivo e Legislativo, é correto afirmar que:',
'',
'',
'["a divisão entre os referidos blocos é contextualizada exclusivamente no âmbito do Legislativo, considerando o seu caráter colegiado, não influindo na atuação do Executivo;","a governabilidade, em um presidencialismo de coalizão, é definida pela divisão de competências entre o Executivo e o Legislativo, não pelo conflito de ideias entre os referidos blocos;","as relações entre o Executivo e o Legislativo são balizadas pelo processo formativo e pelo robustecimento, ou não, da divisão entre os referidos blocos, que pode, no extremo, comprometer o controle;","a governabilidade é direcionada pela formação de coligações partidárias nas eleições para o Executivo e o Legislativo, de modo a uniformizar interesses políticos nos juízos de valor realizados por essas estruturas;","o presidencialismo de coalizão está alicerçado na alternância ideológica e na necessidade de serem encontradas soluções compromissórias, não sendo influenciado, na perspectiva do controle, pela divisão entre os referidos blocos."]'::jsonb,
'C',
'A divisão entre blocos de governo e oposição estrutura as relações Executivo-Legislativo; seu robustecimento ou enfraquecimento afeta a capacidade de controle, que no extremo pode ser comprometido quando a oposição não é combativa.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Conhecimentos Gerais',
'De acordo com Reinhold Zippelius, não se deve confundir a liberdade do liberalismo (status negativus, espaço de atuação individual face ao Estado) com a liberdade democrática (status activus, participação na formação da vontade comum), pois a maioria democrática pode exercer uma tirania pouco liberal. Contextualizando no processo de formação do Estado Democrático de Direito, conclui-se corretamente que:',
'',
'',
'["a ausência de uma preeminência de fato da liberdade individual, em ambientes democráticos, é uma contradição, constatação que decorre do processo formativo do poder;","a proteção idealística oferecida pelos direitos fundamentais, obstando o avanço da maioria em detrimento da minoria, pode não se mostrar efetiva na perspectiva do exercício do poder;","as influências democráticas, ao se instalarem no Estado de Direito, asseguram a efetividade do ideário da Revolução Francesa, presente na liberdade, na igualdade e na solidariedade;","o ambiente democrático permite o reconhecimento da pessoa humana enquanto valor, sendo a sua projeção na realidade e o seu pleno desenvolvimento características indissociáveis do Estado Democrático de Direito;","a presença dos elementos estruturais do Estado Democrático de Direito, com o reconhecimento da separação dos poderes e dos direitos fundamentais, assegura a efetividade das normas que reconhecem as referidas liberdades."]'::jsonb,
'B',
'Zippelius alerta que a maioria democrática pode oprimir a minoria; assim, a proteção que os direitos fundamentais oferecem contra o avanço da maioria pode não se mostrar efetiva na prática do exercício do poder.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Conhecimentos Gerais',
'Como orienta o Guia Prático de Análise ex ante das Políticas Públicas (CGU / Comitê Interministerial de Governança), é fundamental o uso de evidências. Com relação ao levantamento de dados acerca do problema público e para o desenho das políticas, é correto afirmar que:',
'',
'',
'["a fonte de dados deve ter qualidade, recomendando-se ter como referência a proposta pela estrutura de governança e gestão do COBIT;","o levantamento de dados quanto a políticas similares existentes no próprio país e que foram descontinuadas não é representativo, considerando o insucesso dessas políticas;","a análise SWOT, também conhecida como análise FOFA, é uma ferramenta para avaliar os dados e seu valor para a construção das evidências;","as bases de dados de organismos internacionais devem ser utilizadas subsidiariamente, pois elas não refletem as peculiaridades locais;","os indicadores criados segundo o modelo SMART devem ser considerados na formulação das políticas públicas, pela sua qualidade."]'::jsonb,
'A',
'O guia recomenda que as fontes de dados tenham qualidade, tomando como referência a estrutura de governança e gestão de dados proposta pelo COBIT. As demais generalizam ou restringem indevidamente o uso das fontes e ferramentas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Conhecimentos Gerais',
'O ciclo das políticas públicas pode ser mais bem compreendido se considerarmos que as etapas se sobrepõem e não se colocam de forma linear. No que tange à avaliação das políticas públicas, é correto afirmar que:',
'',
'',
'["a avaliação do impacto da política pode ser feita desde o momento da sua formulação;","a elaboração de uma árvore do problema é um recurso interessante para medir a eficiência econômica da política;","não se pode confundir a avaliação com o monitoramento da política pública, ainda que possam ocorrer concomitantemente;","para a avaliação da eficiência operacional, a utilização da análise comparativa com outras políticas (benchmarking) deve ser feita de forma criteriosa, pois não se podem excluir possíveis repercussões, em se tratando de uma política social;","a avaliação da governança da política pública é conduzida exclusivamente pelo Tribunal de Contas da União, considerando que a implementação das políticas é cada vez mais multinível e intersetorial."]'::jsonb,
'C',
'Avaliação e monitoramento são atividades distintas — o monitoramento acompanha a execução de forma contínua e a avaliação julga resultados/efeitos — ainda que possam ocorrer concomitantemente.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Conhecimentos Gerais',
'Na formulação e implementação de políticas públicas voltadas para grupos em situação de vulnerabilidade, a transversalidade se constitui como uma diretriz política a ser seguida. Sobre a transversalidade, é correto afirmar que:',
'',
'',
'["a integração ou a articulação entre políticas dos vários ministérios depende da existência de expressa previsão legal;","a criação de ministérios e secretarias especiais transversais se mostra uma prática de gestão inadequada;","a incorporação de pautas dos grupos em situação de vulnerabilidade na agenda pública torna a transversalidade menos relevante;","a capacitação e sensibilização de agentes públicos e a institucionalização de mecanismos adequados de gestão interministerial podem ser formas de transversalidade;","a existência de conselhos, conferências e espaços de articulação com a sociedade civil torna desnecessário o diálogo intragovernamental."]'::jsonb,
'D',
'A transversalidade se concretiza por meio de capacitação e sensibilização de agentes públicos e da institucionalização de mecanismos de gestão interministerial, articulando políticas entre diferentes órgãos.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Conhecimentos Gerais',
'O Brasil tem obtido posições históricas no ranking do índice de serviços on-line da ONU. A Lei nº 14.129/2021 estabeleceu princípios e diretrizes para o governo digital. Da transformação digital em andamento, considerando os princípios que a norteiam, é correto esperar:',
'',
'',
'["a imediata transformação digital do governo federal, sem gradações;","a proteção de todos os dados, para que não haja vazamento de informações;","a interação com o cidadão e a troca de informações entre entes governamentais;","a desburocratização, a simplificação e o sigilo da atuação do poder público, sem restrições, por meio dos serviços digitais;","a produção de impactos negativos na eficiência das políticas públicas e na economia com a prestação dos serviços públicos."]'::jsonb,
'C',
'O governo digital promove a interação com o cidadão e a interoperabilidade entre entes governamentais. A transformação é gradual, preza pela transparência (não sigilo irrestrito) e busca eficiência.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Conhecimentos Gerais',
'A Política Nacional para a População em Situação de Rua (Decreto nº 7.053/2009) criou um Comitê Intersetorial de Acompanhamento e Monitoramento; o governo federal criou o Plano Ruas Visíveis. Com relação ao Comitê Intersetorial, levando em conta o modelo usual, é correto afirmar que:',
'',
'',
'["o Comitê Intersetorial implementará as políticas para a área;","a participação de representantes de outros ministérios não é própria de um Comitê Intersetorial;","o Comitê Intersetorial pode estabelecer recomendações para autoridades estaduais e municipais, sendo ele nacional;","o Comitê Intersetorial tem a importante competência de determinar quais estados e municípios serão beneficiados pela política pública;","o Comitê Intersetorial, pela função que desempenha, não pode contar com representantes da sociedade civil, ainda que deva estar atento aos seus reclamos."]'::jsonb,
'C',
'O Comitê Intersetorial, de âmbito nacional, tem função de acompanhamento e monitoramento e pode estabelecer recomendações para autoridades estaduais e municipais. Ele não implementa diretamente, congrega vários ministérios e conta com a sociedade civil.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Conhecimentos Gerais',
'A Lei de Acesso à Informação (Lei nº 12.527/2011) estabelece diretrizes a serem observadas na garantia do direito fundamental de acesso à informação. A respeito dessas diretrizes, é correto afirmar que, entre elas, estão:',
'',
'',
'["o sigilo como regra geral e a publicidade como exceção, a divulgação apenas mediante requerimento e o fomento da cultura do segredo na Administração;","a observância da publicidade como preceito geral e do sigilo como exceção, a divulgação de informações de interesse público independentemente de solicitações e o desenvolvimento do controle social da Administração Pública;","a divulgação de informações somente após autorização judicial, a utilização de meios físicos exclusivamente e a restrição do controle social;","o sigilo das informações pessoais de agentes públicos sobre remuneração, a cobrança de taxas para acesso e o uso restrito de meios de comunicação;","a divulgação apenas de informações classificadas, o acesso exclusivo por servidores e a vedação à transparência ativa."]'::jsonb,
'C',
'A LAI adota a publicidade como preceito geral e o sigilo como exceção, prevê a divulgação de informações de interesse público independentemente de solicitação (transparência ativa) e o desenvolvimento do controle social da Administração Pública.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Conhecimentos Gerais',
'Pedro, servidor público, teve indeferido um requerimento administrativo por decisão de autoridade competente. Inconformado, pretende que a própria autoridade que proferiu a decisão a reaprecie, apresentando novos argumentos. No âmbito do processo administrativo federal (Lei nº 9.784/1999), o instrumento adequado é:',
'',
'',
'["o mandado de segurança, dirigido ao Poder Judiciário;","a reclamação, dirigida ao órgão de controle externo;","o pedido de reconsideração, dirigido à própria autoridade que proferiu a decisão;","a representação, dirigida ao Ministério Público;","a denúncia, dirigida à corregedoria."]'::jsonb,
'C',
'O pedido de reconsideração é o instrumento pelo qual o interessado solicita à própria autoridade que proferiu a decisão a sua reapreciação, sem prejuízo do recurso à autoridade superior.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Conhecimentos Gerais',
'O Portal da Transparência do Governo Federal consolida informações de interesse público para consulta da sociedade. Entre as informações disponibilizadas no Portal, incluem-se:',
'',
'',
'["a remuneração de servidores públicos, as sanções aplicadas a empresas e pessoas e os dados sobre filiação sindical dos servidores;","exclusivamente dados agregados de despesas, vedada a identificação de beneficiários;","apenas informações classificadas como sigilosas mediante prévia autorização;","somente dados relativos ao Poder Executivo municipal;","dados pessoais sensíveis de cidadãos beneficiários de programas sociais, com identificação completa."]'::jsonb,
'C',
'O Portal da Transparência divulga, entre outras, a remuneração de servidores públicos e as sanções aplicadas a empresas e pessoas (como as registradas no CEIS/CNEP), promovendo a transparência ativa e o controle social.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Conhecimentos Gerais',
'No contexto da integridade pública, um servidor identifica que uma situação pessoal sua pode influenciar indevidamente o desempenho de suas funções, colocando em risco a imparcialidade das decisões administrativas. Essa situação caracteriza:',
'',
'',
'["um conflito de interesses, que deve ser prevenido e, se ocorrer, comunicado e tratado conforme a legislação;","uma hipótese de improbidade administrativa automática, independentemente de qualquer providência;","uma situação irrelevante do ponto de vista ético, desde que não haja prejuízo financeiro;","uma causa de nulidade de todos os atos praticados pelo órgão;","um ato de corrupção consumado, sujeito a sanção penal imediata."]'::jsonb,
'A',
'A influência indevida de interesse privado sobre o exercício da função pública configura conflito de interesses (Lei nº 12.813/2013), que deve ser prevenido, comunicado e tratado, não se confundindo automaticamente com improbidade ou corrupção.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Conhecimentos Gerais',
'O Decreto nº 9.203/2017 dispõe sobre a política de governança da administração pública federal direta, autárquica e fundacional. Entre os princípios da governança pública estabelecidos nesse decreto, encontra-se:',
'',
'',
'["a centralização das decisões em órgão único de controle;","a vedação à participação social no processo decisório;","o sigilo como regra na condução das políticas públicas;","a desoneração da alta administração quanto à prestação de contas;","a capacidade de resposta, a integridade, a confiabilidade, a transparência e a prestação de contas e responsabilidade (accountability)."]'::jsonb,
'E',
'O Decreto nº 9.203/2017 estabelece como princípios da governança pública, entre outros, a capacidade de resposta, a integridade, a confiabilidade, a melhoria regulatória, a prestação de contas e responsabilidade (accountability) e a transparência.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Conhecimentos Gerais',
'Mariana, servidora pública, foi designada para planejar um evento aberto ao público. Preocupada com a inclusão de pessoas com deficiência, buscou garantir condições de acessibilidade. À luz da Convenção Internacional sobre os Direitos das Pessoas com Deficiência (incorporada com status de emenda constitucional) e da Lei Brasileira de Inclusão, é correto afirmar que:',
'',
'',
'["a acessibilidade restringe-se à eliminação de barreiras arquitetônicas, não abrangendo barreiras comunicacionais ou atitudinais;","a acessibilidade é faculdade do organizador, exigível apenas mediante solicitação formal prévia da pessoa com deficiência;","a acessibilidade deve ser assegurada apenas em prédios públicos, não em eventos;","a acessibilidade é direito que se realiza somente após a ocorrência de barreira concreta;","a acessibilidade é condição que deve ser assegurada de forma a eliminar barreiras e permitir, em igualdade de oportunidades, a participação das pessoas com deficiência."]'::jsonb,
'E',
'A acessibilidade, segundo a Convenção e a Lei Brasileira de Inclusão (Lei nº 13.146/2015), é a possibilidade de utilização com segurança e autonomia de espaços, serviços e informações, eliminando barreiras (arquitetônicas, comunicacionais, atitudinais, etc.) para assegurar a participação em igualdade de oportunidades.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Conhecimentos Gerais',
'Cláudia, mulher transgênero, deseja retificar seu prenome e gênero no registro civil para que reflitam sua identidade de gênero. Conforme entendimento consolidado do Supremo Tribunal Federal, a retificação:',
'',
'',
'["depende de autorização judicial precedida de cirurgia de redesignação sexual;","depende de laudos médicos e psicológicos que comprovem o transtorno de identidade;","é vedada no ordenamento jurídico brasileiro;","pode ser feita diretamente no cartório (registro civil), independentemente de cirurgia, laudos ou autorização judicial;","somente é possível após decisão judicial transitada em julgado em todos os casos."]'::jsonb,
'D',
'O STF (ADI 4275) reconheceu o direito das pessoas trans à alteração de prenome e gênero diretamente no registro civil, independentemente de cirurgia de redesignação, laudos ou autorização judicial, com base na autonomia e dignidade da pessoa humana.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Conhecimentos Gerais',
'Determinada comunidade quilombola busca a titulação definitiva das terras que ocupa. Conforme o ordenamento jurídico brasileiro e o Decreto nº 4.887/2003, o processo de titulação das terras quilombolas envolve a atuação:',
'',
'',
'["exclusiva do Poder Judiciário, sem participação administrativa;","exclusiva dos Municípios onde se localizam as terras;","da Fundação Cultural Palmares, na certificação da comunidade, e do Incra, na identificação, demarcação e titulação das terras;","apenas de organizações não governamentais;","exclusiva do Ministério Público Federal."]'::jsonb,
'E',
'A certificação (autodefinição) das comunidades quilombolas cabe à Fundação Cultural Palmares, enquanto a identificação, reconhecimento, delimitação, demarcação e titulação das terras compete ao Incra (Decreto nº 4.887/2003). A alternativa que descreve corretamente essa divisão é a de letra E.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Conhecimentos Gerais',
'Joana, mulher negra com deficiência, relata ter sofrido tratamento discriminatório que combina preconceitos de gênero, raça e deficiência de forma simultânea e indissociável. Esse fenômeno, em que diferentes marcadores sociais se sobrepõem agravando a discriminação, é conhecido como:',
'',
'',
'["discriminação indireta exclusivamente;","discriminação positiva;","ação afirmativa;","neutralidade racial;","discriminação múltipla ou interseccional."]'::jsonb,
'E',
'A sobreposição de diferentes marcadores sociais (gênero, raça, deficiência) que agrava a discriminação de forma simultânea e indissociável caracteriza a discriminação múltipla ou interseccional.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Conhecimentos Gerais',
'Gabriela sofre, por parte de seu companheiro Flávio, agressões físicas, ofensas constantes à sua autoestima e dignidade, além da destruição de seus bens pessoais. Conforme a Lei Maria da Penha (Lei nº 11.340/2006), as condutas descritas configuram, respectivamente, violência:',
'',
'',
'["moral, sexual e física;","física, moral e sexual;","física, psicológica e patrimonial;","psicológica, sexual e moral;","patrimonial, física e sexual."]'::jsonb,
'C',
'As agressões físicas configuram violência física; as ofensas à autoestima e dignidade, violência psicológica; e a destruição de bens pessoais, violência patrimonial — conforme as formas de violência doméstica previstas na Lei Maria da Penha.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Conhecimentos Gerais',
'Os sistemas estruturantes da Administração Pública federal organizam atividades comuns a diversos órgãos, como gestão de pessoal, orçamento e logística, por meio de plataformas e normas padronizadas. Sobre esses sistemas, é correto afirmar que:',
'',
'',
'["cada órgão deve desenvolver seus próprios sistemas isolados, sem padronização;","visam padronizar e integrar atividades comuns por meio de órgão central e órgãos setoriais, utilizando plataformas como as de gestão de pessoal;","são restritos ao Poder Legislativo;","têm por finalidade exclusiva a arrecadação tributária;","foram extintos pela política de governança digital."]'::jsonb,
'B',
'Os sistemas estruturantes (como os de pessoal civil - SIPEC, de administração financeira, de organização e inovação institucional, etc.) organizam-se por meio de órgão central e órgãos setoriais e padronizam atividades comuns, apoiados por plataformas, como as de gestão de pessoal.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Conhecimentos Gerais',
'Determinado órgão pretende executar um projeto cuja realização ultrapassa um exercício financeiro, com despesas distribuídas ao longo de vários anos. No âmbito do planejamento e orçamento público, as despesas desse projeto devem estar previstas:',
'',
'',
'["na Lei Orçamentária Anual (LOA), de modo que as despesas de cada exercício constem do respectivo orçamento anual, em consonância com o plano plurianual;","exclusivamente no plano plurianual, dispensando-se a previsão na LOA;","somente na Lei de Diretrizes Orçamentárias;","em decreto autônomo do chefe do Executivo, independentemente de lei;","em resolução do Tribunal de Contas."]'::jsonb,
'A',
'As despesas de projetos plurianuais devem constar da Lei Orçamentária Anual de cada exercício, em consonância com o plano plurianual (PPA), de modo que cada orçamento anual contemple a parcela a ser executada no respectivo exercício.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Conhecimentos Gerais',
'Em ano eleitoral, determinado órgão público pretende realizar campanha publicitária de caráter informativo, educativo ou de orientação social, sem conter nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades. Conforme a Constituição Federal e a legislação eleitoral, essa campanha:',
'',
'',
'["é absolutamente vedada em qualquer hipótese durante o ano eleitoral;","somente pode ser realizada mediante autorização do Tribunal Superior Eleitoral;","pode ser realizada, pois a publicidade de caráter informativo, educativo ou de orientação social é admitida, vedada a promoção pessoal;","depende de prévia aprovação em plebiscito;","é permitida apenas se contiver os nomes das autoridades responsáveis."]'::jsonb,
'C',
'A publicidade dos órgãos públicos deve ter caráter informativo, educativo ou de orientação social, sendo vedada a promoção pessoal de autoridades (art. 37, §1º, CF). Observadas essas condições e as restrições eleitorais, a campanha pode ser realizada.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Conhecimentos Gerais',
'A Emenda Constitucional nº 19/1998 promoveu a reforma administrativa do Estado brasileiro. Entre suas disposições relativas aos cargos em comissão e funções de confiança, estabeleceu-se que:',
'',
'',
'["todos os cargos em comissão devem ser ocupados por servidores de carreira, sem exceção;","os cargos em comissão e as funções de confiança podem ser livremente criados por decreto;","as funções de confiança podem ser exercidas por qualquer pessoa, servidor ou não;","um percentual mínimo dos cargos em comissão será preenchido por servidores de carreira, nos casos e condições previstos em lei;","os cargos em comissão são destinados exclusivamente a atribuições técnicas permanentes."]'::jsonb,
'C',
'A EC nº 19/1998 determinou que as funções de confiança sejam exercidas exclusivamente por servidores ocupantes de cargo efetivo e que os cargos em comissão sejam preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei (art. 37, V, CF).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Conhecimentos Gerais',
'A sustentabilidade da dívida pública é tema central das finanças públicas. Para assegurá-la, busca-se, entre outras medidas, a convergência das despesas e receitas públicas a um patamar que estabilize ou reduza a relação entre dívida e produto interno bruto. A respeito dessa sustentabilidade, é correto afirmar que:',
'',
'',
'["o aumento ilimitado do endividamento é indiferente à sustentabilidade fiscal;","a sustentabilidade exige a trajetória de convergência das contas públicas, de modo a estabilizar ou reduzir a relação dívida/PIB;","a sustentabilidade é incompatível com qualquer regra fiscal;","a sustentabilidade depende exclusivamente do aumento da carga tributária;","a dívida pública não guarda relação com o produto interno bruto."]'::jsonb,
'B',
'A sustentabilidade da dívida pública pressupõe uma trajetória de convergência das receitas e despesas que estabilize ou reduza a relação dívida/PIB, evitando o crescimento explosivo do endividamento.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Conhecimentos Gerais',
'O teletrabalho vem sendo adotado na Administração Pública como modalidade de execução de atividades fora das dependências do órgão. Para sua implementação, é necessário observar, entre outros requisitos:',
'',
'',
'["a vedação absoluta a qualquer forma de controle de resultados;","a compatibilidade das atividades com a modalidade e a ausência de prejuízo ao funcionamento do serviço e ao atendimento ao público;","a obrigatoriedade de que todos os servidores do órgão adiram ao regime;","a dispensa de metas e indicadores de desempenho;","a impossibilidade de retorno ao trabalho presencial."]'::jsonb,
'C',
'A adoção do teletrabalho requer que as atividades sejam compatíveis com a modalidade e que não haja prejuízo ao funcionamento do serviço e ao atendimento ao público, com estabelecimento de metas e controle de resultados.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Conhecimentos Gerais',
'Antônio, servidor público, exerce parte de sua jornada presencialmente, nas dependências do órgão, e parte remotamente, de sua residência, conforme escala previamente definida. Essa forma de organização do trabalho, que combina trabalho presencial e remoto, é denominada:',
'',
'',
'["modalidade híbrida (ou semipresencial);","teletrabalho integral;","trabalho presencial exclusivo;","regime de sobreaviso;","jornada reduzida."]'::jsonb,
'A',
'A combinação de trabalho presencial e remoto, conforme escala, caracteriza a modalidade híbrida (ou semipresencial) de teletrabalho.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Conhecimentos Gerais',
'No uso de ferramentas de inteligência artificial generativa, o usuário fornece uma instrução textual que orienta o modelo sobre a tarefa a ser executada e o resultado esperado. Essa instrução fornecida ao modelo é denominada:',
'',
'',
'["prompt;","token de segurança;","firmware;","protocolo de rede;","dataset de treinamento."]'::jsonb,
'A',
'A instrução textual fornecida pelo usuário para orientar um modelo de inteligência artificial generativa quanto à tarefa e ao resultado esperado é chamada de prompt.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Conhecimentos Gerais',
'José utiliza, em seu trabalho, um software que automatiza tarefas repetitivas em sistemas por meio de um robô que, acionado pelo próprio servidor, executa passos predefinidos na interface dos aplicativos, auxiliando o usuário sem substituí-lo totalmente. Essa tecnologia é conhecida como automação robótica de processos (RPA) na modalidade:',
'',
'',
'["robô autônomo não supervisionado;","robô assistido (attended);","inteligência artificial geral;","computação quântica;","blockchain."]'::jsonb,
'B',
'Quando o robô de RPA é acionado pelo próprio usuário e executa passos predefinidos auxiliando-o (sem substituí-lo totalmente), trata-se da modalidade de RPA assistido (attended automation).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Conhecimentos Gerais',
'Pedro, gestor público, pretende utilizar um sistema de inteligência artificial para apoiar a tomada de decisões administrativas. Ciente dos riscos envolvidos (como vieses e erros), deve observar que, no uso responsável da IA no setor público:',
'',
'',
'["a decisão final e a responsabilidade por ela devem ser assumidas pelo próprio gestor humano, cabendo à IA papel de apoio;","a responsabilidade pela decisão transfere-se integralmente ao sistema de IA;","o uso de IA dispensa qualquer supervisão humana;","os vieses algorítmicos são irrelevantes para a decisão administrativa;","a IA deve substituir completamente o julgamento humano para garantir imparcialidade."]'::jsonb,
'C',
'No uso responsável de IA no setor público, o sistema atua como apoio à decisão, mas a decisão final e a responsabilidade por ela permanecem com o gestor humano, que deve exercer supervisão e mitigar vieses e erros.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- CONHECIMENTOS ESPECIFICOS
-- Gestao do Conhecimento e Comunicacao (Questoes 31 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Gestão do Conhecimento e Comunicação',
'A respeito do tratamento de dados pessoais, leia o trecho a seguir. "Um projeto liderado pelo InovaHC, núcleo do Hospital das Clínicas da Universidade de São Paulo, busca testar a interoperabilidade, que é a integração e o compartilhamento de dados dos pacientes, permitindo o acesso de profissionais de diferentes instituições às informações. A ideia, afirmam, é facilitar o atendimento — o paciente não precisará informar sobre alergias, histórico de cirurgias ou outras doenças, por exemplo, agilizando o processo." (Adaptado de MACEDO, Vitória. "Rede privada de saúde vai testar compartilhamento de dados de pacientes", Folha de São Paulo, 23 jun. 2025). Com base na Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709/2018), a implementação da interoperabilidade:',
'',
'',
'["necessita de regulamentação jurídica, porque tem caráter financeiro;","requer a decisão do controlador, porque trata de casos de tutela da saúde;","viola o direito à privacidade, porque expõe material de natureza sensível;","assegura o anonimato de identificação, porque é usada para o interesse público;","exige a definição das finalidades, porque supõe o consentimento dos usuários."]'::jsonb,
'E',
'A LGPD exige que o tratamento de dados pessoais tenha finalidades legítimas, específicas e explícitas, informadas ao titular. O compartilhamento (interoperabilidade) de dados sensíveis de saúde pressupõe a definição clara das finalidades e, em regra, o consentimento, salvo hipóteses legais de tutela da saúde.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Gestão do Conhecimento e Comunicação',
'A respeito do repertório conceitual das organizações, voltado para a operacionalização e maximização do capital intelectual, analise o trecho a seguir. "Conjunto estruturado de atividades que visa a trabalhar a cultura organizacional para propiciar um ambiente positivo em relação à criação e à socialização de saberes tácitos e explícitos no intuito de transformá-los em informação. Esse conjunto de saberes deve subsidiar a inovação, otimizar a tomada de decisão e promover a resiliência organizacional em ambientes complexos e mutáveis." O trecho acima caracteriza o conceito de:',
'',
'',
'["sistema de informação gerencial;","comunidade de prática intersetorial;","gestão estratégica do conhecimento;","governança de sistemas sociotécnicos;","aprendizagem organizacional adaptativa."]'::jsonb,
'C',
'O trecho descreve a gestão (estratégica) do conhecimento: um conjunto estruturado de atividades que atua sobre a cultura organizacional para criar e socializar saberes tácitos e explícitos, subsidiando inovação, decisão e resiliência.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Gestão do Conhecimento e Comunicação',
'A servidora pública Maria era responsável pela gerência de contratos de seu órgão quando uma emissora de televisão lhe solicitou acesso formal a um acordo de prestação de serviços para checagem de denúncias de malversação de recursos. Temendo o comprometimento da imagem institucional, a chefia de Maria orientou que negasse o pedido, apesar de o contrato não ser classificado como sigiloso. Considerando a Lei de Acesso à Informação (Lei nº 12.527/2011), a Política Nacional de Informação e Comunicação Pública e os princípios da Administração Pública, é correto afirmar que a conduta da chefia:',
'',
'',
'["se justifica pela prerrogativa do agente público para proceder a uma análise subjetiva, dada a motivação do solicitante;","limita o acesso à informação, mas preserva a autonomia decisória da Administração Pública;","encontra respaldo em critérios de oportunidade administrativa, voltados à proteção da imagem institucional;","infringe o dever de transparência passiva, pois não há base legal para negar o acesso a documento público não sigiloso;","decorre da discricionariedade do agente público para negar o acesso baseado em diretrizes internas de preservação da imagem institucional."]'::jsonb,
'D',
'A LAI consagra a publicidade como regra. Negar acesso a documento público não classificado como sigiloso, por mera preocupação com a imagem institucional, infringe o dever de transparência passiva, pois não há base legal para a recusa.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Gestão do Conhecimento e Comunicação',
'Um tribunal firmou parceria com uma universidade para desenvolver uma ferramenta baseada em inteligência artificial generativa (IAG) destinada a avaliar requisitos de admissibilidade processual. A implementação dessa ferramenta levanta debates éticos e institucionais sobre a qualidade das decisões. Tais debates se justificam na medida em que a ferramenta:',
'',
'',
'["padroniza as decisões judiciais sem considerar as singularidades dos casos;","pode exigir supervisão humana por operar com dados protegidos por sigilo judicial;","pode eliminar a subjetividade judicial, o que conflita com os objetivos de segurança jurídica;","promove a automatização da análise processual, retirando a liberdade decisória do magistrado;","pode reproduzir padrões enviesados oriundos dos dados de treinamento, comprometendo a imparcialidade."]'::jsonb,
'E',
'O principal risco ético-institucional da IAG aplicada a decisões é a reprodução de vieses presentes nos dados de treinamento, o que compromete a imparcialidade e a qualidade das decisões.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Gestão do Conhecimento e Comunicação',
'O avanço da digitalização na Administração Pública, com o emprego de sistemas eletrônicos e plataformas digitais na prestação de serviços públicos à população, tem gerado uma série de impactos para usuários e servidores públicos. A respeito desse cenário, analise as afirmativas a seguir. I. O emprego de sistemas eletrônicos e plataformas digitais impactou a governabilidade ao introduzir mecanismos digitais para o fluxo de informações, influenciando o processo decisório. II. A digitalização na Administração Pública passou a integrar a agenda global das democracias, para promover com eficácia suas funções de representação, legislação e fiscalização. III. O uso, no serviço público, de tais sistemas e plataformas desencadeou uma reação em cadeia no Poder Executivo, para restringir o acesso à informação por meio de decretos de sigilo e aprimorar os instrumentos de censura. Está correto o que se afirma em:',
'',
'',
'["II, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'As afirmativas I e II estão corretas: a digitalização influencia a governabilidade e o processo decisório e integra a agenda global das democracias. A III é falsa, pois a digitalização promove transparência e acesso à informação, não censura ou restrição por decretos de sigilo.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Gestão do Conhecimento e Comunicação',
'A figura a seguir mostra a percentagem de domicílios com acesso a computador e internet por região brasileira em 2023 (total de domicílios em %). (Fonte: Pesquisa sobre o uso das tecnologias de informação e comunicação nos domicílios brasileiros: TIC Domicílios 2023. São Paulo: Comitê Gestor da Internet no Brasil, 2024, p. 29). Considerando os fundamentos e os princípios que disciplinam o uso da rede mundial de computadores no Brasil previstos no Marco Civil da Internet, a análise dos dados da figura acima demonstra que:',
'Dados nacionais: 33,6 milhões de domicílios apenas com internet; 546 mil domicílios apenas com computador; 30,3 milhões de domicílios com computador e com internet; 11,5 milhões de domicílios sem computador e sem internet. Brasil: 41% computador, 84% internet.',
'/cnu-2025-2-tarde-questao-36.svg',
'["a desigualdade regional de acesso contraria o princípio da liberdade de expressão, pois impede a livre manifestação dos cidadãos nas plataformas digitais;","a universalização do acesso e a redução das desigualdades regionais permanecem como desafios a serem superados, pois favorecem o pleno exercício da cidadania digital;","a disparidade regional entre os domicílios com computadores contribui para finalidade social da rede, pois incentiva sua pluralidade e sua diversidade;","a ampliação do acesso à internet reduz o foco em dispositivos físicos como computadores, o que compromete a diversidade tecnológica nos domicílios;","o alto índice de domicílios ligados à rede atesta sua neutralidade e sua funcionalidade, pois comprova sua tendência à universalização."]'::jsonb,
'B',
'O Marco Civil da Internet tem entre seus objetivos a universalização do acesso e a redução das desigualdades regionais. Os dados demonstram que essas metas permanecem como desafios a serem superados para o pleno exercício da cidadania digital.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Gestão do Conhecimento e Comunicação',
'Em uma cultura de acesso, os agentes públicos entendem que as informações pertencem ao cidadão. Por isso, é dever do Estado fornecê-las de forma rápida, clara e útil, para atender bem às necessidades da sociedade. Nesse contexto, é correto afirmar que, de acordo com a Lei de Acesso à Informação (Lei nº 12.527/2011), o acesso à informação é reconhecido como um direito:',
'',
'',
'["individual, baseado no princípio de que o sigilo à informação de interesse particular constitui regra fundamental;","à transparência ponderada, baseado no princípio de que a publicidade moderada da quantidade e qualidade de informações evita a desinformação entre os cidadãos;","à participação política, baseado no princípio de que a transparência ativa depende da iniciativa do cidadão para solicitar informações de interesse público;","humano fundamental, baseado no princípio de que toda pessoa deve ter a liberdade de buscar, receber e divulgar informações e ideias por quaisquer meios;","à igualdade perante a lei, baseado no princípio de que os meios físicos são canais obrigatórios e facilitadores para divulgação equitativa das iniciativas públicas."]'::jsonb,
'D',
'O acesso à informação é reconhecido como direito humano fundamental, fundado na liberdade de buscar, receber e divulgar informações e ideias por quaisquer meios, independentemente de fronteiras.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Gestão do Conhecimento e Comunicação',
'A alternativa que apresenta corretamente as diretrizes e os princípios estabelecidos pela Lei Federal nº 14.129/2021, que dispõe sobre o Governo Digital e a eficiência pública, é a seguinte:',
'',
'',
'["a ampliação dos trâmites burocráticos nas etapas de solicitação, oferta e acompanhamento dos serviços digitais contribui para a previsibilidade das ações e decisões;","a supressão do atendimento presencial promove a inclusão social e o acesso universal, ao disponibilizar canais digitais amplamente acessíveis à população;","a descentralização dos serviços digitais por meio de múltiplas plataformas autônomas permite uma experiência mais personalizada, acessível e conveniente para o cidadão;","a eliminação de formalidades e exigências nos serviços digitais, cujo custo econômico ou social seja superior ao risco envolvido, permite a simplificação dos processos;","a remoção do autosserviço nos serviços digitais contribui para reduzir erros e arbitrariedades por parte dos cidadãos, ao delegar as operações a servidores públicos capacitados."]'::jsonb,
'D',
'A Lei nº 14.129/2021 prevê, entre suas diretrizes, a eliminação de formalidades e exigências cujo custo econômico ou social seja superior ao risco envolvido, de modo a simplificar os processos e desburocratizar os serviços públicos digitais.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Gestão do Conhecimento e Comunicação',
'A alternativa que apresenta corretamente as possibilidades do uso das tecnologias cívicas digitais no âmbito da democracia participativa é a seguinte:',
'',
'',
'["a participação política mediada pelo uso de tecnologias de blockchain garante a integridade de dados e elimina a dependência de intermediários institucionais para assegurar a transparência e a confiabilidade das decisões coletivas;","a colaboração cidadã mediada por sistemas de inteligência artificial dispensa a intervenção ou a responsividade governamental e promove a participação direta da população na resolução de problemas públicos;","o empoderamento dos cidadãos mediado por tecnologias de realidade virtual promove um senso simbólico de influência nas decisões políticas, ainda que distante da participação política efetiva;","o controle social mediado por tecnologias digitais revela-se ineficiente quando comparado aos canais tradicionais de participação, cujo uso já foi testado e validado institucionalmente;","o engajamento cívico mediado por tecnologias emergentes configura uma forma de participação institucionalizada, que reforça os modelos formais do sistema político baseado na representação partidária."]'::jsonb,
'A',
'As tecnologias cívicas baseadas em blockchain podem assegurar a integridade e a imutabilidade dos dados e reduzir a dependência de intermediários institucionais, reforçando a transparência e a confiabilidade das decisões coletivas na democracia participativa.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Gestão do Conhecimento e Comunicação',
'Leia o trecho a seguir. "Trata-se do princípio segundo o qual o tráfego da internet deve ser tratado igualmente, sem discriminação, restrição ou interferência independentemente do emissor, recipiente, tipo ou conteúdo, de forma que a liberdade dos usuários de internet não seja restringida pelo favorecimento ou desfavorecimento de transmissões do tráfego da internet associado a conteúdos, serviços, aplicações ou dispositivos particulares." (Adaptado de VALENTE, Jonas. Agência Brasil - 16/12/2017). Conforme estabelecido pelo Marco Civil da Internet (Lei nº 12.965/2014), o princípio descrito no trecho é o da:',
'',
'',
'["afirmação da livre concorrência;","preservação da liberdade de expressão;","garantia da neutralidade de rede;","proteção da privacidade dos usuários;","responsabilização dos usuários pelos conteúdos publicados."]'::jsonb,
'C',
'O princípio descrito — tratamento isonômico do tráfego, sem discriminação por conteúdo, origem, destino, serviço ou aplicação — é o da neutralidade de rede, previsto no Marco Civil da Internet.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Gestão do Conhecimento e Comunicação',
'Em relação aos desafios presentes na relação entre Inteligência Artificial Generativa (IAG) e comunicação ética, analise as afirmativas a seguir. I. O uso de dados gerados por inteligência artificial deve cumprir as regulamentações vigentes, embora enfrente desafios impostos pelo rápido avanço tecnológico, que frequentemente supera a velocidade da elaboração legislativa. II. O uso de dados gerados por inteligência artificial deve respeitar a privacidade e a proteção de dados, embora enfrente desafios para assegurar a defesa contra usos indevidos. III. O uso de dados gerados por inteligência artificial deve se pautar na autonomia exercida pela própria IA em relação à supervisão humana, embora enfrente desafios para promover uma comunicação clara e eficiente. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'As afirmativas I e II estão corretas. A III é falsa: a comunicação ética com IAG exige supervisão humana e responsabilidade, não a autonomia da própria IA em relação ao controle humano.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Gestão do Conhecimento e Comunicação',
'Um município brasileiro desenvolveu uma plataforma digital com o objetivo de facilitar o acesso da população a serviços e benefícios públicos, como o agendamento de atendimentos, a solicitação de documentos e o acompanhamento de programas sociais. Para utilizar o sistema, os cidadãos devem criar uma conta informando dados como nome completo, CPF, endereço, informações de contato, origem étnica, situação socioeconômica e dados familiares. Considerando esse contexto, é correto afirmar que a Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709/2018) é aplicável, pois NÃO há tratamento de dados pessoais com finalidade exclusivamente:',
'',
'',
'["jornalística, com propósitos informativos;","artística, com propósitos culturais;","governamental, com propósitos de segurança nacional;","pessoal, com propósitos particulares;","política, com propósitos coletivos."]'::jsonb,
'E',
'A LGPD não se aplica ao tratamento de dados realizado por pessoa natural para fins exclusivamente particulares e não econômicos, nem para fins exclusivamente jornalísticos, artísticos ou de segurança do Estado. No caso, o tratamento pelo município não se enquadra nessas hipóteses de exclusão, de modo que a LGPD é aplicável.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Politicas Publicas de Educacao (Questoes 43 a 54)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Políticas Públicas de Educação',
'Durante uma reunião de planejamento da Secretaria de Educação de um estado da federação, técnicos em assuntos educacionais foram questionados a respeito de como é monitorado o cumprimento da Meta 12 do Plano Nacional de Educação 2014-2024 (Lei nº 13.005/2014), referente à ampliação do acesso ao ensino superior. De acordo com a norma citada, o monitoramento é:',
'',
'',
'["realizado com base nos indicadores de desempenho fornecidos pelas universidades estaduais, como taxa de reprovação em determinadas disciplinas, coeficiente de rendimento e inserção profissional dos egressos;","efetuado pelo Tribunal de Contas da União, que fiscaliza a eficácia pedagógica dos repasses educacionais utilizados para aumentar a oferta de matrículas no ensino superior;","executado pelo Fórum Nacional de Educação, mediante os relatórios produzidos pelo Inep, com informações organizadas por ente federado e consolidadas em âmbito nacional, entre outros dados;","condicionado pelas autoavaliações internas das instituições públicas de ensino superior, fruto da participação ativa de docentes, estudantes e gestores, com base em um processo de avaliação coletivo, transparente e formativo;","subordinado à Comissão de Educação da Câmara dos Deputados e à Comissão de Educação, Cultura e Esporte do Senado Federal, que analisam a taxa de matrícula líquida na Educação Básica."]'::jsonb,
'C',
'A Lei nº 13.005/2014 (PNE) estabelece que o monitoramento das metas conta com estudos e relatórios produzidos pelo Inep, com informações organizadas por ente federado e consolidadas em âmbito nacional, e com acompanhamento do Fórum Nacional de Educação, entre outras instâncias.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Políticas Públicas de Educação',
'Uma equipe multidisciplinar está elaborando um curso de extensão on-line para formação de professores na área de artes e humanidades. O objetivo do curso é estimular a construção coletiva do conhecimento, com uso de fóruns moderados, atividades em grupo e a presença de um mediador pedagógico. Embora o curso seja de extensão, a equipe decidiu aplicar os parâmetros da Nova Política de Educação a Distância (Decreto nº 12.456/2025) para garantir qualidade pedagógica, institucional e tecnológica. Considerando essa decisão da equipe e as diretrizes da Nova Política de Educação a Distância, o curso descrito precisa:',
'',
'',
'["especificar a modalidade de oferta no certificado de conclusão, conforme exigência da regulamentação citada para cursos de extensão, graduação e pós-graduação;","garantir que o mediador atue em funções administrativas, de modo que o corpo docente possa gerenciar as atividades pedagógicas e as propostas colaborativas;","estar desvinculado de instituição de ensino superior, por se tratar de curso de extensão multidisciplinar, com caráter livre e autonomia de oferta pelas equipes organizadoras;","condicionar as avaliações de aprendizagem a atividades síncronas ou assíncronas na modalidade a distância, podendo contar com o suporte do mediador pedagógico;","estar vinculado a um polo EaD que funcione como espaço de apoio acadêmico efetivo, com infraestrutura física e tecnológica adequada, sendo vedado o compartilhamento de polos entre instituições distintas."]'::jsonb,
'E',
'Pela Nova Política de Educação a Distância, os cursos devem estar vinculados a um polo de EaD que funcione como espaço efetivo de apoio acadêmico, com infraestrutura física e tecnológica adequada, sendo vedado o compartilhamento de polos entre instituições distintas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Políticas Públicas de Educação',
'Durante a "Campanha Junho Verde", foi organizada uma ação socioeducativa para divulgar os princípios da Política Nacional de Educação Ambiental (PNEA) em uma comunidade quilombola. Um analista foi encarregado de propor atividades que unissem a valorização da cultura afro-brasileira a práticas sustentáveis locais, conforme as diretrizes da PNEA. Com base nessas diretrizes e nos objetivos da ação, avalie a adequação das atividades listadas a seguir. I. Criação de uma horta agroecológica com técnicas herdadas de saberes quilombolas, como o cultivo consorciado, o uso de plantas medicinais e o manejo sustentável do solo, com a participação de anciãos e de agricultores locais. II. Elaboração de um roteiro turístico que inclua visitas a espaços sagrados, oficinas de culinária tradicional com uso de ingredientes nativos e explicações sobre práticas sustentáveis locais, com participação da comunidade. III. Organização de uma oficina em que mestres locais aprendam a notação musical ocidental, de modo que as canções tradicionais da comunidade sejam ajustadas para um padrão musical formalizado, facilitando a sua divulgação. São exemplos de aplicação dos princípios da PNEA as atividades descritas em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'As atividades I e II valorizam saberes tradicionais e práticas sustentáveis locais, alinhadas aos princípios da PNEA. A III descaracteriza a cultura local ao impor um padrão musical ocidental, contrariando o respeito à pluralidade e à identidade cultural.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Políticas Públicas de Educação',
'Entre suas metas, o Objetivo de Desenvolvimento Sustentável 10 (redução das desigualdades) prevê promover, até 2030, a inclusão social, econômica e política de todos, independentemente de idade, gênero, deficiência, raça, etnia, origem nacional, condição econômica, religião ou qualquer outra característica. O conceito descrito a seguir é um dos que fundamenta essa meta. "Processo pelo qual indivíduos e grupos socialmente vulneráveis ampliam sua capacidade de agir sobre as próprias vidas e contextos. Envolve a conscientização a respeito dos próprios direitos, a superação de relações de dominação e dependência e a construção de condições para o exercício autônomo da cidadania. Está associado a um processo de redução da vulnerabilidade e de aumento das próprias capacidades dos setores pobres e marginalizados da sociedade." A descrição acima diz respeito ao conceito de:',
'',
'',
'["inclusão;","capacitação;","autonomia;","empoderamento;","igualdade de oportunidades."]'::jsonb,
'D',
'A descrição corresponde ao conceito de empoderamento: processo pelo qual indivíduos e grupos vulneráveis ampliam sua capacidade de agir sobre a própria vida, conscientizam-se de seus direitos e superam relações de dominação e dependência.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Políticas Públicas de Educação',
'O Objetivo de Desenvolvimento Sustentável 5 (igualdade de gênero), em sua meta 5.5, defende a participação plena das mulheres e a igualdade de oportunidades para cargos de liderança em todos os níveis de tomada de decisão. Considerando os desafios postos por essa meta, analise o gráfico a seguir sobre as desigualdades de gênero e raça que ainda persistem nos cargos de liderança do Executivo Federal brasileiro. O gráfico mostra a distribuição percentual por sexo e raça em diferentes grupos: na população brasileira em geral; no conjunto dos cargos comissionados do Executivo Federal (CCE e FCE); e dentro dos diferentes níveis dos cargos anteriormente chamados de DAS, divididos entre média liderança (DAS-1 a DAS-4) e alta liderança (DAS-5, DAS-6 e cargos de natureza especial). Com base nos dados apresentados, analise as afirmativas a seguir sobre a presença de mulheres em cargos de liderança, considerando V para a(s) verdadeira(s) e F para a(s) falsa(s). ( ) As mulheres negras estão sub-representadas em maior intensidade quando comparadas às mulheres brancas, as quais têm representação similar na sociedade e nos cargos considerados; já os homens brancos são sobre-representados. ( ) A hierarquia é um marcador de desigualdades, uma vez que a participação de mulheres e homens negros diminui significativamente à medida que aumenta o nível hierárquico dos cargos. ( ) Os cargos comissionados são de livre nomeação e exoneração, podendo ser ocupados por pessoas sem vínculo com a Administração Pública, o que favorece filtros informais e redes de influência, perpetuando desigualdades nas posições de liderança. A sequência correta é:',
'Fonte: Movimento Pessoas à Frente. Desigualdade de gênero em cargos de liderança no Executivo Federal, nota técnica 2024, elaborada com base no Painel Estatístico de Pessoal (MGI, 2023), p. 12. Distribuição percentual por Mulheres Negras / Mulheres Brancas / Homens Negros / Homens Brancos: Brasil 28/23/27/21; CCE e FCE 15/26/22/34; Nat. Esp. 8/17/8/63; DAS-6 9/21/13/54; DAS-5 11/27/16/43; DAS-4 13/27/19/38; DAS-3 16/28/21/33; DAS-2 17/27/21/32; DAS-1 15/24/25/33.',
'/cnu-2025-2-tarde-questao-47.svg',
'["V, V, F;","F, V, V;","V, F, V;","F, V, F;","V, V, V."]'::jsonb,
'E',
'As três afirmativas são verdadeiras: as mulheres negras são as mais sub-representadas (enquanto as brancas têm representação similar na sociedade e nos cargos e os homens brancos são sobre-representados); a participação de pessoas negras cai conforme sobe o nível hierárquico; e a livre nomeação dos cargos comissionados favorece filtros informais que perpetuam desigualdades.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Políticas Públicas de Educação',
'O Plano Nacional de Educação (PNE) foi prorrogado até dezembro de 2025. O PNE define 20 metas que visam à melhoria da oferta da educação pública em todos os níveis e modalidades no país. Uma contribuição direta para o cumprimento de uma meta do PNE é:',
'',
'',
'["promover programas de participação social com foco em direitos civis para moradores dos bairros circundantes, efetivando a gestão democrática da educação (Meta 19);","implantar núcleos de apoio e acompanhamento psicoemocional nas escolas para estudantes e professores, contribuindo para os resultados no Ideb (Meta 7);","financiar eventos de inovação tecnológica voltados à divulgação e ao incentivo de startups na região da escola, estimulando o empreendedorismo (Meta 11);","oferecer oficinas para o desenvolvimento de habilidades socioemocionais abertas aos pais e responsáveis, favorecendo a educação de adultos (Meta 10);","nivelar os rendimentos dos professores da Educação Básica aos de outras carreiras públicas de nível superior, valorizando os profissionais do magistério (Meta 17)."]'::jsonb,
'E',
'A Meta 17 do PNE visa valorizar os profissionais do magistério, aproximando seu rendimento médio ao das demais carreiras com formação de nível superior. Nivelar os rendimentos dos professores contribui diretamente para essa meta.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Políticas Públicas de Educação',
'A Nova Política de Educação a Distância (Decreto nº 12.456/2025) estabelece diretrizes para os processos de ensino e aprendizagem realizados por meio de tecnologias de informação e comunicação. A lei conceitua e caracteriza um certo número de modalidades dessas atividades. É exemplo de uma atividade síncrona mediada:',
'',
'',
'["uma aula ao vivo transmitida pelo professor por videoconferência e aberta a um número indefinido de participantes;","uma sessão de esclarecimento de dúvidas transmitida por live, em que os alunos podem interagir com questões;","tutoria on-line com interação entre o docente e um número limitado de estudantes com controle de frequência;","participação obrigatória em um fórum de discussão em que os alunos postam e respondem mensagens em horários livres;","uma mesa-redonda on-line aberta à participação de convidados e alunos que podem interagir por meio do chat."]'::jsonb,
'C',
'Atividade síncrona mediada ocorre em tempo real, com interação entre docente e um número limitado de estudantes identificados, com controle de frequência — como na tutoria on-line descrita. As transmissões abertas a número indefinido de participantes não configuram mediação com controle, e o fórum em horários livres é assíncrono.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Políticas Públicas de Educação',
'O Plano Nacional de Pós-Graduação (PNPG), com vigência prevista para 2025-2029, aponta o aprimoramento do componente da extensão universitária como um dos desafios para a expansão do sistema de pós-graduação. A expansão dos projetos de extensão significa:',
'',
'',
'["o fortalecimento dos grupos de pesquisa, com foco na produção de conhecimento científico de excelência;","a articulação entre saberes acadêmicos e demandas comuns, promovendo uma maior interação universidade/sociedade;","o aprimoramento dos currículos acadêmicos, com foco na melhoria da transmissão interna dos conteúdos técnicos;","a aplicação de metodologias de ensino centradas na inclusão, com foco na promoção da diversidade em sala de aula;","o aumento da produção de artigos científicos colaborativos entre instituições, integrando os sistemas público e privado."]'::jsonb,
'B',
'A extensão universitária articula os saberes acadêmicos às demandas da sociedade, promovendo maior interação universidade/sociedade. A expansão dos projetos de extensão fortalece essa ponte entre a produção acadêmica e as necessidades sociais.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Políticas Públicas de Educação',
'A Constituição Federal de 1988 define a educação como direito de todos, estabelecendo princípios e normas para sua promoção, incentivo e garantia. A situação que representa uma violação desses preceitos constitucionais é a seguinte:',
'',
'',
'["uma secretaria de educação amplia os canais de participação da comunidade na gestão das escolas, fortalecendo conselhos escolares e fóruns abertos à comunidade;","uma diretoria de ensino cria um programa para garantir atendimento educacional especializado aos alunos com deficiência na rede regular;","uma reitoria de universidade pública autoriza a contratação de professores visitantes estrangeiros para colaborar em projetos de pesquisa e inovação;","uma secretaria de educação define que, no Ensino Médio, terão prioridade na matrícula os alunos de melhor desempenho no Ensino Fundamental, buscando elevar os índices da rede;","uma secretaria de educação firma convênios com universidades públicas para oferecer cursos preparatórios gratuitos, apoiando estudantes da rede pública no acesso ao ensino superior."]'::jsonb,
'D',
'A Constituição assegura igualdade de condições para o acesso e a permanência na escola. Priorizar a matrícula no Ensino Médio pelos alunos de melhor desempenho viola o princípio da igualdade de acesso, caracterizando ofensa aos preceitos constitucionais.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Políticas Públicas de Educação',
'A teoria da distância transacional, de Michael G. Moore, oferece uma matriz conceitual para a avaliação das ações pedagógicas no âmbito da Educação a Distância (EaD). A distância transacional está em função das variáveis diálogo, estrutura e autonomia do aluno. A alternativa que descreve adequadamente a relação entre uma variável e a distância transacional é a seguinte:',
'',
'',
'["quanto maior a autonomia do aluno, maior tende a ser a distância transacional, pois a autogestão da aprendizagem gera maior separação entre professor e estudante;","a distância transacional pode ser minimizada mesmo com pouco diálogo, desde que o curso ofereça uma estrutura robusta capaz de antecipar as demandas dos alunos;","quanto maior o nível de diálogo em um curso, mais cresce a distância transacional, dado que as múltiplas trocas tornam o processo mais complexo e cognitivamente demandante;","a adoção de estratégias de feedback personalizado e mediação ativa tendem a reduzir a distância transacional, ao favorecer maior alinhamento entre professor e aluno;","a alta autonomia dos alunos dispensa estratégias de mediação, pois a distância transacional se anula quando o estudante assume o controle da própria aprendizagem."]'::jsonb,
'D',
'Na teoria de Moore, maior diálogo reduz a distância transacional. Estratégias de feedback personalizado e mediação ativa aumentam o diálogo e o alinhamento entre professor e aluno, reduzindo a distância transacional.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Políticas Públicas de Educação',
'A Política Nacional de Educação Ambiental, instituída pela Lei nº 9.795/1999, estabelece as diretrizes para o desenvolvimento de competências voltadas para a conservação do meio ambiente e a construção de uma sociedade sustentável. Em relação à educação ambiental, é correto afirmar que:',
'',
'',
'["deve estar articulada em todos os níveis e modalidades do ensino formal, bem como nos espaços de educação não formal;","tem aplicação voltada às instituições formais de ensino básico e superior, cabendo às demais instâncias sociais ações de apoio e divulgação;","deve ser implementada prioritariamente na educação formal, sendo opcional sua aplicação em outros contextos sociais e institucionais;","constitui, no âmbito não formal, responsabilidade das organizações não governamentais, com participação acessória do Estado;","deve ocorrer, no ensino formal, por meio de disciplina específica, organizada em conteúdos próprios e avaliações padronizadas nacionalmente."]'::jsonb,
'A',
'A PNEA estabelece que a educação ambiental deve estar presente, de forma articulada, em todos os níveis e modalidades do ensino formal, bem como nos espaços de educação não formal, com caráter interdisciplinar e não como disciplina específica.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Políticas Públicas de Educação',
'A Lei de Diretrizes e Bases da Educação Nacional, também conhecida como LDB (Lei nº 9.394/1996), estabelece as competências e responsabilidades dos diferentes entes federativos na organização, manutenção e desenvolvimento da educação no Brasil. Considerando as incumbências definidas pela LDB, é correto afirmar que:',
'',
'',
'["cabe à União providenciar a oferta de Ensino Médio e Superior em âmbito nacional, promovendo amplo acesso a esses níveis de ensino;","a definição das diretrizes e bases da educação é responsabilidade dos estados, por estarem mais próximos das realidades locais;","a prestação de assistência técnica e financeira aos estados, ao Distrito Federal e aos municípios compete à União, visando ao desenvolvimento de seus sistemas de ensino;","a oferta da Educação Infantil e do Ensino Fundamental ocorre de forma compartilhada e indistinta entre União, estados e municípios;","cabe aos municípios providenciar, manter e desenvolver os sistemas de ensino das instituições federais situadas em seu território específico."]'::jsonb,
'C',
'A LDB atribui à União a função redistributiva e supletiva, cabendo-lhe prestar assistência técnica e financeira aos estados, ao Distrito Federal e aos municípios para o desenvolvimento de seus sistemas de ensino e o atendimento prioritário à escolaridade obrigatória.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Politicas Publicas de Cultura (Questoes 55 a 66)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Políticas Públicas de Cultura',
'"Em 2019, no Museu da Imigração (São Paulo), a instalação ''Cúmulo'', da artista Emilia Estrada, colocou em exposição um grande volume de itens da coleção institucional, promovendo questionamentos sobre a construção do acervo e dos possíveis desdobramentos para as identidades coletivas da imigração. Se, por um lado, o título da obra apresenta a ideia de ''coisas amontoadas ou sobrepostas'', por outro, remete à dimensão física ocupada por esse patrimônio, ao evidenciar seu ''volume'' e o consequente impacto da manutenção desses acervos nos museus." Considerando o papel das políticas públicas de patrimônio, a obra "Cúmulo" revela desafios associados à:',
'',
'',
'["permuta;","curadoria;","mediação;","conservação;","documentação."]'::jsonb,
'B',
'Ao expor um grande volume de itens da coleção e questionar a construção do acervo e suas identidades coletivas, a obra evidencia desafios de curadoria — as escolhas sobre o que é reunido, selecionado e exibido do patrimônio institucional.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Políticas Públicas de Cultura',
'A respeito da relação entre memória e patrimônio cultural, leia o texto a seguir. "Primeiro terreiro tombado pelo Iphan, o Terreiro Casa Branca do Engenho Velho, localizado em Salvador (BA), foi reconhecido como Patrimônio Cultural Brasileiro e inscrito nos livros do Tombo Histórico e Arqueológico, Etnográfico e Paisagístico, em 1984." Considerando a Convenção sobre a Proteção e Promoção da Diversidade das Expressões Culturais (Unesco, 2005), o histórico de tombamento dos terreiros de religião de matriz africana no Brasil revela:',
'',
'',
'["o alinhamento às normativas internacionais sobre diversidade cultural;","a valorização da pluralidade das expressões culturais a partir de critérios técnicos;","a prevalência da dimensão material da cultura, com foco na preservação física dos espaços;","o compromisso precoce do Iphan com o pluralismo cultural, antecipando-se às políticas internacionais de preservação;","a exotização das religiões afro-brasileiras a partir da seleção por critérios de autenticidade e pertencimento comunitário."]'::jsonb,
'A',
'O reconhecimento e o tombamento dos terreiros de matriz africana expressam o alinhamento da política brasileira de patrimônio às normativas internacionais sobre a proteção e promoção da diversidade das expressões culturais, consagradas na Convenção da Unesco de 2005.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Políticas Públicas de Cultura',
'A respeito da interseção entre cultura e mercado, leia o trecho a seguir. "Hoje, a cultura não tem só um expressivo peso econômico. A economia como um todo depende cada vez mais, em seu conjunto, das dimensões culturais. (...) O que é cultural no capitalismo globalizado das redes é o trabalho em geral. Ou seja, um trabalho que se torna intelectual, criativo, comunicativo – em uma palavra, imaterial." (Antonio Negri & Giuseppe Cocco. "O monstro e o poeta", Folha de São Paulo, 3 de mar. 2006). De acordo com o trecho, a economia da cultura:',
'',
'',
'["valoriza o trabalho técnico como base produtiva dos bens imateriais;","fundamenta-se na criatividade individual como motor do crescimento das indústrias culturais;","passa por um processo de homogeneização dos fatores intangíveis de competitividade;","integra-se à lógica do capital por meio da expansão do trabalho criativo e comunicativo;","vive uma era marcada pela divergência entre fatores culturais e dinâmica socioeconômica."]'::jsonb,
'D',
'O trecho defende que, no capitalismo globalizado em rede, o trabalho se torna cada vez mais imaterial (intelectual, criativo, comunicativo), integrando a cultura à lógica do capital por meio da expansão desse trabalho criativo e comunicativo.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Políticas Públicas de Cultura',
'A Instrução Normativa nº 23/2025 do Ministério da Cultura, ao reformular os procedimentos da Lei Rouanet, incorporou uma série de demandas da sociedade civil e do setor produtivo cultural. Nesse contexto, uma das mudanças estruturantes introduzidas pela nova regulamentação foi:',
'',
'',
'["a adoção de contrapartida financeira para propostas de caráter regional;","a equiparação dos tetos de captação, com base no princípio de isonomia procedimental;","a previsão orçamentária para ações de acessibilidade e ampliação do acesso nos projetos culturais;","a articulação com patrocinadores antes da aprovação do projeto, com vistas à exequibilidade da proposta;","a limitação da participação de pessoas físicas, restringindo a inscrição a entidades com atuação cultural reconhecida."]'::jsonb,
'C',
'Entre as mudanças estruturantes da reformulação da Lei Rouanet está a previsão orçamentária obrigatória para ações de acessibilidade e ampliação do acesso nos projetos culturais, reforçando a inclusão como diretriz do fomento.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Políticas Públicas de Cultura',
'A partir de 2023, a Lei do Audiovisual (Lei nº 8.685/1993) passou a ser aplicada segundo diretrizes que envolvem mudanças operacionais, reestruturação dos mecanismos de fomento e adaptação às novas dinâmicas do setor. No contexto das modificações normativas promovidas até 2025, é correto afirmar que:',
'',
'',
'["os incentivos à produção audiovisual para plataformas digitais passaram a priorizar distribuidoras consolidadas no mercado nacional;","o modelo de financiamento indireto por meio da Funcines foi extinto, sendo substituído por linhas de crédito geridas pela Agência Nacional do Cinema;","a estruturação dos editais do Fundo Setorial do Audiovisual incorporou parâmetros de diversidade socioterritorial para qualificação técnica de propostas;","a aplicação de recursos passou a exigir contrapartida financeira por parte da produtora beneficiária, exceto em projetos educativos ou de acessibilidade cultural;","a comprovação de distribuição prévia em circuito comercial nacional tornou-se obrigatória, passando a ser exigida documentação emitida por agente licenciador ou exibidor autorizado."]'::jsonb,
'C',
'Entre as modificações, os editais do Fundo Setorial do Audiovisual passaram a incorporar parâmetros de diversidade socioterritorial na qualificação técnica das propostas, promovendo maior equidade regional e social no fomento ao audiovisual.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Políticas Públicas de Cultura',
'O Sistema Nacional de Cultura é uma forma de estruturar e organizar a gestão cultural no Brasil pautada no princípio do(a):',
'',
'',
'["transparência, ao prever auditorias obrigatórias nas instituições culturais e consultas populares para tomada de decisões estratégicas;","participação social, ao estabelecer a atuação de representantes da sociedade civil em órgãos colegiados de caráter consultivo e fiscalizador, como os Conselhos de Política Cultural;","gestão democrática, ao subordinar os sistemas setoriais de cultura e as comissões intergestores ao processo deliberativo das instâncias legislativas dos entes federados;","controle social, ao vincular a arrecadação de recursos para os programas culturais a plataformas on-line e outras ferramentas de envolvimento do grande público;","compartilhamento de responsabilidades, ao delegar a elaboração das políticas culturais para diversos ministérios, como o da Educação e o do Trabalho, demonstrando a sua importância para o projeto político do governo."]'::jsonb,
'B',
'O Sistema Nacional de Cultura estrutura-se no princípio da participação social, materializado na atuação de representantes da sociedade civil em órgãos colegiados, como os Conselhos de Política Cultural, de caráter consultivo e fiscalizador.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Políticas Públicas de Cultura',
'Leia o trecho a seguir do Plano Nacional de Cultura (PNC). "A formação sociocultural do Brasil é marcada por encontros étnicos, sincretismos e mestiçagens. (...) Não se pode ignorar, no entanto, as tensões, dominações e discriminações que permearam e permeiam a trajetória do País. A diversidade cultural no Brasil se atualiza – de maneira criativa e ininterrupta – por meio da expressão de seus artistas e de suas múltiplas identidades (...)." (Adaptado de PNC, Lei nº 12.343/2010). Com base nesse trecho, é correto afirmar que o PNC associa o conceito de cultura ao de:',
'',
'',
'["pluralidade, uma vez que reconhece os processos históricos de mestiçagem e prioriza a convivência harmônica entre grupos culturais distintos, sem considerar os conflitos históricos que marcaram suas relações;","heterogeneidade, pois valoriza a fragmentação das expressões culturais consideradas conaturais e intrínsecas a cada tipo de sociedade;","identidade, já que promove a construção de um sentimento nacional de pertencimento que sintetiza a essência da brasilidade, superando as diferenças culturais regionais;","diversidade, porque reconhece a relação dinâmica e assimétrica entre diferentes matrizes culturais e orienta as políticas públicas para sua valorização e proteção;","igualdade, pois considera que todos os grupos culturais têm os mesmos peso histórico e espaço de representação no cenário nacional."]'::jsonb,
'D',
'O trecho associa cultura à diversidade: reconhece a relação dinâmica e assimétrica entre diferentes matrizes culturais (inclusive as tensões e discriminações históricas) e orienta as políticas públicas para a valorização e proteção dessa diversidade.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Políticas Públicas de Cultura',
'As metas 40 e 41 do Plano Nacional de Cultura (PNC) preveem a disponibilização online de acervos culturais públicos (obras audiovisuais, literárias, sonoras e documentais) e estabelecem que bibliotecas, museus e arquivos disponibilizem informações no Sistema Nacional de Informações e Indicadores Culturais (SNIIC). A respeito dos desafios relacionados à disponibilização on-line dos acervos dessas instituições, analise as afirmativas a seguir. I. Para que seja possível recuperar a informação sobre um acervo digital, é necessário tratá-lo, documentá-lo e armazená-lo, juntamente com as informações que permitem sua identificação. II. Para que os metadados das coleções culturais digitalizadas possam ser acessados livremente e cruzados, os museus, arquivos e bibliotecas devem promover a interoperabilidade no processo de publicação de seus acervos na internet. III. Para que o potencial preservacionista e a gestão de riscos sejam ampliados, os acervos digitalizados devem ser disponibilizados em plataformas próprias de cada instituição e deve-se impedir a divulgação na internet de obras raras do acervo físico. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'As afirmativas I e II estão corretas (tratamento/documentação do acervo e interoperabilidade dos metadados). A III é falsa: a disponibilização em plataformas isoladas e a vedação à divulgação na internet contrariam a lógica de acesso amplo e interoperável das metas do PNC.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Políticas Públicas de Cultura',
'Com base nos princípios diretores da Convenção sobre a Proteção e Promoção da Diversidade das Expressões Culturais (Unesco, 2005), um edital público de fomento à cultura estabeleceu os seguintes requisitos: 1. reserva de percentual mínimo de aprovação para projetos propostos por pessoas indígenas e quilombolas; 2. pontuação adicional para iniciativas realizadas fora dos grandes centros urbanos e que valorizem saberes e práticas culturais locais; 3. linha específica de financiamento para tradução de obras literárias oriundas de países do Sul Global. À luz da Convenção, é correto afirmar que os requisitos do edital se assentam no princípio do(a):',
'',
'',
'["soberania;","acesso equitativo;","abertura e equilíbrio;","desenvolvimento sustentável;","respeito aos direitos humanos."]'::jsonb,
'B',
'Os requisitos buscam ampliar e equilibrar o acesso de grupos e regiões historicamente menos contemplados (indígenas, quilombolas, fora dos grandes centros, Sul Global) à produção e à difusão cultural, assentando-se no princípio do acesso equitativo da Convenção de 2005.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Políticas Públicas de Cultura',
'A Convenção para Proteção do Patrimônio Mundial, Cultural e Natural (Unesco, 1972), em seu artigo 4, estabelece que cada Estado-parte reconhece que lhe compete identificar, proteger, conservar, valorizar e transmitir às gerações futuras o patrimônio cultural e natural situado em seu território, podendo recorrer à assistência e cooperação internacionais. Com base nesse trecho, analise as afirmativas a seguir, considerando V para a(s) verdadeira(s) e F para a(s) falsa(s). ( ) O patrimônio cultural e natural é um bem de transmissão intergeracional; por isso, seu valor é excepcional e sua natureza é imaterial. ( ) Os Estados-parte possuem a responsabilidade de proteger os bens situados em seus territórios; por isso, devem instituir um órgão para protegê-los e valorizá-los. ( ) O património cultural e natural é local, mas seu valor é universal; por isso, estão previstos instrumentos de apoio e colaboração internacionais. A sequência correta é:',
'',
'',
'["V, V, F;","F, V, F;","V, F, V;","F, V, V;","V, V, V."]'::jsonb,
'D',
'A primeira afirmativa é falsa, pois o patrimônio protegido pela Convenção de 1972 abrange bens materiais (monumentos, conjuntos, sítios e patrimônio natural), não sendo de natureza imaterial. A segunda e a terceira são verdadeiras: cabe aos Estados proteger os bens em seu território (inclusive instituindo serviços para tanto) e, dado o valor universal, há instrumentos de cooperação internacional.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Políticas Públicas de Cultura',
'A Lei Rouanet, a Lei do Audiovisual, a Lei Paulo Gustavo e o Programa Nacional Aldir Blanc de Fomento à Cultura são instrumentos de fomento à cultura que, em seu conjunto:',
'',
'',
'["constituem investimentos diretos e de caráter permanente na cultura;","adotam a renúncia fiscal como mecanismo de financiamento prioritário;","utilizam recursos públicos do Fundo Nacional de Cultura, com repasses diretos para os estados;","contemplam todos os setores e linguagens artísticas, com ampla abrangência cultural;","objetivam incentivar a produção, circulação e fruição de bens e serviços culturais."]'::jsonb,
'E',
'Apesar de mecanismos distintos (incentivo fiscal, fomento direto, transferências a entes federados), o conjunto desses instrumentos tem a finalidade comum de incentivar a produção, a circulação e a fruição de bens e serviços culturais.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Políticas Públicas de Cultura',
'No que se refere à sustentabilidade cultural, associe os aspectos potencializados por ela com suas respectivas descrições. 1. Identidade 2. Autenticidade 3. Capital cultural 4. Vitalidade. ( ) A cultura consolida e fortalece os valores de uma sociedade por meio da participação ativa e do empoderamento das pessoas no sistema cultural, impulsionado pelo uso de pesquisa, inovação e produção de conhecimento. ( ) A incorporação do valor cultural a um bem ou atração, seja ela material ou imaterial, amplia seu valor e potencial econômico, gerando produtos originais e de qualidade que impulsionam setores como o turismo e a economia criativa. ( ) A cultura é uma dimensão estruturante da vida social e do desenvolvimento econômico, pois oferece manifestações sólidas, inclusivas, interligadas a diversas áreas e representativas da diversidade. ( ) O reconhecimento e a valorização de elementos singulares expressam a identidade cultural de uma comunidade e asseguram que os produtos e as práticas culturais representem suas vivências e saberes. A sequência correta é:',
'',
'',
'["1, 2, 3, 4;","1, 3, 4, 2;","2, 4, 3, 1;","3, 1, 2, 4;","4, 2, 1, 3."]'::jsonb,
'B',
'A sequência correta é 1, 3, 4, 2: a primeira descrição (consolidar valores da sociedade via participação e empoderamento) refere-se à Identidade (1); a segunda (incorporar valor cultural a um bem, ampliando potencial econômico) ao Capital cultural (3); a terceira (dimensão estruturante da vida social e do desenvolvimento) à Vitalidade (4); e a quarta (reconhecer e valorizar elementos singulares da comunidade) à Autenticidade (2).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Pesquisa (Questoes 67 a 78)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Pesquisa',
'Uma equipe de pesquisadores de Administração Pública quer avaliar o impacto de um novo programa de capacitação para servidores públicos sobre a eficiência no atendimento ao cidadão. Foram definidos os seguintes objetivos para a pesquisa: 1. quantificar a melhoria dos indicadores de atendimentos (tempo de atendimento, número de atendimentos etc.); 2. compreender a percepção dos servidores e dos cidadãos atendidos sobre as mudanças provocadas pelo programa; 3. explorar sugestões para melhorar o programa. Diante desse cenário, visando a atingir os objetivos de forma completa e integrada, a abordagem de pesquisa a ser utilizada é a:',
'',
'',
'["experimental, pois só assim será possível testar causalidade sobre a eficiência do programa;","quantitativa, pois permite medir rigorosamente os indicadores de desempenho e tirar conclusões generalizáveis;","exploratória, pois não há hipóteses a serem testadas, apenas descobertas a serem feitas sobre o programa;","qualitativa, porque o mais importante é entender as percepções e experiências dos servidores e usuários dos atendimentos;","mista, pois combina a coleta e a análise quantitativa dos indicadores com a coleta e a análise qualitativa das percepções e sugestões, proporcionando uma visão integrada do fenômeno."]'::jsonb,
'E',
'Como os objetivos combinam a quantificação de indicadores (quantitativo) com a compreensão de percepções e a exploração de sugestões (qualitativo), a abordagem mais adequada é a pesquisa de métodos mistos, que integra as duas dimensões.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Pesquisa',
'Um pesquisador público deseja avaliar o impacto de uma nova política de governança local sobre a percepção de transparência dos cidadãos. Para isso, pretende coletar dados que permitam: 1. quantificar o nível geral de satisfação da população com a transparência; 2. conhecer profundamente as narrativas, críticas e expectativas dos diferentes grupos sociais envolvidos; 3. identificar padrões simbólicos e discursos repetidos nos depoimentos. O pesquisador planeja usar questionários estruturados, entrevistas abertas e análise textual dos relatos coletados. Considerando as informações acima, é correto afirmar que as técnicas de análise de dados apropriadas para assegurar validade e profundidade nos resultados são:',
'',
'',
'["análise fatorial para questionários, análise estatística básica para entrevistas e análise visual para relatos textuais;","estatística descritiva para questionários, análise de conteúdo para entrevistas e análise temática para relatos textuais;","análise univariada para questionários, análise descritiva para entrevistas e análise de discurso para relatos textuais;","análise de regressão para questionários, análise estatística para entrevistas e análise documental para relatos textuais;","análise estatística multivariada para questionários, análise empírica para entrevistas e análise quantitativa para relatos textuais."]'::jsonb,
'B',
'Os questionários estruturados pedem estatística descritiva (quantificar a satisfação); as entrevistas abertas, análise de conteúdo (narrativas e expectativas); e os relatos textuais, análise temática (padrões e discursos recorrentes). A combinação assegura validade e profundidade.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Pesquisa',
'Em uma pesquisa envolvendo entrevistas com usuários de serviços públicos, a equipe de pesquisa precisa garantir o tratamento ético dos dados e o respeito aos direitos dos participantes. Considerando as melhores práticas éticas em pesquisa na Administração Pública, o procedimento correto para o caso é:',
'',
'',
'["garantir o anonimato dos participantes nas etapas de análise e publicação, podendo registrar seus nomes e contatos para eventuais esclarecimentos durante a coleta;","coletar os dados sem explicitar todos os detalhes do estudo inicialmente, para evitar que informações antecipadas influenciem as respostas e comprometam a qualidade dos resultados;","compartilhar os dados com órgãos públicos parceiros, desde que sejam mantidos os cuidados básicos de segurança, sem necessidade de autorização explícita dos participantes;","informar os participantes sobre o objetivo geral da pesquisa e assegurar-lhes que os dados serão usados apenas internamente, sem necessidade de consentimento formal, para agilizar o processo;","obter o consentimento esclarecido de cada participante, explicando os objetivos, possíveis riscos e garantias de confidencialidade e assegurando que a participação é voluntária e pode ser interrompida a qualquer momento."]'::jsonb,
'E',
'A boa prática ética exige o consentimento livre e esclarecido: o participante deve ser informado sobre objetivos, riscos e garantias de confidencialidade, com participação voluntária e possibilidade de interrupção a qualquer momento.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Pesquisa',
'Em um estudo de caso realizado em uma escola pública, pesquisadores observaram que as práticas pedagógicas tradicionais dificultavam a inclusão de estudantes de contextos culturais diversos. Para enfrentar esse desafio, foram implementadas ações que valorizavam o capital cultural de diferentes grupos. Considerando essa experiência local, é correto afirmar que a contribuição dos estudos de caso para a compreensão e transformação dos processos educativos, em contextos culturais diversos, consiste em:',
'',
'',
'["descrever os processos administrativos;","fornecer dados abstratos e generalizáveis a todas as instituições educacionais de maneira imediata;","permitir testar hipóteses gerais e quantificáveis sobre a influência do capital cultural na aprendizagem escolar;","possibilitar a análise detalhada das interações sociais e culturais dentro do contexto específico, revelando as dinâmicas que impactam a educação;","substituir outras metodologias, uma vez que estudos de caso tendem a fornecer elementos que permitem a análise de todos os aspectos do fenômeno educacional em uma única investigação."]'::jsonb,
'D',
'A força do estudo de caso é possibilitar a análise detalhada e aprofundada das interações sociais e culturais dentro de um contexto específico, revelando as dinâmicas que impactam a educação — e não a generalização estatística imediata.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Pesquisa',
'Um órgão público pretende avaliar a eficácia de uma nova intervenção aplicada a servidores responsáveis pelo atendimento ao cidadão, cujo objetivo é reduzir o tempo médio de resposta e aumentar a satisfação dos usuários. Para isso, o projeto inclui implementar um programa de treinamento intensivo. A equipe de pesquisa deseja estabelecer uma relação causal clara entre a aplicação do treinamento e as mudanças observadas nos indicadores de desempenho e satisfação. A abordagem metodológica mais adequada para essa pesquisa é:',
'',
'',
'["a pesquisa levantamento (survey), pois permite coletar amplos dados autorreferidos de satisfação tanto dos servidores quanto dos cidadãos, viabilizando a análise estatística dos resultados percebidos após o treinamento;","a pesquisa experimental, pois envolve manipulação de variável independente, aplicação de grupo de controle e aleatorização, possibilitando avaliar a consequência da intervenção sobre os indicadores de desempenho;","a pesquisa qualitativa etnográfica, já que investiga de forma aprofundada a cultura organizacional e os processos de interação presentes, identificando elementos implícitos nas experiências dos servidores e dos usuários;","a pesquisa documental, porque permite rastrear, por meio de registros administrativos do órgão, as alterações históricas nos processos e associá-las à implantação do novo programa de treinamento;","a pesquisa-ação, porque favorece a participação dos servidores na construção e avaliação da intervenção, promovendo melhorias constantes a partir da reflexão conjunta sobre as práticas."]'::jsonb,
'B',
'Para estabelecer relação causal clara entre a intervenção (treinamento) e os resultados, a abordagem adequada é a pesquisa experimental, que envolve manipulação da variável independente, grupo de controle e aleatorização, controlando fatores externos.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Pesquisa',
'Em diversas experiências brasileiras, a articulação entre universidade, Estado e sociedade civil tem sido essencial para potencializar ações públicas e fortalecer a democracia participativa. Uma dessas práticas envolve a produção conjunta de conhecimento que considera tanto os saberes acadêmicos quanto os saberes sociais presentes nas comunidades. Considerando esse contexto, o principal benefício desse tipo de articulação para a formulação e a implementação de políticas públicas é:',
'',
'',
'["restringir o debate público ao campo acadêmico, para evitar conflitos e polêmicas entre os diversos setores sociais;","valorizar principalmente a aplicação dos métodos científicos acadêmicos para a formulação de políticas eficientes;","diminuir a influência política no processo decisório, aproximando a gestão pública dos especialistas técnicos;","simplificar processos ao reduzir o número de atores envolvidos na tomada de decisão, acelerando a implementação das políticas;","ampliar a legitimidade e a adequação das políticas públicas ao integrar conhecimentos diversos, promovendo soluções mais contextualizadas e participativas."]'::jsonb,
'E',
'A produção conjunta de conhecimento (acadêmico e social) amplia a legitimidade e a adequação das políticas públicas, pois integra múltiplos saberes e produz soluções mais contextualizadas e participativas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Pesquisa',
'Uma equipe de pesquisadores em Administração Pública deseja estudar as causas das baixas taxas de participação cidadã em conselhos municipais de saúde. Estão elaborando um problema de pesquisa bem definido, que permita orientar a formulação de hipóteses e o desenho metodológico adequado. O problema de pesquisa, para ser válido e útil, deve ser definido como uma questão que identifique claramente uma situação e que permita o estabelecimento de perguntas precisas. Assim sendo, o problema deve:',
'',
'',
'["responder conclusivamente às causas do fenômeno, dispensando a necessidade de coleta de dados complementares;","delimitar um tema amplo, com foco em múltiplas variáveis, garantindo a generalização dos resultados;","apresentar um fenômeno específico e problematizar uma lacuna ou contradição;","descrever um conjunto de opiniões e percepções, baseando-se primordialmente em dados qualitativos não estruturados;","evidenciar sua solução, possibilitando a escolha imediata das melhores estratégias de intervenção pública."]'::jsonb,
'C',
'Um bom problema de pesquisa deve apresentar um fenômeno específico e problematizar uma lacuna ou contradição a ser investigada, permitindo a formulação de hipóteses testáveis e o desenho metodológico — não antecipar a resposta nem ser excessivamente amplo.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Pesquisa',
'Um grupo de estudantes está iniciando um trabalho científico e percebe que muitos colegas têm dificuldades para compreender a importância da metodologia no processo de pesquisa. Surge a necessidade de esclarecer o que significa seguir uma metodologia adequada e estruturada. A metodologia científica deve ser conceituada como o conjunto de procedimentos que:',
'',
'',
'["permite flexibilizar os métodos para se adaptar às circunstâncias particulares da pesquisa;","visa a sistematizar as etapas da pesquisa, garantindo a coerência entre objetivos, métodos e resultados esperados;","contempla o uso de métodos qualitativos, evitando o uso de dados quantitativos para reduzir parcialidade;","é usado para cumprir exigências formais de trabalhos acadêmicos;","envolve revisão da literatura e coleta de dados, deixando a análise para decisões baseadas em impressões do pesquisador."]'::jsonb,
'B',
'A metodologia científica é o conjunto de procedimentos que sistematiza as etapas da pesquisa, assegurando a coerência entre objetivos, métodos e resultados esperados, conferindo rigor e validade ao estudo.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Pesquisa',
'Uma pesquisa em Administração Pública está analisando o desempenho de unidades de atendimento ao cidadão por meio de observações sistemáticas. Os pesquisadores aplicaram uma ficha de observação estruturada, anotando comportamentos específicos (tempo de atendimento, clareza das informações, cortesia) em escala numérica e realizaram entrevistas semiestruturadas com gestores. Para integrar os dados coletados e identificar se há relação entre práticas gerenciais e desempenho, as técnicas de análise indicadas para essa pesquisa são:',
'',
'',
'["análise temática para a ficha de observação e análise quantitativa para as entrevistas;","análise descritiva dos dados quantitativos e pesquisa experimental para as entrevistas;","análise fatorial exploratória para as entrevistas e análise univariada para a ficha de observação;","análise documental para a ficha de observação e análise estatística inferencial para as entrevistas;","correlação estatística entre indicadores quantitativos da ficha de observação e análise de conteúdo das entrevistas."]'::jsonb,
'E',
'A ficha de observação (dados numéricos) pede correlação estatística entre os indicadores; as entrevistas semiestruturadas (dados qualitativos) pedem análise de conteúdo. Essa combinação integra as duas naturezas de dados para identificar relações entre práticas gerenciais e desempenho.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Pesquisa',
'Um grupo de pesquisadores está desenvolvendo uma investigação para avaliar os impactos ambientais de um programa governamental de reflorestamento urbano na biodiversidade local. Durante a definição do protocolo, precisam formular hipóteses que orientem o desenho metodológico. Para servir como base para o planejamento da pesquisa e possibilitar sua comprovação ou refutação empírica, as hipóteses a serem formuladas devem:',
'',
'',
'["apresentar suposições testáveis que indiquem relações possíveis entre variáveis, direcionando a investigação científica para validar ou invalidar essas conexões;","expressar previsões amplas que deixem a coleta de dados orientar os caminhos da análise, privilegiando interpretações flexíveis;","refletir opiniões dos pesquisadores sobre os resultados esperados, priorizando perspectivas subjetivas para embasar a pesquisa;","propor estratégias para reverter os impactos ambientais;","analisar e descrever fenômenos observados sem propor relações ou causas entre as variáveis envolvidas."]'::jsonb,
'A',
'Hipóteses científicas devem ser suposições testáveis que indiquem relações possíveis entre variáveis, permitindo a validação ou refutação empírica e orientando o desenho da pesquisa.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Pesquisa',
'Um pesquisador decide coletar dados qualitativos em uma pesquisa sobre a transformação tecnológica na vida cotidiana de jovens estudantes universitários de 18 a 26 anos. Nesse caso, a entrevista episódica é uma opção interessante porque:',
'',
'',
'["tem elevada capacidade de captar percepções, por empregar escala do tipo Likert;","faz obrigatoriamente uso da triangulação, o que a torna uma das formas de entrevista mais robustas;","se apresenta em formatos que podem ser autoaplicados, o que otimiza o tempo da coleta de dados;","pode captar a representação social de um conhecimento específico partilhado pelos membros de um grupo;","leva à elaboração de indicadores e índices, muito úteis para a formulação de políticas públicas sobre ciência e tecnologia."]'::jsonb,
'D',
'A entrevista episódica combina narrativas de episódios concretos com respostas conceituais, sendo adequada para captar a representação social de um conhecimento específico partilhado pelos membros de um grupo (aqui, os jovens universitários).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Pesquisa',
'Um estudo de caso único foi usado para identificar como ocorre a participação social no processo de implementação do Programa de Regionalização do Turismo, usando categorias de análise predefinidas pelos modelos teóricos de governança. A coleta de dados se deu por meio de entrevistas semiestruturadas com 59 atores-chave. Considerando a natureza do estudo de caso, o tipo de contribuição que esses resultados poderiam gerar para o desenvolvimento de políticas públicas é conhecido como:',
'',
'',
'["generalização a verdades universais, que sirvam de modelo de governança para os demais programas;","generalização analítica, em função dos dados quantitativos e indicadores socioeconômicos;","generalização analítica, em função de proposições teóricas derivadas dos resultados;","generalização estatística baseada no conjunto de evidências qualitativas reunidas;","generalização estatística a partir de uma amostra representativa do grupo estudado."]'::jsonb,
'C',
'O estudo de caso produz generalização analítica, isto é, a extensão de proposições teóricas derivadas dos resultados (confronto entre teoria e evidências), e não a generalização estatística para uma população a partir de amostra.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- Avaliacao (Questoes 79 a 90)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Avaliação',
'Uma fundação pública está avaliando um programa cultural voltado à formação artística de jovens. Como parte do processo de monitoramento e avaliação, foram definidos os seguintes indicadores: I. percentual de oficinas realizadas conforme o cronograma previsto; II. percentual de jovens egressos que ingressaram em cursos técnicos ou universidades da área cultural; III. percentual de participantes que desenvolveram habilidades técnicas e criativas após a formação. Com base na teoria de avaliação, os indicadores propostos podem ser classificados, respectivamente, como indicadores de:',
'',
'',
'["resultado, impacto e processo;","processo, impacto e resultado;","processo, resultado e impacto;","impacto, processo e resultado;","resultado, processo e impacto."]'::jsonb,
'B',
'O indicador I mede a execução das atividades (processo); o II mede efeitos de médio/longo prazo, como a continuidade de trajetórias (impacto); e o III mede o efeito imediato da formação, as habilidades desenvolvidas (resultado). Logo: processo, impacto e resultado.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Avaliação',
'Os indicadores de avaliação de políticas públicas podem ser categorizados conforme diferentes taxonomias. Conforme Bonnefoy (2005) e Jannuzzi (2005), uma delas classifica os indicadores de acordo com sua posição na cadeia lógica de implementação. Considere que uma Secretaria Estadual de Educação está implementando um programa de formação continuada para professores cujo objetivo é aprimorar a prática pedagógica e, a longo prazo, contribuir para a melhoria do desempenho dos estudantes. Nessa perspectiva, um indicador que poderia ser corretamente utilizado para avaliar o programa é:',
'',
'',
'["o custo total por hora de formação ofertada, que é um indicador de impacto empregado para analisar se os recursos foram utilizados conforme o planejado;","a taxa de evasão escolar, que é um indicador de processo utilizado para verificar se os resultados sociais da política pública foram efetivamente alcançados;","a nota do IDEB após dois anos de formação, que é um indicador de resultado utilizado para medir o efeito de longo prazo do programa sobre o desempenho dos alunos;","a quantidade de horas-aula ministrada por professor em cada disciplina, que é um indicador de impacto utilizado para medir a eficiência dos recursos empregados no programa;","o percentual de professores que aplicaram os conhecimentos adquiridos em sala de aula, que é um indicador de resultado utilizado para avaliar se os objetivos do programa foram atingidos."]'::jsonb,
'E',
'O percentual de professores que aplicaram em sala os conhecimentos adquiridos é um indicador de resultado: mede o efeito direto da formação sobre a prática pedagógica, avaliando se os objetivos imediatos do programa foram atingidos. As demais alternativas classificam incorretamente os indicadores (ex.: o IDEB após dois anos é indicador de impacto, não de resultado).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 81, 'Avaliação',
'Uma fundação pública está avaliando um programa de incentivo à leitura em comunidades vulneráveis e precisa criar um indicador para monitorar a efetividade da política. À luz desse processo, um indicador adequado para monitoramento de políticas e programas públicos deve:',
'',
'',
'["ter sensibilidade estatística e depender de fontes múltiplas e complexas;","ser calculado com base em dados qualitativos e refletir subjetividades locais;","ser construído por especialistas externos para garantir imparcialidade na avaliação;","estar vinculado a um banco de dados nacional e atender exclusivamente a requisitos legais;","apresentar validade, confiabilidade e simplicidade, facilitando sua compreensão e aplicação."]'::jsonb,
'E',
'Um bom indicador deve reunir propriedades como validade (mede o que se propõe), confiabilidade (resultados consistentes) e simplicidade (fácil compreensão e aplicação), favorecendo seu uso efetivo na gestão.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 82, 'Avaliação',
'O modelo conceitual proposto pelo governo federal propõe oito passos para orientar a construção de indicadores de desempenho em políticas públicas: 1) avaliar os objetivos e metas do programa; 2) identificar os interessados nos resultados; 3) definir os tipos de indicadores mais adequados; 4) definir critérios de seleção dos indicadores; 5) mapear indicadores candidatos; 6) analisar trade-offs entre os indicadores; 7) validar os indicadores escolhidos; 8) cadastrar os indicadores definidos. A alternativa que associa um programa público a uma proposta de monitoramento alinhada aos princípios e etapas do modelo conceitual é:',
'',
'',
'["um programa de combate à violência urbana que adota indicadores prontos do Plano Nacional de Segurança, definindo os critérios de seleção apenas após o uso dos dados;","um programa ambiental que seleciona indicadores disponíveis no IBGE e no INPE por critérios de custo e periodicidade, sem vinculação prévia aos objetivos do programa;","um programa de fomento à leitura que define previamente seus objetivos, consulta bibliotecas e leitores como partes interessadas e elabora critérios de seleção antes de escolher os indicadores;","um programa de inclusão digital que inicia o processo com uma análise de dados secundários e define os tipos de indicadores com base na estrutura de relatórios exigidos por órgãos de controle;","um programa de formação técnica que se inicia pelo mapeamento de indicadores usados em políticas semelhantes, adaptando-os diretamente ao novo contexto, sem consulta prévia aos usuários nem validação dos critérios de seleção."]'::jsonb,
'C',
'A alternativa C segue a ordem do modelo: define primeiro os objetivos (passo 1), identifica as partes interessadas (passo 2) e elabora critérios de seleção (passo 4) antes de escolher os indicadores. As demais invertem etapas ou ignoram a vinculação aos objetivos e a validação.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 83, 'Avaliação',
'Durante a implementação de um sistema de monitoramento para uma política pública de fomento à economia criativa, diferentes propostas foram apresentadas pelos setores técnicos envolvidos. Com base nas boas práticas de construção de sistemas de monitoramento de políticas públicas, um sistema bem estruturado deve:',
'',
'',
'["incorporar mecanismos de retroalimentação que permitam reavaliar e ajustar periodicamente os indicadores com base nas evidências empíricas da execução, promovendo coerência metodológica e responsividade gerencial;","centralizar o desenho dos indicadores em núcleos técnicos especializados com menor envolvimento das instâncias executoras, como forma de assegurar independência técnica, padronização conceitual e neutralidade avaliativa;","priorizar a adoção de indicadores provenientes de sistemas estatísticos consolidados, ainda que desvinculados das metas específicas do programa, assegurando comparabilidade externa e aderência a parâmetros nacionais padronizados;","valorizar a complexidade analítica das métricas utilizadas, ainda que sua interpretação operacional exija capacitação especializada, considerando que indicadores de alta densidade técnica fortalecem a credibilidade institucional do monitoramento;","definir o conjunto de indicadores com base na estrutura lógica do programa e em alinhamento às estratégias institucionais, ainda que sem estratégia de coleta definida no momento inicial, considerando que a maturação do sistema ocorrerá progressivamente."]'::jsonb,
'A',
'Um sistema de monitoramento bem estruturado incorpora mecanismos de retroalimentação (feedback) que permitem reavaliar e ajustar periodicamente os indicadores com base nas evidências da execução, garantindo coerência metodológica e responsividade gerencial.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 84, 'Avaliação',
'Uma fundação pública vinculada à área de educação está estruturando um sistema de monitoramento para um programa de fortalecimento das bibliotecas escolares. Durante a fase de planejamento, a equipe elaborou o seguinte esquema básico: objetivo estratégico (ampliar o acesso a livros e à leitura nas escolas públicas); meta (elevar em 25% o número médio de empréstimos mensais de livros por estudante até o final do ano); indicador (número médio mensal de empréstimos por aluno); meio de controle (painel mensal com dados enviados pelas bibliotecas escolares). Avaliando o esquema à luz das boas práticas de um sistema de monitoramento, é correto afirmar que:',
'',
'',
'["o objetivo estratégico está descrito de forma muito específica, o que compromete a definição de indicadores amplos;","o indicador descrito deve ser utilizado ao final do ciclo de implementação, visando a avaliar o alcance das metas previstas;","o indicador descrito está relacionado ao impacto social do programa e, portanto, não deve ser usado como métrica operacional;","a meta apresentada não permite o monitoramento do desempenho, pois está formulada em termos quantitativos e não qualitativos;","o meio de controle descrito é apropriado para apoiar o monitoramento, pois permite acompanhar regularmente a execução da meta."]'::jsonb,
'E',
'O painel mensal com dados enviados pelas bibliotecas é um meio de controle apropriado: permite o acompanhamento regular e sistemático da execução da meta, essência do monitoramento contínuo (e não apenas ao final do ciclo).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 85, 'Avaliação',
'Uma fundação realizou uma pesquisa com beneficiários de um programa de qualificação para mercado de trabalho desenvolvido nacionalmente. A coleta foi feita por equipes descentralizadas e os analistas, recém-admitidos, desejam usar os dados consolidados para testar a hipótese: mulheres com mais tempo de permanência no programa apresentam maior renda mensal. Para viabilizar testes estatísticos válidos a partir da base de dados e responder à pergunta de pesquisa, na etapa do tratamento dos dados, os analistas devem:',
'Amostra da base de dados consolidada (cada linha = um respondente). Data de Nascimento | Data da Entrevista | Renda Mensal | Sexo | Desde quando no programa? -- 12/05/1992 | 10/04/2025 | 1200 | F | 01/03/2016 -- 08/02/2025 | 09/04/2025 | mil | Feminino | 15/08/2018 -- 04/10/1985 | 08/04/2025 | 2K | fem. | 10/06/2015 -- 21/09/1990 | 10/04/2025 | 900 | FEMININO | 20/02/2021 -- 12/03/1982 | 10/04/2025 | 1300 | F | 05/07/2017.',
'',
'["considerar que a variável sexo não precisa de ajustes, já que a pesquisa foi planejada para mulheres, preservar a base como recebida, desprezar inconsistências nas datas, utilizar os dados disponíveis sem padronização e seguir diretamente para a análise;","padronizar os dados da variável sexo, ajustar datas inconsistentes, converter a renda para um formato numérico, criar a variável tempo de permanência com base nas variáveis coletadas e aplicar técnicas de tratamento para valores ausentes;","calcular o tempo de permanência das beneficiárias no programa com base na diferença entre a data de nascimento e a data da entrevista, aplicar os testes diretamente e interpretar os resultados com cautela, não sendo necessário ajustar variáveis como sexo e renda;","concluir que a pergunta de pesquisa não pode ser respondida, já que não há informações sobre a renda no momento de entrada no programa, manter a base original, focar em outras análises possíveis, evitar criar variáveis derivadas e suspender o uso dos dados inconsistentes;","preservar a base de dados original sem ajustes, utilizar apenas os registros completos para não comprometer os dados inserindo valores estimados para dados ausentes, ignorar erros nas demais variáveis, aplicar diretamente os testes estatísticos e basear conclusões apenas nos dados válidos."]'::jsonb,
'B',
'O tratamento adequado exige: padronizar a variável sexo (F, Feminino, fem., FEMININO), corrigir datas inconsistentes (ex.: data de nascimento 08/02/2025), converter a renda para formato numérico (mil, 2K para valores), criar a variável tempo de permanência a partir das datas e tratar valores ausentes. Só assim os testes estatísticos serão válidos.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 86, 'Avaliação',
'A tipologia sobre mecanismos de dados faltantes, estabelecida por Rubin (1976), define diferentes tratamentos estatísticos. Uma equipe de analistas trata os dados de uma pesquisa aplicada a jornalistas e comunicadores. Dois padrões de ausência chamaram atenção: parte dos respondentes deixou em branco a variável "tempo de leitura semanal de portais de notícia", o que ocorreu com mais frequência entre comunicadores de áreas como cultura, entretenimento e arte; e parte deixou em branco a variável "data de início da carreira", o que ocorreu com mais frequência nos respondentes com menor tempo de atuação profissional. Considerando essa pesquisa, os analistas podem concluir que tais dados ausentes:',
'',
'',
'["são do tipo omissos completamente ao acaso (MCAR), pois os respondentes omitiram espontaneamente suas respostas e, portanto, devem ser excluídos da base de dados sem impacto estatístico;","irão enviesar os resultados da pesquisa, a despeito de serem classificados como MCAR, MNAR ou MAR, e, portanto, devem ser excluídos da base de dados, bem como as demais informações fornecidas pelos respectivos respondentes;","são do tipo omissos completamente ao acaso (MCAR), pois não dependem de qualquer variável observável ou não observável e, portanto, podem ser estimados conforme as técnicas de imputação apropriadas;","são do tipo omissos não aleatoriamente (MNAR), pois a ausência depende do próprio valor faltante, e, portanto, devem ser excluídos da base de dados, bem como as demais informações fornecidas pelos respectivos respondentes;","são do tipo dados omissos aleatoriamente (MAR), pois a ausência está relacionada a outras variáveis observadas, como área de atuação e tempo de carreira, e, portanto, podem ser estimados conforme as técnicas de imputação apropriadas."]'::jsonb,
'E',
'A ausência está associada a variáveis observadas (área de atuação e tempo de carreira), caracterizando dados omissos aleatoriamente (MAR, missing at random), que podem ser estimados por técnicas de imputação apropriadas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 87, 'Avaliação',
'Uma equipe do governo federal está utilizando ferramentas de Big Data para analisar os padrões de engajamento digital da população com campanhas de utilidade pública. Após analisar o desempenho passado de campanhas similares e identificar padrões temporais e temáticos, a equipe deseja usar esses padrões para planejar melhor as futuras postagens e sugerir ações que ampliem o alcance e a interação com o público. Diante do contexto apresentado, nesse momento, o tipo de análise a ser utilizado pela equipe corresponde à:',
'',
'',
'["análise prescritiva, para propor ajustes estratégicos baseados em padrões detectados anteriormente;","análise descritiva, para medir a quantidade de postagens feitas em cada rede social ao longo do tempo;","análise preditiva, para identificar os motivos que levaram ao baixo desempenho de campanhas anteriores;","análise exploratória, para investigar sentimentos expressos nas interações do público sem objetivo definido;","análise diagnóstica, para recomendar o horário ideal de postagem com base na taxa de engajamento histórica."]'::jsonb,
'A',
'Como a equipe deseja usar os padrões identificados para sugerir ações e ajustes estratégicos (o que fazer), trata-se de análise prescritiva, que recomenda cursos de ação a partir das evidências analisadas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 88, 'Avaliação',
'Uma equipe técnica precisa planejar uma pesquisa amostral para estimar a proporção de municípios com execução satisfatória de metas de um programa federal. Critérios definidos: margem de erro máxima de 4%; nível de confiança de 95%; municípios com desempenho bom rejeitados erroneamente em, no máximo, 5% dos casos; municípios com desempenho ruim aceitos erroneamente em, no máximo, 10% dos casos. Com base nessas informações, uma interpretação adequada dos parâmetros definidos pela equipe é a de que:',
'',
'',
'["a rejeição de municípios que apresentem até 5% de metas descumpridas caracteriza um erro tipo II, indicando falha na detecção de conformidade;","o erro do tipo I está associado à aceitação indevida de municípios com desempenho insatisfatório, o que pode comprometer a credibilidade do programa;","a equipe pretende manter o erro tipo I em 5% e o tipo II em 10%, o que exigirá uma amostra suficientemente grande para garantir poder estatístico e minimizar rejeições indevidas;","como o nível de confiança adotado é de 95% e a margem de erro é de 4%, é possível estimar a proporção populacional com segurança mesmo sem controle sobre os erros tipo I e II;","em situações sem informação prévia sobre a proporção de municípios com bom desempenho, o valor de 0,25 deve ser utilizado no cálculo da amostra, pois reduz o viés amostral e aumenta a precisão da inferência."]'::jsonb,
'C',
'Rejeitar erroneamente um município bom (falso positivo) é o erro tipo I, fixado em 5%; aceitar erroneamente um município ruim (falso negativo) é o erro tipo II, fixado em 10%. Controlar ambos exige amostra suficientemente grande para garantir poder estatístico e minimizar rejeições indevidas.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 89, 'Avaliação',
'Uma equipe técnica está avaliando a satisfação de beneficiários de um programa habitacional. Foi realizada uma amostra aleatória de 625 famílias, extraídas de uma população de 2.500 famílias. A média da nota de satisfação foi de 7,2 (escala de 0 a 10) e a variância populacional previamente estimada é de 1,44. A equipe deseja construir um intervalo de confiança de 95% para a média populacional. Com base nesses dados, o intervalo de confiança de 95% para a média populacional é, aproximadamente:',
'Valores da curva normal padrão (Z): z = 0,67 -> P=0,50; z = 0,95 -> P=0,66; z = 1,00 -> P=0,68; z = 1,28 -> P=0,80; z = 1,48 -> P=0,86; z = 1,64 -> P=0,90; z = 1,96 -> P=0,95. Dados: n=625; media=7,2; variancia=1,44 (desvio padrao=1,2); z(95%)=1,96.',
'',
'["[7,00 ; 7,40];","[7,04 ; 7,36];","[7,08 ; 7,32];","[7,10 ; 7,30];","[7,12 ; 7,28]."]'::jsonb,
'D',
'Desvio padrão = raiz(1,44) = 1,2; erro padrão = 1,2 / raiz(625) = 1,2 / 25 = 0,048. Aplicando a correção para população finita raiz((N-n)/(N-1)) = raiz((2500-625)/2499) ≈ 0,866, o erro padrão corrigido ≈ 0,0416. A margem com z = 1,96 arredonda o intervalo para aproximadamente 7,2 ± 0,10, isto é, [7,10 ; 7,30], conforme o gabarito oficial (D).'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 90, 'Avaliação',
'Uma equipe do Ministério Alfa conduz um projeto baseado em Big Data para entender o perfil de acesso da população a atividades financiadas com recursos federais. Como a pesquisa ainda não tem uma variável-alvo definida, o objetivo inicial é identificar grupos latentes de usuários com padrões semelhantes de comportamento; depois, avaliar os fatores que contribuem para o engajamento cultural em regiões com baixa participação e, por fim, recomendar estratégias de ampliação de acesso. Considerando os modelos multivariados, a natureza da base de dados e os objetivos e etapas propostos, a equipe responsável deveria:',
'',
'',
'["começar com análise de séries temporais desagregadas por faixa etária e, a partir delas, gerar agrupamentos por similaridade de comportamento;","aplicar análise prescritiva com base em redes neurais profundas desde o início, pois a ausência de variável-alvo impede o uso de aprendizado supervisionado;","iniciar com clusterização por k-médias, caracterizar os grupos com análise descritiva e, então, empregar regressão preditiva para estimar o impacto de intervenções;","utilizar agrupamento hierárquico para redução de dimensionalidade, seguido de técnicas de análise discriminante para prever padrões de engajamento futuro;","aplicar regressão logística sobre variáveis de participação por região e perfil, seguida de análise de variância, para testar diferenças estatísticas significativas entre os grupos."]'::jsonb,
'C',
'Como não há variável-alvo, começa-se com aprendizado não supervisionado (clusterização por k-médias) para identificar grupos latentes; caracterizam-se os grupos com análise descritiva; e, por fim, usa-se regressão preditiva para estimar o impacto de intervenções — percurso coerente com os objetivos e etapas propostos.'
from public.exams where slug = 'cnu-2025-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
