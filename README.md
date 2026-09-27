# provacerta

Plataforma web de estudos para provas famosas, com foco inicial no **PISM**. O
projeto transforma questões e textos de apoio em simulados interativos,
permitindo que o estudante responda às questões, receba o resultado e revise
cada alternativa com o gabarito oficial.

## Visão geral

O provacerta foi desenvolvido para oferecer uma experiência simples e
intuitiva de preparação para provas. A aplicação funciona como uma SPA
(Single-Page Application), sem backend ou cadastro obrigatório.

Atualmente estão disponíveis:

- PISM 2025-1;
- PISM 2025-2;
- PISM 2024-1;
- PISM 2024-2.
- ENEM 2009 a 2023, carregado sob demanda pela [API pública do ENEM](https://docs.enem.dev/introduction);
  a prova pode ser filtrada por ano, área e idioma.

## Funcionalidades

### Simulados

- Seleção da prova por ano e dia;
- Organização das questões por disciplina;
- Navegação pelas questões usando os botões anterior e próxima;
- Grade lateral para acessar diretamente qualquer questão;
- Indicador de progresso com a quantidade de questões respondidas;
- Alternativas com áreas amplas e marcáveis;
- Identificação visual da questão atual.

### Correção e resultado

- Correção automática baseada no gabarito cadastrado;
- Exibição da quantidade de acertos;
- Cálculo do percentual de aproveitamento;
- Resumo por disciplina;
- Mensagens de desempenho e incentivo ao estudo;
- Opção para reiniciar a prova.

### Revisão

- Acesso à revisão após a entrega da prova;
- Exibição da resposta escolhida pelo estudante;
- Destaque da alternativa correta;
- Identificação de respostas incorretas;
- Navegação entre as questões durante a revisão;
- Botão para sair da revisão e retornar ao resultado.

### Textos e imagens de apoio

- Painéis expansíveis para textos de apoio;
- Textos associados às questões e às disciplinas correspondentes;
- Referências explícitas a Texto 1, Texto 2, Texto 3 e demais materiais;
- Imagens de charges, mapas e figuras da prova;
- Textos alternativos nas imagens para melhorar a acessibilidade;
- Figuras 1, 2 e 3 disponíveis na questão 6 do PISM 2024-1.
- Imagens de apoio das questões 2 e 3 do ENEM 2023.

### Integração com a API do ENEM

O cartão do ENEM consulta o catálogo de provas em `https://api.enem.dev/v1/exams`.
Ao iniciar uma prova, as questões do ano selecionado são carregadas em páginas
de até 50 itens, respeitando o limite de uma requisição por segundo da API.
Os dados ficam em cache durante a sessão e são filtrados no navegador por área
e idioma. O simulado usa o gabarito oficial retornado em `correctAlternative`.

Se a API estiver indisponível, a interface exibe a mensagem de erro e mantém
as provas locais do PISM disponíveis.

### Integração com Supabase

O projeto usa o cliente browser do Supabase para:

- autenticar estudantes por e-mail e senha;
- carregar questões PISM cadastradas no banco, com fallback para os JSONs locais;
- salvar cada tentativa concluída, incluindo respostas, acertos e prova realizada.

As variáveis ficam em `.env.local` usando os nomes `VITE_SUPABASE_URL` e
`VITE_SUPABASE_PUBLISHABLE_KEY`. Nunca use uma chave `service_role` no
navegador.

Para configurar o banco, execute `supabase/schema.sql` no SQL Editor do
Supabase. Para carregar as questões, execute também os seeds:

```bash
# PISM 2024-1 e 2024-2
supabase/seed-pism-2024.sql

# PISM 2025-1 e 2025-2
supabase/seed-pism-2025.sql
```

O seed pode ser regenerado com:

```bash
npm run supabase:seed:pism
```

As políticas RLS permitem leitura pública de provas e questões e restringem
tentativas ao usuário autenticado que as criou.

## Estrutura do banco de dados

O banco é composto por três tabelas com RLS habilitado.

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

Slugs atualmente cadastrados: `pism-2025-1`, `pism-2025-2`, `pism-2024-1`,
`pism-2024-2`.

### Tabela `questions`

Representa uma questão objetiva de uma prova.

| Coluna | Tipo | Descrição |
| --- | --- | --- |
| `id` | `uuid` PK | Identificador único gerado automaticamente. |
| `exam_id` | `uuid` FK → `exams.id` | Prova à qual a questão pertence. |
| `number` | `integer` | Número de ordem da questão dentro da prova. |
| `subject` | `text` | Disciplina, ex: `Língua Portuguesa`, `Matemática`. |
| `text` | `text` | Enunciado completo da questão. |
| `support` | `text` | Texto de apoio exibido na lateral da prova (opcional). |
| `support_image` | `text` | Caminho da imagem em `/public/`, ex: `/texto-3-cerrado.png` (opcional). |
| `options` | `jsonb` | Array JSON com as cinco alternativas, ordem A–E. |
| `answer` | `text` | Gabarito oficial: `A`, `B`, `C`, `D` ou `E`. |
| `created_at` | `timestamptz` | Data de criação, preenchida automaticamente. |

A combinação `(exam_id, number)` é única. A coluna `answer` aceita apenas
as letras `A`–`E`. Cada questão carrega seu próprio texto e imagem de apoio —
o painel lateral é exibido quando ao menos um desses campos está preenchido.

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

| Tabela | Política | Regra |
| --- | --- | --- |
| `exams` | leitura pública | `for select using (true)` |
| `questions` | leitura pública | `for select using (true)` |
| `attempts` | leitura própria | `for select using (auth.uid() = user_id)` |
| `attempts` | criação própria | `for insert with check (auth.uid() = user_id)` |

## Tecnologias utilizadas

- [React](https://react.dev/) 18;
- [Vite](https://vite.dev/) 6;
- [React DOM](https://react.dev/reference/react-dom);
- [Lucide React](https://lucide.dev/) para os ícones;
- [Supabase](https://supabase.com/) para autenticação, questões e progresso;
- JavaScript com módulos ES;
- JSON para armazenamento das questões de 2024;
- API pública do ENEM para provas e questões de 2009 a 2023;
- CSS responsivo sem framework visual externo.

## Requisitos

Antes de executar o projeto, instale:

- Node.js 18 ou superior;
- npm, incluído na instalação do Node.js.

Confira as versões instaladas:

```bash
node --version
npm --version
```

## Instalação

Clone o repositório e entre na pasta do projeto:

```bash
git clone https://github.com/Gsantos90/ProvaCerta.git
cd ProvaCerta
```

Instale as dependências:

```bash
npm install
```

## Executando em desenvolvimento

Inicie o servidor local do Vite:

```bash
npm run dev
```

Depois, abra no navegador o endereço informado pelo Vite, normalmente:

```text
http://localhost:5173
```

O servidor de desenvolvimento atualiza a página automaticamente quando os
arquivos do projeto são alterados.

## Scripts disponíveis

| Comando | Descrição |
| --- | --- |
| `npm run dev` | Inicia o servidor de desenvolvimento do Vite. |
| `npm run build` | Gera a versão otimizada para produção na pasta `dist/`. |
| `npm run preview` | Executa localmente uma prévia da versão gerada em `dist/`. |

Para validar uma alteração antes de publicá-la:

```bash
npm run build
```

## Estrutura do projeto

```text
.
├── public/
│   ├── pism-2024-1-figura-1.png
│   ├── pism-2024-1-figura-2.png
│   ├── pism-2024-1-figura-3.png
│   ├── texto-2-periferia.png
│   ├── texto-3-cerrado.png
│   └── texto-4-inteligencia-artificial.png
├── src/
│   ├── 2024-1-questions.json
│   ├── 2024-2-questions.json
│   ├── main.jsx
│   └── styles.css
├── pdf-extracts/
├── index.html
├── package.json
└── README.md
```

### Arquivos principais

#### `src/main.jsx`

É o ponto principal da aplicação. Esse arquivo contém:

- o carregamento das provas do PISM a partir do Supabase;
- as questões hardcoded do ENEM 2023 (inglês e espanhol), que não estão no banco;
- a seleção dinâmica da prova;
- o estado da questão atual;
- as respostas do estudante;
- a tela de resultado;
- o modo de revisão;
- os controles de acessibilidade (zoom e leitura em áudio);
- a renderização dos textos e imagens de apoio;
- a normalização de alguns textos extraídos de PDF.

As questões e os textos de apoio das provas do PISM não são mais embutidos no
código: eles vêm do Supabase. Se o banco não estiver configurado ou não tiver
a prova cadastrada, o cartão do PISM exibe uma mensagem de erro.

#### `src/2024-1-questions.json` e `src/2024-2-questions.json`

Contêm as questões objetivas, alternativas e gabaritos das provas de 2024.
Servem como **fonte de dados para gerar o seed do banco** por meio de
`scripts/generate-pism-seed.mjs`. A aplicação **não** importa mais esses
arquivos em tempo de execução — as provas do PISM são carregadas do Supabase.
Cada questão segue uma estrutura semelhante a:

```json
{
  "subject": "Geografia",
  "text": "Enunciado da questão",
  "options": [
    "Alternativa A",
    "Alternativa B",
    "Alternativa C",
    "Alternativa D",
    "Alternativa E"
  ],
  "answer": "A"
}
```

O valor de `answer` deve ser uma letra entre `A` e `E`.

#### `src/styles.css`

Contém os estilos da interface, incluindo:

- identidade visual do provacerta;
- layout do simulado;
- grade de questões;
- cartões de alternativas;
- resultado e revisão;
- painéis expansíveis;
- imagens de apoio;
- responsividade para telas menores.

#### `public/`

Armazena imagens exibidas diretamente pela aplicação. Os arquivos são
referenciados por caminhos iniciados em `/`, por exemplo:

```jsx
<img src="/pism-2024-1-figura-1.png" alt="Mapa de massas de ar no inverno" />
```

#### `pdf-extracts/`

Guarda materiais de apoio gerados durante a extração e organização dos PDFs
das provas. Esses arquivos não são importados diretamente pela aplicação em
tempo de execução, mas ajudam na conferência e manutenção do conteúdo.

## Fluxo de funcionamento

1. O estudante escolhe uma prova na tela inicial.
2. A aplicação carrega o conjunto de questões correspondente.
3. O estudante navega pelas questões e marca uma alternativa.
4. A resposta fica salva no estado da aplicação.
5. Ao finalizar, cada resposta é comparada ao campo `answer`.
6. A aplicação calcula os acertos e exibe o resultado.
7. O estudante pode abrir a revisão e navegar questão por questão.
8. Na revisão, a resposta escolhida e a alternativa correta ficam destacadas.

## Adicionando uma nova prova

Para adicionar uma nova prova, siga estes passos:

1. Prepare um arquivo JSON com as questões, alternativas e gabaritos.
2. Importe o arquivo em `src/main.jsx`.
3. Adicione uma identificação para a nova prova no seletor.
4. Inclua a prova na lógica que escolhe o conjunto de questões ativo.
5. Cadastre os textos e as imagens de apoio, quando existirem.
6. Verifique se os enunciados fazem referência correta aos textos.
7. Execute `npm run build`.
8. Teste o fluxo completo no navegador: seleção, resposta, resultado e revisão.

Ao incluir textos extraídos de PDFs, revise manualmente acentuação, cedilha,
quebras de linha, hifenização e possíveis artefatos de paginação.

## Acessibilidade e UX

O projeto segue alguns princípios básicos de experiência do usuário:

- hierarquia visual clara;
- feedback imediato ao marcar uma alternativa;
- navegação previsível entre questões;
- separação entre realização da prova, resultado e revisão;
- textos de apoio recolhidos por padrão para reduzir a sobrecarga visual;
- descrições alternativas nas imagens;
- botões e áreas de interação adequados para uso em telas menores;
- indicação visual de respostas corretas e incorretas.

## Conteúdo e direitos autorais

As questões, textos, imagens e referências devem ser utilizados de acordo com
as permissões aplicáveis e com as fontes originais. Ao adicionar novos
materiais, mantenha a referência bibliográfica, a data de acesso e a indicação
de adaptações quando necessário.

## Publicação

O projeto pode ser publicado em qualquer serviço compatível com aplicações
estáticas, como GitHub Pages, Vercel ou Netlify.

Para gerar os arquivos de produção:

```bash
npm run build
```

O resultado será criado em `dist/`. A configuração de publicação pode variar
conforme o serviço escolhido.

## Contribuição

1. Crie uma branch para sua alteração:

   ```bash
   git checkout -b feat/minha-alteracao
   ```

2. Faça a alteração mantendo os padrões existentes.
3. Execute `npm run build`.
4. Revise o fluxo no navegador.
5. Registre um commit claro:

   ```bash
   git commit -m "feat: descreve a alteração"
   ```

6. Envie a branch e abra um pull request.

## Licença

Este projeto ainda não possui um arquivo de licença definido. Antes de
redistribuir o código ou os materiais de prova, defina uma licença para o
software e verifique separadamente os direitos dos conteúdos educacionais,
textos e imagens utilizados.
