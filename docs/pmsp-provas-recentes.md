# PM — Rio de Janeiro e São Paulo

O cartão antes chamado PMERJ passa a exibir **PM**. Os identificadores internos
`pmrj`/`pmerj` foram mantidos para preservar histórico, sessões e provas antigas.
O seletor Estado oferece Rio de Janeiro e São Paulo, com cargos e edições
dependentes do estado. As 2.800 questões existentes do RJ não foram alteradas.

## Aplicações de São Paulo

| Cargo | Aplicação | Banca | Questões | Versão |
| --- | --- | --- | --- | --- |
| Soldado | 20/09/2026 | Vunesp | 60 | Divulgação à imprensa / versão 1 |
| Soldado | 30/11/2025 | Vunesp | 60 | Divulgação à imprensa / tipo 1 |
| Soldado | 16/02/2025 | FGV | 60 | Tipo 1 |
| Oficial / Cadete | 16/08/2026 | Vunesp | 80 | Inglês e Espanhol |
| Oficial | 13/07/2025 | FGV | 80 | Tipo 1, Inglês e Espanhol |
| Oficial | 18/08/2024 | Vunesp | 80 | Inglês e Espanhol |

São seis aplicações e nove entradas considerando as opções de idioma: 660
linhas de questões. A data apresentada é a da aplicação, não a do edital ou
do curso de formação. A opção de idioma aparece no seletor de edição.

## Fontes e gabaritos

- [Soldado 2026 — Vunesp PMES2601](https://www.vunesp.com.br/PMES2601).
  Caderno e chave de divulgação obtidos da aba pública Editais e Documentos.
  As 60 respostas da versão 1 foram conferidas com o [definitivo DP-031/321/26](https://doe.sp.gov.br/executivo/secretaria-da-seguranca-publica/comunicado-n-dp-031-321-26-20261009133616191662194492): sem alterações ou anulações.
- [Soldado novembro/2025 — Vunesp PMES2502](https://www.vunesp.com.br/PMES2502).
  Chave de imprensa coincide com tipo 1 do definitivo DP-023/321/25, exceto
  anulações oficiais das questões 53 e 57, aplicadas no seed.
- [Soldado fevereiro/2025 — FGV](https://conhecimento.fgv.br/concursos/pmespsoldado25).
  Caderno tipo 1 e definitivo DP-04/321/25, sem anulações.
- [Cadete 2026 — Vunesp PMES2602](https://www.vunesp.com.br/PMES2602).
  Definitivo DP-027/321/26: questão 47 anulada; a chave de imprensa é preliminar.
- [Oficial 2025 — FGV](https://conhecimento.fgv.br/concursos/cfopmesp26).
  Caderno tipo 1; tabelas definitivas específicas para Inglês e Espanhol.
  Questões 6 e 77 anuladas nas duas opções.
- [Oficial 2024 — Vunesp PMES2401](https://www.vunesp.com.br/PMES2401).
  Caderno e chave em cópia Qconcursos; as 80 respostas foram confrontadas com
  a reprodução do definitivo publicada em 03/09/2024: sem alterações.
  [Publicação do definitivo](https://www.direcaoconcursos.com.br/noticias/concurso-pm-sp-oficial-gabarito-definitivo).

Os endereços individuais e as páginas por questão são guardados em
`src/lib/pmspExams.js`. Os seis PDFs estão em `public/provas/pmsp/`.

## Conteúdo e reprodução

- Enunciados e alternativas em texto, apoios separados e repetidos quando necessários.
- Recortes de tirinhas, mapas, tabelas, diagramas e ícones no apoio padrão;
  nenhum caderno usa a imagem completa da questão como enunciado.
- Fórmulas revistas em `scripts/pmsp-reviewed-text.json`; tabelas periódicas
  disponíveis no apoio das questões de Química.
- `node scripts/download-pmsp.mjs` baixa os materiais públicos.
- `python scripts/import-pmsp.py` gera metadados, figuras e
  `supabase/seed-pmsp-recent.sql`, com upsert sem substituir IDs existentes.
- `node scripts/verify-pmsp.mjs` valida contagens, opções, apoios compartilhados,
  idiomas, gabaritos, anulações, arquivos e compatibilidade com o RJ.
- `npm run build` compila a aplicação.

O cadastro no Supabase foi conferido por contagem e hash de todos os campos
de conteúdo. Os IDs, números e gabaritos das 2.800 questões do RJ mantiveram o
hash `4ac2b0827dd03757d1a47b4e38c2dfa4` antes e depois da inclusão.
