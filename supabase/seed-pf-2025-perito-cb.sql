-- Seed: Policia Federal 2025 - Perito Criminal Federal (Conhecimentos Basicos)
-- Fonte: Concurso PF 2025 - Banca CEBRASPE - Caderno 106_PF_CB1_01
-- Formato: itens de julgamento CERTO/ERRADO (50 itens).
-- Mapeamento para o padrao do site (opcao 1): options = ["Certo","Errado"];
--   answer 'A' = item CERTO; answer 'B' = item ERRADO.
-- Gabarito oficial definitivo:
--   1C 2E 3C 4E 5E 6C 7E 8C 9C 10C
--   11E 12E 13E 14C 15E 16C 17E 18(ANULADO) 19(ANULADO) 20E
--   21C 22C 23E 24E 25C 26E 27C 28E 29E 30C
--   31(ANULADO) 32C 33C 34E 35E 36C 37C 38(ANULADO) 39E 40C
--   41E 42C 43C 44C 45E 46E 47E 48C 49E 50C
-- Itens ANULADOS pela banca: 18, 19, 31 e 38. Para nao penalizar, foram
-- marcados como CERTO (A) e o enunciado/explicacao destacam a anulacao.

insert into public.exams (slug, title, source, year)
values ('pf-2025-perito-cb', 'Polícia Federal 2025 - Perito Criminal Federal (Conhecimentos Básicos)', 'pf', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- LINGUA PORTUGUESA / TEXTO (Itens 1 a 8)
-- Texto de apoio: Inteligencia artificial: desafios eticos e futuros
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): Para seu propósito comunicativo, os autores empregam no texto, majoritariamente, a tipologia expositiva.',
'Texto para os itens de 1 a 8

A inteligência artificial (IA) tem desempenhado papel cada vez mais importante nos últimos anos. Máquinas não se limitam mais a executar tarefas físicas, pois também desempenham funções intelectuais que exigem o que se considera inteligência.

Inicialmente, a IA foi aplicada principalmente na solução de problemas do mundo real por meio da programação do conhecimento de especialistas em programas de computador. Esses programas, chamados de sistemas especialistas ou sistemas baseados em conhecimento, foram desenvolvidos com base em entrevistas com especialistas em determinadas áreas. No entanto, havia limitações, como subjetividade e falta de cooperação dos especialistas.

Atualmente é grande o entusiasmo em relação aos potenciais benefícios da IA, de forma que máquinas estão aprendendo a dirigir carros independentes e tradutores automáticos estão se tornando cada vez mais precisos. Além disso, a IA está presente em tarefas cotidianas como ler emails, lavar roupas e recomendar filmes em plataformas de streaming.

O rápido desenvolvimento de tecnologias para processamento e armazenamento de dados tem impulsionado o crescimento da IA e, à medida que os problemas se tornam mais complexos e a quantidade de dados aumenta, é necessário desenvolver ferramentas computacionais avançadas e personalizadas, baseadas no aprendizado de máquina, que dependem cada vez menos da intervenção humana. No entanto, esse desenvolvimento vem acompanhado de preocupações, principalmente em relação à ética e ao impacto na sociedade, considerando-se questões legais e de responsabilidade, para garantir que a IA seja benéfica e justa.

Jhadson Silva Leonel, Camila Ferreira Silva Leonel, Jonas Byk, Silvania da Conceição Furtado. Inteligência artificial: desafios éticos e futuros. Revista Bioética, 32, 2024 (com adaptações).',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O texto é predominantemente expositivo: apresenta e explica o que é a IA, sua evolução histórica e seus impactos, sem a intenção central de defender uma tese ou persuadir o leitor. A tipologia expositiva (informar/explicar) é, de fato, a majoritária. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): De acordo com o texto, a IA surgiu com foco em questões mais abstratas do mundo real e, depois, passou a centrar-se em questões mais concretas, como, por exemplo, dirigir carros.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O texto afirma que a IA foi inicialmente aplicada na solução de problemas do mundo real (questões concretas) por meio de sistemas especialistas. Não há no texto a ideia de que ela surgiu focada em questões "mais abstratas" para só depois tratar de questões concretas; a sequência proposta no item inverte/distorce o conteúdo. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): No primeiro período do último parágrafo, a flexão da forma verbal "tem" no plural — têm — prejudicaria a correção gramatical do texto.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O sujeito de "tem impulsionado" é "O rápido desenvolvimento de tecnologias..." (núcleo "desenvolvimento", singular). Flexionar o verbo no plural ("têm") quebraria a concordância com o núcleo singular do sujeito, prejudicando a correção gramatical. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): No primeiro período do último parágrafo, a oração "desenvolver ferramentas computacionais avançadas e personalizadas" funciona sintaticamente como complemento do adjetivo "necessário".',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Na construção "é necessário desenvolver ferramentas...", a oração "desenvolver ferramentas computacionais avançadas e personalizadas" é o sujeito oracional (aquilo que é necessário), e não complemento nominal do adjetivo. O adjetivo "necessário" funciona como predicativo do sujeito oracional. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): No texto, os autores argumentam que, à medida que a IA cresce e se desenvolve, também se aprimoram as discussões em torno de seu uso e se tornam mais complexas as preocupações éticas referentes a seu uso e seus impactos na sociedade.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O texto associa o crescimento da IA ao surgimento de preocupações éticas e ao impacto na sociedade, mas não afirma que as discussões "se aprimoram" nem que as preocupações "se tornam mais complexas" na proporção do desenvolvimento. A afirmação acrescenta ideias (gradação/aprimoramento das discussões) que não constam do texto. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): As expressões "Esses programas" (segundo período do segundo parágrafo) e "esse desenvolvimento" (último período do texto) contribuem para a coesão textual.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. Ambas as expressões são elementos coesivos referenciais (anafóricos): "Esses programas" retoma os programas de computador citados antes, e "esse desenvolvimento" retoma o desenvolvimento das tecnologias/ferramentas mencionado anteriormente. Esse encadeamento referencial contribui para a coesão do texto. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): A correção do texto seria preservada caso fosse eliminada a vírgula subsequente à conjunção "e" (primeiro período do último parágrafo).',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. A vírgula após o "e" isola a oração intercalada "à medida que os problemas se tornam mais complexos e a quantidade de dados aumenta". A eliminação dessa vírgula desfaria a correta separação da intercalação e prejudicaria a estrutura/pontuação do período. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Língua Portuguesa',
'Julgue o item (CERTO ou ERRADO): A substituição da expressão "foi aplicada principalmente na" (primeiro período do segundo parágrafo) por "aplicou-se principalmente à" manteria a correção gramatical, mas implicaria prejuízo aos sentidos originais do texto.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A troca da voz passiva analítica ("foi aplicada na") pela voz passiva sintética ("aplicou-se à") é gramaticalmente possível e, com a regência exigida por "aplicar-se a", a crase ("à") estaria correta. Contudo, a mudança de "na solução" para "à solução", além da alteração de voz, implica ajuste de sentido/ênfase, caracterizando prejuízo aos sentidos originais. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- MANUAL DE REDACAO DA PRESIDENCIA DA REPUBLICA (Itens 9 a 12)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Língua Portuguesa',
'Com base no Manual de Redação da Presidência da República, julgue o item (CERTO ou ERRADO): Respeitosamente e Atenciosamente são os dois fechos indicados para as comunicações oficiais, sendo o seu uso regulado pela relação de hierarquia entre emissor e destinatário da comunicação.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O Manual de Redação da Presidência da República prevê apenas dois fechos para comunicações oficiais: "Respeitosamente" (para autoridades de hierarquia superior à do emissor) e "Atenciosamente" (para autoridades de mesma hierarquia ou inferior). O uso é, portanto, regulado pela relação de hierarquia. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Língua Portuguesa',
'Com base no Manual de Redação da Presidência da República, julgue o item (CERTO ou ERRADO): Exposição de motivos é o expediente oficial a ser elaborado para se submeter projeto de ato normativo à consideração do presidente ou vice-presidente da República.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. Conforme o Manual, a exposição de motivos é o expediente dirigido ao presidente ou vice-presidente da República para informá-lo de assunto, propor medida ou submeter projeto de ato normativo à sua consideração. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Língua Portuguesa',
'Com base no Manual de Redação da Presidência da República, julgue o item (CERTO ou ERRADO): Em expedientes oficiais que tenham mais de uma página, todas as páginas devem conter cabeçalho que apresente o brasão de Armas da República, o nome do órgão principal e, se necessário, o nome de órgãos secundários.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Segundo o padrão do Manual, o cabeçalho (com o brasão de Armas da República, o nome do órgão principal e, quando necessário, dos secundários) é usado apenas na primeira página; nas páginas seguintes utiliza-se cabeçalho simplificado (sem o brasão completo), não se exigindo o cabeçalho completo em todas as páginas. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Língua Portuguesa',
'Com base no Manual de Redação da Presidência da República, julgue o item (CERTO ou ERRADO): Com vistas a garantir o caráter público e a finalidade das comunicações oficiais, nelas deve ser empregado o padrão oficial de linguagem, que, desenvolvido a partir da norma padrão da língua portuguesa, é o modelo reconhecido como regra para os documentos oficiais.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O que caracteriza as comunicações oficiais, segundo o Manual, não é um "padrão oficial de linguagem" distinto, mas o uso da própria norma padrão da língua portuguesa, aliado a atributos como impessoalidade, clareza, concisão, formalidade e uniformidade. A redação do item cria uma categoria ("padrão oficial de linguagem" desenvolvido a partir da norma padrão) que distorce o conceito apresentado pelo Manual. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- INFORMATICA / BANCOS DE DADOS / SEGURANCA (Itens 13 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Noções de Informática',
'A respeito do Windows e do MS Excel, julgue o item (CERTO ou ERRADO): No Windows, um arquivo pode estar distribuído em diversos volumes.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. No Windows, um arquivo é armazenado dentro de um único volume (partição/sistema de arquivos); ele não fica "distribuído" entre diversos volumes. O que pode ser dividido entre volumes é um conjunto de arquivos ou o espaço de armazenamento, não um mesmo arquivo. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Noções de Informática',
'A respeito do Windows e do MS Excel, julgue o item (CERTO ou ERRADO): O MS Excel permite a identificação de células precedentes e dependentes a partir de determinada célula, desde que ela possua uma fórmula associada.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O Excel possui, na guia Fórmulas (grupo Auditoria de Fórmulas), os recursos "Rastrear Precedentes" e "Rastrear Dependentes", que identificam as células precedentes e dependentes de uma célula que contenha fórmula. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Noções de Informática',
'Acerca de segurança da informação, bancos de dados e aprendizado de máquina, julgue o item (CERTO ou ERRADO): A técnica de clustering em data mining atribui categorias aos grupos de dados para facilitar a análise e a tomada de decisão.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O clustering (agrupamento) é uma técnica não supervisionada que agrupa dados por similaridade, mas NÃO atribui categorias/rótulos predefinidos aos grupos — essa atribuição de categorias é característica da classificação (técnica supervisionada). Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Noções de Informática',
'Acerca de segurança da informação, bancos de dados e aprendizado de máquina, julgue o item (CERTO ou ERRADO): Em geral, projetos de Big Data caracterizam-se por cinco diferentes atributos: valor, variedade, velocidade, veracidade e volume.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A caracterização de Big Data pelos "5 Vs" — Volume, Velocidade, Variedade, Veracidade e Valor — é amplamente aceita. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Noções de Informática',
'Acerca de segurança da informação, julgue o item (CERTO ou ERRADO): Firewalls e antivírus são ferramentas de proteção da rede por meio do controle do tráfego de dados e do impedimento a acessos não autorizados.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Quem controla o tráfego de dados e impede acessos não autorizados na rede é o firewall. O antivírus atua detectando e removendo códigos maliciosos (malwares), não sendo caracterizado pelo controle de tráfego de rede. Atribuir essa função também ao antivírus torna a afirmação incorreta. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Noções de Informática',
'[ITEM ANULADO PELA BANCA] Acerca de segurança da informação, julgue o item (CERTO ou ERRADO): Ataques do tipo zero-day exploits ocorrem a partir de vulnerabilidades em aplicativos ainda desconhecidas pelo próprio fornecedor deles.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'ATENÇÃO: este item foi ANULADO pela banca Cebraspe no gabarito oficial definitivo, não sendo computado na nota. Para fins de estudo: ataques zero-day exploram vulnerabilidades ainda desconhecidas (ou sem correção) pelo próprio fornecedor do software — por isso o nome "dia zero". Como o item foi anulado, foi marcado como CERTO aqui apenas para não penalizar; a resposta não deve ser considerada definitiva.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Noções de Informática',
'[ITEM ANULADO PELA BANCA] Acerca de bancos de dados, julgue o item (CERTO ou ERRADO): A otimização de desempenho e a garantia da integridade dos dados são objetivos da normalização em bancos de dados relacionais.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'ATENÇÃO: este item foi ANULADO pela banca Cebraspe no gabarito oficial definitivo, não sendo computado na nota. Para fins de estudo: a normalização visa principalmente reduzir a redundância e as anomalias de atualização, favorecendo a integridade/consistência dos dados — já o ganho de desempenho é discutível, pois a normalização pode até exigir mais junções. Como o item foi anulado, foi marcado como CERTO aqui apenas para não penalizar; a resposta não deve ser considerada definitiva.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Noções de Informática',
'Acerca de bancos de dados, julgue o item (CERTO ou ERRADO): Cardinalidades são restrições em relacionamentos e podem ter quatro diferentes variações: 1:1, 1:N, N:1 e N:N.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. A cardinalidade de um relacionamento é classicamente classificada em três tipos: um-para-um (1:1), um-para-muitos (1:N, que engloba N:1 por simetria de leitura) e muitos-para-muitos (N:N). Apresentar 1:N e N:1 como variações distintas, totalizando "quatro variações", não corresponde à classificação usual (três tipos). Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ADMINISTRATIVO (Itens 21 a 24)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Noções de Direito Administrativo',
'No tocante à organização administrativa, julgue o item (CERTO ou ERRADO): Autarquias são entidades que compõem a administração pública descentralizada, criadas por lei específica, com patrimônio e receita próprios, e dotadas de autonomia administrativa e financeira.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. As autarquias são pessoas jurídicas de direito público, integrantes da administração indireta (descentralizada), criadas por lei específica (art. 37, XIX, da CF/88), com patrimônio e receita próprios e autonomia administrativa e financeira para desempenhar atividades típicas da administração. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Noções de Direito Administrativo',
'No tocante à organização administrativa, julgue o item (CERTO ou ERRADO): Ocorre descentralização administrativa quando o Estado concede ao particular determinado serviço público mediante celebração de um contrato.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A descentralização por colaboração (ou por delegação negocial) ocorre quando o Estado transfere a execução de serviço público a particular por meio de contrato (concessão ou permissão), mantendo a titularidade do serviço. Trata-se de uma das formas de descentralização administrativa. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Noções de Direito Administrativo',
'A respeito de licitação, julgue o item (CERTO ou ERRADO): O sistema de registro de preços consiste em modalidade de licitação destinada a registrar formalmente os preços de bens e serviços para futuras contratações.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O sistema de registro de preços (SRP) NÃO é modalidade de licitação; é um conjunto de procedimentos/sistema para registro de preços, geralmente operacionalizado por meio das modalidades concorrência ou pregão. Confundir o SRP com uma modalidade de licitação torna a afirmação incorreta. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Noções de Direito Administrativo',
'A respeito de licitação, julgue o item (CERTO ou ERRADO): Nos casos de contratação direta por inexigibilidade de licitação em razão da inviabilidade de competição, a justificativa do preço a ser contratado é opcional.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Mesmo na contratação direta por inexigibilidade, a justificativa de preço é obrigatória: o processo de contratação direta deve ser instruído, entre outros documentos, com a justificativa de preço (art. 72 da Lei nº 14.133/2021). Não é faculdade da Administração. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CONSTITUCIONAL (Itens 25 a 28)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Noções de Direito Constitucional',
'Com base na Constituição Federal de 1988, julgue o item (CERTO ou ERRADO): Os corpos de bombeiros militares integram o sistema de segurança pública, a eles incumbindo a execução das atividades de defesa civil.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O art. 144, V e §5º, da CF/88 inclui os corpos de bombeiros militares entre os órgãos de segurança pública e lhes atribui, além das atribuições definidas em lei, a execução das atividades de defesa civil. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Noções de Direito Constitucional',
'Com base na Constituição Federal de 1988, julgue o item (CERTO ou ERRADO): Os partidos políticos são dotados de autonomia, entretanto sua criação, fusão, incorporação e extinção dependem de autorização do Congresso Nacional.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. É livre a criação, fusão, incorporação e extinção de partidos políticos (art. 17 da CF/88), não dependendo de autorização do Congresso Nacional. Os partidos adquirem personalidade jurídica na forma da lei civil e registram seus estatutos no Tribunal Superior Eleitoral. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Noções de Direito Constitucional',
'Com base na Constituição Federal de 1988, julgue o item (CERTO ou ERRADO): O direito à vida é protegido como cláusula pétrea pela CF, sendo vedada a pena de morte, salvo no caso de guerra declarada.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O direito à vida é direito fundamental e integra as cláusulas pétreas (art. 60, §4º, IV, da CF/88). A pena de morte é vedada, com a única exceção do caso de guerra declarada, nos termos do art. 5º, XLVII, "a", da CF/88. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Noções de Direito Constitucional',
'Com base na Constituição Federal de 1988, julgue o item (CERTO ou ERRADO): No sistema presidencialista, o presidente da República exerce exclusivamente as funções de chefe de Estado.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. No presidencialismo, o presidente da República acumula as funções de chefe de Estado (representação externa e unidade do Estado) e de chefe de Governo (direção da administração e condução da política interna). Dizer que exerce "exclusivamente" a chefia de Estado é incorreto. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO PENAL / PROCESSUAL PENAL / CRIMINALISTICA (Itens 29 a 39)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Noções de Direito Penal',
'Julgue o item (CERTO ou ERRADO): Nos termos da teoria da ubiquidade adotada pelo Código Penal brasileiro, o crime em questão deverá ser considerado praticado apenas no local onde o resultado morte se consumou, ou seja, na Argentina.',
'Situação hipotética (itens 29 e 30)

Durante a investigação de um crime de homicídio doloso, ficou constatado que, no dia 10 de janeiro de 2020, o agente (à época, menor de idade) efetuara disparos de arma de fogo contra a vítima no território brasileiro, em uma cidade que fazia fronteira com a Argentina. Dias depois, em 15 de janeiro do mesmo ano, a vítima faleceu em uma cidade na Argentina, em decorrência dos ferimentos provocados pelos disparos. Nessa data, o autor do crime já havia completado dezoito anos de idade.',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Pela teoria da ubiquidade (art. 6º do CP), considera-se praticado o crime no lugar em que ocorreu a ação ou omissão, no todo ou em parte, bem como onde se produziu ou deveria produzir-se o resultado. Logo, o crime reputa-se praticado tanto no Brasil (local dos disparos) quanto na Argentina (local do resultado morte), e não "apenas" onde o resultado se consumou. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Noções de Direito Penal',
'Julgue o item (CERTO ou ERRADO): Conforme a teoria da atividade adotada pelo Código Penal brasileiro, o tempo do crime deve ser fixado no momento da ação ou omissão, razão pela qual, na situação apresentada, o agente deverá ser considerado inimputável.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. Pela teoria da atividade (art. 4º do CP), considera-se praticado o crime no momento da ação ou omissão, ainda que outro seja o do resultado. Como os disparos (ação) ocorreram quando o agente era menor de 18 anos, ele era inimputável ao tempo do crime (art. 27 do CP), independentemente de ter completado a maioridade antes da morte da vítima. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Noções de Direito Processual Penal',
'[ITEM ANULADO PELA BANCA] Julgue o item (CERTO ou ERRADO): A autoridade policial está vinculada ao requerimento do advogado da vítima para a realização da perícia, ou seja, é obrigada a realizar a diligência solicitada.',
'Situação hipotética (item 31)

A autoridade policial instaurou inquérito de ofício e passou a realizar diligências para apuração de crime de falsificação de documento público. Depois de ter ouvido o ofendido, a autoridade policial recebeu requerimento do advogado dele para que fosse realizada perícia nos documentos que haviam sido apreendidos.',
'',
'["Certo","Errado"]'::jsonb,
'A',
'ATENÇÃO: este item foi ANULADO pela banca Cebraspe no gabarito oficial definitivo, não sendo computado na nota. Para fins de estudo: em regra, a autoridade policial não está vinculada ao requerimento de diligências formulado pela vítima/ofendido (art. 14 do CPP), podendo indeferi-lo de forma motivada, salvo as diligências de realização obrigatória. Como o item foi anulado, foi marcado como CERTO aqui apenas para não penalizar; a resposta não deve ser considerada definitiva.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Noções de Direito Processual Penal',
'Julgue o item (CERTO ou ERRADO): A requisição formulada pela defesa do investigado poderá ser atendida, desde que possível a conservação do material probatório, mas sua análise por assistente técnico deverá ocorrer no ambiente do órgão oficial e perante perito oficial.',
'Situação hipotética (itens 32 a 34)

Durante investigação de crime de homicídio cometido dentro de uma residência, a autoridade policial realizou uma busca e apreensão no local, com o consentimento válido do morador, preservou os vestígios encontrados e providenciou seu encaminhamento ao instituto de criminalística. Após a elaboração do laudo pericial, a defesa do investigado requereu acesso ao material analisado, com o objetivo de produzir parecer técnico por meio de assistente técnico.',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. Nos termos do CPP (art. 159, §6º), durante o inquérito ou a instrução, é facultado às partes a indicação de assistente técnico e o exame do material probatório que serviu de base à perícia, devendo tal exame ser realizado no ambiente do órgão oficial e na presença de perito oficial, preservando-se o material. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Noções de Direito Processual Penal',
'Julgue o item (CERTO ou ERRADO): No caso, a busca domiciliar realizada pela autoridade policial é considerada válida, ainda que ausente mandado judicial.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A busca domiciliar foi realizada com o consentimento válido do morador. O consentimento do morador é uma das exceções constitucionais à inviolabilidade do domicílio (art. 5º, XI, da CF/88), tornando dispensável o mandado judicial. Portanto, a busca é válida mesmo sem mandado, e o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Noções de Criminalística',
'Julgue o item (CERTO ou ERRADO): A cadeia de custódia do crime iniciou-se com o transporte dos vestígios ao instituto de criminalística, momento em que se registra formalmente sua entrada no sistema pericial.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Nos termos do CPP (art. 158-B), a cadeia de custódia inicia-se com a preservação do local de crime ou com os procedimentos policiais/periciais nele realizados, a partir do reconhecimento do vestígio — e não apenas com o transporte ao instituto de criminalística. O transporte e o registro de entrada são etapas posteriores da cadeia. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Noções de Criminalística',
'Considerando que um dos fundamentos mais relevantes da criminalística é o estudo dos vestígios, julgue o item (CERTO ou ERRADO): Os vestígios morfológicos incluem restos de fluidos corporais, como sangue e sêmen, encontrados na cena do crime.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Restos de fluidos corporais como sangue e sêmen são vestígios de natureza biológica (passíveis de análise, por exemplo, genética), e não "morfológicos". Vestígios morfológicos relacionam-se à forma/estrutura (impressões, marcas, formatos). Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Noções de Criminalística',
'Considerando o estudo dos vestígios, julgue o item (CERTO ou ERRADO): De acordo com o princípio de Locard, não há crime sem vestígio e, com a aplicação das técnicas adequadas, os vestígios do crime podem ser localizados.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O princípio de Locard (princípio da troca ou do intercâmbio) sustenta que todo contato deixa vestígios — o autor leva consigo e deixa no local elementos materiais. Assim, não há crime sem vestígio e, com técnicas adequadas, esses vestígios podem ser localizados e analisados. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Noções de Criminalística',
'A respeito da atuação pericial, julgue o item (CERTO ou ERRADO): Quando ampliada, a imagem raster, predominantemente utilizada em registros fotográficos periciais, pode sofrer o processo de pixelização, que compromete a nitidez e os detalhes da imagem da cena.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. As imagens raster (bitmap) são formadas por uma grade fixa de pixels; ao serem ampliadas além de sua resolução, os pixels tornam-se visíveis (pixelização), comprometendo nitidez e detalhes. É o formato predominante em fotografias. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Medicina Legal',
'[ITEM ANULADO PELA BANCA] A respeito da atuação pericial, julgue o item (CERTO ou ERRADO): Os sinais de Hofmann, de Puppe-Werkgartner e de Benassi são efeitos secundários encontrados nos casos de disparos efetuados com a extremidade do cano da arma encostada à superfície adjacente à lesão de entrada do projétil.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'ATENÇÃO: este item foi ANULADO pela banca Cebraspe no gabarito oficial definitivo, não sendo computado na nota. Para fins de estudo: os sinais citados (Hofmann, Puppe-Werkgartner e Benassi) são clássicos achados associados a disparos encostados ou a curta distância em balística forense, embora haja divergências técnicas sobre a classificação como "efeitos secundários". Como o item foi anulado, foi marcado como CERTO aqui apenas para não penalizar; a resposta não deve ser considerada definitiva.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Noções de Criminalística',
'A respeito da atuação pericial, julgue o item (CERTO ou ERRADO): O isolamento e a preservação do local do crime são etapas prescindíveis nos casos em que haja confirmação de que o fato criminoso ocorreu há mais de 48 horas da chegada do perito criminal ao local.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. O isolamento e a preservação do local são etapas imprescindíveis (não prescindíveis) para a integridade dos vestígios, independentemente do tempo decorrido desde o fato. Não há regra que dispense a preservação pelo simples decurso de 48 horas; vestígios podem permanecer relevantes. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITOS HUMANOS (Itens 40 a 45)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direitos Humanos',
'A respeito dos direitos humanos e da sua previsão em tratados e convenções, julgue o item (CERTO ou ERRADO): Os Estados-partes da Convenção Relativa ao Estatuto dos Refugiados devem conferir aos refugiados que residam regularmente em seu território tratamento tão favorável quanto possível, e não menos favorável do que é dado aos estrangeiros em geral, no que diz respeito ao exercício de profissões liberais por aqueles refugiados que assim o desejarem e que possuam diploma devidamente reconhecido pelo Estado-parte.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A Convenção de 1951 relativa ao Estatuto dos Refugiados prevê, quanto ao exercício de profissões liberais, que os Estados-partes concedam aos refugiados que residam regularmente em seu território e possuam diplomas reconhecidos tratamento tão favorável quanto possível e, em todo caso, não menos favorável do que o concedido, nas mesmas circunstâncias, aos estrangeiros em geral. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direitos Humanos',
'A respeito dos direitos humanos, julgue o item (CERTO ou ERRADO): As regras mínimas da ONU para o tratamento de pessoas presas, em observância ao princípio da igualdade, vedam qualquer tratamento diferenciado entre reclusos com deficiência e os demais.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. As Regras de Mandela (regras mínimas da ONU) não vedam qualquer diferenciação; ao contrário, determinam que medidas sejam adotadas para atender às necessidades especiais dos reclusos, inclusive pessoas com deficiência. Tratar de forma diferenciada quem está em situação distinta é, aqui, uma exigência de igualdade material, não uma violação. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direitos Humanos',
'A respeito dos direitos humanos, julgue o item (CERTO ou ERRADO): O STF consolidou o entendimento de que os tratados e as convenções referentes a direitos humanos e subscritos pelo Brasil sem seguir o rito constitucionalmente determinado são considerados normas supralegais, de maneira a assegurar a supremacia da Constituição e, ao mesmo tempo, reconhecer a importância dos direitos humanos no ordenamento jurídico.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. O STF firmou que os tratados de direitos humanos não aprovados pelo rito do art. 5º, §3º, da CF/88 (quórum qualificado das emendas) têm status supralegal: situam-se acima da legislação ordinária, mas abaixo da Constituição. Esse entendimento preserva a supremacia da Constituição e valoriza os direitos humanos. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Direitos Humanos',
'A respeito dos direitos humanos, julgue o item (CERTO ou ERRADO): Os Estados-partes da Convenção sobre a Eliminação de Todas as Formas de Discriminação contra a Mulher comprometem-se a garantir que nem o casamento com um estrangeiro nem a mudança de nacionalidade do marido durante o casamento modifiquem automaticamente a nacionalidade da esposa, convertam-na em apátrida ou a obriguem a adotar a nacionalidade do cônjuge.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A Convenção sobre a Eliminação de Todas as Formas de Discriminação contra a Mulher (CEDAW), em seu art. 9º, estabelece exatamente essa garantia: nem o casamento com estrangeiro nem a mudança de nacionalidade do marido durante o casamento alteram automaticamente a nacionalidade da esposa, tornam-na apátrida ou a obrigam a adotar a nacionalidade do cônjuge. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Direitos Humanos',
'A respeito dos direitos humanos, julgue o item (CERTO ou ERRADO): O duplo grau de jurisdição é um direito reconhecido pela Convenção Americana de Direitos Humanos, a qual foi incorporada ao direito brasileiro.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A Convenção Americana de Direitos Humanos (Pacto de São José da Costa Rica), incorporada ao direito brasileiro (Decreto nº 678/1992), assegura, em seu art. 8º, 2, "h", o direito de recorrer da sentença a juiz ou tribunal superior — ou seja, o duplo grau de jurisdição. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direitos Humanos',
'A respeito dos direitos humanos, julgue o item (CERTO ou ERRADO): Devido ao princípio da subsidiariedade, para que uma pessoa possa apresentar diretamente à Comissão Americana de Direitos Humanos petição com denúncia ou queixa acerca de violação da Convenção Americana de Direitos Humanos por Estado-membro da OEA, é preciso que tenha havido o esgotamento de todos os recursos na jurisdição interna, não bastando a simples mora do Estado-parte no julgamento de tais recursos, ainda que injustificada.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Embora o esgotamento dos recursos internos seja regra (art. 46 da Convenção), há exceções (art. 46, 2), entre elas a demora injustificada na decisão sobre os recursos internos. Assim, a mora injustificada do Estado dispensa o esgotamento, ao contrário do que afirma o item. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- RACIOCINIO LOGICO (Itens 46 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Raciocínio Lógico',
'A partir das informações da situação hipotética, julgue o item (CERTO ou ERRADO): Se existirem 3 câmeras e se o campo de visão de cada câmera puder cobrir, no máximo, duas salas distintas, então a quantidade de salas que podem ser cobertas por essas câmeras varia de 3 a 5 salas.',
'Situação hipotética (itens 46 a 50)

Durante uma investigação policial, a análise das imagens de câmeras de segurança de um laboratório forense indicou a presença, em horários distintos, de um indivíduo não autorizado no recinto. Os peritos estabeleceram os seguintes registros lógicos:
P: "As luzes do corredor estavam apagadas."
Q: "O sensor de presença foi ativado."
R: "A porta do arquivo foi aberta."
S: "O alarme de movimentação foi disparado."

Além disso, o relatório de perícia apontou que:
- Sempre que o sensor de presença foi ativado, as luzes estavam apagadas ou a porta do arquivo foi aberta.
- O alarme de movimentação só é disparado se o sensor de presença for ativado e a porta do arquivo estiver aberta.
- Em um dos registros, o alarme de movimentação não foi disparado.
- Em outro registro, as luzes estavam apagadas e o alarme de movimentação foi disparado.
- A proposição Q → (P ∨ R) foi verificada como verdadeira para os eventos registrados.',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Com 3 câmeras, cada uma cobrindo no máximo 2 salas, o número de salas cobertas vai de um mínimo (se as câmeras cobrirem as mesmas salas, podendo cobrir apenas 1 sala, ou se cada uma cobrir 1 sala, 3 salas) até um máximo de 3×2 = 6 salas (campos sem sobreposição). O intervalo "de 3 a 5" não corresponde ao mínimo nem ao máximo possíveis. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Raciocínio Lógico',
'Julgue o item (CERTO ou ERRADO): Se o sensor de presença foi ativado e se a porta do arquivo estava fechada, então as luzes estavam acesas.',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. Pela regra "sempre que o sensor foi ativado (Q), as luzes estavam apagadas (P) ou a porta foi aberta (R)" — ou seja, Q → (P ∨ R). Se Q é verdadeiro e a porta estava fechada (¬R), então, para manter P ∨ R verdadeiro, necessariamente P é verdadeiro, isto é, as luzes estavam APAGADAS (e não acesas). A conclusão do item é o oposto da correta. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Raciocínio Lógico',
'Julgue o item (CERTO ou ERRADO): A possibilidade de o alarme de movimentação ter sido disparado ainda que o sensor de presença não tenha sido ativado contradiz a proposição lógica fornecida.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A regra afirma que "o alarme (S) só é disparado se o sensor for ativado (Q) e a porta estiver aberta (R)", ou seja, S → (Q ∧ R). Logo, disparar o alarme (S verdadeiro) sem o sensor ativado (¬Q) violaria a implicação, tornando-a falsa. Portanto, essa possibilidade contradiz a proposição fornecida, e o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Raciocínio Lógico',
'Julgue o item (CERTO ou ERRADO): A proposição Q → (P ∨ R) é logicamente equivalente à proposição Q ∧ (P ∨ R).',
'',
'',
'["Certo","Errado"]'::jsonb,
'B',
'Item ERRADO. A condicional Q → (P ∨ R) equivale a ¬Q ∨ (P ∨ R), que é verdadeira sempre que Q for falso. Já a conjunção Q ∧ (P ∨ R) exige Q verdadeiro. As duas proposições têm tabelas-verdade diferentes (por exemplo, com Q falso, a primeira é verdadeira e a segunda é falsa), logo não são equivalentes. Portanto, o item está ERRADO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Raciocínio Lógico',
'Julgue o item (CERTO ou ERRADO): Se o alarme de movimentação não foi disparado, então o sensor de presença não foi ativado ou a porta estava fechada.',
'',
'',
'["Certo","Errado"]'::jsonb,
'A',
'Item CERTO. A regra é S → (Q ∧ R). Sua contrapositiva, logicamente equivalente, é ¬(Q ∧ R) → ¬S, ou seja, ¬S → ¬(Q ∧ R) = ¬S → (¬Q ∨ ¬R). Em palavras: se o alarme não foi disparado (¬S), então o sensor não foi ativado (¬Q) ou a porta estava fechada (¬R). É exatamente o enunciado do item. Portanto, o item está CERTO.'
from public.exams where slug = 'pf-2025-perito-cb'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
