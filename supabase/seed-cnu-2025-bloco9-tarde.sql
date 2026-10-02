-- Seed: CNU 2025 (2a Edicao) - Bloco 9 (Intermediario - Regulacao) - TARDE
-- Concurso Publico Nacional Unificado - 2a Edicao - Banca FGV
-- Prova Objetiva - Nivel Intermediario - Tipo 1 (Branca) - 68 questoes objetivas
-- Gabarito oficial (Tipo 1):
--  1-B  2-B  3-C  4-C  5-C  6-A  7-E  8-B  9-E 10-C
-- 11-D 12-E 13-B 14-C 15-E 16-B 17-E 18-C 19-B 20-D
-- 21-B 22-D 23-E 24-D 25-B 26-E 27-C 28-E 29-C 30-A
-- 31-A 32-B 33-E 34-A 35-D 36-D 37-D 38-A 39-D 40-C
-- 41-D 42-D 43-E 44-C 45-C 46-E 47-B 48-D 49-A 50-D
-- 51-C 52-A 53-A 54-A 55-B 56-B 57-E 58-B 59-D 60-B
-- 61-A 62-E 63-E 64-E 65-B 66-D 67-C 68-E

insert into public.exams (slug, title, source, year)
values ('cnu-2025-bloco9-tarde', 'CNU 2025 (2ª Edição) - Bloco 9 (Tarde) - Intermediário - Regulação', 'cnu', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA (Questoes 1 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Segundo o estudo relatado no texto 1, existe o risco de o Brasil se deparar, nas próximas décadas, com um novo problema de saúde pública: surtos da Doença de Chagas na Amazônia. A combinação de fatores associada à possível emergência desse problema está corretamente descrita, de acordo com o texto 1, na seguinte alternativa:',
'Texto 1 - "Mudanças climáticas podem ampliar o risco da Doença de Chagas na Amazônia" (trecho adaptado). As mudanças climáticas estão alterando o cenário da saúde pública na Amazônia; secas, enchentes e desmatamentos podem levar ao avanço de doenças. Um estudo alerta que o aquecimento global pode facilitar a expansão dos barbeiros, vetores da Doença de Chagas, para novas áreas, afetando populações que já enfrentam desigualdades e condições precárias de moradia. (Fonte: The Conversation)',
'',
'["secas provocam enchentes, que facilitam a ocorrência de desmatamentos, que, por sua vez, propiciam surtos da Doença de Chagas;","mudanças climáticas causam a expansão dos barbeiros, o que, juntamente com condições precárias de moradia, provoca surtos da Doença de Chagas;","o aquecimento global provoca a expansão dos barbeiros, o que leva ao deslocamento dos vetores, ocasionando, finalmente, surtos da Doença de Chagas;","o protozoário Trypanosoma cruzi infecta barbeiros; estes, por sua vez, se espalham em consequência da modelagem de nicho ecológico, provocando surtos da Doença de Chagas;","a invasão de ambientes silvestres produz contato entre humanos e animais silvestres, o que provoca a transmissão acidental do protozoário aos humanos, acarretando surtos da Doença de Chagas."]'::jsonb,
'B',
'Conforme o texto, as mudanças climáticas (aquecimento global) provocam a expansão dos barbeiros, e é a combinação dessa expansão com as condições precárias de moradia das populações vulneráveis que cria o risco de surtos da Doença de Chagas. A alternativa B reúne corretamente os dois fatores (expansão dos vetores + precariedade habitacional). As demais omitem a condição social ou encadeiam fatores de forma não sustentada pelo texto.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'O texto 1 é um relato, em estilo jornalístico, dos resultados de uma pesquisa científica. De acordo com o texto 1, um benefício potencial da pesquisa relatada é a possibilidade de:',
'Texto 1: o estudo mapeia as áreas da Amazônia que podem ter aumento na presença de barbeiros até 2080, permitindo direcionar ações preventivas (vigilância, campanhas, melhorias habitacionais) e antecipar riscos.',
'',
'["refutar o negacionismo climático, ao discutir as origens do aquecimento global;","orientar investimentos públicos, ao identificar áreas de risco para a Doença de Chagas;","mapear áreas de possível infestação de barbeiros, ao realizar modelagem de nicho ecológico;","ampliar a consciência ambiental, ao evidenciar os efeitos negativos das mudanças climáticas;","incentivar o letramento científico, ao fornecer informações sobre as origens da Doença de Chagas."]'::jsonb,
'B',
'O benefício potencial destacado no texto é permitir direcionar ações preventivas a partir da identificação das áreas de risco, ou seja, orientar investimentos públicos (vigilância entomológica, campanhas educativas e melhorias habitacionais). A alternativa C descreve o método (modelagem de nicho), não o benefício; as demais não correspondem ao benefício central apontado.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'"Precisamos colocar a saúde climática no centro das discussões." (Texto 1, 9º parágrafo) A expressão "saúde climática" é relativamente recente na língua portuguesa. Com base na leitura do texto 1, é correto inferir que essa expressão se refere à:',
'Texto 1: a crise ambiental também é uma crise de saúde e justiça social; o aquecimento global pode intensificar a transmissão de doenças, afetando sobretudo populações humanas vulneráveis.',
'',
'["saúde global do planeta, afetada pelas mudanças climáticas;","saúde dos ecossistemas silvestres, fragilizada pela invasão da espécie humana;","saúde de populações humanas, impactada pelo aquecimento global;","saúde das comunidades amazônicas, ameaçada pela expansão dos barbeiros;","saúde funcional e estrutural dos nichos ecológicos, deteriorada pelas pesquisas científicas."]'::jsonb,
'C',
'No contexto do texto, "saúde climática" refere-se à saúde das populações humanas impactada pelo aquecimento global - a relação entre clima e saúde pública. A alternativa D é muito restritiva (só comunidades amazônicas) e as demais deslocam o sentido para o planeta, ecossistemas ou nichos, não para a saúde humana, que é o foco.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'"A crise ambiental também é uma crise de saúde e justiça social." (Texto 1, 9º parágrafo) Da leitura do texto 1, infere-se que a relação entre crise ambiental e justiça social reside no fato de que:',
'Texto 1: o movimento de expansão dos vetores "pode surpreender os sistemas de saúde despreparados, afetando populações que já enfrentam desigualdades e condições precárias de moradia".',
'',
'["o poder público se mostra inoperante diante da crise climática;","o fortalecimento da vigilância entomológica não é feito com base em dados concretos;","os impactos da crise ambiental são sentidos mais fortemente pela população mais pobre;","os recursos financeiros para o enfrentamento da crise não são distribuídos igualitariamente entre os estados;","a responsabilidade pela crise é majoritariamente dos países desenvolvidos, cujo processo de industrialização é anterior."]'::jsonb,
'C',
'O texto associa crise ambiental e justiça social porque os impactos recaem mais fortemente sobre as populações mais pobres e vulneráveis, que vivem em condições precárias de moradia. Logo, a relação é de desigualdade na distribuição dos impactos (alternativa C). As demais trazem ideias não desenvolvidas no texto.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'"[As mudanças climáticas estão alterando silenciosamente o cenário da saúde pública na Amazônia.] [As frequentes secas, enchentes, desmatamentos e demais problemas ambientais podem levar ao surgimento de novas doenças ou ao avanço de doenças já controladas.]" (Texto 1, 1º parágrafo) Considerando o papel de cada período na organização do parágrafo, é correto afirmar que essa passagem se estrutura da seguinte maneira:',
'',
'',
'["da tese para a antítese;","da antítese para a tese;","do geral para o particular;","do particular para o geral;","da hipótese para a refutação."]'::jsonb,
'C',
'O primeiro período faz uma afirmação ampla (as mudanças climáticas alteram o cenário da saúde pública) e o segundo detalha/especifica essa ideia, apontando fatores concretos (secas, enchentes, desmatamentos) e seus efeitos. Trata-se, portanto, de uma progressão do geral para o particular.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'"Precisamos colocar a saúde climática no centro das discussões. A crise ambiental também é uma crise de saúde e justiça social." (Texto 1, 9º parágrafo) A alternativa em que a reescritura em um período único preserva o sentido original é a seguinte:',
'',
'',
'["Precisamos colocar a saúde climática no centro das discussões, pois a crise ambiental também é uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões, embora a crise ambiental também seja uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões; contudo, a crise ambiental também é uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões, desde que a crise ambiental também seja uma crise de saúde e justiça social.","Precisamos colocar a saúde climática no centro das discussões; consequentemente, a crise ambiental também é uma crise de saúde e justiça social."]'::jsonb,
'A',
'O segundo período apresenta a justificativa (causa) da afirmação do primeiro: devemos pôr a saúde climática no centro PORQUE a crise ambiental é também de saúde e justiça social. A conjunção "pois" (explicativa/causal) preserva esse sentido. "Embora" e "contudo" introduzem oposição; "desde que" introduz condição; "consequentemente" inverte a relação causa/efeito.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'"Esse movimento pode surpreender os sistemas de saúde despreparados, afetando populações que já enfrentam desigualdades e condições precárias de moradia." (Texto 1, 6º parágrafo) A frase em que a palavra "já" tem o mesmo sentido que se verifica na passagem acima é:',
'',
'',
'["Saia aí de dentro já!","Já, já eu te dou uma resposta.","Eu já nem sei o que eu ia falar.","Já que você não se opõe, podemos iniciar o projeto.","Você melhorou ainda mais um prato que já era gostoso."]'::jsonb,
'E',
'Na passagem, "já" indica um estado anterior que persiste no presente (as populações já enfrentavam desigualdades antes do novo problema). Esse mesmo sentido - de algo que era assim antes e continua - aparece em "um prato que já era gostoso" (alternativa E). Nas demais, "já" indica imediatismo (A, B), reforço/negação (C) ou causa (D, "já que").'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'As frases das alternativas são reescrituras de passagens do texto 1. O único caso em que a reescritura acarretou ERRO no uso do acento grave (crase) é:',
'',
'',
'["As frequentes secas, enchentes, desmatamentos e demais problemas ambientais podem dar margem à emergência de novas doenças.","Um caso emblemático é o da Doença de Chagas, que pode representar novamente um desafio para nosso sistema de saúde devido à alterações que estão sendo realizadas nas paisagens.","O aquecimento global pode levar à expansão dos barbeiros, vetores da Doença de Chagas, para novas áreas da floresta.","A Doença de Chagas (DC) existe há milhões de anos como uma doença em animais silvestres, que passou a ser transmitida à espécie humana.","Os resultados indicam uma tendência preocupante: os barbeiros devem expandir sua distribuição na Amazônia, especialmente no que se refere às áreas já vulneráveis."]'::jsonb,
'B',
'Há erro em "devido à alterações": diante de palavra feminina no plural sem artigo definido ("alterações", de sentido genérico), não há crase - o correto seria "devido a alterações". Nas demais, a crase está correta: "à emergência", "à expansão", "à espécie humana" e "às áreas" exigem a fusão da preposição com o artigo feminino.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'"Um caso emblemático é o da Doença de Chagas, que [...] pode representar novamente um desafio para nosso sistema de saúde em virtude das alterações que estão sendo realizadas nas paisagens." (Texto 1, 2º parágrafo) A única reescritura do trecho sublinhado na qual se verifica ERRO gramatical associado ao uso do pronome relativo é:',
'',
'',
'["[...] em virtude das alterações às quais as paisagens estão sujeitas.","[...] em virtude das alterações que as paisagens estão sofrendo.","[...] em virtude das alterações às quais as paisagens estão expostas.","[...] em virtude das alterações pelas quais as paisagens estão passando.","[...] em virtude das alterações que as paisagens estão sendo submetidas."]'::jsonb,
'E',
'O verbo "submeter" exige a preposição "a" (submeter-se A algo). Logo, o correto seria "às quais as paisagens estão sendo submetidas", e não "que as paisagens estão sendo submetidas" (alternativa E, com erro de regência do relativo). Nas demais, a regência está adequada: sujeitas A, sofrendo (sem preposição), expostas A, passando POR.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'"Esses dados permitem direcionar ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões." (Texto 1, 8º parágrafo) A reescritura da passagem que NÃO apresenta erro gramatical é:',
'',
'',
'["Esses dados permitem que seja direcionado ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem que se direcione ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem que ações preventivas – como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais – sejam direcionadas antes que a transmissão da doença se intensifique nessas regiões.","Esses dados permitem o direcionamento de ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que se intensifique nessas regiões, a transmissão da doença.","Com esses dados, pode-se direcionar ações preventivas, como o fortalecimento da vigilância entomológica, campanhas educativas em comunidades vulneráveis e melhorias nas condições habitacionais, antes que ocorra a intensificação da transmissão da doença nessas regiões."]'::jsonb,
'C',
'Em C, a voz passiva está corretamente construída, com o verbo concordando com o sujeito plural ("ações preventivas [...] sejam direcionadas"). Em A ("seja direcionado ações") e B ("se direcione ações") há erro de concordância verbal (o verbo deveria ir ao plural: "sejam direcionadas"/"se direcionem"). D insere vírgula indevida separando verbo e sujeito; E apresenta falha de concordância na construção com "pode-se direcionar ações".'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- REALIDADE BRASILEIRA (Questoes 11 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Realidade Brasileira',
'Interprete o gráfico sobre a distribuição percentual das mortes violentas intencionais (MVI) por cor/raça e categoria de registro no Brasil, no ano de 2023. Com base nos dados do gráfico, e considerando os debates sobre desigualdade e violência no Brasil, é correto afirmar que:',
'Gráfico (Anuário Brasileiro de Segurança Pública, FBSP, 2024, p. 34): distribuição percentual das MVI por cor/raça (Amarelo, Branco, Indígena, Negro) e categoria de registro. Percentuais de vítimas NEGRAS por categoria: Homicídio 77,8%; Latrocínio 60,9%; Lesão Corporal Seguida de Morte 73,9%; Morte decorrente de intervenção policial 82,7%; MVI (total) 78,0%. Vítimas BRANCAS na mesma ordem: 21,7%; 39%; 25,5%; 17%; 21,5%. Observa-se que a maior proporção de vítimas negras ocorre justamente na categoria em que o Estado é o agente da letalidade (intervenção policial, 82,7%).',
'',
'["os índices apontam para o caráter estrutural do racismo, embora não permitam inferir sobre os efeitos discriminatórios da política penal;","o viés racial é secundário na análise das práticas estatais de controle social, em função da íntima relação entre desigualdade socioeconômica e vulnerabilidade comunitária;","a racialização da violência letal tende a perder centralidade à medida que os indicadores sociais melhoram, como demonstrado nos casos de latrocínio;","a distribuição por cor/raça evidencia a seletividade da violência, intensificada nas ocorrências em que o Estado figura como agente direto da letalidade;","as taxas de mortes violentas intencionais (MVI) sugerem a superação dos abusos institucionais e a continuidade de práticas coercitivas em contextos interpessoais."]'::jsonb,
'D',
'Os dados mostram que a população negra é a mais vitimada em todas as categorias e, de forma ainda mais acentuada, nas mortes decorrentes de intervenção policial (82,7%) - categoria em que o Estado é o agente direto da letalidade. Isso evidencia a seletividade racial da violência, intensificada quando o próprio Estado atua, o que corresponde à alternativa D.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Realidade Brasileira',
'A respeito da relação entre desenvolvimento sustentável e matriz energética, considere o trecho: "O maior desafio da agenda climática ainda está relacionado ao uso de fontes fósseis de energia. No entanto, a contribuição do sistema agroalimentar é igualmente decisiva [...] As atividades desse setor já impactam diretamente pelo menos seis dos nove limites planetários [...] Além disso, há uma forte interdependência entre a transição energética e a agroalimentar, especialmente diante da ampliação do uso da biomassa [...]" (Adaptado de Nexo Jornal, entrevista de Arilson Favareto, 2025). De acordo com o trecho, é correto afirmar que:',
'',
'',
'["os impactos do sistema agroalimentar são mais danosos para o clima do que o uso de fontes fósseis;","a expansão do uso de biomassa garante a transição energética para os sistemas agroalimentares;","a pressão do setor energético sobre o sistema agroalimentar tem efeito indireto sobre o aquecimento global;","a substituição de combustíveis fósseis por biomassa assegura a transição energética e a proteção ambiental;","as crises ambientais globais são interconectadas, mas seus impactos locais variam conforme os contextos socioeconômicos."]'::jsonb,
'E',
'O trecho enfatiza a interconexão entre as crises (clima, biodiversidade, água, ciclos de nutrientes) e a interdependência entre transição energética e agroalimentar, sem afirmar que a biomassa, isoladamente, garante a transição ou a proteção ambiental. A leitura compatível é a de que as crises globais são interconectadas, embora os impactos locais variem conforme contextos socioeconômicos (E). As demais extrapolam ou invertem o que o texto afirma.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Realidade Brasileira',
'Segundo dados do FMI (2024), o Brasil figura entre as 10 maiores economias do mundo, mas mantém um Índice de Gini elevado, entre os 15 países mais desiguais. Considerando a estrutura tributária brasileira e os mecanismos de financiamento estatal, analise as afirmativas. I. O modelo tributário brasileiro é reconhecido por sua regressividade, pois concentra a arrecadação em tributos sobre o consumo. II. No Brasil, os efeitos redistributivos das políticas públicas são limitados pelo condicionamento dos custos sociais ao teto de gastos. III. No debate internacional, a taxação de grandes fortunas é rejeitada por organismos multilaterais, que a consideram ineficaz e prejudicial ao crescimento econômico. Está correto o que se afirma em:',
'',
'',
'["I, apenas;","I e II, apenas;","I e III, apenas;","II e III, apenas;","I, II e III."]'::jsonb,
'B',
'A afirmativa I é correta: o sistema tributário brasileiro é regressivo, pois se apoia fortemente em tributos sobre o consumo, que pesam mais sobre os mais pobres. A II é correta: regras de limitação de despesas (como o teto de gastos) restringem a capacidade redistributiva das políticas públicas. A III é falsa: o debate internacional recente (inclusive no G20) tem avançado em propostas de tributação de grandes fortunas, que NÃO é consensualmente rejeitada pelos organismos multilaterais. Logo, apenas I e II.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Realidade Brasileira',
'Com base no conceito de transição energética (processo de substituição da base de recursos e/ou tecnologias usada para gerar energia), é correto afirmar que o Brasil:',
'',
'',
'["possui vantagens comparativas no processo de transição energética por apresentar menor volume de subsídios federais destinados aos combustíveis fósseis e maiores incentivos para as fontes renováveis;","lida com pressões externas, principalmente no setor elétrico, devido à baixa participação de fontes renováveis em sua matriz energética em comparação com outros países;","enfrenta o desafio de tornar a matriz energética mais resiliente frente à emergência climática, já que eventos extremos podem comprometer a estabilidade das fontes renováveis;","destaca-se internacionalmente por liderar a transição energética e a descarbonização no setor de transportes, com ampla adoção de tecnologias limpas;","apresenta como diferencial uma infraestrutura avançada de transmissão de energia, com redes modernas e amplas que conectam regiões produtoras de fontes renováveis aos principais centros consumidores."]'::jsonb,
'C',
'A matriz brasileira é fortemente dependente de fontes renováveis (sobretudo hidrelétrica), o que, paradoxalmente, a torna vulnerável a eventos climáticos extremos (secas que reduzem reservatórios, por exemplo). Assim, o desafio é tornar a matriz mais resiliente diante da emergência climática (C). A B é falsa (o Brasil tem ALTA participação de renováveis); as demais afirmam vantagens/liderança que não se sustentam (ainda há subsídios a fósseis, o setor de transportes é majoritariamente fóssil e a transmissão tem gargalos).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Realidade Brasileira',
'Com base em estudo que revela que a população LGBTQIAPN+ está entre as mais afetadas pelas dificuldades de acesso aos serviços de saúde, sobretudo em razão do preconceito de alguns profissionais, uma medida eficaz para reduzir essas barreiras consiste em o profissional de saúde:',
'',
'',
'["abster-se de perguntas sobre as práticas sexuais do paciente, pois os processos de cura e adoecimento são independentes da orientação afetivo-sexual e da identidade de gênero;","reconhecer os pacientes pelo nome social, mediante a comprovação médica da mudança de sexo, pois essa é uma forma de respeitar sua identidade de gênero e seus direitos;","adotar padrões culturais heteronormativos para entender a identidade de gênero e a orientação sexual dos pacientes, pois enquadrá-los em categorias preestabelecidas otimiza os atendimentos;","focar o atendimento nos aspectos sexuais dos pacientes, pois assim promove uma abordagem uniforme dos riscos gerais enfrentados por usuários homossexuais;","considerar as particularidades dos pacientes, pois a discriminação vivenciada por eles impacta a forma como o sofrimento e a doença são socialmente determinados."]'::jsonb,
'E',
'A medida eficaz é um atendimento que considere as particularidades e a trajetória de cada paciente, reconhecendo que a discriminação vivida afeta a determinação social do adoecimento e do cuidado (E). As demais reproduzem posturas inadequadas: condicionar o nome social a comprovação médica (B, incorreto - o uso do nome social independe disso), adotar visão heteronormativa (C), ou reduzir o paciente a aspectos sexuais (A, D).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Realidade Brasileira',
'Em 2023, uma imagem comparava as áreas arborizadas de duas regiões de Brasília: à esquerda, Sol Nascente, favela com pouca ou nenhuma cobertura vegetal; à direita, o Lago Sul, bairro de alto padrão, com abundância de áreas verdes. Com base nessa descrição, analise as afirmativas sobre a segregação socioeconômica no Brasil (V para verdadeira, F para falsa). ( ) Trata-se de uma forma de injustiça social, pois promove a separação socioespacial de determinados grupos e viola os direitos humanos ao restringir seu acesso ao saneamento básico, às áreas verdes e à moradia digna. ( ) Trata-se do resultado de políticas públicas que, mesmo diante de evidências de que a degradação ambiental atinge todos os espaços urbanos de forma indiscriminada, negligenciam a responsabilidade de mitigar seus impactos. ( ) Trata-se de um fenômeno social que se manifesta na organização do espaço urbano, reproduzindo e intensificando desigualdades, além de impactar negativamente as condições de saúde e a qualidade de vida de populações mais vulneráveis. A sequência correta é:',
'Imagem (Metrópoles): comparação aérea entre Sol Nascente (favela, quase sem cobertura vegetal) e Lago Sul (bairro nobre, com abundante arborização), em Brasília.',
'',
'["V, V, F;","V, F, V;","F, F, V;","F, V, F;","V, V, V."]'::jsonb,
'B',
'A 1ª afirmativa é verdadeira (a segregação socioespacial é injustiça social e restringe acesso a saneamento, áreas verdes e moradia digna). A 2ª é falsa, pois contém uma premissa incorreta: a degradação ambiental NÃO atinge todos os espaços urbanos "de forma indiscriminada" - ela recai desigualmente sobre as áreas mais pobres. A 3ª é verdadeira (o fenômeno reproduz desigualdades e piora saúde e qualidade de vida dos mais vulneráveis). Sequência V, F, V.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Realidade Brasileira',
'Em 2024, o Brasil atingiu recorde histórico no consumo de energia elétrica (aumento de 5,3% em relação a 2023), ao mesmo tempo em que crescem as preocupações com a transição da matriz energética. Segundo os dados mais recentes, a fonte de geração de energia que mais cresce no Brasil é a:',
'',
'',
'["termoelétrica, diante da necessidade de garantir segurança energética em períodos de seca;","nuclear, com avanços no programa de ampliação da usina de Angra 3;","hidrelétrica, com o aumento da capacidade de usinas já existentes e novos projetos na Amazônia Legal;","eólica, devido à expansão de parques no Nordeste e no Sul do país;","solar, com forte expansão tanto da geração distribuída em residências quanto da centralizada em grandes usinas solares."]'::jsonb,
'E',
'A fonte que mais cresce na matriz elétrica brasileira é a solar, impulsionada tanto pela geração distribuída (painéis em residências e comércios) quanto pela geração centralizada em grandes usinas fotovoltaicas. A energia eólica também cresceu bastante, mas a solar lidera o ritmo de expansão recente.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Realidade Brasileira',
'Segundo informe técnico do OBPopRua (UFMG), 335.151 pessoas viviam em situação de rua no Brasil em março de 2025 - número 14,6 vezes maior do que o registrado em dezembro de 2013. Com relação ao tema, é correto afirmar que:',
'',
'',
'["a maior parte das pessoas em situação de rua no Brasil são crianças e idosos, o que evidencia um deslocamento etário da crise social;","mulheres representam a maior parte das pessoas afetadas pela situação de rua, destacando os efeitos profundos da disparidade de gênero;","o aumento do número de pessoas em situação de rua ocorre a despeito dos investimentos em políticas públicas de moradia e educação;","mais da metade da população em situação de rua concluiu o ensino médio, o que indica que a escolaridade não é fator relevante no fenômeno;","a pesquisa mostra que houve um aumento de 14,6 vezes nas rupturas de vínculo familiar desde 2013."]'::jsonb,
'C',
'O crescimento expressivo da população em situação de rua ocorre apesar da existência de políticas públicas (de moradia, assistência e educação), o que revela a insuficiência e os limites dessas políticas diante da escala do problema (C). As demais fazem afirmações não sustentadas pelos dados: a maioria é de adultos homens (não crianças/idosos nem mulheres), a escolaridade é majoritariamente baixa, e o fator 14,6 refere-se ao total de pessoas, não a rupturas de vínculo.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Realidade Brasileira',
'Entre 2004 e 2013, o Brasil avançou na segurança alimentar; a partir de 2013 os índices de insegurança voltaram a crescer, com pico em 2022 e leve melhora em 2023. Em julho de 2025, a FAO/ONU anunciou que o Brasil saiu do Mapa da Fome, mas a insegurança alimentar permanece como problema estrutural. Em relação a esse tema, é correto afirmar que:',
'',
'',
'["a falta de educação alimentar é a responsável pela desnutrição da população, que opta por dietas hipercalóricas e com baixo valor nutricional;","as falhas na distribuição de alimentos comprometem o abastecimento e reduzem a disponibilidade de produtos essenciais para uma alimentação adequada;","as recentes restrições ao uso de agrotóxicos têm impactado a eficiência da produção de alimentos, uma vez que dificultam o controle das pragas;","a crise climática é responsável por destruir a produção nacional de alimentos e por afetar principalmente as zonas urbanas, que sofrem mais com a insegurança alimentar grave;","o aumento das taxas percentuais do crescimento demográfico nos últimos anos é responsável por reduzir a oferta e o acesso à comida."]'::jsonb,
'B',
'Embora o Brasil seja um dos maiores produtores de alimentos, a insegurança alimentar persiste em grande medida por problemas de ACESSO e DISTRIBUIÇÃO (renda, logística, desigualdade), que comprometem o abastecimento e a disponibilidade de alimentos adequados para parte da população (B). As demais atribuem a causa a fatores incorretos ou secundários (educação alimentar, agrotóxicos, destruição climática da produção, crescimento demográfico - que, aliás, está em desaceleração).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Realidade Brasileira',
'A expectativa de vida no Brasil vem aumentando, tendo alcançado 76,4 anos em 2023 (IBGE). Em relação aos desafios enfrentados pelo país em razão do aumento da expectativa de vida, é correto afirmar que:',
'',
'',
'["a elevação da idade média da população tem contribuído para o aumento da rotatividade no mercado de trabalho, dificultando a renovação de postos;","o crescimento da população idosa tem contribuído para o colapso dos transportes públicos urbanos, sobrecarregando os sistemas viários nos horários de pico;","o envelhecimento populacional tem gerado conflitos geracionais dentro dos núcleos familiares, especialmente relacionados à dependência financeira dos mais velhos;","a falta de educação financeira desde a juventude compromete a segurança econômica dos idosos, dificultando o planejamento de longo prazo;","o aumento do número de idosos tem levado à redução de oportunidades educacionais para jovens, à medida que os recursos públicos são redirecionados para a terceira idade."]'::jsonb,
'D',
'Entre as alternativas, a que traduz um desafio real e consistente é a necessidade de planejamento financeiro de longo prazo: a ausência de educação financeira desde a juventude compromete a segurança econômica na velhice, agravada pelo prolongamento da vida (D). As demais apresentam relações causais forçadas ou não sustentadas (colapso de transportes, conflitos geracionais, redução de vagas educacionais etc.).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- NOCOES DE DIREITO (Questoes 21 a 31)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Noções de Direito',
'Maria tomou posse e está em exercício em cargo público de provimento efetivo no Poder Executivo Federal há dois anos, sem interrupção. Em determinado dia, soube que está sendo investigada por ilícito administrativo. Considerando as disposições da Constituição Federal, é correto afirmar que:',
'',
'',
'["na qualidade de ocupante de cargo público na administração pública federal direta, a servidora Maria tem direito à vitaliciedade, de forma que só perderá o cargo em virtude de sentença judicial transitada em julgado ou mediante processo administrativo em que lhe seja assegurada a ampla defesa;","apesar de os ocupantes de cargos públicos de provimento efetivo poderem obter a estabilidade, fato é que a servidora Maria ainda não preencheu os requisitos constitucionais para fazer jus ao referido direito;","em razão da estabilidade constitucionalmente garantida e já obtida, Maria, na qualidade de servidora pública, poderá perder o cargo mediante processo administrativo em que lhe seja assegurada a ampla defesa;","por ser Maria ocupante de um cargo público, não há que se falar no direito à estabilidade, por se tratar de prerrogativa aplicável, apenas, aos empregados públicos;","por ser considerada servidora pública estável, Maria só perderá o cargo em virtude de sentença judicial transitada em julgado."]'::jsonb,
'B',
'A estabilidade do servidor público de cargo efetivo é adquirida após três anos de efetivo exercício (art. 41 da CF), mediante aprovação em avaliação especial de desempenho. Como Maria tem apenas dois anos de exercício, ainda NÃO preencheu o requisito temporal, logo ainda não é estável (B). A vitaliciedade (A) é prerrogativa de magistrados, membros do MP e dos Tribunais de Contas, não de servidores em geral.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Noções de Direito',
'Em maio de 2025, João, servidor público federal primário, liberou verba pública sem a estrita observância das normas, causando prejuízo mediano ao erário. Ele próprio procurou os superiores e comprovou ter agido de forma culposa (negligência). Considerando a Lei nº 8.429/1992 com as alterações da Lei nº 14.230/2021, é correto afirmar que:',
'',
'',
'["os órgãos públicos competentes, em razão da primariedade de João, podem deixar de responsabilizá-lo por sua ação caso ele ressarça integralmente os danos causados à Administração Pública federal, embora sua conduta caracterize ato de improbidade administrativa;","João não poderá responder pela conduta praticada, apesar de ser admissível a caracterização de ato culposo de improbidade administrativa, já que a ação não ensejou prejuízo de grande relevância para a Administração Pública federal;","a conduta de João caracteriza, cumulativamente, atos de improbidade administrativa que causa prejuízo ao erário e que atentam contra os princípios da Administração Pública;","o ato de improbidade administrativa não restou caracterizado, na medida em que o servidor João agiu de forma culposa, por meio de uma conduta negligente;","o servidor João poderá ser responsabilizado, pelo Ministério Público Federal, pela prática de ato de improbidade administrativa que causa prejuízo ao erário."]'::jsonb,
'D',
'Após a Lei nº 14.230/2021, a improbidade administrativa passou a exigir DOLO (não há mais modalidade culposa). Como João agiu de forma culposa (negligência), sua conduta não configura ato de improbidade administrativa (D). Isso não afasta eventual responsabilização em outras esferas (ex.: ressarcimento, responsabilidade funcional), mas, especificamente quanto à improbidade, o ato não se caracteriza por ausência de dolo.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Noções de Direito',
'Fábio, residente e domiciliado no Município Alfa (AM), soube que o prefeito editou ato administrativo ilegal e lesivo ao meio ambiente ecologicamente equilibrado. Em tema de controle judicial da Administração Pública, considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["Fábio, ainda que comprove a sua qualidade de cidadão, não poderá ingressar com ações em juízo, apesar de se tratar de ato administrativo ilegal e lesivo, já que esta é uma atribuição exclusiva dos órgãos e das entidades públicas;","Fábio não dispõe de instrumentos legais para, por conta própria, buscar a anulação judicial do ato administrativo, apesar da legítima preocupação, cabendo-lhe, no máximo, notificar o Ministério Público;","o manejo de uma ação civil pública é a via adequada para que Fábio postule, em juízo, a anulação do ato administrativo, juntando, ao processo, o comprovante de que é residente e domiciliado no Município Alfa;","Fábio pode ajuizar uma ação civil pública visando à anulação do ato administrativo, devendo demonstrar, para tanto, ser maior e capaz;","Fábio poderá manejar uma ação popular, desde que comprove a sua qualidade de cidadão."]'::jsonb,
'E',
'A ação popular (art. 5º, LXXIII, da CF) é o instrumento adequado para que qualquer CIDADÃO anule ato lesivo ao patrimônio público, à moralidade administrativa e ao meio ambiente. Seu requisito essencial é a comprovação da cidadania (título de eleitor). Logo, Fábio poderá ajuizar ação popular desde que comprove ser cidadão (E). A ação civil pública (C, D) não é ajuizável por cidadão individualmente - seus legitimados são MP, entes públicos e associações.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Noções de Direito',
'O órgão de pesquisa Alfa pretende tratar dados pessoais de Vicente, 13 anos, cujos pais (José e Maria) exercem em conjunto o poder familiar. Considerando a Lei nº 13.709/2018 (LGPD), é correto afirmar que:',
'',
'',
'["salvo se houver consentimento compartilhado de José e Maria, por meio de documento assinado e com firma reconhecida em um tabelionato de notas, não se admitirá o tratamento dos dados pessoais de Vicente;","para que se proceda ao tratamento dos dados pessoais de Vicente, é necessário que José e Maria, conjuntamente, consintam, de forma específica, com a medida, observado o melhor interesse do adolescente;","embora, em tese, seja admissível o tratamento dos dados pessoais de Vicente, exige-se prévia autorização por parte do Conselho Tutelar localizado na cidade onde o adolescente tem domicílio;","para que haja o tratamento dos dados pessoais de Vicente, basta o consentimento específico e em destaque dado por José ou por Maria ou, ainda, por ambos os genitores em conjunto;","para que o tratamento dos dados pessoais de Vicente seja admissível, pressupõe-se a autorização judicial, observado o seu melhor interesse."]'::jsonb,
'D',
'A LGPD (art. 14, §1º) dispõe que o tratamento de dados pessoais de crianças e adolescentes deve ser realizado com o consentimento específico e em destaque dado por PELO MENOS UM dos pais ou pelo responsável legal, sempre no melhor interesse do titular. Basta, portanto, o consentimento de José OU de Maria (ou de ambos) (D). Não se exige consentimento conjunto obrigatório (B), firma reconhecida (A), autorização do Conselho Tutelar (C) nem autorização judicial (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Noções de Direito',
'Lucas e Caio organizaram e convocaram manifestação pacífica, reunindo centenas de pessoas em praça pública de Belém, em defesa dos direitos dos povos originários. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["o encontro pacífico, organizado e convocado por Lucas e Caio, em uma praça pública localizada em Belém, poderá ocorrer sem intercorrências, após autorização da autoridade competente, caso não haja a frustração de outra reunião anteriormente convocada para o mesmo local;","nada impede a realização da reunião pacífica, organizada e convocada por Lucas e Caio, em uma praça pública localizada em Belém, desde que não se frustre outra reunião anteriormente convocada para o mesmo local, exigindo-se prévio aviso à autoridade competente;","a reunião pacífica organizada por Lucas e Caio, reunindo centenas de pessoas em defesa dos direitos dos povos originários, deverá ser realizada em um final de semana ou feriado, de forma a não prejudicar o direito de ir e vir da população local;","a reunião pacífica, organizada por Lucas e Caio, poderá ocorrer em uma praça pública localizada em Belém, independentemente de prévio aviso à autoridade competente;","a reunião pacífica, organizada por Lucas e Caio, pode ocorrer em uma praça pública localizada em Belém, desde que haja autorização da administração pública local."]'::jsonb,
'B',
'O direito de reunião (art. 5º, XVI, da CF) é assegurado independentemente de autorização, exigindo-se apenas PRÉVIO AVISO à autoridade competente e que não frustre outra reunião anteriormente convocada para o mesmo local. A alternativa B reproduz exatamente esses requisitos. As que exigem "autorização" (A, E) estão erradas, pois a Constituição dispensa autorização; a D erra ao dispensar o aviso prévio; e a C cria restrição inexistente.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Noções de Direito',
'Carolina, jornalista, apresentou, de forma anônima, pedido de acesso a informações públicas da administração pública federal. O requerimento foi negado por Cloves sob o fundamento de que não continha identificação da requerente nem os motivos da solicitação. Considerando a Lei nº 12.527/2011 (LAI), é correto afirmar que:',
'',
'',
'["a negativa ao requerimento formulado por Carolina está em desconformidade com a ordem jurídica, já que a Administração Pública federal não pode exigir a identificação da requerente, tampouco a delimitação dos motivos determinantes da solicitação;","a ausência de previsão legal expressa faz com que caiba à autoridade administrativa competente definir, fundamentadamente, os requisitos que devem ser preenchidos para que haja o acesso a informações públicas, motivo pelo qual a atuação de Cloves se deu de forma regular;","a atuação do servidor Cloves está parcialmente correta, já que o pedido de acesso a informações demanda a delimitação dos motivos determinantes da solicitação, muito embora não seja exigível a identificação da requerente;","o servidor Cloves agiu acertadamente, já que o pedido de acesso a informações públicas demanda a identificação da requerente e a delimitação dos motivos determinantes da solicitação;","o pedido de acesso a informações não exige a delimitação dos motivos determinantes da solicitação, mas pressupõe a identificação da requerente."]'::jsonb,
'E',
'A LAI (art. 10) exige a IDENTIFICAÇÃO do requerente, mas VEDA expressamente quaisquer exigências relativas aos motivos determinantes da solicitação (art. 10, §3º). Assim, pode-se exigir identificação, mas não a justificativa do pedido. A negativa de Cloves foi parcialmente indevida: ele podia exigir identificação (afastando o anonimato), mas não os motivos. A alternativa E traduz corretamente essa regra.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Noções de Direito',
'Rodrigo, maior e capaz, soube que foi decretada sua prisão preventiva por suposto roubo em agência dos Correios em Brasília, mas tem comprovantes de que, no horário do crime, estava em Salvador. Rodrigo ainda não foi preso. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["a utilização do remédio constitucional do habeas data por parte de Rodrigo, com o objetivo de combater a coação ilegal em sua liberdade de locomoção, só será cabível após a sua efetiva prisão;","Rodrigo poderá, desde logo, impetrar um habeas data para sanar a situação posta, ainda que não tenha sofrido efetiva coação ilegal em sua liberdade de locomoção;","a impetração, junto ao Poder Judiciário, de um habeas corpus é plenamente cabível, já que Rodrigo está ameaçado de sofrer coação ilegal em sua liberdade de locomoção;","a impetração de um habeas corpus por Rodrigo não é cabível antes da efetiva prisão, já que ele ainda não sofreu coação ilegal em sua liberdade de locomoção;","Rodrigo poderá impetrar, em juízo, um mandado de segurança, por estar ameaçado de sofrer coação ilegal em sua liberdade de locomoção."]'::jsonb,
'C',
'O habeas corpus (art. 5º, LXVIII, da CF) é cabível tanto quando alguém SOFRE quanto quando está AMEAÇADO de sofrer violência ou coação em sua liberdade de locomoção (HC preventivo, "salvo-conduto"). Como há ordem de prisão iminente, Rodrigo pode impetrar HC desde logo, antes da prisão efetiva (C). O habeas data (A, B) protege o direito a informações pessoais, e o mandado de segurança (E) é residual, não cabível quando a hipótese é de proteção à liberdade de locomoção.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Noções de Direito',
'Eduardo, empresário com elevado patrimônio, adquiriu, para sua casa de praia, uma máquina de lavar roupa (R$ 3.000,00), como destinatário final. A entidade privada Alfa (pessoa jurídica) utilizou determinados serviços como destinatária final. Ambos estão insatisfeitos. Considerando o Código de Defesa do Consumidor, é correto afirmar que:',
'',
'',
'["apesar de Eduardo e da entidade privada Alfa não serem enquadrados, nos termos da lei, como consumidores, é possível que, em eventual demanda judicial, o juiz, de forma fundamentada e excepcional, aplique os regramentos do Código de Defesa do Consumidor em benefício de ambos;","como pessoa jurídica, a entidade privada Alfa não pode ser considerada consumidora; igualmente, Eduardo não se caracteriza como consumidor, já que não é pessoa economicamente vulnerável;","por não ser hipossuficiente econômico, Eduardo não pode ser enquadrado como consumidor, mas a entidade privada Alfa, sendo a destinatária final dos serviços prestados, é consumidora;","por ser uma pessoa jurídica, a entidade privada Alfa, não é tida como consumidora, mas Eduardo, na qualidade de destinatário final do produto adquirido, é tido como consumidor;","por serem destinatários finais, respectivamente, do produto adquirido e dos serviços prestados, tanto Eduardo quanto a entidade privada Alfa são considerados consumidores."]'::jsonb,
'E',
'O CDC (art. 2º) define consumidor como toda pessoa física OU jurídica que adquire ou utiliza produto ou serviço como destinatário final. A vulnerabilidade econômica não é requisito para a caracterização. Como tanto Eduardo (pessoa física) quanto a entidade Alfa (pessoa jurídica) são destinatários finais, ambos são consumidores (E). As demais erram ao exigir hipossuficiência ou ao excluir a pessoa jurídica.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Noções de Direito',
'Em razão de intensas chuvas e enchentes no Rio Grande do Sul, agentes públicos federais, em situação de iminente perigo público, precisaram utilizar o imóvel particular de Joana para efetuar o salvamento da população local. Considerando a Constituição Federal, é correto afirmar que:',
'',
'',
'["o consentimento de Joana é necessário para que os agentes públicos federais competentes possam utilizar o seu imóvel ainda que haja situação de iminente perigo público, por se tratar de propriedade particular;","os agentes públicos federais competentes não poderão utilizar o imóvel de Joana sem o consentimento desta, ainda que se trate de situação de iminente perigo público, salvo se a proprietária não estiver no local;","o imóvel de Joana poderá ser utilizado pelos agentes públicos federais competentes, em razão da situação de iminente perigo público, sendo certo que caberá indenização ulterior se houver dano;","a autorização judicial é necessária para que os agentes públicos federais competentes possam, sem o consentimento de Joana, utilizar o seu imóvel em situação de iminente perigo público;","os agentes públicos federais competentes, diante de situação de iminente perigo público, poderão utilizar o imóvel de Joana, sem direito à indenização, ainda que haja dano."]'::jsonb,
'C',
'Trata-se da requisição administrativa (art. 5º, XXV, da CF): no caso de iminente perigo público, a autoridade competente poderá usar propriedade particular, assegurada ao proprietário indenização ULTERIOR, se houver dano. Logo, o imóvel pode ser utilizado independentemente de consentimento ou autorização judicial, cabendo indenização posterior em caso de dano (C).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Noções de Direito',
'Maria tem 17 anos. José é historiador aposentado, com 67 anos. Lucas, com 32 anos, é mecânico analfabeto. Os três pretendem votar em hipotética eleição realizada na data atual. Considerando a Constituição Federal, é correto afirmar que o voto é:',
'',
'',
'["obrigatório para José e facultativo para Maria e Lucas;","obrigatório para Maria e facultativo para José e Lucas;","obrigatório para Lucas e facultativo para Maria e José;","obrigatório para Maria, José e Lucas;","facultativo para Maria, José e Lucas."]'::jsonb,
'A',
'Pelo art. 14, §1º, da CF, o voto é obrigatório para os maiores de 18 e menores de 70 anos alfabetizados; é FACULTATIVO para os analfabetos, para os maiores de 70 anos e para os maiores de 16 e menores de 18 anos. Aplicando aos três: Maria (17 anos) tem voto facultativo (faixa de 16 a 18 anos); Lucas (32 anos) tem voto facultativo por ser analfabeto; José (67 anos, alfabetizado, entre 18 e 70 anos) tem voto obrigatório. Portanto, o voto é obrigatório apenas para José e facultativo para Maria e Lucas (alternativa A).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Noções de Direito',
'Lucas, adolescente com 13 anos, matriculado na rede municipal de ensino, pretende exercer atividade laborativa após as aulas para contribuir na renda familiar. Considerando as disposições expressas da Constituição Federal, em tema de direitos sociais, é correto afirmar que:',
'',
'',
'["por ter apenas 13 anos de idade, Lucas, ainda que esteja devidamente matriculado na rede municipal de ensino, não poderá exercer qualquer trabalho, nem mesmo na condição de aprendiz;","com a concordância dos seus pais, Lucas poderá trabalhar na qualidade de aprendiz, vedando-se, apenas, atividades laborativas noturnas ou perigosas;","como está matriculado na rede municipal de ensino, Lucas poderá exercer atividade laborativa, salvo trabalho noturno, perigoso ou insalubre;","caso haja a concordância expressa dos seus pais, Lucas poderá exercer atividade laborativa, ainda que se trate de trabalho noturno;","salvo na condição de aprendiz, o adolescente Lucas não poderá exercer qualquer trabalho."]'::jsonb,
'A',
'A Constituição (art. 7º, XXXIII) proíbe qualquer trabalho a menores de 16 anos, SALVO na condição de aprendiz, a partir dos 14 anos. Como Lucas tem apenas 13 anos, ele não pode exercer trabalho algum, NEM MESMO como aprendiz (a aprendizagem só é permitida a partir dos 14 anos). Logo, a alternativa A está correta. A alternativa E erra ao sugerir que a aprendizagem seria possível aos 13 anos.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
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
'Múltiplos simultâneos de 2 e 3 são múltiplos de 6. De 1 a 2025 há floor(2025/6) = 337 múltiplos de 6. Entre eles, devemos excluir os que também são múltiplos de 8, ou seja, múltiplos de mmc(6,8)=24: floor(2025/24) = 84. Assim, N = 337 - 84 = 253.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Matemática',
'Em uma empresa, a razão entre o número de homens e o de mulheres é 3/5. Uma pesquisa revelou que 1/4 dos homens e 1/5 das mulheres têm animais de estimação. A razão entre o número de homens que têm animais de estimação e o número total de funcionários que têm animais de estimação é:',
'',
'',
'["3/4;","2/5;","3/5;","2/7;","3/7."]'::jsonb,
'E',
'Tome homens = 3k e mulheres = 5k. Homens com pet: (1/4)(3k) = 3k/4. Mulheres com pet: (1/5)(5k) = k. Total com pet = 3k/4 + k = 7k/4. Razão homens/total = (3k/4) / (7k/4) = 3/7.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Matemática',
'Duas cidades A e B estão conectadas por uma ferrovia de 270 km. Um trem com velocidade constante de 120 km/h parte de A em direção a B. Quinze minutos depois, outro trem, com velocidade constante de N km/h, parte de B em direção a A. Os dois trens se cruzam em um ponto a 140 km de B. O valor de N é:',
'',
'',
'["168;","180;","188;","210;","220."]'::jsonb,
'A',
'O ponto de encontro fica a 140 km de B, logo a 270 - 140 = 130 km de A. O trem de A percorre 130 km a 120 km/h: tempo = 130/120 h = 13/12 h. O trem de B parte 15 min (1/4 h) depois, então viaja por 13/12 - 1/4 = 13/12 - 3/12 = 10/12 = 5/6 h, percorrendo os 140 km. Velocidade N = 140 / (5/6) = 140 x 6/5 = 168 km/h.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Matemática',
'Cinco velas acesas são dispostas em círculo. Uma rajada de vento sopra e cada vela tem 2/3 de probabilidade de apagar (de forma independente). A probabilidade de que, após a rajada, cada vela ainda esteja acesa ou esteja ao lado de pelo menos uma vela acesa é:',
'',
'',
'["17/81;","32/81;","64/81;","91/243;","152/243."]'::jsonb,
'D',
'Cada vela acende com probabilidade 1/3 e apaga com 2/3. Queremos a probabilidade de NÃO existir nenhuma vela apagada cujas duas vizinhas também estejam apagadas (ou seja, nenhuma sequência de 3 velas apagadas consecutivas no círculo de 5). Calculando sobre os 2^5 = 32 padrões de aceso/apagado ponderados por (1/3)^(acesas)(2/3)^(apagadas) e somando os casos favoráveis (sem três apagadas consecutivas em círculo), obtém-se 91/243.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Matemática',
'Fernanda tem N medalhas. Dividindo em 4 potes, sobra 1; em 5 potes, sobram 2; em 6 potes, sobram 3. A soma dos algarismos do menor valor possível de N é:',
'',
'',
'["6;","8;","10;","12;","14."]'::jsonb,
'D',
'Observe que em cada caso o resto é 3 unidades a menos que o divisor: N ≡ -3 (mod 4), N ≡ -3 (mod 5), N ≡ -3 (mod 6). Logo N + 3 é múltiplo comum de 4, 5 e 6, isto é, de mmc(4,5,6) = 60. O menor N positivo é 60 - 3 = 57. A soma dos algarismos de 57 é 5 + 7 = 12.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Matemática',
'Marli comprou um vestido por R$ 440,00 e parcelou em duas parcelas mensais (a primeira paga um mês após a compra). A loja cobra juros compostos de 5% ao mês. A primeira parcela foi de R$ 242,00. A segunda parcela foi de:',
'',
'',
'["R$ 241,00;","R$ 240,00;","R$ 234,00;","R$ 231,00;","R$ 224,00."]'::jsonb,
'D',
'O valor à vista (R$ 440,00) deve igualar o valor presente das parcelas, descontadas a 5% ao mês. Primeira parcela (1 mês): VP1 = 242 / 1,05 = 230,476... Resta financiar 440 - 230,476... = 209,523... correspondente ao valor presente da 2ª parcela (2 meses): P2 = 209,523... x 1,05^2 = 209,523 x 1,1025 ≈ 231. Logo a segunda parcela foi de R$ 231,00.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Matemática',
'Há 9 pedras igualmente espaçadas em linha reta, numeradas de 10 a 18. O sapinho Saltitante está na pedra 10 e quer ir à pedra 18. A cada salto, pode pular 1, 2 ou 3 pedras na direção da pedra 18, mas deve evitar as pedras de número primo (11, 13, 17). O número de sequências diferentes de saltos para ir de 10 a 18 é:',
'',
'',
'["5;","6;","7;","8;","9."]'::jsonb,
'A',
'As pedras proibidas são 11, 13 e 17 (primos). Pedras permitidas: 10,12,14,15,16,18. Contando as formas de alcançar cada pedra permitida (somando as formas das pedras a 1, 2 ou 3 de distância que sejam permitidas): f(10)=1; f(12)=1 (só de 10); f(14)=1 (de 12); f(15)=f(14)+f(12)=2; f(16)=f(15)+f(14)=3 (13 é proibida); f(18)=f(16)+f(15)=5 (de 16 e de 15; a 17 é proibida). Portanto, 5 sequências.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Matemática',
'Sabe-se que 5 operários, trabalhando 5 horas por dia durante 5 dias, preparam 5000 m² de terreno. A área que 6 operários, trabalhando 6 horas por dia durante 6 dias, conseguem preparar é de:',
'',
'',
'["6000 m²;","6300 m²;","7410 m²;","8640 m²;","9510 m²."]'::jsonb,
'D',
'A área é proporcional ao produto (operários x horas/dia x dias). Para o 1º caso: 5x5x5 = 125 unidades correspondem a 5000 m², logo cada unidade = 40 m². Para o 2º caso: 6x6x6 = 216 unidades. Área = 216 x 40 = 8640 m².'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Matemática',
'Nos EUA, 1 libra equivale a 16 onças e 1 quilograma equivale a 2,2 libras. Certo objeto tem massa de 3 libras e 10 onças. Seu valor equivalente em gramas é, aproximadamente:',
'',
'',
'["1610;","1630;","1650;","1670;","1690."]'::jsonb,
'C',
'3 libras e 10 onças = 3 + 10/16 = 3,625 libras. Como 1 kg = 2,2 libras, a massa em kg é 3,625 / 2,2 ≈ 1,6477 kg ≈ 1648 g, ou seja, aproximadamente 1650 gramas.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Matemática',
'A tabela mostra a variação da pressão atmosférica (atm) com a altitude (km). No nível do mar a pressão é 1 atm e diminui com a altitude. Com base na tabela, é correto afirmar que:',
'Tabela (altitude em km -> pressão em atm): 0 -> 1,00; 1 -> 0,89; 2 -> 0,80; 3 -> 0,71; 4 -> 0,62; 5 -> 0,54; 6 -> 0,47; 7 -> 0,40; 8 -> 0,34; 9 -> 0,28.',
'',
'["pressão atmosférica e altitude são grandezas diretamente proporcionais;","pressão atmosférica e altitude são grandezas inversamente proporcionais;","na altitude de 6 km, a pressão é de 0,6 atm;","quando a altitude varia de 2 km para 7 km, a pressão se reduz em 50%;","a 7 km de altitude, a pressão atmosférica é 40% menor que a pressão ao nível do mar."]'::jsonb,
'D',
'De 2 km (0,80 atm) para 7 km (0,40 atm), a pressão passa de 0,80 para 0,40, ou seja, reduz-se à metade - uma redução de 50% (D). A relação não é diretamente nem inversamente proporcional (A, B); a 6 km a pressão é 0,47 (não 0,6) (C); e a 7 km a pressão é 0,40 atm, que é 60% menor (não 40% menor) que 1,00 atm (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Matemática',
'Na divisão celular binária, uma bactéria leva cerca de 20 minutos para se dividir em duas. Uma cultura com 30 bactérias foi iniciada às 7 horas, em condições ideais. Usando a aproximação 2^10 ≅ 10³, a quantidade de bactérias às 19 horas desse dia era de aproximadamente:',
'',
'',
'["2 bilhões;","20 bilhões;","200 bilhões;","2 trilhões;","20 trilhões."]'::jsonb,
'D',
'De 7h às 19h são 12 horas = 720 minutos; a cada 20 minutos há uma duplicação, logo 720/20 = 36 duplicações. A população é 30 x 2^36. Como 2^36 = 2^30 x 2^6 = (2^10)^3 x 64 ≅ (10^3)^3 x 64 = 10^9 x 64 = 6,4 x 10^10. Multiplicando por 30: 30 x 6,4 x 10^10 = 1,92 x 10^12 ≈ 2 x 10^12, ou seja, aproximadamente 2 trilhões.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Matemática',
'Do conjunto {1, 2, 3, 4, 5, 6}, Joana sorteia dois números diferentes e, de forma independente, Laura também sorteia dois números diferentes. A probabilidade de que elas tenham sorteado exatamente um número em comum é:',
'',
'',
'["2/3;","3/5;","5/9;","7/12;","8/15."]'::jsonb,
'E',
'Fixado o par de Joana (2 elementos entre os 6), o par de Laura é um dos C(6,2) = 15 pares igualmente prováveis. Pares com EXATAMENTE um número em comum com o de Joana: escolhe-se 1 dos 2 números de Joana e 1 dos 4 restantes = 2 x 4 = 8 pares. Probabilidade = 8/15.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Matemática',
'Em uma bandeja há 11 empadas: 5 de frango e 6 de palmito, todas idênticas na aparência. Sofia pega aleatoriamente 3 empadas. A probabilidade de que as 3 tenham o mesmo recheio é, aproximadamente:',
'',
'',
'["12%;","15%;","18%;","21%;","25%."]'::jsonb,
'C',
'Total de modos de escolher 3 entre 11: C(11,3) = 165. Três de frango: C(5,3) = 10. Três de palmito: C(6,3) = 20. Favoráveis = 10 + 20 = 30. Probabilidade = 30/165 = 2/11 ≈ 0,1818, ou seja, aproximadamente 18%.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- REGULACAO E AGENCIAS REGULADORAS (Questoes 45 a 68)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Regulação e Agências Reguladoras',
'Uma agência reguladora definiu novas regras tarifárias sem consulta prévia ao Poder Legislativo, impactando consumidores e empresas e gerando discussão judicial sobre a validade dessas normas. Em relação a esse cenário, é correto afirmar que:',
'',
'',
'["a agência reguladora tem autonomia para emitir normas sobre tarifas, prescindindo de autorização legislativa prévia e de observância a leis gerais do setor;","a autonomia administrativa da agência não inclui o poder normativo para definir tarifas, que deve ser sempre detalhado em lei específica e não pode ser disciplinado por atos normativos próprios da agência;","não obstante a autonomia administrativa permitir à agência regular tarifas, as normas regulatórias não podem extrapolar os limites legais estabelecidos, inclusive em hipóteses de urgência regulatória;","as agências reguladoras devem submeter as decisões normativas à aprovação do Poder Executivo antes de sua publicação;","o poder normativo das agências reguladoras depende de autorização judicial, podendo ser exercido mediante decisão expressa do Judiciário em cada caso."]'::jsonb,
'C',
'As agências reguladoras têm poder normativo (inclusive sobre tarifas) decorrente de sua autonomia, mas esse poder é técnico e subordinado à lei: as normas não podem extrapolar os limites legais do setor, nem mesmo sob alegação de urgência (C). A agência não precisa de autorização legislativa prévia caso a caso (afastando A por excesso e B por negar o poder normativo), nem de aprovação do Executivo (D) ou do Judiciário (E) para editar normas.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Regulação e Agências Reguladoras',
'Um município enfrenta, com o avanço industrial, externalidades positivas (empregos, arrecadação) e negativas (poluição, contaminação). Em audiência pública, um parecer defende que apenas externalidades negativas motivem intervenção regulatória, e outro propõe ponderar conjuntamente ganhos e prejuízos. Com base nos conceitos de regulação econômica e social e no tratamento de externalidades, é correto afirmar que:',
'',
'',
'["o parecer que propõe considerar conjuntamente os impactos positivos e negativos está alinhado ao entendimento de que a regulação social deve ser acionada exclusivamente para corrigir danos ambientais, sem afetar incentivos econômicos legítimos;","a divergência entre os pareceres é irrelevante para a decisão regulatória, já que o crescimento econômico, por si só, legitima a continuidade das atividades produtivas, sendo a proteção ambiental competência exclusiva dos órgãos estaduais;","a posição que sugere manter os incentivos econômicos e postergar a regulação ambiental se justifica, já que a geração de empregos e arrecadação neutraliza, no médio prazo, os efeitos típicos de falhas de mercado;","o parecer que propõe considerar apenas os impactos negativos está correto, uma vez que externalidades positivas, por representarem benefícios naturais ao município, não podem ser levadas em conta no planejamento regulatório, cabendo assim intervenção estatal apenas sobre externalidades negativas;","o parecer que propõe considerar conjuntamente externalidades positivas e negativas expressa uma visão compatível com o papel regulador do Estado, que deve ponderar benefícios econômicos e custos sociais em sua intervenção."]'::jsonb,
'E',
'A boa regulação exige análise custo-benefício que pondere CONJUNTAMENTE as externalidades positivas e negativas, equilibrando benefícios econômicos e custos sociais/ambientais na decisão de intervir (E). Considerar apenas um dos lados (B, C, D) distorce a avaliação, e a alternativa A contradiz a própria premissa ao restringir a regulação social a danos ambientais sem afetar incentivos.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Regulação e Agências Reguladoras',
'Uma agência reguladora estadual adotou, como diretriz permanente, a aplicação imediata e padronizada de sanções severas a qualquer descumprimento contratual pelas concessionárias de transporte coletivo, independentemente da gravidade da infração, do histórico da empresa ou de justificativas operacionais. Considerando as boas práticas, a abordagem da agência foi:',
'',
'',
'["correta, pois a regulação responsiva recomenda que multas severas sejam aplicadas de imediato e de forma padronizada, garantindo efeito dissuasório rápido;","incorreta, pois a adoção de sanções automáticas e graves, sem avaliação do contexto ou do histórico da concessionária, contraria os princípios da regulação responsiva, que recomenda respostas proporcionais, graduais e orientadas ao diálogo inicial;","incorreta, pois a regulação responsiva exige que orientações educativas e preventivas sejam aplicadas indefinidamente, ainda que as empresas persistam em descumprir obrigações, devendo a agência evitar medidas punitivas para não prejudicar o equilíbrio econômico-financeiro dos contratos;","correta, porque o rigor punitivo sistemático demonstra comprometimento da agência com o interesse público e com a integridade contratual, sendo preferível a abordagens excessivamente tolerantes ou interpretativas;","incorreta, já que a regulação responsiva proíbe a adesão voluntária dos agentes regulados, de modo a preservar o ambiente cooperativo entre regulador e regulado."]'::jsonb,
'B',
'A regulação responsiva (pirâmide regulatória) prega respostas PROPORCIONAIS e GRADUAIS, começando por orientação e diálogo e escalando para sanções mais severas conforme a persistência e a gravidade das infrações. Aplicar sanções severas automáticas e padronizadas, ignorando contexto e histórico, contraria esses princípios (B). A alternativa C exagera no sentido oposto (tolerância indefinida), também incorreta.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Regulação e Agências Reguladoras',
'Uma agência de telecomunicações aplicou multas por descumprimento de metas de atendimento, com critérios previstos apenas em notas técnicas internas divulgadas após a autuação. A agência alegou base legal genérica e que a divulgação prévia dos critérios comprometeria a fiscalização. Considerando as normas que regem as agências reguladoras, a resposta da agência foi:',
'',
'',
'["correta, pois o processo administrativo sancionador pode se basear em notas técnicas internas desde que haja base legal genérica para aplicação de penalidades, ainda que os critérios específicos não tenham sido previamente divulgados às empresas reguladas;","incorreta, pois o processo administrativo sancionador depende da aprovação judicial prévia dos critérios de sanção, sendo inviável a aplicação de multas sem decisão do Judiciário;","correta, pois a natureza punitiva e preventiva das multas permite que a agência adote critérios de aplicação não previamente divulgados, de forma a evitar que as operadoras manipulem indicadores para escapar das penalidades;","incorreta, pois o processo administrativo sancionador exige a publicidade e a clareza prévia dos critérios de sanção, sendo inválida a autuação com base em parâmetros não previamente divulgados, como ocorreu na situação descrita;","correta, pois, mesmo sem regulamento específico, o conhecimento informal das práticas adotadas pela agência em fiscalizações anteriores já seria suficiente para justificar a aplicação das penalidades."]'::jsonb,
'D',
'Os princípios da legalidade, publicidade, segurança jurídica e devido processo exigem que os critérios sancionatórios sejam PRÉVIOS, claros e públicos. Punir com base em critérios formalizados só em notas internas divulgadas após a autuação viola a publicidade e a previsibilidade, invalidando a autuação (D). A aprovação judicial prévia (B) não é requisito; e a conveniência fiscalizatória (A, C, E) não supre a ausência de critérios prévios e públicos.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Regulação e Agências Reguladoras',
'Uma agência que fiscaliza concessões de rodovias exigiu planos de gerenciamento de risco. Muitas concessionárias apresentaram relatórios superficiais, alegando que a norma era excessivamente detalhada; o corpo técnico defendia a padronização e a complexidade para garantir previsibilidade. Com base nas boas práticas de análise e gerenciamento de risco, é correto afirmar que:',
'',
'',
'["um sistema de gerenciamento de risco eficaz deve conciliar rigor técnico com adaptabilidade, permitindo ajustar as exigências aos diferentes portes e capacidades das concessionárias, mesmo que, porventura, admita manter algum nível residual de risco para maximizar o bem-estar social;","um sistema de gerenciamento de risco eficaz depende da manutenção de regras uniformes e detalhadas, pois flexibilizações reduzem a confiabilidade dos resultados e comprometem a segurança regulatória;","um sistema de gerenciamento de risco é válido sempre que as concessionárias apresentem relatórios formais, ainda que genéricos, desde que sigam os modelos padronizados exigidos pela agência reguladora;","a efetividade do gerenciamento de risco está vinculada à adoção de metodologias complexas e padronizadas, mesmo que isso inviabilize economicamente pequenas concessionárias;","planos de gerenciamento de risco podem dispensar detalhamento técnico nos casos em que a concessionária apresenta histórico de baixo risco, sendo suficiente uma declaração formal de conformidade para atender às normas."]'::jsonb,
'A',
'Um bom sistema de gestão de riscos combina rigor técnico com adaptabilidade (proporcionalidade), ajustando exigências ao porte e à capacidade das reguladas, e aceita a existência de um nível residual de risco quando isso maximiza o bem-estar social (A). Regras uniformes e inflexíveis (B, D) podem inviabilizar pequenas empresas e não garantem efetividade; relatórios genéricos (C) ou meras declarações (E) não atendem à boa gestão de riscos.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Regulação e Agências Reguladoras',
'Uma agência de telecomunicações passou a fiscalizar predominantemente os grandes operadores, negligenciando empresas menores e prestadores locais que também apresentavam problemas de qualidade. Considerando os princípios das boas práticas de fiscalização, é correto afirmar que a agência:',
'',
'',
'["acerta ao despender seus esforços na fiscalização de grandes operadores, pois estes têm maior impacto econômico no setor regulado;","deveria dar tratamento homogêneo a todas as empresas, independentemente do porte ou risco regulatório apresentado;","deveria realizar fiscalização depois da formalização de denúncias por parte dos consumidores, já que não são cabíveis ações fiscalizatórias preventivas;","deveria priorizar ações baseadas no nível de risco regulatório, abrangendo todos os operadores, ainda que de maneira distinta, conforme relevância e impacto;","deveria concentrar suas ações em metas quantitativas anuais de fiscalização, priorizando o volume de fiscalizações realizadas, ainda que concentradas em um único segmento do mercado regulado."]'::jsonb,
'D',
'A fiscalização inteligente baseia-se no RISCO: a agência deve priorizar com base no nível de risco regulatório, abrangendo todos os operadores (grandes e pequenos), com intensidade proporcional à relevância e ao impacto de cada um (D). Concentrar-se só nos grandes (A) ou tratar todos de forma idêntica (B) são extremos inadequados; depender de denúncia (C) e priorizar volume (E) também contrariam as boas práticas.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Regulação e Agências Reguladoras',
'Uma agência concluiu, em 5 de maio, uma audiência pública sobre metodologia de cálculo de tarifas de saneamento. O relatório consolidado (mais de 180 páginas) deveria ser divulgado. Parte da equipe queria adiar a publicação até concluir estudos adicionais; o conselho diretor lembrou que a legislação estabelece prazo específico e limitado. Nesse contexto, é correto afirmar que o relatório:',
'',
'',
'["deve ser sempre disponibilizado em até 30 dias corridos, podendo ser prorrogado sucessivamente, sem limite, desde que haja justificativa técnica formal aprovada pela diretoria da agência;","pode ser divulgado somente após a conclusão de todas as análises econômicas e técnicas complementares e, se necessário, apenas junto com a publicação da decisão final da agência, para evitar interpretações prematuras que prejudiquem o processo regulatório;","deve ser disponibilizado na sede e no site da agência em até 30 dias úteis após o encerramento da audiência, admitindo uma única prorrogação, por igual período, mediante justificativa e apenas quando a complexidade do conteúdo exigir;","deve ser divulgado em data definida pelo conselho diretor, que pode prorrogar o prazo quantas vezes considerar necessário, desde que haja motivação formal documentada;","deve ser publicado apenas se essa obrigação constar do edital da audiência; caso contrário, cabe à agência decidir se o disponibiliza, conforme a conveniência administrativa."]'::jsonb,
'C',
'Conforme as regras aplicáveis às agências reguladoras (Lei nº 13.848/2019 e regulamentação), o relatório da audiência/consulta pública deve ser disponibilizado em prazo definido (até 30 dias úteis), admitida UMA única prorrogação por igual período, mediante justificativa e quando a complexidade do conteúdo exigir (C). Não há prorrogação ilimitada (A, D), nem é possível condicionar a divulgação à conclusão de todos os estudos (B) ou à conveniência (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Regulação e Agências Reguladoras',
'Uma agência revogou resoluções sobre padrões mínimos de desempenho e transferiu às empresas a definição de parâmetros internos, mediante relatórios anuais de conformidade, sob o argumento de que a desregulação sempre induz eficiência. Considerando o conceito de desregulação e seus limites, é correto afirmar que a desregulação:',
'',
'',
'["pode gerar ganhos de eficiência em mercados efetivamente competitivos, mas tende a comprometer a proteção aos usuários e a dificultar a fiscalização, ainda que haja relatórios periódicos;","é positiva em qualquer contexto, pois a autorregulação empresarial garante padrões adequados, desde que haja entrega de relatórios anuais de conformidade às autoridades;","deve ser aplicada sempre que existirem mecanismos de autorregulação formalizados, pois a concorrência torna a regulação estatal desnecessária;","pode ser aplicada em setores onde as tarifas ou preços são controlados, já que o equilíbrio econômico-financeiro assegura a proteção do usuário;","é legítima quando for precedida de decreto legislativo que autorize expressamente a revogação integral de normas técnicas do setor, ainda que isso inviabilize a adaptação gradual dos regulados."]'::jsonb,
'A',
'A desregulação pode trazer ganhos de eficiência em mercados EFETIVAMENTE competitivos, mas, em setores concentrados ou de baixa contestabilidade, tende a comprometer a proteção dos usuários e a enfraquecer a fiscalização, mesmo com relatórios periódicos (A). Afirmar que ela é positiva em qualquer contexto (B, C) ignora esses limites; as demais trazem condições incorretas.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Regulação e Agências Reguladoras',
'As falhas de mercado fundamentam a atuação do Estado. Uma delas ocorre quando há barreiras de entrada, que dificultam o acesso de novos concorrentes a um setor. É uma barreira de entrada típica em mercados regulados:',
'',
'',
'["a exigência de concessão pública com requisitos técnicos e financeiros prévios, estabelecida em lei setorial;","a previsão de livre concorrência com entrada automática de novos agentes por meio de comunicação prévia ao regulador;","a substituição de licenças por autorizações autoexecutáveis com base em classificação de risco regulatório;","a adoção de padrões técnicos harmonizados internacionalmente, de observância voluntária;","a redução de assimetrias informacionais mediante plataformas públicas de transparência de preços e indicadores."]'::jsonb,
'A',
'A exigência de concessão pública com requisitos técnicos e financeiros prévios, prevista em lei setorial, é uma barreira de entrada típica (institucional/legal), pois condiciona o ingresso de novos agentes ao cumprimento de exigências e, muitas vezes, a processo licitatório (A). As demais alternativas descrevem medidas que FACILITAM a entrada ou reduzem assimetrias, não barreiras.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Regulação e Agências Reguladoras',
'Uma agência de transportes delegou competências fiscalizatórias e sancionatórias a um órgão estadual, com repasse de receitas e autonomia operacional, mas autorizando que o órgão criasse obrigações adicionais não previstas em contrato, desde que justificadas por segurança dos usuários. Concessionárias contestaram a medida. À luz das normas aplicáveis às agências e das boas práticas de delegação, é correto afirmar que a delegação de competências fiscalizatórias:',
'',
'',
'["é possível, desde que o órgão estadual possua estrutura compatível e autonomia, mas não pode criar obrigações não previstas em contrato, devendo o órgão estadual atuar estritamente conforme as normas e diretrizes da agência delegante;","é válida apenas se o órgão estadual assumir integralmente a instância recursal e atuar como substituto da agência federal, de modo a evitar sobreposição de decisões administrativas;","pode incluir a criação de obrigações adicionais pelo órgão estadual, desde que haja justificativa formal e registro no acordo de cooperação, mesmo que não previstas em contrato original;","é proibida pelas normas que regem as agências, mesmo com convênio formal e órgão estadual aparelhado, devendo a agência federal atuar diretamente em todas as fiscalizações;","é válida sempre que prevista em contrato de concessão, mesmo que o órgão estadual não tenha regime jurídico compatível."]'::jsonb,
'A',
'A delegação de competências fiscalizatórias é possível quando o órgão delegatário tem estrutura e autonomia compatíveis, mas deve atuar estritamente conforme as normas e diretrizes da agência delegante, NÃO podendo criar obrigações novas não previstas no contrato (A). Criar obrigações adicionais (C) violaria a segurança jurídica e os limites da delegação; a proibição absoluta (D) e as demais condições (B, E) não correspondem às boas práticas.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Regulação e Agências Reguladoras',
'Durante a elaboração do relatório anual de atividades, uma agência reguladora questionou se seria obrigatório incluir informações sobre o cumprimento do plano estratégico e do plano de gestão anual, ou se poderia incluir apenas as ações de maior visibilidade e os resultados financeiros, já que essas informações são enviadas ao TCU. Com base nas normas aplicáveis, é correto afirmar que o relatório anual de atividades:',
'',
'',
'["pode se ater a um sumário das principais ações e resultados financeiros, sendo facultativa a inclusão das metas e resultados relacionados ao plano estratégico e ao plano de gestão anual, pois essas informações já são prestadas ao TCU;","deve destacar o cumprimento da política setorial, bem como do plano estratégico e do plano de gestão anual, incluindo metas, ações e resultados, mesmo que essas informações já sejam enviadas a outros órgãos;","pode omitir informações sobre o plano estratégico desde que estas constem do relatório de gestão da prestação de contas, sendo necessária, porém, a divulgação de resultados operacionais e financeiros relevantes;","deverá ter seu conteúdo definido pelo conselho diretor, uma vez que as normas referentes à atuação das agências não impõem conteúdo específico sobre planos ou metas;","precisa conter o cumprimento de planos e metas se houver recomendação formal do Congresso Nacional ou do TCU em exercício anterior."]'::jsonb,
'B',
'A Lei nº 13.848/2019 (Lei Geral das Agências Reguladoras) determina que o relatório anual de atividades destaque o cumprimento da política do setor e dos planos estratégico e de gestão, com metas, ações e resultados, como instrumento de transparência e prestação de contas - independentemente de essas informações também serem enviadas a outros órgãos como o TCU (B).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Regulação e Agências Reguladoras',
'A regulação pode envolver desde a intervenção direta do Estado até o incentivo à autorregulação dos próprios agentes do setor. Um exemplo de autorregulação é a:',
'',
'',
'["emissão de portaria ministerial;","criação de código de conduta por entidade de classe;","determinação de padrão técnico por agência reguladora;","edição de regimento interno de integridade por empresa regulada;","adoção de parâmetros da Organização Internacional de Normalização (ISO)."]'::jsonb,
'B',
'Autorregulação é a definição de regras pelos próprios agentes de um setor, de forma coletiva e organizada. A criação de um código de conduta por uma ENTIDADE DE CLASSE (que representa o conjunto do setor) é o exemplo clássico de autorregulação (B). A portaria ministerial e o padrão técnico de agência são regulação estatal (A, C); o regimento interno de uma única empresa é autogestão interna (D); e os parâmetros ISO são normas técnicas externas de adesão voluntária (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Regulação e Agências Reguladoras',
'As boas práticas regulatórias envolvem transparência, participação social e avaliação contínua dos efeitos das normas. Uma dessas práticas é a Avaliação de Resultado Regulatório (ARR). Em relação à ARR, é correto afirmar que:',
'',
'',
'["gera a revogação automática de normas ineficientes;","consiste em consulta interna aos servidores da agência;","é conduzida por organismos internacionais independentes;","pode acarretar punição para os reguladores que editaram norma de baixa efetividade ou efeito adverso;","tem prazo certo para ser realizado apenas nos casos em que a Análise de Impacto Regulatório for dispensada."]'::jsonb,
'E',
'A ARR é a avaliação ex post dos efeitos observados de uma norma. Conforme a regulamentação (Decreto nº 10.411/2020), ela é obrigatória, em prazo determinado, especialmente nos casos em que a AIR foi dispensada (quando não houve análise ex ante, torna-se ainda mais relevante avaliar os resultados). A ARR não revoga norma automaticamente (A), não é consulta interna (B), não é conduzida por organismos internacionais (C) nem tem finalidade punitiva aos reguladores (D).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Regulação e Agências Reguladoras',
'Uma agência implementou agenda regulatória participativa com audiências públicas em várias regiões. Constatou-se que demandas de grupos de interesse conflitavam com estudos técnicos da equipe, que apontavam riscos à qualidade dos serviços caso aquelas demandas fossem integralmente acatadas. Diante desse cenário, a agência deve:',
'',
'',
'["abster-se de regular a matéria em razão do conflito de entendimento, a fim de se evitar norma com efeitos adversos;","tentar conciliar os estudos técnicos com as contribuições recebidas;","punir os grupos de interesse pela participação lesiva no processo participativo;","promover consulta pública para que a participação social arbitre sobre a decisão final;","editar norma provisória com a análise de duas contribuições com argumentos distintos ou conflitantes."]'::jsonb,
'B',
'A decisão regulatória de qualidade deve buscar CONCILIAR as evidências técnicas com as contribuições da participação social, ponderando ambas para uma solução equilibrada e fundamentada (B). Abster-se de regular (A) é omissão; punir participantes (C) é descabido; transferir a decisão à votação popular (D) ou editar norma provisória sem análise adequada (E) não são boas práticas regulatórias.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Regulação e Agências Reguladoras',
'O gerenciamento de riscos regulatórios demanda abordagem estruturada e responsiva, sobretudo em crises sistêmicas (como emergências sanitárias). Considerando essa perspectiva, uma prática compatível com a boa governança regulatória em situações excepcionais é:',
'',
'',
'["designar uma equipe ad hoc para fazer monitoramento in loco, agendando a análise documental para fase oportuna;","determinar a suspensão das ações administrativas, como medida preventiva de exposição dos agentes a riscos sanitários;","adotar conduta de espera da normalização do contexto, de modo a evitar decisões que possam gerar precedentes regulatórios e jurídicos instáveis;","operacionalizar plano de gestão de riscos emergenciais, com previsão de medidas de contingência e protocolos de resposta rápida baseados em critérios de criticidade;","mitigar fluxos de comunicação institucional com os entes regulados, de modo a preservar a autonomia técnica da agência e evitar pressões externas durante a crise."]'::jsonb,
'D',
'A boa governança de riscos em crises exige planos de gestão de riscos emergenciais, com medidas de contingência e protocolos de resposta rápida priorizados por critérios de criticidade (D). Suspender ações (B), esperar a normalização (C) ou reduzir a comunicação com os regulados (E) são posturas passivas ou que fragilizam a resposta; o monitoramento in loco com adiamento da análise documental (A) não substitui um plano estruturado.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Regulação e Agências Reguladoras',
'Uma agência busca aperfeiçoar a fiscalização sobre concessionárias com base em boa governança regulatória. Considerando as diretrizes de fiscalização inteligente e responsiva, a conduta alinhada a uma boa prática de supervisão regulatória é:',
'',
'',
'["concentrar a fiscalização nas obrigações contratuais de natureza financeira, priorizando auditorias de balanço em ciclos fixos;","estruturar o planejamento fiscalizatório a partir da combinação de critérios objetivos e qualitativos, considerando o perfil regulatório das concessionárias e indícios de exposição a riscos relevantes;","uniformizar os instrumentos de fiscalização para todos os setores regulados, assegurando tratamento isonômico por meio de roteiros padronizados e visitas simultâneas;","substituir fiscalizações presenciais por autos de infração automatizados, emitidos a partir de dados autodeclarados pelas empresas, como forma de engajamento;","suspender rotinas fiscalizatórias periódicas sempre que as concessionárias apresentarem índices de desempenho acima da média setorial por um período predeterminado."]'::jsonb,
'B',
'A fiscalização inteligente e baseada em risco estrutura o planejamento combinando critérios objetivos e qualitativos, considerando o perfil de cada concessionária e os indícios de exposição a riscos relevantes, concentrando esforços onde há maior probabilidade e impacto de falhas (B). As demais são posturas rígidas, puramente automatizadas ou que criam brechas de supervisão.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Regulação e Agências Reguladoras',
'Durante a estruturação de um contrato de concessão, a equipe elabora uma matriz de riscos que identifica, classifica e aloca os eventos que podem afetar o equilíbrio econômico-financeiro. No contexto das melhores práticas de alocação de riscos, a alternativa que expressa um princípio associado à alocação eficiente de riscos é:',
'',
'',
'["os riscos devem ser alocados entre as partes, de modo a se atingir o menor custo econômico para o contrato;","os riscos devem ser transferidos integralmente ao agente privado, pois sua remuneração inclui um componente de risco setorial;","a alocação ótima de riscos ocorre quando o poder concedente assume todos os riscos não gerenciáveis, garantindo ao concessionário estabilidade do equilíbrio econômico-financeiro;","a alocação de riscos deve ser fixada ex ante e mantida inalterada durante toda a vigência do contrato, de forma a gerar previsibilidade;","a gestão de riscos dispensa monitoramento durante a execução contratual, desde que mecanismos de seguro estejam devidamente previstos."]'::jsonb,
'A',
'O princípio da alocação eficiente de riscos determina que cada risco seja atribuído à parte com melhor capacidade de geri-lo e mitigá-lo ao menor custo, de modo a minimizar o custo econômico total do contrato (A). Transferir tudo ao privado (B) ou tudo o não gerenciável ao poder concedente (C) são regras rígidas e não ótimas; a matriz pode ser revista (D); e a gestão de riscos exige monitoramento contínuo (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Regulação e Agências Reguladoras',
'Um relatório aponta que o regime de regulação por price cap gerou redução real das tarifas nos primeiros ciclos, mas, a partir de certo período, observou-se queda na qualidade do serviço e aumento de falhas. A medida técnica apropriada para ajustar o modelo sem comprometer seus incentivos é:',
'',
'',
'["substituir o price cap por um modelo baseado na recuperação integral dos custos declarados pelas concessionárias;","permitir reajustes tarifários extraordinários com base em variações no volume de serviços prestados por ciclo regulatório e ajustados por indicadores de qualidade;","fixar as tarifas no valor atual por prazo determinado, vinculando qualquer reajuste à recuperação dos índices de qualidade;","eliminar o componente inflacionário do reajuste, corrigindo apenas com base em metas de desempenho físico;","recalibrar o fator X de produtividade e incorporar indicadores de qualidade com impacto direto na revisão tarifária."]'::jsonb,
'E',
'No price cap, o reajuste segue a inflação menos um fator X de produtividade. A queda de qualidade indica que as empresas cortaram custos de qualidade para capturar o ganho de produtividade. A solução que preserva os incentivos do modelo é recalibrar o fator X e INCORPORAR indicadores de qualidade (fator Q) com impacto direto na revisão tarifária, premiando/penalizando a qualidade (E). Voltar ao custo integral (A) elimina os incentivos à eficiência.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Regulação e Agências Reguladoras',
'Na teoria econômica, a distinção entre bens públicos, privados, comuns e de clube é central para compreender as falhas de mercado. Considerando as propriedades de exclusividade e rivalidade no consumo, a alternativa que expressa corretamente uma implicação econômica dos bens públicos puros é:',
'',
'',
'["a ausência de exclusão no acesso a bens públicos decorre de seu baixo valor econômico, o que dispensa incentivos à provisão pública;","os bens públicos, por não apresentarem rivalidade, tendem a gerar consumo excessivo, sendo mais bem providos por mecanismos de preço fixados pelo próprio mercado;","bens públicos são, por definição, bens patrimoniais indisponíveis, sendo, portanto, classificados como ativos permanentes de titularidade estatal;","a existência de externalidades positivas nos bens públicos implica sua comercialização eficiente por firmas privadas com contratos de desempenho ajustáveis;","a coexistência de consumo não rival e acesso não excludente compromete a precificação eficiente por agentes privados, favorecendo a intervenção estatal por meio de provisão direta ou mecanismos coletivos de financiamento."]'::jsonb,
'E',
'Bens públicos puros são NÃO RIVAIS (o consumo de um não reduz o do outro) e NÃO EXCLUDENTES (não se consegue impedir o acesso). Essas duas propriedades geram o problema do "carona" (free rider) e inviabilizam a precificação eficiente pelo mercado, justificando a provisão estatal direta ou o financiamento coletivo (E). As demais confundem conceitos (valor econômico, patrimônio indisponível, comercialização privada).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Regulação e Agências Reguladoras',
'A partir da reforma do Estado brasileiro nos anos 1990, buscou-se redefinir as funções estatais sob perspectiva gerencial, com ênfase na regulação. Nesse contexto, a criação de agências reguladoras independentes teve como um de seus objetivos:',
'',
'',
'["restringir a delegação de serviços públicos à iniciativa privada, a fim de evitar desequilíbrios concorrenciais e concentração setorial;","delegar a execução direta de políticas públicas setoriais, com as agências substituindo os ministérios na condução de ações operacionais;","uniformizar as políticas tarifárias de serviços públicos delegados, subordinando a atuação regulatória à lógica orçamentária federal e aos ciclos fiscais anuais;","representar os interesses do setor produtivo nas negociações com o Poder Executivo, já que as agências passariam a atuar como ente articulador da formulação normativa;","instituir instrumentos de Estado especializados e mecanismos de resguardo decisório, voltados à mediação normativa entre agentes públicos e privados em contextos contratuais complexos."]'::jsonb,
'E',
'As agências reguladoras independentes foram criadas, no contexto da reforma gerencial e das privatizações/concessões, como instrumentos de Estado tecnicamente especializados, dotados de autonomia (resguardo decisório) para mediar e regular as relações entre o poder público, os prestadores privados e os usuários em setores de contratos complexos (E). Elas não restringem a delegação (A), não substituem os ministérios na execução de políticas (B) nem representam o setor produtivo (D).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Regulação e Agências Reguladoras',
'Durante auditoria técnica em uma concessionária de serviços públicos, identificam-se falhas recorrentes no atendimento aos padrões de qualidade do contrato. O poder concedente decide ampliar os instrumentos de controle. Um conjunto de ferramentas que pode ser utilizado no controle da qualidade contratual é:',
'',
'',
'["laudo pericial, cláusula penal e análise de riscos operacionais;","indicadores de desempenho, relatórios técnicos e inspeções em campo;","termo de referência, pesquisa de imagem e projeto executivo;","reuniões internas da concessionária, carta de serviços e autoavaliação;","plano de marketing, metas de faturamento e grau de satisfação institucional."]'::jsonb,
'B',
'O controle da qualidade contratual apoia-se em instrumentos de medição e verificação do serviço efetivamente prestado: indicadores de desempenho (KPIs), relatórios técnicos e inspeções em campo (B). As demais listas misturam itens de planejamento, marketing ou autogestão da própria concessionária, que não servem, por si, ao controle objetivo da qualidade pelo poder concedente.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Regulação e Agências Reguladoras',
'Após detectar não conformidades, o poder concedente realiza auditoria técnica na execução do contrato de concessão, buscando elementos que sustentem medidas corretivas. Sobre o papel da auditoria da qualidade nesse contexto, é correto afirmar que:',
'',
'',
'["seu conteúdo é confidencial e não pode ser usado como base legal;","não deve conter recomendações, mas apenas constatação dos fatos;","substitui o papel do poder concedente na fiscalização contínua;","pode resultar em subsídios para revisão contratual, sanções ou reequilíbrio;","deve ser conduzida pela própria concessionária para garantir a imparcialidade."]'::jsonb,
'D',
'A auditoria da qualidade produz evidências e constatações que podem SUBSIDIAR decisões do poder concedente, como revisão contratual, aplicação de sanções ou reequilíbrio econômico-financeiro (D). Ela pode conter recomendações (contrariando B), serve de base legal (contrariando A), não substitui a fiscalização contínua (C) e, para ser imparcial, não deve ser conduzida pela própria concessionária (E).'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Regulação e Agências Reguladoras',
'Ao final de um processo administrativo sancionador (PAS), fica comprovado que a concessionária descumpriu cláusulas essenciais do contrato. Com base na legislação e nas boas práticas regulatórias, são sanções compatíveis com o PAS:',
'',
'',
'["ressarcimento compulsório e prisão preventiva;","publicidade negativa e exclusão de cargos eletivos;","advertência, multa, suspensão temporária ou declaração de inidoneidade;","cancelamento de CNPJ e bloqueio judicial de bens;","confisco de receitas e impedimento de atuação em outros municípios."]'::jsonb,
'C',
'As sanções administrativas típicas de um processo administrativo sancionador são: advertência, multa, suspensão temporária de participar de licitações/contratar e declaração de inidoneidade (C). As demais alternativas trazem medidas de natureza penal (prisão) ou judicial (bloqueio de bens, cancelamento de CNPJ), que não são sanções administrativas aplicáveis pela autoridade reguladora no PAS.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Regulação e Agências Reguladoras',
'Uma agência está prestes a editar norma que impõe novos requisitos técnicos aos prestadores de serviços de telecomunicações. Antes da publicação, técnicos propõem a realização de uma Análise de Impacto Regulatório (AIR), considerando custos de implementação, efeitos concorrenciais e benefício para os usuários. Nesse contexto, a função da AIR é:',
'',
'',
'["garantir que a norma seja aprovada pelo Poder Legislativo;","justificar politicamente as decisões da diretoria colegiada da agência;","reduzir o número de reclamações de consumidores após a publicação;","avaliar a eficácia da norma somente após sua implementação;","subsidiar a tomada de decisão regulatória com evidências sobre custos, benefícios e alternativas."]'::jsonb,
'E',
'A Análise de Impacto Regulatório (AIR) é um instrumento ex ante que subsidia a tomada de decisão regulatória com evidências sobre o problema, os custos e benefícios e as alternativas disponíveis (inclusive a de não regular), promovendo decisões mais informadas e proporcionais (E). Ela não aprova norma no Legislativo (A), não serve a justificação política (B) e não é avaliação posterior (D) - esta é a função da ARR.'
from public.exams where slug = 'cnu-2025-bloco9-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
