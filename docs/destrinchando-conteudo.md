# Destrinchando o conteúdo

## Cobertura

Edições oficiais PISM 2024, 2025 e 2026, módulos I, II e III (1º, 2º e 3º anos): 135 questões objetivas, cinco por matéria em cada combinação. Inclui Matemática, Física e Química. Questões discursivas não estão incluídas. Os identificadores antigos pism-2023, pism-2024 e pism-2025 do módulo I correspondem às edições oficiais 2024, 2025 e 2026; não usar o ano do slug como ano da edição.

## Experiência

Prova → edição → ano escolar/módulo → matéria → questão → resolução completa aberta. Enunciado e alternativas ficam visíveis; figuras originais aparecem ao lado e abaixo em telas menores. Vocabulário, explicações e conclusão permanecem abertos, sem botão de dica. Todos os filtros têm conteúdo pronto. Questões e progresso usam identificadores que incluem ano, módulo, matéria e número, evitando colisões.

## Material e fontes

- src/lib/walkthroughQuestions.json: 135 enunciados, alternativas, figuras, identificação e links oficiais.
- src/lib/walkthroughPilotSolutions.js: as 15 resoluções originais do módulo I de 2026.
- src/lib/walkthroughExpandedSolutions.json: 120 resoluções adicionais com vocabulário e cinco passos.
- src/lib/walkthroughSolutions.js: reúne as duas coleções com identificadores completos.
- scripts/build-walkthrough.py: valida a coleção; --refresh-keys relê os 18 PDFs oficiais locais, sem substituir os textos editoriais por comentários legados.
- scripts/crop-walkthrough-supports.py: recria as cinco figuras específicas da coleção inicial e preserva as outras imagens.

As chaves definitivas foram conferidas nos PDFs da UFJF, inclusive os recursos e a revisão de julho de 2026 do módulo I. Casos com duas alternativas aceitas: 2024/I/Matemática/11, 2024/II/Matemática/11 e 2025/II/Física/14 e 15. Anulada: 2025/I/Química/18. A interface aceita ambas as letras quando indicado e identifica a questão anulada. O material distingue a resposta oficial das ressalvas conceituais, como força resultante versus força de contato em 2025/I/Física/14.

As tentativas são locais à atividade e não contam na nota das provas. Filtros e consultas usam armazenamento de sessão. Não foi alterado o banco das outras telas.

## Verificação

node scripts/walkthrough.test.mjs verifica as 135 renderizações, 27 combinações, chaves definitivas transcritas, arquivos das figuras, explicações abertas, respostas múltiplas, anulação e cálculos de referência. node scripts/verify-study-hub.mjs verifica a integração à área de estudos. npm run build verifica a compilação.
