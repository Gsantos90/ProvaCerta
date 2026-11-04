# Revisão textual das discursivas do PISM

## Cobertura

Português e Geografia dos módulos I, II e III, nas edições 2024, 2025 e 2026 disponíveis no catálogo. São 51 questões distintas e 75 itens; questões comuns às áreas do módulo III compartilham os mesmos critérios.

As sínteses foram conferidas com as referências oficiais da COPESE/UFJF apontadas em `correction` no catálogo `public/pism-discursivas/questions.json`. Os PDFs e extrações usados na conferência estão no cache `pdf-extracts/pism-discursivas/correcoes`. Cada questão conserva, na revisão, seu link para a referência oficial da respectiva prova.

## Critérios e variações

`src/lib/pismHumanitiesReferences.js` contém as sínteses, critérios por item, expressões equivalentes e cláusulas de resposta redigidas especificamente para cada conceito. `src/lib/pismConceptAnswers.js` combina essas cláusulas para formar dez modelos por item (750 no total), sem contar simples mudanças de pontuação ou inversão da ordem das frases como novos modelos.

O reconhecimento não se limita aos dez modelos: considera flexões e expressões alternativas nos padrões de cada critério. Itens que pedem dois ou três exemplos têm quantidade mínima explícita; repetir um mesmo conceito não conta duas vezes. Itens de explicação exigem relações previstas nos padrões, e não apenas uma lista genérica de palavras. Respostas parciais mostram o que foi identificado.

Há filtros para contradições conhecidas e tratamento conservador de negações novas. Esses filtros não constituem compreensão semântica geral e podem deixar de reconhecer formulações corretas ou não detectar todas as respostas incorretas. A interface usa “conceitos reconhecidos”, não nota oficial ou garantia de acerto. Produções argumentativas, transcrições, estrutura textual e outras exigências de redação continuam dependendo de revisão humana.

Depois de finalizar a prova, a revisão mostra a referência e o resultado da análise. Os critérios detalhados e os dez modelos ficam internos ao mecanismo de correção e não aparecem na tela. A mudança mantém os identificadores e os campos salvos da sessão, preservando respostas anteriores. Matemática e Química continuam usando o mecanismo de respostas exatas existente.

## Verificação

```sh
node --test scripts/pism-concept-answers.test.mjs scripts/pism-exact-answers.test.mjs scripts/pism-discursive.test.mjs
npm run build
```

Os testes cobrem os 75 itens, todas as variações, formulações independentes, respostas em branco, repetição de conceitos, quantidades mínimas, casos de negação e inversão, exigências do comando para IA e visibilidade das referências na revisão. Também verificam regressões de respostas exatas e preservação das respostas salvas.
