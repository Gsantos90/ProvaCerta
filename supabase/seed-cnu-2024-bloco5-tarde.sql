-- Seed: CNU 2024 - Bloco 5 (Educacao, Saude, Desenvolvimento Social e Direitos Humanos) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 05/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 13 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-C,2-E,3-D,4-D,5-A,6-C,7-A,8-C,9-B,10-C,
--           11-C,12-C,13-A,14-B,15-E,16-C,17-C,18-B,19-E,20-B,
--           21-A,22-D,23-C,24-B,25-A,26-B,27-D,28-B,29-C,30-C,
--           31-A,32-A,33-E,34-C,35-A,36-E,37-D,38-E,39-C,40-B,
--           41-B,42-A,43-E,44-D,45-B,46-E,47-E,48-D,49-A,50-B

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco5-tarde', 'CNU 2024 - Bloco 5 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- EIXO 1 (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'Considere uma matriz de probabilidade e impacto gerada como resultado do processo de gestão de riscos de um projeto, com os seguintes eventos: Evento I (Ameaça, probabilidade 0,7 alta, impacto 0,05 muito baixo); Evento II (Ameaça, probabilidade 0,1 muito baixa, impacto 0,8 muito alto); Evento III (Ameaça, probabilidade 0,7 alta, impacto 0,2 moderado); Evento IV (Oportunidade, probabilidade 0,9 muito alta, impacto 0,1 baixo); Evento V (Oportunidade, probabilidade 0,1 muito baixa, impacto 0,1 baixo). Considerando-se as informações da Tabela, o evento de maior prioridade relativa de riscos individuais é o',
'',
'',
'["Evento I","Evento II","Evento III","Evento IV","Evento V"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Eixo 1',
'Considere o diagrama de rede do cronograma de um projeto, que contém cinco atividades (A, B, C, D e E), com tempos em semanas: início→A (6), início→B (18), A→C (6), C→D (4), C→E (2), B→E (4), D→fim (4), E→fim (8). Caso uma revisão do projeto atualize a duração do caminho C-E de 2 para 6 semanas, a consequência dessa revisão será que a duração do caminho crítico do projeto',
'',
'',
'["reduzirá em 4 semanas.","reduzirá em 6 semanas.","aumentará em 4 semanas.","aumentará em 6 semanas.","não será alterada."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Eixo 1',
'Para serem instituintes em suas funções institucionais, governos competentes, no Brasil e no mundo, precisam desenvolver a capacidade de accountability, já que essa dinâmica fortalece a ideia de que cabe ao Estado a',
'',
'',
'["ação dos agentes econômicos sobre o bem-estar social.","deliberação da sociedade nas políticas públicas municipais.","governança participativa entre níveis dos poderes federativos.","prestação de contas e a responsabilização sobre os gastos públicos.","responsabilidade fiscal das casas de representação nas políticas federais."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Eixo 1',
'O mecanismo governamental de democracia que permite aos cidadãos influenciar ou decidir sobre os investimentos públicos, geralmente os de prefeituras municipais para assuntos locais, através de ações comunitárias que resultam em obras de infraestrutura, saneamento, serviços para todas as regiões de uma cidade chama-se',
'',
'',
'["Ação da burocracia estatal","Coordenação intragovernamental","Parceria público-privada","Orçamento participativo","Transparência administrativa"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Eixo 1',
'A maioria dos pesquisadores que estudam a gestão pública na atualidade convergem na ideia de que a participação do cidadão (em qualquer instrumento decisório de políticas públicas) é vista como um modo de satisfazer as necessidades do ser humano, tanto de forma individual, grupal quanto em organizações representativas, atuando no meio legislativo (votando), administrativo ou judicial (fiscalizando, participando dos atos públicos, etc.). Assim, a participação popular na gestão pública é compreendida como',
'',
'',
'["recurso de luta pelos direitos dos cidadãos, principalmente os mais desfavorecidos (excluídos e os pobres).","necessidade para tornar os serviços privados especializados acessíveis às classes menos abastadas da sociedade.","instrumento para a normalização de práticas educativas e religiosas que não têm suporte na Constituição Federal de 1988.","meio de falsear e tornar nula a interferência dos setores reguladores que têm parcela de participação na Administração Pública.","ação que reduz a diversidade político-partidária no sistema eleitoral, que é fragmentado ao limitar a ação estatal sobre os serviços."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Eixo 1',
'A cultura organizacional se constitui como fator decisivo para os processos de gestão de pessoas. De acordo com Chiavenato, a cultura está no DNA das organizações, representa o universo simbólico da organização e proporciona um referencial de desempenho entre os funcionários, influenciando seus comportamentos e práticas cotidianas. Nessa perspectiva, dadas as características, o tipo de liderança que melhor se alinha à ideia indicada é a liderança',
'',
'',
'["autocrática","transacional","situacional","democrática","transformacional"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Eixo 1',
'De acordo com Mintzberg e Quinn, estratégia é o padrão ou plano que integra as principais metas, políticas e sequência de ações de uma organização em um todo coerente. Considere um cenário em que somente 25% dos gerentes têm iniciativas alinhadas às estratégias; somente 5% da força de trabalho entende as estratégias; 85% de executivos gastam menos de 1 h por mês discutindo estratégias; 60% da organização não alinha o orçamento às estratégias. Nesse contexto, tendo-se identificado algumas falhas na execução das estratégias, a razão principal que provoca tais falhas é a(o)',
'',
'',
'["ausência de um planejamento estratégico","limitação orçamentária","centralização das ações","excesso de burocracia","alinhamento entre propósitos e metas"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Eixo 1',
'O prefeito da cidade W estabeleceu regras para incentivar compras públicas sustentáveis com o objetivo de relançar a economia local e deve justificá-las em audiência na Câmara de Vereadores. Nessa audiência, o prefeito deve argumentar que as compras sustentáveis irão',
'',
'',
'["reduzir a competitividade entre empresas locais, aumentando a agilidade das compras.","possibilitar a compra local de produtos importados de melhor qualidade.","estimular a inovação e o desenvolvimento de fornecedores locais.","estimular a diversificação econômica.","concentrar o mercado em poucos fornecedores confiáveis."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Eixo 1',
'Um grupo de pesquisadores do curso de graduação em administração pública de uma universidade federal fez um trabalho de mapeamento de requisitos de transparência ativa nos sites dos municípios da região metropolitana onde residiam. O objetivo era identificar boas práticas de divulgação voluntária, além dos requisitos normativos, e certificar os municípios com melhor nível de transparência. O site da capital foi o que obteve melhor avaliação por disponibilizar, além do expressamente definido pelos normativos federais de transparência e acesso à informação, itens como',
'',
'',
'["informações sobre audiências públicas para discussão do orçamento anual","mapas com localização dos órgãos da estrutura administrativa do município","pareceres prévios emitidos pelo tribunal de contas","repasses ou transferências de recursos financeiros","seção com respostas a perguntas mais frequentes da sociedade"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Eixo 1',
'Um órgão estatal brasileiro de médio porte tinha entre os seus objetivos criar um trabalho significativo que fosse visto pelos servidores como importante, valioso e recompensador. Ao realizar uma pesquisa para analisar a satisfação dos seus servidores, esse órgão identificou uma insatisfação quanto ao grau em que a tarefa requer a execução de um trabalho completo e identificável, ou seja, a realização de uma tarefa do início ao fim. Os servidores estão insatisfeitos com a(o)',
'',
'',
'["autonomia","variabilidade de habilidades","identidade da tarefa","significado da tarefa","feedback"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 2 (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Eixo 2',
'No relato de caso vivenciado por Paulo Freire, narrado em Pedagogia da Esperança, ele propõe a um grupo de camponeses um jogo de perguntas e respostas que termina empatado dez a dez: ele sabia dez coisas que eles não sabiam e eles sabiam dez coisas que ele não sabia. A experiência apresentada no texto reforça uma perspectiva que considera a aprendizagem como um processo que privilegia o(a)',
'',
'',
'["interação entre organismo e meio","adaptação proveniente da assimilação e acomodação","processo histórico-cultural e as trajetórias pessoais","controle sobre os comportamentos e as associações cognitivas","reforço, a punição e os estímulos aos comportamentos"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Eixo 2',
'Na lei que institui o Sistema Nacional de Políticas sobre Drogas – SISNAD (Lei no 11.343/2006), constam parâmetros como o reconhecimento do "não-uso", do "retardamento do uso" e da redução de riscos como resultados desejáveis das atividades de natureza preventiva. Considerando-se as práticas de atenção à saúde do SUS e uma política que respeite os direitos humanos, é possível identificar, nos princípios legais apresentados, medidas compatíveis com a',
'',
'',
'["centralidade exclusiva na abstinência","hierarquia médica da rede de atenção","estratégia de redução de danos","ênfase no tratamento moral","lógica punitivista"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Eixo 2',
'Segundo notícia sobre o ranking da educação, entre 2018 e 2022, o Brasil apresentou um desempenho estável no Pisa (Programa Internacional de Avaliação de Estudantes), prova aplicada em 81 países, ficando bem abaixo da média da OCDE. O Pisa é um instrumento de avaliação internacional que oferece informações sobre',
'',
'',
'["o desempenho dos estudantes de 15 anos em matemática, leitura e ciências, fase em que se pressupõe o término da escolaridade básica obrigatória na maioria dos países.","o desempenho escolar dos estudantes ao término da educação básica, sendo utilizado como mecanismo de acesso à educação superior.","os principais conteúdos e domínios cognitivos em matemática, ciências humanas e ciências da natureza a serem testados no 4o e no 8o anos.","as habilidades, as competências e os saberes em matemática e ciência de jovens que não concluíram a educação básica na idade adequada.","as habilidades de leitura dos estudantes do 4o ano do ensino fundamental, com o objetivo de analisar tendências de compreensão leitora."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Eixo 2',
'O Bolsa Família, maior programa de transferência de renda do país, é uma referência nacional e internacional de política pública no combate à pobreza. Sua construção institucional colaborou para',
'',
'',
'["acentuar a dependência das mulheres com relação aos seus parceiros devido ao crescimento da família.","apoiar a integração de políticas sociais, especialmente de assistência social, saúde e educação.","favorecer famílias com dinheiro do Estado, uma vez que não há controle sobre as informações dos beneficiários.","manter no poder determinados grupos políticos que cobram votos em troca da liberação do benefício.","coibir o consumo e a aquisição de bens por parte da população mais pobre que se torna beneficiária do programa."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Eixo 2',
'Diz-se que um produto apresenta vício de qualidade quando ele não atende ao fim ao qual se destina. Considere que um carro novo (zero km) apresentou defeito dentro da garantia; o problema foi corrigido, mas voltou a ocorrer em 4 outras ocasiões. O prazo legal para o fornecedor corrigir o vício é de 30 dias; superado esse período, o consumidor pode pedir o valor de volta e devolver o veículo. Nesse contexto, de acordo com as orientações previstas para a defesa do consumidor, o',
'',
'',
'["carro deve permanecer dentro da oficina da empresa autorizada para que o consumidor tenha direito à devolução do valor pago.","direito à devolução do valor pago, mediante a entrega do veículo, não contemplará juros, sempre que o consumidor ficar na posse do bem.","vício, tendo ressurgido após o primeiro conserto, representa um novo problema a demandar mais 30 dias para que o fornecedor possa corrigi-lo.","fato de o consumidor ter feito uso do veículo nos intervalos de tempo em que o veículo esteve fora da oficina descaracteriza o descumprimento da obrigação por parte do fornecedor.","tempo legal para o fornecedor sanar o vício apresentado no produto é contado, sem interrupção ou suspensão, desde a primeira manifestação do vício até o seu efetivo reparo."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Eixo 2',
'As Políticas de Ciência, Tecnologia e Inovação são a base estratégica de uma Política de Desenvolvimento Nacional. Estimular ou prestar apoio logístico, gerencial e tecnológico ao empreendedorismo inovador e intensivo em conhecimento, com o objetivo de facilitar a criação e o desenvolvimento de negócios que tenham como diferencial a realização de atividades voltadas à inovação, é característica de uma organização ou estrutura reconhecida como',
'',
'',
'["instrumento de fomento","gestão de projetos","incubadora de empresas","política de inovação","núcleo de inovação"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Eixo 2',
'Avaliar e monitorar políticas públicas são ações que correspondem a processos essenciais para verificar a eficácia e a qualidade no uso dos recursos do erário. Essas duas ações são diferenciadas, pois:',
'',
'',
'["a primeira confere se os objetivos estruturantes foram alcançados, e a segunda regula as contas públicas auditáveis.","a primeira observa a natureza dos recursos privados, e a segunda acompanha a durabilidade e o impacto da política aplicada.","a primeira afere o resultado alcançado, e a segunda acompanha continuamente os compromissos assumidos conforme o programado.","a primeira qualifica os agentes públicos envolvidos no evento, e a segunda é restrita aos bancos oficiais que liberam os recursos.","a primeira confere o grau de satisfação popular, e a segunda é restrita ao poder público instituído responsável pelo evento."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Eixo 2',
'Se a política é a arte do convencimento, na teoria de coalizões de defesa essa arte é exercida por atores',
'',
'',
'["informais ligados aos interesses das forças de coerção em escala internacional contra políticas públicas.","organizados, formal ou informalmente, para exercer pressão e influenciar o resultado de uma política pública.","formais advindos das máquinas públicas que buscam coalizões com grupos paramilitares e paraestatais.","governamentais antiburocracias de Estado, que emperram a máquina pública na realização de políticas consorciadas.","financiados por grandes corporações que buscam retardar o processo de nacionalização dos investimentos no setor bélico-militar."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Eixo 2',
'Foi regulamentado recentemente pelo Governo Federal, diante das altas taxas de evasão no ensino médio, o Programa de incentivo financeiro-educacional, na modalidade de poupança, a estudantes dessa etapa da escolarização denominado Pé-de-Meia. O objetivo desse Programa é garantir a permanência na escola dos estudantes matriculados no ensino médio público, priorizando estudantes cuja família seja beneficiária do Programa Bolsa Família. Esse Programa, do ponto de vista das tipologias das políticas públicas, se caracteriza como uma política',
'',
'',
'["regulatória","compensatória","emancipatória","redistributiva","distributiva"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Eixo 2',
'Em janeiro de 1942, foi estabelecida a lei orgânica do ensino industrial, que dispunha que o ensino industrial deverá atender aos interesses do trabalhador, das empresas (nutrindo-as de mão de obra) e da Nação (promovendo a mobilização de eficientes construtores de sua economia e cultura). O contexto histórico que justifica a legislação citada revela uma orientação característica do Estado Novo, ao posicionar o(a)',
'',
'',
'["Estado como promotor da equidade e da democracia.","poder público como direcionador do modelo econômico.","reforço das privatizações como estratégia para o desenvolvimento.","qualificação como prerrequisito para atrair empresas multinacionais.","autoconsciência como pressuposto para as cooperativas industriais."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 3 (Questoes 21 a 30)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Eixo 3',
'No início do século XX, o Estado brasileiro republicano ampliou suas ações de cunho higienista para o controle de grandes epidemias e das endemias que assolavam o país. Essas ações foram executadas na forma de campanhas sanitárias, como as promovidas por Oswaldo Cruz para sanear o Rio de Janeiro, caracterizando o período do sanitarismo campanhista. Qual característica está presente nesse modelo assistencial?',
'',
'',
'["Assistência hospitalar do aparato estatal voltado para as doenças infecciosas (com destaque para a hanseníase e tuberculose) e saúde mental.","Aparato estatal ocupado pelo saneamento de portos das cidades, no controle de epidemias e endemias.","Crescimento dos segmentos filantrópico e privado semelhantes ao segmento público estatal.","Assistência hospitalar com poucos hospitais próprios, basicamente militares, deixando a cargo da filantropia (santas casas de misericórdia) a maior parte dos hospitais.","Campanhas sanitárias com adesão e apoio popular para sua implementação."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Eixo 3',
'Atualmente existe uma grande oferta de novas tecnologias que promovem melhorias na qualidade da saúde da população e a redução nas taxas de mortalidade. Com isso, se torna necessário que, além dos benefícios, seus riscos e custos sejam avaliados no processo de tomada de decisão, antes de disponibilizá-las ao Sistema Único de Saúde (SUS). Um facilitador para incorporação de novas tecnologias ao SUS é a',
'',
'',
'["pressão da indústria diagnóstica e terapêutica interferindo na mídia e opinião pública.","judicialização através da sociedade civil como as associações de portadores de doenças.","ação da categoria médica de prescritores e sociedades médicas.","organização da pesquisa baseada em padrões éticos e revisões sistemáticas da literatura.","preocupação dos gestores públicos com os gastos pelo sistema de saúde."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Eixo 3',
'O Brasil está passando, em termos demográficos, por um período de grandes transformações que terão um peso importante para a situação econômica e social do país nas próximas décadas. Considerando-se essa transição demográfica no país, verifica-se que o(a)',
'',
'',
'["envelhecimento acentuado da população é acompanhado de uma estabilidade da taxa de natalidade.","quadro nosológico apresenta uma pequena alteração na transição do perfil epidemiológico.","envelhecimento da população é intenso, tanto em maiores de 60 anos quanto em maiores de 65 anos, mas é heterogêneo regionalmente.","mudança do perfil populacional representa uma redução em números absolutos da população.","aumento percentual da participação de idosos na população do Brasil é resultante direta da aplicação adequada de políticas públicas para esse grupo, independentemente das outras faixas etárias."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Eixo 3',
'A gestão das ações e dos serviços de saúde deve ser solidária e participativa entre os três entes da Federação: a União, os Estados e os Municípios. Qual atividade é de responsabilidade da esfera federal?',
'',
'',
'["Participar complementarmente na organização, no controle e na gestão das ações e serviços de saúde.","Planejar, elaborar normas, avaliar e utilizar instrumentos para o controle do sistema de saúde.","Prestar os serviços de saúde em seu território, garantindo o acesso universal e igualitário às ações e serviços de saúde.","Promover a descentralização das ações e serviços de saúde, de forma a garantir a regionalização e a hierarquização do sistema.","Organizar o sistema regional de emergências e maternidades."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Eixo 3',
'As doenças crônicas não transmissíveis (DCNT) são as principais causas de óbitos no mundo, além de responsáveis por um número elevado de mortes prematuras, perda de qualidade de vida e alto grau de limitação nas atividades de trabalho e de lazer. Quais os componentes essenciais a serem monitorados num plano na vigilância de DCNT?',
'',
'',
'["Fatores de risco, morbi-mortalidade específica das doenças e respostas dos sistemas de saúde.","Investimentos públicos no setor, fatores de risco e morbi-mortalidade específica das doenças.","Morbi-mortalidade específica das doenças, qualificação da força de trabalho do setor e investimentos públicos no setor.","Qualificação de força de trabalho do setor, fatores de risco e respostas do sistema de saúde.","Respostas dos sistemas de saúde, investimentos públicos no setor e qualificação da força de trabalho do setor."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Eixo 3',
'A área de avaliação de programas, serviços e tecnologias na saúde passa por um processo de expansão e diversificação conceitual e metodológica. No contexto desse processo avaliativo, com relação a suas variáveis e a suas características conclui-se que',
'',
'',
'["em todos os casos deve ser usado o avaliador externo, com a finalidade de garantir isenção no processo.","no desenho do estudo, podem ser utilizados métodos quantitativos e qualitativos, de natureza experimental ou situacional.","no contexto da avaliação para a gestão devem ser utilizados o contexto natural e o contexto controlado.","o enfoque usado na avaliação para a gestão deve estar centrado nos impactos.","o objetivo primordial na avaliação para a gestão é o do conhecimento."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Eixo 3',
'A emergência de políticas sociais, decorrente da luta da classe trabalhadora, é demarcada pela introdução de políticas sociais orientadas pela lógica do seguro social na Alemanha a partir de 1883. No Brasil, essa lógica inspirou a Lei Eloy Chaves, que, em 1923, instituiu as Caixas de Aposentadoria e Pensões (CAPs). O sistema de seguros sociais, cujo acesso é condicionado a uma contribuição direta anterior, cujo montante das prestações é proporcional à contribuição efetuada e cujos recursos provêm principalmente das contribuições diretas de empregados e empregadores, é denominado modelo',
'',
'',
'["fordista","taylorista","keynesiano","bismarckiano","beveridgiano"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Eixo 3',
'Os chamados novos movimentos sociais, suas formas de contestação e luta colocaram no cenário político questões tais como gênero, raça, etnia, sexualidade, ecologia, direitos humanos, dentre outras. Num enfoque institucional, tais movimentos buscam generalizar interesses e instituí-los em direitos, evidenciando questões antes consideradas como de âmbito privado e individual, para serem confrontados em suas dimensões',
'',
'',
'["ética e moral","coletiva e pública","populista e clientelista","sindical e corporativista","anticapitalista e antidemocrática"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Eixo 3',
'A política de assistência social abarca um conjunto integrado de ações de iniciativa pública e da sociedade, para garantir o atendimento às necessidades básicas. Tais ações são organizadas sob a forma de sistema descentralizado e participativo, denominado Sistema Único de Assistência Social (Suas), cujos serviços devem obedecer à lógica de proximidade do cidadão e considerar a incidência de vulnerabilidade e riscos para a população. As ações ofertadas no âmbito do Suas têm como base de organização o(a)',
'',
'',
'["indivíduo","governo","território","família","comunidade"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Eixo 3',
'A seguridade social possui várias fontes de custeio, oriundas de recursos provenientes dos orçamentos da União, dos Estados, do Distrito Federal e dos Municípios, e de contribuições sociais. Constitucionalmente, esses recursos são destinados para assegurar os direitos relativos a',
'',
'',
'["saúde, educação e assistência social","saúde, educação e previdência social","saúde, previdência e assistência social","educação, habitação e assistência social","educação, habitação e previdência social"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 4 (Questoes 31 a 40)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Eixo 4',
'No Brasil, a Política Nacional de Proteção aos Defensores dos Direitos Humanos (PNPDDH) estabelece princípios e diretrizes de proteção e assistência à pessoa física ou jurídica, grupo, instituição, organização ou movimento social que promove, protege e defende os Direitos Humanos, e que se encontra em situação de risco ou vulnerabilidade. Uma das diretrizes específicas de atenção aos defensores dos direitos humanos que se encontram em estado de risco ou vulnerabilidade é a(o)',
'',
'',
'["prestação de assistência social, médica, psicológica e material.","transferência definitiva do país mediante asilo político, compatível com o risco extremo.","confidencialidade da localização de familiares ou pessoas de sua convivência próxima.","suspensão permanente das atividades funcionais com interrupção do trabalho do defensor.","apoio para o cumprimento de obrigações civis que não exijam comparecimento pessoal."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Eixo 4',
'Uma das expressões da desigualdade de gênero no Brasil é a violência doméstica e familiar contra a mulher, que constitui uma violação dos direitos humanos, manifestando-se de diferentes formas. A conduta que ofenda a integridade ou saúde corporal da mulher e a conduta que configure calúnia, difamação ou injúria são formas de violência doméstica e familiar contra a mulher denominadas, respectivamente, como violência',
'',
'',
'["física e violência moral","física e violência psicológica","sexual e violência moral","sexual e violência psicológica","sexual e violência patrimonial"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Eixo 4',
'Constitucionalmente, os povos indígenas podem ingressar em juízo para defenderem os seus direitos, mas ainda existem dificuldades no seu acesso à justiça. É importante acionar instrumentos de aproximação entre a atuação dos órgãos que integram o Sistema de Justiça, com as diferentes culturas e as variadas formas de compreensão da justiça e dos direitos, inclusive mediante a adoção de rotinas e procedimentos diferenciados para atender às especificidades socioculturais desses povos. Esses instrumentos, por definição, compõem a(o)',
'',
'',
'["comunicação intersubjetiva e intrassubjetiva","capacidade processual e postulatória","atuação conciliatória e homologatória","estudo etnológico e etnográfico","diálogo interétnico e intercultural"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Eixo 4',
'A partir da promulgação da Constituição Federal de 1988, houve o reconhecimento da propriedade definitiva das terras aos grupos étnico-raciais que, mediante autoatribuição, possuem uma trajetória histórica própria, relações territoriais específicas e ancestralidade negra de resistência à opressão histórica sofrida no país desde a escravidão. A questão da consciência da identidade coletiva está presente na caracterização dos remanescentes das comunidades dos quilombos, que, em termos legais, é atestada por',
'',
'',
'["pesquisa genealógica das famílias","dados biográficos de cada indivíduo","autodefinição da própria comunidade","análise prosopográfica do grupo social","estudo antropológico da cultura do povo"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Eixo 4',
'A partir do final dos anos 1970 aos anos 1980, houve grande mobilização indígena e indigenista no Brasil em favor da garantia de direitos dos povos indígenas, entre os quais o direito à educação diferenciada. Em 1988, o dispositivo constitucional assegurou às comunidades indígenas a utilização de suas línguas maternas e processos próprios de aprendizagem no ensino fundamental. A legislação educacional brasileira passou a incorporar as discussões dos campos indigenista e acadêmico sobre uma educação pautada na(o)',
'',
'',
'["criação de escolas indígenas comunitárias, específicas, interculturais e bilíngues e/ou multilíngues com currículos e materiais didáticos diferenciados.","tutela do Estado, a quem cabe garantir condições educacionais para a evolução dos povos indígenas a um estágio cultural e econômico superior.","adoção de práticas educativas etnocêntricas e civilizatórias, orientadas pela lógica da colonialidade e sua geopolítica operantes no sistema capitalista moderno.","reforço ao pressuposto integracionista, em favor do reconhecimento do direito à assimilação cultural e educacional dos povos indígenas.","reconhecimento da relativa autonomia societária dos povos indígenas, garantindo as suas especificidades históricas, linguísticas e culturais nos processos educacionais."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Eixo 4',
'No Brasil, os conflitos pela demarcação das terras indígenas se intensificaram a partir da segunda metade do século XX, com o avanço de atividades econômicas. Com relação às terras tradicionalmente ocupadas e aos direitos dos povos indígenas sobre elas, a Constituição Federal de 1988 dispõe que essas terras são',
'',
'',
'["alienáveis e disponíveis, e os direitos sobre elas, prescritíveis","alienáveis e indisponíveis, e os direitos sobre elas, prescritíveis","alienáveis e disponíveis, e os direitos sobre elas, imprescritíveis","inalienáveis e disponíveis, e os direitos sobre elas, imprescritíveis","inalienáveis e indisponíveis, e os direitos sobre elas, imprescritíveis"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Eixo 4',
'Numa Unidade de Saúde, uma mãe manifestou interesse em entregar seu filho para adoção e foi encaminhada à Justiça da Infância e da Juventude. A autoridade judiciária determinou a busca por um outro representante da família que tivesse condições de receber a guarda da criança, sendo encontrada a avó paterna. Nesse caso, a família que se estende para além da unidade pais e filhos ou da unidade do casal, formada por parentes próximos com os quais a criança ou o adolescente convive e mantém vínculos de afinidade e afetividade, é denominada',
'',
'',
'["nuclear","acolhedora","substituta","ampliada","monoparental"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Eixo 4',
'A Convenção no 169 da Organização Internacional do Trabalho (OIT) sobre Povos Indígenas e Tribais dispõe que os governos deverão adotar medidas especiais para garantir aos trabalhadores pertencentes a esses povos uma proteção eficaz com relação à contratação e às condições de emprego. As medidas adotadas deverão garantir, particularmente, que os trabalhadores pertencentes a esses povos',
'',
'',
'["gozem com diferenciação da proteção conferida pela legislação e a prática nacionais a outros trabalhadores, devido ao seu direito consuetudinário.","não sejam submetidos a condições de trabalho perigosas nem expostos a substâncias tóxicas, com exceção dos trabalhadores sazonais e eventuais empregados na agricultura.","tenham acesso exclusivamente ao emprego de menor qualificação profissional, para garantir e ampliar sua inserção no mercado de trabalho.","não sejam submetidos a sistemas de contratação coercitivos e formas de trabalho forçado ou obrigatório, excluindo-se as formas de servidão por dívidas.","gozem da igualdade de oportunidade e de tratamento para homens e mulheres no emprego e de proteção contra o acossamento sexual."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Eixo 4',
'Em 1969, foi aprovada a Convenção Americana de Direitos Humanos (CADH), que constitui um instrumento da maior importância do Sistema Interamericano de Proteção dos Direitos Humanos. Um dos órgãos que integra o referido sistema é a Corte Interamericana de Direitos Humanos, que tem como uma de suas competências',
'',
'',
'["atender às consultas que, por meio da Secretaria-Geral da Organização dos Estados Americanos, lhe formularem os Estados membros sobre questões relacionadas com os direitos humanos e, dentro de suas possibilidades, prestar-lhes o assessoramento que eles lhe solicitarem; assim como estimular a consciência dos direitos humanos nos povos da América.","formular recomendações aos governos dos Estados membros, quando o considerar conveniente, no sentido de que adotem medidas progressivas em prol dos direitos humanos no âmbito de suas leis internas e seus preceitos constitucionais, bem como disposições apropriadas para promover o devido respeito a esses direitos.","determinar, mediante decisão de que houve violação, que seja assegurado ao prejudicado o gozo do seu direito ou liberdade violados e determinar também, caso procedente, que sejam reparadas as consequências da medida ou situação que haja configurado a violação desses direitos, bem como o pagamento de indenização justa à parte lesada.","promover a observância e a defesa dos direitos humanos, de modo a estimular a consciência dos direitos humanos nos povos da América, e solicitar aos governos dos Estados membros que lhe proporcionem informações sobre as medidas que adotarem em matéria de direitos humanos para a apresentação do relatório anual à Assembleia Geral da Organização dos Estados Americanos.","adotar providências, tanto no âmbito interno como mediante cooperação internacional, especialmente econômica e técnica, a fim de conseguir a plena efetividade dos direitos que decorrem das normas econômicas, sociais e sobre educação, ciência e cultura, constantes da Carta da Organização dos Estados Americanos, reformada pelo Protocolo de Buenos Aires."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Eixo 4',
'A Comissão Nacional da Verdade (CNV) foi criada em 2011, com a finalidade de apurar graves violações de Direitos Humanos ocorridas entre 18 de setembro de 1946 e 5 de outubro de 1988. O relatório final da CNV apontou que um método violento passou a ser sistematicamente empregado pelo Estado brasileiro desde o golpe de 1964, seja como modo de coleta de informações ou obtenção de confissões, seja como forma de disseminar o medo. Esse ato criminoso, pelo qual são infligidos a uma pessoa penas, sofrimentos físicos e/ou mentais, com fins de investigação criminal, como meio de intimidação, castigo corporal, medida preventiva, pena ou quaisquer outros fins, é denominado',
'',
'',
'["exílio","tortura","detenção ilegal","execução sumária","desaparecimento forçado"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- EIXO 5 (Questoes 41 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Eixo 5',
'Foi previsto que o projeto de um empreendimento irá gerar despejos de efluentes com elevada concentração de zinco nas águas do rio de uma reserva indígena. Por isso, é necessário que se avaliem impactos como riscos para a saúde da população indígena, acúmulo do metal nos tecidos dos peixes e impactos para a população indígena e o meio ambiente. Essas questões norteiam a avaliação de impacto, que é definida como o',
'',
'',
'["modo de comparar os custos e os benefícios de um plano de trabalho em andamento.","processo de identificar as consequências futuras de uma ação presente ou proposta.","procedimento de verificar os pontos fortes e fracos da gestão de um projeto executado.","instrumento para analisar se as metas e os objetivos programados no projeto foram atingidos.","mecanismo para auferir as variáveis internas e externas que interferiram nas decisões tomadas."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Eixo 5',
'Em trabalho de pesquisa, um pesquisador questionou sobre as desigualdades entre homens e mulheres no mercado de trabalho, definiu a abordagem teórica do objeto de estudo e projetou uma pesquisa de caráter qualitativo em empresas privadas que possuem programas de equidade de gênero. Num outro momento, ele estabeleceu o diálogo da construção teórica sobre o problema de estudo com a realidade concreta, levantou material documental e realizou entrevistas com mulheres nas empresas selecionadas. Essas fases do ciclo da pesquisa correspondem, respectivamente, às fases',
'',
'',
'["exploratória e trabalho de campo","exploratória e análise do material","experimental e trabalho de campo","experimental e análise do material","trabalho de campo e análise do material"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Eixo 5',
'Numa pesquisa qualitativa sobre o trabalho realizado pelas mulheres quebradeiras de coco babaçu, um pesquisador resolveu combinar duas estratégias para a compreensão da realidade onde elas estão inseridas. Na primeira, o pesquisador presenciou a execução do trabalho das mulheres e participou, como espectador e agente, do cotidiano da vida social e cultural delas. Na segunda, ele estabeleceu uma interação com essas trabalhadoras para levantar as experiências vividas por elas, buscando identificar nas narrativas como cada uma interpreta suas experiências. Essas técnicas de coleta de dados são, respectivamente,',
'',
'',
'["depoimento pessoal e grupo focal","depoimento pessoal e história de vida","depoimento pessoal e observação participante","observação participante e grupo focal","observação participante e história de vida"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Eixo 5',
'Os princípios e as práticas de diversidade, equidade, inclusão e acessibilidade (DEIA) estão cada vez mais presentes nos discursos acadêmicos, na pesquisa científica e na agenda das políticas públicas. Eles envolvem a discussão das dimensões das desigualdades, abordando aspectos étnicos, raciais, geracionais, sexuais, de gênero, classe, dentre outros, que interagem em níveis múltiplos e, muitas vezes, simultâneos. Tais princípios são permeados pela compreensão de que aspectos das identidades sociais e políticas se combinam para criar diferentes formas de discriminação e, também, de privilégios. Essa compreensão expressa uma perspectiva',
'',
'',
'["intersticial","intersetorial","intersubjetiva","interseccional","interdiscursiva"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Eixo 5',
'Um pesquisador começou uma pesquisa qualitativa interrogando quais os fatores que contribuem para o aumento da contaminação do vírus da imunodeficiência humana (HIV) em mulheres no Brasil, chegando à conclusão de que muitas mulheres contaminadas por HIV possuem relacionamentos heterossexuais e acreditam que a contaminação atinge somente homossexuais masculinos. A partir disso, o pesquisador realizou outra pesquisa para investigar se a crença das mulheres na transmissão do HIV nas "populações-chave" está determinando a ausência de procedimentos preventivos por parte delas. Isso mostra que o ciclo da pesquisa é um processo em espiral que tem início com uma',
'',
'',
'["coleta de dados e informações e tem como ponto de chegada a análise teórica do material coletado.","pergunta e termina com uma resposta ou produto que, por sua vez, dá origem a novas indagações.","variável empírica, cujas descobertas e achados são apresentados, de modo conclusivo, na análise final.","solução prática ao problema de estudo, cuja proposição, ao final, pode ser declarada verdadeira ou falsa.","observação do objeto de investigação e termina com uma certeza sobre ele, mediante evidência científica."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Eixo 5',
'A avaliação de um programa social teve como princípio metodológico fundante o envolvimento e a participação dos seus formuladores, gestores, implementadores e usuários, propiciando apreender os múltiplos fatores, processos e resultados da ação pública. Tornando esses sujeitos partícipes da avaliação, o debate coletivo levantou uma diversidade de opiniões, valores e expectativas sobre os propósitos e resultados do programa. Esse tipo de avaliação',
'',
'',
'["carece de rigor metodológico e limita-se a colher informações e opiniões dos sujeitos implicados no programa de modo indiferente à aprendizagem social.","prescinde de verificar a capacidade de o programa dar respostas às demandas dos usuários e concentra-se na aferição da consecução ou não dos seus objetivos.","dispensa competências técnico-científicas específicas e privilegia habilidades de mediação no processo partilhado por meio de informações e questionamentos.","abdica da definição de indicadores, aplicação de questionários, entrevistas, dentre outros instrumentos tradicionais, e prioriza a discussão e reflexão coletivas.","retira o avaliador da posição de único agente valorativo, por meio da participação dos sujeitos implicados no programa, e atribui valor pela construção de um coletivo."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Eixo 5',
'Um pesquisador realizou dois estudos. No primeiro, o objetivo era familiarizar-se com o fenômeno da violência obstétrica no Brasil e ampliar sua compreensão para poder formular um problema mais preciso de pesquisa. No segundo, o pesquisador buscou observar e apresentar com exatidão as características e a frequência desse fenômeno na rede privada de saúde com gestantes negras. Considerando-se seus objetivos, os dois estudos são, respectivamente, denominados',
'',
'',
'["descritivo e explicativo","formulador e exploratório","formulador e explicativo","exploratório e explicativo","exploratório e descritivo"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Eixo 5',
'Um pesquisador pretende pesquisar o trabalho análogo à escravidão e suas incidências na saúde dos trabalhadores que foram resgatados em operações de fiscalização do Ministério do Trabalho e Emprego. Nas pesquisas envolvendo seres humanos, é necessária a anuência dos indivíduos ou grupos. Após prestar os esclarecimentos pertinentes à pesquisa, o pesquisador apresentou, para cada trabalhador convidado, o documento que expressa a sua concordância em participar da pesquisa, estando nele registradas todas as informações sobre a pesquisa em linguagem acessível. Esse documento é denominado termo de',
'',
'',
'["proteção de dados pessoais","sigilo e confidencialidade","adesão e ciência de risco","consentimento livre e esclarecido","assentimento prévio e condicionado"]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Eixo 5',
'A escolha e a análise de indicadores integram o processo de formulação e avaliação de políticas sociais e devem considerar um conjunto de propriedades. Uma delas se refere à adoção de medidas o mais próximas possível do conceito abstrato ou da demanda que lhe deram origem, como o uso de indicadores antropométricos num programa de combate à fome. Outra propriedade está relacionada com a qualidade do levantamento de dados usados no seu cômputo, que são coletados de forma padronizada e seguindo um protocolo previamente estabelecido, como no caso das pesquisas amostrais das agências públicas. Essas propriedades são, respectivamente,',
'',
'',
'["validade e confiabilidade","factibilidade e temporalidade","sensibilidade e inteligibilidade","transparência e comunicabilidade","especificidade e razoabilidade"]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Eixo 5',
'Numa investigação sobre o cuidado em saúde das populações ribeirinhas, um pesquisador levantou aspectos históricos, culturais, políticos e ideológicos das categorias "saúde" e "doença" que não podem ser circunscritos em fórmulas matemáticas ou estatísticas. Entretanto, ele também se apropriou da linguagem de variáveis para especificar atributos e qualidades de seu objeto de investigação, usando dados censitários e indicadores numéricos. Na perspectiva crítico-dialética, nesse estudo, os dados quantitativos e qualitativos',
'',
'',
'["são incompatíveis, pois os quantitativos são objetivos e os qualitativos são subjetivos e impressionistas.","possuem uma oposição complementar, capaz de ampliar informações e conferir maior fidedignidade interpretativa.","possuem uma hierarquia que os distingue, sendo os dados quantitativos superiores aos qualitativos por permitirem generalizações.","se contrapõem radicalmente, porque os dados qualitativos se preocupam com um nível de realidade que não pode ser quantificado.","se equivalem, na medida em que têm como fundamento o princípio da objetividade e linguagem observacional neutra."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco5-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
