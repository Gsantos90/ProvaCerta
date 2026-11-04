# Destrinchando o conteúdo

## Cobertura

270 questões objetivas com resolução completa em 11 provas. Além das 135 questões PISM, a seleção inclui 135 questões de outras 10 provas. Cada combinação disponível de prova, edição, etapa e matéria contém pelo menos cinco questões (54 combinações no total).

| Prova | Edição / etapa | Matemática | Física | Química |
| --- | --- | --- | --- | --- |
| UERJ | 2026, 2º Exame de Qualificação | 6, 29, 30, 31, 34 | 1, 41, 43, 44, 46 | 5, 37, 39, 42, 45 |
| USP / Fuvest | 2025, 1ª fase, V1 | 17, 69, 70, 76, 77 | 19, 22, 32, 33, 62 | 20, 24, 57, 58, 64 |
| ITA | 2026, 1ª fase | 1, 3, 7, 8, 11 | 13, 14, 17, 19, 23 | 25, 28, 30, 31, 35 |
| Unicamp | 2026, 1ª fase, Q_X | 43, 45, 49, 51, 52 | 9, 10, 11, 12, 14 | 67, 68, 69, 70, 71 |
| Unesp | 2026, 1ª fase | 83, 84, 85, 88, 90 | 76, 77, 78, 80, 81 | 70, 71, 72, 73, 74 |
| ENEM | 2025, 2º dia, amarelo | 137, 138, 139, 140, 141 | 91, 97, 105, 120, 124 | 96, 100, 108, 110, 119 |
| ESA | 2026, Área Geral | 2, 3, 7, 12, 13 | — | — |
| EsPCEx | 2026 | 4 (2º dia), 8 (2º dia), 12 (2º dia), 15 (2º dia), 19 (2º dia) | 22 (1º dia), 23 (1º dia), 24 (1º dia), 30 (1º dia), 32 (1º dia) | 34 (1º dia), 36 (1º dia), 39 (1º dia), 40 (1º dia), 41 (1º dia) |
| EFOMM | 2026, 2º dia, branca | 2, 3, 9, 10, 20 | 23, 28, 33, 36, 39 | — |
| CBMERJ | 2026, CFO, inglês | 22, 23, 24, 26, 28 | 42, 43, 46, 47, 50 | 52, 53, 55, 57, 58 |

As novas coleções são seleções comentadas, não cadernos completos. ESA oferece Matemática; EFOMM oferece Matemática e Física. Não se criam matérias inexistentes para essas provas. As demais instituições do catálogo geral não ganham filtros vazios neste módulo.

Edições oficiais PISM 2024, 2025 e 2026, módulos I, II e III (1º, 2º e 3º anos): 135 questões objetivas, cinco por matéria em cada combinação. Inclui Matemática, Física e Química. Questões discursivas não estão incluídas. Os identificadores antigos pism-2023, pism-2024 e pism-2025 do módulo I correspondem às edições oficiais 2024, 2025 e 2026; não usar o ano do slug como ano da edição.

## Experiência

Prova → edição → ano escolar/módulo → matéria → questão → resolução completa aberta. Enunciado e alternativas ficam visíveis; figuras originais aparecem ao lado e abaixo em telas menores. Vocabulário, explicações e conclusão permanecem abertos, sem botão de dica. Todos os filtros têm conteúdo pronto. Questões e progresso usam identificadores que incluem ano, módulo, matéria e número, evitando colisões.

Nas outras provas, o filtro de ano escolar muda para etapa/caderno. Edições, etapas e matérias são derivadas das questões disponíveis. A troca de prova preserva opções compatíveis e seleciona uma opção válida para as demais; estados antigos da sessão também recebem essa normalização. As respostas e a tentativa são reiniciadas quando a questão muda. Textos de apoio necessários são exibidos antes do enunciado. Alternativas de quatro ou cinco itens são respeitadas.

## Material e fontes

- src/lib/walkthroughQuestions.json: 135 enunciados, alternativas, figuras, identificação e links oficiais.
- src/lib/walkthroughPilotSolutions.js: as 15 resoluções originais do módulo I de 2026.
- src/lib/walkthroughExpandedSolutions.json: 120 resoluções adicionais com vocabulário e cinco passos.
- src/lib/walkthroughSolutions.js: reúne as duas coleções com identificadores completos.
- src/lib/walkthroughCatalog.js: reúne PISM e a seleção de instituições e resolve filtros dependentes.
- src/lib/walkthroughInstitutionQuestions.json: 135 questões, identificação da prova/etapa, alternativas, apoios e fontes.
- src/lib/walkthroughInstitutionSolutions.json: 135 resoluções autorais, com vocabulário, cinco passos, armadilhas e conclusão.
- scripts/build-walkthrough.py: valida a coleção; --refresh-keys relê os 18 PDFs oficiais locais, sem substituir os textos editoriais por comentários legados.
- scripts/crop-walkthrough-supports.py: recria as cinco figuras específicas da coleção inicial e preserva as outras imagens.

As chaves definitivas foram conferidas nos PDFs da UFJF, inclusive os recursos e a revisão de julho de 2026 do módulo I. Casos com duas alternativas aceitas: 2024/I/Matemática/11, 2024/II/Matemática/11 e 2025/II/Física/14 e 15. Anulada: 2025/I/Química/18. A interface aceita ambas as letras quando indicado e identifica a questão anulada. O material distingue a resposta oficial das ressalvas conceituais, como força resultante versus força de contato em 2025/I/Física/14.

As tentativas são locais à atividade e não contam na nota das provas. Filtros e consultas usam armazenamento de sessão. Não foi alterado o banco das outras telas.

A seleção adicional usa as transcrições e gabaritos já disponíveis no projeto: UERJ EQ2, Fuvest V1, catálogo ITA, coleções Unicamp/Unesp, ENEM amarelo, catálogo militar, catálogo EFOMM e CFO CBMERJ. A classificação de Ciências da Natureza/Conhecimentos Gerais foi refinada por questão para Matemática, Física ou Química. Na Unicamp 14, as quatro opções numéricas foram separadas do texto; na Unesp 78, a potência 10⁷ foi normalizada; na EFOMM 28, erros de OCR em “afirmativas II” foram corrigidos. O PISM permanece sem alteração editorial. As fontes de cada resolução apontam para o caderno e respectivo gabarito, com PDFs locais quando já disponibilizados pelo site; os cadernos Vunesp locais provêm do espelho documentado no importador Unesp.

## Verificação

node scripts/walkthrough.test.mjs verifica as 135 renderizações, 27 combinações, chaves definitivas transcritas, arquivos das figuras, explicações abertas, respostas múltiplas, anulação e cálculos de referência. node scripts/verify-study-hub.mjs verifica a integração à área de estudos. npm run build verifica a compilação.

node scripts/walkthrough-institutions.test.mjs verifica as 135 resoluções adicionais, 270 renderizações com feedback correto/incorreto, 528 combinações de filtros incluindo estados incompatíveis, links locais, imagens, quantidade real de alternativas e cálculos de referência. Não exige conexão com o banco para usar o módulo.

A interface não exibe o parágrafo de cobertura nem a contagem de resoluções consultadas. A indicação de questão atual e as marcas “Vista” continuam disponíveis. Na UERJ 37, o aviso sem imagem foi removido e o recorte original foi associado junto à tabela periódica. Na UERJ 5, o texto geral de filosofia foi removido do apoio e substituído pela tabela periódica original da página 39, preservando enunciado e alternativas. A validação impede novos avisos de apoio sem conteúdo e exige pelo menos cinco questões por combinação.
