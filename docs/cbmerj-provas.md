# Bombeiro Militar — CBMERJ

Quatro edições do Curso de Formação de Oficiais foram cadastradas. O CFO 2023 foi aplicado em 27/11/2022, dentro dos quatro anos anteriores a esta revisão (13/10/2026); essa data aparece explicitamente na seleção da prova.

| Edição | Banca | Questões por sessão | Idioma |
| --- | --- | --- | --- |
| CFO 2023 | FGV | 100 | Inglês |
| CFO 2024 | FGV | 100 | Inglês |
| CFO 2025 | UERJ | 80 | Inglês ou Espanhol |
| CFO 2026 | UERJ | 80 | Inglês ou Espanhol |

Existem 380 questões distintas, contando as duas opções de língua estrangeira. O banco contém 520 registros em seis opções de prova, porque os cadernos de 2025 e 2026 compartilham as 70 questões das demais matérias entre os idiomas.

## Publicações oficiais

- [FGV — CFO 2023, prova aplicada em 2022](https://conhecimento.fgv.br/concursos/cbmerj22)
- [FGV — CFO 2024](https://conhecimento.fgv.br/concursos/cbmerj23)
- [UERJ — CFO 2025](https://www.vestibular.uerj.br/?page_id=16355)
- [UERJ — CFO 2026](https://www.vestibular.uerj.br/?page_id=14964)

Os PDFs originais e os gabaritos definitivos estão em `public/provas/cbmerj`. O gabarito de 2023 usa a retificação de 30/12/2022; os de 2025 e 2026 usam as versões finais/corrigidas publicadas pela UERJ.

## Conferência e reprodução

- Os enunciados e as alternativas foram conferidos com os PDFs, incluindo frações, expoentes, fórmulas químicas e trechos sublinhados. Estes últimos aparecem entre `⟦ ⟧` em texto, com uma indicação no enunciado.
- Textos e passagens compartilhados ficam em `support`. Figuras, mapas, tabelas, diagramas e gráficos ficam em `support_image`; listas JSON permitem várias imagens por questão. Alternativas gráficas continuam selecionáveis pelo identificador A–D ou A–E do apoio.
- Os 110 arquivos de imagem em uso estão em `public/cbmerj-apoios`. Os recortes foram conferidos visualmente, inclusive os gráficos de alternativas, tabelas, legendas e a tabela periódica.
- Os dados conferidos estão em `pdf-extracts/cbmerj/questions-reviewed.json`. A carga reproduzível é `supabase/seed-cbmerj-2023-2026-cfo.sql`, com atualização por número da questão, preservando os IDs em novas aplicações.
- Executar `node scripts/verify-cbmerj.mjs`, com o site local na porta 5173, compara os 520 registros, valida os gabaritos independentemente nos arquivos oficiais e confirma a disponibilidade das imagens e dos quatro cadernos.

A inclusão no catálogo foi verificada no navegador, assim como o carregamento dos apoios e a retomada da questão/resposta após atualizar a página. A compilação de produção passou. O banco já recebeu o cadastro; o código, os PDFs e as imagens precisam acompanhar o próximo deploy.
