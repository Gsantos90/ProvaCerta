# UERJ 2026 — 2º Exame de Qualificação

60 questões, língua estrangeira Inglês (23–27), prova aplicada em 31/08/2025.

Fontes oficiais:
- https://www.vestibular.uerj.br/?page_id=15994
- https://www.vestibular.uerj.br/anexos/262/Prova_2_EQ.pdf
- https://www.vestibular.uerj.br/anexos/262/Gabarito_VESTIBULAR.pdf

O caderno original e o gabarito estão em `public/provas/uerj/`. Os apoios em `public/uerj-2026-eq2/` preservam gráficos, fórmulas, sublinhados e alternativas originais. Os links das questões abrem a página correspondente do caderno.

`supabase/seed-uerj-2026-eq2.sql` contém apenas INSERTs, dentro de uma transação, e interrompe toda a operação se o slug já existir. Não faz UPDATE, DELETE ou UPSERT. Não reaplicar para editar dados já cadastrados.

Inclusão verificada em 14/10/2026: nova prova com 60 números únicos (1–60), quatro alternativas e respostas A–D. A prova UERJ 2025 manteve os mesmos hashes antes e depois: questões `9396ce2a0ee5b0ba08db50d3f244d39c`, prova `7e4dc646c8719e065dad9db830f27388`.

O botão “Voltar ao início” no resultado da discursiva retorna ao catálogo de todas as provas.

## Apoios sem duplicação

`uerjObjectiveMedia.js` aplica somente na apresentação as figuras recortadas por `scripts/crop-uerj-2026-figures.py`. Remove imagens de textos, enunciados e alternativas já transcritos. Mantém mapas, gráficos, quadrinhos, fotografias, diagramas, estruturas químicas e a tabela periódica. As alternativas gráficas da questão 59 são preservadas. Os trechos sublinhados das questões 19 e 26 são identificados por texto. Funciona também em simulados, revisão e sessões restauradas. Nenhum registro do banco foi alterado nesta limpeza.
