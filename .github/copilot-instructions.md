# Steering do projeto provacerta

## Objetivo do projeto

O `provacerta` é uma SPA React para estudo de provas. A experiência principal
é um simulado interativo: o estudante escolhe uma prova (ou monta um simulado
personalizado), responde às questões, recebe a correção automática e pode
revisar cada resposta com o gabarito e a explicação.

O catálogo abrange várias origens de prova: PISM, ENEM, CNU, OAB, PMERJ,
Polícia Civil (PC), Polícia Federal (PF), Banco do Brasil (BB), UERJ e USP
(FUVEST). O ENEM é carregado sob demanda pela API pública; as demais provas
vêm do Supabase.

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
  simulado personalizado, resultado, revisão e renderização. As provas vêm do
  Supabase (não há questões embutidas no código); apenas o ENEM 2023 de
  inglês/espanhol continua hardcoded, e o restante do ENEM vem da API pública;
- `src/lib/supabase.js`: cria o cliente Supabase a partir das variáveis de
  ambiente e injeta `preconnect`/`dns-prefetch` para o domínio do projeto;
- `supabase/`: schema, policies, índices e seeds do banco (fonte de verdade das
  provas);
  - `schema.sql`: tabelas, RLS e lista de slugs cadastrados;
  - `policies.sql`: políticas RLS documentadas e recomendadas (re-executável);
  - `indexes.sql`: índices de performance de `questions` (re-executável);
  - `seed-*.sql`: um arquivo por prova; todos usam `on conflict do update`;
- `src/styles.css`: identidade visual, layout, responsividade e componentes;
- `public/`: imagens de apoio referenciadas por caminhos iniciados em `/`;
- `index.html`: inclui `preconnect` para a API do ENEM;
- `vercel.json`: `Cache-Control` de longa duração para imagens (`public/`);
- `pdf-extracts/`: material de conferência extraído dos PDFs, não usado
  diretamente durante a execução;
- `README.md`: documentação pública para instalação, manutenção e contribuição.

> Nota: os antigos `src/2024-1-questions.json`/`2024-2-questions.json` e o
> script `scripts/generate-pism-seed.mjs` foram descontinuados — os seeds em
> `supabase/` são a fonte de verdade das provas.

## Provas atualmente cadastradas

As provas vêm do Supabase (ver a lista completa de slugs em `supabase/schema.sql`).
As origens cobrem PISM, CNU, OAB, PMERJ, Polícia Civil, Polícia Federal, Banco
do Brasil, UERJ e USP (FUVEST). Além disso:

- o ENEM é carregado sob demanda pela API pública (`https://api.enem.dev`), com
  exceção do ENEM 2023 de inglês/espanhol, que permanece hardcoded em
  `main.jsx`;
- o **simulado personalizado** monta uma prova por grau de ensino (médio/
  superior), matérias e quantidade de questões, sorteando entre as questões já
  cadastradas no banco.

Novas questões/provas só devem ser adicionadas quando o usuário fornecer os
enunciados, alternativas e gabarito.

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

### Convenção para o campo `subject` (nome da matéria)

O `subject` deve conter apenas o nome limpo da matéria/área, sem prefixos de
numeração ou rotulação da banca. Em provas do CNU, os cadernos trazem títulos
como `Eixo Temático 1 - Seguridade Social`; nesse caso, grave somente a parte
descritiva, descartando o trecho `Eixo Temático N -`.

- usar `Seguridade Social` (e não `Eixo Temático 1 - Seguridade Social`);
- usar `Saúde` (e não `Eixo Temático 2 - Saúde`);
- usar `Previdência Social` (e não `Eixo Temático 4 - Previdência Social`);
- do mesmo modo para `Assistência Social`, `Saúde e Segurança do Trabalho`,
  `Justiça e Defesa`, `Gestão Governamental e Métodos Aplicados` etc.;
- para o bloco inicial comum do CNU, usar `Conhecimentos Gerais`;
- a mesma lógica vale para qualquer outra banca: remover rótulos de seção como
  `Eixo`, `Bloco`, `Parte`, `Grupo` ou numerações, preservando apenas o nome
  temático da disciplina.

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


## Banco de dados (Supabase)

O schema completo está em `supabase/schema.sql`. O banco tem três tabelas com
RLS habilitado. As variáveis de conexão ficam em `.env.local` como
`VITE_SUPABASE_URL` e `VITE_SUPABASE_PUBLISHABLE_KEY`. Nunca usar a chave
`service_role` no navegador — toda a proteção depende do RLS.

Arquivos SQL relacionados (todos re-executáveis com segurança):

- `supabase/schema.sql`: tabelas, RLS inicial e slugs cadastrados;
- `supabase/policies.sql`: policies RLS documentadas/recomendadas;
- `supabase/indexes.sql`: índices de performance de `questions`.

### Tabela `exams`

Representa uma prova cadastrada.

| Coluna | Tipo | Descrição |
| --- | --- | --- |
| `id` | `uuid` PK | Identificador único gerado automaticamente. |
| `slug` | `text` UNIQUE | Identificador textual da prova, ex: `pism-2025-1`. |
| `title` | `text` | Nome exibido, ex: `PISM 2025-1`. |
| `source` | `text` | Origem da prova; padrão `pism`. |
| `year` | `text` | Ano/edição da prova, ex: `2025-1`. |
| `created_at` | `timestamptz` | Data de criação, preenchida automaticamente. |

**Slugs cadastrados:** ver a lista completa em `supabase/schema.sql` (PISM, BB,
CNU, OAB, PMERJ, PC, PF, UERJ, USP e ENEM 2024). O campo `source` identifica a
origem (`pism`, `cnu`, `oab`, `pmerj`, `pc`, `pf`, `bb`, `uerj`, `usp`, `enem`).

### Tabela `questions`

Representa uma questão objetiva.

| Coluna | Tipo | Descrição |
| --- | --- | --- |
| `id` | `uuid` PK | Identificador único gerado automaticamente. |
| `exam_id` | `uuid` FK → `exams.id` | Prova à qual a questão pertence. |
| `number` | `integer` | Número de ordem dentro da prova. |
| `subject` | `text` | Disciplina/área, ex: `Língua Portuguesa`, `Matemática`, `Seguridade Social`. Nome limpo, sem prefixos de seção da banca (ex.: gravar `Seguridade Social`, não `Eixo Temático 1 - Seguridade Social`). Ver "Convenção para o campo `subject`". |
| `text` | `text` | Enunciado completo da questão. |
| `support` | `text` | Texto de apoio exibido na lateral (opcional). |
| `support_image` | `text` | Caminho da imagem em `/public/`, ex: `/texto-3-cerrado.png` (opcional). |
| `options` | `jsonb` | Array JSON com as cinco alternativas, ordem A–E. |
| `answer` | `text` | Gabarito oficial: `A`, `B`, `C`, `D` ou `E`. |
| `explanation` | `text` | Explicação da resposta, exibida na revisão (opcional). |
| `created_at` | `timestamptz` | Data de criação, preenchida automaticamente. |

A combinação `(exam_id, number)` é única. A coluna `answer` é restrita às
letras `A`–`E` por um `CHECK`. Cada questão carrega seu próprio texto e
imagem de apoio — o painel lateral é exibido quando ao menos um desses campos
está preenchido. A `explanation`, quando presente, aparece na revisão.

### Tabela `attempts`

Registra uma tentativa concluída por um estudante autenticado.

| Coluna | Tipo | Descrição |
| --- | --- | --- |
| `id` | `uuid` PK | Identificador único gerado automaticamente. |
| `user_id` | `uuid` FK → `auth.users.id` | Usuário que realizou a tentativa. |
| `exam_slug` | `text` | Slug da prova realizada. |
| `exam_title` | `text` | Nome legível da prova no momento da tentativa. |
| `score` | `integer` | Quantidade de acertos. |
| `total` | `integer` | Total de questões da prova. |
| `answers` | `jsonb` | Mapa `{ índice: letra }` com as respostas do estudante. |
| `completed_at` | `timestamptz` | Data e hora da entrega. |

### Políticas RLS

Definidas em `supabase/schema.sql` e documentadas/refinadas em
`supabase/policies.sql`.

| Tabela | Política | Regra |
| --- | --- | --- |
| `exams` | leitura pública | `for select using (true)` |
| `questions` | leitura pública | `for select using (true)` |
| `attempts` | leitura própria | `for select ... using (auth.uid() = user_id)` |
| `attempts` | criação própria | `for insert ... with check (auth.uid() = user_id)` |

Observações de segurança:

- `exams`/`questions` não têm policy de insert/update/delete. Com RLS ligado,
  o que não tem policy é negado — por isso a anon key não escreve nessas
  tabelas. A escrita (seeds) é feita pelo SQL Editor do painel.
- Em `policies.sql`, as policies de `attempts` são aplicadas ao role
  `authenticated` (defesa em profundidade), e não ao `public`.
- Recomendado ativar no painel o "Automatically enable RLS on new tables" e
  confirmar que a env (app e Vercel) usa a chave anon, nunca a service_role.

### Seed

Há um arquivo de seed por prova em `supabase/` (`seed-<slug>.sql`). Todos os
INSERTs usam `on conflict (exam_id, number) do update` para permitir
re-execução segura sem duplicar dados.

Quando imagens de apoio são preenchidas manualmente no banco (ex.: USP), o
`support_image` pode ser removido da cláusula `on conflict do update` do seed
para que reaplicar o arquivo não sobrescreva o valor digitado à mão.

### Mapeamento front-end → banco

Cada card de prova (PISM, BB, CNU, OAB, PMERJ, PC, PF, UERJ, USP) resolve um
`slug` a partir das suas seleções (ano, cargo, bloco, edição etc.) e chama
`loadSupabaseExam(slug)`. Essa função:

- reaproveita um cache em memória por slug (`supabaseExamCache`) para não
  refazer a requisição ao reabrir a mesma prova na sessão;
- lê somente as colunas usadas (sem `select('*')`).

As colunas são renomeadas na leitura:

```js
{
  subject:      question.subject,
  text:         question.text,
  support:      question.support,       // coluna support
  supportImage: question.support_image, // coluna support_image
  options:      question.options,
  answer:       question.answer,
  explanation:  question.explanation,   // coluna explanation
}
```

O simulado personalizado (`startSimulado`) não usa `loadSupabaseExam`: ele
consulta `exams`/`questions` diretamente, classifica por grau de ensino
(`simuladoLevelForExam`) e sorteia as questões das matérias escolhidas.
