-- Seed: CNU 2024 - Bloco 3 (Ambiental, Agrario e Biologicas) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 03/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 11 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-E,2-B,3-E,4-B,5-D,6-A,7-B,8-E,9-C,10-A,
--           11-Anulada,12-E,13-Anulada,14-C,15-A,16-D,17-B,18-A,19-B,20-A,
--           21-D,22-C,23-B,24-C,25-D,26-B,27-E,28-C,29-D,30-C,
--           31-D,32-D,33-B,34-C,35-C,36-A,37-C,38-A,39-A,40-B,
--           41-A,42-C,43-D,44-D,45-C,46-Anulada,47-B,48-D,49-C,50-E
-- Observacao: as questoes 11, 13 e 46 foram ANULADAS pela banca. Como o schema exige uma resposta
-- entre A-E, foi registrada a alternativa mais defensavel do conteudo (11-B, 13-D, 46-D).

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco3-tarde', 'CNU 2024 - Bloco 3 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'Um gerente enfatizou três critérios, ou requisitos, de qualidade fundamentais aos indicadores de desempenho de sua organização. Para ele, o indicador deve ser: (i) de fácil entendimento, para que qualquer pessoa seja capaz de tirar conclusões a partir da análise do indicador, garantindo transparência e validade; (ii) economicamente viável, de modo que os benefícios decorrentes do indicador sejam maiores que os custos incorridos na medição; (iii) de fácil identificação no que se refere à origem dos seus dados, ao seu registro e à sua manutenção, e, sempre que possível, deve-se transformar os resultados em gráficos para promover um acompanhamento mais preciso. Esses três requisitos de qualidade indicam que esse gerente considera fundamental que os indicadores de desempenho de sua organização respeitem, respectivamente, a',
'',
'',
'["acessibilidade, a praticidade e a representatividade","disponibilidade, a rastreabilidade e a acessibilidade","estabilidade, a representatividade e a simplicidade","representatividade, a economicidade e a disponibilidade","simplicidade, a economicidade e a rastreabilidade"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Eixo 1',
'Apesar de inúmeros benefícios que um planejamento estratégico dinâmico, participativo e inteligente pode trazer para as organizações, alguns cuidados devem ser observados para evitar desgastes e diminuir os riscos de insucesso desse tipo de planejamento. Dentre esses cuidados, é imprescindível que a(o)',
'',
'',
'["declaração de missão seja clara e relativamente curta, de forma que sejam esclarecidos os valores éticos, a perspectiva de mundo e a linha filosófica da relação da organização com o ambiente, o que basicamente determina o que é certo e errado.","estratégia descreva as características fundamentais do ajuste que uma organização alcança entre suas competências e recursos e as oportunidades e ameaças do ambiente externo, o qual permite que os objetivos da organização sejam atingidos.","formação da estratégia seja um processo deliberado de pensamento consciente e que as estratégias sejam mantidas simples, únicas e explícitas.","formulação de estratégias favoreça esquemas interpretativos individuais e molduras, isto é, padrões de filtragem e interpretação coletivos, particulares de cada organização segundo as diferentes instâncias de poder.","processo de planejamento estratégico seja desenvolvido de uma forma totalmente estruturada e sistematizada e que possam ser definidos controles suficientes, para que sua aplicação conduza aos resultados esperados."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Eixo 1',
'As organizações não possuem sistemas de controles idênticos e podem optar por diferentes estratégias de controle organizacional. Nesse contexto, uma instituição que está tentando se tornar uma organização de aprendizagem, com departamentos pequenos e incertos, escolheu o controle de clã como estratégia de controle organizacional. Para a implementação do controle de clã, essa organização valorizou as seguintes caraterísticas:',
'',
'',
'["centralização, mecanismos formais, relações pessoais, liderança e formalização.","descentralização, confiança, informações gerenciais e centros de responsabilidade.","preços, concorrência, relacionamento de trocas, participação no mercado e lucros.","regras, padrões, autoridade legítima, hierarquia e fiscalização.","tradições e crenças, valores compartilhados, compromisso e cultura corporativa."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Eixo 1',
'Os modelos de gestão de desempenho destinados a implementar uma estratégia devem ser capazes de traduzi-la para todos os níveis da instituição em que será implementada, tornando tal instituição capaz de atuar efetiva e conscientemente em prol da realização dos objetivos definidos. Considerando esse contexto, uma organização pública construiu seu mapa estratégico, que tinha como função',
'',
'',
'["traduzir a estrutura, a vantagem competitiva e o projeto organizacional em um conjunto abrangente de objetivos que direcionam o comportamento e o desempenho institucionais.","apontar, por meio de objetivos estratégicos, relações de causa e efeito e indicadores de desempenho, a forma pela qual ativos intangíveis da organização produzem resultados tangíveis.","estruturar as perspectivas funcionais, que representam as visões específicas da eficácia organizacional, e os objetivos conflitantes, que devem ser enfrentados pela organização no cumprimento de sua missão institucional.","subsidiar a alocação de recursos financeiros e a adequação do planejamento às várias limitações e contingências que possam afetar a eficácia organizacional, que avalia a extensão com que múltiplas metas são atingidas.","comunicar de modo claro e transparente, a todos os níveis gerenciais e aos servidores, as metas oficiais e operativas, por meio da declaração da missão e da definição dos fins buscados por meio de procedimentos operacionais."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Eixo 1',
'Em uma empresa, o chefe de um determinado setor listou todos os seus funcionários por ordem decrescente de desempenho, considerando que as diferenças entre os funcionários são uniformes e deixando claro que apenas um funcionário poderia ser "o melhor". Nesse processo de avaliação de desempenho, foi utilizada a',
'',
'',
'["lista de verificação","escala de classificação adjetiva","escala de classificação ancorada no comportamento","classificação individual","classificação pela ordem do grupo"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Eixo 1',
'O método dos cenários prospectivos, um pilar da gestão estratégica, além de facilitar o desenvolvimento do pensamento estratégico e a definição das estratégias da empresa, traz benefícios, tais como',
'',
'',
'["auxiliar na definição de estratégias, permitir que a organização enfrente um ambiente incerto e melhorar o processo decisório, o que, por sua vez, ajuda a promover a comunicação dentro da empresa e o aprendizado organizacional.","contribuir com conhecimentos atualizados para os processos de tomada de decisão e ajudar a desenvolver a criatividade na empresa, o que, por sua vez, favorece a identificação de novas oportunidades de negócios e a exploração de futuros determinísticos.","refazer constantemente o planejamento e os planos decorrentes, respondendo com eficácia às mudanças no ambiente, o que, por sua vez, possibilita que os administradores lidem melhor com as certezas ambientais.","registrar rupturas de tendência promovidas pelos eventos identificados durante o processo e facilitar a criação das redes de troca de informações, o que, por sua vez, inibe o fluxo de informações dentro da empresa e a integração entre as diversas áreas.","unificar e democratizar as questões estratégicas da organização com uma abordagem analítica e isolada e questionar ideias preconcebidas, o que, por sua vez, ajuda na análise de dados a respeito dos pontos fracos das organizações e de futuras formas de ameaça ambiental."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Eixo 1',
'Em meio à crescente preocupação global com a mudança climática e a perda de biodiversidade, o Ministério do Meio Ambiente e Mudança do Clima decidiu revisar e atualizar seus objetivos estratégicos para os próximos dez anos, estabelecendo objetivos, metas e indicadores mensuráveis eficazes de resultados. Qual é a principal característica dos indicadores eficazes de resultados?',
'',
'',
'["Complexidade","Especificidade","Generalidade","Singularidade","Variabilidade"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Eixo 1',
'Dois jovens administradores públicos foram designados para liderar um ambicioso projeto de melhoria dos serviços de coleta de resíduos na cidade P. Eles decidiram aplicar o ciclo Plan-Do-Check-Act (PDCA), com o objetivo de otimizar os processos de coleta de resíduos e melhorar a satisfação dos cidadãos. Considerando-se PDCA, qual é a primeira ação que esses administradores devem executar para melhorar a gestão de resíduos dessa cidade?',
'',
'',
'["Consultar outros municípios para obter insights.","Implementar um novo sistema de gestão de resíduos.","Lançar uma campanha de educação pública.","Redefinir as rotas de coleta de resíduos.","Realizar um diagnóstico dos problemas existentes."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Eixo 1',
'Um projeto de reflorestamento de áreas degradadas da Secretaria de Meio Ambiente da cidade T visava à conservação da biodiversidade, a promoção de práticas agrícolas sustentáveis e o desenvolvimento socioeconômico das comunidades locais, concentrando-se na recuperação de áreas que sofreram perda significativa de vegetação nativa. Essa Secretaria de Meio Ambiente começou esse projeto de reflorestamento de áreas degradadas com a(o)',
'',
'',
'["desenvolvimento de hortos de espécies nativas","exportação de vegetação nativa","identificação de áreas críticas","monitoramento do crescimento da vegetação","plantio de espécies nativas"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Eixo 1',
'Considere os conceitos de mapas estratégicos e do Balanced Scorecard (BSC). Qual das afirmações descreve a relação entre mapas estratégicos e o BSC?',
'',
'',
'["Mapas estratégicos são usados para visualizar a estratégia que o BSC mede e monitora.","Mapas estratégicos e BSC são ferramentas concorrentes desenvolvidas por diferentes teóricos da gestão.","Mapas estratégicos servem como a fase preliminar do BSC, não sendo necessários após sua implementação.","Mapas estratégicos são uma alternativa ao BSC, focando em medidas financeiras.","O BSC é um subconjunto de um mapa estratégico, focado apenas na perspectiva de aprendizado e de crescimento."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Eixo 2',
'[QUESTÃO ANULADA PELA BANCA] A legislação ambiental tem grande importância nacional por tratar do direito de todos ao meio ambiente equilibrado, sendo esse um bem de uso comum do povo e essencial à qualidade de vida. Atualmente um dos temas mais relevantes dessa legislação está relacionado aos crimes ambientais, ou seja, ao descumprimento da Lei dos Crimes Ambientais, Lei no 9.605/1998. Nessa lei, constam as diversas sanções penais e administrativas derivadas de condutas e atividades nocivas ao meio ambiente, de forma que, nos crimes',
'',
'',
'["contra a fauna, as penas variam de seis meses a três anos, podendo ser agravadas quando houver características que indiquem dolo, como quando feitas durante a noite.","contra a flora, as penas podem ser de detenção de um a seis meses, ou multa, ou ambas as penas.","de emissão de efluentes, as penas variam de detenção de seis meses a cinco anos e multa.","de destruição da floresta, as penas variam entre três meses e quatro anos de reclusão, mais multa.","praticados por empreendimentos potencialmente poluidores sem licença, as penas variam de três meses a três anos, havendo a possibilidade de a pena ser triplicada."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Eixo 2',
'O Plano Safra é um programa do Governo Federal para apoiar o setor agropecuário, oferecendo linhas de crédito, incentivos e políticas agrícolas para os produtores rurais, desde os agricultores familiares até os megaprodutores. O Plano Safra 2023/2024 disponibilizou linhas de financiamento para investimentos em 13 programas que proporcionarão a inovação e a modernização das atividades produtivas, contribuindo para a continuidade dos ganhos de produtividade, competitividade, emprego e renda. Nesse contexto, o Programa de desenvolvimento cooperativo para agregação de valor à produção agropecuária (Prodecoop) é um programa que objetiva financiar',
'',
'',
'["a integralização de quotas-partes do capital social e capital de giro para cooperativas agropecuárias.","os investimentos na recuperação de pastagens degradadas, a exemplo dos sistemas de integração lavoura-pecuária-floresta, energias alternativas e sistemas de plantio direto na palha, incentivando e fortalecendo os sistemas de produção ambientalmente sustentáveis de produtores cooperados.","os investimentos na inovação tecnológica nas propriedades rurais de produtores cooperados, visando ao aumento da produtividade e à adoção de boas práticas agropecuárias.","os investimentos necessários à construção e à ampliação de armazéns, com o objetivo de aumentar a capacidade instalada de armazenagem no país e competitividade das cooperativas agropecuárias.","os itens para a modernização dos sistemas produtivos e de comercialização das cooperativas brasileiras."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Eixo 2',
'[QUESTÃO ANULADA PELA BANCA] Até 2006, não existia uma lei para orientar as pessoas sobre como explorar economicamente uma floresta pública. A Lei de Gestão de Florestas Públicas, Lei no 11.284/2006, foi criada com o intuito de definir procedimentos técnicos para a exploração da floresta e de, ao mesmo tempo, conservá-la. Uma das alterações, aprovadas pelo Congresso Nacional e sancionada pela Presidência da República em 2023, que se refere aos fins dispostos nessa lei, define o(a)',
'',
'',
'["unidade de manejo como perímetro definido a partir de critérios técnicos, socioculturais, econômicos e ambientais, objeto de um Plano de Manejo Florestal Sustentável ou utilizado para atividades de restauração florestal ou de exploração de demais serviços e produtos, localizado em florestas públicas, podendo conter áreas degradadas para fins de recuperação por meio de plantios florestais.","serviço florestal como atividade de turismo e outras ações ou benefícios decorrentes do manejo e conservação da floresta, não caracterizados como produtos florestais tais como produtos madeireiros e não madeireiros gerados pelo manejo florestal sustentável.","auditoria florestal como ato de avaliação independente e qualificada de atividades florestais e obrigações econômicas, sociais e ambientais assumidas de acordo com o Plano de Manejo Florestal Sustentável e o contrato de concessão florestal, executada por entidade reconhecida pelo órgão gestor.","manejo florestal sustentável como a administração da floresta para a obtenção de benefícios econômicos, sociais e ambientais, respeitando-se os mecanismos de sustentação do ecossistema objeto do manejo e considerando-se, cumulativa ou alternativamente, a utilização de múltiplas espécies madeireiras, de múltiplos produtos e subprodutos não madeireiros.","recurso florestal como elemento ou característica de determinada floresta, potencial ou efetivamente gerador de produto florestal madeireiro e não madeireiro gerado pelo manejo florestal sustentável ou de serviço."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Eixo 2',
'A avaliação é uma importante etapa do processo de análise e acompanhamento de uma política pública e visa coletar, analisar e interpretar informações sobre essa política. Dessa forma, com relação à avaliação de políticas públicas no Brasil, conclui-se que a',
'',
'',
'["avaliação formativa se relaciona com a verificação dos resultados obtidos ao fim do processo, ou seja, julga o mérito do programa e comprova os seus resultados finais, avaliando como o programa foi desenvolvido.","avaliação somativa visa fornecer informações acerca da maneira pela qual se desenvolve a implementação, para aprimorar o funcionamento do programa, verificando se as atividades estão se desenvolvendo de acordo com o planejado.","avaliação não é simplesmente um instrumento de aperfeiçoamento ou de redirecionamento dos programas empreendidos pelo governo, mas apresenta-se como uma ferramenta capaz de prestar contas à sociedade das ações governamentais.","avaliação de um programa só deve ser realizada quando este apresentar problemas nas etapas ou processos passíveis de aperfeiçoamento ou mesmo de ampliação, estando sujeito à complementaridade ou à renovação.","avaliação interna é a realizada por atores pertencentes à instituição gestora do programa, desde que estejam envolvidos na sua execução, e a externa é a realizada por profissionais que não pertencem à instituição executora do programa."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Eixo 2',
'O Programa Nacional de Fortalecimento da Agricultura Familiar (PRONAF) foi criado pelo governo federal com a finalidade de promover o desenvolvimento sustentável do segmento rural constituído pelos agricultores familiares de modo a propiciar-lhes o aumento da capacidade produtiva, a geração de empregos e a melhoria da renda. Dentre os subprogramas que fazem parte do PRONAF estão o',
'',
'',
'["PRONAF Custeio, o PRONAF Mulher e o PRONAF Agroindústria","PRONAF Custeio, o PRONAF Agroindústria e o PRONAF Digital","PRONAF Mulher, o PRONAF Agroindústria e o PRONAF Social","PRONAF Agroindústria, o PRONAF Digital e o PRONAF Social","PRONAF Custeio, o PRONAF Digital e o PRONAF Social"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Eixo 2',
'A Lei no 14.515/2022, além de estabelecer um novo sistema de fiscalização para a produção agropecuária no país, cria o Programa de Incentivo à Conformidade em Defesa Agropecuária e o Programa de Vigilância em Defesa Agropecuária para Fronteiras Internacionais (Vigifronteiras). Um dos critérios fundamentais que os programas de autocontrole precisarão observar é:',
'',
'',
'["lotes de produtos não identificados para assegurar a segurança do produtor/fornecedor.","identificação dos responsáveis pela etapa de produção do produto para acionamento no caso da detecção de não conformidades.","marcas legíveis nos rótulos, com descrição do valor nutricional dos produtos e data de validade.","registros sistematizados e auditáveis do processo produtivo (desde a chegada da matéria-prima, dos ingredientes e dos insumos até a entrega do produto final).","designação do ministério responsável pela aprovação do produto."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Eixo 2',
'O Programa de Aquisição de Alimentos (PAA), criado pelo art. 19 da Lei no 10.696, de 2 de julho de 2003, é comumente citado como exemplo para assegurar a segurança alimentar atendida pela rede socioassistencial. As duas finalidades básicas do PAA são as seguintes:',
'',
'',
'["fortalecer circuitos locais e regionais de produção de alimentos; fomentar a extensão rural.","promover o acesso à alimentação; incentivar a agricultura familiar.","valorizar a biodiversidade; estimular a recuperação de áreas de preservação permanente (APP).","permitir acesso de agricultores familiares a tecnologias do agronegócio; estimular a exportação.","estimular o cooperativismo; equacionar relações de gênero no campo."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Eixo 2',
'O etnomapeamento e o etnozoneamento são ferramentas para a gestão territorial e ambiental de terras indígenas, previstas pela Política Nacional de Gestão Territorial e Ambiental de Terras Indígenas (PNGATI). Essas ferramentas se caracterizam por serem',
'',
'',
'["ações participativas que fornecem bases de diálogo para a gestão territorial e ambiental das terras indígenas.","metodologias consagradas pela comunidade científica que dependem de softwares específicos para a sua aplicação.","ferramentas altamente subjetivas e de difícil sistematização, o que vem dificultando a adoção da PNGATI.","atividades que devem ser executadas por acadêmicos, sem que haja envolvimento com as comunidades indígenas.","atividades que correspondem a um conjunto de abordagens sociais, que excluem as características naturais de sua avaliação."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Eixo 2',
'O Marco Legal da Ciência, Tecnologia e Inovação — Lei no 13.243/2016 — é resultado de um processo de cerca de cinco anos de discussões entre atores do Sistema Nacional de Inovação, nos âmbitos das comissões de Ciência e Tecnologia da Câmara e do Senado. Tais discussões tinham o objetivo de alterar pontos de leis concernentes ao tema, de modo a',
'',
'',
'["limitar o estabelecimento de mecanismos de incentivo à interação de Instituições Científica, Tecnológica e de Inovação com empresas.","reduzir obstáculos legais e burocráticos e conferir maior flexibilidade às instituições atuantes em Ciência, Tecnologia e Inovação.","bloquear o recebimento de remuneração pelas Instituições Científica, Tecnológica e de Inovação em parcerias público-privadas.","atribuir aos núcleos de inovação tecnológica a liberação do requerimento de proteção intelectual das produções conjuntas.","dificultar o compartilhamento ou a permissão para uso de laboratórios ou instalações."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Eixo 2',
'Levando-se em conta a trajetória histórica e o amplo conhecimento acumulado sobre implementação de políticas públicas, atualmente existem diversos pressupostos que já foram alcançados ou ultrapassados por meio de vários estudos. Um desses pressupostos é que',
'',
'',
'["a formulação e a implementação não são fases distintas, mas sim processos decisórios contínuos que perpassam diferentes atores no que é possível chamar de cadeia decisória.","a implementação de serviços públicos não está associada à legitimidade dos governos e suas políticas públicas.","as políticas públicas são constituídas por uma única camada decisória e por um único ator regulador dessas políticas.","os estudos de implementação se limitam a investigar aspectos formais e normativos das políticas públicas.","os modelos de processos multi-level levam em conta apenas um nível hierárquico relacionado a uma cadeia decisória."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Eixo 3',
'Os Sistemas de Referência Terrestres ou Geodésicos são utilizados para descrever as posições de objetos na superfície da Terra, possibilitando o desenvolvimento dos cálculos das suas coordenadas. As coordenadas que têm como referência os Sistemas de Referência Geodésicos são normalmente apresentadas em três formas: cartesianas, geodésicas e planas. No Sistema de Coordenadas Geodésicas, o ângulo que o meridiano geodésico passando por um ponto P da superfície terrestre forma com uma direção, contado do norte por leste, é o(a)',
'',
'',
'["Latitude geodésica","Longitude geodésica","Altitude geométrica","Azimute geodésico","Desvio da vertical"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Eixo 3',
'Os solos desempenham um papel fundamental na sustentação da vida na Terra, fornecendo suporte para a vegetação, filtragem da água, reciclagem de nutrientes e habitat para uma variedade de organismos. A grandeza característica do solo que reflete a quantidade máxima que pode ser obtida de um solo por drenagem natural, sob a ação exclusiva da gravidade, expressa em porcentagem de volume de solo saturado, é denominada',
'',
'',
'["retenção específica","coeficiente de permeabilidade","suprimento específico","velocidade de infiltração","porosidade"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Eixo 3',
'Considere o trecho abaixo da Embrapa Solos, que caracteriza o perfil de um determinado solo: "Solos constituídos por material mineral, com horizonte B. Devido à heterogeneidade do material de origem, das formas de relevo e das condições climáticas, as características destes solos variam muito de um local para outro. São solos fortemente, até imperfeitamente, drenados, rasos a profundos, de cor bruna ou bruno-amarelada, e de alta a baixa saturação por bases e atividade química da fração coloidal." O perfil de solo caracterizado no trecho acima é o',
'',
'',
'["vertissolo","cambissolo","planossolo","luvissolo","neossolo"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Eixo 3',
'O levantamento topográfico consiste na aplicação de métodos para determinar as coordenadas topográficas de pontos, conectando-os com os detalhes do terreno. O conjunto de pontos materializados de referências de nível (RRNN), que proporciona o controle de posição altimétrica dos levantamentos topográficos e o seu referenciamento ao datum (origem) altimétrico do país, é denominado apoio',
'',
'',
'["topográfico altimétrico","topográfico planimétrico","geodésico altimétrico","geodésico planialtimétrico","geodésico planimétrico"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Eixo 3',
'A meteorologia é uma disciplina física que se baseia em medições obtidas por meio de instrumentação. O instrumento meteorológico usado para medir a distribuição do tamanho da gota e a velocidade dos hidrometeoros (gota d''água, floco de neve, etc.) em queda é o',
'',
'',
'["anemoscópio","anemômetro","ceilômetro","disdrômetro","heliógrafo"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Eixo 3',
'A definição, a implantação e a manutenção do Sistema Geodésico Brasileiro (SGB) são de responsabilidade do Instituto Brasileiro de Geografia e Estatística (IBGE). O Datum SIRGAS 2000 foi criado com o objetivo de definir um sistema geocêntrico de referência unificado para todo o território sul-americano. O Datum SIRGAS 2000 possui como elipsoide o',
'',
'',
'["Elipsoide do Sistema Geodésico de Referência de 1967","Elipsoide do Sistema Geodésico de Referência de 1980","Elipsoide de Hayford","Elipsoide Clarke","Elipsoide Puissant"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Eixo 3',
'Considere o quadro que apresenta uma síntese das diferenças para classificação de pragas, de acordo com as Normas Internacionais para Medidas Fitossanitárias. Coluna I: status ausente ou de distribuição limitada, medidas fitossanitárias para qualquer via de ingresso, impacto previsto, sob controle oficial com objetivo de erradicação ou contenção. Coluna II: status presente e amplamente distribuída, medidas fitossanitárias somente em caso de plantas para plantio, impacto conhecido, sob controle oficial com respeito às plantas para plantio especificadas com objetivo de supressão. As classificações I e II das pragas correspondem, respectivamente, a',
'',
'',
'["Praga quarentenária; Praga não regulamentada","Praga não regulamentada; Praga quarentenária","Praga não quarentenária regulamentada; Praga não regulamentada","Praga não regulamentada; Praga não quarentenária regulamentada","Praga quarentenária; Praga não quarentenária regulamentada"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Eixo 3',
'Na resolução dos desafios da Ciência da Geoinformação, em especial na compreensão das representações computacionais do espaço, um conceito empregado para traduzir o mundo real para o ambiente computacional é o paradigma dos quatro universos. No universo de representação, as entidades formais definidas no universo conceitual são associadas a',
'',
'',
'["fenômenos a serem representados (tipos de solo, cadastro urbano e rural, dados geofísicos e topográficos).","distinção entre as grandes classes formais de dados geográficos (dados contínuos e objetos individualizáveis).","diferentes representações geométricas, que podem variar conforme a escala e a projeção cartográfica escolhida e a época de aquisição do dado.","espacialização de classes nos tipos de dados geográficos utilizados comumente (dados temáticos e cadastrais, modelos numéricos de terreno, dados de sensoriamento remoto).","estruturas de dados (tais como árvores quaternárias e árvores-R) para implementar as geometrias do universo de representação."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Eixo 3',
'Na hidrologia, notadamente na determinação do balanço hídrico de uma bacia hidrográfica, a altura média de precipitação sobre a área de estudo costuma ser demandada. Um método que pode ser utilizado para determinar a altura média de precipitação, mesmo para uma distribuição espacial não uniforme de estações, e que consiste em atribuir um fator de peso aos totais precipitados em cada estação proporcional à área de influência de cada estação é o',
'',
'',
'["Método Aritmético","Método das Isoietas","Método da Ponderação pelo Inverso da Distância (IDW)","Método de Thiessen","Método de Krigagem Ordinária"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Eixo 3',
'As classes de aptidão agrícola dos solos expressam a aptidão agrícola das terras para um determinado tipo de utilização, com um nível de manejo definido, dentro do subgrupo de aptidão. As terras que apresentam limitações moderadas para uma produção sustentável em um determinado uso, demandando mais insumos para compensar a redução na produtividade em comparação com terras de qualidade superior, são de aptidão agrícola de classe',
'',
'',
'["muito boa","boa","regular","restrita","inapta"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Eixo 4',
'A capacidade de água total disponível do solo, medida em mm de água/cm de solo, é uma variável de extrema importância para o manejo de irrigação em áreas agrícolas. Para o cálculo dessa variável, é fundamental o conhecimento dos seguintes fatores:',
'',
'',
'["evapotranspiração de referência e coeficiente da cultura","evaporação da água do tanque classe A e coeficiente do tanque","umidade do solo na capacidade de campo e umidade inicial do solo","umidade do solo na capacidade de campo e umidade do solo no ponto de murcha permanente","evapotranspiração da cultura e frequência de irrigação"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Eixo 4',
'O preparo convencional do solo consiste no revolvimento de camadas superficiais para reduzir a compactação, incorporar corretivos e fertilizantes, aumentar os espaços porosos e, com isso, elevar a permeabilidade e o armazenamento de ar e água. Quando a camada compactada do solo impede o fluxo de água ou o desenvolvimento radicular das plantas, a descompactação do solo em camadas mais profundas (superiores a 30 cm) é recomendada, sendo essa operação denominada',
'',
'',
'["aração","gradagem leve","gradagem pesada","subsolagem","sulcamento"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Eixo 4',
'A carência ou o excesso de um determinado nutriente induzem o aparecimento de sintomas visuais, com padrões básicos para todas as culturas agrícolas. O crescimento reduzido ou nanismo; folhas verde-escuras ou com coloração avermelhada, inicialmente nas mais velhas; manchas pardas, arroxeadas ou necróticas e secamento de folhas mais velhas são sintomas de deficiência de',
'',
'',
'["nitrogênio","fósforo","potássio","cálcio","magnésio"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Eixo 4',
'A Fixação Biológica do Nitrogênio (FBN) é uma alternativa tecnológica para aumentar a produtividade agropecuária e minimizar a emissão dos Gases de Efeito Estufa. A Fixação Biológica do Nitrogênio consiste em um processo biológico',
'',
'',
'["conhecido como simbiose, onde o amônio é incorporado ao ácido glutâmico no interior do rizóbio, formando glutamina, ureídos e asparagina, que são transportados para todas as regiões da planta.","originado de uma relação intraespecífica, conhecida como colônia, onde ocorre a formação de uma estrutura especializada denominada de nódulo, onde a planta sofre modificações de estrutura e de metabolismo.","mediado por bactérias que possuem um complexo enzimático denominado nitrogenase e que realizam a fixação do nitrogênio atmosférico e posterior disponibilização deste para as plantas.","induzido, que ocorre exclusivamente em plantas leguminosas, através da associação de plantas com bactérias diazotróficas.","que ocorre a partir da inoculação de bactérias nas plantas, sendo a planta responsável pela fixação do nitrogênio atmosférico, transformando-o em amônia que é posteriormente incorporada na planta."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Eixo 4',
'A gestão dos recursos hídricos deve proporcionar os usos múltiplos das águas, de forma descentralizada e participativa, contando com a participação do poder público, dos usuários e das comunidades. Em situações de escassez de água, o uso prioritário dos recursos hídricos deve ser para',
'',
'',
'["indústria de alimentos e irrigação de áreas agrícolas","irrigação de áreas agrícolas e dessedentação de animais","consumo humano e dessedentação de animais","consumo humano e irrigação de áreas agrícolas","consumo humano e indústria de alimentos"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Eixo 4',
'As práticas agropecuárias, caso não sejam realizadas corretamente dentro de um manejo conservacionista, podem levar à degradação dos solos. Uma das práticas conservacionistas é a abertura de sulcos construídos em nível, preenchidos com restos vegetais, com o objetivo de reduzir o escoamento superficial e a erosão, pois a água da chuva, e consequente enxurrada, ao encontrar os sulcos, acaba se infiltrando neles. Essa prática conservacionista é denominada de',
'',
'',
'["mulching vertical","terraceamento","cobertura morta","cultura em faixas","cultivo em nível"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Eixo 4',
'Método de irrigação é a forma pela qual a água pode ser utilizada e aplicada em áreas agrícolas. Para cada método, há dois ou mais sistemas de irrigação, que podem ser empregados. O sistema de irrigação autopropelido, em um único canhão montado sobre um carrinho, que se desloca longitudinalmente ao longo da área a ser irrigada, é amplamente utilizado em áreas agrícolas. Esse sistema de irrigação autopropelido descrito acima, é um sistema que utiliza o método de irrigação',
'',
'',
'["por superfície","localizada","por aspersão","subirrigação","subsuperficial"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Eixo 4',
'A compostagem é um método de reciclagem e tratamento dos resíduos orgânicos que busca reproduzir algumas condições ideais observadas no processo natural de degradação da matéria orgânica, bem como garantir a segurança do processo. Para que ocorra uma boa compostagem, o controle de alguns fatores-chave é fundamental, sendo necessário que',
'',
'',
'["ocorra a decomposição aeróbia de resíduos vegetais e animais.","sejam utilizados como matéria-prima resíduos vegetais, ricos em carbono, e resíduos animais, pobres em nitrogênio.","seja de 10:1 a relação inicial ótima do Carbono/Nitrogênio - C/N.","sejam dispostos em camadas contínuas formando uma leira ou monte de dimensões e formatos fixos os resíduos, vegetais e animais.","seja mantido o material seco, com umidade em torno de 20 a 30%, no momento das reviradas das leiras."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Eixo 4',
'A principal característica do sistema de produção orgânico é a(o)',
'',
'',
'["isenção do uso de produtos sintéticos tanto na produção, como nas demais fases do processo de produção.","redução da aplicação de herbicidas e fungicidas sintéticos.","adequação apenas à agricultura de larga escala, com foco em exportações, com o objetivo de anular barreiras não tarifárias.","viabilidade de implementação do sistema apenas próximo a unidades de conservação.","aumento da produtividade no primeiro ciclo da cultura."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Eixo 4',
'A qualidade da água para irrigação é um aspecto fundamental a ser observado, sendo a sua salinidade um dos critérios a serem considerados. A salinidade é avaliada de acordo com a(o)',
'',
'',
'["razão de adsorção de sódio","condutividade elétrica da água","concentração de cloro, sódio, boro e carbonatos na água","oxigênio dissolvido na água","fósforo total na água"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Eixo 5',
'O Zoneamento Ecológico-Econômico (ZEE) tem por objetivo geral dar subsídios para as decisões dos agentes públicos e privados quanto à adequabilidade de planos, programas, projetos e atividades que, direta ou indiretamente, utilizem recursos naturais. Considere os seguintes pressupostos: apresentar termo de referência detalhado; gerar produtos, por meio do Sistema de Informações Geográficas, compatíveis com os padrões aprovados pela Comissão Coordenadora do ZEE; normatizar com base nos referenciais da Associação Brasileira de Normas Técnicas e da Comissão Nacional de Cartografia. Os pressupostos apresentados são identificados como',
'',
'',
'["técnicos","financeiros","econômicos","institucionais","ambientais"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Eixo 5',
'A discussão sobre o desenvolvimento sustentável foi iniciada em 1972, em Estocolmo na Suécia, na Conferência das Nações Unidas sobre Meio Ambiente Humano. Sua definição, formulada no documento "Nosso Futuro Comum", em 1987, diz que desenvolvimento sustentável é aquele capaz de suprir as necessidades da geração atual, sem comprometer a capacidade de atender as necessidades das futuras gerações. O conceito de desenvolvimento sustentável é estruturado por três grandes princípios, que são as sustentabilidades',
'',
'',
'["financeira, ambiental e tecnológica","digital, tecnológica e social","social, ambiental e econômica","ambiental, jurídica e política","política, financeira e ambiental"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Eixo 5',
'O selo do Sistema Brasileiro de Avaliação de Conformidade Orgânica (SisOrg) deve ser utilizado apenas em produtos orgânicos certificados, controlados por organismos de avaliação da conformidade, credenciados no Ministério da Agricultura, Pecuária e Abastecimento (Mapa). Agricultores familiares que fazem parte de Organizações de Controle Social (OCS) cadastradas no Mapa ou que vendem somente de forma direta aos consumidores são dispensados da certificação. É permitido uso do selo do SisOrg em produtos orgânicos certificados somente por',
'',
'',
'["Sistemas Participativos de Garantia","Organizações de Controle Social (OCS)","Organizações de Controle Social (OCS) e por Sistemas Participativos de Garantia","Certificação por Auditoria e por Sistemas Participativos de Garantia","Certificação por Auditoria, por Organizações de Controle Social (OCS) e por Sistemas Participativos de Garantia"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Eixo 5',
'O Cadastro Ambiental Rural (CAR) é um registro público eletrônico de âmbito nacional, integrado ao Sistema Nacional de Informação sobre Meio Ambiente (Sinima). Um investidor adquiriu um imóvel rural fora da Amazônia Legal, com: área plana ou declividade inferior a 20%; 3,8 módulos fiscais; sem CAR, CRA ou Reserva Legal averbada; cortado por rio perene de 20 m de largura; presença de uma nascente e de um lago natural de 2 ha; 15% de vegetação nativa remanescente. Medidas: I - recomposição de mais 5% da área para Reserva Legal; II - recomposição das APP no raio de 50 m no entorno da nascente e do lago e na faixa de 50 m da borda do rio; III - recomposição de mais 15% da área para CRA; IV - inscrição do imóvel no CAR. Para sanar os passivos legais e evitar problemas judiciais, o proprietário é obrigado a adotar SOMENTE as medidas indicadas em',
'',
'',
'["I e III","II e IV","I, II e III","I, II e IV","II, III e IV"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Eixo 5',
'No âmbito da Convenção-Quadro das Nações Unidas sobre Mudança do Clima, é comum o uso de instrumentos de mercado para ajudar os países a atingirem as suas metas de contribuição. Com o Acordo de Paris, como todos os países partes passaram a ter metas de contribuições nacionalmente determinadas (NDCs), novos instrumentos econômicos surgiram. Qual instrumento de mercado, estruturado no Acordo de Paris, propõe transações diretas de mitigações de emissões reais entre os países partes, desde que as cooperações sejam voluntárias e não haja dupla contagem no atendimento das NDCs?',
'',
'',
'["Implantação Conjunta ou Joint Implementation (JI)","Mecanismo de Desenvolvimento Limpo ou Clean Development Mechanism (CDM)","Resultados de Mitigação Transferidos Internacionalmente ou Internationally Transferred Mitigation Outcomes (ITMOs)","Sistema de créditos/linhas de base para transações entre entidades públicas e privadas em projetos de mitigação","Baixa Emissão de Carbono na Agricultura ou Low Carbon Emission in Agriculture (ABC Plan)"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Eixo 5',
'[QUESTÃO ANULADA PELA BANCA] Um Sistema Orgânico de Produção Agropecuária utiliza recursos naturais e socioeconômicos disponíveis, com respeito à integridade cultural das comunidades rurais. Associe as correntes de produção orgânica às suas características. I - Sistema Agroflorestal (SAF); II - Agricultura Biológica; III - Agricultura Biodinâmica. P - movimento desenvolvido na década de 1920 a partir das ideias de Rudolf Steiner, com preparados homeopáticos e calendário astronômico. Q - princípios baseados em ecossistemas naturais, desenvolvido por David Holmgren e Bill Mollison (permacultura). R - uso e manejo em que árvores, arbustos, trepadeiras e herbáceas são utilizados em associação com cultivos agrícolas e/ou animais. S - abordagem de Masanobu Fukuoka que evita insumos e equipamentos fabricados. As associações corretas são:',
'',
'',
'["I – P , II – Q , III – R","I – P , II – R , III – S","I – Q , II – S , III – P","I – R , II – S , III – P","I – S , II – P , III – R"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Eixo 5',
'Segundo o Painel Intergovernamental sobre Mudanças Climáticas (IPCC, 2023), em 2019, 22% das emissões globais de gases de efeito estufa (GEE) vieram das atividades de Agricultura, Floresta e Outros Usos da Terra (AFOLU). Uma das atividades de AFOLU é o plantio de arroz irrigado por inundação. No que diz respeito à mudança do clima, a cultura de arroz irrigado por inundação contribui principalmente para emissão direta de',
'',
'',
'["dióxido de carbono (CO2)","metano (CH4)","óxido nitroso (N2O)","clorofluorcarbonetos (CFCs)","ozônio (O3)"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Eixo 5',
'A agricultura brasileira é um setor econômico altamente competitivo, mas a atividade agropecuária pode trazer uma série de impactos para o meio ambiente. Uma prática adequada de gestão ambiental, visando a minimizar os danos ambientais do setor agrícola, é o(a)',
'',
'',
'["uso do sistema de irrigação por pivô central, em substituição ao sistema por gotejamento.","uso da agricultura comercial (moderna) intensiva de larga escala, em substituição à agricultura familiar extensiva orgânica.","uso de fertilizantes químicos para condicionamento do solo, em substituição aos adubos orgânicos.","adoção de práticas agrossilvipastoris em médias propriedades, em substituição a práticas agrícolas do tipo monocultura em grandes propriedades.","adoção de práticas de queimadas e desmatamentos de novas áreas, em substituição aos recondicionamentos de áreas existentes."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Eixo 5',
'O Decreto no 9.841/2019 dispõe sobre o Programa Nacional de Zoneamento Agrícola de Risco Climático (ZARC). Atualmente, o ZARC adota uma metodologia que define seis classes de água disponível (AD1, AD2, AD3, AD4, AD5, AD6). Buscando avaliar o risco agroclimático do cultivo da soja no Mato Grosso do Sul, um agrônomo colheu amostras de um solo, determinou a composição granulométrica e, ao aplicar os teores percentuais na função de pseudotransferência, obteve um valor de AD de 0,75 mm/cm. Dessa forma, o agrônomo classificou esse solo como',
'',
'',
'["AD1","AD2","AD3","AD4","AD5"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Eixo 5',
'A responsabilidade humana na conservação de nosso habitat tem se tornado cada vez mais importante. Conceitualmente, do ponto de vista da gestão ambiental, a conservação é uma estratégia desenvolvida para o uso e aproveitamento de determinados ecossistemas, mantendo-os ativos e com capacidade de recomposição. Diante disso, os ecossistemas que se enquadram nesse conceito de conservação são os',
'',
'',
'["parques nacionais e os cultivos orgânicos","parques nacionais e as florestas sob exploração sustentável","parques nacionais e as áreas de proteção ambiental","cultivos orgânicos e as áreas de proteção ambiental","cultivos orgânicos e as florestas sob exploração sustentável"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco3-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
