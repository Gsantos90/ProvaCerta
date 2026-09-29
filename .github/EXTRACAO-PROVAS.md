# Guia de extração de provas e imagens

Este documento descreve, passo a passo, como as provas (questões, gabaritos,
textos e imagens de apoio) são extraídas dos PDFs e transformadas em arquivos de
_seed_ SQL para o Supabase. Ele serve de referência para adicionar novas provas
mantendo o mesmo padrão dos arquivos já existentes em `supabase/`.

## Visão geral do fluxo

1. Receber o PDF da prova + o gabarito oficial.
2. Ler o caderno e identificar: banca, ano, bloco/edição, turno e a divisão das
   questões (disciplinas ou eixos).
3. Extrair o enunciado, o texto de apoio e as 5 alternativas de cada questão.
4. Casar cada questão com a letra correta do gabarito.
5. Tratar as imagens de apoio (gráficos, tabelas, figuras, código, diagramas).
6. Gerar o arquivo `.sql` de _seed_ no padrão do projeto.
7. Registrar a prova no front-end (`src/main.jsx`).
8. Validar com `npm run build` e rodar o _seed_ no Supabase.

---

## 1. Dados de cabeçalho da prova

Antes de extrair as questões, anote os metadados que definem o `slug` e o
`title` da prova:

- **Fonte/banca** (`source`): ex. `cnu`, `pism`, `bb`, `enem`.
- **Ano/edição** (`year`): ex. `2024`, `2024-1`.
- **Bloco/turno**: ex. Bloco 2, Manhã (Conhecimentos Gerais) / Tarde
  (Conhecimentos Específicos).

Padrão de `slug` adotado (sem acentos, minúsculas, com hífens):

```
cnu-2024-bloco2-manha
cnu-2024-bloco2-tarde
```

Padrão de `title` (legível, pode ter acento):

```
CNU 2024 - Bloco 2 (Manhã) - Conhecimentos Gerais
CNU 2024 - Bloco 2 (Tarde) - Conhecimentos Específicos
```

---

## 2. Estrutura das questões

Cada questão vira uma linha na tabela `public.questions` com os campos:

| Campo           | Conteúdo                                                             |
| --------------- | ------------------------------------------------------------------- |
| `number`        | Número sequencial da questão dentro da prova (1, 2, 3, ...).         |
| `subject`       | Disciplina ou eixo. Ex.: `Conhecimentos Gerais`, `Eixo 1`..`Eixo 5`.|
| `text`          | Enunciado completo (comando da questão).                            |
| `support`       | Texto de apoio, quando houver. Vazio (`''`) quando não houver.      |
| `support_image` | Caminho da imagem em `/public`. Vazio (`''`) quando não houver.     |
| `options`       | Array JSON com as 5 alternativas, na ordem A–E.                     |
| `answer`        | Letra do gabarito: `A`, `B`, `C`, `D` ou `E`.                       |

### Regras de extração do texto

- **Enunciado (`text`)**: transcreva o comando da questão. Quando o enunciado faz
  referência a um texto/box de apoio ("Considere o texto a seguir..."),
  reescreva de forma que o enunciado continue fazendo sentido com o apoio
  separado no campo `support` (ex.: "Considere o texto de apoio sobre ... .").
- **Texto de apoio (`support`)**: vai no campo separado. Preserve a referência
  bibliográfica (autor, obra, ano) e a indicação "Adaptado" quando existir.
  Encurte URLs longas (ex.: `Disponível em: gov.br. Acesso em: 26 fev. 2024.`).
- **Alternativas (`options`)**: sempre 5 itens, na ordem A–E, sem a letra no
  início (a letra é inferida pela posição no array). O texto deve ser só o
  conteúdo da alternativa.
- **Gabarito (`answer`)**: uma única letra maiúscula.

### Correção de artefatos de PDF

PDFs frequentemente introduzem ruído. Ao transcrever, revise manualmente:

- acentuação e cedilha quebradas (`¸c` → `ç`, `´a` → `á`, `˜a` → `ã`, etc.);
- hifenização de fim de linha (junte a palavra: `desen- volvimento` →
  `desenvolvimento`);
- quebras de linha e espaços duplicados;
- artefatos de paginação (cabeçalhos/rodapés repetidos, marca "RASCUNHO",
  números de página).

Para as provas do PISM, parte dessa limpeza é automatizada pela função
`normalizeExtractedText` em `scripts/generate-pism-seed.mjs`. Para provas
transcritas manualmente (como o CNU), a limpeza é feita já na hora de escrever o
`.sql`.

---

## 3. Imagens de apoio

Algumas questões dependem de gráficos, tabelas, figuras, trechos de código ou
diagramas. Nesses casos usamos o campo `support_image`.

### Convenção de nomes e local

- Os arquivos ficam em `public/`.
- São referenciados por caminho iniciando em `/`, ex.:
  `/cnu-2024-2-tarde-questao-40.png`.
- Nome no padrão: `<slug-curto>-questao-<n>.<ext>`, ex.:
  `cnu-2024-2-tarde-questao-1.png`.
- O front-end renderiza a imagem com `<img class="support-image" src=...>` no
  painel "Texto ou imagem de apoio". Extensões `.png` e `.svg` funcionam
  igualmente (o navegador renderiza SVG nativamente em `<img>`).

### Dois tipos de imagem

1. **Recortes do PDF (PNG)** — gráficos, tabelas e figuras reais da prova
   (ex.: mapa de calor, tabela de mídia, árvore binária, tabela χ²). Esses são
   exportados/recortados do PDF e salvos como `.png` em `public/`.

2. **Reconstruções vetoriais (SVG)** — quando a questão traz **código-fonte** ou
   **diagramas** como alternativas (ex.: métodos Java, funções Python, diagramas
   Entidade-Relacionamento), o conteúdo é recriado como SVG. Isso porque:
   - o app não renderiza blocos de código/figuras dentro das alternativas;
   - SVG gera texto nítido e legível, sem depender de conversor de imagem.

   Nesses casos, a **imagem** mostra as 5 alternativas (A–E) com o código/diagrama
   fiel, e as `options` no _seed_ viram rótulos curtos que apontam para a imagem:

   ```json
   ["Alternativa (A)","Alternativa (B)","Alternativa (C)","Alternativa (D)","Alternativa (E)"]
   ```

   ```json
   ["Diagrama (A)","Diagrama (B)","Diagrama (C)","Diagrama (D)","Diagrama (E)"]
   ```

   O `answer` continua sendo a letra correta.

### Observação sobre fidelidade

As reconstruções em SVG são feitas a partir da leitura do PDF (o conteúdo é
transcrito fielmente), e não por recorte automático da página. Se for necessário
o recorte exato da imagem original, basta exportar do PDF e substituir o arquivo
em `public/` mantendo o mesmo nome — o `.sql` não precisa mudar.

---

## 4. Formato do arquivo de _seed_ SQL

Cada prova vira um arquivo em `supabase/`, ex.:
`seed-cnu-2024-bloco2-tarde.sql`.

### Cabeçalho (comentários)

```sql
-- Seed: CNU 2024 - Bloco 2 (Tecnologia, Dados e Informacao) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 02/2024 - Banca FGV/Cesgranrio
-- Prova 10 - Gabarito 1 - Conhecimentos Especificos (50 questoes objetivas, Eixos 1 a 5)
-- Gabarito: 1-C,2-A,3-D,4-C,5-E,...
```

### Inserção da prova

```sql
insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco2-tarde', 'CNU 2024 - Bloco 2 (Tarde) - Conhecimentos Específicos', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;
```

### Inserção de cada questão

O padrão usa `select ... from public.exams where slug = ...` para pegar o
`exam_id` pela `slug`, e `on conflict (exam_id, number) do update` para permitir
reexecutar o _seed_ sem duplicar (idempotente):

```sql
insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Eixo 1',
'Enunciado da questão...',
'',
'/cnu-2024-2-tarde-questao-1.png',
'["alternativa A","alternativa B","alternativa C","alternativa D","alternativa E"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco2-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
```

### Regras de escape (importante)

- Strings em SQL usam **aspas simples**. Aspas simples dentro do texto devem ser
  **duplicadas**: `d'água` → `d''água`; `''desmatricula''` para representar
  aspas na fala.
- Aspas duplas dentro do JSON de `options` (`"`) devem ser escapadas com
  `\"` quando estão dentro de uma alternativa (ex.: `\"milagre econômico\"`).
- `options` é um array JSON convertido para `jsonb` com `::jsonb`.
- Campos vazios são strings vazias `''`, não `null`.

---

## 5. Registro no front-end

Depois de criar o _seed_, registre a prova para que ela apareça na interface.

No arquivo `src/main.jsx`, no mapa `cnuExamSlugs`, adicione a combinação
`ano|nível|bloco|turno` → `slug`:

```js
const cnuExamSlugs = {
  '2024|superior|bloco-1|manha': 'cnu-2024-bloco1-manha',
  '2024|superior|bloco-1|tarde': 'cnu-2024-bloco1-tarde',
  '2024|superior|bloco-2|manha': 'cnu-2024-bloco2-manha',
  '2024|superior|bloco-2|tarde': 'cnu-2024-bloco2-tarde',
}
```

O rótulo do bloco/nível vem das configurações `cnuBlocksConfig` / `cnuLevelLabels`
no mesmo arquivo; confira se o bloco já está listado no ano correspondente.

---

## 6. Validação e carga

1. **Build local** para garantir que o front não quebrou:

   ```bash
   npm run build
   ```

2. **Carga no Supabase**: abra o SQL Editor, cole o conteúdo **inteiro** do
   arquivo `.sql` e execute.

   > Aviso conhecido: se a prova tiver uma questão de banco de dados cujo
   > enunciado contém, como texto, um comando `CREATE TABLE ...` (ex.: questão 33
   > do Bloco 2 Tarde: `CREATE TABLE PESSOA (...)`), o SQL Editor pode exibir o
   > alerta _"This query creates a table without enabling Row Level Security"_.
   > É um **falso positivo**: o `CREATE TABLE` está dentro de uma string (entre
   > aspas), então nenhuma tabela é criada — o script só faz `insert` em
   > `exams` e `questions`. Nesse caso, escolha **"Run without RLS"**.

3. **Conferência** após rodar:

   ```sql
   select count(*) from public.questions
   where exam_id = (select id from public.exams where slug = 'cnu-2024-bloco2-tarde');
   ```

   Deve retornar o número total de questões (ex.: 50). Para ver o gabarito:

   ```sql
   select number, answer from public.questions
   where exam_id = (select id from public.exams where slug = 'cnu-2024-bloco2-tarde')
   order by number;
   ```

---

## 7. Checklist para adicionar uma nova prova

- [ ] Definir `slug`, `title`, `source`, `year`.
- [ ] Transcrever enunciados, apoios e alternativas (5 por questão, ordem A–E).
- [ ] Casar cada questão com a letra do gabarito oficial.
- [ ] Salvar imagens de apoio em `public/` no padrão de nome.
- [ ] Para código/diagrama nas alternativas, gerar SVG e usar rótulos curtos.
- [ ] Escrever o `.sql` no padrão (cabeçalho + `insert exams` + `insert questions`).
- [ ] Escapar aspas simples (`''`) e aspas duplas no JSON (`\"`).
- [ ] Registrar o `slug` em `src/main.jsx` (`cnuExamSlugs`, quando CNU).
- [ ] Rodar `npm run build`.
- [ ] Executar o `.sql` no Supabase e conferir a contagem de questões.
