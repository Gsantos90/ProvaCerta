# PMERJ: provas anteriores a 2021

O catálogo usa cadernos originais e gabaritos publicados, preservados no arquivo público do Qconcursos. O arquivo `pmerj-arquivos.json` registra a origem, o ano, o cargo e a quantidade de questões de cada prova. As provas anteriores do projeto permanecem intactas.

## Preparação e conferência

1. `scripts/download-pmerj-archives.py` baixa apenas os endereços de arquivos encontrados no catálogo público.
2. `scripts/import-pmerj-archives.py` extrai os cadernos com texto pesquisável. Gabaritos precisam ter a sequência completa de respostas. A prova de Pedagogia tem 40 questões, com a questão 17 anulada.
3. `scripts/import-pmerj-general.py` conserva imagens dos cadernos antigos para preservar mapas, fórmulas, tabelas, textos e alternativas impressas.
4. `scripts/finalize-pmerj-import.py` valida a numeração, as alternativas, os comentários e a existência das imagens; gera o catálogo e a referência ao caderno original.
5. `scripts/prepare-pmerj-batches.py` prepara transações pequenas. A carga adiciona as provas e questões sem alterar registros anteriores.
6. `scripts/verify-pmerj-archives.mjs` confere a carga no banco conectado, a disponibilidade no seletor e a preservação da prova de Soldado de 2024.

## Explicações e anulações

O campo `explanation` está preenchido em cada questão. Os comentários identificam a resposta publicada, reproduzem o conteúdo da alternativa quando a extração é confiável e destacam perguntas negativas e anulações. Nos cadernos exibidos como imagem, o comentário identifica o gabarito sem inventar uma resolução. Esses comentários não são resoluções oficiais nem um comentário passo a passo de todas as alternativas.

As questões históricas permanecem vinculadas ao enunciado e à legislação da época da prova. As questões anuladas usam a representação já existente no projeto, `A/B/C/D/E`, para manter a pontuação e a revisão corretas.

## Arquivos que não foram incluídos

O registro de pendências fica em `pdf-extracts/pmerj-ate-2020/pendencias.json`. Alguns cadernos não puderam ser obtidos no arquivo público. As versões francesa e espanhola de 2012 disponibilizadas pelo arquivo têm apenas o anexo de idioma, sem o bloco comum completo. O arquivo de gabarito associado a Oncologia Clínica de 2010 apresenta o cabeçalho e as respostas discursivas de Capelania; ele não foi usado. Provas exclusivamente discursivas não foram convertidas artificialmente em alternativas.

Não foi identificado um par completo e verificável de caderno e gabarito de aplicação em 2020. O filtro solicitado foi interpretado como provas aplicadas em 2020 ou antes.
