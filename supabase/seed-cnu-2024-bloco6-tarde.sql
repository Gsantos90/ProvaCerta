-- Seed: CNU 2024 - Bloco 6 (Setores Economicos e Regulacao) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 06/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 14 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-B,2-B,3-E,4-D,5-C,6-C,7-B,8-E,9-C,10-B,
--           11-B,12-D,13-C,14-D,15-A,16-B,17-D,18-C,19-A,20-D,
--           21-A,22-C,23-E,24-B,25-B,26-A,27-E,28-A,29-A,30-D,
--           31-B,32-A,33-E,34-C,35-A,36-D,37-E,38-A,39-B,40-E,
--           41-E,42-A,43-D,44-E,45-B,46-A,47-A,48-B,49-C,50-C

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco6-tarde', 'CNU 2024 - Bloco 6 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Eixo 1',
'O gráfico do Guia PMBOK apresenta o impacto de variáveis ao longo do tempo no ciclo de vida de um projeto: a curva de Risco parte de um grau alto no início e decresce ao longo do tempo, enquanto a curva de Custo das mudanças parte de um grau baixo no início e cresce ao longo do tempo. Com relação à estrutura genérica apresentada, constata-se que',
'',
'',
'["a gestão de risco do projeto só deve ser realizada na fase inicial do ciclo de vida do projeto.","o processo de aprovação de mudanças do projeto deve ser mais criterioso nas fases finais do ciclo de vida do projeto, considerando-se o atendimento à linha de base de custos.","o risco do projeto diminui à medida que o custo das mudanças também diminui.","os riscos diminuem ao longo do ciclo de vida do projeto como consequência do aumento dos custos das mudanças.","os custos de mudanças na fase inicial do projeto são inexistentes."]'::jsonb,
'B',
'Segundo o Guia PMBOK, o custo das mudanças cresce ao longo do ciclo de vida do projeto. Por isso, quanto mais avançado o projeto, mais criterioso deve ser o processo de aprovação de mudanças, para preservar a linha de base de custos. As demais são incorretas: o risco e o custo das mudanças têm comportamentos inversos (um cai, o outro sobe), não há relação de causa entre eles, e o custo inicial de mudança é baixo, não inexistente.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Eixo 1',
'Uma ferramenta útil que tem sido amplamente empregada por entidades públicas e privadas na adoção de processos de gestão de riscos é a cadeia de valor. Nela, os macroprocessos finalísticos e de suporte, bem como os processos que compõem cada macroprocesso são representados graficamente. Ao elaborar a sua cadeia de valor, uma organização deve considerar que ela',
'',
'',
'["depende dos tipos e do nível de riscos a que a organização está exposta.","facilita a visualização, de forma sistemática, de como a organização estabeleceu processos e de como eles interagem para criar valor.","fornece a base para definição no nível de tolerância a risco aceitável na organização.","indica a estrutura organizacional utilizada para fazer os processos operacionais funcionarem.","tem maior foco nos macroprocessos finalísticos executados para agregar valor à organização."]'::jsonb,
'B',
'A cadeia de valor representa graficamente os macroprocessos (finalísticos e de suporte) e como eles interagem para gerar valor, permitindo uma visualização sistemática dos processos da organização. Ela não depende do nível de risco, não define tolerância a risco, não se confunde com a estrutura organizacional (organograma) e abrange tanto processos finalísticos quanto de suporte.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Eixo 1',
'A Lei Geral de Proteção de Dados Pessoais (LGPD) dispõe sobre a elaboração de relatório de impacto à proteção de dados pessoais. Trata-se de um documento com descrição dos processos de tratamento de dados pessoais que podem gerar riscos às liberdades civis e aos direitos fundamentais, bem como medidas, salvaguardas e mecanismos de mitigação de risco. Nos termos da LGPD, a elaboração do relatório de impacto à proteção de dados pessoais',
'',
'',
'["deve ser requerida pelos titulares de dados tratados por uma entidade.","é uma responsabilidade do encarregado de dados.","é obrigatória quando houver tratamento de dados pessoais sensíveis.","é obrigatória após a ocorrência de incidente de segurança envolvendo dados pessoais.","pode ser determinada ao controlador pela autoridade nacional de proteção de dados."]'::jsonb,
'E',
'Pela LGPD (art. 38), a Autoridade Nacional de Proteção de Dados (ANPD) pode determinar ao controlador que elabore o relatório de impacto à proteção de dados pessoais, inclusive de dados sensíveis. A lei não torna esse relatório automaticamente obrigatório por tratamento de dados sensíveis ou após incidente, tampouco o condiciona a pedido do titular; e sua elaboração é atribuição do controlador, não do encarregado.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Eixo 1',
'Desde o ano 2000, o governo brasileiro tem buscado evoluir seus processos e a prestação de serviços públicos com o auxílio das Tecnologias da Informação e Comunicação (TIC). O Programa de Governo Eletrônico iniciou uma série de adaptações, inovações e desafios para a melhoria da qualidade do serviço público. À luz do texto, esses esforços governamentais com suporte de TIC que originaram o governo eletrônico e que atualmente são concebidos sob a perspectiva de estratégia de governo digital',
'',
'',
'["foram concebidos em uma perspectiva independente de iniciativas de outros níveis de governo e outros poderes.","foram motivados primordialmente pelas exigências de transparência fiscal dispostas na Lei de Responsabilidade Fiscal (LRF).","iniciaram a implementação de ações concretas a partir da vigência da Lei de Acesso à Informação (LAI).","representam novas formas de relacionamento da administração pública com a sociedade, com vistas ao aperfeiçoamento dos serviços públicos.","tiveram como objetivos iniciais promover maior digitalização e reduzir o custo com pessoal."]'::jsonb,
'D',
'O governo eletrônico/digital representa novas formas de relacionamento entre a administração pública e a sociedade, visando aperfeiçoar os serviços públicos. As demais alternativas restringem indevidamente a origem e os objetivos do programa (independência de outros poderes, motivação apenas fiscal pela LRF, início somente com a LAI ou foco em corte de pessoal).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Eixo 1',
'Uma portaria publicada no final do exercício de 2019 estabeleceu diretrizes para redimensionamento do quantitativo de Unidades Administrativas de Serviços Gerais (Uasg), visando reduzir a pulverização das contratações públicas, com benefícios como maior economia de escala, menores custos de instrução processual e incremento do potencial de controle institucional e social. Como esse processo alterou diretrizes relativas à gestão orçamentária dos órgãos e entidades da administração federal, os seus resultados, quanto à eficácia e eficiência, devem ser avaliados',
'',
'',
'["com base na prestação de contas do exercício de implementação.","mediante manifestação específica da instância de auditoria interna.","no âmbito da estrutura de controle interno dos órgãos e entidades.","no parecer de julgamento de contas dos respectivos gestores.","quando decorridos pelo menos dois ciclos de execução orçamentária."]'::jsonb,
'C',
'A avaliação da eficácia e eficiência de mudanças na gestão orçamentária é atribuição contínua da estrutura de controle interno dos próprios órgãos e entidades. Não depende de prestação de contas de um único exercício, de manifestação isolada da auditoria, do parecer de julgamento de contas nem da espera de dois ciclos orçamentários.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Eixo 1',
'Os conselhos de gestão de políticas públicas são espaços de interface entre o Estado e a sociedade, assumindo a cogestão das políticas públicas, com poder partilhado entre representantes do governo e da sociedade. Suas atividades são operacionalizadas por instrumentos como plenárias, fóruns e audiências públicas. Estas últimas são previstas desde a Constituição Federal de 1988 e, em geral, têm como característica básica',
'',
'',
'["possuir caráter deliberativo.","ter pautas abertas a discussões gerais.","implicar debate entre os atores envolvidos.","ser convocada com antecedência mínima de 15 dias.","ser realizada especificamente em modalidade presencial."]'::jsonb,
'C',
'A característica básica da audiência pública é constituir um espaço de debate entre os atores envolvidos sobre um tema específico. Ela tem caráter consultivo (não deliberativo), pauta definida (não aberta a discussões gerais), não tem prazo único e fixo de 15 dias como regra geral, e pode ocorrer em formato presencial ou virtual.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Eixo 1',
'Uma das principais contribuições do modelo Balanced Scorecard (BSC) para a gestão é a adição de perspectivas não financeiras ao monitoramento do planejamento estratégico. Nesse sentido, a capacidade que a organização tem para manter seu capital intelectual com elevado grau de motivação, satisfação interna e produtividade está associada à perspectiva',
'',
'',
'["do cliente","do aprendizado e do crescimento","da integração estratégica","das operações","dos processos internos"]'::jsonb,
'B',
'No BSC, o capital intelectual, a motivação, a satisfação e a produtividade das pessoas estão na perspectiva de aprendizado e crescimento, que trata dos ativos intangíveis (pessoas, sistemas e clima organizacional) que sustentam as demais perspectivas. As perspectivas do cliente, processos internos e financeira tratam de outros focos, e "integração estratégica" e "operações" não são perspectivas clássicas do BSC.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Eixo 1',
'De acordo com dados do Ministério da Saúde, a cobertura vacinal da população brasileira caiu de 73% (2019) para 67% (2020) e 60% (2021). Especialistas advertem que a disseminação de notícias falsas (fake news), com o objetivo de distorcer opiniões a respeito da vacinação, teve efeito negativo, ao desacreditar a mensagem enviada pelo Ministério em suas campanhas publicitárias. Os fatores que criam distorções, equívocos ou atritos e desvirtuam os processos de comunicação ou dificultam sua efetividade, como as fake news, são denominados',
'',
'',
'["mídias sociais ou ambientes virtuais","plataformas digitais ou sites","canais de comunicação ou aplicativos","receptores da mensagem ou destinatários da mensagem","barreiras, ruídos ou obstáculos"]'::jsonb,
'E',
'No modelo de comunicação, tudo o que distorce, interfere ou dificulta a transmissão fiel da mensagem entre emissor e receptor é chamado de ruído (também referido como barreira ou obstáculo). As fake news atuam como ruído no processo comunicacional. As demais alternativas descrevem meios/canais ou elementos do processo, não os fatores de distorção.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Eixo 1',
'O tempo médio de duração (em meses) para a conclusão dos processos administrativos do órgão P foi: 2020 = 18; 2021 = 16; 2022 = 17; 2023 = 13. A nova gestão estabeleceu como meta reduzir o tempo médio (a média dos 4 anos) em 2 desvios padrão. Assim, o novo tempo médio deverá ser a média dos 4 anos menos duas vezes o desvio padrão dos tempos observados. Com base na tabela de raízes fornecida (√3,5 ≈ 1,87), o valor mais próximo do tempo médio, em meses, estabelecido como meta é',
'',
'',
'["10","11","12","13","14"]'::jsonb,
'C',
'A média é (18+16+17+13)/4 = 64/4 = 16. Os desvios em relação à média são +2, 0, +1, -3, cujos quadrados somam 4+0+1+9 = 14; a variância populacional é 14/4 = 3,5 e o desvio padrão é √3,5 ≈ 1,87. A meta = 16 - 2×1,87 = 16 - 3,74 ≈ 12,26, cujo valor mais próximo é 12.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Eixo 1',
'Considere quatro depoimentos de uma pesquisa de análise de conflitos em instituições públicas: (1) "Existem conflitos e conflitos, aquele conflito resultado do embate profissional... ajuda a crescer."; (2) "As prioridades aqui na instituição são muito voláteis, a gente não sabe exatamente o conteúdo e os objetivos do trabalho..."; (3) "Não existe companheirismo ou boas relações interpessoais: cada um faz a sua parte, e muitos vigiam o que os outros fazem."; (4) "O administrador distribui as tarefas por competência ou por achar que alguém da equipe deve fazer, sem levar em conta a maneira como o trabalho deve ser realizado." Esses quatro depoimentos ilustram, respectivamente, conflitos:',
'',
'',
'["funcionais, de processo, de relacionamento e de tarefa","funcionais, de tarefa, de relacionamento e de processo","intrapessoais, interpessoais, intragrupais e intergrupais","por interesses conflitantes, por mal-entendidos, por dificuldades intrapessoais e por incompatibilidade","por mal-entendidos, por interesses conflitantes, por dificuldades intrapessoais e por incompatibilidade"]'::jsonb,
'B',
'O depoimento (1) descreve o conflito funcional/construtivo (o embate que ajuda a crescer). O (2), sobre incerteza de conteúdo e objetivos do trabalho, é conflito de tarefa. O (3), sobre relações interpessoais ruins, é conflito de relacionamento. O (4), sobre a forma/maneira de realizar o trabalho, é conflito de processo. Logo: funcionais, de tarefa, de relacionamento e de processo.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Eixo 2',
'Duas pessoas são autoras de invenção e passam a disputar a sua patente. Há dificuldade de definir quem seria o inventor originário. De acordo com a Lei no 9.279/1996, quando dois ou mais autores tiverem realizado a mesma invenção, de forma independente, o direito de obter patente será assegurado àquele que provar o',
'',
'',
'["dia da criação","depósito mais antigo","efetivo movimento utilitário","local de funcionamento","momento do registro"]'::jsonb,
'B',
'A Lei de Propriedade Industrial (Lei 9.279/1996, art. 7º) adota o critério do "first to file": quando há invenções independentes iguais, o direito à patente é assegurado a quem provar o depósito mais antigo, independentemente das datas de invenção ou criação.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Eixo 2',
'Uma autarquia, tipificada como Instituição Científica, Tecnológica e de Inovação (ICT), está aplicando a Lei no 13.243/2016. Existem ações de estímulo que podem ser feitas por essa ICT, visando apoiar o desenvolvimento de projetos de cooperação que objetivam a geração de produtos, envolvendo empresas e entidades privadas sem fins lucrativos voltadas para atividades de pesquisa e desenvolvimento. Uma ação de estímulo possível, segundo essa lei, é',
'',
'',
'["aprovar a criação de sociedades empresárias por servidores públicos do ICT, desde que a licença seja aprovada pelo STJ.","dar à União participação majoritária do capital social de empresas que desenvolvem produtos oriundos dessa ICT.","instituir um servidor da ICT como sócio majoritário ou como o sócio administrador de startups criadas.","ceder o uso de imóveis da ICT para a instalação e a consolidação de ambientes promotores da inovação às empresas interessadas.","permitir que um pesquisador possa dispor as patentes universitárias para um terceiro, sem precisar de autorização."]'::jsonb,
'D',
'O Marco Legal de CT&I (Lei 13.243/2016) autoriza a ICT a compartilhar e ceder o uso de seus laboratórios, equipamentos e imóveis para a instalação e consolidação de ambientes promotores da inovação (incubadoras, parques tecnológicos etc.). As demais alternativas contrariam a lei: não cabe ao STJ aprovar licenças, não se exige participação majoritária da União, o servidor não pode ser sócio-administrador nesses termos e a disposição de patentes exige observância de regras/autorização.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Eixo 2',
'Considere que, no ano 2020, a temperatura T (em °C) de uma cidade seja aproximada por T(t) = 24 + 16 × sen(πt/6 − 4π/6), com 0 ≤ t ≤ 12 (t em meses). Considerando-se esse modelo, o valor máximo dessa temperatura, em °C, no ano de 2020, foi igual a',
'',
'',
'["24","36","40","42","45"]'::jsonb,
'C',
'O valor máximo de uma função da forma A + B·sen(...) ocorre quando o seno vale 1. Assim, o máximo é 24 + 16×1 = 40 °C. (Basta verificar que existe t no intervalo em que o argumento do seno atinge π/2.)'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Eixo 2',
'A Advocacia Geral de determinado país usa Inteligência Artificial (IA) para distribuir automaticamente os processos entre suas equipes. De vez em quando a IA erra e o processo é enviado à equipe errada, o que acontece em 20% dos processos. Qual é, aproximadamente, a probabilidade de que, em 3 processos, pelo menos um seja enviado para a equipe errada?',
'',
'',
'["99%","60%","51%","49%","0,8%"]'::jsonb,
'D',
'P(pelo menos um erro) = 1 − P(nenhum erro). A probabilidade de acerto em cada processo é 0,8, e para 3 processos independentes é 0,8³ = 0,512. Logo, P(pelo menos um erro) = 1 − 0,512 = 0,488 ≈ 49%.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Eixo 2',
'O prefeito lançou a política Escola Bela, que reformou 75% das escolas públicas do município. No último ano, observou que apenas 10% das escolas do município melhoraram sua nota no Ideb, e que 90% das escolas que melhoraram foram reformadas pelo Escola Bela. Ele quer usar como propaganda: "9 em cada 10 escolas que tiveram melhoria no Ideb são Escola Bela". Uma análise mais correta é perguntar qual fração das escolas beneficiadas pela política Escola Bela melhorou sua nota no Ideb. Qual é a resposta?',
'',
'',
'["12%","15%","18%","21%","24%"]'::jsonb,
'A',
'Considere 100 escolas. Melhoraram no Ideb: 10% = 10 escolas. Destas, 90% foram reformadas = 9 escolas reformadas que melhoraram. As escolas reformadas (Escola Bela) somam 75% = 75 escolas. A fração das escolas do Escola Bela que melhorou é 9/75 = 0,12 = 12%.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Eixo 2',
'O Instituto de Seguridade Social coletou uma amostra de 100 processos de aposentadoria por invalidez e constatou que 16 foram indevidamente concedidos (16%). A instituição acreditava que o percentual era de 10%. Adotando-se nível de significância de 5% (teste unilateral à direita, valor crítico z = 1,64), existem motivos para acreditar que o percentual é maior do que 10%?',
'',
'',
'["Sim, uma vez que a estatística do teste supera o valor crítico para essa estatística, 1,96.","Sim, uma vez que a estatística do teste supera o valor crítico para essa estatística, 1,64.","Não, uma vez que a estatística do teste supera o valor crítico para essa estatística, 1,96.","Não, uma vez que a estatística do teste supera o valor crítico para essa estatística, 1,64.","Não, uma vez que a estatística do teste supera o valor crítico para essa estatística, 1,28."]'::jsonb,
'B',
'A estatística é z = (0,16 − 0,10) / √(0,10×0,90/100) = 0,06 / √(0,0009) = 0,06 / 0,03 = 2,0. Para um teste unilateral a 5%, o valor crítico é 1,64. Como 2,0 > 1,64, rejeita-se a hipótese nula: há motivos para acreditar que o percentual é maior que 10%. Logo, "Sim", com valor crítico 1,64.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Eixo 2',
'A Lei no 8.987, de 13 de fevereiro de 1995, dispõe sobre o regime de concessão e permissão da prestação de serviços públicos previsto no art. 175 da Constituição Federal de 1988. O capítulo X lista as possíveis modalidades de extinção da concessão, que pode se dar por',
'',
'',
'["fusão ou falência","concordata ou falência","encampação ou intervenção","caducidade ou anulação","falecimento ou incapacidade do titular, no caso de empresa individual ou intervenção"]'::jsonb,
'D',
'Pela Lei 8.987/1995 (art. 35), a extinção da concessão ocorre por: advento do termo contratual, encampação, caducidade, rescisão, anulação e falência ou extinção da empresa concessionária (ou falecimento/incapacidade do titular, no caso de empresa individual). Entre as opções, apenas "caducidade ou anulação" lista duas modalidades legais de extinção. A intervenção não é forma de extinção.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Eixo 2',
'A descentralização para formulação e implementação de políticas públicas tomou vulto nas últimas décadas. Uma das formas de avançar no tema foi o desenvolvimento de arranjos institucionais. Uma das características desses arranjos institucionais é a',
'',
'',
'["proposição dos mesmos diagnósticos, estratégias e instrumentos de avaliação advindos das organizações participantes.","homogeneidade na configuração dos agentes participantes.","tentativa de entregar resultados mais equitativos e/ou efetivos.","isenção política.","equitativa leitura das realidades locais por parte das organizações participantes."]'::jsonb,
'C',
'Os arranjos institucionais buscam entregar resultados mais equitativos e/ou efetivos, articulando diferentes atores e recursos. Eles se caracterizam pela heterogeneidade dos agentes e das leituras locais (não homogeneidade), não pressupõem diagnósticos idênticos e não são politicamente isentos.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Eixo 2',
'No que se refere aos sistemas (sinais) analógicos e digitais, verifica-se que o sinal',
'',
'',
'["digital apresenta números descontínuos ou inteiros.","digital apresenta variações infinitas entre seus valores.","analógico trafega por uma faixa de frequência menor que a do digital, reduzindo as possíveis oscilações.","analógico apresenta valores discretos no tempo e na amplitude.","analógico é de pior qualidade porque privilegia o armazenamento de dados."]'::jsonb,
'A',
'O sinal digital é representado por valores discretos/descontínuos (tipicamente inteiros, como 0 e 1). O sinal analógico é contínuo e assume infinitos valores no tempo e na amplitude. Por isso, as alternativas que atribuem variações infinitas ao digital ou valores discretos ao analógico estão trocadas/incorretas.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Eixo 2',
'Dentre os instrumentos de desenvolvimento de políticas públicas estão os consórcios. A Lei no 11.107, de 6 de abril de 2005, dispõe sobre normas gerais de contratação de consórcios públicos. Segundo essa lei, o consórcio público',
'',
'',
'["poderá, para o cumprimento de seus objetivos, ser contratado pela administração direta ou indireta dos entes da Federação consorciados, tão somente por licitação.","poderá ter fins econômicos e lucrativos.","tem seu escopo de atuação limitado às áreas de governo: saúde, educação, segurança e infraestrutura.","recebe recursos financeiros e patrimônio por contrato de rateio celebrado entre os entes instituidores.","dispensa a necessidade de ter personalidade jurídica."]'::jsonb,
'D',
'Pela Lei 11.107/2005, os entes consorciados entregam recursos financeiros ao consórcio por meio do contrato de rateio. O consórcio pode ser contratado pelos entes consorciados com dispensa de licitação; não tem fins lucrativos; não tem escopo limitado às áreas citadas; e adquire personalidade jurídica (de direito público ou privado).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Eixo 3',
'O mundo possui uma matriz energética composta, dentre outras fontes, por fontes não renováveis como o carvão mineral, o petróleo e o gás natural. A matriz energética do Brasil é',
'',
'',
'["diferente da mundial, pois o país usa mais fontes renováveis do que no resto do mundo.","diferente da mundial, pois o país usa menos fontes renováveis do que no resto do mundo.","igual à mundial, pois o país usa o mesmo percentual de fontes renováveis do que o resto do mundo.","parecida com a mundial, pois o país usa muitas fontes renováveis.","parecida com a mundial, pois o país usa poucas fontes renováveis."]'::jsonb,
'A',
'A matriz energética brasileira é diferente da mundial porque o Brasil utiliza proporção muito maior de fontes renováveis (hidrelétrica, biomassa/etanol, eólica e solar) do que a média mundial, que ainda é fortemente baseada em combustíveis fósseis.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Eixo 3',
'A teoria das vantagens comparativas, proposta por David Ricardo, é a principal base analítica para a defesa do livre-comércio, mas Paul Krugman aponta que, por suas hipóteses irrealistas, o princípio ricardiano tem sido questionado. Em contraste com o que se observa no mundo real, a teoria das vantagens comparativas, na versão neoclássica do princípio ricardiano, pressupõe a prevalência de',
'',
'',
'["tecnologias sujeitas a retornos crescentes de escala.","diferenciação de produtos como estratégia de competição.","concorrência perfeita em todos os mercados.","inovação como estratégia de posicionamento nos mercados.","uso de marcas e patentes para estabelecer poder de monopólio."]'::jsonb,
'C',
'A versão neoclássica do princípio ricardiano pressupõe concorrência perfeita em todos os mercados (e retornos constantes de escala), hipóteses irrealistas criticadas pela nova teoria do comércio. As demais alternativas (retornos crescentes, diferenciação de produtos, inovação e poder de monopólio) são justamente os elementos da realidade que a teoria clássica não contempla.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Eixo 3',
'Entre o final do século XVIII e a primeira metade do século XIX, políticos e economistas nacionalistas, como Friedrich List, rejeitaram as recomendações de adesão ao livre-comércio de Adam Smith. List recomenda que as nações mais atrasadas adotem medidas protecionistas para alcançar o nível das nações mais adiantadas, argumentando que um país atrasado nunca alcançará pleno desenvolvimento manufatureiro sem proteção de sua indústria local. Trata-se do argumento para a',
'',
'',
'["aplicação de salvaguardas comerciais","correção de falhas de mercado","adoção de política comercial estratégica","proteção da indústria senil","proteção da indústria nascente"]'::jsonb,
'E',
'Friedrich List é o formulador clássico do argumento da proteção da indústria nascente (infant industry): indústrias em estágio inicial em países atrasados precisam de proteção temporária para amadurecer e competir com as indústrias já consolidadas dos países desenvolvidos. Não se confunde com salvaguardas, falhas de mercado, política comercial estratégica (mais recente) ou indústria "senil".'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Eixo 3',
'As empresas que operam em mercados perfeitamente competitivos são incapazes de extrair lucros econômicos extraordinários ("lucros de monopólio"), no longo prazo, porque',
'',
'',
'["impõem barreiras à entrada de competidores rivais.","existe total liberdade de entrada e saída de competidores rivais nesses mercados.","produzem bens diferenciados.","considerando-se os bens produzidos, suas curvas de demanda individuais são infinitamente inelásticas com relação aos preços de mercado.","considerando-se os bens produzidos, suas curvas de demanda individuais são negativamente inclinadas com relação aos preços de mercado."]'::jsonb,
'B',
'Na concorrência perfeita, a livre entrada e saída de firmas elimina lucros econômicos extraordinários no longo prazo: se há lucro, novas firmas entram e o reduzem a zero (lucro normal). Não há barreiras à entrada, os bens são homogêneos e a curva de demanda da firma individual é infinitamente elástica (horizontal), não inelástica nem negativamente inclinada.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Eixo 3',
'Em janeiro de 2024, o governo divulgou a "Nova Indústria Brasil" (NIB), com o subtítulo "Plano de Ação para a Neoindustrialização". O argumento em prol da reindustrialização é amparado pela teoria econômica. De acordo com Nicholas Kaldor, a indústria de transformação, como um todo, funciona como motor do crescimento econômico, no longo prazo, porque',
'',
'',
'["opera em condições de concorrência perfeita.","utiliza tecnologias sujeitas a retornos crescentes de escala.","utiliza tecnologias sujeitas a retornos constantes de escala.","produz bens de reduzida elasticidade-renda da demanda, no longo prazo.","detém baixo potencial difusor de progresso técnico."]'::jsonb,
'B',
'Segundo as leis de Kaldor, a indústria de transformação é o motor do crescimento porque opera com retornos crescentes de escala (a produtividade cresce com a produção — a chamada Lei de Kaldor-Verdoorn), além de possuir alta elasticidade-renda da demanda e elevado potencial de difusão de progresso técnico. As demais alternativas negam essas características.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Eixo 3',
'A teoria microeconômica neoclássica admite estímulos governamentais (subvenções e subsídios) quando "falhas de mercado" fazem com que os investimentos privados sejam insuficientes. Entre as atividades sujeitas a falhas de mercado estão as de pesquisa e desenvolvimento em ciência e tecnologia básica, com características de "bens públicos". As atividades de pesquisa e desenvolvimento (P&D), em ciência e tecnologia básica (C&T), são caracterizadas como um "bem público", porque',
'',
'',
'["o risco de captura dos lucros decorrentes dessas atividades, por parte das empresas imitadoras rivais, torna altamente incerta a rentabilidade privada esperada das empresas inovadoras, fazendo com que os investimentos totais em C&T sejam efetivados em condições subótimas.","os custos marginais privados de acesso aos resultados das atividades de C&T tendem ao infinito, por parte de empresas imitadoras rivais.","os custos fixos iniciais envolvidos são muito elevados.","as externalidades negativas são geradas no longo prazo.","as atividades são altamente rentáveis para os setores governamentais."]'::jsonb,
'A',
'O conhecimento gerado em C&T básica tem características de bem público (não rivalidade e dificuldade de exclusão): os concorrentes podem se apropriar dos resultados (imitação), tornando incerta a rentabilidade privada da firma inovadora. Isso leva a subinvestimento privado (condição subótima), justificando o estímulo estatal. As demais alternativas descrevem incorretamente a natureza do problema.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Eixo 3',
'A Tabela registra o Balanço de Pagamentos do Brasil (US$ milhões) em 2012-2014: Transações Correntes = -54.249 (2012), -81.227 (2013), -91.288 (2014); Conta Capital = -1.877, 1.193, 590; Conta Financeira = 71.886, 73.159, 97.809; Erros e Omissões = 3.130, 949, 3.722. De acordo com os dados informados, o Brasil',
'',
'',
'["teve saída líquida de capitais financeiros no triênio 2012-2014.","teve superávit no Balanço de Pagamentos em 2013.","teve aumento de reservas internacionais em 2013.","registrou perda de reservas internacionais em 2012.","dependeu de poupança externa no triênio 2012-2014."]'::jsonb,
'E',
'Nos três anos as transações correntes foram deficitárias (saldos negativos crescentes), o que significa que o país gastou mais com o exterior do que recebeu e precisou financiar esse déficit com entrada de capitais (conta financeira positiva) — ou seja, dependeu de poupança externa no triênio. A conta financeira foi positiva (entrada, não saída de capitais), e os dados não sustentam superávit do BP nem as afirmações específicas sobre reservas.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Eixo 3',
'No trecho da Teoria Geral, Keynes afirma: "Não é... a desutilidade marginal do trabalho... que determina o volume de emprego... A propensão a consumir e o nível do novo investimento é que determinam, conjuntamente, o nível de emprego, e é este que... determina o nível de salários reais, e não o inverso." No trecho citado, Keynes argumenta que o nível de emprego nas economias capitalistas depende, fundamentalmente, da(o)',
'',
'',
'["demanda efetiva","carga tributária","oferta agregada","salário real","salário nominal"]'::jsonb,
'A',
'O princípio da demanda efetiva é central em Keynes: o nível de emprego é determinado pela demanda agregada esperada, formada pela propensão a consumir (consumo) e pelo nível de novo investimento. Não é o salário real (visão clássica que Keynes refuta), nem a oferta agregada, carga tributária ou salário nominal que determinam o emprego.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Eixo 3',
'A "doença holandesa" (Dutch disease) acometeu a Holanda nos anos 1960 com a descoberta de gás natural. Para os países fortemente dependentes das exportações de produtos primários e outras commodities, como o Brasil, nos períodos de boom de preços desses produtos nos mercados globais, a doença holandesa acarreta',
'',
'',
'["sobrevalorização das moedas nacionais em relação ao dólar e desindustrialização.","sobrevalorização da moeda nacional em relação ao dólar e aumento da participação dos serviços de alta tecnologia no PIB.","subvalorização das moedas nacionais em relação ao dólar e aumento da participação do setor manufatureiro no PIB.","subvalorização da moeda nacional em relação ao dólar e fuga de capitais estrangeiros.","subvalorização da moeda nacional em relação ao dólar e aumento da produtividade média agregada."]'::jsonb,
'A',
'No boom de commodities, a forte entrada de divisas provoca sobrevalorização (apreciação) da moeda nacional, o que reduz a competitividade da indústria de transformação e leva à desindustrialização — o núcleo da doença holandesa. As alternativas que falam em subvalorização e aumento da manufatura invertem o mecanismo.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Eixo 3',
'No trecho de Maria da Conceição Tavares: "Este período, desde a crise [dos anos 1930] até o começo da década de 1950, seria o único que poderia merecer... a designação de substituição de importações, dado que, a partir de uma capacidade para importar que diminui em termos absolutos, conseguiu-se promover um intenso crescimento da produção industrial." Na interpretação clássica da autora, a origem da industrialização por substituição de importações, no Brasil, está relacionada à',
'',
'',
'["expansão da economia cafeeira no final do século XIX.","diversificação do setor industrial a partir da década de 1920.","difusão do trabalho assalariado, que se seguiu à Abolição da escravatura.","crise do setor cafeeiro, no período imediatamente posterior ao crash de 1929.","política de sustentação dos preços externos do café, inerente ao Acordo de Taubaté."]'::jsonb,
'D',
'Para Maria da Conceição Tavares, o processo de industrialização por substituição de importações tem origem na crise do setor cafeeiro após o crash de 1929: a queda da capacidade de importar, num contexto de restrição externa, estimulou a produção interna de bens antes importados, impulsionando a indústria.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Eixo 4',
'Como consequência do processo de desenvolvimento das práticas orçamentárias, o orçamento-programa ultrapassa a fronteira do orçamento como simples documento financeiro, aumentando sua dimensão. Nesse sentido, ao estruturar a sua adoção, o gestor de um ente público deve levar em conta que o orçamento-programa',
'',
'',
'["deve ter foco direcionado ao controle dos objetos de gasto.","exige a identificação das alternativas viáveis para solucionar os problemas.","é planejado com ênfase no desempenho individualizado das instâncias da estrutura organizacional.","é um modelo que relativiza a quantificação de objetivos e a fixação de metas.","requer mecanismos de participação social para se legitimar."]'::jsonb,
'B',
'O orçamento-programa vincula recursos a objetivos e programas, exigindo a identificação das alternativas viáveis para solucionar os problemas e alcançar as metas. Diferentemente do orçamento tradicional, não foca no controle dos objetos de gasto nem no desempenho individual das unidades, e trabalha com quantificação de objetivos e metas (não a relativiza).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Eixo 4',
'A política de irrigação pública no Brasil visa promover o desenvolvimento socioeconômico, com foco em regiões economicamente desfavorecidas. Estudos revelam efeito positivo da presença institucional de projetos de irrigação no valor da produção de frutas. À luz do conceito e da classificação da despesa pública, constata-se que os valores aplicados em investimentos na área que evidenciam o efeito econômico da realização da despesa e um maior detalhamento do que será desenvolvido para alcançar o objetivo do programa podem ser evidenciados a partir das seguintes categorias:',
'',
'',
'["categorias econômicas e estrutura programática (ação)","estrutura programática (programa) e grupos de natureza de despesa","classificação funcional (subfunção) e estrutura programática (metas)","grupos de natureza de despesa e classificação funcional (subfunção)","modalidade de aplicação e estrutura programática (forma de implementação)"]'::jsonb,
'A',
'A categoria econômica da despesa (corrente/capital, evidenciando o efeito econômico — no caso, investimento) combinada com a estrutura programática na dimensão da ação (que detalha o que será desenvolvido para alcançar o objetivo do programa) é o que permite evidenciar simultaneamente o efeito econômico e o detalhamento operacional descritos no enunciado.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Eixo 4',
'O texto apresenta dados do PLOA da União para 2024 (despesas de R$ 5,5 trilhões, salário mínimo, emendas parlamentares, limite de despesas primárias, meta fiscal de zerar o déficit com tolerância, pisos de educação e saúde). À luz do texto e dos conceitos e regras das etapas que abrangem o planejamento e a execução das despesas públicas, constata-se que',
'',
'',
'["as despesas fixadas no orçamento são alteradas em geral por emendas parlamentares, ao longo do exercício.","despesas individualmente fixadas na LOA devem ser ajustadas pela inflação mais a variação do PIB do ano anterior.","despesas programadas para o refinanciamento da dívida pública não são passíveis de ajustes.","despesas sujeitas a valor mínimo de aplicação não devem ser objeto de emendas parlamentares.","enquanto a meta de resultado primário é definida na LDO, as despesas primárias são especificadas na LOA."]'::jsonb,
'E',
'A meta de resultado primário (déficit/superávit primário) é definida na Lei de Diretrizes Orçamentárias (LDO), enquanto as despesas primárias são especificadas na Lei Orçamentária Anual (LOA). As demais alternativas generalizam indevidamente regras de reajuste, de emendas e de refinanciamento da dívida.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Eixo 4',
'Uma agência reguladora, ao criar regulamentações ambientais, recebe relatórios científicos indicando danos significativos, mas o principal participante do lobby é um setor industrial contrário às regras mais rígidas, apoiado por membros do congresso. Mesmo com as evidências científicas, o setor industrial foi capaz de mover a nova regulamentação na direção de sua preferência, fazendo a agência adotar abordagem mais leniente. Dessa forma, a teoria mais adequada para o contexto específico em questão é a',
'',
'',
'["Teoria do Agente-Principal","Teoria do Lobby","Teoria da Captura","Teoria da Escolha Pública","Teoria dos Grupos de Interesse"]'::jsonb,
'C',
'A Teoria da Captura (regulatory capture) descreve exatamente a situação em que a agência reguladora, que deveria defender o interesse público, passa a atuar em favor do setor regulado que ela deveria fiscalizar, adotando posições alinhadas aos interesses das empresas. É o conceito mais preciso para o cenário descrito.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Eixo 4',
'Os planos de benefícios previdenciários de entidades fechadas oferecem segurança financeira aos servidores. Nesse sentido, o plano de previdência complementar dos servidores do executivo tem como regra que',
'',
'',
'["para cada R$ 1,00 que o servidor deposita mensalmente na reserva individual em contribuições regulares, o órgão também destina R$ 1,00 com limites específicos sobre o salário de participação.","para o plano de contribuição definida, há risco atuarial para a entidade patrocinadora, dadas as estimativas do passivo com base em hipóteses atuariais.","um servidor, ao aderir aos planos Vida Gerador de Benefício Livre (VGBL), pode deduzir o valor das contribuições em até 12% da renda bruta anual na declaração do imposto de renda.","como é classificado como Plano Ativo Alternativo, acessível a qualquer pessoa individualmente, um futuro servidor pode contribuir antes mesmo de assumir o cargo.","parte dos lucros e rendimentos pode ser compartilhada com a entidade de previdência complementar e com cada um dos servidores."]'::jsonb,
'A',
'No regime de previdência complementar do servidor (Funpresp), a patrocinadora (a União/órgão) faz a contrapartida da contribuição do participante na proporção de até 1 para 1 (R$ 1,00 do patrocinador para cada R$ 1,00 do servidor), respeitados limites sobre o salário de participação. Nos planos de contribuição definida não há risco atuarial para a patrocinadora; a dedução de 12% aplica-se ao PGBL (não ao VGBL); e o plano não é aberto a qualquer pessoa antes da posse.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Eixo 4',
'Um ativo imobilizado que sofre manutenções frequentes teve sua vida útil revisada, havendo alteração no padrão esperado do método de depreciação. O gestor se deparou com: (1) o método linear apresenta o padrão esperado de consumo dos benefícios econômicos futuros do ativo; (2) o método dos saldos decrescentes apresenta um valor menor de depreciação e mais vantajoso em termos monetários. Considerando-se as informações, o administrador público deve',
'',
'',
'["considerar a alteração na vida útil como mudança de política contábil para a entidade.","cessar a depreciação do ativo, pois a diferença de valores entre os métodos exige nova revisão.","cessar a depreciação do ativo, pois a manutenção afasta a necessidade de depreciá-lo.","utilizar o método linear de depreciação, pois apresenta o padrão esperado de consumo dos benefícios econômicos futuros do ativo.","utilizar o método dos saldos decrescentes, dada a abordagem do resultado mais vantajoso."]'::jsonb,
'D',
'O método de depreciação deve refletir o padrão esperado de consumo dos benefícios econômicos futuros do ativo (norma contábil). Como o enunciado indica que o método linear é o que representa esse padrão, ele deve ser adotado, independentemente de o método dos saldos decrescentes ser financeiramente mais vantajoso. A escolha não pode se basear em vantagem monetária, a manutenção não cessa a depreciação e a revisão de vida útil é mudança de estimativa (não de política contábil).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Eixo 4',
'O esforço exercido por um gestor não é observável para acionistas e credores nas empresas em que há separação da propriedade e do controle. Nesse sentido, o desafio da contabilidade financeira é fornecer uma medida informativa do desempenho gerencial que permita contratos de incentivos eficientes e proteja credores e acionistas do oportunismo dos gestores. Nesse contexto, o tipo de assimetria de informação presente é a(o)',
'',
'',
'["seleção adversa","aversão ao risco","relação de agência","custo de agência","risco moral"]'::jsonb,
'E',
'Quando o esforço/ação do gestor não é observável (ação oculta) após a contratação, e ele pode agir em interesse próprio, tem-se risco moral (moral hazard). A seleção adversa refere-se à informação oculta antes do contrato (características); relação de agência e custo de agência descrevem o problema mais amplo, mas o tipo específico de assimetria de informação aqui é o risco moral.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Eixo 4',
'A integração vertical proporciona uma discussão latente nos mercados regulados. Para a teoria, em sua fase inicial, as decisões da firma (organização) acerca da viabilidade da verticalização devem considerar que',
'',
'',
'["a especificidade dos ativos é importante.","vai haver substituição de contratos completos por contratos incompletos em um ambiente de incertezas.","uma integração vertical, operacionalizada de forma hierárquica, apresenta baixos níveis de controle.","os custos de produção serão absorvidos e transformados em custos de transação.","a primeira integração vertical deve ser para frente, quando a firma vai agregar internamente as etapas da cadeia de valor que estão próximas aos fornecedores e às matérias-primas, aproximando-se do início da cadeia de valor."]'::jsonb,
'A',
'Na teoria dos custos de transação (Williamson), a especificidade dos ativos é fator central na decisão de verticalizar: quanto maior a especificidade dos ativos envolvidos, maiores os riscos de comportamento oportunista e mais vantajosa tende a ser a internalização (integração vertical). As demais alternativas invertem conceitos (contratos, controle hierárquico, custos, e a definição de integração "para frente" x "para trás").'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Eixo 4',
'Considere a Curva de Possibilidade de Produção (CPP) clássica (fronteira côncava relacionando o Bem Z e o Bem Y), com pontos A (interno, próximo à origem), B, C e D sobre ou dentro da curva, e E fora da curva. Nessa curva, verifica-se o seguinte:',
'',
'',
'["os vetores AB, AC e AD são isoquantas de fatores de produção que apontam para a mesma quantidade de produção dos bens Z e Y na curva.","caso a curva se desloque integralmente para o ponto E, mantendo-se o comportamento, seria possível verificar uma expansão da capacidade produtiva.","no ponto E, a produção dos bens não poderá ser atingida devido à ineficiência de alocação dos fatores produtivos existentes.","nos pontos A e E, há uma capacidade ociosa de fatores produtivos.","no ponto A, a produção dos bens não pode ser atingida, dada a indisponibilidade de fatores produtivos no curto e no longo prazo."]'::jsonb,
'B',
'Pontos fora da CPP (como E) são inatingíveis com os recursos e a tecnologia atuais; só se tornam alcançáveis se a fronteira se deslocar para fora, o que representa expansão da capacidade produtiva (crescimento econômico). Por isso, deslocar a curva até E indica expansão da capacidade. O ponto E não é inatingível por "ineficiência de alocação" (isso caracteriza pontos internos), e o ponto A (interno) representa capacidade ociosa, não inatingibilidade.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Eixo 4',
'Nos mercados regulados, após a implantação da contabilidade regulatória, as particularidades dos sistemas regulatório e societário podem gerar diferenças na conciliação de alguns tipos de contas. Excetuando-se as possíveis distinções e peculiaridades de cada mercado, tratando-os de forma geral, essa conciliação entre ambos os sistemas deve apontar para',
'',
'',
'["critérios de mensuração e ativos iguais","uma alteração da realidade econômica para o mercado acionário","a impossibilidade da mensuração e valoração dos ativos regulatórios","as eventuais inconsistências/inconformidades verificadas nos registros da contabilidade societária","resultados e patrimônios diferenciados"]'::jsonb,
'E',
'A contabilidade regulatória e a societária usam critérios de mensuração e reconhecimento próprios, o que faz a conciliação entre os dois sistemas apontar, de forma geral, para resultados e patrimônios diferenciados. Não se espera ativos/critérios iguais, nem que a conciliação sirva para detectar inconformidades na contabilidade societária ou que os ativos regulatórios sejam imensuráveis.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50) - Lingua Inglesa
-- Texto base: "Brazil: Online Learning Tools Harvest Children's Data" (Human Rights Watch, 2023)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Eixo 5',
'Read the text "Brazil: Online Learning Tools Harvest Children''s Data" (Human Rights Watch, 2023), which reports that educational websites directed at Brazilian students monitored children and collected their personal data, sending it to third-party companies using tracking technologies. The main purpose of the text is to',
'The text reports Human Rights Watch findings that seven educational websites extracted and sent children''s data to third-party companies, using tracking technologies designed for advertising, and calls on Brazil to revise its data protection law to add safeguards for children.',
'',
'["criticize Human Rights Watch for not taking action in solving Brazilian children''s challenges concerning their access to education.","influence children''s parents to watch and protect their children from digital crime by reducing their time of access to the internet.","discourage excessive parental care as to what children access and how they use the internet during their school hours.","advocate for the monitoring and data collection carried out by content companies, so that ads and the internet experience are shaped to influence children.","report on the findings of Human Rights Watch regarding the inappropriate monitoring and collecting of children''s data by educational websites."]'::jsonb,
'E',
'O propósito central do texto é relatar (report) as descobertas da Human Rights Watch sobre o monitoramento e a coleta inadequados de dados de crianças por sites educacionais. As demais opções distorcem o texto: ele não critica a HRW, não foca em orientar pais a reduzir o tempo de internet, não desencoraja o cuidado parental e não defende o monitoramento — ao contrário, o denuncia.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Eixo 5',
'In the segment of paragraph 2 "These websites not only watched children inside of their online classrooms, but followed them across the internet", the term them refers to',
'',
'',
'["children","websites","classrooms","inside","online"]'::jsonb,
'A',
'O pronome "them" retoma "children": os sites não apenas observavam as crianças dentro das salas de aula on-line, mas as seguiam (followed them) pela internet. O sujeito da ação é "these websites", portanto "them" só pode se referir ao objeto lógico, as crianças.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Eixo 5',
'In the excerpt of paragraph 2 "These websites not only watched children inside of their online classrooms, but followed them across the internet", the expression not only [...] but indicates',
'',
'',
'["conclusion","contrast","consequence","addition","comparison"]'::jsonb,
'D',
'A estrutura correlativa "not only ... but (also)" expressa adição (addition): acrescenta uma segunda informação à primeira — além de observar as crianças na sala on-line, os sites também as seguiam pela internet.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Eixo 5',
'In paragraph 3, the statement "Instead of protecting children, state governments have willfully enabled anyone to monitor them and collect their personal information online" means that the permission given by state governments to third-party companies was',
'',
'',
'["accidental","conventional","gradual","providential","intentional"]'::jsonb,
'E',
'O advérbio "willfully" significa "de forma intencional/deliberada". Assim, a permissão dada pelos governos estaduais foi intencional (intentional) — o oposto de acidental.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Eixo 5',
'In the section of paragraph 4 "the third party would then scrutinize the data on behalf of the website to guess a user''s personality, their preferences, and what they are likely to do next", the expression what they are likely to do next refers to the children''s',
'',
'',
'["certain past actions","probable subsequent actions","adequate current appearance","evident future appearance","inappropriate current actions"]'::jsonb,
'B',
'"What they are likely to do next" significa "o que provavelmente farão em seguida", ou seja, as ações subsequentes prováveis (probable subsequent actions) das crianças. "Likely" indica probabilidade e "next" indica o que virá a seguir.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Eixo 5',
'In the section of paragraph 4 "the third party would then scrutinize the data on behalf of the website...", the term scrutinize indicates that the third-party company would',
'',
'',
'["closely examine the data.","roughly transfer the data.","partially discard the data.","totally ignore the data.","moderately retain the data."]'::jsonb,
'A',
'"Scrutinize" significa examinar minuciosamente, analisar de perto. Portanto, a empresa terceirizada examinaria detalhadamente os dados (closely examine the data).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Eixo 5',
'In the excerpt of paragraph 5 "It also risks violating children''s other rights if this information is used to guide them toward outcomes that are harmful or not in their best interest", the word if indicates a',
'',
'',
'["condition","contrast","cause","conclusion","comparison"]'::jsonb,
'A',
'A conjunção "if" introduz uma condição (condition): o risco de violar outros direitos das crianças depende da condição de essas informações serem usadas para direcioná-las a resultados prejudiciais.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Eixo 5',
'In the segment of paragraph 6 "Brazil''s data protection authority should [...] prevent them from further using children''s data for any purpose unrelated to providing education", the word unrelated contains a prefix. A prefix conveying the same idea is found in the word',
'',
'',
'["including","invisibly","restored","contaminated","unique"]'::jsonb,
'B',
'Em "unrelated", o prefixo "un-" tem sentido negativo/de negação ("não relacionado"). Entre as opções, "invisibly" contém o prefixo "in-", também de negação ("não visível"). Nos demais casos, "in-" de "including" não é negativo, "re-" indica repetição, "con-" indica companhia/junção e "uni-" indica "um/único".'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Eixo 5',
'In paragraph 7, the statement "the General Personal Data Protection Law [...] does not explicitly prohibit actors from exploiting children''s information" means that the data protection law does not currently prevent educational websites from',
'',
'',
'["ignoring children''s opinion.","addressing children''s needs and challenges.","taking unfair advantage of children''s data.","accepting children''s suggestions.","providing children with up-to-date content."]'::jsonb,
'C',
'"Exploiting children''s information" significa explorar/tirar proveito indevido dos dados das crianças. Assim, a lei não impede que os sites educacionais tirem proveito injusto dos dados das crianças (taking unfair advantage of children''s data).'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Eixo 5',
'In the fragment of paragraph 7 "Lawmakers should amend the law to establish comprehensive child data protection rules", the word should indicates a(n)',
'',
'',
'["possibility","promise","obligation","decision","illustration"]'::jsonb,
'C',
'No contexto de recomendação forte da Human Rights Watch aos legisladores, o modal "should" expressa dever/obrigação (obligation) — o sentido de que os legisladores deveriam (têm o dever de) alterar a lei. Não indica mera possibilidade, promessa, decisão ou ilustração.'
from public.exams where slug = 'cnu-2024-bloco6-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
