# ESA e EsPCEx — edição 2026

As cinco provas usam o fluxo padrão: seleção em Concursos, estudo livre ou
cronômetro, respostas A–E, resultado, revisão e histórico para usuários conectados.
As questões também entram nos simulados de ensino médio.

ESA: Geral/Aviação, Música e Saúde, 50 questões por área, modelo A.
Aplicação em 26/07/2026; CFGS 2027/28; gabarito definitivo de 11/08/2026.

EsPCEx: versão 1, primeiro dia (44 questões, 12/09/2026) e segundo dia
(56 questões, 13/09/2026), admissão 2026/27. A decisão de recursos publicada
em 06/10/2026 anulou a questão 9 do segundo dia. Ela recebe ponto automaticamente.
As demais respostas do primeiro dia foram mantidas.

Cada questão mostra o enunciado e as cinco alternativas em texto, no mesmo
fluxo das demais provas. Gráficos, figuras, mapas, tabelas, tirinhas e partituras
ficam em `support_image`, o campo de imagem de apoio já usado pelo projeto.
Textos comuns ficam em `support`. Fórmulas usam símbolos, índices e frações
legíveis em texto; correções conferidas no PDF estão em `military-text-overrides.json`.
A redação não entra na pontuação objetiva.

Os PDFs ficam em public/provas/militares/2026, os recortes em
public/militares-2026. Fontes e datas: military-exams-sources.json e
espcex-2026-sources.json. O catálogo é gerado por scripts/import-military-2026.py,
com separação de texto e figuras em scripts/normalize-military-2026.py; as cinco cargas SQL
por scripts/generate-military-seed.py. Elas usam upsert para preservar os IDs
e podem ser reaplicadas. A conferência fica em scripts/verify-military-exams.mjs.
