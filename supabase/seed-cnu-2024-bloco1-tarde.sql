-- Seed: CNU 2024 - Bloco 1 (Infraestrutura, Exatas e Engenharia) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 01/2024 - Banca FGV/Cesgranrio
-- Prova 9 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-E,2-C,3-E,4-B,5-A,6-D,7-E,8-C,9-B,10-A,11-C,12-A,13-D,14-E,15-E,16-E,17-E,18-B,19-D,20-C,
--           21-A,22-D,23-B,24-C,25-C,26-ANULADA,27-E,28-E,29-C,30-A,31-C,32-D,33-A,34-E,35-B,36-E,37-E,38-D,39-A,40-C,
--           41-ANULADA,42-B,43-E,44-B,45-C,46-E,47-B,48-D,49-A,50-C
-- Observacao: as questoes 26 e 41 foram ANULADAS pela banca; mantidas com placeholder para nao quebrar o app.
-- Imagens (em /public): questoes 22, 37, 43, 46 e 48.

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco1-tarde', 'CNU 2024 - Bloco 1 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'O desenvolvimento do cronograma de um projeto requer inferir as durações de suas atividades, em função da projeção da quantidade de esforço de trabalho requerida para concluí-las e da quantidade de recursos disponíveis estimados para completá-las. A Estimativa Paramétrica, uma das técnicas que pode ser utilizada no apoio do desenvolvimento do cronograma de um projeto, consiste em',
'',
'',
'["agregar estimativas dos componentes de nível mais baixo da estrutura analítica do projeto (EAP).","contratar um consultor externo com experiência em projetos similares para estimar parâmetros para o novo projeto.","aplicar uma média ponderada das estimativas otimistas, pessimistas e mais prováveis, quando existe incerteza em relação às estimativas da atividade em questão.","usar parâmetros de um projeto anterior semelhante como base para a estimativa dos mesmos parâmetros ou de medidas para um projeto futuro.","usar um algoritmo para calcular, estatisticamente, o custo ou a duração de atividades com base em dados históricos e em parâmetros do projeto, para calcular uma estimativa dos parâmetros da atividade, tais como custo, orçamento e duração."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Eixo 1',
'As unidades de saúde de um município passaram a oferecer novos serviços de saúde para a população, tais como orientação nutricional e fisioterapia, e o prefeito gostaria que seus munícipes ficassem sabendo disso o quanto antes. Para tanto, a assessoria de imprensa da Secretaria de Saúde preparou um documento, de apenas uma página, contendo as informações a respeito dos novos serviços e distribuiu esse documento aos jornalistas de emissoras de rádio e televisão do município e da capital. Nesse caso, identifica-se um exemplo de utilização da ferramenta de relações públicas denominada',
'',
'',
'["Lobby","Pôster","Press-release","Media trainning","Gross rating point"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Eixo 1',
'O gerenciamento de programas foca nas interdependências entre projetos como também entre projetos e o nível do programa, para determinar a abordagem ideal para gerenciá-los. Um objetivo do gerenciamento de programas relacionado exclusivamente às interdependências de nível de projeto e programa é:',
'',
'',
'["selecionar a combinação ideal de programas e projetos para cumprir os objetivos estratégicos.","orientar as decisões de investimento organizacional no portfólio de programas e projetos.","garantir que o portfólio de programas, projetos e operações gerenciadas esteja alinhado com as estratégias organizacionais.","aumentar a probabilidade de alcançar o retorno desejado sobre o investimento em programas e projetos.","buscar soluções para restrições e conflitos que afetem os vários projetos no programa."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Eixo 1',
'Na elaboração de seu plano estratégico institucional, uma organização pública desenvolveu uma matriz SWOT. Na análise do cenário, identificou-se um erro na classificação dos componentes. Nesse contexto, segundo a matriz SWOT, há um erro de classificação na identificação de:',
'',
'',
'["fraquezas organizacionais (W): baixa integração entre as áreas de atuação; baixa efetividade da comunicação interna nos níveis estratégico, tático e operacional; e falha sistemática de monitoramento de indicadores e de desempenho.","oportunidades organizacionais (O): intensificação do exercício da cidadania com maior demanda da sociedade pelos produtos e serviços prestados; fomento à autonomia institucional; restrições orçamentárias; e dificuldade para firmar parcerias.","ameaças organizacionais (T): descontinuidade nas estratégias e políticas governamentais; perda de servidores qualificados com outras oportunidades de trabalho; conflitos de interesse que possam influenciar as decisões; e as ações de controle interno.","fortalezas organizacionais (S): identificação dos servidores com a missão institucional; padrões de comportamento baseados em valores e princípios constitucionais, legais e organizadores; e lealdade institucional dos servidores com o órgão.","fortaleza organizacional (S): oportunidade de crescimento profissional; fraqueza organizacional (W): insuficiente cultura interna de valorização do planejamento; oportunidade organizacional (O): compartilhamento e disseminação de boas práticas na gestão pública."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Eixo 1',
'Vários estudos indicam que, no setor público, predominam níveis de motivação intrínseca superiores aos níveis de motivação extrínseca. Um gerente de RH de uma empresa pública confirmou esses estudos quando constatou que a maioria de seus servidores concordaram com a seguinte afirmativa:',
'',
'',
'["\"O que mais me importa é sentir prazer pelo que faço e tentar resolver problemas complexos, já que a curiosidade é a força motriz do meu trabalho\".","\"Não fico muito preocupado com o que os outros pensam do meu trabalho, já que possuo um locus de controle interno baixo, e atribuo o meu comportamento a necessidades internas\".","\"Sou fortemente motivado pelo dinheiro que posso ganhar, e busco sempre recompensas como salários e outros benefícios monetários, diminuição da carga de trabalho e promoções\".","\"Fico mais preocupado com o que me pagam do que com o tipo trabalho que tenho de fazer, já que tenho de sentir que estou ganhando alguma coisa pelo trabalho que realizo\".","\"Prefiro que alguém estabeleça para mim os objetivos que devo atingir a nível profissional, já que acredito que não faz sentido realizar um bom trabalho se mais ninguém souber disso\"."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Eixo 1',
'Em junho de 2023, um órgão recebeu um crédito orçamentário de R$ 17 milhões, por suplementação, para cumprir acordo com o Ministério Público (obras de recuperação de edifício tombado). O órgão não conseguiu preparar os projetos para licitar antes do encerramento do exercício e, para não perder os recursos, empenhou o valor para cobrir outros contratos com empenhos insuficientes, descumprindo o programa de trabalho original. Esse tipo de situação está compreendido no âmbito das atividades relativas a',
'',
'',
'["auditoria de gestão","auditoria operacional","tomada de contas especial","controle da execução orçamentária","avaliação da fidelidade funcional dos agentes públicos"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Eixo 1',
'Um órgão estava conduzindo a implantação da Política de Gestão de Riscos aprovada pelo seu Comitê de Governança. Na etapa de identificação de eventos de risco, foi apontada a necessidade de identificar eventos capazes de impactar os objetivos de comunicação externa das informações financeiras da organização. Pelas suas características intrínsecas, uma técnica adequada para identificar esse tipo de evento é',
'',
'',
'["inventário de eventos","análise de alçadas e limites","análise de fluxos de processos","proposição de indicadores preventivos de eventos","realização de seminários e entrevistas com facilitadores"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Eixo 1',
'Em janeiro de 2023, um órgão recebeu um pedido de acesso a informação que requeria cópias com inteiro teor dos contratos de vigilância armada vigentes de 2007 a 2014. Houve um incêndio que destruiu o acervo físico, e para atender o pedido o órgão precisaria designar comissão para reconstituir os processos. Considerando o compromisso com a transparência e a legislação aplicável, o referido pedido de acesso à informação',
'',
'',
'["deve ser atendido em até 180 dias, pela necessidade de levantamento das informações.","deve ser encaminhando à deliberação do ministério acerca do seu atendimento.","não é de atendimento obrigatório, pois exige trabalho adicional de processamento de informações indisponíveis.","pode ser atendido, desde que o motivo do pedido de acesso à informação seja considerado relevante.","tem atendimento facultativo se o requerente aceitar expressamente aguardar o prazo necessário para levantar as informações."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Eixo 1',
'P e R trabalham na gerência operacional de uma empresa pública de tecnologia da informação que vem apresentando baixa eficiência em seus processos produtivos. Para melhorar a eficiência dos processos, o gerente da unidade pediu que eles organizassem as etapas fundamentais do processo de gestão estratégica, que são:',
'',
'',
'["desenvolvimento de produto, marketing, vendas e pós-venda","análise, planejamento, implementação e monitoramento","recrutamento, seleção, treinamento e desenvolvimento","compra, produção, distribuição e contabilidade","inovação, financiamento, aquisições e fusões"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Eixo 1',
'As políticas públicas dos Estados contemporâneos são um dos ramos mais importantes do pensamento social da atualidade para a qualidade de vida em diversos níveis e em escalas geográficas distintas. Tais políticas serão mais bem-sucedidas quando, no nível da ação, a articulação entre as parcerias público-privadas e os governos locais, estaduais e federal seja',
'',
'',
'["flexível e adaptável","pragmática e rígida","objetiva e restritiva","subjetiva e limitada","hierárquica e finita"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Eixo 2',
'A Política Nacional de Saneamento Básico está estruturada principalmente através das Leis no 11.445/2007 e no 14.026/2020. O conjunto de serviços públicos, infraestruturas e instalações está separado em grandes áreas operacionais. As atividades de ligação predial necessárias à coleta de efluentes e de construção de emissário submarino para disposição final estão relacionadas à área de',
'',
'',
'["abastecimento de água potável","limpeza urbana e manejo de resíduos sólidos","esgotamento sanitário","controle de vetores","drenagem e manejo das águas pluviais urbanas"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Eixo 2',
'Uma importante ferramenta introduzida pela Política Nacional de Resíduos Sólidos, visando à implementação da responsabilidade compartilhada pelo ciclo de vida dos produtos, é a Logística Reversa. Considere que uma empresa do comércio varejista vende pilhas e baterias, alimentos, roupas, bebidas, pneus, lâmpadas de vapor de sódio e produtos eletrônicos. Segundo a Política Nacional de Resíduos Sólidos, essa empresa é obrigada a estruturar e implementar sistema de logística reversa para',
'',
'',
'["lâmpadas de vapor de sódio, pilhas e baterias, pneus e produtos eletrônicos.","roupas de poliéster, embalagens de bebidas, alimentos perecíveis e pneus.","alimentos perecíveis, produtos eletrônicos, embalagens de bebidas e pilhas e baterias.","pilhas e baterias, alimentos perecíveis, lâmpadas de vapor de sódio e embalagens de bebidas.","produtos eletrônicos, pneus, lâmpadas de vapor de sódio e roupas de poliéster."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Eixo 2',
'A política urbana tem por objetivo ordenar o pleno desenvolvimento das funções sociais da cidade e da propriedade urbana. Diversas classes de instrumentos podem ser usadas para implementação dessa política. Um exemplo de instrumento de política urbana classificado como instituto jurídico e político, segundo a Lei no 10.257/2001, é o(a)',
'',
'',
'["imposto sobre a propriedade predial e territorial urbana","plano plurianual municipal","incentivo fiscal municipal","tombamento de imóvel ou de mobiliário urbano","gestão orçamentária participativa"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Eixo 2',
'A usucapião especial de imóvel urbano poderá ser invocada como matéria de defesa. Considere o caso: W é filho único de Z e mora de aluguel em imóvel diferente do que seu pai Z habitava. Z não era proprietário de nenhum imóvel e vivia por 8 anos, ininterruptamente e sem oposição, em área urbana de duzentos metros quadrados, com edificação simples, para sua moradia. Após a morte de Z, W abriu a sucessão e vislumbrou usar a usucapião especial. Nessa situação, juridicamente W',
'',
'',
'["terá direito à usucapião especial de imóvel urbano.","não terá direito à usucapião, pois Z habitava o imóvel ininterruptamente e sem oposição por menos de 10 anos.","não terá direito à usucapião, pois o imóvel habitado por Z possui mais de cento e cinquenta metros quadrados.","não terá direito à usucapião, pois o direito não é extensível a herdeiro legítimo.","não terá direito à usucapião, pois não residia no imóvel de Z por ocasião da abertura da sucessão."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Eixo 2',
'O Decreto no 5.741/2006 organiza o Sistema Unificado de Atenção à Sanidade Agropecuária. As atividades do sistema serão executadas pelas instâncias Central e Superior, Intermediária e Local. Segundo esse instrumento legal, compete às instâncias intermediárias do sistema a seguinte atividade:',
'',
'',
'["vigilância agropecuária de portos, aeroportos e postos de fronteira internacionais.","vigilância agropecuária do trânsito interestadual de vegetais e animais.","manutenção do sistema de informações epidemiológicas.","representação do Brasil nos fóruns internacionais que tratam de defesa agropecuária.","fixação de normas referentes a campanhas de controle e de erradicação de pragas dos vegetais e doenças dos animais."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Eixo 2',
'A Lei no 9.605/1998 estabelece cinco categorias de crimes contra o Meio Ambiente, assim como circunstâncias atenuantes e agravantes. Um agente de órgão de controle ambiental estadual cobrou do empreendedor um Plano de Controle Ambiental (PCA) para um licenciamento que exigiria EIA/RIMA e, imediatamente após a entrega do PCA, liberou a licença de instalação a fim de obter vantagem pecuniária. O fato descrito caracteriza um crime',
'',
'',
'["de poluição, em circunstância agravante","contra o ordenamento urbano, em circunstância atenuante","contra o Meio Ambiente, em circunstância atenuante","contra o ordenamento urbano, em circunstância agravante","contra a administração ambiental, em circunstância agravante"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Eixo 2',
'Um município, em consonância com o Marco Legal de Ciência, Tecnologia e Inovação (Lei no 13.243/2016), está considerando implantar um complexo planejado de desenvolvimento empresarial e tecnológico, promotor da cultura de inovação, da competitividade industrial, da capacitação empresarial e da promoção de sinergias em atividades de pesquisa, desenvolvimento tecnológico e inovação, entre empresas e uma ou mais ICTs. Esse município está considerando a implantação de um(a)',
'',
'',
'["polo tecnológico","parque tecnológico","núcleo de inovação tecnológica","extensão tecnológica","incubadora de empresa"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Eixo 2',
'Uma equipe de funcionários públicos federais, que representa a União em acordos para cadastramento e avaliações de propriedades rurais, solicitou que fosse firmado convênio com um município para unir esforços e recursos. Em conformidade com a Lei no 4.504/1964 (Estatuto da Terra) e suas alterações, esse convênio',
'',
'',
'["pode ser feito, se o município tiver até 10.000 habitantes e pelo menos 50% da sua área for classificada como rural.","pode ser feito, pois essa lei estabelece que a União, os Estados, o Distrito Federal e os Municípios poderão unir seus esforços e recursos.","não pode ser feito, pois, como se trata de recursos, os municípios não têm autonomia para se conveniar.","não pode ser feito, pois essa lei estabelece que a União poderá unir seus esforços e recursos exclusivamente com os Estados.","não pode ser feito, pois, por se tratar de área rural, somente o INCRA dispõe de recursos e tem autonomia para aplicar essa lei."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Eixo 2',
'Um interessado na obtenção de concessão para serviço público pretende registrar, junto à ANEEL, estudos de viabilidade e projetos de aproveitamento de potencial hidráulico, visando ao direito de preferência na concessão. De acordo com a Lei no 9.427/1996 e suas alterações, esse tipo de registro',
'',
'',
'["gera, automaticamente, o direito da futura concessão.","gera a preferência na futura concessão, desde que firmado convênio prévio com a ANEEL.","gera o direito da futura concessão, desde que o terreno marginal ao referido potencial hidráulico esteja nas rotas dos correspondentes sistemas de transmissão.","não gera direito de preferência para a obtenção da concessão do serviço.","não gera direito de preferência, mas gera direito de pontuação extra no certame licitatório para obtenção de concessão."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Eixo 2',
'Uma empresa está iniciando o projeto para construção de uma barragem e estruturou o cronograma de elaboração dos planos, programas e projetos pertinentes, que indicou o tempo total de 4 anos. Como o empreendimento necessita de licenciamento ambiental, alertou-se para a necessidade de obter a Licença Prévia e observar seu prazo de validade. Segundo a Resolução Conama no 237/1997, em relação ao prazo máximo permitido para esse tipo de licença, o prazo de 4 anos indicado no cronograma',
'',
'',
'["ultrapassa o prazo máximo, que é de 2 anos.","ultrapassa o prazo máximo, que é de 3 anos.","está dentro do prazo máximo, que é de 5 anos.","está dentro do prazo máximo, que é de 10 anos.","está dentro do prazo máximo, que é de 15 anos."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)  |  Q26 ANULADA
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Eixo 3',
'A patente relativa à "Bactéria que captura metais" foi concedida, apesar de o todo ou parte dos seres vivos não serem patenteáveis. Isso só foi possível porque o pedido de patente é relativo a um',
'Bactéria que captura metais
Durante seus primeiros anos, a empresa levantou recursos de subvenção para criar um protótipo do seu produto: uma linhagem bacteriana capaz de se ligar a metais pesados em solução, removendo esses elementos de efluentes rurais, domésticos, urbanos e industriais e águas em estações de tratamento; a partir do gene da proteína metalotioneína da ostra Crassostrea rhizophorae [...]. O resultado foi uma bactéria capaz de remover 90% dos metais em solução no laboratório. Em 2016 foi assinado acordo de cooperação técnico-científica e submetido ao INPI pedido de patenteamento da inovação.
REBELO, M. Bactéria que captura metais. Bio Bureau. nov. 2020. Adaptado.',
'',
'["micro-organismo transgênico, apresentando novidade, atividade inventiva e aplicação industrial.","micro-organismo transgênico, caracterizando uma obra intelectual, artística e científica.","processo simplificado, indicando novos princípios e novo método comercial e contábil.","ser vivo artificial, caracterizando uma descoberta de teoria científica.","ser vivo artificial, apresentando um novo método terapêutico e de diagnóstico."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Eixo 3',
'Considere o gráfico da evolução do uso da energia solar térmica no Brasil (Relatório Síntese do BEN 2023, ano base 2022, EPE). Considerando-se que se trata de uma tecnologia de geração de energia renovável que transforma irradiação solar direta em energia térmica e, subsequentemente, em energia elétrica, verifica-se que o aumento do uso dessa tecnologia contribui para a redução das mudanças climáticas porque vem substituindo principalmente o uso residencial de',
'Gráfico: evolução do uso da energia solar térmica no Brasil (Mil GWh), por setor (residencial, comercial e industrial), de 1970 a 2022. Fonte: EPE, BEN 2023.',
'/cnu-2024-1-tarde-questao-22.png',
'["baterias de lítio","energia maremotriz","energia nuclear","gás liquefeito do petróleo - GLP","parafina"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Eixo 3',
'O relato apresentado refere-se a um episódio de Florações Algais Nocivas (FAN), ocorrido em fevereiro de 2024, no litoral de Pernambuco e Alagoas. Um dos fatores observados nas últimas décadas que contribuem para o aumento da intensidade desses fenômenos na região costeira é o(a)',
'Na oportunidade, foi informado que cerca de 200 pescadores apresentaram sintomas da intoxicação durante a maré vermelha. Eles acreditam que o "Tingui" – forma como eles conhecem o fenômeno – foi mais forte do que em anos anteriores, visto que desde a década de 1940 episódios semelhantes ocorreram na região.
NASCIMENTO, L. Agência Brasil, 3 fev. 2024. Adaptado.',
'',
'["aumento do nível do mar.","aumento do descarte de esgoto sem tratamento no litoral.","aumento da captação de água do mar para abastecimento humano.","manutenção da Circulação Termohalina dos oceanos.","instalação de usinas de ondas (ondomotriz)."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Eixo 3',
'Os "Organismos Geneticamente Modificados" (OGM), também conhecidos como "Transgênicos", são organismos que receberam artificialmente um gene de outro organismo. Um dos argumentos usualmente utilizados por aqueles que são contrários ao uso dessa tecnologia é baseado no entendimento de que não há pesquisas científicas que demonstrem apropriadamente que transgênicos não causam impactos ambientais. Esse argumento está fundamentado no chamado Princípio da(o)',
'',
'',
'["Sucumbência","Responsabilidade","Precaução","Poluidor-pagador","Contraditório"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Eixo 3',
'Há um esforço mundial na prática de ações que contribuam para o desenvolvimento sustentável, com o aumento da eficiência energética e o crescimento do uso de fontes renováveis, em substituição às fontes não renováveis. São exemplos, respectivamente, de uma fonte renovável e de uma fonte não renovável de energia:',
'',
'',
'["fissão nuclear e biomassa","carvão vegetal e hídrica","biogás e carvão mineral","gás natural e xisto","biodiesel e marés"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Eixo 3',
'(QUESTÃO ANULADA pela banca) Dentre os vários métodos de avaliação de impacto ambiental, o método da rede de interação',
'',
'',
'["usa listagens de controle que dispõem em linha e coluna os fatores ambientais e as ações decorrentes de um empreendimento, preservando as relações de causa e efeito.","surgiu para identificar os impactos indiretos, isto é, aqueles causados pelos resultados do projeto, de forma separada dos impactos primários.","é uma técnica simples que tem como vantagem a livre comparação entre diversas alternativas de intervenção ao dano, envolvendo os meios físico, biótico e socioeconômico.","é utilizado em fases mais avançadas da avaliação de impactos e apresenta como vantagem permitir as projeções e previsões ou a identificação de impactos de segunda ordem.","trata da confecção de cartas temáticas relativas aos fatores ambientais potencialmente afetados pelas alternativas."]'::jsonb,
'A',
'Questão ANULADA pela banca (Gabarito 1). Mantida no banco apenas para preservar a numeração.'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Eixo 3',
'O Plano Setorial de Mitigação e de Adaptação às Mudanças Climáticas para a Consolidação de uma Economia de Baixa Emissão de Carbono na Agricultura (Plano ABC) é um dos principais instrumentos da política agrícola brasileira para a promoção da sustentabilidade. Entre as práticas sustentáveis e tecnologias ABC encontra-se a(o)',
'',
'',
'["abandono do sistema de plantio direto","desintegração lavoura-pecuária-floresta","exclusão da fixação biológica do nitrogênio","fim da terminação intensiva (fim do manejo alimentar na fase final de produção de bovinos destinados ao abate)","recuperação de pastagens degradadas"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Eixo 3',
'A avaliação de desempenho ambiental (ADA), objeto da norma NBR ISO 14.031:2015, recomenda o uso de indicadores. Os Indicadores de Condição Ambiental (ICA) fornecem informações sobre a condição do ambiente. No caso do interesse em avaliar a relação das operações da empresa e a biodiversidade, um bom ICA a ser adotado é a(o)',
'',
'',
'["quantidade de emissões atmosféricas com potencial de mudança climática global","quantidade de resíduos armazenados no local","quantidade de efluente por serviço ou cliente","progresso nas atividades de remediação locais","número total de espécies da fauna em uma área local definida"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Eixo 3',
'A servidão ambiental é um instrumento econômico de proteção de áreas de vegetação nativa previsto na Política Nacional do Meio Ambiente. Sobre as servidões ambientais, considere as afirmativas: I - A servidão ambiental poderá ser onerosa ou gratuita, temporária ou perpétua. II - O detentor da servidão ambiental poderá aliená-la, cedê-la ou transferi-la, total ou parcialmente, por prazo determinado ou em caráter definitivo, em favor de outro proprietário ou de entidade pública ou privada que tenha a conservação ambiental como fim social. III - A servidão ambiental só se aplica às áreas de preservação permanente e de reserva legal. Está correto APENAS o que se afirma em',
'',
'',
'["I","II","I e II","I e III","II e III"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Eixo 3',
'O Fórum Econômico Mundial se envolveu no debate sobre a responsabilidade social, visto que os aspectos básicos da responsabilidade social precisam estar associados à prática da boa governança. No que diz respeito ao desempenho empresarial, governança corporativa significa a(o)',
'',
'',
'["adequação da empresa às normas locais e internacionais, o atendimento aos requisitos de transparência e accountability, além de seguir as normas de conduta social, ambiental e ética.","ação puramente voluntária, que pode ser realizada através de contribuições financeiras para projetos comunitários ou para instituições de caridade que não têm retornos financeiros esperados.","produção de bens e serviços dos quais a sociedade necessita, com preços justos, de forma que a empresa continue suas atividades maximizando seus lucros para os seus investidores.","elevação da expectativa de que as empresas atendam as metas econômicas dentro da estrutura legal e das exigências legais, impostas pelos conselhos locais das cidades, assembleias legislativas estaduais e agências reguladoras.","compromisso que uma organização deve assumir com obrigações de caráter moral, além das estabelecidas em lei, mesmo que não diretamente vinculadas às suas atividades, mas que possam contribuir para o desenvolvimento sustentável dos povos."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Eixo 4',
'Foi solicitado o estudo da viabilidade financeira para execução de uma ponte entre os pontos P e M. Dados: curso d''água com 20 m entre as margens (em planta); P e M situados a 3 m dos limites das margens; a ponte tem início em P e término em M; largura da ponte em planta de 15 m; custo do metro quadrado R$ 3.000,00; investimento viável se o custo for até R$ 1.200.000,00. A partir dos dados, o gestor considerou que a obra',
'',
'',
'["é viável, uma vez que o valor calculado foi R$ 600.500,00","é viável, uma vez que o valor calculado foi R$ 860.000,00","é viável, uma vez que o valor calculado foi R$ 1.170.000,00","não é viável, uma vez que o valor calculado foi R$ 1.380.000,00","não é viável, uma vez que o valor calculado foi R$ 1.478.060,00"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Eixo 4',
'Um projeto de obra de moradias sociais teve o orçamento dividido em fases: F1 (fundações) = 30%, F2 (estruturas) = 40%, F3 (paredes) = 20% e F4 (complementos) = 10%. Ao final da execução das fundações, foi registrado que o gasto excedeu em R$ 600.000,00 o valor orçado inicialmente, correspondendo esse gasto a mais a 10% do custo orçado para F1. Com base nessas informações, conclui-se que o valor total originalmente orçado para a obra, em reais, foi',
'',
'',
'["66.000.000,00","60.000.000,00","30.000.000,00","20.000.000,00","6.000.000,00"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Eixo 4',
'Um especialista em Política Nacional de Segurança de Barragens explicou que as barragens são classificadas por categoria de risco, por dano potencial associado e pelo seu volume, conforme critérios do Conselho Nacional de Recursos Hídricos (CNRH). Dentre os parâmetros a serem considerados na categoria de risco, está(ão) o(s)',
'',
'',
'["estado de conservação","potencial de perdas de vidas humanas","impactos econômicos por rompimento da barragem","impactos sociais por rompimento da barragem","impactos ambientais por rompimento da barragem"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Eixo 4',
'Um órgão funciona em nova sede com dois blocos. Um funcionário entregou lista com aspectos de acessibilidade e sugestões: I - Acesso à portaria por escada de 6 degraus e 3,00 m de largura; sugestão de deixar 1,50 m de escada e, nos outros 1,50 m, completar os degraus para criar uma rampa. II - Ligação entre blocos por rampa em concreto; sugestão de revestir todo o piso com material em relevo (sinalização tátil de alerta). III - Salas com identificação numérica de pequena altura acima da porta; sugestão de incluir, na parede e na altura da maçaneta, identificação numérica na cor amarela brilhante ou placa com braile. Sob a ótica da norma da ABNT de Acessibilidade, o responsável concluiu que',
'',
'',
'["apenas a sugestão do item I está de acordo com a norma.","apenas a sugestão do item III está de acordo com a norma.","apenas as sugestões dos itens I e II estão de acordo com a norma.","apenas as sugestões dos itens II e III estão de acordo com a norma.","nenhuma sugestão está de acordo com a norma."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Eixo 4',
'Considere as situações verificadas em um órgão público: I - Palestras e cursos presenciais ministrados na forma oral, sem tradução para libras. II - Vagas de estacionamento para pessoas com deficiência indevidamente ocupadas. III - Acesso a determinados ambientes exclusivamente por escadas. IV - Ausência de sinalização tátil direcional e de alerta nos pisos. V - Funcionário surdo não convidado a participar de coreografia com música. Essas situações correspondem, respectivamente, às barreiras:',
'',
'',
'["instrumental, atitudinal, urbanística, metodológica e natural","nas comunicações, atitudinal, arquitetônica, arquitetônica e atitudinal","programática, metodológica, atitudinal, nas comunicações e digital","metodológica, programática, nos transportes, digital e instrumental","digital, tecnológica, arquitetônica, nas comunicações e instrumental"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Eixo 4',
'Um analista foi contratado para subsidiar uma empresa quanto a incentivos fiscais do Governo Federal, entre eles o Regime Especial de Incentivos para o Desenvolvimento de Infraestrutura (Reidi). De acordo com a Lei no 11.488/2007 e suas alterações, podem ser beneficiárias pessoas jurídicas com projeto aprovado para implantação de obras de infraestrutura nos setores de saneamento básico e de transportes. Além desses setores, estão também contemplados o(s) setor(es) de',
'',
'',
'["portos, apenas","energia, apenas","irrigação, apenas","portos e energia, apenas","portos, energia e irrigação"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Eixo 4',
'O cronograma da figura representa as cinco etapas do planejamento de uma obra. Os meses são considerados com a mesma quantidade de dias e as etapas têm distribuição linear nos meses programados. A gerência solicitou o percentual concluído de cada etapa exatamente até a metade do mês 3. Considerando-se as informações, o percentual de cada etapa (ET1, ET2, ET3, ET4, ET5) é',
'Figura: cronograma de barras (Gantt) com cinco etapas distribuídas ao longo de 6 meses. Ver imagem de apoio.',
'/cnu-2024-1-tarde-questao-37.png',
'["100% / 60% / 20% / — / —","100% / 75% / 12,5% / 10% / —","100% / 80% / 50% / 52,5% / 25%","100% / 80% / 25% / 40% / 12,5%","50% / 60% / 50% / 40% / 20%"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Eixo 4',
'Uma empresa executou duas obras simultâneas (Obra Z e Obra Y), com valores orçados de R$ 40.000,00 e R$ 180.000,00, a preço fixo. Já haviam sido recebidos R$ 30.000,00 da Obra Z e R$ 90.000,00 da Obra Y, restando uma fatura de cada. Por não apresentar uma guia de recolhimento, as faturas foram retidas (sem reajustamento). Como levaria 2 meses para cumprir as exigências, a empresa tomou empréstimo no valor das duas faturas restantes, por 2 meses, a juros compostos de 5% ao mês. O prejuízo referente aos juros nas obras Z e Y, respectivamente, corresponde, em reais, aos valores',
'',
'',
'["500,00 e 4.500,00","500,00 e 2.520,00","1.025,00 e 4.500,00","1.025,00 e 9.225,00","1.525,00 e 9.525,00"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Eixo 4',
'Uma região será beneficiada por uma Linha de Transmissão (LT) aérea que passará por dentro de uma fazenda, em região preparada para plantio e cultura de pés de alface. Foi informado que aquela área seria declarada de utilidade pública, à qual foi aplicado o instituto jurídico de servidão administrativa. Portanto, nessa área, dentre outras atividades, o proprietário pode',
'',
'',
'["plantar pés de alface.","realizar qualquer tipo de plantio ou cultivo.","erguer galpões com pé direito de até 6 m.","erguer construções de até quatro pavimentos ou 12 m.","erguer qualquer tipo de construção."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Eixo 4',
'Parte da Política Nacional de Habitação está apresentada no Sistema de Habitação de Interesse Social (SNHIS). Um servidor considerou possíveis diretrizes para a concessão de benefícios: I - impedimento de concessão de benefícios a proprietário de imóvel residencial; II - impedimento de concessão de benefícios a cessionário de imóvel residencial; III - valores de benefícios diretamente proporcionais à capacidade de pagamento das famílias beneficiárias. Conferindo com a legislação em vigor, constatou-se correto o que consta em',
'',
'',
'["I, apenas","III, apenas","I e II, apenas","II e III, apenas","I, II e III"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)  |  Q41 ANULADA
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Eixo 5',
'(QUESTÃO ANULADA pela banca) A realização da correção geométrica de imagens é motivada principalmente pela presença de distorções sistemáticas. A primeira etapa da correção geométrica de imagens, que transforma as coordenadas de imagem bruta em coordenadas geográficas de referência, é denominada',
'',
'',
'["interpolação","registro de imagens","reamostragem","mapeamento inverso","mapeamento direto"]'::jsonb,
'A',
'Questão ANULADA pela banca (Gabarito 1). Mantida no banco apenas para preservar a numeração.'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Eixo 5',
'No âmbito do Poder Executivo federal, a Infraestrutura Nacional de Dados Espaciais (INDE) é definida como o conjunto integrado de tecnologias, políticas, mecanismos e procedimentos de coordenação e monitoramento, padrões e acordos para facilitar e ordenar a geração, o armazenamento, o acesso, o compartilhamento, a disseminação e o uso dos dados geoespaciais. Nesse contexto, os metadados de informações geoespaciais caracterizam-se como',
'',
'',
'["conjunto de dados geoespaciais que possuem restrições de acesso devido a considerações de segurança ou confidencialidade, determinadas pelo órgão responsável pela produção.","conjunto de informações descritivas sobre os dados, incluindo as características do seu levantamento, produção, qualidade e estrutura de armazenamento, essenciais para promover a sua documentação, integração e disponibilização, bem como possibilitar a sua busca e exploração.","sistema de servidores de dados, distribuídos na rede mundial de computadores, capaz de reunir eletronicamente produtores, gestores e usuários de dados geoespaciais.","dados que se distinguem essencialmente pela componente espacial, que associa a cada entidade ou fenômeno uma localização na Terra, traduzida por sistema geodésico de referência.","informações geoespaciais que são coletadas por meio de levantamentos realizados a partir de aeronaves ou drones, proporcionando dados precisos sobre a superfície terrestre."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Eixo 5',
'Imagens de satélite não são uma representação perfeita da realidade. Uma das principais fontes de imperfeição são as distorções geométricas, que podem surgir de variações orbitais do satélite, distorções atmosféricas e erros nos sensores de imagem. A Figura apresentada refere-se a um erro no sensor de imagem referente ao',
'Figura: representação de erro no sensor de imagem (deslocamento devido ao relevo), com o ponto P projetado a partir de altura H sobre a superfície curva da Terra. Ver imagem de apoio.',
'/cnu-2024-1-tarde-questao-43.png',
'["desalinhamento por rotação da terra","deslocamento entre barras de detetores","deslocamento entre bandas","deslocamento entre detetores","deslocamento devido ao relevo"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Eixo 5',
'A interação entre as radiações eletromagnéticas (REM) e os constituintes da superfície terrestre é influenciada por propriedades espectrais dos materiais. A formação do arco-íris é um exemplo específico de um processo ótico de interação entre REM e os constituintes da superfície terrestre denominado de',
'',
'',
'["ligação conjugada","refração","vibração molecular","vibração iônica","transferência de carga entre orbitais"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Eixo 5',
'A adoção dos Sistemas Globais de Navegação por Satélite (GNSS) para condução de levantamentos geodésicos de alta precisão implica a determinação de coordenadas tridimensionais, por meio da recepção contínua de sinais emitidos por constelações de satélites em órbita. O princípio básico do posicionamento do GNSS é a',
'',
'',
'["triangulação entre dois satélites e a antena receptora.","determinação das coordenadas tridimensionais, a partir de uma única constelação de satélites.","resolução de um sistema linear envolvendo a medida de distância entre o receptor e pelo menos quatro satélites GNSS.","análise das efemérides transmitidas pelos satélites.","medição da altitude em relação ao nível do mar."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Eixo 5',
'O comportamento espectral, representado pela reflectância, é fundamental na análise de dados obtidos por sensoriamento remoto. Considere a Figura (B = Azul, G = Verde, R = Vermelho e IR = Infravermelho). Com base na Figura, as assinaturas espectrais a, b e c correspondem, respectivamente, à assinatura espectral de',
'Figura: curvas de reflectância x comprimento de onda nas faixas B, G, R e IR, com três assinaturas espectrais (a, b e c). Ver imagem de apoio.',
'/cnu-2024-1-tarde-questao-46.png',
'["lago / vegetação seca / construção","vegetação seca / amostra de solo / construção","amostra de solo / construção / lago","amostra de solo / vegetação úmida / vegetação seca","vegetação úmida / vegetação seca / amostra de solo"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Eixo 5',
'Levantamentos detalhados são conduzidos em pequenas áreas para fornecer informações específicas sobre os solos. Em um mapa de solo detalhado com escala de 1:8.000, dois pontos estão representados com uma distância de 7 cm. Nesse contexto, qual é a distância no terreno entre esses dois pontos?',
'',
'',
'["0,056 km","0,56 km","5,6 m","5,6 km","56.000 m"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Eixo 5',
'A Figura ilustra um banco de dados da Amazônia, onde os retângulos pontilhados representam o recorte espacial do banco de dados. Na Figura, entidades como os rios Amazonas e Xingu têm representações em diferentes particionamentos espaciais do banco de dados, que são definidas como',
'Figura: banco de dados geográfico da Amazônia com recorte espacial em grade e tabelas de atributos (rios Amazonas e Xingu; terras indígenas Yanomami, Waimiri e Kayapó). Ver imagem de apoio.',
'/cnu-2024-1-tarde-questao-48.png',
'["área","objeto não espacial","geocampo","geoobjeto","grade regular"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Eixo 5',
'Seja uma população regida por uma distribuição de probabilidade com média θ e variância 25. A fim de se estimar o valor do parâmetro θ, propôs-se o estimador T(X1, X2) = a·X1 + b·X2 a partir de uma amostra de tamanho 2, de tal forma que o estimador seja não tendencioso e tenha variância 13, com a > 0 e b > 0. Qual o valor de a · b?',
'',
'',
'["6/25","2/9","3/16","4/25","1"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Eixo 5',
'Para um estudo sobre o número de filhos em famílias de comunidades ribeirinhas do Amazonas, foi conduzido um planejamento amostral: sortearam-se ao acaso duas comunidades ribeirinhas dentre todas do Amazonas, e foram registrados os números de filhos de todas as famílias das duas comunidades selecionadas. Tal planejamento amostral é denominado na Estatística como amostragem',
'',
'',
'["aleatória simples","estratificada","por conglomerados","sistemática","não probabilística"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco1-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
