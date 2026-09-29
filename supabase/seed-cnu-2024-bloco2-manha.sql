-- Seed: CNU 2024 - Bloco 2 (Tecnologia, Dados e Informacao) - MANHA
-- Concurso Publico Nacional Unificado - Edital no 02/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 2 - Gabarito 1 - Conhecimentos Gerais (20 questoes objetivas)
-- Gabarito: 1-E,2-A,3-E,4-E,5-C,6-C,7-C,8-E,9-B,10-B,11-E,12-D,13-C,14-E,15-C,16-D,17-A,18-A,19-D,20-C

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco2-manha', 'CNU 2024 - Bloco 2 (Manhã) - Conhecimentos Gerais', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- CONHECIMENTOS GERAIS (Questoes 1 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Conhecimentos Gerais',
'A Constituição é lei e deve ser cumprida. O cidadão tem a responsabilidade de participar. Cada um faz a diferença. A democracia se constrói, se aprende e se reaprende. O Brasil está fadado a ser uma nação justa, livre e igualitária. Nesse sentido, à luz da Constituição Federal de 1988 e em respeito ao Estado Democrático de Direito, assegura-se que o(a)',
'',
'',
'["trabalho do preso deve ser remunerado, observando-se o mesmo patamar mínimo instituído por lei para o salário mínimo, já que seu objetivo é garantir proteção aos trabalhadores que se encontram na base da pirâmide salarial.","Poder Judiciário, à vista do princípio da isonomia, uma vez acionado, poderá aumentar os vencimentos de servidores públicos, considerando o desempenho em funções e cargos correlatos.","partido político, em virtude do princípio da igualdade, pode criar distinções na distribuição dos recursos públicos destinados à campanha eleitoral exclusivamente baseadas no gênero.","extensão, às uniões homoafetivas, do mesmo regime jurídico aplicável à união estável entre pessoas de gênero distinto não se justifica, visto que isonomia é tratar da mesma forma apenas os que são iguais e de forma distinta os que são diferentes.","segregação de presos provisórios com apoio no grau de instrução acadêmica é inadmissível, pois trata-se de mera qualificação de ordem estritamente pessoal."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Conhecimentos Gerais',
'A teoria da separação dos Poderes da República tem desempenhado um papel primordial na conformação do chamado Estado Constitucional. Dessa forma, reconhece-se que',
'',
'',
'["a intervenção do Poder Judiciário em políticas públicas voltadas à realização de direitos fundamentais, em caso de ausência ou deficiência grave do serviço, não viola o princípio da separação dos poderes.","a ingerência do Poder Judiciário é inadmissível na imposição de sanções pelo Poder Executivo, no que diz respeito ao incumprimento da obrigação de pagar tributos, em respeito ao princípio da separação dos poderes.","o Poder Judiciário não pode determinar que a Administração Pública adote medidas assecuratórias de direitos constitucionalmente reconhecidos como essenciais, pois essa determinação configura violação do princípio da separação dos poderes.","o Poder Judiciário pode exercer o controle jurisdicional em relação à interpretação do sentido e do alcance de normas regimentais das Casas Legislativas.","as comissões estaduais de inquérito (CPIs), em homenagem ao princípio da separação de poderes, não podem requerer quebra de sigilo de dados bancários."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Conhecimentos Gerais',
'No Brasil, o presidencialismo foi instituído a partir da Proclamação da República, em 1889, e desde então vem sendo o sistema de governo adotado ao longo de toda a evolução histórica republicana, previsto em todas as Constituições brasileiras desse período. O presidencialismo brasileiro se configura como forma de governo',
'',
'',
'["popular","unificador","ideológico","de garantias","de coalizão"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Conhecimentos Gerais',
'O trecho de apoio, publicado na Agência Câmara de Notícias (adaptado), faz referência a um instrumento de planejamento da Administração Pública que, além dos itens citados no texto, deve legalmente dispor também sobre',
'Entre as prioridades para o Orçamento de 2023, o projeto de lei destaca a agenda da primeira infância, que inclui construção de creches; ações voltadas à segurança hídrica; incentivo ao uso de energias renováveis; programas voltados para geração de emprego e renda; e investimentos plurianuais em andamento.',
'',
'["limites para suplementações orçamentárias no exercício","diretrizes para criação de programas de duração continuada","critérios e programas para redução das desigualdades regionais","parâmetros específicos para execução do orçamento de áreas funcionais","normas para avaliação dos resultados dos programas financiados com recursos do orçamento"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Conhecimentos Gerais',
'Dados apresentados pelo Tesouro Nacional revelam que "a despesa de pessoal do Poder Executivo Federal atingiu 18,9% da Receita Corrente Líquida (RCL) em 2022, uma redução de 2,9 pontos percentuais em relação a 2021, quando foi de 21,8% da RCL". Esse resultado foi apurado após o encerramento do exercício de 2022 e sua análise indica que a(o)',
'',
'',
'["base de apuração do limite registrou um aumento significativo no período.","exclusão de despesas com pessoal terceirizado explica a redução do percentual.","margem em relação ao limite máximo representou maior folga fiscal em 2022.","valor apurado voltou, com a redução, a ficar abaixo do limite prudencial.","governo só pode aumentar seu gasto com pessoal se reduzir os percentuais apurados."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Conhecimentos Gerais',
'No contexto da redemocratização política do Brasil, em especial em função da promulgação da Constituição Federal de 1988 e graças à mobilização da sociedade civil e de lideranças indígenas, observou-se a ampliação do direito à proteção e ao usufruto das terras dos povos originários. Levando em conta o texto de apoio, a noção de que "há muita terra para pouco índio"',
'É muito comum nos depararmos com afirmações de que, no Brasil, "há muita terra para pouco índio", geralmente acompanhadas de assertivas segundo as quais as populações indígenas e tradicionais são um "entrave ao desenvolvimento". A primeira questão a se colocar quanto a isso seria justamente a respeito da definição do modelo de desenvolvimento. Essas são certamente duas imagens cristalizadas cuja origem remonta às décadas de 1950-1970, quando vigorava um conceito de desenvolvimento associado ao nacional-desenvolvimentismo, e que têm voltado com muita força no atual contexto brasileiro, em meio a violentas disputas pelos territórios indígenas. [...] Por outro lado, a extensão das terras brasileiras que são propriedade particular de grandes produtores rurais abrange cerca de 20% do território nacional, repartidas em pouco mais de cem mil propriedades. [...] A renda do setor, que cresceu 13% em 2017, é a que, por anos, vem carregando o Produto Interno Bruto (PIB) brasileiro, correspondeu nos últimos 15 anos, em média, a 23% do PIB nacional (CEPEA, s.d). Em função desse modelo de desenvolvimento, voltado para a exportação de produtos primários, os povos indígenas continuam sendo considerados um "empecilho" ao desenvolvimento, mas um desenvolvimento praticado de forma predatória, ao bem dos interesses particulares de poucos, e não do interesse comum.
LOUREIRO, C. D. Direitos dos povos indígenas e desenvolvimento na Amazônia. Revista de Estudios Brasileños. Universidad de Salamanca, v. 6, n. 11, p. 56-57, 2019. Adaptado.',
'',
'["justifica-se pela condescendência da legislação indigenista, própria da Constituição Federal de 1988, a qual, complacente com a ociosidade que marca as culturas indígenas no país, privilegia os povos originários, promovendo, assim, a concentração de terras e riquezas nas mãos de poucos indivíduos.","legitima-se pelo avanço do agronegócio no Brasil, uma vez que concorre para a ampliação das fronteiras agrícolas, na mesma medida em que contribui para a proteção do direito à terra e para a manutenção dos modos de vida dos povos originários.","relaciona-se com uma certa concepção de desenvolvimento, associada a um tipo de exploração predatória da terra, da qual decorre desacertadamente que o reconhecimento da propriedade indígena representaria um suposto entrave à economia sustentável do país.","sustenta-se numa premissa nacional-desenvolvimentista, que encontrou sua máxima expressão no período chamado de \"milagre econômico\", cuja atualização em nossos dias tem como principal objetivo a produção de riqueza e sua distribuição mais equânime, justa e igualitária.","fundamenta-se no reconhecimento da natureza conservacionista dos povos originários, que, por causa dessa característica, representam um obstáculo ao desenvolvimento sustentável do país."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Conhecimentos Gerais',
'A partir da análise comparada dos Textos I e II sobre política pública, conclui-se que',
'Texto I
Políticas públicas repercutem na economia e na sociedade, daí porque qualquer teoria da política pública precisa também explicar as inter-relações entre Estado, política, economia e sociedade. [...] Pode-se, então, resumir política pública como o campo do conhecimento que busca, ao mesmo tempo, colocar o "governo em ação" e/ou analisar essa ação e, quando necessário, propor mudanças no rumo ou curso dessas ações.
SOUZA, C. Estado da arte da pesquisa em políticas públicas. In. HOCHMAN, G. et al. (org.). Políticas Públicas no Brasil. Rio de Janeiro: FIOCRUZ, 2007. p. 69. Adaptado.

Texto II
Nos ciclos de uma política pública, identifica-se o processo de criação de opções sobre o que fazer a respeito de um problema público. Nesse estágio do processo político-administrativo, faz-se a identificação, o refinamento e a formalização de opções políticas que poderão ajudar a resolver as questões e os problemas reconhecidos como relevantes. Também se considera a viabilidade dessas opções políticas.
HOWLETT, M.; RAMESH, M.; PERL. A. Política Pública: seus ciclos e subsistemas: uma abordagem integradora. Rio de Janeiro: Elsevier, 2013. p. 123. Adaptado.',
'',
'["o Texto I introduz o Texto II, indicando as diretrizes do estágio denominado implementação de políticas.","o Texto I generaliza o Texto II, definindo o ciclo político denominado montagem da agenda.","o Texto II especifica o Texto I, descrevendo o estágio denominado formulação de políticas.","o Texto II contradiz o Texto I, minimizando a relevância da ação governamental na tomada de decisão política.","o Texto II complementa o Texto I, especificando o estágio denominado avaliação de políticas."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Conhecimentos Gerais',
'Considere o texto de apoio sobre a matriz energética brasileira. No Brasil, do total de parques eólicos instalados, a maioria se encontra na Região',
'Em 2021, representantes do Governo Federal participaram da 26ª Conferência das Nações Unidas sobre Mudanças Climáticas (COP26), em Glasgow, na Escócia. [...] Segundo o Ministério de Minas e Energia, o Brasil é exemplo mundial em transição energética, com mais de 85% da matriz elétrica oriunda de fontes limpas e renováveis e 48% de renovabilidade em sua matriz energética total. Nessa direção, o Brasil registrou, até fevereiro de 2023, 890 parques eólicos instalados em 12 estados brasileiros. Eles somam 25,04 gigawatts de capacidade instalada em operação comercial, que beneficiam 108,7 milhões de habitantes.
Disponível em: gov.br e agenciabrasil.ebc.com.br. Acesso em: 26 fev. 2024. Adaptado.',
'',
'["Norte, considerando as exigências dos Estudos de Impacto Ambiental.","Sul, fortalecendo o Índice de Desenvolvimento Econômico das cidades.","Sudeste, aumentando o Produto Interno Bruto das cidades com parques.","Centro-Oeste, estabilizando o Índice Nacional de Preços ao Consumidor.","Nordeste, elevando o Índice de Desenvolvimento Humano dos municípios."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Conhecimentos Gerais',
'Considere o texto de apoio sobre discriminação social no Brasil. O tipo de discriminação social mencionado e a sua qualificação legal correspondem especificamente ao',
'Os idosos correspondem a quase 15% da população brasileira. Apesar das estatísticas de aumento da longevidade nos últimos tempos, eles ainda sofrem preconceito. Em meio às limitações no mercado de trabalho e estereótipos que ditam os locais, roupas e estilo de vida que devem ser adotados, essa parcela da população tem se mostrado cada vez mais ativa, revelando como a longevidade pode ser positiva. O tema ganhou repercussão no Brasil no início de 2023 após a divulgação de um vídeo em que estudantes de uma universidade particular debocham de uma colega de 40 anos. No vídeo, uma das estudantes ironiza: "Gente, quiz do dia: como ''desmatricula'' um colega de sala?". Logo na sequência, outra jovem responde: "Mano, ela tem 40 anos já. Era para estar aposentada". "Realmente", concorda a terceira fazendo uma cara de deboche.
Disponível em: cnnbrasil.com.br/saude. Acesso em: 26 fev. 2024.',
'',
'["idadismo, previsto como delito na Constituição Federal.","etarismo, considerado como crime no Estatuto da Pessoa Idosa.","ageísmo, tratado como direito pela Constituição Federal.","racismo, concebido como contravenção no Código Penal.","capacitismo, considerado como delito no Estatuto da Pessoa Idosa."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Conhecimentos Gerais',
'Considere os artigos do Decreto Lei no 200/1967 sobre a estrutura organizacional da Administração Pública Federal. Nas atividades da Administração Federal, a elaboração e a atualização de instrumentos, tais como o plano geral de governo, os programas gerais, setoriais e regionais, de duração plurianual, o orçamento-programa anual e a programação financeira de desembolso, obedecem diretamente ao seguinte princípio fundamental:',
'Art. 1o. O Poder Executivo é exercido pelo Presidente da República auxiliado pelos Ministros de Estado. Art. 2o. O Presidente da República e os Ministros de Estado exercem as atribuições de sua competência constitucional, legal e regulamentar com o auxílio dos órgãos que compõem a Administração Federal. Art. 3o. Respeitadas as limitações estabelecidas na Constituição e observadas as disposições legais, o Poder Executivo regulará a estruturação e o funcionamento dos órgãos da Administração Federal. [...] Art. 6o. As atividades da Administração Federal obedecerão aos seguintes princípios fundamentais: planejamento; coordenação; descentralização; delegação de competência; controle.',
'',
'["controle","planejamento","coordenação","descentralização","delegação de competência"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Conhecimentos Gerais',
'Considere o texto de apoio sobre a descentralização do Sistema Único de Saúde no Brasil. Com base nesse princípio organizativo, estabelece-se que cada',
'Estabelecida a partir da Constituição Federal de 1988 [...], a descentralização da gestão e das políticas da saúde no país – feita de forma integrada entre a União, estados e municípios – é um dos princípios organizativos do Sistema Único de Saúde (SUS). De acordo com este princípio, o poder e a responsabilidade sobre o setor são distribuídos entre os três níveis de governo, objetivando uma prestação de serviços com mais eficiência e qualidade e também a fiscalização e o controle por parte da sociedade.
DESCENTRALIZAÇÃO. PenseSUS. Disponível em: pensesus.fiocruz.br/descentralizacao. Acesso em: 10 fev. 2024. Adaptado.',
'',
'["município do país tem a sua autoridade sanitária indicada pela União, considerando as especificidades locais para essa designação.","município define uma macrorregião de saúde, respeitando a complexidade da provisão de serviços dentro de seu território.","município define as áreas em que as secretarias estaduais investem recursos, considerando as demandas locais.","estado é responsável pela definição da autoridade sanitária dos municípios, discriminando as regiões de saúde.","esfera de governo é autônoma em suas decisões e atividades, respeitando os princípios gerais e a participação da sociedade."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Conhecimentos Gerais',
'Considere o texto de apoio sobre o poder legislativo no Brasil. A Casa do Congresso especificamente descrita no texto é o(a)',
'O Poder Legislativo, segundo o art. 44 da Constituição Federal de 1988, é exercido pelo Congresso Nacional. [...] Quanto às competências do Congresso Nacional, podemos reuni-las em três conjuntos: 1º) o das atribuições relacionadas às funções do Poder Legislativo federal; 2º) o das atribuições das Casas do Congresso, quando atuam separadamente; e 3º) o das atribuições relacionadas ao funcionamento de comissões mistas e de sessões conjuntas, nas quais atuam juntos os parlamentares, embora votem separadamente. Uma das Casas do Congresso é composta por representantes do povo, eleitos pelo sistema proporcional em cada estado, em cada território e no Distrito Federal. [...] Nela, o número de parlamentares é proporcional à população do estado ou do Distrito Federal, com o limite mínimo de oito e máximo de setenta representantes para cada um deles.
BRASIL. Congresso Nacional. Atribuições. Disponível em: congressonacional.leg.br. Acesso em: 10 fev. 2024. Adaptado.',
'',
'["Senado Federal","Ministério da Justiça","Supremo Tribunal Federal","Câmara dos Deputados","Controladoria Geral da União"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Conhecimentos Gerais',
'O objetivo das ferramentas e aplicações de inteligência artificial deve sempre estar dirigido à melhoria da qualidade de vida das pessoas, postulando a inclusão daquelas parcelas da população historicamente discriminadas e pouco representadas. Nesse contexto, a Inteligência Artificial caracteriza-se por',
'',
'',
'["representar um sistema de aprendizado repetitivo.","poder ser usada apenas como fonte secundária para decisões judiciais.","poder contribuir como assistente de busca de jurisprudência.","ser incompatível com o sistema de proteção dos direitos fundamentais.","não agregar confiança ao sistema de justiça."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Conhecimentos Gerais',
'No que diz respeito à lei de acesso à informação, Lei no 12.527/2011, verifica-se que ela',
'',
'',
'["permite acesso às informações recolhidas especificamente a arquivos públicos.","divulga informações de interesse público, mediante requerimento.","tem por escopo único o controle da administração no uso de recursos públicos.","proíbe informações custodiadas por entidade privada.","assegura a proteção da informação, garantindo sua disponibilidade, autenticidade e integridade."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Conhecimentos Gerais',
'Um grupo de cidadãos pretende desenvolver atividades vinculadas aos direitos da pessoa humana, buscando aplicação prática dos conhecimentos teóricos que lhe foram ensinados em vários locais e com diversos níveis de abordagem. Nos termos do Decreto no 7.037/2009, existem vários eixos e diretrizes que devem pautar o Programa Nacional de Direitos Humanos (PNDH 3). O fortalecimento dos Direitos Humanos como instrumento transversal das políticas públicas e de interação democrática é uma diretriz vinculada ao seguinte eixo orientador:',
'',
'',
'["Desenvolvimento e Transparência","Educação e Cultura nas Comunidades","Interação democrática entre Estado e sociedade civil","Segurança Pública e Acesso à Justiça","Universalizar direitos em contexto de desigualdade"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Conhecimentos Gerais',
'O prefeito de determinado município brasileiro realizou treinamento ofertado para lideranças locais com o intuito de melhorar os índices de satisfação dos cidadãos com os serviços prestados pelos órgãos públicos. Esse gestor pretende aplicar o padrão estabelecido pela Administração Federal, que passou a regular as atividades digitais implantadas em diversos setores públicos. Nos termos da Lei no 14.129/2021, constituem princípios e diretrizes do Governo Digital e da eficiência pública, dentre outros, o dever do gestor público de prestar contas diretamente à população sobre a gestão dos recursos públicos, bem como o uso de linguagem',
'',
'',
'["compreensível a pessoas qualificadas","técnica adequada a qualquer cidadão","algorítmica sensível a qualquer cidadão","clara e compreensível a qualquer cidadão","popular, incluindo dialetos próprios a qualquer cidadão"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Conhecimentos Gerais',
'A Administração Pública realizou um concurso para o provimento de cargos vagos. Cinco anos após a homologação, sem que houvesse nomeado e empossado os candidatos aprovados, resolveu realizar novo concurso. Indignados, os candidatos prejudicados apresentam recurso administrativo, cujo resultado deve se basear no seguinte:',
'',
'',
'["o prazo de validade do concurso público será de até dois anos, prorrogável uma vez, por igual período.","o prazo de validade do concurso público é indeterminado.","o prazo de validade do concurso público depende da autorização do Tribunal de Contas.","o prazo de validade do concurso deve ser submetido à consulta ao Poder Judiciário.","o prazo de validade do concurso depende de lei que o estabeleça."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Conhecimentos Gerais',
'Existem três funções básicas do governo que buscam mitigar as ineficiências dos mercados numa economia. O exercício dessas funções NÃO terá o seguinte resultado:',
'',
'',
'["aumento das assimetrias de informações","estabilização de preços","fornecimento de bens públicos","redução das desigualdades de distribuição de renda","regulação da oferta de monopólios naturais"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Conhecimentos Gerais',
'Orçamento público é o instrumento utilizado pelo Governo Federal para planejar a utilização do dinheiro arrecadado com os tributos. Essa ferramenta',
'',
'',
'["fixa as receitas que o Governo espera arrecadar, enquanto estima as despesas a serem efetuadas.","fixa tanto as receitas que o Governo espera arrecadar quanto as despesas a serem efetuadas.","estima tanto as receitas que o Governo espera arrecadar quanto as despesas a serem efetuadas.","estima as receitas que o Governo espera arrecadar, enquanto fixa as despesas a serem efetuadas.","estima às vezes e fixa às vezes as receitas, sem impor limites às despesas a serem efetuadas."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Conhecimentos Gerais',
'Um dos aspectos fundamentais para o êxito de uma política pública é a adequada alocação de recursos para seu financiamento, o que normalmente se refere à programação de créditos orçamentários e às condições para execução das despesas correspondentes. As limitações à execução orçamentária ao longo do exercício',
'',
'',
'["podem afetar a previsibilidade, mas nunca a tempestividade da disponibilidade de recursos.","podem afetar a tempestividade, mas nunca a previsibilidade da disponibilidade de recursos.","podem afetar a tempestividade e a previsibilidade da disponibilidade de recursos.","não afetam nem a tempestividade nem a previsibilidade de recursos.","não afetam a gestão de políticas públicas financiadas pelo orçamento."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-manha'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
