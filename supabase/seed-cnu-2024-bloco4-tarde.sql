-- Seed: CNU 2024 - Bloco 4 (Trabalho e Saude do Servidor) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 04/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 12 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-E,2-B,3-A,4-B,5-E,6-D,7-D,8-A,9-B,10-D,
--           11-E,12-C,13-D,14-A,15-B,16-C,17-C,18-E,19-C,20-D,
--           21-A,22-C,23-A,24-C,25-D,26-D,27-E,28-B,29-D,30-D,
--           31-E,32-B,33-A,34-Anulada,35-E,36-D,37-C,38-C,39-D,40-D,
--           41-B,42-A,43-A,44-D,45-E,46-C,47-B,48-E,49-D,50-D
-- Observacao: a questao 34 foi ANULADA pela banca. Como o schema exige uma resposta entre A-E,
-- foi registrada a alternativa mais defensavel do conteudo (34-E).

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco4-tarde', 'CNU 2024 - Bloco 4 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'Em pesquisa para avaliar os fatores de motivação para novos funcionários do setor público, a maioria dos entrevistados fez relatos semelhantes aos dois depoimentos reproduzidos a seguir. "Estabilidade, a qualidade de vida e é claro o salário, simples assim". "Uma vida com mais qualidade de vida, mais estável, e segurança para família, fruto da estabilidade do meio público". Considerando-se a hierarquia de necessidades de Maslow, a análise desses depoimentos demonstra que, para a maioria dos entrevistados, o principal fator motivacional para entrar em uma organização pública seria satisfazer o grupo das necessidades',
'',
'',
'["fisiológicas","sociais","de autorrealização","de estima","de segurança"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Eixo 1',
'Considere um líder de uma organização que opera num ambiente institucional de baixa incerteza e alta estabilidade, com relações de trabalho consistentes e uma cultura corporativa forte. Ao ser questionado sobre como influenciar seus funcionários com pouco tempo de empresa a desempenharem bem as suas funções, ele respondeu: "Na minha área, é por confiança: confio no que eles fazem. Existe uma conexão emocional forte entre nós, uma compreensão mútua que se desenvolve até o ponto de uma parte agir em nome da outra. Não há necessidade de monitoramento porque existe uma lealdade inquestionável entre nós". Essa declaração ilustra um contexto no qual a liderança estabeleceu um tipo de confiança nas relações organizacionais baseada no(a)',
'',
'',
'["conhecimento","identificação","instituição","intimidação","cálculo racional"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Eixo 1',
'Um gerente está associado a um grupo de referência (grupo de pessoas que influencia significativamente o seu comportamento) cujos valores, atitudes e comportamentos ele desaprova ou rejeita. Considerando-se o tipo de influência e de associação desse grupo de referência, ele é classificado como grupo de',
'',
'',
'["negação","aspiração","afinidade","prevenção","conformidade"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Eixo 1',
'Com o objetivo de enriquecer o trabalho de um funcionário, um gerente buscou relacionar as experiências desse funcionário às dos clientes, compartilhando com ele e com seus colegas, em reuniões mensais, histórias de clientes que se beneficiaram dos produtos e serviços da organização, dando-lhes um lembrete poderoso do impacto de seu trabalho. Essa ação desenvolvida pelo gerente está relacionada à seguinte dimensão essencial do trabalho:',
'',
'',
'["combinação de tarefas","significância da atividade","expansão vertical das tarefas","compartilhamento de tarefas","abertura de canais de feedback"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Eixo 1',
'Na gestão de projetos, é recomendável que haja um processo para identificar e analisar regularmente as partes interessadas do projeto, documentando informações relevantes sobre seus interesses, envolvimento, interdependências, influência e impacto potencial no sucesso do projeto. As partes interessadas de um projeto',
'',
'',
'["incluem os membros da equipe do projeto, excetuando os profissionais de empresas terceirizadas ou fornecedores.","são as pessoas ou grupos que fornecem recursos e suporte para o projeto, sendo responsabilizados pelo sucesso do mesmo.","são as pessoas ou grupos que necessariamente estão envolvidos com aspectos financeiros do projeto.","são as pessoas ou grupos que são afetados ou podem afetar o projeto apenas de forma positiva.","podem ser um indivíduo, um grupo ou uma organização que possa afetar, ser afetado, ou sentir-se afetado por uma decisão, atividade ou resultado de um projeto, programa ou portfólio."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Eixo 1',
'No gerenciamento de projetos, é necessário planejar as respostas aos riscos, o que envolve desenvolver alternativas, selecionar estratégias e acordar ações para lidar com a exposição geral aos riscos, além de tratar os riscos individuais do projeto. Nesse contexto, a estratégia de aceitação do risco é relacionada à ação de',
'',
'',
'["realizar acordos para passar a responsabilidade e a propriedade de riscos especificados para um terceiro.","desenvolver um protótipo para reduzir o risco de implementação de um processo ou produto a partir de um modelo de bancada.","pagar um prêmio a algum terceiro que assuma a ameaça como no estabelecimento de um seguro ou bônus de desempenho.","estabelecer uma reserva de contingência, incluindo valores para tempo, dinheiro ou recursos para cuidar da ameaça, caso esta ocorra.","alterar algum aspecto do plano de gerenciamento do projeto para eliminar inteiramente a ameaça, reduzindo a sua probabilidade de ocorrência a zero."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Eixo 1',
'Pode-se dizer que, desde 2011, as práticas de transparência da administração pública evoluíram "do que está divulgado" pelos órgãos e entidades para o "direito a acessar o que não está divulgado". Considere: I - documentos e informações relacionados a candidatos aprovados em seleções para o provimento de cargos públicos; II - informações referentes a valores de benefícios pagos e identificação de beneficiários de programas sociais; III - informações relativas à instrução de processos administrativos disciplinares de servidores em fase conclusiva; IV - registros de entrada e saída de pessoas em órgãos públicos do Poder Executivo Federal. Ressalvadas as hipóteses legais de sigilo, bem como as normas de privacidade de dados pessoais, são passíveis de acesso público SOMENTE os itens:',
'',
'',
'["I e III","I e IV","II e III","I, II e IV","II, III e IV"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Eixo 1',
'O governo de uma capital brasileira detém o controle de uma área de vegetação na zona norte da cidade, onde habitam populações mais periféricas e com acesso reduzido a opções de lazer. Como parte de um dos seus compromissos de gestão, o prefeito apresentou um projeto de criação de um parque na área de vegetação, com a inserção de equipamentos esportivos e infantis de uso individual e coletivo, o que implicaria supressão de parte da vegetação. Nesse contexto, um mecanismo adequado que possibilita a participação da sociedade local e fomenta o exercício da cidadania na discussão do projeto apresentado pelo prefeito é a',
'',
'',
'["realização de audiências públicas","criação de um conselho gestor de parques públicos","abertura de canal específico na ouvidoria municipal","promoção de uma conferência temática de meio ambiente","estruturação de um serviço local de informação ao cidadão"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Eixo 1',
'A universalização da saúde no Brasil afere um conjunto de ações e serviços intergovernamentais, intragovernamentais e advindos da iniciativa privada. Em relação à iniciativa privada, nesse âmbito, seu caráter é',
'',
'',
'["estrutural","complementar","especial","funcional","elementar"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Eixo 1',
'Durante a campanha de vacinação contra a gripe, o Governo Federal realizou intensa campanha publicitária, divulgando a importância da vacinação, o período em que a campanha aconteceria e a localização dos postos de vacinação em cada município. Nesse caso, observa-se que a comunicação é descendente, em que o governo atua como emissor e o cidadão como receptor, e que é utilizada a comunicação de massa, de forma que o fluxo comunicacional existente entre governo e cidadão é caracterizado como fluxo de',
'',
'',
'["decisão","consulta","integração","informação","participação ativa"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Eixo 2',
'Vacinação é a administração de micro-organismos infecciosos mortos, vivo-atenuados, ou partes destes, com o intuito de induzir a formação de anticorpos e prevenir infecção e doenças relacionadas. A seguinte circunstância é definida como vacinação de bloqueio:',
'',
'',
'["quando algumas pessoas não vacinadas são indiretamente protegidas pela vacinação da maioria da população.","quando se imuniza para bloquear o adoecimento de uma pessoa já infectada, cuja data do contágio é sabida, e com tempo suficiente para a vacina estimular a proteção.","quando se utiliza estratégia de administração de anticorpos (imunoglobulinas) para indivíduos expostos não imunizados.","quando se utiliza a administração de quimioterápicos para indivíduos expostos não imunizados.","quando ocorre um surto de uma doença, com o objetivo de proteger do surgimento de novos casos."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Eixo 2',
'Promoção da Saúde, de acordo com o conceito da Organização Mundial da Saúde (OMS), é um conjunto de estratégias e formas de produzir saúde no âmbito individual e coletivo, visando atender às necessidades sociais de saúde e garantir a melhoria da qualidade de vida da população, estando marcada pelas tensões próprias à defesa do direito à saúde. A seguinte conduta representa uma das estratégias para impulsionar a Política Nacional de Promoção da Saúde:',
'',
'',
'["o reforço às transformações das práticas dos serviços de saúde para a prevenção e proteção de doenças.","a capacidade de regulação estatal a partir do ente federal agindo sobre os fatores de proteção e promoção da saúde.","a reorientação do cuidado na perspectiva do respeito à autonomia e à cultura, numa interação do cuidar/ser cuidado, ensinar/aprender.","a gestão intrassetorial (do setor saúde) dos recursos na abordagem dos problemas e potencialidades em saúde.","o enfoque verticalizado das políticas, programas, projetos e ações, com prioridade para a atenção básica."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Eixo 2',
'A Política Nacional de Saúde, expressa na Lei no 8.080/1990 e suas alterações e atualizações, dispõe sobre as condições para a promoção, proteção e recuperação da saúde, a organização e o funcionamento dos serviços correspondentes e dá outras providências. São definidos nessa lei os seguintes subsistemas:',
'',
'',
'["acompanhamento a mulher nos serviços de saúde; atenção à saúde do idoso.","atenção à saúde do idoso; atenção à saúde indígena.","atenção à criança e ao adolescente; atenção à saúde indígena.","atendimento e internação domiciliar; acompanhamento a mulher nos serviços de saúde.","atenção à criança e ao adolescente; atendimento e internação domiciliar."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Eixo 2',
'Entre os principais instrumentos de articulação federativa para a produção de políticas e a provisão de serviços públicos, encontram-se os consórcios entre entes federados, regidos pela Lei Federal no 11.107/2005 (conhecida como Lei de Consórcios). O seguinte elemento dessa legislação demonstra a maior confiabilidade do compromisso firmado por entes federados:',
'',
'',
'["aprovação dos Poderes Legislativos dos entes consorciados.","definição do ente estadual como centralidade do processo.","anuência da esfera federal na definição do consórcio.","utilização dos modelos contratuais preexistentes para facilitar a sua elaboração.","exigência de que a denúncia por não cumprimento seja apresentada bilateralmente."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Eixo 2',
'A Lei Brasileira de Inclusão da Pessoa com Deficiência (PCD) assegura a inclusão no trabalho da PCD em igualdade de oportunidades com as demais pessoas, nos termos da legislação trabalhista e previdenciária. No texto da lei, trata-se de uma prerrogativa o(a)',
'',
'',
'["atendimento de forma igualitária às PCD, sem distinção com relação a sua inserção no campo de trabalho.","disponibilização de recursos de tecnologia assistiva, de agente facilitador e de apoio no ambiente de trabalho para a PCD.","realização de exames periódicos diferenciados e específicos para a PCD, independentemente do cargo.","definição do posto de trabalho de acordo com a capacidade adaptativa da PCD, independentemente de perfil vocacional.","programação de educação permanente ou continuada específica para a PCD."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Eixo 2',
'Segundo estudos relevantes na área de Políticas Públicas, as deliberações de conferências de políticas públicas constitucionais (como os casos das políticas de saúde e da assistência social) têm mais força na esfera dos órgãos decisórios de âmbito federal, mesmo que tal fato não se reflita na garantia da implementação. Todavia, o processamento dos seus resultados tem sido um desafio para os governos. A seguinte situação representa um desses desafios no processamento:',
'',
'',
'["demanda rigorosa por prestação de contas para a sociedade sobre os resultados efetivos de sua participação.","integração alta entre as decisões tomadas nas conferências nacionais e as tomadas no âmbito do Congresso Nacional.","intervalos curtos entre essas conferências com temáticas semelhantes.","articulação forte entre as conferências locais e as conferências municipais.","existência de boa estratégia de coordenação horizontal entre as diversas conferências nacionais."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Eixo 2',
'As políticas afirmativas têm como marco no Brasil a Lei de Cotas, que são reservas de vagas para determinados segmentos da população, como pessoas negras (pretas ou pardas), indígenas e pessoas com necessidades especiais. A respeito da legislação para questões étnico-raciais, é assegurada',
'',
'',
'["a reserva de cotas independentemente do número de vagas propostas para o cargo pleiteado no concurso.","a existência da cota de vagas mesmo sem constar esse número específico de vagas no edital.","a participação concomitantemente às vagas reservadas e às vagas destinadas à ampla concorrência, de acordo com a sua classificação.","a transferência da vaga para outro concurso caso essa vaga não seja preenchida por cotista.","a cota de 15% das vagas oferecidas nos concursos públicos para provimento de cargos efetivos e empregos públicos."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Eixo 2',
'Estudos apontam que, a partir de uma reflexão sobre a dimensão da dinâmica histórica do Sistema de Garantia de Direitos, tendo por referência os processos permanentes de mudança que incidem sobre as relações de sociedade, pode se perceber que são muitos os espaços que precisam ser engajados para a garantia de direitos. Dessa forma, o sistema de garantia de direitos teria que contemplar, na sua configuração, cinco eixos. Um desses eixos objetiva preparar a sociedade como um todo para vivenciar a cidadania e, especificamente, discutir, contextualizar, em uma perspectiva crítica, a garantia desses direitos. Trata-se do eixo',
'',
'',
'["da instituição do direito","da defesa do direito","da promoção do direito","do controle do direito","da disseminação do direito"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Eixo 2',
'A ampliação da autonomia administrativa, política e financeira dos municípios, ocorrida a partir da promulgação da Constituição Federal de 1988, gerou um amplo processo de descentralização. A partir dessas transformações, surgem novos papéis e responsabilidades desse ente federativo, marcadas por uma maior participação popular nos processos de gestão e tomada de decisão. Diante dessa nova institucionalidade verifica-se que',
'',
'',
'["os problemas de natureza política tendem a ser facilmente contornados.","a resistência e o boicote por parte de grupos afetados (do governo e da sociedade) reduzem.","os custos de informação podem ter uma elevação.","os custos de imposição (enforcement) tendem a uma redução.","os custos de manutenção tendem a não ser alterados."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Eixo 2',
'A vigilância da saúde está intimamente relacionada ao conceito de território e requer uma combinação de diferentes tecnologias que podem, por um lado, ser duras, como os equipamentos biomédicos; e por outro, flexíveis, como as tecnologias sociais, selecionadas para atender requisitos como adequação, eficácia e oportunidade, de modo a reestruturar as práticas de saúde e a organizar a rede de serviços. Assim sendo, a implementação do modelo da vigilância da saúde é um processo complexo que apresenta o seguinte enfoque:',
'',
'',
'["clínico como conceito de integralidade","cuidado como conceito de assistência","populacional como conceito de prevenção","risco como conceito de proteção","território como conceito de promoção"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Eixo 3',
'Quando se busca entender a história do trabalho e a sua intrínseca relação entre a força sobre os meios de produção e o controle deles, observa-se que a diferença basal entre a servidão e a escravidão se estabelece na',
'',
'',
'["propriedade","religião","produtividade","tecnologia","exploração"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Eixo 3',
'Para analisar os processos econômicos de industrialização no Brasil, o historiador Geraldo de Beauclair propõe que há um movimento de passagem da pré-indústria para a indústria propriamente dita. De acordo com o autor, a pré-indústria deve ser entendida como uma etapa em que a(o)',
'',
'',
'["generalização do assalariamento ocorre nos processos produtivos.","poupança comercial propicia um salto qualitativo de investimentos.","mecanização da produção ocorre, mas não está generalizada.","mercado mundial é viabilizado pelos transportes a vapor.","comércio de commodities permite reservas energéticas para a indústria."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Eixo 3',
'O texto freudiano intitulado "Psicologia das massas e análise do eu" introduz o campo de estudos da psicologia dos grupos, das identificações e dos processos de aprendizagem social. A obra freudiana ajudou a entender a formação de grupos dentro da sociedade e a forma como a interação e os comportamentos acontecem dentro dos diversos grupos sociais. Os elementos apresentados no texto sustentam que a',
'',
'',
'["aprendizagem depende da interação do indivíduo com o meio social.","constituição do ego decorre dos processos narcísicos.","psicologia individual precede a psicologia grupal.","psicologia individual pode ser entendida totalmente separada da interação grupal dos indivíduos.","oposição entre a psicologia individual e a psicologia social é consistente e deve ser estudada com afinco."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Eixo 3',
'Para analisar as estruturações mais recentes do mundo do trabalho, Ricardo Antunes considera o exemplo da Amazon (incluindo a Amazon Mechanical Turk), com depoimentos de trabalhadores que caminham 24 ou 25 km ao longo do dia, embalam 120 a 200 produtos por hora e trabalham 55 horas por semana. O caso descrito pelo autor tem sido comum nas configurações mais recentes do mundo do trabalho. Trata-se de um modelo de trabalho que conjuga a atividade digital com a(o)',
'',
'',
'["redução tendencial da jornada semanal","diminuição potencial do capital permanente","exploração intensa do trabalho físico/material","garantias latentes de bem-estar ao trabalhador","exigência crescente de qualificação da mão de obra"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Eixo 3',
'Criticando as exigências de empregabilidade cada vez mais comuns no mercado de trabalho, Pierre Dardot e Christian Laval escreveram que se deixa de querer prejulgar a eficácia do sujeito por títulos, diplomas, status, experiência acumulada, passando-se a confiar na avaliação mais fina e regular de suas competências postas efetivamente em prática. Nesse sentido, a política econômica mais alinhada à recente reestruturação produtiva e o requisito exigido do trabalhador são, respectivamente, o',
'',
'',
'["liberalismo e a experiência internacional","neokeynesianismo e a autoaprendizagem","desenvolvimentismo e a experiência prática","neoliberalismo e a certificação de competências","anarcocapitalismo e a instrução técnico-universitária"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Eixo 3',
'O texto de Lélia Gonzáles faz a crítica a uma percepção que atravessa o imaginário cultural brasileiro e marca a construção identitária de uma parcela da população brasileira, ao afirmar que o preconceito de não haver preconceito é reproduzido e que, embora se tome os Estados Unidos como modelo de racismo, o racismo existe "aí de montão", tornando a cidadania do negro uma "cidadania estraçalhada". A crítica citada se refere à ideia de',
'',
'',
'["benevolência do colonizador português","teoria do colonialismo subdesenvolvedor","mito do nativo preguiçoso","mito da democracia racial","complexo de vira-latas"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Eixo 3',
'Considere o texto sobre a indústria brasileira de gás natural: a estrutura consolidada da Petrobras permite que a empresa compre o gás natural produzido em território nacional e todo gás natural importado antes de o gás ser distribuído ao mercado nacional; a Petrobras compra quase toda a produção nacional (dos demais produtores nacionais) e praticamente 100% do gás natural importado. Com base no texto, é permitido concluir que a produção nacional de gás natural da Petrobras caracteriza um',
'',
'',
'["dumping","oligopsônio","cartel","truste","monopsônio"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Eixo 3',
'Milton Santos afirma que a globalização é o ápice do processo de internacionalização do mundo capitalista, com um sistema de técnicas presidido pelas técnicas da informação. Essas técnicas da informação são apropriadas por alguns Estados e por algumas empresas transnacionais, aprofundando a desigualdade planetária. No bojo das transformações do mundo do trabalho, tais mudanças em escala global provocaram a(o)',
'',
'',
'["expansão do emprego formal e o fortalecimento dos sindicatos","precarização do trabalho e o enfraquecimento do ativismo sindical","elevação dos níveis salariais e a estabilidade do mercado de trabalho","fortalecimento do papel do estado-nação e a redução da pobreza","crescimento dos níveis de desemprego e a expansão da proteção social"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Eixo 3',
'Harvey afirma que a data inicial simbólica do fordismo deve ser 1914, quando Henry Ford introduziu seu dia de oito horas e cinco dólares como recompensa para os trabalhadores da linha automática de montagem de carros. Para muitos estudiosos, o fordismo foi um aprimoramento do taylorismo, sendo comum referir-se a ambos como taylorismo-fordismo. A inovação de destaque desse sistema produtivo no primeiro quarto do século XX foi a',
'',
'',
'["introdução do trabalho qualificado","diversificação da produção industrial","produção conforme a demanda","criação da linha de montagem","fusão do trabalho manual e intelectual"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Eixo 3',
'Castel afirma que a precarização do trabalho suscita uma nova questão social, cujo núcleo seria a existência de inúteis para o mundo e, em torno deles, de uma nebulosa de situações marcadas pela instabilidade e pela incerteza do amanhã, que atestam o crescimento de uma vulnerabilidade de massa. Essa precarização é marcada pela',
'',
'',
'["marginalização social e econômica do trabalhador urbano industrial frente ao trabalhador rural.","solidificação do aparato do bem-estar social com inserção dos jovens no mercado de trabalho.","integração social e econômica do trabalhador com fortalecimento do amparo dos mais vulneráveis.","vulnerabilização de pessoas e grupos de trabalhadores que vivem o risco da exclusão social.","regulação do trabalho assalariado em condição sólida, associada a garantias e direitos."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Eixo 4',
'A epidemiologia, ciência que estuda a distribuição das doenças ou condições relacionadas à saúde em populações especificadas e dos seus determinantes, pode ter os seus estudos classificados de acordo com o seu delineamento. O seguinte desenho exprime um estudo ecológico:',
'',
'',
'["investigação da etiologia de doenças ou de condições relacionadas à saúde, em um determinado grupo populacional (expostos e não expostos) a uma determinada condição.","verificação da possibilidade de a exposição e a condição de saúde do participante serem determinadas simultaneamente.","exame de como a incidência (casos novos) ou a prevalência (casos existentes) de uma doença, ou condição relacionada à saúde, varia de acordo com determinadas características, como sexo, idade, escolaridade e renda, entre outras.","acompanhamento de dois grupos populacionais, identificados como expostos e não expostos, a um determinado fator de interesse, sendo, posteriormente, esses dois grupos avaliados com base na incidência da doença/condição relacionada à saúde.","comparação para verificar a possível existência de associação entre a ocorrência da doença/condição relacionada à saúde e a exposição de interesse entre agregados de indivíduos (populações de países, regiões ou municípios, por exemplo)."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Eixo 4',
'O Transtorno de Estresse Pós-Traumático (TEPT) é uma morbidade relacionada à exposição direta ou indireta a eventos traumáticos como morte, lesões ou traumas graves. No âmbito ocupacional, destaca-se a natureza das tarefas desenvolvidas por profissionais de emergências. São características clínicas e/ou dimensões do TEPT as apresentadas a seguir:',
'',
'',
'["duração de 3 semanas; humor deprimido","esquiva; alterações negativas da cognição","vulnerabilidade igual em todas as categorias sociais; revivescência","controle sobre o desenvolvimento das tarefas; labilidade de humor","modelo demanda-controle com alta demanda de trabalho; redução da excitabilidade"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Eixo 4',
'O National Institute for Occupational Safety and Health (NIOSH) define como espaço confinado "todo o espaço com passagens limitadas de entrada e saída, com ventilação natural deficiente, que contém ou produz contaminantes perigosos do ar e que não é destinado a ocupação humana contínua". Pela Norma Regulamentadora (NR) no 33, considera-se atmosfera perigosa aquela em que exista',
'',
'',
'["deficiência na ventilação e enriquecimento de oxigênio","deficiência na iluminação do ambiente","presença de risco de afogamento e aprisionamento","ausência de equipamentos de proteção individual","ausência de sinalização de segurança do espaço confinado"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Eixo 4',
'[QUESTÃO ANULADA PELA BANCA] O papel desempenhado pela perícia oficial em saúde tem relevada importância social. Ela atua no sentido de assegurar os direitos do trabalhador quanto às suas necessidades de afastamento do trabalho, por motivo de doença e outros especificados em lei, sem prejuízo em sua remuneração e em seus benefícios. Diante dessa constatação, a perícia oficial de saúde é definida como o',
'',
'',
'["ato sanitário que promove o afastamento, ou não, do trabalhador, a partir de avaliação realizada, de forma presencial, pelo médico ou cirurgião-dentista com formação específica no campo pericial.","ato sanitário que realiza a avaliação da situação laboral do trabalhador e promove o seu afastamento, temporário ou definitivo (aposentadoria), ou sua readaptação, ou reabilitação.","ato administrativo que define prioritariamente, a partir de avaliação documental, a situação do trabalhador em relação a sua atividade laboral, o seu afastamento temporário ou definitivo (aposentadoria) ou sua readaptação, ou reabilitação.","ato administrativo que define prioritariamente, a partir de avaliação técnica, de questões relacionadas à saúde e à capacidade laboral, realizada na presença do periciado por médico ou cirurgião-dentista formalmente designado.","ato previdenciário, realizado por médico ou cirurgião-dentista, com a finalidade de avaliar a saúde e a situação laboral do trabalhador quanto ao seu afastamento temporário ou definitivo (aposentadoria) ou sua readaptação, ou reabilitação."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Eixo 4',
'Levando-se em consideração as exigências do mundo moderno, em que as empresas buscam uma produtividade cada vez maior para atender demandas do mercado, qual área da ergonomia visa a um equilíbrio entre as exigências do trabalho aos limites e capacidades do homem?',
'',
'',
'["Psicossocial","Organizacional","Laborativa","Cognitiva","Física"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Eixo 4',
'Todo processo de intoxicação envolve algumas fases. O conhecimento delas é importante para compreender como funciona o agente tóxico em contato com o organismo humano. No que diz respeito a esse tema, verifica-se que a fase da',
'',
'',
'["exposição marca o movimento dos agentes tóxicos dentro de um organismo.","toxicocinética representa o quanto de um agente tóxico chega ao órgão alvo.","tóxico-concentração avalia a concentração de um agente tóxico que atinge um indivíduo.","toxicodinâmica afere a ação dos agentes tóxicos dentro de um organismo.","clínica corresponde aos efeitos da dinâmica da distribuição de um agente tóxico em um órgão alvo."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Eixo 4',
'A multicausalidade das doenças relacionadas ao trabalho pode ser um fator de dificuldade para estabelecer a relação dessas doenças com a exposição ocupacional. O câncer é um desses agravos, com múltiplos componentes relacionados com o seu surgimento. Dessa forma, a seguinte atividade profissional apresenta uma associação definida com um determinado tipo de câncer:',
'',
'',
'["trabalhadores da indústria naval com mesotelioma.","trabalhador de unidade de terapia intensiva com câncer de próstata.","trabalhador de postos de combustíveis com câncer hematológico.","trabalhador de escritório de administração e câncer de estômago.","trabalhadores de frigoríficos com mesotelioma."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Eixo 4',
'O trabalho do profissional de saúde nas unidades, em particular nos hospitais, está submetido a um risco biológico aumentado por acidentes do trabalho, causados por material perfurocortante. O modelo de abordagem e intervenção (baseado na mudança de comportamento das pessoas em direção à promoção da saúde) que leva os trabalhadores a utilizarem formas mais seguras de trabalho é o seguinte:',
'',
'',
'["de King","de Bandura","de Pender","de Green & Kreuter","da Teoria Social Ecológica"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Eixo 4',
'A sobrecarga do trabalho é uma das dimensões mais importantes para avaliar estresse ocupacional. A respeito dessa avaliação, o que representa uma resposta de um trabalhador a essa sobrecarga?',
'',
'',
'["Ter dificuldade em manter o equilíbrio entre o trabalho e outras atividades pessoais.","Relatar que recebe informação ou sugestão das pessoas que trabalham junto com o trabalhador.","Preocupar-se com as diferentes expectativas das pessoas com o seu trabalho.","Perceber que muitos colegas de trabalho estão cansados devido às exigências da empresa.","Não conseguir atender as diversas exigências dos colegas de trabalho da empresa."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Eixo 4',
'Assédio moral no trabalho é caracterizado por comportamentos hostis, repetitivos e prolongados no ambiente profissional. Embora o problema venha sendo estudado há mais de quatro décadas, os aspectos de gerenciamento e prevenção ainda necessitam de maior estudo. A respeito desse tema constata-se que',
'',
'',
'["situações relacionadas com gênero caracterizam assédio sexual.","ações de comunicação pouco representam na redução desse problema.","diferença hierárquica entre os profissionais envolvidos descarta o quadro.","ocorrência de forma rotineira dificulta sua identificação e valorização.","relações afetivas interpessoais entre os trabalhadores pouco interferem na caracterização do assédio."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Eixo 5',
'O período de férias do trabalhador empregado se caracteriza como um evento de',
'',
'',
'["suspensão do contrato individual de trabalho","interrupção do contrato individual de trabalho","suspensão e interrupção do contrato coletivo de trabalho","alternância da suspensão e interrupção no contrato coletivo de trabalho","concomitância da suspensão e interrupção no contrato coletivo de trabalho"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Eixo 5',
'Determinado trabalhador foi contratado para exercer suas atividades em local estabelecido no seu contrato de trabalho, o que ocorreu durante dez anos. Após consulta ao sindicato da sua categoria profissional, verificou-se que não foram pagas diversas verbas previstas em acordos coletivos. O trabalhador foi demitido pelo seu empregador e pretende buscar os valores não pagos. Nos termos da Constituição Federal de 1988, é direito do trabalhador ação, quanto aos créditos resultantes das relações de trabalho, com prazo prescricional de',
'',
'',
'["cinco anos até o limite de dois anos após a extinção do contrato de trabalho","seis anos até o limite de dois anos após a extinção do contrato de trabalho","sete anos até o limite de dois anos após a extinção do contrato de trabalho","nove anos até o limite de dois anos após a extinção do contrato de trabalho","dez anos até o limite de dois anos após a extinção do contrato de trabalho"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Eixo 5',
'Um indivíduo formalizou contrato de trabalho com uma sociedade empresária submetida a avença às normas da Consolidação das Leis do Trabalho. A relação de emprego durou dez anos com inúmeros elogios obtidos pelo empregado. No entanto, ao final desse período decenal, houve um desentendimento, e o empregador realizou o desligamento do empregado alegando justa causa por fatos ocorridos no início da relação contratual. Nos termos da Consolidação das Leis do Trabalho e da doutrina dominante, a justa causa que enseja o término do contrato de trabalho deve ter a característica da',
'',
'',
'["atualidade","associação","negociação","perseverança","imprescindibilidade"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Eixo 5',
'Um estudante pretende obter trabalho sem prejudicar sua dedicação aos estudos. Ele verifica que existem várias ofertas de trabalho que podem satisfazer suas necessidades materiais sem prejudicar seu esforço educacional. Nos termos da Consolidação das Leis do Trabalho, para trabalhos esporádicos, pode ser celebrado contrato com jornada',
'',
'',
'["avulsa","coletiva","específica","intermitente","participativa"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Eixo 5',
'Um indivíduo foi contratado para prestar serviços, em relação de emprego, com uma sociedade empresária, que efetuou o seu registro regular, subscrevendo sua Carteira do Trabalho e Previdência Social (CTPS). O contrato foi alongado, tornando-se um contrato por tempo indeterminado. No ano de 2023, a empregadora atrasou salários e não recolheu verbas pertinentes ao FGTS. Observado tal contexto, nos termos da Consolidação das Leis do Trabalho, poderá o empregado requerer rescisão',
'',
'',
'["baseada em necessidade material","causada por abuso de direito","por incompetência patronal","por calamidade econômica","indireta do contrato"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Eixo 5',
'Um indivíduo foi selecionado, em processo competitivo, para admissão em emprego, e logrou aprovação. Após a assinatura do contrato, ele foi alocado em setor produtivo e, em seguida, integrou diversas áreas da empresa contratante. No final de doze meses de efetivo serviço, sem qualquer falta, passou a ter direito a férias, de acordo com as normas em vigor. De acordo com a Consolidação das Leis do Trabalho, o empregador',
'',
'',
'["estabelecerá, unilateralmente, a fruição das férias em períodos.","determinará o início das férias na véspera de feriados.","fixará o período para fruição das férias, na época do seu interesse.","designará comissão paritária para definir as datas de fruição das férias.","acordará o período de férias com o Ministério do Trabalho, em caso de férias coletivas."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Eixo 5',
'Nos termos da Lei no 7.783/1989, Lei de Greve, é(são) considerado(s) serviço(s) ou atividade(s) essencial(is)',
'',
'',
'["assistência médica, hospitalar e social","tratamento e abastecimento de água; produção e distribuição de energia elétrica","transporte de carga de animais","guarda, uso e controle de substâncias psicotrópicas","tratamento de gases, combustíveis e hidrogênio verde"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Eixo 5',
'Um trabalhador portuário foi designado para coordenar grupo que pretende estabelecer o acompanhamento da execução das regras existentes para proporcionar segurança e saúde dos trabalhadores dos portos, notadamente nos navios, onde ocorrem muitos acidentes. Nos termos da Norma Regulamentadora de Segurança e Saúde no Trabalho Portuário (NR 29), os conveses devem possuir aberturas protegidas contra',
'',
'',
'["ataque de tubarões","corrosão por química","desgaste da maresia","invasões de piratas","queda de pessoas"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Eixo 5',
'Após ser contratada para emprego em prestigiada companhia multinacional, H contrai casamento e fica grávida, passando a cuidar do seu filho, recém-nascido. Depois do período de licença legal, ela requer o seu retorno ao trabalho. De acordo com a Lei no 14.457/2022, o incentivo à inserção e à manutenção das mulheres no mercado de trabalho pode ser realizado, quando a atividade permitir, para apoio à parentalidade, por meio da flexibilização do regime de trabalho. Nos termos dessa lei, uma das formas de flexibilização do regime de trabalho é implementar jornada de',
'',
'',
'["seis horas trabalhadas por trinta e seis horas ininterruptas de descanso","oito horas trabalhadas por trinta e seis horas ininterruptas de descanso","dez horas trabalhadas por trinta e seis horas ininterruptas de descanso","doze horas trabalhadas por trinta e seis horas ininterruptas de descanso","quatorze horas trabalhadas por trinta e seis horas ininterruptas de descanso"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Eixo 5',
'Um trabalhador rural foi prestar serviços em determinada localidade, sendo fornecidas moradia e alimentação por parte do empregador, além de estabelecida jornada de trabalho. Nos termos da Lei no 5.889/1973, só poderão ser descontadas do empregado rural, pela ocupação da moradia, parcelas, calculadas sobre o salário mínimo, até o limite de',
'',
'',
'["cinco por cento","dez por cento","quinze por cento","vinte por cento","vinte e cinco por cento"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco4-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
