# ITA 2026 — segunda fase unificada

Acesso: Todas as provas → ITA → Ano 2026 → Exame “2º fase”. O modal mantém
apenas os seletores e o botão de iniciar, conforme o padrão solicitado.

O caderno reúne 46 itens numa única sessão: Matemática (1–10), Química (11–20),
Física (21–30), Português (31–45) e redação (46). Cada tela preserva também a
numeração original da disciplina. Todos os enunciados, alternativas, fórmulas,
dados e textos de apoio são nativos; só figuras científicas e as cinco pinturas
da questão 13 de Português usam imagens. Os textos de apoio ficam recolhidos
em uma área expansível, preservando versos e quebras de linha.

## Respostas e referências

Há 87 campos nas 30 dissertativas, além das 15 escolhas de Português e da
redação. Os campos dividem os pedidos em resultados ou conceitos curtos,
como no fluxo discursivo da UERJ. Há uma área opcional de desenvolvimento e
cálculos por questão. Esses cálculos ficam guardados para revisão, sem correção
automática da demonstração.

O gabarito público oficial do ITA contém apenas as 15 alternativas de Português.
As referências dissertativas são editoriais de treino, conferidas com os
enunciados oficiais e as resoluções publicadas pelo Etapa. Não são rotuladas
como espelho oficial da banca. URLs e hashes dos cadernos estão em
`ita-2026-2f-sources.json`.

O reconhecimento aceita variantes cadastradas, caixa e acentuação em respostas
verbais, vírgula ou ponto decimal, frações numéricas e notação científica. Unidades
aceitas são cadastradas por campo; o rótulo informa a unidade esperada. Fórmulas
aceitam as variantes explícitas e normalizam símbolos e escrita de potências;
preservam maiúsculas/minúsculas para distinguir M e m. Não há avaliação de código,
serviço externo ou promessa de equivalência algébrica irrestrita. Listas exigem
todos os resultados, sem duplicatas, em qualquer ordem. Nas justificativas,
grupos de conceitos e relações cadastradas impedem pontuar apenas palavras
soltas, negações ou inversões dos polos.

Seis campos têm conferência manual e não entram no percentual:

- Matemática 6: a condição das somas das duas últimas colunas é incompatível
  com as matrizes impressas. Não é apresentada como anulação oficial.
- Química 9(a): lista completa de espécies principais e minoritárias.
- Química 9(d): sentido da corrente, discriminando solução e fonte.
- Física 2(b): distribuição dos atritos depende de hipótese adicional.
- Física 4(b): expressão de energia e aproximações orbitais.
- Física 5(b): balanço de calor e eficiência usando o trabalho líquido do ciclo.

Física 5(b) não reproduz automaticamente o numerador M₁ da solução consultada:
a eficiência do ciclo usa M₁−M₂. Química 6 explicita que o pK calculado é formalmente
baseado no dado impresso. Respostas alternativas válidas que o sistema não
reconheça devem ser comparadas com a referência.

A redação possui título e texto próprios, coletânea completa e critérios de
revisão ao finalizar. Não recebe nota por presença de palavras-chave. A indicação
de 25–35 linhas corresponde ao papel; linhas digitadas e palavras não medem isso.

## Fluxo e persistência

Navegação por número, por disciplina e por Anterior/Próxima. A correção só é
exibida depois de Finalizar prova na última tela. A revisão mostra reconhecido,
não reconhecido/em branco e revisão manual, com rótulos e cores. A porcentagem
é de itens automáticos com pesos iguais, não a nota oficial do ITA.

Respostas, desenvolvimento, título, redação, posição, resultado e revisão são
preservados em sessionStorage. Voltar ao catálogo e reabrir retoma a sessão.
Refazer prova limpa essa tentativa. Assim como nas discursivas da UERJ, o
resultado não é enviado ao histórico da conta e não há cronômetro unificado.

## Manutenção

Dados editoriais: `scripts/ita_2026_second_content.py` e
`scripts/ita_2026_second_portuguese.py`; apoios: `docs/ita-2026-2f-apoios.json`.
Regenerar texto e figuras com `scripts/build-ita-2026-second.py` (pypdfium2 e
Pillow). Tela: `src/ItaDiscursive.jsx`; reconhecimento:
`src/lib/itaDiscursiveGrading.js`. O fluxo e o corretor da UERJ não são alterados.

Verificação: `node scripts/ita-discursive.test.mjs`,
`node scripts/short-answers.test.mjs`, `node scripts/verify-ita-2026.mjs`
e `npm run build`.
