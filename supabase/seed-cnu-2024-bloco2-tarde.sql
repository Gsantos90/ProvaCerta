-- Seed: CNU 2024 - Bloco 2 (Tecnologia, Dados e Informacao) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 02/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 10 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-C,2-A,3-D,4-C,5-E,6-A,7-C,8-B,9-A,10-C,11-C,12-A,13-B,14-C,15-E,16-D,17-A,18-E,19-E,20-A,
--           21-A,22-B,23-C,24-E,25-E,26-C,27-E,28-D,29-B,30-A,31-B,32-C,33-A,34-E,35-C,36-D,37-A,38-B,39-C,40-D,
--           41-E,42-E,43-A,44-B,45-A,46-D,47-B,48-D,49-D,50-A

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco2-tarde', 'CNU 2024 - Bloco 2 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'Em um esforço para implementar a sua política de gestão de riscos, uma entidade pública optou por iniciar o processo de identificação e avaliação de riscos que estejam associados aos seus sete projetos estratégicos definidos para o quadriênio. Para os riscos identificados, foi gerado o mapa de calor apresentado na imagem. Considerando-se os principais referenciais de gestão de riscos e o mapa de calor apresentado, a entidade deve tratar os riscos identificados',
'',
'/cnu-2024-2-tarde-questao-1.png',
'["que forem priorizados pelo comitê de auditoria.","relativos aos projetos com menor nível de controle.","situados acima do nível de tolerância definido pela entidade.","indistintamente, por se referirem a projetos estratégicos da entidade.","com níveis médios de probabilidade e impacto, em caráter facultativo."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Eixo 1',
'As diretrizes básicas para divulgação dos instrumentos de transparência fiscal foram definidas há mais de 20 anos no Brasil pela Lei Complementar no 101, de 4 de maio de 2000. Atualizações mais recentes dessa normativa acrescentaram a obrigatoriedade de os entes federativos disponibilizarem, em meio eletrônico de amplo acesso público, suas informações e dados contábeis, orçamentários e fiscais conforme periodicidade, formato e sistema estabelecidos pelo órgão central de contabilidade da União. Caso um ente não observe esse requisito legal, e até que a situação seja regularizada, o referido ente estará impedido de',
'',
'',
'["receber transferências voluntárias.","receber garantias em instrumentos de dívida.","aumentar despesa com pessoal, exceto nas áreas de educação e saúde.","aplicar recursos de transferências constitucionais em despesas correntes.","contratar operações de crédito, exceto para o pagamento de restos a pagar."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Eixo 1',
'Diferentes abordagens de planejamento estratégico orientado ao setor público foram desenvolvidas nos últimos anos, tais como: planejamento normativo tradicional (PNT), planejamento estratégico situacional (PES), prospectiva estratégica foresight, metodologia da Global Business Network e planejamento não euclidiano. Diferentemente do PES, no PNT, segundo o(a)',
'',
'',
'["autor do planejamento, o sujeito é parte do objeto planejado, pois ele se encontra no contexto do plano e tem interesses e posições, em vez de existir um sujeito que planeja um objeto, e uma separação entre quem planeja e quem faz.","perspectiva sobre o futuro, trabalha-se com um conjunto de apostas, a partir da explicação situacional dos atores sociais, em vez de se projetar o futuro, a partir de um diagnóstico supostamente objetivo do passado.","previsibilidade, assume-se a incerteza, em vez de se adotar um posicionamento determinístico, no qual a realidade pode ser transformada por meio de predições únicas.","explicação e compreensão de processos sociais, busca-se descobrir as leis que regem o sistema, em vez de se considerar que toda a explicação é situacional, feita a partir da visão particular de cada ator.","organização do plano, faz-se o planejamento a partir dos problemas políticos a serem enfrentados, em vez de o plano ser organizado por setores, embasado apenas no cálculo técnico."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Eixo 1',
'Um gerente, ao elaborar o Balanced Scorecard (BSC) da sua organização, utilizou os seguintes indicadores: (i) satisfação dos funcionários, retenção dos empregos e produtividade; (ii) operações/processos sobre os quais existe informação em tempo real sobre a qualidade, o tempo de execução e o custo; (iii) número de melhorias propostas pelos funcionários e percentagem de melhorias implementadas. Esses indicadores estão relacionados à seguinte perspectiva do BSC:',
'',
'',
'["financeira","de impacto social","de aprendizagem e crescimento","dos clientes","dos processos internos"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Eixo 1',
'No Brasil, o número de casos de gripe é maior entre os meses de abril e outubro. A Tabela apresentada na imagem mostra a distribuição das verbas de propaganda do Ministério da Saúde para campanha contra a gripe em determinado ano. Com base nessas informações, verifica-se que o planejador de mídia optou por uma programação',
'',
'/cnu-2024-2-tarde-questao-5.png',
'["adversa","divergente","contínua","em pulso","em flight"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Eixo 1',
'O diretor de um museu público resolve modificar o processo de compras para torná-lo mais sustentável. Qual é o principal desafio na implementação de um processo de compras públicas sustentável?',
'',
'',
'["Dificuldade em medir o impacto ambiental e social de forma precisa.","Incentivo excessivo ao consumo de recursos naturais mais caros.","Facilidade de acesso ao mercado para as empresas locais.","Aumento da transparência e da participação pública nos processos de licitação.","Inclusão da sustentabilidade na avaliação de propostas."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Eixo 1',
'M foi transferido para o departamento de compras de uma termoelétrica do setor público, com a missão de assegurar o sucesso dos projetos de TI, atendendo às exigências dos usuários nos menores tempos de desenvolvimento possíveis. Qual iniciativa M deve ter para assegurar o sucesso desses projetos?',
'',
'',
'["Limitar o envolvimento dos usuários finais no desenvolvimento do projeto.","Restringir o projeto a eixos estratégicos específicos.","Adotar uma abordagem de desenvolvimento ágil e iterativo.","Acelerar a fase de testes de usabilidade e acessibilidade.","Limitar o escopo dos projetos a tecnologias específicas."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Eixo 1',
'O público-alvo de uma campanha de vacinação é de 5 milhões de pessoas. Ao final de um mês, a única informação que chegou ao planejador de mídia é que 80% do público-alvo foi exposto pelo menos uma vez a alguma peça de propaganda da campanha de vacinação. Nesse caso, o planejador de campanha tem informações a respeito da(o)',
'',
'',
'["elevação","alcance","first-run","syndication","gross rating point"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Eixo 1',
'Os fatores ambientais da empresa se referem às condições fora do controle da equipe do projeto que influenciam, restringem ou direcionam um projeto. Essas condições podem ser internas ou externas à organização. São fatores ambientais da empresa internos à organização',
'',
'',
'["a distribuição geográfica de instalações e recursos, como localização de fábricas, equipes virtuais, sistemas compartilhados e computação na nuvem.","as leis e regulamentos locais e nacionais relacionados à segurança e à proteção de dados.","as condições de mercado, como atuação dos concorrentes, participação no mercado, reconhecimento de marca e marcas registradas.","os aspectos financeiros, como taxas de câmbio, taxas de juros e taxas de inflação.","os estudos acadêmicos publicados com resultados de benchmarking sobre o setor econômico da organização."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Eixo 1',
'Processos são compostos por atividades inter-relacionadas que solucionam uma questão específica. Essas atividades são governadas por regras de negócio e vistas no contexto de seu relacionamento com outras atividades, fornecendo uma visão de sequência e fluxo. Os processos de negócio podem ser classificados como primários, de suporte ou de gerenciamento. Os processos de negócio primários',
'',
'',
'["entregam valor para outros processos, objetivando, indiretamente, gerar valor aos clientes.","têm o propósito de medir, controlar e administrar o presente e o futuro do negócio.","constroem a percepção de valor pelo cliente por estarem diretamente relacionados à experiência de consumo do produto ou serviço.","não são estruturados ponta a ponta, para que seja possível agregar valor diretamente ao cliente.","não podem fluir interfuncionalmente nem interorganizacionalmente, para que seja possível direcionar os resultados das atividades na construção da percepção de valor pelo cliente."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Eixo 2',
'Estudos sobre políticas públicas partem do princípio de que podemos analisá-las como um ciclo que, apesar de não condizer necessariamente com a realidade, perpassa pelas fases de agenda, formulação, implementação e avaliação. A fase de avaliação tem a função de',
'',
'',
'["informar à sociedade, por meios midiáticos, as decisões governamentais.","identificar os problemas sociais que serão priorizados em ações do governo.","contribuir para a implementação de políticas públicas por meio de produção de dados e informações.","determinar os atores políticos que poderão definir a formação de agenda.","mobilizar a atenção da sociedade para a política pública a ser implementada e obter engajamento."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Eixo 2',
'Burocratas de nível de rua são os funcionários que trabalham diretamente na interação com usuários para provisão de serviços públicos. Uma de suas tarefas centrais é ensinar aos cidadãos o papel de ser cliente e usuário do Estado. Essa é uma função com muitos desafios porque',
'',
'',
'["envolve processos carregados de julgamento moral e assimetria de poder.","envolve processos sem impacto nas vidas das pessoas, o que gera apatia.","não dá aos profissionais envolvidos autonomia para a tomada de decisões.","não está incluída nas previsões orçamentárias do governo.","impossibilita a prestação de serviços de programas governamentais."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Eixo 2',
'Considerando-se as normas do Decreto no 10.332/2020, compete à Secretaria de Governo Digital da Secretaria Especial de Desburocratização, Gestão e Governo Digital do Ministério da Economia trabalhar para',
'',
'',
'["apresentar os dados da Secretaria Executiva ou da unidade equivalente.","aprovar os planos de transformação digital dos órgãos e das entidades envolvidas.","atualizar o Governo Federal para torná-lo mais acessível à população e mais eficiente em prover os dados simples.","reestruturar, gerenciar, atualizar e monitorar a execução das modernas estratégias digitais para os órgãos da Administração Pública direta.","reelaborar as unidades competentes dos órgãos e das entidades ligadas à governança digital, para atuarem em estratégias digitais atualizadas."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Eixo 2',
'O dirigente de determinado órgão estadual foi designado para organizar as normas de utilização da internet no estado onde exerce suas funções. Para atingir seu objetivo, formata projeto piloto no qual inclui diversas normas de convivência. Nos termos da Lei no 12.965/2014, a disciplina do uso da internet no Brasil tem, dentre outros, o seguinte princípio:',
'',
'',
'["liberdade vigiada","soberania participativa","proteção da privacidade","regulação por agência","planos coletivos"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Eixo 2',
'O Secretário Municipal de Inovação de determinado município busca elementos para modernizar os serviços prestados aos cidadãos. Ao realizar consulta a diversos órgãos, verifica a existência de complexo rol de normas sobre o tema no âmbito federal. Nos termos do Decreto no 11.260/2022, na elaboração da Estratégia Nacional de Governo Digital serão observados, dentre outros itens, a Política de Dados',
'',
'',
'["Compartilhados","Relevantes","Solidários","Populares","Abertos"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Eixo 2',
'Determinado professor procura o diretor da escola onde exerce o magistério e questiona sobre a utilização da internet no local e sobre a possibilidade de aquisição de equipamentos modernos para melhorar a comunicação e o ensino. De acordo com a Lei no 12.965/2014, a disciplina do uso da internet no Brasil tem, dentre outros, os princípios de preservação da estabilidade, segurança e funcionalidade da rede, por meio de medidas técnicas compatíveis com os padrões',
'',
'',
'["locais","tradicionais","ecossociais","internacionais","governamentais"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Eixo 2',
'O cidadão R é estudante de engenharia e pretende seguir carreira de pesquisador em instituição pública ou privada, sendo sua opção pelos órgãos que lhe possibilitarem melhores condições de trabalho. Nos termos da Lei no 13.243/2016, são estabelecidas medidas de incentivo à inovação e à pesquisa científica e tecnológica no ambiente produtivo, com vistas à capacitação, ao alcance da autonomia e ao desenvolvimento do sistema produtivo nacional e regional do País, que podem ser realizadas através do fortalecimento das capacidades das',
'',
'',
'["Instituições Científicas, Tecnológicas e de Inovação","organizações do Terceiro Setor","economias locais de ponta","comunidades digitais","parceiras populares"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Eixo 2',
'O trabalhador S foi contratado para prestar serviços à distância em organização internacional com sede na Grã-Bretanha. Com o passar do tempo, os dirigentes da sociedade entenderam que seria melhor o trabalho presencial. Esse trabalhador optou por buscar posição em entidade governamental brasileira para manter seu labor à distância. Nos termos da Política de Governo Digital, a Lei no 14.129/2021, dentre os princípios e diretrizes do governo digital, estabelece a disponibilização em plataforma única de acesso às informações e aos serviços públicos, observadas as restrições legalmente previstas e sem prejuízo, quando indispensável, da',
'',
'',
'["assistência profissional on-line","cooperação humana","incorporação da inteligência artificial","mediação com funcionários","prestação de caráter presencial"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Eixo 2',
'Um grupo de pessoas resolve fundar um coletivo para buscar por serviços de transporte de qualidade, com o objetivo de propiciar melhor qualidade de vida para o trabalho e para o lazer. Nesse caminho, mapeiam quais são os serviços prestados por municípios, estados e União, bem como pela iniciativa privada. Segundo a Lei no 13.460/2017, reclamações, denúncias, sugestões, elogios e demais pronunciamentos de usuários que tenham como objeto a prestação de serviços públicos e a conduta de agentes públicos na prestação e fiscalização de tais serviços são considerados',
'',
'',
'["sanções","expressões","adequações","autenticações","manifestações"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Eixo 2',
'O servidor público F, após aprovação em processo seletivo interno, foi designado para integrar grupo de trabalho para estabelecer modificações nos vários órgãos estatais para melhorar a eficiência na prestação dos serviços, já que havia várias queixas de demora, causando prejuízos aos administrados. À luz dos termos do Decreto no 10.332/2020, um dos itens para organizar o serviço público consiste na instituição de',
'',
'',
'["Comitê de Governança Digital","Conselho de Fiscalização Popular","Comissão de Suporte Conjuntural","Convenção Regional Modernizadora","Congregação de Cidadãos Participantes"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Eixo 3',
'Ao enfrentar o desafio da escolha entre os protocolos IPv4 e IPv6, os projetistas de redes de computadores se deparam com uma decisão crucial que moldará a infraestrutura e o funcionamento das redes modernas. Há que se considerar questões referentes a compatibilidade, capacidade e custo, a fim de garantir uma transição suave e eficiente para o protocolo que melhor atenda às exigências presentes e futuras da infraestrutura de rede. Em um comparativo entre essas duas opções, o endereçamento IPv6',
'',
'',
'["amplia a margem de endereçamento de hosts, com um endereço estruturado em 128 bits.","demanda a configuração de definição de endereços manualmente por meio dos servidores DHCP.","elimina a necessidade do uso da pilha dupla de protocolos, por conta do campo \"Limite de saltos\" de seu cabeçalho.","oferece o método de endereçamento broadcast, no qual um pacote é entregue ao membro mais próximo de um grupo.","revela a necessidade premente do uso de Network Address Translation, opcional no protocolo IPv4."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Eixo 3',
'Um gestor de TI enfrenta desafios complexos ao decidir sobre os procedimentos de segurança relacionados à autenticação e ao controle de acesso aos sistemas. Em reunião com seus auxiliares e considerando a importância da autenticação e do controle de acesso, solicita sugestões e opiniões com corretas e relevantes justificativas sobre o emprego de tecnologias seguras para aplicações empresariais sensíveis. Qual sugestão o gestor de TI implementará?',
'',
'',
'["A autenticação por senhas, porque é uma forma simples e segura de proteger as informações.","A biometria, porque é uma forma de autenticação que utiliza características físicas únicas, como impressões digitais ou reconhecimento facial, aumentando a segurança do acesso.","O controle de acesso por cartões de proximidade, porque é uma tecnologia simples e de fácil utilização.","O controle de acesso baseado em função, porque permite que todos os usuários tenham acesso total aos recursos do sistema.","O controle de acesso discricionário, porque, uma vez que um usuário recebe permissão para acessar um objeto, ele pode conceder acesso a outros usuários conforme necessário."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Eixo 3',
'As empresas enfrentam desafios ao decidir sobre a adoção de procedimentos relacionados à segurança de computadores. A sociedade depende cada vez mais de redes de computadores e sistemas de informação disponíveis e seguros. As ameaças são as mais diversas, e alguns princípios de segurança da informação são utilizados pelos desenvolvedores de sistemas e gerentes de TI para minimizá-las. Dentre esses princípios, um dos mais importantes é o da irretratabilidade, que tem por objetivo',
'',
'',
'["alterar a informação ao longo da transmissão.","criptografar os dados em dispositivos de armazenamento físico.","evitar a negação da autoria da informação fornecida.","manter a informação à disposição do usuário sempre que necessário.","realizar a autenticação de dois fatores para acesso aos sistemas."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Eixo 3',
'Um projetista de sistema operacional pretende desenvolver um sistema multitarefa, no que concerne à criação de processos. Para isso, ele pretende que os seguintes requisitos sejam atendidos: I - a comunicação interprocessos deve ser eficiente; II - o processo de criação e destruição deve ser eficiente; III - deve ser permitido que os processos compartilhem um mesmo espaço de endereçamento e dados. Qual unidade de execução em sistemas operacionais atende aos requisitos apresentados?',
'',
'',
'["build()","fork()","ioctl()","malloc()","thread()"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Eixo 3',
'Um dos desafios enfrentados por projetistas de redes de computadores é decidir entre os protocolos Transmission Control Protocol (TCP) e User Datagram Protocol (UDP) para diferentes aplicações e cenários de rede. No processo decisório, o projetista deve considerar que o protocolo UDP',
'',
'',
'["encapsula, no modelo Internet, o dado na camada de transporte em um cabeçalho chamado segmento.","garante, na transmissão, a entrega e a sequência de dados, com o suporte da camada de sessão.","implementa a conexão lógica ligando as aplicações no modo full-duplex, com reconhecimento ACK e NAK.","localiza-se, por ser mais simples, na camada de rede, enquanto o TCP, na camada de transporte.","revela-se um serviço não orientado a conexão, sem que haja uma vinculação lógica entre origem e destino."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Eixo 3',
'Um programador de softwares de rede está trabalhando num aplicativo que manipula um protocolo que opera na camada de enlace, o High-Level Data Link Control (HDLC). No HDLC, existe um tipo de estação que opera sob o controle de outra estação, respondendo a requisições, e que não tem capacidade ou responsabilidade direta para controlar o link de dados. Esse tipo de estação é a',
'',
'',
'["Stuffing","Primária","Secundária","Desbalanceada","Check Sequence"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Eixo 3',
'O objetivo da multiprogramação é ter processos em execução o tempo todo para maximizar a utilização de CPU. O escalonamento de CPU lida com o problema de decidir a quais processos na fila de processos prontos a CPU deverá ser alocada. No escalonamento não preemptivo, depois que a CPU é alocada a um processo, o processo só é removido da CPU quando ele passa para o estado de espera ou quando',
'',
'',
'["outro processo mais prioritário fica pronto.","ele entra em loop infinito.","ele diminui a sua prioridade no sistema.","a sua fatia de tempo termina.","ele termina."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Eixo 3',
'A natureza de acesso direto dos discos permite flexibilidade na implementação de arquivos, mas é importante determinar a melhor forma para alocar espaço a esses arquivos de modo que o espaço em disco seja utilizado com eficácia e os arquivos sejam acessados rapidamente. A alocação encadeada resolve os problemas da alocação contígua. No entanto, quando a alocação encadeada não adota a File Allocation Table (FAT), ocorre',
'',
'',
'["fragmentação externa","fragmentação de arquivos","falha de acesso aos blocos dos arquivos","ineficiência no acesso aos blocos dos arquivos","impedimento de acesso aos blocos dos arquivos"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Eixo 3',
'Para estabelecer uma conexão, o Transmission Control Protocol (TCP) usa um handshake de três vias. Esse handshake é necessário e suficiente para o sincronismo correto entre as duas extremidades da conexão. Em cada um dos segmentos transmitidos durante o handshake, o campo de bits de código do cabeçalho TCP é devidamente preenchido. No primeiro segmento, o(s)',
'',
'',
'["bit SYN é marcado; no segundo, o bit ACK é marcado; e, no terceiro, o bit FIN é marcado.","bit SYN é marcado; no segundo, os bits SYN e ACK são marcados; e, no terceiro, o bit ACK é marcado.","bit SYN é marcado; no segundo, os bits SYN e ACK são marcados; e, no terceiro, os bits ACK e FIN são marcados.","bits SYN e ACK são marcados; no segundo, os bits SYN e ACK também são marcados; e, no terceiro, o bit FIN é marcado.","bits SYN e ACK são marcados; no segundo, os bits SYN e ACK também são marcados; e, no terceiro, os bits SYN, ACK e FIN são marcados."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Eixo 3',
'Um dos princípios do modelo COBIT é traduzir as necessidades das partes interessadas em uma estratégia exequível pela organização. Para isso, o modelo apresenta um mecanismo conhecido como cascata de objetivos, que suporta a tradução das necessidades das partes interessadas em objetivos corporativos específicos e objetivos de TI. Nesse contexto, o modelo COBIT apresenta os objetivos de TI estruturados de acordo com as dimensões do balanced scorecard de TI (BSC de TI). O objetivo "Compromisso da gerência executiva com a tomada de decisões de TI" está relacionado à seguinte dimensão do BSC de TI:',
'',
'',
'["Financeira","Cliente","Legal","Interna","Treinamento e Crescimento"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Eixo 4',
'Em um ambiente de DevOps, várias equipes de desenvolvimento utilizam Git para gerenciar o código-fonte de uma biblioteca de uso comum. Para isso, usam funções como branch, tag, fork, push e pull. Qual é o propósito de criar um fork no Git?',
'',
'',
'["Marcar um ponto específico como importante no histórico de desenvolvimento.","Criar uma cópia independente do repositório para desenvolvimento paralelo.","Enviar alterações locais para o repositório remoto.","Atualizar o repositório local com as alterações do repositório remoto.","Isolar o desenvolvimento de uma funcionalidade específica sem afetar a linha principal do código, dentro do mesmo repositório."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Eixo 4',
'Um programador deve desenvolver testes unitários para uma função que interage com uma API externa, fornecida por um terceiro e acessada via internet. Para garantir que os testes sejam feitos de forma isolada, de acordo com as melhores práticas de testes, o programador deve',
'',
'',
'["substituir as chamadas à API por atribuições de constantes.","estabelecer uma conexão VPN para a API externa.","criar um mock da API.","comentar as partes que chamam a API.","criar breakpoints antes das chamadas da API."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Eixo 4',
'Para criar uma tabela em um banco de dados relacional, foi utilizado o seguinte comando: CREATE TABLE PESSOA ( ID INTEGER PRIMARY KEY, NOME VARCHAR(255) ); Qual comando SQL permite modificar a tabela para incluir o campo CPF do tipo VARCHAR(11)?',
'',
'',
'[ALTER TABLE PESSOA ADD COLUMN CPF VARCHAR(11);","ALTER TABLE PESSOA INCLUDE COLUMN CPF VARCHAR(11);","ALTER TABLE PESSOA INSERT COLUMN CPF VARCHAR(11);","MODIFY TABLE PESSOA ADD COLUMN CPF VARCHAR(11);","MODIFY TABLE PESSOA INCLUDE COLUMN CPF VARCHAR(11);"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Eixo 4',
'O gerente de produção de uma grande indústria automobilística precisa avaliar o impacto de diferentes cenários de produção em resposta a flutuações na demanda do mercado. Para isso, ele utiliza um sistema que permite a simulação de diversos cenários, incorporando variáveis como custo de matérias-primas, capacidade de mão de obra e tempo de produção. Esse sistema facilita a visualização de resultados potenciais através de gráficos e relatórios detalhados. O tipo de sistema projetado especificamente para esse fim é o',
'',
'',
'["Sistema de Planejamento de Recursos Empresariais (ERP)","Sistema de Processamento de Transações (SPT)","Sistema de Informações Gerenciais (SIG)","Sistema de Informações Executivas (SIE)","Sistema de Apoio à Decisão (SAD)"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Eixo 4',
'Uma organização está planejando iniciar um projeto para o desenvolvimento de uma aplicação móvel que deve funcionar com os sistemas operacionais Android e iOS, com um requisito importante de desempenho máximo. Para isso, foi decidido não só usar código nativo para cada sistema operacional, desenvolvendo duas aplicações similares em paralelo, mas também adotar as linguagens consideradas preferidas, e mais recentemente propostas, para esses sistemas pelas empresas Google e Apple, ao invés das linguagens usadas tradicionalmente. Considerando-se esse cenário, que linguagens devem ser adotadas, respectivamente, no desenvolvimento de tal aplicação para Android e para iOS?',
'',
'',
'["JavaScript e TypeScript","Java e Objective-C","Kotlin e Swift","Python e C#","Golang e Rust"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Eixo 4',
'Uma organização deseja implementar um software para lidar com seus documentos e que deve ter como característica principal a variação dos campos descritivos de acordo com os vários tipos de documentos. Essa necessidade específica levou a organização a escolher um banco de dados NoSQL. A característica principal presente em alguns bancos de dados NoSQL que justifica essa escolha é a(o)',
'',
'',
'["ausência de chaves primárias","organização por colunas","representação por meio de grafos","uso de esquemas flexíveis","uso do modelo estrela"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Eixo 4',
'Um programador criou um método Java que recebe como parâmetro um inteiro maior ou igual a zero e retorna um inteiro cujos dígitos têm suas posições invertidas em relação ao inteiro recebido como parâmetro (ex.: 1234 retorna 4321; 1000 retorna 1; 8 retorna 8). Considerando as implementações apresentadas na imagem de apoio, qual método executa o que foi especificado?',
'',
'/cnu-2024-2-tarde-questao-37.svg',
'["Alternativa (A)","Alternativa (B)","Alternativa (C)","Alternativa (D)","Alternativa (E)"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Eixo 4',
'Um programador está desenvolvendo um programa Python que lê um texto e produz um relatório com os substantivos e o número de vezes que cada um aparece. Os substantivos são organizados em uma lista de pares [palavra, quantidade], por exemplo [ ["Hoje", 2], ["domingo", 1] ]. A função inclui(lista, subst) deve: se a palavra já estiver na lista, somar 1 à sua quantidade; caso contrário, inserir [subst, 1] no final da lista. Considerando as implementações apresentadas na imagem de apoio, qual implementação da função inclui executa o que foi descrito?',
'',
'/cnu-2024-2-tarde-questao-38.svg',
'["Alternativa (A)","Alternativa (B)","Alternativa (C)","Alternativa (D)","Alternativa (E)"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Eixo 4',
'Os conjuntos a seguir fazem parte de um banco de dados: A = { x1..x12 }; B = { x1..x8 }; C = { x8, x9, x10 }; D = { x1..x5 }; E = { x6, x7, x8 }. Admita que esses conjuntos correspondam às entidades de mesmo nome de um diagrama Entidade-Relacionamento (E-R). Considerando os diagramas apresentados na imagem de apoio, com qual diagrama E-R esse banco de dados é compatível?',
'',
'/cnu-2024-2-tarde-questao-39.svg',
'["Diagrama (A)","Diagrama (B)","Diagrama (C)","Diagrama (D)","Diagrama (E)"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Eixo 4',
'A Figura exibe uma árvore binária de busca balanceada (ver imagem de apoio). Um novo número inteiro foi inserido nessa árvore sem que suas propriedades tenham sido alteradas. Além disso, nenhuma transformação foi necessária para mantê-la balanceada. Qual foi o número inteiro inserido?',
'',
'/cnu-2024-2-tarde-questao-40.png',
'["20","45","55","65","75"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Eixo 5',
'Ao analisar dados de saúde da população brasileira em uma tarefa de classificação de risco para doenças coronarianas, um pesquisador percebeu que o algoritmo escolhido era muito sensível à diferença de ordem de grandeza das variáveis que tinha a seu dispor. Ele decidiu que era importante fazer o pré-processamento dos dados por meio de um algoritmo de normalização. Levando em consideração que os dados possuem outliers que podem afetar negativamente a normalização, qual técnica de normalização seria adequada?',
'',
'',
'["Distância de edição","Min-max","One-hot","PCA","Z-score"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Eixo 5',
'Em um projeto de desenvolvimento de um sistema de visão computacional para identificar e classificar diferentes tipos de objetos em imagens de tráfego urbano, uma equipe de engenheiros optou por utilizar uma rede neural. Para garantir eficiência computacional e uma eficaz propagação do gradiente durante o treinamento do modelo, cada nó da rede foi implementado utilizando a função de ativação ReLU. A propriedade principal da função ReLU é',
'',
'',
'["subtrair o viés do nó do valor de entrada.","calcular o valor máximo entre a entrada e o valor do viés associado ao nó.","transformar a entrada de acordo com a curva logística.","transformar a entrada em um, se for positiva, e em zero, se for negativa.","transformar em zero os resultados negativos, mantendo os outros valores."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Eixo 5',
'Um órgão governamental precisa analisar a distribuição da população por faixa salarial, a partir de dados individuais do imposto de renda anonimizados. Para isso, dividirá os salários em faixas, para gerar um gráfico que indique a quantidade de contribuintes cujo salário está dentro de cada uma dessas faixas. Para esse fim, a visualização gráfica mais adequada é o',
'',
'',
'["histograma","mapa de calor","gráfico de cascata","gráfico de dispersão","diagrama de caixa (boxplot)"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Eixo 5',
'Em um esforço para melhorar a análise e a tomada de decisão no setor agrícola, um órgão governamental brasileiro implementou um sistema OLAP para monitorar a produção agrícola nacional. O cubo OLAP foi estruturado para incluir as dimensões Tempo (Ano, Mês), Produto (Tipo de Cultura, Variedade) e Região (Estado, Cidade), com medidas de Área Plantada (hectares) e Produção (toneladas). Em um certo momento de sua análise, um analista estava vendo a produção total de soja do estado de Mato Grosso em 2023, mas decidiu que desejava ver apenas a produção da cidade de Sorriso, também em 2023. Qual sequência de operações OLAP o analista deverá realizar para, a partir da visão em que estava, obter a visão desejada?',
'',
'',
'["Drill Down em Região de Estado para Cidade, Pivot em Cidade para Sorriso.","Drill Down em Região de Estado para Cidade, Slice em Cidade para Sorriso.","Pivot em Região de Estado para Cidade, Drill Down em Cidade para Sorriso.","Pivot em Região de Estado para Cidade, Slice em Cidade para Sorriso.","Slice em Região de Estado para Cidade, Drill Down em Cidade para Sorriso."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Eixo 5',
'Um técnico fez três buscas em um banco de dados com 600 alunos cadastrados. Na primeira busca, identificou que 450 alunos cursaram a disciplina A; a segunda busca gerou a informação de que 300 alunos cursaram a disciplina B. E uma terceira busca identificou que 200 alunos cursaram as duas referidas disciplinas (A e B). Sabe-se que esse banco de dados não sofreu alterações quando as três buscas foram realizadas. A partir dessas informações, constata-se que o número de alunos que não cursaram nenhuma dessas duas disciplinas é igual a',
'',
'',
'["50","100","150","200","250"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Eixo 5',
'Um empreendimento de alta tecnologia pretende trabalhar com o framework Hadoop para o armazenamento e processamento de dados em larga escala. Pretende-se configurar o Sistema de Arquivos Distribuídos do Hadoop (HDFS), de modo que ele atue como um sistema de arquivos bem distribuídos, atuando na camada de armazenamento do Hadoop. A configuração adequada para esse sistema HDFS ser mais tolerante a falhas é aquela na qual o sistema se encarrega de',
'',
'',
'["criar um diretório no cluster master, para servir de apoio aos dados de armazenamento temporário do sistema distribuído, formando um bloco de arquivos de 64MB associado às aplicações dos clientes, com cada bloco manipulado pelo HDFS.","designar as estruturas de dados como nós, associados às funções de monitoração e execução de dados, pretendendo, com isso, checar falhas de acesso aos nós e permitir o reacesso a um nó perdido.","estruturar os dados recebidos em blocos de 64 MB, de forma a estabelecer uma coleção de pares com a chave de identificação e o valor, que é o dado propriamente dito, sendo a manipulação realizada por funções construídas com linguagens específicas.","particionar os arquivos em blocos de 64 MB e replicar os blocos em três cópias no modo cluster e uma cópia no modo local, alocando os mesmos em servidores diferentes.","providenciar, para cada estrutura de dados, uma conexão ao nó ao qual ela está ligada por meio de um link utilizando o protocolo SSH, de modo a manter uma estrutura básica master-slave entre os nós do sistema distribuído de dados, facilitando a localização dos dados no cluster."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Eixo 5',
'Considere as duas situações a seguir. Situação 1: Um órgão do governo está lidando com um grande conjunto de dados contendo informações sobre as declarações fiscais históricas dos cidadãos, bem como erros e discrepâncias que tenham eventualmente sido encontrados nessas declarações. O órgão deseja desenvolver um modelo que possa prever se uma nova declaração fiscal provavelmente contém erros ou discrepâncias. Situação 2: O departamento de transporte de uma cidade tem acesso a uma grande quantidade de imagens de câmeras de tráfego e deseja entender padrões e pontos de congestionamento na rede viária da cidade, sem categorias ou rótulos predefinidos. Os modelos que endereçam a situação 1 e a situação 2 são:',
'',
'',
'["exemplos de modelos de aprendizagem não supervisionada e supervisionada, respectivamente","exemplos de modelos de aprendizagem supervisionada e não supervisionada, respectivamente","ambos exemplos de modelos de aprendizagem supervisionada","ambos exemplos de modelos de aprendizagem não supervisionada","ambos exemplos de modelos de aprendizagem por reforço"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Eixo 5',
'Na avaliação de políticas públicas, é muito comum que o impacto da política seja estimado por um intervalo de confiança. Assim, é possível incorporar à estimativa de impacto a incerteza que se tem a seu respeito. Nos casos em que se estima uma média populacional μ, o intervalo de confiança tem a forma a ≤ μ ≤ b, onde L = b - a é a largura do intervalo. A largura do intervalo de confiança para a média populacional pode ser reduzida',
'',
'',
'["aumentando-se a média amostral.","aumentando-se o desvio padrão populacional.","reduzindo-se o nível de significância.","reduzindo-se o nível de confiança do intervalo.","reduzindo-se o tamanho da amostra."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Eixo 5',
'O questionário básico do Censo 2022 trazia uma pergunta sobre o rendimento mensal do responsável pelo domicílio. Sabe-se que muitas pessoas não se sentem confortáveis revelando dados sobre renda. De fato, há evidências que sugerem que pessoas de alta renda tendem a declarar uma renda menor do que sua renda real e, analogamente, pessoas de baixa renda tendem a declarar rendas maiores do que as que realmente têm. O impacto desse fenômeno sobre a distribuição dos dados de rendimento mensal do responsável pelo domicílio é de',
'',
'',
'["aumentar sua média.","aumentar sua distância interquartílica.","aumentar o número de outliers.","reduzir seu desvio padrão.","reduzir sua covariância."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Eixo 5',
'Considere a Tabela de valores críticos da estatística χ² ao nível de significância 5% (ver imagem de apoio). Uma política pública visava capacitar profissionais em situação de desemprego, para facilitar-lhes a reinserção no mercado de trabalho. Um estudo tomou uma amostra aleatória de 100 profissionais desempregados que foram capacitados e outros 200 profissionais desempregados que, embora elegíveis, não o foram. Um ano após o término do curso, 80 dentre os 100 capacitados estavam empregados e 100 dentre os 200 não capacitados também estavam empregados. Faz-se um teste de independência χ² que verifica se há (ou não) relação entre ter realizado a capacitação e ser reinserido no mercado de trabalho. Ao nível de significância de 5%, conclui-se que a política pública',
'',
'/cnu-2024-2-tarde-questao-50.png',
'["foi efetiva em reinserir seus beneficiários no mercado de trabalho, já que a estatística do teste foi superior ao seu valor crítico.","foi efetiva em reinserir seus beneficiários no mercado de trabalho, já que a estatística do teste foi inferior ao seu valor crítico.","não foi efetiva em reinserir seus beneficiários no mercado de trabalho, já que a estatística do teste foi superior ao seu valor crítico.","não foi efetiva em reinserir seus beneficiários no mercado de trabalho, já que a estatística do teste foi inferior ao seu valor crítico.","não foi efetiva, tendo em vista que há mais profissionais recolocados que não fizeram a capacitação do que profissionais recolocados que fizeram a capacitação."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
