# Revisão dos cadernos PISM

Conferência dos 18 cadernos objetivos dos módulos I, II e III, edições oficiais de 2024, 2025 e 2026: 360 questões. Os endereços dos PDFs oficiais estão em `src/lib/pismSources.js`.

Os identificadores e os gabaritos foram preservados, incluindo respostas múltiplas e questões anuladas. Textos de leitura permanecem em `support`; gráficos, tabelas, charges e outras figuras ficam em `support_image`. Múltiplas imagens usam uma lista JSON, compatível com o leitor do site. As alternativas permanecem em `options`.

`database-before.json` registra o banco anterior; `questions-reviewed.json` contém o resultado conferido; `database-after.json` registra o banco após a aplicação. A atualização reproduzível está em `supabase/update-pism-complete-statements.sql` e deve ser aplicada depois das cargas originais dos cadernos. Não substitui IDs nem modifica gabaritos.

Verificação: executar `node scripts/snapshot-pism.mjs database-after.json`, seguido de `node scripts/verify-pism-review.mjs`, com o servidor local na porta 5173. O verificador compara os 360 registros com os dados revisados, confirma os gabaritos anteriores e verifica a disponibilidade das imagens.

As imagens de `public/pism-apoios` precisam acompanhar a publicação do projeto. Atualizar apenas o banco não publica esses arquivos na Vercel. Provas já abertas podem manter o conteúdo anterior no progresso daquela sessão; uma nova sessão carrega os dados atualizados.
