# Steering do projeto provacerta

## Objetivo do projeto

O `provacerta` é uma SPA React para estudo de provas. A experiência principal
é um simulado interativo: o estudante escolhe uma prova, responde às
questões, recebe a correção automática e pode revisar cada resposta com o
gabarito.

O produto deve permanecer simples, visualmente agradável, responsivo,
intuitivo e orientado a UX. O conteúdo educacional deve ser tratado como
informação de prova: não inventar questões, alternativas, textos, imagens ou
gabaritos ausentes.

## Stack e comandos

- React 18;
- Vite 6;
- JavaScript com módulos ES;
- `lucide-react` para ícones;
- CSS próprio em `src/styles.css`;
- JSON para conjuntos estruturados de questões.

Comandos existentes:

```bash
npm install
npm run dev
npm run build
npm run preview
```

Sempre execute `npm run build` depois de alterações no código da aplicação.
Não adicione ferramentas de lint, testes ou build sem necessidade explícita.

## Estrutura importante

- `src/main.jsx`: ponto central da aplicação, estado, provas, textos de apoio,
  resultado, revisão e renderização;
- `src/2024-1-questions.json`: questões do PISM 2024-1;
- `src/2024-2-questions.json`: questões do PISM 2024-2;
- `src/styles.css`: identidade visual, layout, responsividade e componentes;
- `public/`: imagens de apoio referenciadas por caminhos iniciados em `/`;
- `pdf-extracts/`: material de conferência extraído dos PDFs, não usado
  diretamente durante a execução;
- `README.md`: documentação pública para instalação, manutenção e contribuição.

## Provas atualmente cadastradas

### PISM

- `pism-1` → `2025-1`;
- `pism-2` → `2025-2`;
- `pism-2024-1` → `2024-1`;
- `pism-2024-2` → `2024-2`.

### ENEM

- `enem-2023-1-ingles` → `2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS`.

O ENEM 2023 atualmente contém uma prova única com numeração contínua:

- questões 1–5: Língua Inglesa;
- questões 6–10: Língua Espanhola.

As demais questões do caderno devem ser adicionadas somente quando o usuário
fornecer os enunciados, alternativas e gabarito.

## Modelo de questão

Uma questão deve conter, no mínimo:

```js
{
  subject: 'Língua Espanhola',
  text: 'Enunciado da questão.',
  options: [
    'Alternativa A',
    'Alternativa B',
    'Alternativa C',
    'Alternativa D',
    'Alternativa E',
  ],
  answer: 'A',
}
```

Pode conter também:

- `support`: texto de apoio;
- `supportImage`: caminho de uma imagem de apoio em `public/`.

Regras:

- `options` deve ter cinco alternativas na ordem A–E;
- `answer` deve ser uma letra entre A e E;
- o gabarito deve ser conferido antes de alterar o conteúdo;
- não alterar a posição das alternativas sem revisar o gabarito;
- preservar a numeração lógica do conjunto de questões;
- em provas com idiomas, seguir a sequência oficial solicitada pelo usuário;
- corrigir acentuação e problemas de extração de PDF sem mudar o sentido
  original;
- conservar fontes, links, datas de acesso e indicação de adaptação quando
  fornecidos.

## Textos e imagens de apoio

Textos de apoio devem aparecer em painéis expansíveis na lateral da prova,
abaixo da dica de foco. O conteúdo deve ser vinculado à prova, disciplina e
questão corretas.

Ao incluir uma imagem:

1. copiar o arquivo para `public/`;
2. usar um nome descritivo e estável;
3. referenciar o caminho absoluto público, por exemplo
   `/enem-2023-ingles-questao-2.png`;
4. adicionar `alt` descritivo;
5. incluir legenda ou fonte quando existir;
6. validar se a imagem realmente carrega no navegador.

Não duplicar textos de apoio. Quando uma questão possuir Texto I e Texto II,
eles devem aparecer identificados separadamente e cada texto deve ser exibido
uma única vez.

## Regras de UX

- manter o nome e a identidade visual `provacerta`;
- preservar o fluxo início → prova → resultado → revisão;
- manter a grade lateral de questões;
- indicar claramente a questão atual;
- manter feedback visual para alternativa selecionada;
- no resultado, exibir acertos, percentual e quantidade para revisar;
- na revisão, mostrar a resposta do estudante e a alternativa correta;
- permitir avançar e voltar entre questões da revisão;
- na última questão da revisão, retornar ao resultado;
- manter o botão `Sair da revisão`;
- não permitir alteração de respostas durante a revisão;
- manter textos de apoio recolhidos por padrão, salvo quando o comportamento
  atual da prova exigir o painel aberto;
- manter compatibilidade com telas pequenas e navegação por teclado sempre que
  possível.

## Convenções de implementação

- fazer alterações cirúrgicas e coerentes com os padrões existentes;
- reutilizar a lógica de `questionSets`, `activeQuestions`, `answers` e
  `normalizeExtractedText`;
- evitar duplicar componentes ou regras de cálculo;
- preferir dados estruturados a condições espalhadas no JSX;
- não introduzir backend, autenticação ou dependências novas sem solicitação;
- não remover alterações existentes de conteúdo sem confirmação;
- não fazer alterações destrutivas em arquivos ou histórico Git;
- usar comentários somente quando uma regra não for autoexplicativa;
- manter arquivos em UTF-8 para preservar português e espanhol corretamente.

## Processo para adicionar uma prova

1. Confirmar nome exibido, identificador interno, idioma e ordem das questões.
2. Conferir se cada questão tem enunciado, cinco alternativas e gabarito.
3. Adicionar textos e imagens de apoio com as fontes correspondentes.
4. Integrar o conjunto ao `questionSets`.
5. Adicionar a opção de seleção na tela inicial.
6. Atualizar `examLabel` quando necessário.
7. Conferir resultado e revisão.
8. Testar questões no início, no meio e no final do conjunto.
9. Executar `npm run build`.
10. Atualizar o `README.md` se a nova prova passar a fazer parte do produto.

## Verificação obrigatória

Antes de concluir uma alteração:

- executar `npm run build`;
- verificar `git diff --check`;
- testar no navegador quando houver mudança visual ou de fluxo;
- confirmar que imagens e textos de apoio carregam;
- confirmar que a questão aparece com a numeração esperada;
- confirmar que o gabarito continua correto;
- confirmar que resultado e revisão continuam funcionando;
- informar claramente o que foi validado.

## Git e publicação

O remoto oficial é:

```text
https://github.com/Gsantos90/ProvaCerta.git
```

Use a branch `main` para o fluxo atual. Commits devem ser pequenos, claros e
relacionados a uma alteração coerente. Ao criar commits, incluir o trailer:

```text
Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>
```

Nunca incluir `node_modules/`, `dist/`, `.venv/`, credenciais ou arquivos
`.env` no commit. Depois de publicar, confirmar o hash do commit, o estado
limpo da árvore de trabalho e o resultado do build.

## Comunicação e tomada de decisão

- se faltarem questões, alternativas ou gabarito, não inventar dados;
- pedir esclarecimento quando houver mais de uma interpretação razoável;
- para alterações pequenas de conteúdo, agir diretamente e validar;
- explicar no final os arquivos alterados, testes executados e commit
  publicado;
- mencionar limitações quando a prova estiver parcialmente cadastrada.

