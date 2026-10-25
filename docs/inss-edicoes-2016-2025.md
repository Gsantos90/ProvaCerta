# INSS: edições 2016, 2022 e CNU 2025

Em Concursos, o card INSS mantém o diálogo e os dois seletores existentes. O ano determina os cargos válidos; ao trocar o ano, o primeiro cargo válido é selecionado. A edição inicial continua sendo 2022. Ano e cargo usam `usePageState`. O catálogo mostra as três edições.

| Ano | Cargo / caderno | Itens | Banco |
| --- | --- | --- | --- |
| 2016 | Técnico do Seguro Social, ALGA | 120 | `inss-2016-tecnico` |
| 2016 | Analista do Seguro Social, Serviço Social, LUA | 120 | `inss-2016-analista-servico-social` |
| 2022 | Técnico, cadernos 01 | 120 | `inss-2022-tecnico` |
| 2025 | Analista, Serviço Social, Fisioterapia, Psicologia e Terapia Ocupacional | 90 | `cnu-2025-bloco1-tarde` |
| 2025 | Analista, Tecnologia da Informação | 90 | `cnu-2025-bloco3-tarde` |
| 2025 | Analista, Engenharias Civil, Elétrica, Mecânica e de Telecomunicações | 90 | `cnu-2025-bloco4-tarde` |
| 2025 | Analista, Administração, Contabilidade, Direito e Estatística | 90 | `cnu-2025-bloco5-tarde` |

Os blocos 2025 já existiam na área CNU. O INSS referencia os mesmos registros, sem duplicar questões por especialidade ou local de lotação. A seleção é por bloco compartilhado. Cada caderno traz 30 questões gerais e 60 específicas. A implementação cobre as provas objetivas; a etapa discursiva não foi integrada nesta inclusão.

## Correção e histórico

Em 2016/2022, A representa Certo e B representa Errado. `A/B/C/D/E` representa anulação. Pontuação: acerto +1, erro -1, em branco 0; anulado +1 mesmo em branco. Técnico 2016 tem cinco anulados: 28, 32, 39, 53 e 79; Analista 2016 tem dois: 58 e 85. As provas reproduzem a legislação e o contexto da aplicação histórica de 15/05/2016.

No CNU/FGV, usam-se alternativas A–E, sem desconto por erro. O resultado mostra acertos simples e credita anuladas, seguindo a regra habitual do site. Não calcula a nota ponderada dos eixos por cargo, nota discursiva, títulos ou classificação oficial. Essa limitação aparece no seletor, durante a prova e no resultado.

O título depende do slug da prova ativa, não dos seletores do catálogo. Uma sessão recuperada mantém seu título. A modalidade é identificada pelas opções do banco; o histórico recebe `cebraspe` somente para as provas binárias e `standard` para CNU, com `exam_source=inss` quando iniciado pelo card INSS. Os IDs e slugs de questões compartilhadas continuam apontando para o CNU para relatos de problemas.

## Textos e imagens de 2016

Os 240 enunciados foram extraídos como texto. Comandos e situações compartilhadas ficam em `support`. Os textos de Português são recortes completos da coluna original, preservando referências às linhas; a planilha do Analista é uma imagem separada. Há cinco imagens em `public/inss-2016/`. Cada item tem link para a página correspondente no caderno oficial. Não foram criadas explicações autorais para itens não anulados.

O extrator decodifica somente os caracteres da fonte antiga usados na numeração dos itens. Não aplica esse mapeamento ao texto comum. Separa as duas colunas, mantém contextos que continuam na coluna seguinte e trata explicitamente os parágrafos de apoio que começam com recuo. O teste verifica situações que poderiam ser anexadas indevidamente à questão anterior.

## Fontes oficiais

- [Índice Cebraspe INSS 2015, aplicação 2016](https://www.cebraspe.org.br/concursos/INSS_2015/).
- [Técnico, ALGA](https://cdn.cebraspe.org.br/concursos/INSS_2015/arquivos/234INSS_002_01_Caderno_ALGA.PDF) e [gabarito definitivo](https://cdn.cebraspe.org.br/concursos/INSS_2015/arquivos/Gab_Definitivo_234INSS_002_01.PDF).
- [Analista, LUA](https://cdn.cebraspe.org.br/concursos/INSS_2015/arquivos/234INSS_001_01_Caderno_LUA.PDF) e [gabarito definitivo](https://cdn.cebraspe.org.br/concursos/INSS_2015/arquivos/Gab_Definitivo_234INSS_001_01.PDF).
- [FGV CPNU 2](https://conhecimento.fgv.br/cpnu2), [bloco 1 tipo 1](https://conhecimento.fgv.br/sites/default/files/concursos/b1101.pdf), [bloco 3 tipo 1](https://conhecimento.fgv.br/sites/default/files/concursos/b3301.pdf), [bloco 4 tipo 1](https://conhecimento.fgv.br/sites/default/files/concursos/b4401.pdf) e [bloco 5 tipo 1](https://conhecimento.fgv.br/sites/default/files/concursos/b5501.pdf).
- [Gabarito definitivo FGV retificado em 21/11/2025](https://conhecimento.fgv.br/sites/default/files/concursos/cpnu_gabarito_oficial_definitivo_retificado_21.11.2025.pdf).
- Anexos de cargos retificados: [bloco 1](https://conhecimento.fgv.br/sites/default/files/concursos/cpnu2_anexo_blocotematico1_8aret.pdf), [bloco 3](https://conhecimento.fgv.br/sites/default/files/concursos/cpnu2_anexo_blocotematico3_8aret.pdf), [bloco 4](https://conhecimento.fgv.br/sites/default/files/concursos/cpnu2_anexo_blocotematico4_8aretif.pdf) e [bloco 5](https://conhecimento.fgv.br/sites/default/files/concursos/cpnu2_anexo_blocotematico5_8aret.pdf).

## Importação e validação

1. `python scripts/import-inss-2016.py` baixa as fontes oficiais e executa o gerador. Requer PyMuPDF. Para fontes já baixadas: `python scripts/generate-inss-2016.py`.
2. O gerador produz `supabase/seed-inss-2016.sql`, as cinco imagens e `src/lib/inss2016Sources.js`. O SQL usa transação e upsert por slug e `(exam_id,number)`, preservando IDs e explicações existentes quando não há nova explicação. Não muda schema, permissões ou RLS.
3. Publicar as imagens junto do frontend, depois executar o seed inteiro no banco. A prova de 2022 permanece inalterada.
4. Executar `supabase/update-cnu-2025-inss-keys.sql`. São oito correções verificadas contra o tipo 1 definitivo: bloco 1, itens 63 (anulado) e 71 (B); bloco 3, item 51 (anulado); bloco 4, itens 36, 50 e 75 (anulados), 64 (A); bloco 5, item 46 (anulado). Cada UPDATE exige a resposta anterior esperada. Não muda textos, alternativas, explicações ou tentativas já salvas.
5. `node scripts/verify-inss-expansion.mjs` verifica 240 itens e gabaritos, numeração, anuladas, figuras, sete seleções, renderização de prova/resultado e classificação do histórico. `node scripts/verify-inss-2022.mjs` mantém a regressão da edição anterior. `npm run build` valida a compilação.

`scripts/fixtures/inss-official-keys.json` contém os gabaritos de referência. Para refazer a conferência FGV, salvar o PDF definitivo como `pdf-extracts/inss-cnu-2025/gabarito.pdf`, extrair seu texto com PyMuPDF (`get_text(sort=True)`) no arquivo vizinho `gabarito.txt` e executar `python scripts/verify-inss-cnu-keys.py`. Comparar todas as 360 respostas do banco, não apenas os oito itens alterados.
