-- Seed: CNU 2025 (2a Edicao) - Bloco 8 (Intermediario - Saude) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Intermediario - Tipo 1 (Branca) - 68 questoes objetivas
-- Gabarito oficial:
--  1-B  2-B  3-C  4-C  5-C  6-A  7-E  8-B  9-E 10-C
-- 11-D 12-E 13-B 14-C 15-E 16-B 17-E 18-C 19-B 20-D
-- 21-B 22-D 23-E 24-D 25-B 26-E 27-C 28-E 29-C 30-A
-- 31-A 32-B 33-E 34-A 35-D 36-D 37-D 38-A 39-D 40-C
-- 41-D 42-D 43-E 44-C 45-C 46-B 47-A 48-E 49-A 50-E
-- 51-E 52-E 53-B 54-A 55-E 56-D 57-D 58-E 59-E 60-E
-- 61-C 62-C 63-D 64-C 65-C 66-E 67-D 68-C
-- Imagens: a questao 11 possui grafico (salvo em /cnu-2025-8-tarde-questao-11.svg).
-- As demais questoes nao possuem figura (a q.16 traz descricao textual da imagem; a q.41 traz tabela em texto).

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco8-tarde', 'CNU 2025 (2ª Edição) - Bloco 8 (Tarde) - Intermediário - Saúde', 'cnu', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Segundo o estudo relatado no texto 1, existe o risco de o Brasil se deparar, nas próximas décadas, com um novo problema de saúde pública: surtos da Doença de Chagas na Amazônia. A combinação de fatores associada à possível emergência desse problema está corretamente descrita, de acordo com o texto 1, na seguinte alternativa:',
'Texto 1 - "Mudanças climáticas podem ampliar o risco da Doença de Chagas na Amazônia". As mudanças climáticas (secas, enchentes, desmatamentos) podem levar ao avanço de doenças. Um estudo alerta que o aquecimento global pode facilitar a expansão dos barbeiros, vetores da Doença de Chagas, para novas áreas da floresta, afetando populações que já enfrentam desigualdades e condições precárias de moradia.',
'',
'["secas provocam enchentes, que facilitam a ocorrência de desmatamentos, que, por sua vez, propiciam surtos da Doença de Chagas;","mudanças climáticas causam a expansão dos barbeiros, o que, juntamente com condições precárias de moradia, provoca surtos da Doença de Chagas;","o aquecimento global provoca a expansão dos barbeiros, o que leva ao deslocamento dos vetores, ocasionando, finalmente, surtos da Doença de Chagas;","o protozoário Trypanosoma cruzi infecta barbeiros; estes, por sua vez, se espalham em consequência da modelagem de nicho ecológico, provocando surtos da Doença de Chagas;","a invasão de ambientes silvestres produz contato entre humanos e animais silvestres, o que provoca a transmissão acidental do protozoário aos humanos, acarretando surtos da Doença de Chagas."]'::jsonb,
'B',
'O texto associa as mudanças climáticas (aquecimento global) à expansão dos barbeiros, que, combinada às condições precárias de moradia das populações vulneráveis, pode provocar surtos da Doença de Chagas. A alternativa C peca ao tratar "expansão" e "deslocamento" como etapas distintas e omitir o fator social.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'O texto 1 é um relato, em estilo jornalístico, dos resultados de uma pesquisa científica. De acordo com o texto 1, um benefício potencial da pesquisa relatada é a possibilidade de:',
'Texto 1 - o estudo mapeia as áreas da Amazônia que podem ter aumento na presença de barbeiros até 2080, permitindo direcionar ações preventivas (vigilância entomológica, campanhas educativas, melhorias habitacionais) antes que a transmissão se intensifique.',
'',
'["refutar o negacionismo climático, ao discutir as origens do aquecimento global;","orientar investimentos públicos, ao identificar áreas de risco para a Doença de Chagas;","mapear áreas de possível infestação de barbeiros, ao realizar modelagem de nicho ecológico;","ampliar a consciência ambiental, ao evidenciar os efeitos negativos das mudanças climáticas;","incentivar o letramento científico, ao fornecer informações sobre as origens da Doença de Chagas."]'::jsonb,
'B',
'O benefício potencial destacado é permitir direcionar ações preventivas nas áreas de risco identificadas — ou seja, orientar investimentos e políticas públicas. A alternativa C descreve um meio/etapa da pesquisa (a modelagem), não o benefício final apontado pelo texto.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'"Precisamos colocar a saúde climática no centro das discussões." (Texto 1, 9º parágrafo) A expressão "saúde climática" é relativamente recente na língua portuguesa. Com base na leitura do texto 1, é correto inferir que essa expressão se refere à:',
'Texto 1 - o texto trata do impacto do aquecimento global sobre a saúde de populações humanas (surtos de doenças como a de Chagas), afirmando que "a crise ambiental também é uma crise de saúde e justiça social".',
'',
'["saúde global do planeta, afetada pelas mudanças climáticas;","saúde dos ecossistemas silvestres, fragilizada pela invasão da espécie humana;","saúde de populações humanas, impactada pelo aquecimento global;","saúde das comunidades amazônicas, ameaçada pela expansão dos barbeiros;","saúde funcional e estrutural dos nichos ecológicos, deteriorada pelas pesquisas científicas."]'::jsonb,
'C',
'No texto, "saúde climática" refere-se à saúde das populações humanas impactada pelas mudanças climáticas/aquecimento global. A alternativa D é restrita demais (só comunidades amazônicas/barbeiros) e a A desloca o sentido para a saúde do planeta.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'"A crise ambiental também é uma crise de saúde e justiça social." (Texto 1, 9º parágrafo) Da leitura do texto 1, infere-se que essa relação reside no fato de que:',
'Texto 1 - o estudo destaca que os surtos podem surpreender sistemas de saúde despreparados, afetando populações que já enfrentam desigualdades e condições precárias de moradia.',
'',
'["o poder público se mostra inoperante diante da crise climática;","o fortalecimento da vigilância entomológica não é feito com base em dados concretos;","os impactos da crise ambiental são sentidos mais fortemente pela população mais pobre;","os recursos financeiros para o enfrentamento da crise não são distribuídos igualitariamente entre os estados;","a responsabilidade pela crise é majoritariamente dos países desenvolvidos, cujo processo de industrialização é anterior."]'::jsonb,
'C',
'A dimensão de justiça social decorre de os impactos da crise ambiental recaírem mais fortemente sobre as populações mais pobres e vulneráveis, que enfrentam desigualdades e moradia precária, conforme o texto.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'O primeiro parágrafo do texto 1 é composto por dois períodos: [As mudanças climáticas estão alterando silenciosamente o cenário da saúde pública na Amazônia.] [As frequentes secas, enchentes, desmatamentos e demais problemas ambientais podem levar ao surgimento de novas doenças ou ao avanço de doenças já controladas.] Considerando o papel de cada período na organização do parágrafo, é correto afirmar que essa passagem se estrutura da seguinte maneira:',
'',
'',
'["da tese para a antítese;","da antítese para a tese;","do geral para o particular;","do particular para o geral;","da hipótese para a refutação."]'::jsonb,
'C',
'O primeiro período faz uma afirmação geral (as mudanças climáticas alteram o cenário da saúde pública) e o segundo a detalha/particulariza (secas, enchentes, desmatamentos levam a novas doenças). A estrutura vai do geral para o particular.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'"Precisamos colocar a saúde climática no centro das discussões. A crise ambiental também é uma crise de saúde e justiça social." (Texto 1, 9º parágrafo) A alternativa em que a reescritura em período único preserva o sentido original é a seguinte:',
'',
'',
'["Precisamos colocar a saúde climática no centro das discussões, pois a crise ambiental também é uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões, embora a crise ambiental também seja uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões; contudo, a crise ambiental também é uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões, desde que a crise ambiental também seja uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões; consequentemente, a crise ambiental também é uma crise de saúde e justiça social."]'::jsonb,
'A',
'O segundo período apresenta a causa/justificativa do primeiro. A conjunção "pois" (explicativa/causal) preserva esse sentido. "Embora" (concessão), "contudo" (oposição), "desde que" (condição) e "consequentemente" (consequência) alterariam a relação lógica.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'"Esse movimento pode surpreender os sistemas de saúde despreparados, afetando populações que já enfrentam desigualdades e condições precárias de moradia." (Texto 1, 6º parágrafo) A frase em que a palavra "já" tem o mesmo sentido que se verifica na passagem acima é:',
'',
'',
'["Saia aí de dentro já!","Já, já eu te dou uma resposta.","Eu já nem sei o que eu ia falar.","Já que você não se opõe, podemos iniciar o projeto.","Você melhorou ainda mais um prato que já era gostoso."]'::jsonb,
'E',
'No texto, "já" indica algo que ocorre desde antes / no momento presente (as populações "já enfrentam" desigualdades). Em "um prato que já era gostoso", o "já" tem o mesmo valor de algo que era assim previamente. As demais expressam imediatismo (A, B), retificação (C) ou causa (D).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'As frases das alternativas são reescrituras de passagens do texto 1. O único caso em que essa reescritura acarretou erro no uso do acento grave (crase) é:',
'',
'',
'["As frequentes secas, enchentes, desmatamentos e demais problemas ambientais podem dar margem à emergência de novas doenças.","Um caso emblemático é o da Doença de Chagas, que pode representar novamente um desafio para nosso sistema de saúde devido à alterações que estão sendo realizadas nas paisagens.","O aquecimento global pode levar à expansão dos barbeiros, vetores da Doença de Chagas, para novas áreas da floresta.","A Doença de Chagas (DC) existe há milhões de anos como uma doença em animais silvestres, que passou a ser transmitida à espécie humana.","Os resultados indicam uma tendência preocupante: os barbeiros devem expandir sua distribuição na Amazônia, especialmente no que se refere às áreas já vulneráveis."]'::jsonb,
'B',
'Não há crase antes de palavra no plural precedida de artigo indefinido implícito: "devido a alterações" (sem crase). O correto seria "devido a alterações" ou "devido às alterações" (com artigo definido plural), mas "à alterações" (singular + plural) é erro. As demais empregam a crase corretamente.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'"[...] em virtude das alterações que estão sendo realizadas nas paisagens." (Texto 1, 2º parágrafo) A única reescritura do trecho sublinhado na qual se verifica erro gramatical associado ao uso do pronome relativo é:',
'',
'',
'["[...] em virtude das alterações às quais as paisagens estão sujeitas.","[...] em virtude das alterações que as paisagens estão sofrendo.","[...] em virtude das alterações às quais as paisagens estão expostas.","[...] em virtude das alterações pelas quais as paisagens estão passando.","[...] em virtude das alterações que as paisagens estão sendo submetidas."]'::jsonb,
'E',
'O verbo "submeter" exige a preposição "a" (submeter-se a algo). Assim, o correto seria "às quais as paisagens estão sendo submetidas", e não "que as paisagens estão sendo submetidas" (sem preposição). As demais empregam corretamente o relativo com a preposição exigida pela regência.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'"Esses dados permitem direcionar ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões." (Texto 1, 8º parágrafo) A reescritura da passagem que NÃO apresenta erro gramatical é:',
'',
'',
'["Esses dados permitem que seja direcionado ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem que se direcione ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem que ações preventivas – como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais – sejam direcionadas antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem o direcionamento de ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que se intensifique nessas regiões, a transmissão da doença.","Com esses dados, pode-se direcionar ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que ocorra a intensificação da transmissão da doença nessas regiões."]'::jsonb,
'C',
'Em C, o verbo "direcionar" concorda corretamente com o sujeito plural "ações preventivas" (sejam direcionadas). As opções A e B erram na concordância (seja direcionado / se direcione + "ações"), D introduz vírgula indevida e E também apresenta problema de concordância ("pode-se direcionar ações").'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- REALIDADE BRASILEIRA (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Realidade Brasileira',
'Interprete o gráfico ao lado sobre a distribuição percentual das mortes violentas intencionais (MVI) por cor/raça e categoria de registro no Brasil, no ano de 2023. Com base nos dados expressos no gráfico, e considerando os debates sobre desigualdade e violência no Brasil, é correto afirmar que:',
'Gráfico de barras empilhadas (Anuário Brasileiro de Segurança Pública, FBSP, 2024, p. 34). Percentual de pessoas negras entre as vítimas, por categoria: Homicídio 77,8%; Latrocínio 60,9%; Lesão Corporal Seguida de Morte 73,9%; Morte decorrente de intervenção policial 82,7%; MVI (total) 78,0%. O maior percentual de vítimas negras ocorre justamente na morte decorrente de intervenção policial (Estado como agente direto da letalidade).',
'/cnu-2025-8-tarde-questao-11.svg',
'["os índices apontam para o caráter estrutural do racismo, embora não permitam inferir sobre os efeitos discriminatórios da política penal;","o viés racial é secundário na análise das práticas estatais de controle social, em função da íntima relação entre desigualdade socioeconômica e vulnerabilidade comunitária;","a racialização da violência letal tende a perder centralidade à medida que os indicadores sociais melhoram, como demonstrado nos casos de latrocínio;","a distribuição por cor/raça evidencia a seletividade da violência, intensificada nas ocorrências em que o Estado figura como agente direto da letalidade;","as taxas de mortes violentas intencionais (MVI) sugerem a superação dos abusos institucionais e a continuidade de práticas coercitivas em contextos interpessoais."]'::jsonb,
'D',
'O maior percentual de vítimas negras aparece na "morte decorrente de intervenção policial" (82,7%), evidenciando a seletividade racial da violência letal, que se intensifica justamente quando o Estado é o agente direto da letalidade. As demais alternativas negam ou relativizam indevidamente essa leitura dos dados.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Realidade Brasileira',
'Sobre a relação entre desenvolvimento sustentável e matriz energética, o texto afirma que o maior desafio da agenda climática ainda está no uso de fontes fósseis, mas o sistema agroalimentar também é decisivo, impactando pelo menos seis dos nove limites planetários, havendo forte interdependência entre a transição energética e a agroalimentar (ex.: ampliação da biomassa). De acordo com o trecho citado, é correto afirmar que:',
'Trecho adaptado de "O impacto dos sistemas agroalimentares nas mudanças climáticas" (Nexo Jornal, entrevista de Arilson Favareto, 2025): o maior desafio ainda é o uso de fontes fósseis; o sistema agroalimentar impacta ao menos seis dos nove limites planetários (perda de biodiversidade, escassez hídrica, ciclos de nitrogênio e fósforo); há interdependência entre transição energética e agroalimentar.',
'',
'["os impactos do sistema agroalimentar são mais danosos para o clima do que o uso de fontes fósseis;","a expansão do uso de biomassa garante a transição energética para os sistemas agroalimentares;","a pressão do setor energético sobre o sistema agroalimentar tem efeito indireto sobre o aquecimento global;","a substituição de combustíveis fósseis por biomassa assegura a transição energética e a proteção ambiental;","as crises ambientais globais são interconectadas, mas seus impactos locais variam conforme os contextos socioeconômicos."]'::jsonb,
'E',
'O trecho evidencia a interconexão das crises (energética e agroalimentar, múltiplos limites planetários). A alternativa E capta essa interdependência sem as afirmações absolutas e não sustentadas das demais (biomassa "garante"/"assegura" a transição, ou agroalimentar "mais danoso" que fósseis).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Realidade Brasileira',
'O Brasil figura entre as 10 maiores economias, mas mantém Índice de Gini elevado. Considerando a estrutura tributária brasileira e os mecanismos de financiamento estatal, analise: I. O modelo tributário brasileiro é reconhecido por sua regressividade, pois concentra a arrecadação em tributos sobre o consumo. II. No Brasil, os efeitos redistributivos das políticas públicas são limitados pelo condicionamento dos custos sociais ao teto de gastos. III. No debate internacional, a taxação de grandes fortunas é rejeitada por organismos multilaterais, que a consideram ineficaz e prejudicial ao crescimento econômico. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'I é correta: o sistema tributário brasileiro é regressivo, concentrando a arrecadação em tributos sobre o consumo. II é correta: o teto de gastos limitou os efeitos redistributivos das políticas sociais. III é falsa: o debate internacional recente (inclusive no G20) tem defendido a taxação de grandes fortunas, não a rejeitado.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Realidade Brasileira',
'Com base no conceito de transição energética (substituição da base de recursos e/ou tecnologias usada para gerar energia), é correto afirmar que o Brasil:',
'Definição da ANEEL: transição energética é o processo de substituição da base de recursos e/ou tecnologias usada para gerar energia por outras, por razões como escassez de recurso ou surgimento de tecnologias mais eficientes.',
'',
'["possui vantagens comparativas no processo de transição energética por apresentar menor volume de subsídios federais destinados aos combustíveis fósseis e maiores incentivos para as fontes renováveis;","lida com pressões externas, principalmente no setor elétrico, devido à baixa participação de fontes renováveis em sua matriz energética em comparação com outros países;","enfrenta o desafio de tornar a matriz energética mais resiliente frente à emergência climática, já que eventos extremos podem comprometer a estabilidade das fontes renováveis;","destaca-se internacionalmente por liderar a transição energética e a descarbonização no setor de transportes, com ampla adoção de tecnologias limpas;","apresenta como diferencial uma infraestrutura avançada de transmissão de energia, com redes modernas e amplas que conectam regiões produtoras de fontes renováveis aos principais centros consumidores."]'::jsonb,
'C',
'O Brasil tem matriz elétrica majoritariamente renovável (sobretudo hídrica), o que o torna vulnerável a eventos climáticos extremos (secas); o desafio é tornar a matriz mais resiliente frente à emergência climática. As demais alternativas contêm afirmações falsas (baixa participação renovável, liderança em transportes, ausência de subsídios fósseis).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Realidade Brasileira',
'Um estudo no Ceará (2017) revelou que a população LGBTQIAPN+ está entre as mais afetadas pelas dificuldades de acesso aos serviços de saúde, sobretudo por preconceito de profissionais durante o atendimento. Diante da situação apresentada, uma medida eficaz para reduzir as barreiras de acesso à saúde enfrentadas por esses grupos consiste em o profissional de saúde:',
'Relato de participante da pesquisa que percebeu mudança no atendimento após a profissional saber de sua orientação sexual, o que o afastou do serviço.',
'',
'["abster-se de perguntas sobre as práticas sexuais do paciente, pois os processos de cura e adoecimento são independentes da orientação afetivo-sexual e da identidade de gênero;","reconhecer os pacientes pelo nome social, mediante a comprovação médica da mudança de sexo, pois essa é uma forma de respeitar sua identidade de gênero e seus direitos;","adotar padrões culturais heteronormativos para entender a identidade de gênero e a orientação sexual dos pacientes, pois enquadrá-los em categorias preestabelecidas otimiza os atendimentos;","focar o atendimento nos aspectos sexuais dos pacientes, pois assim promove uma abordagem uniforme dos riscos gerais enfrentados por usuários homossexuais;","considerar as particularidades dos pacientes, pois a discriminação vivenciada por eles impacta a forma como o sofrimento e a doença são socialmente determinados."]'::jsonb,
'E',
'A medida eficaz é acolher e considerar as particularidades dos pacientes, reconhecendo que a discriminação vivenciada influencia a determinação social do adoecimento. As demais reproduzem preconceito, exigem comprovação indevida do nome social ou adotam padrões heteronormativos.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Realidade Brasileira',
'Em 2023, uma imagem comparava as áreas arborizadas de duas regiões de Brasília: à esquerda, Sol Nascente, uma favela com pouca ou nenhuma cobertura vegetal; à direita, o Lago Sul, bairro de alto padrão, com abundância de áreas verdes. Com base na descrição da imagem, analise as afirmativas sobre a segregação socioeconômica no Brasil (V/F): ( ) Trata-se de uma forma de injustiça social, pois promove a separação socioespacial de determinados grupos e viola direitos humanos ao restringir seu acesso ao saneamento básico, às áreas verdes e à moradia digna. ( ) Trata-se do resultado de políticas públicas que, mesmo diante das evidências de que a degradação ambiental atinge todos os espaços urbanos de forma indiscriminada, negligenciam a responsabilidade de mitigar seus impactos. ( ) Trata-se de um fenômeno social que se manifesta na organização do espaço urbano, reproduzindo e intensificando desigualdades, além de impactar negativamente as condições de saúde e a qualidade de vida de populações mais vulneráveis. A sequência correta é:',
'Imagem de satélite (Metrópoles) comparando a cobertura vegetal de Sol Nascente (favela, pouca vegetação) e Lago Sul (bairro de alto padrão, muita área verde) em Brasília.',
'',
'["V, V, F;","V, F, V;","F, F, V;","F, V, F;","V, V, V."]'::jsonb,
'B',
'A 1ª é verdadeira (injustiça social e violação de direitos pela segregação socioespacial). A 2ª é falsa: a degradação ambiental NÃO atinge todos os espaços de forma indiscriminada — ela é desigual, recaindo mais sobre os vulneráveis. A 3ª é verdadeira (fenômeno socioespacial que reproduz desigualdades e afeta a saúde). Sequência V, F, V.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Realidade Brasileira',
'Em 2024, o Brasil atingiu recorde histórico no consumo de energia elétrica (+5,3% ante 2023), ao mesmo tempo em que crescem as preocupações com a transição da matriz energética. Segundo os dados mais recentes, a fonte de geração de energia que mais cresce no Brasil é a:',
'',
'',
'["termoelétrica, diante da necessidade de garantir segurança energética em períodos de seca;","nuclear, com avanços no programa de ampliação da usina de Angra 3;","hidrelétrica, com o aumento da capacidade de usinas já existentes e novos projetos na Amazônia Legal;","eólica, devido à expansão de parques no Nordeste e no Sul do país;","solar, com forte expansão tanto da geração distribuída em residências quanto da centralizada em grandes usinas solares."]'::jsonb,
'E',
'A fonte que mais cresce na matriz elétrica brasileira é a solar, impulsionada tanto pela geração distribuída (painéis em residências e comércios) quanto por grandes usinas centralizadas. A eólica também cresce, mas a solar lidera o ritmo de expansão recente.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Realidade Brasileira',
'Segundo informe técnico do OBPopRua (UFMG), 335.151 pessoas viviam em situação de rua no Brasil em março de 2025 — aumento de 0,37% em relação a dezembro de 2024 e 14,6 vezes maior do que em dezembro de 2013. Com relação ao tema, é correto afirmar que:',
'',
'',
'["a maior parte das pessoas em situação de rua no Brasil são crianças e idosos, o que evidencia um deslocamento etário da crise social;","mulheres representam a maior parte das pessoas afetadas pela situação de rua, destacando os efeitos profundos da disparidade de gênero;","o aumento do número de pessoas em situação de rua ocorre a despeito dos investimentos em políticas públicas de moradia e educação;","mais da metade da população em situação de rua concluiu o ensino médio, o que indica que a escolaridade não é fator relevante no fenômeno;","a pesquisa mostra que houve um aumento de 14,6 vezes nas rupturas de vínculo familiar desde 2013."]'::jsonb,
'C',
'O aumento expressivo da população em situação de rua ocorre a despeito (apesar) dos investimentos em políticas públicas, evidenciando a insuficiência das respostas frente ao crescimento do fenômeno. As demais alternativas distorcem o perfil (predominam homens adultos, baixa escolaridade) ou o dado dos 14,6x (que se refere ao total, não a rupturas familiares).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Realidade Brasileira',
'Segundo o IBGE, entre 2004 e 2013 o Brasil reduziu a insegurança alimentar; a partir de 2013 os índices voltaram a crescer, com pico em 2022 e leve melhora em 2023. Em julho de 2025 a FAO/ONU anunciou que o Brasil não está mais no Mapa da Fome, mas a insegurança alimentar segue como problema estrutural. Em relação a esse tema, é correto afirmar que:',
'',
'',
'["a falta de educação alimentar é a responsável pela desnutrição da população, que opta por dietas hipercalóricas e com baixo valor nutricional;","as falhas na distribuição de alimentos comprometem o abastecimento e reduzem a disponibilidade de produtos essenciais para uma alimentação adequada;","as recentes restrições ao uso de agrotóxicos têm impactado a eficiência da produção de alimentos, uma vez que dificultam o controle das pragas;","a crise climática é responsável por destruir a produção nacional de alimentos e por afetar principalmente as zonas urbanas, que sofrem mais com a insegurança alimentar grave;","o aumento das taxas percentuais do crescimento demográfico nos últimos anos é responsável por reduzir a oferta e o acesso à comida."]'::jsonb,
'B',
'Apesar de o Brasil ser grande produtor de alimentos, a insegurança alimentar persiste em parte por falhas na distribuição e no acesso, que comprometem a disponibilidade de alimentos adequados à população. As demais alternativas atribuem o problema a causas equivocadas (educação alimentar, agrotóxicos, demografia).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Realidade Brasileira',
'A expectativa de vida no Brasil vem aumentando, alcançando 76,4 anos em 2023 (IBGE). Em relação aos desafios enfrentados pelo Brasil em razão do aumento da expectativa de vida, é correto afirmar que:',
'',
'',
'["a elevação da idade média da população tem contribuído para o aumento da rotatividade no mercado de trabalho, dificultando a renovação de postos;","o crescimento da população idosa tem contribuído para o colapso dos transportes públicos urbanos, sobrecarregando os sistemas viários nos horários de pico;","o envelhecimento populacional tem gerado conflitos geracionais dentro dos núcleos familiares, especialmente relacionados à dependência financeira dos mais velhos;","a falta de educação financeira desde a juventude compromete a segurança econômica dos idosos, dificultando o planejamento de longo prazo;","o aumento do número de idosos tem levado à redução de oportunidades educacionais para jovens, à medida que os recursos públicos são redirecionados para a terceira idade."]'::jsonb,
'D',
'Entre os desafios do envelhecimento, a ausência de educação financeira desde a juventude compromete a segurança econômica na velhice e dificulta o planejamento de longo prazo (aposentadoria, previdência). As demais estabelecem relações causais não sustentadas (rotatividade, colapso do transporte, conflitos geracionais, redução de vagas educacionais).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO (Questoes 21 a 31)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Noções de Direito',
'Maria tomou posse e está em exercício em cargo público de provimento efetivo, junto ao Poder Executivo Federal, há dois anos, sem interrupção. Descobriu que está sendo investigada por ilícito administrativo. Considerando as disposições da Constituição Federal, é correto afirmar que:',
'',
'',
'["na qualidade de ocupante de cargo público na administração pública federal direta, a servidora Maria tem direito à vitaliciedade, de forma que só perderá o cargo em virtude de sentença judicial transitada em julgado ou mediante processo administrativo em que lhe seja assegurada a ampla defesa;","apesar de os ocupantes de cargos públicos de provimento efetivo poderem obter a estabilidade, fato é que a servidora Maria ainda não preencheu os requisitos constitucionais para fazer jus ao referido direito;","em razão da estabilidade constitucionalmente garantida e já obtida, Maria, na qualidade de servidora pública, poderá perder o cargo mediante processo administrativo em que lhe seja assegurada a ampla defesa;","por ser Maria ocupante de um cargo público, não há que se falar no direito à estabilidade, por se tratar de prerrogativa aplicável, apenas, aos empregados públicos;","por ser considerada servidora pública estável, Maria só perderá o cargo em virtude de sentença judicial transitada em julgado."]'::jsonb,
'B',
'A estabilidade do servidor efetivo é adquirida após 3 anos de efetivo exercício (art. 41 da CF). Maria, com 2 anos, ainda não preencheu esse requisito temporal, logo ainda não é estável. Vitaliciedade não se aplica a ela (é de magistrados, membros do MP e dos Tribunais de Contas).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Noções de Direito',
'Em maio de 2025, João, primário, servidor público federal, liberou verba pública sem a estrita observância das normas, ensejando prejuízo mediano ao erário; ele próprio narrou o ocorrido aos superiores, deixando claro que agiu de forma culposa (negligência), o que foi comprovado. Considerando a Lei nº 8.429/1992 (com a redação da Lei nº 14.230/2021), é correto afirmar que:',
'',
'',
'["os órgãos públicos competentes, em razão da primariedade de João, podem deixar de responsabilizá-lo por sua ação caso ele ressarça integralmente os danos causados à Administração Pública federal, embora sua conduta caracterize ato de improbidade administrativa;","João não poderá responder pela conduta praticada, apesar de ser admissível a caracterização de ato culposo de improbidade administrativa, já que a ação não ensejou prejuízo de grande relevância para a Administração Pública federal;","a conduta de João caracteriza, cumulativamente, atos de improbidade administrativa que causa prejuízo ao erário e que atentam contra os princípios da Administração Pública;","o ato de improbidade administrativa não restou caracterizado, na medida em que o servidor João agiu de forma culposa, por meio de uma conduta negligente;","o servidor João poderá ser responsabilizado, pelo Ministério Público Federal, pela prática de ato de improbidade administrativa que causa prejuízo ao erário."]'::jsonb,
'D',
'Após a Lei 14.230/2021, o ato de improbidade administrativa exige dolo (art. 1º, §§1º a 3º). A modalidade culposa foi extinta. Como João agiu de forma culposa (negligência), não se caracteriza ato de improbidade, embora possa haver responsabilização em outras esferas e o dever de ressarcir o dano.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Noções de Direito',
'Fábio, residente e domiciliado no Município Alfa (AM), soube que o prefeito editou ato administrativo ilegal e lesivo ao meio ambiente ecologicamente equilibrado e busca contribuir para a anulação da medida. Em tema de controle judicial da Administração Pública, considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["Fábio, ainda que comprove a sua qualidade de cidadão, não poderá ingressar com ações em juízo, apesar de se tratar de ato administrativo ilegal e lesivo, já que esta é uma atribuição exclusiva dos órgãos e das entidades públicas;","Fábio não dispõe de instrumentos legais para, por conta própria, buscar a anulação judicial do ato administrativo, apesar da legítima preocupação, cabendo-lhe, no máximo, notificar o Ministério Público;","o manejo de uma ação civil pública é a via adequada para que Fábio postule, em juízo, a anulação do ato administrativo, juntando, ao processo, o comprovante de que é residente e domiciliado no Município Alfa;","Fábio pode ajuizar uma ação civil pública visando à anulação do ato administrativo, devendo demonstrar, para tanto, ser maior e capaz;","Fábio poderá manejar uma ação popular, desde que comprove a sua qualidade de cidadão."]'::jsonb,
'E',
'A ação popular (art. 5º, LXXIII, da CF) pode ser proposta por qualquer cidadão para anular ato lesivo ao patrimônio público, à moralidade administrativa e ao meio ambiente. Exige a comprovação da qualidade de cidadão (título de eleitor). A ação civil pública não é ajuizável por cidadão comum isoladamente.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Noções de Direito',
'Um órgão de pesquisa demonstrou interesse em tratar os dados pessoais de Vicente, adolescente de 13 anos, cujos pais (José e Maria) exercem em conjunto o poder familiar. Considerando a Lei nº 13.709/2018 (LGPD), é correto afirmar que:',
'',
'',
'["salvo se houver consentimento compartilhado de José e Maria, por meio de documento assinado e com firma reconhecida em um tabelionato de notas, não se admitirá o tratamento dos dados pessoais de Vicente;","para que se proceda ao tratamento dos dados pessoais de Vicente, é necessário que José e Maria, conjuntamente, consintam, de forma específica, com a medida, observado o melhor interesse do adolescente;","embora, em tese, seja admissível o tratamento dos dados pessoais de Vicente, exige-se prévia autorização por parte do Conselho Tutelar localizado na cidade onde o adolescente tem domicílio;","para que haja o tratamento dos dados pessoais de Vicente, basta o consentimento específico e em destaque dado por José ou por Maria ou, ainda, por ambos os genitores em conjunto;","para que o tratamento dos dados pessoais de Vicente seja admissível, pressupõe-se a autorização judicial, observado o seu melhor interesse."]'::jsonb,
'D',
'A LGPD (art. 14, §1º) exige, para o tratamento de dados de crianças e adolescentes, o consentimento específico e em destaque dado por ao menos um dos pais ou pelo responsável legal, sempre no melhor interesse do titular. Basta, portanto, o consentimento de um dos genitores (ou de ambos), sem necessidade de firma reconhecida, autorização judicial ou do Conselho Tutelar.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Noções de Direito',
'Lucas e Caio, estudantes, organizaram e convocaram manifestação pacífica, reunindo centenas de pessoas em uma praça pública de Belém, em defesa dos direitos dos povos originários. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["o encontro pacífico, organizado e convocado por Lucas e Caio, em uma praça pública localizada em Belém, poderá ocorrer sem intercorrências, após autorização da autoridade competente, caso não haja a frustração de outra reunião anteriormente convocada para o mesmo local;","nada impede a realização da reunião pacífica, organizada e convocada por Lucas e Caio, em uma praça pública localizada em Belém, desde que não se frustre outra reunião anteriormente convocada para o mesmo local, exigindo-se prévio aviso à autoridade competente;","a reunião pacífica organizada por Lucas e Caio, reunindo centenas de pessoas em defesa dos direitos dos povos originários, deverá ser realizada em um final de semana ou feriado, de forma a não prejudicar o direito de ir e vir da população local;","a reunião pacífica, organizada por Lucas e Caio, poderá ocorrer em uma praça pública localizada em Belém, independentemente de prévio aviso à autoridade competente;","a reunião pacífica, organizada por Lucas e Caio, pode ocorrer em uma praça pública localizada em Belém, desde que haja autorização da administração pública local."]'::jsonb,
'B',
'O direito de reunião (art. 5º, XVI, da CF) é assegurado pacificamente, sem armas, em locais abertos ao público, independentemente de autorização, exigindo-se apenas prévio aviso à autoridade competente e que não se frustre outra reunião anteriormente convocada para o mesmo local.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Noções de Direito',
'Carolina, jornalista, apresentou, por meio anônimo, pedido de acesso a informações públicas da administração federal, o que foi negado por Cloves sob os fundamentos de que faltava a identificação da requerente e os motivos determinantes da solicitação. Considerando a Lei nº 12.527/2011 (LAI), é correto afirmar que:',
'',
'',
'["a negativa ao requerimento formulado por Carolina está em desconformidade com a ordem jurídica, já que a Administração Pública federal não pode exigir a identificação da requerente, tampouco a delimitação dos motivos determinantes da solicitação;","a ausência de previsão legal expressa faz com que caiba à autoridade administrativa competente definir, fundamentadamente, os requisitos que devem ser preenchidos para que haja o acesso a informações públicas, motivo pelo qual a atuação de Cloves se deu de forma regular;","a atuação do servidor Cloves está parcialmente correta, já que o pedido de acesso a informações demanda a delimitação dos motivos determinantes da solicitação, muito embora não seja exigível a identificação da requerente;","o servidor Cloves agiu acertadamente, já que o pedido de acesso a informações públicas demanda a identificação da requerente e a delimitação dos motivos determinantes da solicitação;","o pedido de acesso a informações não exige a delimitação dos motivos determinantes da solicitação, mas pressupõe a identificação da requerente."]'::jsonb,
'E',
'Pela LAI (art. 10, §3º), são vedadas exigências relativas aos motivos determinantes da solicitação (não é preciso justificar o pedido). Contudo, exige-se a identificação do requerente (art. 10, §1º), não se admitindo pedido anônimo. Logo, a exigência de motivos é indevida, mas a de identificação é legítima.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Noções de Direito',
'Rodrigo, maior e capaz, tomou conhecimento de que foi decretada sua prisão preventiva por crime de roubo, mas tem comprovantes de que estava em outra cidade no horário do delito. Rodrigo ainda não foi preso. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["a utilização do remédio constitucional do habeas data por parte de Rodrigo, com o objetivo de combater a coação ilegal em sua liberdade de locomoção, só será cabível após a sua efetiva prisão;","Rodrigo poderá, desde logo, impetrar um habeas data para sanar a situação posta, ainda que não tenha sofrido efetiva coação ilegal em sua liberdade de locomoção;","a impetração, junto ao Poder Judiciário, de um habeas corpus é plenamente cabível, já que Rodrigo está ameaçado de sofrer coação ilegal em sua liberdade de locomoção;","a impetração de um habeas corpus por Rodrigo não é cabível antes da efetiva prisão, já que ele ainda não sofreu coação ilegal em sua liberdade de locomoção;","Rodrigo poderá impetrar, em juízo, um mandado de segurança, por estar ameaçado de sofrer coação ilegal em sua liberdade de locomoção."]'::jsonb,
'C',
'O habeas corpus (art. 5º, LXVIII, da CF) cabe quando alguém sofrer OU se achar ameaçado de sofrer violência ou coação em sua liberdade de locomoção. Diante de prisão preventiva já decretada, Rodrigo está ameaçado, sendo cabível o habeas corpus preventivo (salvo-conduto), independentemente da prisão efetiva.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Noções de Direito',
'Eduardo, empresário de elevado patrimônio, adquiriu para sua casa de praia uma máquina de lavar roupa (R$ 3.000,00), como destinatário final. A entidade privada Alfa (pessoa jurídica) utilizou determinados serviços como destinatária final. Ambos estão insatisfeitos. Considerando o Código de Defesa do Consumidor, é correto afirmar que:',
'',
'',
'["apesar de Eduardo e da entidade privada Alfa não serem enquadrados, nos termos da lei, como consumidores, é possível que, em eventual demanda judicial, o juiz, de forma fundamentada e excepcional, aplique os regramentos do Código de Defesa do Consumidor em benefício de ambos;","como pessoa jurídica, a entidade privada Alfa não pode ser considerada consumidora; igualmente, Eduardo não se caracteriza como consumidor, já que não é pessoa economicamente vulnerável;","por não ser hipossuficiente econômico, Eduardo não pode ser enquadrado como consumidor, mas a entidade privada Alfa, sendo a destinatária final dos serviços prestados, é consumidora;","por ser uma pessoa jurídica, a entidade privada Alfa, não é tida como consumidora, mas Eduardo, na qualidade de destinatário final do produto adquirido, é tido como consumidor;","por serem destinatários finais, respectivamente, do produto adquirido e dos serviços prestados, tanto Eduardo quanto a entidade privada Alfa são considerados consumidores."]'::jsonb,
'E',
'O CDC (art. 2º) define consumidor como toda pessoa física OU jurídica que adquire ou utiliza produto ou serviço como destinatário final. Tanto Eduardo (pessoa física) quanto a entidade Alfa (pessoa jurídica), sendo destinatários finais, são consumidores, independentemente de vulnerabilidade econômica.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Noções de Direito',
'Em razão de intensas chuvas e enchentes no Rio Grande do Sul, agentes públicos federais competentes, em situação de iminente perigo público, precisaram utilizar o imóvel particular de Joana para efetuar o salvamento da população local. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["o consentimento de Joana é necessário para que os agentes públicos federais competentes possam utilizar o seu imóvel ainda que haja situação de iminente perigo público, por se tratar de propriedade particular;","os agentes públicos federais competentes não poderão utilizar o imóvel de Joana sem o consentimento desta, ainda que se trate de situação de iminente perigo público, salvo se a proprietária não estiver no local;","o imóvel de Joana poderá ser utilizado pelos agentes públicos federais competentes, em razão da situação de iminente perigo público, sendo certo que caberá indenização ulterior se houver dano;","a autorização judicial é necessária para que os agentes públicos federais competentes possam, sem o consentimento de Joana, utilizar o seu imóvel em situação de iminente perigo público;","os agentes públicos federais competentes, diante de situação de iminente perigo público, poderão utilizar o imóvel de Joana, sem direito à indenização, ainda que haja dano."]'::jsonb,
'C',
'A requisição administrativa (art. 5º, XXV, da CF) permite à autoridade competente usar a propriedade particular em caso de iminente perigo público, assegurando ao proprietário indenização ulterior se houver dano. Não depende de consentimento do proprietário nem de autorização judicial prévia.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Noções de Direito',
'Maria tem 17 anos (universitária). José é historiador aposentado, com 67 anos. Lucas, 32 anos, é mecânico analfabeto. Os três pretendem votar em hipotética eleição. Considerando a Constituição Federal, é correto afirmar que o voto é:',
'',
'',
'["obrigatório para José e facultativo para Maria e Lucas;","obrigatório para Maria e facultativo para José e Lucas;","obrigatório para Lucas e facultativo para Maria e José;","obrigatório para Maria, José e Lucas;","facultativo para Maria, José e Lucas."]'::jsonb,
'A',
'Pelo art. 14, §1º, da CF, o voto é facultativo para maiores de 70 anos, analfabetos e maiores de 16 e menores de 18 anos. Assim, é facultativo para Maria (17 anos) e Lucas (analfabeto) e obrigatório para José (67 anos, alfabetizado e entre 18 e 70 anos).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Noções de Direito',
'Lucas, adolescente com 13 anos de idade e matriculado na rede municipal de ensino, pretende exercer atividade laborativa após as aulas para contribuir na renda familiar. Considerando as disposições expressas da Constituição Federal, em tema de direitos sociais, é correto afirmar que:',
'',
'',
'["por ter apenas 13 anos de idade, Lucas, ainda que esteja devidamente matriculado na rede municipal de ensino, não poderá exercer qualquer trabalho, nem mesmo na condição de aprendiz;","com a concordância dos seus pais, Lucas poderá trabalhar na qualidade de aprendiz, vedando-se, apenas, atividades laborativas noturnas ou perigosas;","como está matriculado na rede municipal de ensino, Lucas poderá exercer atividade laborativa, salvo trabalho noturno, perigoso ou insalubre;","caso haja a concordância expressa dos seus pais, Lucas poderá exercer atividade laborativa, ainda que se trate de trabalho noturno;","salvo na condição de aprendiz, o adolescente Lucas não poderá exercer qualquer trabalho."]'::jsonb,
'A',
'Pelo art. 7º, XXXIII, da CF, é proibido qualquer trabalho a menores de 16 anos, salvo na condição de aprendiz a partir dos 14 anos. Como Lucas tem 13 anos, não pode exercer trabalho algum, nem mesmo como aprendiz (que só é permitido a partir dos 14).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- MATEMATICA (Questoes 32 a 44)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Matemática',
'João contou os N números inteiros de 1 a 2025 que são múltiplos simultâneos de 2 e de 3, mas que não são múltiplos de 8. O valor de N é:',
'',
'',
'["337;","253;","168;","84;","42."]'::jsonb,
'B',
'Múltiplos de 6 (=2 e 3) até 2025: floor(2025/6)=337. Múltiplos simultâneos de 6 e 8 = múltiplos de 24: floor(2025/24)=84. Os que são múltiplos de 6 mas não de 8: 337 − 84 = 253.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Matemática',
'Em uma empresa, a razão entre o número de homens e o de mulheres é 3/5. Uma pesquisa revelou que 1/4 dos homens e 1/5 das mulheres têm animais de estimação. A razão entre o número de homens que têm animais de estimação e o número total de funcionários que têm animais de estimação é:',
'',
'',
'["3/4;","2/5;","3/5;","2/7;","3/7."]'::jsonb,
'E',
'Sejam 3k homens e 5k mulheres. Homens com pet: (1/4)(3k)=3k/4. Mulheres com pet: (1/5)(5k)=k. Total com pet: 3k/4 + k = 7k/4. Razão = (3k/4)/(7k/4) = 3/7.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Matemática',
'Duas cidades A e B estão conectadas por uma ferrovia de 270 km. Um trem a 120 km/h parte de A rumo a B. Quinze minutos depois, outro trem, a N km/h, parte de B rumo a A. Os dois trens se cruzam em um ponto a 140 km da cidade B. O valor de N é:',
'',
'',
'["168;","180;","188;","210;","220."]'::jsonb,
'A',
'O encontro ocorre a 140 km de B, logo a 270−140=130 km de A. Tempo do trem de A: 130/120 h. O trem de B parte 15 min (0,25 h) depois, então percorre 140 km em (130/120 − 0,25) h = (1,0833 − 0,25)=0,8333 h. N = 140/0,8333 = 168 km/h.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Matemática',
'Cinco velas acesas são dispostas em círculo. Uma rajada de vento sopra e cada vela tem 2/3 de probabilidade de apagar. A probabilidade de que, após a rajada, cada vela ainda esteja acesa ou esteja ao lado de pelo menos uma vela acesa é:',
'',
'',
'["17/81;","32/81;","64/81;","91/243;","152/243."]'::jsonb,
'D',
'Cada vela: acesa com p=1/3, apagada com q=2/3. A condição falha se existir alguma vela apagada cujos dois vizinhos também estejam apagados (três apagadas consecutivas no círculo de 5). Calculando a probabilidade do evento favorável sobre os 2^5=32 padrões ponderados por (1/3)^a(2/3)^b, obtém-se 91/243.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Matemática',
'Fernanda tem N medalhas. Dividindo em 4 potes, sobra 1; em 5 potes, sobram 2; em 6 potes, sobram 3. A soma dos algarismos do menor valor possível de N é:',
'',
'',
'["6;","8;","10;","12;","14."]'::jsonb,
'D',
'Note que N deixa resto (divisor − 3) em cada caso: N ≡ −3 (mod 4), (mod 5) e (mod 6). Logo N+3 é múltiplo de mmc(4,5,6)=60, então N = 60−3 = 57 (menor positivo). Soma dos algarismos: 5+7 = 12.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Matemática',
'Marli comprou um vestido por R$ 440,00 e parcelou em duas parcelas mensais (a primeira um mês após a compra). A loja cobra juros compostos de 5% ao mês. A primeira parcela foi de R$ 242,00. A segunda parcela foi de:',
'',
'',
'["R$ 241,00;","R$ 240,00;","R$ 234,00;","R$ 231,00;","R$ 224,00."]'::jsonb,
'D',
'Valor presente das parcelas = 440. Primeira parcela (1 mês): VP1 = 242/1,05 = 230,48. VP restante = 440 − 230,48 = 209,52. A 2ª parcela (2 meses): P2 = 209,52 × 1,05² = 209,52 × 1,1025 = 231,00.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Matemática',
'Há 9 pedras em linha reta, numeradas de 10 a 18. O sapinho está na pedra 10 e quer chegar à 18. A cada salto pode pular 1, 2 ou 3 pedras rumo à 18, evitando as pedras de número primo (11, 13, 17), que estão contaminadas. O número de sequências diferentes de saltos para ir de 10 a 18 é:',
'',
'',
'["5;","6;","7;","8;","9."]'::jsonb,
'A',
'Pedras proibidas: 11, 13, 17. Sejam f(n) o número de caminhos de n até 18 (saltos de 1 a 3, sem pousar em proibidas). f(18)=1; f(16)=f(17ban)+f(18)=1; f(15)=f(16)+f(17ban)+f(18)=2; f(14)=f(15)+f(16)+f(17ban)=3; f(12)=f(13ban)+f(14)+f(15)=5; f(10)=f(11ban)+f(12)+f(13ban)=5. Logo, 5 sequências.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Matemática',
'5 operários trabalhando 5 horas por dia durante 5 dias preparam 5000 m² de terreno. A área que 6 operários trabalhando 6 horas por dia durante 6 dias conseguem preparar é de:',
'',
'',
'["6000 m²;","6300 m²;","7410 m²;","8640 m²;","9510 m²."]'::jsonb,
'D',
'Regra de três composta (grandezas diretamente proporcionais): Área = 5000 × (6/5) × (6/5) × (6/5) = 5000 × 216/125 = 8640 m².'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Matemática',
'Nos EUA, 1 libra equivale a 16 onças e 1 quilograma equivale a 2,2 libras. Certo objeto tem massa de 3 libras e 10 onças. Seu valor equivalente em gramas é, aproximadamente:',
'',
'',
'["1610;","1630;","1650;","1670;","1690."]'::jsonb,
'C',
'3 libras e 10 onças = 3 + 10/16 = 3,625 libras. Em kg: 3,625 / 2,2 = 1,6477 kg ≈ 1648 g ≈ 1650 g.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Matemática',
'A tabela mostra a variação da pressão atmosférica (atm) com a altitude (km): 0→1,00; 1→0,89; 2→0,80; 3→0,71; 4→0,62; 5→0,54; 6→0,47; 7→0,40; 8→0,34; 9→0,28. É correto afirmar que:',
'Tabela pressão x altitude: (0 km; 1,00), (1; 0,89), (2; 0,80), (3; 0,71), (4; 0,62), (5; 0,54), (6; 0,47), (7; 0,40), (8; 0,34), (9; 0,28).',
'',
'["pressão atmosférica e altitude são grandezas diretamente proporcionais;","pressão atmosférica e altitude são grandezas inversamente proporcionais;","na altitude de 6 km, a pressão é de 0,6 atm;","quando a altitude varia de 2 km para 7 km, a pressão se reduz em 50%;","a 7 km de altitude, a pressão atmosférica é 40% menor que a pressão ao nível do mar."]'::jsonb,
'D',
'De 2 km (0,80 atm) para 7 km (0,40 atm), a pressão cai de 0,80 para 0,40, ou seja, reduz-se em 50%. Não são proporcionais (nem direta nem inversamente); a 6 km é 0,47 (não 0,6); a 7 km a pressão é 0,40, ou seja, 60% menor que 1,00 (não 40%).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Matemática',
'A divisão celular binária faz uma bactéria originar duas idênticas a cada 20 minutos em condições ideais. Uma cultura com 30 bactérias foi iniciada às 7 horas. Usando 2^10 ≅ 10³, a quantidade de bactérias às 19 horas era de aproximadamente:',
'',
'',
'["2 bilhões;","20 bilhões;","200 bilhões;","2 trilhões;","20 trilhões."]'::jsonb,
'D',
'De 7h às 19h são 12 horas = 720 min; nº de divisões: 720/20 = 36. População = 30 × 2^36. Como 2^36 = 2^30 × 2^6 ≅ 10^9 × 64 = 6,4×10^10. Total ≅ 30 × 6,4×10^10 = 1,92×10^12 ≈ 2 trilhões.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Matemática',
'Do conjunto {1,2,3,4,5,6}, Joana sorteia dois números diferentes e, independentemente, Laura também sorteia dois números diferentes (todos os pares equiprováveis). A probabilidade de que elas tenham sorteado exatamente um número em comum é:',
'',
'',
'["2/3;","3/5;","5/9;","7/12;","8/15."]'::jsonb,
'E',
'Fixado o par de Joana (2 números), o par de Laura é escolhido entre C(6,2)=15. Ter exatamente 1 em comum: escolher 1 dos 2 números de Joana (2 formas) e 1 dos 4 restantes (4 formas) = 8 pares favoráveis. Probabilidade = 8/15.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Matemática',
'Em uma bandeja há 11 empadas: 5 de frango e 6 de palmito. Sofia pega aleatoriamente 3 empadas. A probabilidade de que as 3 tenham o mesmo recheio é de, aproximadamente:',
'',
'',
'["12%;","15%;","18%;","21%;","25%."]'::jsonb,
'C',
'Total de formas: C(11,3)=165. Três de frango: C(5,3)=10. Três de palmito: C(6,3)=20. Favoráveis: 30. Probabilidade = 30/165 = 2/11 ≈ 0,1818 ≈ 18%.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- SAUDE (Questoes 45 a 68)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Saúde',
'Um grupo cultural comunitário decide participar de projetos de promoção de saúde que desenvolvam tecnologias sociais por meio de cultura e arte. Tomando por base a Política Nacional de Promoção da Saúde, esse grupo poderá divulgar, no seu trabalho, a seguinte informação:',
'',
'',
'["todos os hipertensos têm direito a quatro consultas anuais;","todas as crianças têm direito a fazer exame de fezes para a prevenção de parasitose intestinal;","todos os doentes renais em estágio avançado têm acesso ao tratamento específico (hemodiálise);","todas as pessoas com cefaleia têm direito à realização de tomografia computadorizada cerebral;","todas as pessoas idosas têm o direito de fazer uma ressonância magnética cerebral anual como prevenção da demência."]'::jsonb,
'C',
'Coerente com o SUS e a integralidade, os doentes renais em estágio avançado têm acesso ao tratamento específico (hemodiálise). As demais propõem exames/procedimentos indiscriminados e sem indicação clínica (tomografia para toda cefaleia, ressonância anual para idosos etc.), que não são direitos universais automáticos.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Saúde',
'Em uma unidade básica de saúde, estudantes da área de saúde participam do atendimento sob preceptoria de profissionais que não são professores das suas escolas de origem, e também coletam dados para pesquisas. Os professores das escolas de origem visitam a unidade uma vez por mês. Essa situação é:',
'',
'',
'["inapropriada, uma vez que não deve haver atividades de pesquisa na unidade básica;","apropriada, uma vez que os estudantes estão sob preceptoria dos profissionais da unidade básica;","apropriada, uma vez que a unidade recebe visitas mensais dos professores das escolas de origem dos estudantes;","inapropriada, uma vez que os professores das escolas das áreas de saúde devem estar presentes nos atendimentos dos estudantes;","inapropriada, uma vez que os professores das escolas das áreas de saúde devem estar presentes nas atividades de pesquisa dos estudantes."]'::jsonb,
'B',
'A integração ensino-serviço prevê a preceptoria por profissionais do próprio serviço (UBS), que supervisionam os estudantes no atendimento. Portanto, a situação é apropriada porque os estudantes estão sob preceptoria dos profissionais da unidade, não sendo exigida a presença física constante dos professores das escolas.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Saúde',
'Uma senhora que controla hipertensão na UBS solicita à médica um ecocardiograma anual porque sua vizinha faz. A médica explica que, no caso dela, não é indicado o exame anual, mas a senhora insiste alegando "direito". Segundo as diretrizes e princípios do SUS, a médica agiu:',
'',
'',
'["corretamente, dado o princípio da integralidade da atenção;","incorretamente, dado o princípio do acesso universal aos serviços de saúde;","corretamente, dada a orientação para contenção de gastos no Sistema Único de Saúde;","corretamente, dada a importância de se privilegiar a atenção primária na unidade básica de saúde;","corretamente, dado o caráter excessivamente especializado do ecocardiograma, o que o torna inapropriado para uma unidade básica."]'::jsonb,
'A',
'A integralidade não significa fazer todos os exames que o paciente deseja, mas ofertar o cuidado conforme a necessidade e a indicação clínica (uso racional e baseado em evidências). A médica agiu corretamente ao não solicitar exame sem indicação, respeitando a integralidade da atenção.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Saúde',
'A mãe de uma criança de 11 anos, totalmente saudável, dentro do peso, sem sintomas e sem prática de atividade física, pede vitaminas "porque toda criança toma para evitar doenças". Diante dessa situação, espera-se que o profissional de saúde:',
'',
'',
'["prescreva suplementos vitamínicos, pois eles ajudam a prevenir doenças;","prescreva suplementos vitamínicos, pois eles ajudam no crescimento das crianças;","encaminhe o paciente para a atenção especializada, para que se chegue a uma decisão sobre o uso de vitaminas;","não prescreva suplementos vitamínicos, uma vez que a criança não pratica atividade física;","não prescreva suplementos vitamínicos, pois a criança não tem carências nutricionais específicas."]'::jsonb,
'E',
'A suplementação vitamínica só é indicada diante de carências nutricionais específicas. Sendo a criança saudável e sem deficiências, não há indicação para prescrever suplementos, nem sentido em encaminhar à atenção especializada.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Saúde',
'João, que já tem alimentação saudável e equilibrada, decide deixar o sedentarismo e frequentar a academia. Na UBS, participa de reuniões sobre alimentação saudável para praticantes de atividade física. Nessas reuniões, João é corretamente orientado a:',
'',
'',
'["manter sua alimentação habitual;","iniciar a ingestão de suplementos vitamínicos;","privilegiar a ingestão de alimentos com alto teor de proteínas;","alimentar-se imediatamente após o treino, ainda dentro da academia;","passar a usar medicamentos que contenham os nutrientes individuais essenciais para a prática de atividade física."]'::jsonb,
'A',
'Como João já tem uma alimentação saudável e equilibrada, a orientação correta é manter essa alimentação, que atende às necessidades da atividade física moderada. Não há indicação de suplementos, hiperproteína ou medicamentos para uma pessoa saudável.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Saúde',
'Uma pessoa de 32 anos faz todo o trabalho de casa (cuida das plantas, corta grama, faz compras, dá banho na criança e no animal, varre, esfrega e lava), vai de metrô para o trabalho, onde serve café, e usa o pouco tempo livre para descansar. Em relação à rotina dessa pessoa, é correto afirmar que:',
'',
'',
'["ela não faz atividade física;","tarefas domésticas não trazem benefícios para a saúde;","atividade física requer tempo e local específicos para trazer benefícios para a saúde;","tarefas no trabalho que exijam esforço físico não trazem benefícios para a saúde;","a prática de qualquer atividade física, mesmo em períodos curtos do dia, traz benefícios para a saúde."]'::jsonb,
'E',
'Segundo as recomendações de atividade física, qualquer movimento corporal que gaste energia conta como atividade física, e mesmo períodos curtos ao longo do dia (tarefas domésticas, deslocamentos) trazem benefícios à saúde. A pessoa descrita realiza atividade física em sua rotina.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Saúde',
'Considere um rapaz que sofreu um acidente automobilístico e foi recebido em uma Unidade de Pronto Atendimento (UPA). Esse rapaz foi atendido na:',
'',
'',
'["atenção primária à saúde;","atenção terciária à saúde;","atenção domiciliar à saúde;","atenção hospitalar à saúde;","atenção especializada à saúde."]'::jsonb,
'E',
'A UPA integra a atenção especializada (rede de urgência e emergência), de complexidade intermediária entre a atenção básica (UBS) e a atenção hospitalar. Portanto, o atendimento ocorreu na atenção especializada à saúde.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Saúde',
'Em um centro de referência em HIV/aids/IST, há interação e integração tão profundas entre profissionais com conhecimentos e qualificações distintos que é produzido um novo conhecimento não redutível a nenhuma das disciplinas envolvidas, ligado à essência do cuidado, e não às disciplinas isoladamente. Esse atendimento é realizado sob a lógica:',
'',
'',
'["unidisciplinar;","pluridisciplinar;","multidisciplinar;","interdisciplinar;","transdisciplinar."]'::jsonb,
'E',
'A transdisciplinaridade caracteriza-se pela integração tão profunda entre os saberes que gera um conhecimento novo, que ultrapassa e não se reduz às disciplinas isoladas. É o que descreve o enunciado, distinguindo-se da multi/interdisciplinaridade, que preservam as fronteiras disciplinares.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Saúde',
'Um pesquisador convida um paciente para participar de uma pesquisa sobre um novo tratamento para a COVID-19. No que se refere ao consentimento livre e esclarecido, é correto afirmar que esse participante:',
'',
'',
'["deve receber a informação de que os riscos previsíveis não podem ser minimizados;","deve receber informações sobre os procedimentos alternativos de tratamento;","deve receber informações breves, generalizadas e sintéticas sobre os procedimentos da pesquisa;","deve julgar se deve ou não participar da pesquisa, segundo os valores morais da comunidade científica;","não tem capacidade de avaliar de forma adequada, como um cientista, as consequências da pesquisa para si e para os outros."]'::jsonb,
'B',
'O consentimento livre e esclarecido exige que o participante receba informações completas e claras, inclusive sobre procedimentos alternativos de tratamento disponíveis, para decidir de forma autônoma. As demais contrariam os princípios da autonomia e da informação adequada.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Saúde',
'Houve recolhimento e suspensão de lotes de canela em pó após análise detectar a presença de amido (não característico da canela) e resultado insatisfatório na avaliação histológica e na pesquisa de matérias estranhas. Os parâmetros não estão de acordo com a legislação. O monitoramento da qualidade e segurança dos alimentos é de responsabilidade da:',
'',
'',
'["vigilância sanitária;","vigilância ambiental;","vigilância epidemiológica;","Agência Brasil de Alimentos;","vigilância em saúde do trabalhador."]'::jsonb,
'A',
'O monitoramento da qualidade e segurança de alimentos (incluindo o controle de produtos, adulterações e o cumprimento da legislação sanitária) é atribuição da vigilância sanitária. A vigilância epidemiológica cuida de agravos/doenças e a ambiental, de fatores do meio ambiente.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Saúde',
'Um profissional decide pesquisar a letalidade da toxoplasmose no ambulatório de recém-nascidos de um hospital universitário, comparando os dados obtidos com dados nacionais, com recortes por municípios e sexo. Para obter os dados nacionais, o pesquisador poderá acessar o:',
'',
'',
'["Sistema de Informação Hospitalar;","Sistema de Informação Ambulatorial;","Sistema de Informação sobre Nascidos Vivos;","Sistema de Informação sobre Mortalidade;","Sistema de Informação de Agravos de Notificação."]'::jsonb,
'E',
'A toxoplasmose (congênita) é doença de notificação compulsória; para obter dados nacionais de casos por município e sexo, o sistema adequado é o SINAN (Sistema de Informação de Agravos de Notificação). O SIM registra óbitos e o SINASC, nascidos vivos.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Saúde',
'Um profissional de saúde que atua na assistência ao paciente apresentou feridas nos membros superiores. Com base nas disposições da Norma Regulamentadora 32 (NR-32), é correto afirmar que esse trabalhador:',
'',
'',
'["pode retomar suas atividades normalmente, desde que apresente atestado médico, sem necessidade de avaliação ocupacional adicional;","deve ser alocado em outra função, de preferência administrativa, até que as feridas cicatrizem totalmente;","pode retornar ao trabalho mesmo sem liberação médica, desde que as feridas sejam periodicamente limpas e estejam protegidas;","poderá reiniciar suas atividades apenas após avaliação médica obrigatória, seguida de emissão de documento de liberação para o trabalho;","pode retornar ao trabalho mesmo sem liberação médica, uma vez que a avaliação médica só é exigida para trabalhadores com doenças infectocontagiosas."]'::jsonb,
'D',
'Pela NR-32, todo trabalhador da saúde com ferimentos nos membros superiores só pode reiniciar suas atividades após avaliação médica obrigatória, com emissão de documento de liberação para o trabalho, dado o risco de contato com material biológico.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Saúde',
'Ao inspecionar um laboratório de análises clínicas, os fiscais constataram que os exames automatizados não passavam por controle externo da qualidade (CEQ). De acordo com as disposições da Anvisa sobre gestão da qualidade em laboratórios, é correto afirmar que:',
'',
'',
'["os exames automatizados só precisam passar por controle interno da qualidade;","os exames automatizados são dispensados de controles interno e externo da qualidade;","o CEQ é indicado apenas para exames manuais, não sendo obrigatório para exames automatizados;","os exames automatizados devem obrigatoriamente passar por programas de CEQ, quando disponíveis;","a participação em programas de CEQ é opcional, desde que o laboratório possua validação própria dos seus resultados."]'::jsonb,
'D',
'A norma da Anvisa (RDC de laboratórios clínicos) exige que os exames sejam submetidos ao controle externo da qualidade (CEQ) sempre que houver programa disponível para o exame, complementando o controle interno. Portanto, os exames automatizados devem obrigatoriamente participar do CEQ quando disponível.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Saúde',
'Um profissional de saúde sofreu acidente de trabalho com exposição a material biológico. Com base nas normas e protocolos do Ministério da Saúde, caso haja indicação de profilaxia pós-exposição (PEP), esta deve ser iniciada em até:',
'',
'',
'["12 horas após a exposição;","24 horas após a exposição;","36 horas após a exposição;","48 horas após a exposição;","72 horas após a exposição."]'::jsonb,
'E',
'A profilaxia pós-exposição (PEP) ao HIV deve ser iniciada o mais precocemente possível, preferencialmente nas primeiras 2 horas, e no máximo em até 72 horas após a exposição, conforme os protocolos do Ministério da Saúde.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Saúde',
'Um município iniciou ação integrada de mamografia de rotina em mulheres na faixa etária recomendada. Considerando as orientações do Ministério da Saúde, o rastreamento do câncer de mama deve ser realizado:',
'',
'',
'["bienalmente em mulheres a partir dos 35 anos;","anualmente em mulheres a partir dos 40 anos;","bienalmente em mulheres a partir dos 45 anos;","anualmente em mulheres de 49 a 70 anos;","bienalmente em mulheres de 50 a 69 anos."]'::jsonb,
'E',
'O rastreamento organizado do câncer de mama recomendado pelo Ministério da Saúde/INCA é a mamografia bienal (a cada 2 anos) em mulheres de 50 a 69 anos, faixa em que o benefício do rastreamento é mais bem estabelecido.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Saúde',
'A vigilância em saúde do trabalhador (VISAT) integra a atenção à saúde da população trabalhadora. Considerando as diretrizes da Política Nacional de Saúde do Trabalhador e da Trabalhadora (PNSTT), é correto afirmar que:',
'',
'',
'["a VISAT tem como foco a vigilância dos acidentes graves ou óbitos relacionados ao trabalho, não atuando de forma preventiva;","a responsabilidade pela saúde do trabalhador está limitada às ações realizadas nos ambientes ambulatoriais voltadas para a promoção da saúde;","a VISAT é executada prioritariamente pelos Centros de Referência em Saúde do Trabalhador (CEREST);","as ações de VISAT são voltadas apenas aos trabalhadores com vínculo formal de emprego, conforme as normas regulamentadoras do Ministério do Trabalho;","a VISAT deve contemplar ações de promoção e prevenção e ser integrada aos demais componentes da vigilância em saúde."]'::jsonb,
'E',
'Pela PNSTT, a VISAT deve contemplar ações de promoção, prevenção e vigilância e integrar-se aos demais componentes da vigilância em saúde (epidemiológica, sanitária, ambiental). Ela abrange todos os trabalhadores (formais e informais) e não se limita ao CEREST nem apenas a acidentes graves.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Saúde',
'Uma equipe de saúde realizou ações de rastreamento de doenças crônicas (hipertensão e diabetes) e diagnóstico precoce de alguns tipos de câncer. Essas atividades são classificadas como ações de:',
'',
'',
'["promoção da saúde;","prevenção primária;","prevenção secundária;","prevenção terciária;","prevenção quaternária."]'::jsonb,
'C',
'O rastreamento e o diagnóstico precoce de doenças em fase inicial (ou pré-clínica) caracterizam a prevenção secundária, que visa detectar e tratar precocemente agravos já instalados. A prevenção primária evita o surgimento da doença e a terciária reduz sequelas/complicações.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Saúde',
'Uma equipe identificou alta incidência de infecções respiratórias em crianças menores de 5 anos, observando: casas com ventilação inadequada, uso de fogão a lenha em ambiente fechado, baixa escolaridade das mães, ausência de coleta regular de lixo e dificuldade de acesso aos serviços de saúde. Considerando os determinantes e condicionantes do processo saúde-doença, é correto afirmar que:',
'',
'',
'["a baixa escolaridade das mães interfere na alfabetização das crianças, mas não tem impacto sobre os problemas de saúde;","o acesso limitado aos serviços de saúde é um problema estrutural, que não faz parte dos determinantes sociais de saúde, apesar de influenciá-los;","as condições descritas representam determinantes sociais e ambientais da saúde, que interagem entre si e impactam diretamente o processo saúde-doença;","a ausência de coleta regular de lixo é um problema sanitário isolado, que não influencia na saúde respiratória das crianças nem se relaciona a outros determinantes sociais;","os fatores observados configuram condições biológicas, individuais e comportamentais que atuam de maneira integrada na determinação do adoecimento infantil."]'::jsonb,
'C',
'As condições descritas (moradia, fumaça, escolaridade, saneamento, acesso aos serviços) são determinantes sociais e ambientais da saúde, que interagem entre si e influenciam diretamente o processo saúde-doença — no caso, as infecções respiratórias infantis.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Saúde',
'No contexto da prevenção e controle do diabetes mellitus, os fatores de risco podem ser modificáveis ou não modificáveis. Os fatores de risco modificáveis para o diabetes mellitus tipo 2 são:',
'',
'',
'["etnia, idade e predisposição genética;","sexo, histórico familiar e hipertensão arterial;","idade avançada, histórico familiar e obesidade;","sedentarismo, alimentação inadequada e excesso de peso;","hereditariedade, idade e histórico de diabetes gestacional."]'::jsonb,
'D',
'Fatores de risco modificáveis são aqueles que podem ser alterados por mudança de comportamento/estilo de vida: sedentarismo, alimentação inadequada e excesso de peso. Idade, etnia, histórico familiar e predisposição genética são não modificáveis.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Saúde',
'Um estudo de coorte com gestantes avaliou o risco de infecção do trato urinário (ITU) e parto prematuro (PP). Obtiveram-se: incidência nas expostas Iexp = 0,625; nas não expostas Inexp = 0,058; risco relativo RR = 10,77. A partir dessas informações, é correto concluir que:',
'',
'',
'["não há associação entre ITU e PP;","o RR indica o efeito absoluto da exposição à ITU;","a probabilidade de PP em gestantes com ITU é 10,77 vezes maior;","o RR = 10,77 representa o excesso de risco de PP em gestantes com ITU;","não há diferença de magnitude de efeito no PP entre gestantes com ou sem ITU."]'::jsonb,
'C',
'O risco relativo (RR) é uma medida de associação que compara o risco entre expostos e não expostos. RR = 10,77 significa que a probabilidade (risco) de parto prematuro nas gestantes com ITU é cerca de 10,77 vezes maior do que nas sem ITU. O RR não é medida absoluta nem representa apenas "excesso de risco".'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Saúde',
'Um grupo de pesquisa deseja estudar uma amostra representativa de trabalhadores de UTI para determinar a chance de acidentes com materiais perfurocortantes, tendo como exposições: turno de trabalho, tempo de experiência, ocupação, entre outras variáveis. Considerando os desenhos de estudo em epidemiologia, o estudo deverá ser:',
'',
'',
'["ecológico;","transversal;","caso-controle;","coorte retrospectivo;","ensaio clínico randomizado."]'::jsonb,
'C',
'Como o desfecho é o acidente com perfurocortantes e busca-se determinar a "chance" (odds) associada a várias exposições (turno, experiência, ocupação), parte-se dos que tiveram e não tiveram o acidente para investigar exposições pregressas — desenho caso-controle, que estima a razão de chances (odds ratio).'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Saúde',
'No modelo de Dahlgren e Whitehead, os Determinantes Sociais da Saúde (DSS) dispõem-se em camadas, dos determinantes individuais aos macrodeterminantes. Considerando a abordagem dos DSS para mudança de comportamentos de risco, é correto afirmar que:',
'',
'',
'["a mudança de comportamentos de risco independe de mudança nas normas culturais que os influenciam;","a mudança de comportamentos individuais requer prioritariamente a atuação sobre os indivíduos;","comportamento e estilo de vida são fatores individuais e não são considerados parte dos DSS;","programas educativos e comunicação social para mudança de comportamentos de risco são secundários nos DSS;","a atuação nos DSS para mudança de comportamentos individuais requer políticas de abrangência populacional."]'::jsonb,
'E',
'Na abordagem dos DSS, comportamentos individuais são influenciados por camadas mais amplas (condições sociais, econômicas, culturais e ambientais). Assim, mudar comportamentos de risco de forma efetiva requer políticas de abrangência populacional, e não apenas ações sobre os indivíduos.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Saúde',
'A biossegurança envolve a análise dos riscos aos quais os profissionais de saúde e de laboratórios estão expostos. No que se refere às boas práticas laboratoriais em relação ao trabalhador, é correto afirmar que:',
'',
'',
'["devem ser utilizados calças compridas e quaisquer sapatos fechados;","pode ser dispensada a lavagem das mãos em caso de uso de luva na atividade;","devem ser usadas cabines de segurança biológica em experimentos que envolvam produtos tóxicos ou compostos carcinogênicos;","não devem ser usadas lentes de contato, pois elas podem manter agentes infecciosos na mucosa ocular;","vidraria quebrada e pipetas descartáveis, após descontaminação, devem ser colocadas em caixas com paredes rígidas e rotuladas ''vidro quebrado'', não podendo ser descartadas como lixo geral."]'::jsonb,
'D',
'Entre as boas práticas laboratoriais relativas ao trabalhador, recomenda-se não usar lentes de contato durante as atividades, pois elas podem reter agentes químicos ou infecciosos junto à mucosa ocular, agravando eventuais acidentes. As demais alternativas contêm erros ou generalizações inadequadas quanto às BPLs.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Saúde',
'Indicadores de saúde permitem avaliar e monitorar a situação de saúde de uma população. Em relação aos indicadores de saúde, é correto afirmar que:',
'',
'',
'["a letalidade é calculada pelo número de óbitos por uma doença dividido pelo total da população;","o índice de envelhecimento é resultado da razão entre população > 60 anos e população total;","a mortalidade geral é calculada pela razão entre número de óbitos totais e número de pessoas na população geral;","a mortalidade infantil é calculada pela razão entre o número de óbitos em crianças até 5 anos e o número de nascidos vivos;","a incidência de uma determinada doença é calculada pelo número de casos totais na população dividido pela população total."]'::jsonb,
'C',
'A mortalidade geral (taxa bruta de mortalidade) é a razão entre o número total de óbitos e a população geral, em dado período. As demais estão erradas: letalidade = óbitos pela doença / casos da doença; índice de envelhecimento = idosos / jovens; mortalidade infantil = óbitos < 1 ano / nascidos vivos; incidência = casos novos / população exposta.'
from public.exams where slug = 'cnu-2025-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
