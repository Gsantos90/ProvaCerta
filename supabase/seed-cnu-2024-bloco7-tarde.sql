-- Seed: CNU 2024 - Bloco 7 (Gestao Governamental e Administracao Publica) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 07/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 15 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-E,2-Anulada,3-C,4-A,5-B,6-C,7-D,8-D,9-A,10-C,
--           11-C,12-E,13-C,14-E,15-C,16-E,17-E,18-C,19-D,20-B,
--           21-E,22-C,23-Anulada,24-A,25-B,26-A,27-D,28-B,29-C,30-A,
--           31-D,32-A,33-E,34-E,35-B,36-B,37-C,38-D,39-A,40-D,
--           41-A,42-D,43-A,44-B,45-C,46-B,47-A,48-A,49-B,50-C
-- Observacao: as questoes 2 e 23 foram ANULADAS pela banca. Como o schema exige uma resposta
-- entre A-E, foi registrada a alternativa mais defensavel do conteudo (2-E, 23-D) e o enunciado
-- foi prefixado com [QUESTAO ANULADA PELA BANCA].

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco7-tarde', 'CNU 2024 - Bloco 7 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Eixo 1',
'Um grupo de secretárias que depende da mesma dotação orçamentária começou a barganhar entre si para saber quem iria adquirir novos equipamentos de informática e quem continuaria com o equipamento existente. Na decisão de quais interesses conflitantes seriam satisfeitos, consideraram que os interesses do grupo são importantes, mas não merecem a desordem provocada por estilos mais assertivos. Assim, optaram pela abordagem da transigência na negociação, que',
'',
'',
'["promove os interesses de um membro do grupo à custa dos interesses dos outros, muitas vezes pelo recurso à autoridade.","permite que as outras partes satisfaçam seus interesses à custa dos interesses de um membro do grupo.","requer a permanência dos membros do grupo na neutralidade a todo custo ou a sua recusa em assumir um papel ativo nos procedimentos de resolução do conflito.","tenta satisfazer a todos mediante a consideração das diferenças e a busca de solução que resulte em ganho para todos os interessados.","procura a satisfação parcial de todos mediante a troca e o sacrifício, decidindo mais pela resolução aceitável do que pela resolução ótima."]'::jsonb,
'E',
'A transigência (compromisso/concessão mútua) busca satisfação parcial de todas as partes por meio de troca e sacrifício, priorizando uma solução aceitável em vez da ótima. As demais descrevem: competição (A), acomodação (B), evitação/afastamento (C) e colaboração/ganha-ganha (D).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Eixo 1',
'[QUESTÃO ANULADA PELA BANCA] Uma empresa pública da área de desenvolvimento e inovação decidiu utilizar em seu planejamento a ferramenta OKR (Objectives and Key Results). Nesse sentido, é relevante para toda a organização, porém monitorado pelo time de gestão de pessoas, o seguinte OKR:',
'',
'',
'["ampliar a interação com setor produtivo para superação de barreiras técnicas; aumento do número de demandas do setor produtivo.","aprimorar a gestão e governança com foco em políticas públicas; percentual de elaboração do orçamento participativo.","estruturar relacionamento com setor produtivo para pesquisa e desenvolvimento; aumento da captação de recursos para projetos de extensão tecnológica.","promover soluções para apoio à economia verde e descarbonização; quantidade de soluções entregues sobre quantidade das consultas.","tornar a autarquia mais atrativa para captar e reter servidores; relação entre quantidade de entradas de servidores versus saídas da autarquia."]'::jsonb,
'E',
'Questão anulada pela banca. O gabarito preliminar apontava a alternativa relacionada à atração e retenção de servidores (tema típico da área de gestão de pessoas), medida pela relação entre entradas e saídas de servidores.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Eixo 1',
'O sucesso de um programa de segurança está diretamente relacionado à sua estruturação em comitês formados por especialistas, trabalhadores e gestores. É necessário reconhecer que fatores como o trabalho em si, as condições de trabalho e a natureza do trabalhador influenciam na segurança e na saúde. A esse respeito, fatores relacionados à natureza da pessoa trabalhadora estão exemplificados a seguir:',
'',
'',
'["manejo de substâncias tóxicas, contaminantes ou inflamáveis","carência de equipamentos de proteção e/ou falhas de sinalização","impulsividade, agressividades e dificuldade psicomotora ou perceptiva","jornadas extensas, ruídos elevados ou iluminação inadequada","máquinas mal projetadas ou equipamentos malconservados"]'::jsonb,
'C',
'Fatores ligados à natureza da pessoa (fatores humanos/pessoais) referem-se a características do próprio trabalhador, como impulsividade, agressividade e dificuldades psicomotoras ou perceptivas. As demais alternativas descrevem fatores do ambiente/condições de trabalho (substâncias, sinalização, jornada, ruído, máquinas).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Eixo 1',
'O fenômeno da liderança nas organizações é multidimensional. Em determinada situação, um líder constantemente pauta sua ação em elevar a motivação e o moral dos seus seguidores, em detrimento dos próprios interesses (seus e dos seguidores) para o bem da organização, dando atenção e aconselhamento individual, construindo uma resolução conjunta de problemas e tomada de decisão. O exemplo acima descreve uma liderança do tipo',
'',
'',
'["transformacional","transacional","carismática","autocrática","liberal"]'::jsonb,
'A',
'A liderança transformacional caracteriza-se por elevar a motivação e o moral dos seguidores, inspirá-los a superar interesses próprios em prol da organização, oferecer consideração individualizada e estímulo intelectual, com decisão conjunta. A transacional baseia-se em trocas (recompensa/punição), diferente do descrito.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Eixo 1',
'Um ministério decidiu capacitar seus colaboradores por meio de trilhas de conhecimento. No ambiente virtual de aprendizagem foram organizados tematicamente textos, vídeos e podcasts, em uma sequência de passos estruturados a serem seguidos pelo colaborador. Após o estudo do material, o participante responde a questões autoadministráveis e recebe feedback imediato de forma a permitir a reavaliação do aprendizado. A estratégia de capacitação desenvolvida baseia-se na noção de',
'',
'',
'["dinâmica de grupo","instrução programada","mentoria e orientação","oficina de trabalho","rotação de trabalho"]'::jsonb,
'B',
'A instrução programada organiza o conteúdo em passos sequenciais e estruturados, com autoestudo, questões autoadministráveis e feedback imediato para o próprio aprendiz avaliar seu progresso — exatamente o descrito. As demais opções envolvem interação em grupo, acompanhamento por tutor ou vivência prática, não a autoinstrução sequenciada.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Eixo 1',
'Uma autarquia federal publicou seu plano estratégico e se apresenta como tendo a finalidade máxima de "Viabilizar soluções de infraestrutura da qualidade que adicionem confiança, qualidade e competitividade aos produtos e serviços disponibilizados pelas organizações brasileiras, em prol da prosperidade econômica e bem-estar da nossa sociedade". A apresentação da autarquia sustenta-se no conceito de',
'',
'',
'["análise de cenário","indicador de desempenho","missão organizacional","objetivos estratégicos","visão de futuro"]'::jsonb,
'C',
'A declaração descreve a razão de ser e a finalidade máxima da organização (o que ela faz, para quem e com qual propósito), o que caracteriza a missão organizacional. A visão de futuro expressaria onde a organização quer chegar no futuro, e os objetivos estratégicos seriam metas específicas.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Eixo 1',
'O exercício da liderança no serviço público requer competências particulares. Destaca-se a competência de reconhecer a organização pública como uma arena de disputas entre visões de mundo em que coexiste uma multiplicidade de interesses legítimos e, por vezes, conflitantes, lidando com horizontes temporais, multiplicidade de atores, interesses e relações. Segundo a descrição, a liderança em organizações públicas requer o desenvolvimento de competência',
'',
'',
'["de mobilização de equipe","de tomada de decisão","para inovação","político-gerencial","técnico-funcional"]'::jsonb,
'D',
'Reconhecer a organização pública como arena de disputas entre interesses legítimos e conflitantes, lidando com múltiplos atores e relações internas e externas, exige a competência político-gerencial, que integra a dimensão política (articulação de interesses) à gestão. As demais competências são mais restritas (equipe, decisão, inovação, técnica).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Eixo 1',
'A avaliação da maturidade de processos de negócio consiste na identificação de como os processos de uma organização estão sendo definidos, administrados, medidos, controlados e otimizados, para comparar essas informações com as melhores práticas definidas em modelos de referência reconhecidos no mercado. Ao realizar essa avaliação, o principal objetivo de uma organização é',
'',
'',
'["ajudar no desenho da cadeia de valor da organização.","assegurar que os processos de negócio se mantenham permanentemente alinhados à estratégia organizacional e ao foco do cliente.","definir qual é a melhor ferramenta de gerenciamento de processos disponibilizada no mercado.","identificar as lacunas para suportar a criação de planos de ação para aumentar a maturidade processual da organização.","saber se os modelos de referência no mercado podem ser implementados sem a necessidade de mapear os processos atuais."]'::jsonb,
'D',
'A avaliação de maturidade compara o estado atual dos processos com modelos de referência para identificar lacunas (gaps) e, a partir delas, elaborar planos de ação que elevem a maturidade processual. Não tem como objetivo principal desenhar a cadeia de valor, escolher ferramenta de mercado ou garantir alinhamento permanente.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Eixo 1',
'Um gerente de projetos coordena a implantação de um novo sistema de vendas on-line. Ele enfrenta dificuldades no gerenciamento do tempo; uma solução seria alocar dois profissionais da área de TI, mas o gerente da área tecnológica não autorizou a transferência. Além disso, precisa adquirir dois equipamentos fora da linha de base de custos, mas o gerente de projetos não possui autonomia na gestão financeira para fazer essas aquisições diretamente. Considerando-se o cenário, é provável que esse projeto esteja inserido em uma organização com a estrutura organizacional',
'',
'',
'["funcional","horizontal","matricial forte","orientada a projetos","orientada a cronograma"]'::jsonb,
'A',
'Na estrutura funcional, o poder concentra-se nos gerentes funcionais; o gerente de projetos tem pouca ou nenhuma autoridade sobre recursos e orçamento, dependendo da autorização dos gerentes de área — exatamente o que o cenário descreve (não consegue transferir pessoal nem realizar aquisições). Em estruturas matricial forte ou orientada a projetos, o gerente de projetos teria maior autonomia.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Eixo 1',
'Um projeto de quinze meses tinha o cumprimento do prazo como premissa estratégica. Uma atividade em pátio externo não foi concluída devido a forte tempestade que causou alagamento, danificando equipamentos. Não houve plano de resposta aos riscos. Suponha que o projeto tivesse sido gerenciado segundo o PMBOK e o evento tivesse sido mapeado. Qual ação de resposta poderia ter sido especificada caso fosse escolhida uma estratégia de mitigação de risco?',
'',
'',
'["Aquisição de um seguro para cobrir possíveis danos nos equipamentos.","Criação de um fundo de reservas financeiras para cobrir possíveis danos nos equipamentos.","Monitoramento das condições climáticas para o período de execução da atividade e execução de um plano de contingência para construção de uma cobertura temporária no pátio externo com proteção contra chuvas e alagamento, caso fosse necessário.","Programação da atividade em datas com menor probabilidade de chuvas e tempestades, dependendo das informações meteorológicas monitoradas ao longo do período de execução do projeto.","Renegociação do orçamento planejado com o patrocinador do projeto."]'::jsonb,
'C',
'Mitigar um risco é reduzir sua probabilidade e/ou impacto por ações proativas. Monitorar o clima e preparar/executar uma cobertura temporária de proteção reduz o impacto do evento — logo, mitigação. A transferência (seguro) é opção A; a aceitação ativa (reserva de contingência) é B; e programar em datas de menor probabilidade caracteriza tentativa de evitar/reduzir a probabilidade, porém a resposta que reduz o impacto por medida física é a de mitigação em C.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Eixo 2',
'Por ser um processo sistemático para identificar, avaliar, monitorar e responder aos gargalos que reduzem as chances de alcance dos objetivos estratégicos de determinada ação política, a gestão de riscos é fundamental para a',
'',
'',
'["ampliação das políticas públicas e da burocracia estatal","formação de stakeholders e lideranças comunitárias","gestão governamental e a governança pública","informatização das Prefeituras e dos comitês populares","qualificação dos eleitores e formadores de opinião"]'::jsonb,
'C',
'A gestão de riscos, ao aumentar as chances de alcance dos objetivos estratégicos, é instrumento essencial da gestão governamental e da governança pública, apoiando a tomada de decisão e a prestação de contas. As demais alternativas não são o foco da gestão de riscos.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Eixo 2',
'O Sistema de Organização e Inovação Institucional do Governo Federal (Siorg) é responsável por fornecer as estruturas dos órgãos da Administração Federal, sendo referência na tabela de unidades organizacionais. Compete às unidades setoriais e seccionais do Siorg',
'',
'',
'["definir, padronizar, sistematizar e estabelecer os procedimentos inerentes às atividades de organização e inovação institucional, por meio da edição de enunciados e de instruções.","estabelecer fluxos de informação entre as unidades integrantes do Siorg e os demais sistemas de atividades auxiliares, com vistas a subsidiar os processos de decisão e a coordenação das atividades governamentais.","administrar o cadastro de órgãos e de entidades.","promover estudos e propor a criação, a fusão, a reorganização, a transferência e a extinção de órgãos e de entidades.","desenvolver padrões de qualidade e funcionalidade destinados à melhoria do desempenho dos trabalhos e dos serviços prestados."]'::jsonb,
'E',
'As atribuições de definir/padronizar procedimentos, administrar o cadastro, promover estudos e estabelecer fluxos de informação são do órgão central do Siorg. Às unidades setoriais e seccionais cabe a atuação executiva local, como desenvolver padrões de qualidade e funcionalidade voltados à melhoria do desempenho dos trabalhos e serviços em seus órgãos.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Eixo 2',
'As atividades de tombamento, registro, guarda, controle, movimentação, preservação, baixa e incorporação são exemplos de atividades que compõem a gestão',
'',
'',
'["financeira","contábil","patrimonial","cultural","trabalhista"]'::jsonb,
'C',
'Tombamento (aqui no sentido de registro patrimonial), registro, guarda, controle, movimentação, preservação, baixa e incorporação de bens são atividades típicas da gestão patrimonial, que cuida do ciclo de vida dos bens da entidade.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Eixo 2',
'Em relação aos bens imobiliários da Administração Pública, um se destaca como correspondendo a áreas que não podem ser habitadas pelo homem, sendo admitido apenas o uso indireto de seus recursos naturais, como em atividades de pesquisa científica e turismo ecológico. Tais áreas serão necessariamente de domínio público. Essa categoria de patrimônio imobiliário refere-se a',
'',
'',
'["ilhas","terrenos de marinha","margens de rios","terras indígenas","unidades de conservação"]'::jsonb,
'E',
'A descrição corresponde às unidades de conservação de proteção integral (uso indireto dos recursos, admitindo pesquisa científica e turismo ecológico, sem habitação), que são necessariamente de domínio público. As demais categorias não têm essa característica de uso apenas indireto por proteção integral.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Eixo 2',
'Qual é o principal aspecto da tecnologia de blockchain aplicada à logística?',
'',
'',
'["Diminuição da importância da segurança de dados","Aumento da complexidade nas transações comerciais","Transparência e segurança aprimoradas nas transações","Redução na velocidade de processamento de transações","Aumento da necessidade de intermediários no processo de verificação"]'::jsonb,
'C',
'O blockchain, por ser um registro distribuído, imutável e criptografado, aumenta a transparência e a segurança das transações (rastreabilidade da cadeia logística), além de reduzir a necessidade de intermediários. As demais alternativas contrariam essas características.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Eixo 2',
'Qual é o principal objetivo do governo eletrônico (e-gov)?',
'',
'',
'["Reduzir a transparência governamental para aumentar a eficiência operacional.","Limitar o acesso dos cidadãos aos serviços públicos para controlar a demanda.","Diminuir a comunicação entre diferentes setores do governo.","Aumentar a complexidade dos processos governamentais para melhorar a segurança.","Promover a inclusão digital e a participação cidadã por meio da tecnologia."]'::jsonb,
'E',
'O governo eletrônico visa usar as TICs para melhorar os serviços públicos, ampliar a transparência, promover a inclusão digital e a participação cidadã. As demais alternativas descrevem objetivos opostos aos princípios do e-gov.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Eixo 2',
'Um estaleiro público está enfrentando um incremento de demanda por novas unidades, acarretando altos custos de estoques no processo de fabricação. Qual estratégia o gerente de estoques desse estaleiro poderia adotar para otimizar o controle de estoque?',
'',
'',
'["Compra antecipada de grandes quantidades","Implementação de um sistema de inventário periódico","Centralização do estoque em um único local","Eliminação de todas as formas de inventário","Uso do sistema Just-In-Time (JIT)"]'::jsonb,
'E',
'O sistema Just-In-Time (JIT) reduz custos de estoque ao receber materiais no momento em que são necessários à produção, minimizando estoques ociosos. A compra antecipada de grandes quantidades aumentaria os custos de estocagem, e a eliminação total do inventário é inviável.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Eixo 2',
'Como a legislação influencia a logística reversa?',
'',
'',
'["Limitando importações de difícil reciclagem.","Regulando o setor bancário, financeiro e de seguros.","Impondo regulamentações que exigem a participação das empresas em programas de logística reversa.","Normatizando currículos e qualificação dos professores.","Encorajando a produção de embalagens de uso único para facilitar o descarte."]'::jsonb,
'C',
'A legislação (por exemplo, a Política Nacional de Resíduos Sólidos) influencia a logística reversa ao impor regulamentações que obrigam as empresas a participarem de sistemas/programas de logística reversa, responsabilizando-as pelo retorno dos produtos e embalagens após o consumo.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Eixo 2',
'A Inteligência Artificial (IA) pode ser aplicada na gestão pública para',
'',
'',
'["tomar decisões éticas complexas.","gerenciar relações humanas e comunicação empática.","resolver e mediar conflitos interpessoais.","otimizar a alocação de recursos e a previsão de demandas de serviços.","avaliar de forma subjetiva a educação e os serviços personalizados."]'::jsonb,
'D',
'A IA é eficaz em tarefas analíticas e preditivas, como otimizar a alocação de recursos e prever demandas de serviços públicos com base em dados. Decisões éticas complexas, empatia, mediação de conflitos e avaliações subjetivas permanecem atribuições humanas.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Eixo 2',
'Em resposta a desastres naturais no norte do Brasil, uma ONG de logística humanitária mobilizou uma operação de emergência, adotando uma abordagem sistemática. Qual foi o primeiro passo crítico tomado pela ONG na gestão de riscos do projeto?',
'',
'',
'["Análise financeira","Identificação de riscos","Aquisição de seguros","Treinamento da equipe","Revisão de medidas tomadas em desastres semelhantes"]'::jsonb,
'B',
'No processo de gestão de riscos, após o planejamento, o primeiro passo é a identificação de riscos — reconhecer quais eventos podem afetar o projeto. Só depois vêm a análise (qualitativa/quantitativa), o planejamento de respostas (como seguros) e o monitoramento.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Eixo 3',
'Seja uma população normalmente distribuída com média μ e variância σ². Um estimador para o parâmetro μ é definido como T = (X₁ + 2X₂ + 3X₃ + 4X₄) / 10, em que X₁, X₂, X₃, X₄ são uma amostra aleatória. Sobre o estimador T, conclui-se que',
'',
'',
'["T é não tendencioso e de variância mínima.","T é tendencioso com variância σ².","T tem distribuição normal com média μ e variância (1/10)σ².","T tem distribuição t-Student com 3 graus de liberdade.","T tem distribuição normal com média μ e variância (3/10)σ²."]'::jsonb,
'E',
'Como combinação linear de normais, T é normal. A esperança é E(T) = (1+2+3+4)/10 · μ = (10/10)μ = μ (não tendencioso). A variância é [(1²+2²+3²+4²)/10²]·σ² = (1+4+9+16)/100·σ² = 30/100·σ² = (3/10)σ². Logo, T é normal com média μ e variância (3/10)σ². Não é de variância mínima (a média amostral simples teria variância σ²/4 = 0,25σ², menor que 0,3σ²).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Eixo 3',
'Políticas públicas regulatórias visam a',
'',
'',
'["gerar benefícios concentrados para alguns grupos de atores e custos difusos para todos os contribuintes.","conceder benefícios concentrados a algumas categorias de atores e custos concentrados sobre outras categorias de atores.","estabelecer padrões de comportamento, serviço ou produto para atores públicos e privados.","definir competências, jurisdições, regras das disputas políticas e da elaboração de políticas públicas.","distribuir competências entre poderes e esferas."]'::jsonb,
'C',
'Na tipologia de Lowi/Gormley, as políticas regulatórias estabelecem padrões, normas e regras de comportamento, serviço ou produto para atores públicos e privados. Benefícios concentrados/custos difusos caracterizam políticas distributivas; benefícios e custos concentrados, as redistributivas; e a definição de competências e regras do jogo, as políticas constitutivas/estruturadoras.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Eixo 3',
'[QUESTÃO ANULADA PELA BANCA] Na teoria dos múltiplos fluxos, para que ideias, durante o segundo fluxo (fluxo das soluções/alternativas), sobrevivam, alguns fatores devem ser preservados. Nesse contexto, NÃO pode haver',
'',
'',
'["custos toleráveis","viabilidade técnica","aceitação do público em geral","mudança na composição do Congresso","receptividade por parte dos tomadores de decisão"]'::jsonb,
'D',
'Questão anulada pela banca. Na teoria dos múltiplos fluxos de Kingdon, para uma ideia/solução sobreviver no fluxo das alternativas, ela precisa ter viabilidade técnica, custos toleráveis e aceitação/receptividade dos tomadores de decisão e do público. A mudança na composição do Congresso é elemento do fluxo político, o que gerou a controvérsia e a anulação.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Eixo 3',
'As Políticas Públicas Simbólicas são aquelas em que os formuladores de políticas públicas',
'',
'',
'["possuem condições de elaborá-las, mas intimamente não demonstram grande interesse em colocá-las em prática.","têm interesse em ver a sua política funcionando, porém não têm conhecimento para estruturá-la adequadamente.","não possuem conhecimento específico sobre o problema, o que as torna vazias de intenções políticas genuínas.","incorporam a intenção de resolver um problema público e possuem conhecimento para resolvê-lo.","operam com baixa utilização de recursos públicos, em especial, o financeiro."]'::jsonb,
'A',
'As políticas simbólicas são formuladas mais para sinalizar/dar resposta aparente a uma demanda do que para efetivamente resolvê-la: os formuladores têm condições de elaborá-las, mas não demonstram real interesse ou compromisso em implementá-las de fato. Diferem das políticas efetivas (D), que têm intenção e conhecimento para resolver o problema.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Eixo 3',
'Existe um modelo de tomada de decisão em que as condições cognitivas são de certeza. O exame das alternativas é feito a partir de uma análise completa e cálculos de consequências. A modalidade de escolha é o cálculo, e o critério de decisão é a otimização. Essas características referem-se ao seguinte modelo:',
'',
'',
'["racionalidade limitada","racionalidade absoluta","modelo incremental","modelo lata de lixo","modelo fluxos múltiplos"]'::jsonb,
'B',
'Certeza cognitiva, análise completa de todas as alternativas e consequências, escolha por cálculo e critério de otimização são características do modelo de racionalidade absoluta (racional-abrangente). A racionalidade limitada trabalha com informação incompleta e satisfação (satisficing), não otimização.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Eixo 3',
'Há diversos atores que participam de uma política pública ou a influenciam. Um subgrupo desses atores refere-se aos atores sociais que se organizam coletivamente. É um exemplo de atores coletivos organizados:',
'',
'',
'["usina de ideias","legisladores","gestores públicos nomeados","membros do judiciário","burocratas"]'::jsonb,
'A',
'As "usinas de ideias" (think tanks) são exemplo de atores sociais coletivos organizados que influenciam políticas públicas com pesquisas e propostas. Legisladores, gestores nomeados, membros do judiciário e burocratas são atores estatais/individuais, não atores sociais coletivos.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Eixo 3',
'As ferramentas de políticas públicas se dividem em ferramentas públicas e privadas. Trata-se de um exemplo de ferramenta privada:',
'',
'',
'["informação","incentivos econômicos","regulamentos","família","desincentivos econômicos"]'::jsonb,
'D',
'A família é um exemplo de ferramenta/instrumento privado de política pública, atuando na esfera das relações sociais primárias. Informação, incentivos e desincentivos econômicos e regulamentos são instrumentos operados pelo Estado (ferramentas públicas).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Eixo 3',
'Uma equipe deseja estimar a proporção de indivíduos de uma população que sofrem de burnout. A equipe tem acesso a qualquer indivíduo, mas capacidade para coletar dados de apenas uma parcela irrisória da população. A composição e as características gerais dessa população são totalmente desconhecidas. Diante desse cenário, a equipe deve fazer sua coleta mediante um processo de amostragem',
'',
'',
'["censitária","aleatória simples","por cota","em bola de neve","de conveniência"]'::jsonb,
'B',
'Havendo acesso a qualquer indivíduo da população (o que permite sorteio aleatório) e desconhecendo-se sua composição, a amostragem aleatória simples é a mais adequada, pois dá a cada elemento igual probabilidade de seleção, permitindo inferência com validade estatística. Amostragem por cota exigiria conhecer estratos; bola de neve e conveniência não são probabilísticas.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Eixo 3',
'Uma política pública reformou as salas de aula, o mobiliário e os espaços comuns de escolas da rede pública, com o objetivo de aumentar a motivação e o engajamento de alunos. Os impactos dessa política devem ser avaliados por meio de uma análise de',
'',
'',
'["custo-resultado","custo-benefício","custo-efetividade","custo-eficiência","custo-eficácia"]'::jsonb,
'C',
'Quando o resultado/impacto (motivação e engajamento) não é facilmente monetizável, a avaliação adequada é a análise de custo-efetividade, que relaciona os custos aos efeitos alcançados em unidades não monetárias. A análise de custo-benefício exigiria converter os benefícios em valores monetários.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Eixo 3',
'Um Instituto de Geografia e Estatística levantou dados sobre a idade ao falecer de uma amostra aleatória de pessoas já falecidas. O histograma apresenta uma distribuição fortemente assimétrica à direita (com grande concentração de mortes nas idades mais baixas e uma longa cauda em direção às idades mais altas). Considerando-se que a distribuição não se alterou entre a coleta e a análise, a fração da população que vive mais do que o tempo de vida médio da população é',
'',
'',
'["menor do que 50%","igual a 50%","maior do que 50%, mas menor ou igual a 75%","maior do que 75%, mas menor ou igual a 90%","maior do que 90%"]'::jsonb,
'A',
'Em uma distribuição assimétrica à direita (cauda longa para valores altos), a média é puxada para cima pelos valores extremos, ficando maior que a mediana. Como a mediana divide a população em 50%, a fração que vive mais do que a média (que está acima da mediana) é menor do que 50%.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Eixo 4',
'Uma repartição pública apresentava os seguintes saldos de despesas orçamentárias em 2023: Transferências Correntes: R$ 100.000,00; Transferências de Capital: R$ 120.000,00; Investimentos: R$ 250.000,00; Despesas de Custeio: R$ 270.000,00; Inversões Financeiras: R$ 300.000,00. As despesas de capital da repartição pública em 2023 foram de',
'',
'',
'["R$ 370.000,00","R$ 420.000,00","R$ 640.000,00","R$ 670.000,00","R$ 940.000,00"]'::jsonb,
'D',
'As despesas de capital compreendem Investimentos, Inversões Financeiras e Transferências de Capital. Somando: 250.000 + 300.000 + 120.000 = R$ 670.000,00. As Transferências Correntes e as Despesas de Custeio são despesas correntes, não entram no cálculo.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Eixo 4',
'Em 12/04/2023, uma entidade do setor público recebeu uma doação de cinquenta mil dólares e manteve o valor depositado em conta em dólares. Na data do recebimento, a cotação era de R$ 4,90. No final de abril, o dólar estava a R$ 5,10. Em 31/12/2023, data das demonstrações contábeis, a cotação era de R$ 4,80. Nas demonstrações contábeis, em 31/12/2023, o montante recebido em abril, e que estava no banco, deve ser mensurado por',
'',
'',
'["R$ 240.000,00","R$ 242.500,00","R$ 245.000,00","R$ 247.500,00","R$ 255.000,00"]'::jsonb,
'A',
'Itens monetários em moeda estrangeira (saldo em conta em dólares) devem ser convertidos pela taxa de câmbio da data das demonstrações contábeis (taxa de fechamento). Assim: US$ 50.000 × R$ 4,80 (cotação em 31/12/2023) = R$ 240.000,00. As cotações de abril não são usadas para a mensuração na data do balanço.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Eixo 4',
'Uma entidade do setor público apresentava em seu Balanço Patrimonial, no Quadro dos Ativos e Passivos Financeiros e Permanentes, dívidas fundadas. Uma parcela das dívidas fundadas era classificada como Passivo Financeiro, enquanto o restante era classificado como Passivo Permanente. A parcela da dívida fundada classificada como Passivo Financeiro',
'',
'',
'["depende de autorização legislativa para amortização ou resgate.","é devida a entidades que não são consideradas partes relacionadas.","foi utilizada para financiar projetos de curto prazo.","tem como contrapartida ativos classificados como financeiros.","teve execução orçamentária iniciada e está pendente de pagamento."]'::jsonb,
'E',
'No enfoque orçamentário do Balanço Patrimonial público (Lei 4.320/1964), o Passivo Financeiro compreende compromissos exigíveis cujo pagamento independe de autorização orçamentária — tipicamente os que já tiveram execução orçamentária (empenho) e estão pendentes de pagamento (como restos a pagar). O Passivo Permanente é o que depende de autorização legislativa. Por isso, a parcela financeira é a que teve execução orçamentária iniciada e está pendente de pagamento.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Eixo 4',
'De acordo com a Lei de Responsabilidade Fiscal, é vedada a aplicação da receita de capital derivada da alienação de bens e direitos que integram o patrimônio público para o financiamento de despesa corrente, salvo se destinada por lei',
'',
'',
'["à abertura de créditos adicionais extraordinários","à compra de vacinas em épocas de epidemias","a despesas essenciais no primeiro ano de mandato do Presidente, Governador ou Prefeito Municipal","ao reforço da folha de pagamento de serviços considerados essenciais","aos regimes de previdência social, geral e próprio dos servidores públicos"]'::jsonb,
'E',
'A LRF (art. 44) veda a aplicação de receita de capital derivada da alienação de bens e direitos em despesas correntes, salvo se destinada por lei aos regimes de previdência social, geral e próprio dos servidores públicos. As demais hipóteses não constam da exceção legal.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Eixo 4',
'Em uma entidade do setor público, as receitas com impostos e as receitas com a alienação de bens são classificadas, respectivamente, como',
'',
'',
'["correntes e correntes","correntes e de capital","de capital e de capital","de capital e correntes","de capital e patrimonial"]'::jsonb,
'B',
'As receitas com impostos são receitas correntes (receita tributária). As receitas com alienação de bens são receitas de capital (alienação de ativos). Logo: correntes e de capital.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Eixo 4',
'O portal da Câmara dos Deputados define o orçamento impositivo como um novo princípio orçamentário a ser observado. O orçamento impositivo',
'',
'',
'["é uma autorização para gastar, é uma forma meramente autorizativa.","define o dever de execução das programações orçamentárias.","aplica-se apenas às chamadas despesas obrigatórias.","amplia o espaço para o contingenciamento de despesas por parte do Poder Executivo.","reduz a rigidez do orçamento público."]'::jsonb,
'B',
'O orçamento impositivo estabelece o dever de execução das programações orçamentárias (torna obrigatória a execução de determinadas dotações, como emendas individuais e de bancada), ao contrário do orçamento meramente autorizativo. Ele reduz a discricionariedade do Executivo para contingenciar, aumentando a rigidez.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Eixo 4',
'Dentre as funções/atribuições econômicas clássicas do Estado que possuem reflexos sobre o orçamento público, verifica-se a função alocativa. Essa função atua',
'',
'',
'["na política monetária.","no nível geral de preços.","nas falhas de mercado.","nas alterações da alíquota tributária.","nas obras públicas que visam absorver parcelas desempregadas de mão de obra."]'::jsonb,
'C',
'A função alocativa do Estado (Musgrave) atua na correção de falhas de mercado, provendo bens públicos e semipúblicos que o mercado não oferece de forma eficiente. A atuação sobre nível de preços e emprego é função estabilizadora, e a política monetária e ajustes tributários com fim de estabilização também se ligam à função estabilizadora.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Eixo 4',
'Dentre os orçamentos que compõem a Lei Orçamentária Anual (LOA), verifica-se o Orçamento de Investimento das Estatais. Nessa peça orçamentária,',
'',
'',
'["estão listados os valores das empresas estatais dependentes e independentes.","estão também listadas as receitas e despesas operacionais que serão submetidas a apreciação do legislativo.","são listados os investimentos cujas programações constam integralmente do Orçamento Fiscal e da Seguridade Social.","são listados os investimentos que são suportados ou que recebem recurso do orçamento fiscal.","são listados os investimentos relacionados às aquisições de bens componentes do ativo circulante, que envolvem arrendamento mercantil e às benfeitorias realizadas em bens da União."]'::jsonb,
'D',
'O Orçamento de Investimento das Estatais (art. 165, §5º, II, da CF) abrange as empresas em que a União detém a maioria do capital votante e contempla os investimentos dessas estatais. As estatais dependentes já constam do Orçamento Fiscal e da Seguridade Social; assim, o Orçamento de Investimento lista os investimentos das estatais não dependentes que, ainda assim, são suportados ou recebem recursos do orçamento fiscal, conforme a alternativa D.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Eixo 4',
'A execução orçamentária poderá processar-se mediante a descentralização de créditos. As dotações descentralizadas serão empregadas obrigatória e integralmente na consecução do objeto previsto pelo programa de trabalho pertinente. As empresas públicas federais que não integrarem os orçamentos fiscal e da seguridade social, mas que executarem as atividades de agente financeiro governamental,',
'',
'',
'["poderão receber créditos em descentralização, viabilizando a consecução de objetivos previstos na lei orçamentária.","poderão receber créditos em descentralização, inviabilizando a consecução de objetivos previstos na lei orçamentária.","poderão ou não receber créditos em descentralização, a depender do lobby no Congresso e do ano orçamentário.","não poderão receber créditos em descentralização, viabilizando a consecução de objetivos previstos na lei orçamentária.","não poderão receber créditos em descentralização, inviabilizando a consecução de objetivos previstos na lei orçamentária."]'::jsonb,
'A',
'As empresas públicas federais que executam atividades de agente financeiro governamental, embora não integrem os orçamentos fiscal e da seguridade social, poderão receber créditos por descentralização para executar programas de trabalho, viabilizando a consecução dos objetivos previstos na lei orçamentária.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Eixo 4',
'Quando um contrato é extinto decorrente de culpa exclusiva da Administração, o contratado terá direito a',
'',
'',
'["pagamento pelo custo de mobilização.","pagamento pro rata pelo tempo entre a extinção do contrato e o seu término programado.","devolução em dobro da garantia a título de indenização.","pagamento pelo custo de desmobilização.","devolução dos encargos trabalhistas."]'::jsonb,
'D',
'Na extinção por culpa exclusiva da Administração, a nova Lei de Licitações e Contratos (Lei 14.133/2021) assegura ao contratado o ressarcimento dos prejuízos regularmente comprovados, incluindo o pagamento pelos custos da desmobilização. As demais alternativas não correspondem aos direitos previstos para essa hipótese.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Eixo 5',
'De acordo com a Lei Geral de Proteção de Dados Pessoais, com vistas à execução de políticas públicas, à prestação de serviços públicos, à descentralização da atividade pública e à disseminação e ao acesso das informações pelo público em geral, os dados deverão ser mantidos em formato interoperável e estruturado para o',
'',
'',
'["uso compartilhado","controle de segurança","direito de acesso","tratamento dos dados","banco de dados"]'::jsonb,
'A',
'A LGPD (art. 25) determina que os dados deverão ser mantidos em formato interoperável e estruturado para o uso compartilhado, com vistas à execução de políticas públicas, à prestação de serviços públicos, à descentralização da atividade pública e à disseminação e acesso das informações pelo público em geral.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Eixo 5',
'O Conselho Nacional de Arquivos definiu conceitos de termos para repositórios arquivísticos digitais confiáveis. Relacione: I - Confiabilidade; II - Confidencialidade; III - Conversão; IV - Migração. P - Técnica de migração que pode se configurar de diversas formas; Q - Propriedade de estar acessível e utilizável sob demanda por uma entidade autorizada; R - Propriedade de certos dados ou informações que não podem ser disponibilizadas ou divulgadas sem autorização para pessoas, entidades ou processos; S - Credibilidade de um documento arquivístico enquanto afirmação de um fato; T - Conjunto de procedimentos e técnicas para assegurar a capacidade de os objetos digitais serem acessados face às mudanças tecnológicas. As associações corretas são:',
'',
'',
'["I - R , II - T , III - P , IV - S","I - R , II - T , III - Q , IV - S","I - R , II - T , III - S , IV - Q","I - S , II - R , III - P , IV - T","I - T , II - R , III - Q , IV - P"]'::jsonb,
'D',
'Confiabilidade (I) é a credibilidade do documento como afirmação de um fato (S). Confidencialidade (II) é a propriedade de não divulgar dados sem autorização (R). Conversão (III) é a técnica de migração que se configura de diversas formas (P). Migração (IV) é o conjunto de procedimentos para assegurar o acesso aos objetos digitais frente a mudanças tecnológicas (T). Logo: I-S, II-R, III-P, IV-T.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Eixo 5',
'Para averiguar o valor primário, é preciso verificar se o documento é necessário para o cumprimento das atribuições e para o desempenho das funções da entidade produtora/acumuladora. Nesse contexto, o valor fiscal é aquele que',
'',
'',
'["figura nos documentos ligados a operações financeiras e à comprovação de receita e despesa, geradas para atender a exigências governamentais.","envolve direitos e deveres do cidadão para com o Estado e vice-versa, regulamenta as relações internas e externas do órgão.","está ligado à política administrativa, à história do órgão, aos processos por ele gerados.","representa a consecução das atividades correntes do órgão, tais como planos, programas e relatórios.","está relacionado aos direitos pessoais, atos administrativos, organização e desenvolvimento da instituição."]'::jsonb,
'A',
'O valor fiscal é o dos documentos ligados a operações financeiras e à comprovação de receita e despesa, gerados para atender a exigências fiscais/governamentais. As demais alternativas descrevem o valor legal/jurídico, o valor histórico e o valor administrativo.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Eixo 5',
'A comunicação de políticas públicas pode ser planejada estrategicamente para provocar ou inibir a discussão sobre determinado assunto na sociedade. Geralmente, uma chamada pode ser planejada estrategicamente quando',
'',
'',
'["catástrofes ambientais provocam mobilização da população.","mudanças econômicas estão em jogo e afetam a sociedade.","escândalos políticos desencadeiam circulação de opiniões.","mortes de figuras públicas sensibilizam e emocionam as pessoas.","tragédias sociais despertam interesse e exigem ação dos poderes."]'::jsonb,
'B',
'Uma chamada (pauta) pode ser planejada estrategicamente quando envolve mudanças econômicas que afetam a sociedade, pois são temas previsíveis e programáveis pela comunicação institucional. Os demais eventos (catástrofes, escândalos, mortes, tragédias) são acontecimentos imprevistos/inesperados, que não permitem planejamento estratégico prévio da chamada.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Eixo 5',
'A mídia, ou seja, o conjunto de entidades de "comunicação social", representa uma forma de poder nas sociedades de massa e possui papéis muito importantes, dentre os quais se destaca o de',
'',
'',
'["determinar a implementação de políticas públicas do governo.","julgar e punir cidadãos que cometam infrações na sociedade.","influenciar a formação das agendas públicas e governamentais.","ser porta-voz do governo e defender suas decisões e ações.","impedir relações sociais entre grupos os mais diversos."]'::jsonb,
'C',
'Um dos papéis mais relevantes da mídia é influenciar a formação das agendas pública e governamental (agenda-setting), destacando temas que passam a ser debatidos e priorizados. A mídia não determina a implementação de políticas, não julga/pune (função do Judiciário) nem é, por definição, porta-voz do governo.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Eixo 5',
'Em 2012, o Gabinete de Segurança Institucional da Presidência da República divulgou uma norma complementar com diretrizes para o uso seguro das redes sociais na Administração Pública Federal, reconhecendo o crescimento do uso das redes sociais por órgãos e entidades como ferramenta para se aproximarem do cidadão e prestarem serviços de forma mais ágil e transparente. A partir desse momento, ficou evidente que o governo brasileiro tomou a decisão de adotar uma comunicação institucional',
'',
'',
'["sem caráter educativo, informativo ou de orientação social","com foco maior no uso estratégico de mídias sociais","voltada para o público jovem e com linguagem informal","nas mídias sociais, sem necessidade de recursos financeiros","nas mídias sociais, sem necessidade de contratação de profissionais"]'::jsonb,
'B',
'Ao reconhecer e disciplinar o uso das redes sociais pelos órgãos públicos como ferramenta de aproximação e prestação de serviços, o governo passou a adotar uma comunicação institucional com foco maior no uso estratégico das mídias sociais. As demais alternativas fazem afirmações incorretas (dispensa de recursos, de profissionais, ausência de caráter informativo, etc.).'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Eixo 5',
'O surgimento do documento nato-digital e as novas formas de armazenamento provocaram reconfigurações na organização de arquivos. Nessa nova realidade e com foco na informação orgânico-funcional, é imprescindível preservar',
'',
'',
'["o conteúdo do documento e o contexto em que está inserido.","acesso restrito aos arquivos para sua preservação.","uma equipe preparada para cursos de capacitação no uso de arquivos.","representações da informação em suporte físico e digital.","formas de reprodução do documento nato-digital em meio físico."]'::jsonb,
'A',
'Na arquivística, a informação orgânico-funcional exige preservar não apenas o conteúdo do documento, mas também o contexto (orgânico e funcional) em que ele foi produzido, pois é esse contexto que confere sentido, organicidade e valor probatório ao documento. As demais alternativas não expressam essa preservação de conteúdo e contexto.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Eixo 5',
'Na comunicação pública, a publicidade de ordem legal e a comunicação institucional têm um papel importante porque tornam visíveis as(os)',
'',
'',
'["ações dos Poderes Executivo, Legislativo e Judiciário","intervenções de grandes empresários em decisões políticas","aparatos midiáticos por trás de decisões governamentais","interesses particulares de pessoas em cargos públicos","elementos de formação da esfera de visibilidade pública"]'::jsonb,
'A',
'A publicidade de ordem legal e a comunicação institucional cumprem o dever de transparência ao tornar visíveis à sociedade as ações dos Poderes Executivo, Legislativo e Judiciário, dando publicidade aos atos do Estado. As demais alternativas não correspondem à finalidade da publicidade legal/institucional.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Eixo 5',
'No caso de documentos inseridos em um Sistema Arquivístico de Gestão de Documentos (SIGAD) que são, porém, sigilosos, de acordo com a legislação vigente, é necessário que sejam atribuídas restrições de acesso. Essa atribuição de restrição de acesso deve ser feita no momento do(a)',
'',
'',
'["armazenamento","captura","localização","preservação","tramitação"]'::jsonb,
'B',
'No SIGAD, a atribuição das restrições de acesso deve ocorrer no momento da captura do documento — quando ele é registrado/inserido no sistema, classificado e recebe seus metadados, inclusive os de segurança e sigilo. Fazer isso na captura garante que o controle de acesso acompanhe o documento em todo o seu ciclo de vida.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Eixo 5',
'Um grupo de cidadãos decide participar mais ativamente da vida política e, dentre suas tarefas, busca apurar o destino das verbas públicas vinculadas a obras nos municípios onde reside. Nos termos da Lei no 12.527/2011, existem várias diretrizes para assegurar o direito fundamental de acesso às informações. Uma dessas diretrizes está relacionada ao desenvolvimento do controle',
'',
'',
'["total da administração pública","local da administração pública","social da administração pública","midiático da administração pública","partidário da administração pública"]'::jsonb,
'C',
'A Lei de Acesso à Informação (Lei 12.527/2011) tem, entre suas diretrizes, o desenvolvimento do controle social da administração pública, ou seja, o acompanhamento e a fiscalização das ações e dos gastos públicos pela própria sociedade, como no caso descrito.'
from public.exams where slug = 'cnu-2024-bloco7-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
