# Revisão EBSERH e PC-MG — 28/10/2026

- EBSERH 2023 usa `public/provas/ebserh/2023-farmaceutico.json`, carregado por `loadEbserhExam`; não há registro dessa prova em `exams`.
- O gerador agora delimita Texto I a partir de “Nizia Figueira, sua criada”, incluindo o texto completo e as quatro notas, nas questões 1–5 e 8. Q8 conserva também Texto II. Cabeçalho e instruções foram excluídos.
- O arquivo temporário `pdf-extracts/ebserh/p2023.pdf` corresponde a outro concurso (Pombos), portanto não foi usado. A grafia foi conferida visualmente no mesmo Texto I do caderno IBFC/EBSERH 2023 de Hematologia e Hemoterapia Pediátrica, página 3: https://arquivos.qconcursos.com/prova/arquivo_prova/115022/ibfc-2023-ebserh-medico-hematologia-e-hemoterapia-pediatrica-prova.pdf. A transcrição específica de Farmacêutico já utilizada pelo projeto foi mantida; não foi obtido o PDF específico desse cargo.
- PC-MG 2025: 70 questões confrontadas com `mg-prova.pdf`; cartaz Q1, tabela Q13 e relatório Q16 recortados isoladamente. Apoio textual separado em Q7; identificação dos sublinhados de Q5, Q8 e Q10 disponível no apoio. Títulos de disciplinas removidos das alternativas.
- PC-MG 2026: 60 questões confrontadas com os três cadernos locais. Texto CG1A1 separado e repetido em Q1–6; planilha isolada em Q8; frações recompostas em Q15; cabeçalhos e instruções removidos.
- Seed e importador atualizados. Os dados de PC-SP no seed permaneceram iguais.
- Supabase: 130 linhas atualizadas somente em `text`, `support`, `support_image`, `options`; comparação de todos esses campos retornou 130 conferidas e zero divergências.
- IDs, números e respostas preservados, verificados por MD5 da sequência ordenada `id:number:answer`: Investigador `c435206f1bc96caf0105c7e10b373e06`; Auxiliar `92ff25519f1f4b56975068e396d22815`.
- Testes: `node scripts/verify-pc-recent.mjs`, `node scripts/ebserh.test.mjs` e `npm run build`. Build exige execução fora do sandbox porque esbuild/Vite recebem EPERM ao iniciar subprocessos no sandbox Windows.
