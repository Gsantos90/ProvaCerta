# provacerta

Plataforma web de estudos para provas de concursos, vestibulares e exames. O
projeto transforma questões e textos de apoio em simulados interativos,
permitindo que o estudante responda às questões, receba o resultado e revise
cada alternativa com o gabarito oficial e a explicação.

## Visão geral

O provacerta foi desenvolvido para oferecer uma experiência simples e
intuitiva de preparação para provas. A aplicação funciona como uma SPA
(Single-Page Application), sem cadastro obrigatório. As provas são carregadas
do Supabase (conteúdo público), incluindo as provas do ENEM.

O login é opcional: provas, simulados, redação, resultados e revisão continuam
acessíveis sem conta. Quem entra pode guardar tentativas, consultar o histórico
e revisar as questões respondidas incorretamente no caderno de erros.

Origens de prova disponíveis no catálogo:

- **PISM** (UFJF);
- **ENEM** 2022, 2023, 2024 e 2025, pelo Supabase, com seleção uniforme de ano, área e idioma;
- **CNU** (Concurso Nacional Unificado);
- **OAB** (Exame de Ordem);
- **PMERJ**, **Polícia Civil** (incluindo Perito Criminal - Química 2022) e
   **Polícia Federal**;
- **Correios** (Carteiro 2024 e 2011; Atendente Comercial e Operador de Triagem e Transbordo 2011);
- **CAIXA** (Técnico Bancário Novo 2024);
- **Banco do Brasil**;
- **UERJ** (Vestibular Estadual);
- **USP** (FUVEST);
- **ITA**, primeira e segunda fase de 2026;
- **EFOMM**, **ESA**, **EsPCEx** e **CBMERJ**;
- **EBSERH**;
- **Unicamp** 2026, 2025 e 2024: primeira fase interativa (216 questões) e segunda fase em PDF com respostas esperadas. [Fontes e importação](docs/unicamp-2024-2026.md).
- **INSS** 2016 (Técnico e Analista/Serviço Social), 2022 (Técnico) e CNU 2025 (Analista, blocos 1, 3, 4 e 5).

Entradas ainda em preparação são identificadas como **Em breve**. Um card
não garante que todas as edições tenham prova interativa.

Além das provas completas, o usuário pode **criar um simulado personalizado**,
escolhendo o grau de ensino (médio/superior), as matérias e a quantidade de
questões — a prova é montada sorteando questões já cadastradas no banco.

## Funcionalidades

### Conta e login opcional

- Círculo de login no canto superior direito, ao lado do controle de tema;
- Entrada e cadastro com e-mail e senha, com confirmação por e-mail;
- Recuperação de senha por link e formulário para escolher a nova senha;
- Menu da conta com **Meu progresso**, **Minha conta** e **Sair**;
- Acesso completo ao estudo sem cadastro obrigatório;
- Convite **Entre ou crie uma conta** no resultado do visitante, sem esconder a
  nota ou a revisão.

Para criar uma conta, clique no círculo, escolha **Criar conta**, informe o
e-mail e uma senha de pelo menos oito caracteres e repita a senha. Confirme o
cadastro pelo link enviado por e-mail. Para entrar em uma conta existente,
use **Entrar**; para recuperar o acesso, escolha **Esqueci minha senha**.

### Meu progresso e caderno de erros

Ao concluir uma prova com a conta conectada, o resultado é salvo automaticamente.
O histórico mostra prova, data, modo de estudo, pontuação e quantidades de
acertos, erros, questões em branco e anuladas. Um identificador por tentativa
evita duplicar o resultado ao abrir a revisão e voltar.

O visitante pode escolher guardar a tentativa na tela de resultado e entrar
sem refazer a prova. Essa escolha preserva temporariamente a última tentativa
no navegador, inclusive quando a confirmação por e-mail abre outra aba. Após
o salvamento, a cópia temporária é removida. A tentativa fica vinculada à
primeira conta que entra; resultados de uma conta não são transferidos para outra.

No menu da conta, **Meu progresso** abre as abas **Histórico**, **Caderno de
erros** e **Minha conta**. Histórico e caderno usam páginas de 20 tentativas.
O caderno reúne os erros das tentativas da página selecionada e permite abrir
cada questão para consultar apoio, figuras, alternativas, resposta marcada,
gabarito, explicação e link oficial, quando disponíveis. O conteúdo é preservado
como estava na conclusão da prova. Questões em branco e anuladas aparecem
nos totais do histórico, sem entrar no caderno.

Os dados salvos podem ser consultados em outros dispositivos usando a mesma
conta. Em caso de falha de conexão, a interface oferece **Tentar novamente**.
Tentativas anteriores à implementação não são importadas automaticamente.
Redações continuam com armazenamento local; esta versão não inclui login
Google ou sincronização de redações entre dispositivos.

### Tema e navegação

- Opção de modo claro/escuro, com preferência guardada no navegador;
- Interface de login e progresso compatível com os dois temas;
- Menu superior e círculo da conta ocultos durante a prova e a revisão;
- Controle de tema disponível durante o estudo;
- Ação **Informar problema** discreta, com foco visível para navegação por teclado.

### Área Estudar

**Um assunto de cada vez** oferece Questões por assunto, Resumos,
Destrinchando o conteúdo, Minha revisão e Planejamento.

- **Aprenda antes de praticar**: 46 resumos em oito matérias (14 de Matemática,
  12 de História, 3 de Português, 3 de Química, 4 de Física, 3 de Biologia,
  2 de Geografia e 5 de Redação).
- **Questões por assunto**: 41 assuntos autorais. Prioriza rodadas locais;
  quando não há questões locais para o assunto, consulta o banco autoral.
  Quantidade e prevenção de repetição dependem do caminho.
- **Matemática**: oito aulas novas de Trigonometria, Logaritmos, Inequações,
  Relações trigonométricas, Área dos polígonos e dos triângulos, Função
  quadrática, Função exponencial e Função logarítmica. Incluem 24 exemplos
  resolvidos, oito explorações interativas e 24 questões comentadas.
- **História**: sete aulas novas de Grandes Navegações, América espanhola,
  América inglesa, Sociedades africanas, África antiga, Egito antigo e
  Antiguidade clássica. Incluem cronologia, aprofundamento, fontes,
  exemplos comentados, revisão e 21 questões autorais locais.
- **Podcasts**: oito episódios, incluindo os três novos de Grandes Navegações,
  América espanhola e América inglesa. Mesmo player, sem reprodução automática,
  com pausa ao trocar de assunto ou sair da aba Resumos.
- **Redação**: cinco resumos e acesso à prática específica. Atividades embutidas
  em aulas não são registradas como tentativas no histórico.
- **Destrinchando o conteúdo**: 135 questões objetivas de Matemática, Física e
  Química do PISM, edições oficiais 2024–2026, módulos I, II e III. Enunciado,
  alternativas, figuras e resolução detalhada ficam abertos.
- **Planejamento**: atividades manuais, plano automático por prova, horários,
  conclusão, notas, links e calendário, com persistência local.
- **Minha revisão**: erros das últimas 100 tentativas da conta, agrupados por
  assunto ou matéria. A contagem representa ocorrências, não domínio do tema.
  Histórico depende de login; leitura, podcasts e prática continuam livres.

Resumos e novas questões locais não dependem de IA nem exigem migração no banco.
Veja o [guia de inclusão de resumos e podcasts](docs/resumos-e-podcasts.md),
[Destrinchando](docs/destrinchando-conteudo.md) e
[Planejamento](docs/planejamento-estudos.md).

### Provas e simulados

- Catálogo de provas por origem, com seleção de ano, cargo, bloco ou edição;
- Faculdades públicas, Concursos e OAB começam recolhidos. O cabeçalho com seta
  abre e fecha os cards, sem os textos “Expandir provas” e “Recolher provas”;
- Cards com capa colorida no topo, nome, descrição curta e anos das edições;
  animação suave ao passar o mouse, respeitando a preferência por movimento reduzido; **Escolher
  prova** abre os seletores em uma janela, sem ocupar espaço no catálogo;
- Última tentativa e pontuação no card para quem está logado, com acesso ao
  histórico; o resultado se refere à última edição praticada daquela origem;
- Cards em uma coluna no celular, categorias recolhíveis, busca acessível e
  botão para limpar filtros; seletores e botões adaptados ao toque;
- Simulado personalizado por grau de ensino, matérias e quantidade de questões;
- Organização das questões por disciplina;
- Navegação pelas questões usando os botões anterior e próxima;
- Grade lateral para acessar diretamente qualquer questão;
- Indicador de progresso com a quantidade de questões respondidas;
- Alternativas com áreas amplas e marcáveis;
- Identificação visual da questão atual.

### Ferramentas de ajuda durante a prova

Botão flutuante no canto inferior direito, sem deslocar o layout. Abre dois
círculos menores, centralizados acima dele, para **Calculadora** e **Anotações**.
Todos usam `#273753`; os nomes aparecem no hover ou foco pelo teclado.
As janelas podem ficar abertas simultaneamente e ser arrastadas pelo cabeçalho.

Disponível em provas objetivas, simulados, prática por assunto, revisão,
discursivas UERJ/ITA e redação. As notas são salvas por conta/visitante e prova
neste navegador, sem sincronização e sem uma nota diferente por tentativa.
A calculadora é básica e sequencial. As ferramentas não pausam o cronômetro.
Detalhes: [Ferramentas das provas](docs/ferramentas-provas.md).

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
- Suporte a múltiplas imagens por questão (caminhos separados por vírgula no
  campo `support_image`).

### ENEM no banco próprio

Revisão de 25/10/2026: 42 questões receberam reparos selecionados de espaçamento,
quebras de versos e referências de imagens, incluindo recortes completos em
25 questões. A questão 16 de 2022 usa um único infográfico com texto e ilustrações.
Gabaritos, alternativas e IDs foram preservados. Consulte o
[registro da revisão e da aplicação segura](docs/enem-revisao-2026-10-25.md).

O card usa exclusivamente as tabelas exams e questions do Supabase. **Escolher
prova** abre os mesmos três seletores para os quatro anos: ano, área (completa, dia ou disciplina)
e idioma. O idioma fica desabilitado quando a seleção não inclui Linguagens.
Cada prova completa contém 180 questões; selecionar espanhol substitui as
cinco questões de inglês, sem aumentar o total.

A atualização de 2022, 2023 e 2025 foi aplicada no ProvaCerta em 7 de outubro de 2026.
A query reexecutável está em supabase/update-enem-content-2022-2023-2025.sql.
Ela corrige registros existentes e cadastra os que faltam, preservando IDs e
explicações existentes. Não altera o conteúdo do ENEM 2024, o schema ou as permissões.
Cada ano armazena 185 registros: os números internos 181–185 representam as
questões oficiais 1–5 de espanhol, que substituem as cinco de inglês na seleção.
A prova completa continua com 180 questões.

Os cadernos usados são os amarelos da aplicação regular, com gabaritos do Inep.
Os campos seguem o padrão das demais provas:

- text: comando/enunciado da questão;
- support: textos de apoio, contexto, tabelas transcritas e fontes;
- support_image: apenas figuras, gráficos, mapas, fotos, charges e alternativas gráficas;
- options: cinco alternativas em texto, com indicação da figura quando necessário.

Os textos compartilhados pelas questões 6–10 de 2025 estão associados a cada
questão. Imagens não reproduzem a questão completa. As figuras locais ficam em
public/enem-2022, public/enem-2023 e public/enem-2025 e devem ser publicadas junto
com o site. Podem ser ampliadas no painel de apoio. Os comentários iniciais são
os gabaritos oficiais; as explicações que já existiam no banco são preservadas.
Questões anuladas usam A/B/C/D/E e recebem ponto automaticamente.

A aplicação não chama a antiga API e não mantém fallback para ela.
Anos anteriores a 2022 deixam de aparecer até serem importados ao banco.

Os PDFs e registros de conferência ficam em pdf-extracts/enem-migration.
Para regenerar a importação, execute scripts/import-enem-bank.py com PyMuPDF,
rapidfuzz, pdfplumber e Pillow disponíveis. O fluxo separa texto e figuras,
conserva legendas e aplica as transcrições de fórmulas e tabelas conferidas.
Verificação local: node scripts/verify-enem-bank.mjs. Conferência do banco após
aplicar a query: node scripts/read-enem-db.mjs --verify.


### Integração com Supabase

O projeto usa o cliente browser do Supabase para ler provas e questões públicas,
autenticar contas e gravar resultados privados. Também permite enviar relatos
de problemas. A chave anon/publishable é usada com permissões e políticas RLS;
o login continua opcional para acessar o conteúdo de estudo.

As variáveis ficam em `.env.local` usando os nomes `VITE_SUPABASE_URL` e
`VITE_SUPABASE_PUBLISHABLE_KEY`. Nunca use uma chave `service_role` no
navegador — toda a proteção depende do RLS.

Para configurar o banco, execute no SQL Editor do Supabase, na ordem:

```text
supabase/schema.sql     # tabelas, RLS e slugs cadastrados
supabase/policies.sql   # políticas RLS recomendadas (opcional, re-executável)
supabase/indexes.sql    # índices de performance (recomendado)
supabase/setup-study-history.sql # histórico privado e caderno de erros
```

Depois, carregue as provas executando os seeds desejados (um arquivo por prova,
no padrão `supabase/seed-<slug>.sql`). Todos usam
`on conflict (exam_id, number) do update`, então são seguros de re-executar.

As políticas RLS permitem leitura pública de provas e questões e restringem a
tabela `exam_attempts` ao usuário autenticado que criou cada tentativa. A tabela
legada `attempts` permanece no schema, mas não é usada pelo novo histórico. Recomenda-se
ativar no painel o "Automatically enable RLS on new tables".

As contas são gerenciadas pelo **Supabase Auth**, em `auth.users`; consulte-as
em **Authentication → Users**. O frontend não grava senhas nas tabelas públicas.
Confirmação de cadastro e recuperação dependem da configuração de URLs e do
serviço de e-mail. Veja o [guia de configuração do login](supabase/LOGIN-SETUP.md),
que inclui o endereço publicado na Vercel e o roteiro de teste com uma conta real.

## Estrutura do banco de dados

As tabelas principais de provas e progresso estão descritas abaixo. O projeto
também usa `essay_themes` para temas de redação e `question_reports` para relatos
de problemas. As contas ficam no schema `auth`, separado das tabelas públicas.

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

Os slugs iniciais estão em `supabase/schema.sql`; os seeds também cadastram
provas e novas edições. O campo `source` identifica a origem de cada prova.

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
| `options` | `jsonb` | Array JSON de alternativas A–E; itens Certo/Errado usam duas opções, A/B. |
| `answer` | `text` | Gabarito oficial, com uma ou mais letras A–E separadas por `/`. |
| `explanation` | `text` | Explicação da resposta, exibida na revisão (opcional). |
| `created_at` | `timestamptz` | Data de criação, preenchida automaticamente. |

A combinação `(exam_id, number)` é única. A coluna `answer` aceita apenas
as letras `A`–`E`, inclusive respostas múltiplas como `A/B` e a anulação
`A/B/C/D/E`. Cada questão carrega seu próprio texto e imagem de apoio —
o painel lateral é exibido quando ao menos um desses campos está preenchido.
A `explanation`, quando presente, aparece na revisão da questão.

### Contas em `auth.users`

Gerenciada pelo Supabase Auth. Guarda o identificador da conta, o e-mail e os
dados de autenticação, incluindo a senha protegida por hash. A aplicação usa
as operações de cadastro, entrada, recuperação e saída do Auth, sem consultar
essa tabela diretamente pelo cliente público. O `id` da conta é usado como
`user_id` nos resultados privados.

### Tabela `exam_attempts`

Usada pelo histórico e pelo caderno de erros. Criada por
`supabase/setup-study-history.sql`, já aplicado ao banco ProvaCerta.

| Coluna | Tipo | Descrição |
| --- | --- | --- |
| `id` | `uuid` PK | Identificador gerado pelo navegador no início da tentativa; evita salvamento duplicado. |
| `user_id` | `uuid` FK → `auth.users.id` | Conta dona do resultado. |
| `exam_title` | `text` | Nome da prova ou do simulado na conclusão. |
| `exam_source` | `text` | Origem da tentativa, como `enem`, `pism` ou `correios`, usada no progresso dos cards; opcional para registros anteriores. |
| `total` | `integer` | Total de questões, entre 1 e 500. |
| `correct` | `integer` | Respostas corretas, sem contar anuladas. |
| `wrong` | `integer` | Respostas incorretas. |
| `blank` | `integer` | Questões sem resposta, excluindo anuladas. |
| `annulled` | `integer` | Questões anuladas, que recebem ponto. |
| `points` | `integer` | Pontuação final; pode ser negativa no INSS. |
| `scoring` | `text` | `standard` ou `cebraspe`. |
| `started_at` | `timestamptz` | Início da tentativa. |
| `completed_at` | `timestamptz` | Conclusão da tentativa. |
| `timed` | `boolean` | Indica se havia limite de tempo. |
| `mistakes` | `jsonb` | Cópias das questões erradas, incluindo resposta marcada e materiais de revisão. |
| `created_at` | `timestamptz` | Data de gravação no banco. |

A soma de acertos, erros, brancos e anuladas deve corresponder ao total. A
pontuação padrão é `correct + annulled`; no INSS 2016/2022, é
`correct + annulled - wrong`. O número de itens em `mistakes` corresponde a
`wrong`. O banco valida essas regras e indexa os resultados por usuário e data.

O catálogo consulta apenas os dados de identificação e pontuação, sem carregar
as cópias das questões erradas. Para bases com o histórico anterior, a coluna
de origem é adicionada por `supabase/update-study-history-exam-source.sql`, já
aplicado ao ProvaCerta. Tentativas antigas são reconhecidas pelo título quando
possível; simulados personalizados não são atribuídos a um card de instituição.

### Tabela legada `attempts`

Estrutura anterior mantida por compatibilidade em `supabase/schema.sql`.
A implementação atual salva e consulta resultados em `exam_attempts`; não há
migração automática do conteúdo desta tabela para o novo histórico.

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
| `exam_attempts` | leitura própria | Somente `authenticated`, com `auth.uid() = user_id`. |
| `exam_attempts` | criação própria | Somente `authenticated`, com `auth.uid() = user_id`. |
| `exam_attempts` | exclusão própria | Somente `authenticated`, com `auth.uid() = user_id`; sem botão de exclusão na interface atual. |
| `attempts` | leitura própria | `for select ... using (auth.uid() = user_id)` |
| `attempts` | criação própria | `for insert ... with check (auth.uid() = user_id)` |

As tabelas `exams` e `questions` não têm políticas de escrita: com o RLS
habilitado, isso impede qualquer alteração via chave anon. A versão recomendada
das políticas (incluindo `attempts` restrita ao role `authenticated`) está em
`supabase/policies.sql`.

As políticas do novo histórico ficam em `supabase/setup-study-history.sql`.
Visitantes não têm acesso à tabela `exam_attempts`, e usuários não podem ler,
criar ou excluir resultados de outra conta. Atualizações de resultados não são
permitidas pelo cliente público. Provas e questões continuam com leitura pública.

## Tecnologias utilizadas

- [React](https://react.dev/) 18;
- [Vite](https://vite.dev/) 6;
- [React DOM](https://react.dev/reference/react-dom);
- [Lucide React](https://lucide.dev/) para os ícones;
- [Supabase](https://supabase.com/) para provas públicas, autenticação e histórico privado;
- JavaScript com módulos ES;
- Supabase para as provas do ENEM 2022 a 2025;
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
| `node scripts/verify-study-account.mjs` | Verifica login opcional, fluxos de Auth com cliente simulado, pontuação, histórico e caderno de erros. |
| `node scripts/verify-exam-picker.mjs` | Verifica cards compactos, seleção, edições, progresso privado e filtros recolhíveis. |
| `node scripts/verify-study-hub.mjs` | Verifica curadoria, agrupamento dos erros, resultado e isolamento entre contas. Use `--live` para conferir as questões no banco e o bloqueio do histórico sem login. |

Para validar uma alteração antes de publicá-la:

```bash
npm run build
```

## Estrutura do projeto

```text
.
├── public/                 # imagens de apoio (servidas por caminhos "/...")
├── src/
│   ├── lib/
│   │   ├── studyHistory.js # montagem e salvamento das tentativas
│   │   ├── catalogProgress.js # identificação e consulta do progresso no catálogo
│   │   └── supabase.js     # cliente Supabase + preconnect + identificação de recuperação
│   ├── Auth.jsx            # sessão, formulários e círculo da conta
│   ├── StudyAccount.jsx    # histórico, caderno de erros e salvamento no resultado
│   ├── account.css         # conta e login, nos temas claro/escuro
│   ├── ExamPicker.jsx      # cards compactos, janela de seleção e filtros móveis
│   ├── examPicker.css      # catálogo responsivo e janela de seleção
│   ├── main.jsx            # aplicação (estado, provas, simulado, resultado, revisão)
│   └── styles.css          # identidade visual e layout
├── supabase/
│   ├── schema.sql          # tabelas, RLS e slugs cadastrados
│   ├── policies.sql        # políticas RLS recomendadas
│   ├── indexes.sql         # índices de performance
│   ├── setup-study-history.sql # tabela e RLS do histórico privado
│   ├── LOGIN-SETUP.md       # URLs, e-mails e validação do login
│   └── seed-<slug>.sql     # um arquivo de seed por prova
├── pdf-extracts/           # material de conferência (não usado em runtime)
├── index.html
├── vercel.json             # cache de longa duração para imagens
├── package.json
└── README.md
```

### Arquivos principais

#### `src/main.jsx`

É o ponto principal da aplicação. Esse arquivo contém:

- o carregamento das provas a partir do Supabase (com cache em memória por
  slug);
- o gerador de simulado personalizado (grau de ensino, matérias e quantidade);
- o card do ENEM com filtros uniformes e carregamento exclusivo do Supabase;
- a seleção dinâmica da prova (cards por origem: PISM, CNU, OAB, PMERJ, PC, PF,
  BB, UERJ, USP);
- o estado da questão atual e as respostas do estudante;
- a tela de resultado e o modo de revisão (com explicações);
- os controles de acessibilidade (zoom e leitura em áudio);
- a renderização dos textos e imagens de apoio.

Também integra o provedor de autenticação, o menu da conta e o salvamento
opcional dos resultados, mantendo o fluxo das provas acessível aos visitantes.

#### `src/Auth.jsx`, `src/StudyAccount.jsx` e `src/lib/studyHistory.js`

`Auth.jsx` acompanha a sessão do Supabase Auth, exibe os formulários e gerencia
a tentativa temporária do visitante que escolheu guardar o resultado.
`StudyAccount.jsx` apresenta histórico, caderno de erros e informações da conta,
além do aviso de salvamento na tela de resultado. `studyHistory.js` calcula os
totais e salva cada tentativa sem duplicar registros. Os estilos ficam em
`src/account.css`.

As questões e os textos de apoio das provas vêm do Supabase. Se o banco não
estiver configurado ou não tiver a prova cadastrada, o card correspondente
exibe uma mensagem de erro.

#### `src/lib/supabase.js`

Cria o cliente do Supabase a partir das variáveis de ambiente e injeta
`preconnect`/`dns-prefetch` para o domínio do projeto, acelerando a primeira
requisição ao banco.

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
9. Com login, a tentativa concluída é salva no histórico; sem login, o estudante
   pode escolher entrar ou criar conta para guardar o resultado.
10. O menu da conta abre o progresso, com histórico e revisão das questões erradas.

## Adicionando uma nova prova

Para adicionar uma nova prova, siga estes passos:

1. Registre o slug da prova em `supabase/schema.sql`.
2. Crie um seed `supabase/seed-<slug>.sql` com as questões, alternativas e
   gabaritos (usando `on conflict (exam_id, number) do update`).
3. Cadastre os textos e as imagens de apoio, quando existirem (imagens em
   `public/`, referenciadas por `support_image` iniciado em `/`).
4. Habilite o card/seletor correspondente em `src/main.jsx` (config de ano/
   cargo/edição e o slug).
5. Verifique se os enunciados fazem referência correta aos textos.
6. Aplique o schema/seed no Supabase.
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

O endereço do ProvaCerta é [prova-certa-dusky.vercel.app](https://prova-certa-dusky.vercel.app/).
Ao publicar a versão com login, mantenha as variáveis do Supabase no ambiente
da Vercel e confira **Site URL**, **Redirect URLs** e SMTP no painel do Supabase.
Essas etapas são necessárias para os links de confirmação e recuperação dos
alunos. Siga o [guia de configuração do login](supabase/LOGIN-SETUP.md) e teste
cadastro, confirmação, entrada, conclusão de uma prova, histórico e recuperação
com um e-mail seu. A atualização do código, por si só, não configura o envio
de e-mails.

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


## PISM II 2025 (2º ano)

Execute `supabase/seed-pism-ii-2025.sql` completo no SQL Editor do Supabase.
O arquivo cadastra duas provas de 20 questões objetivas, com os slugs
`pism-ii-2025-dia-1` e `pism-ii-2025-dia-2`, sem substituir as provas do módulo I.
No site, escolha PISM → Série: 2º ano → 2025 · 1º ou 2º dia.

As provas da edição 2025 foram realizadas em 14 e 15 de dezembro de 2024.
As fontes são os cadernos e gabaritos oficiais da UFJF/COPESE. O gabarito
após recursos do dia 2 aceita C ou E na questão 14 e B ou C na questão 15.
O SQL amplia a restrição `questions_answer_check` para aceitar letras
separadas por `/`. A correção, a pontuação e a revisão reconhecem ambas.
Publique a atualização da interface junto com a importação para garantir
que as alternativas múltiplas sejam corrigidas corretamente.

Há 9 figuras de apoio na pasta `public`. Os textos de terceiros são apresentados
como sínteses ou referências ao caderno oficial, acessível em cada questão.
As alternativas das questões 3 e 4 de Literatura foram adaptadas para evitar
reproduzir extensos trechos do conto. As questões discursivas não foram importadas.
As 40 questões possuem explicações didáticas autorais, conferidas com os cadernos e gabaritos oficiais. Não são justificativas publicadas pela banca.

Fontes:
- [Dia 1: provas e gabaritos](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2024/2025-provas-e-gabaritos-1o-dia/)
- [Dia 2: provas e gabaritos definitivos](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2025/provas-e-gabaritos-2o-dia/)

Os dados revisados estão em `pdf-extracts/pism-ii-2025/questoes-dia-1.json`
e `questoes-dia-2.json`, junto dos materiais de conferência.


## Atualização das provas PISM já cadastradas

Execute no Supabase os arquivos supabase/update-pism-i-titles.sql (nomes e anos oficiais do módulo I) e supabase/update-explanations-pism-ii-2025.sql (40 explicações do módulo II 2025). Os dois preservam os identificadores e os gabaritos existentes.

Os slugs legados pism-2023, pism-2024 e pism-2025 correspondem às edições oficiais 2024, 2025 e 2026. A interface exibe esses anos e o dia no mesmo padrão do módulo II. Todas as oito provas têm links para a página de cada questão no caderno oficial.


## PISM II 2026 — 2º ano, dias 1 e 2

Execute `supabase/seed-pism-ii-2026.sql` no SQL Editor do Supabase. O arquivo cadastra duas provas, com 20 questões objetivas por dia, e já inclui as 40 explicações autorais. É reexecutável e atualiza somente essas provas. Publique também a interface atualizada para disponibilizar a seleção de 2026 e a correção da questão anulada.

Os enunciados e alternativas têm redação adaptada para estudo, mantendo dados, numeração e ordem. Textos literários e jornalísticos são sintetizados ou referenciados; cada questão abre a página correspondente do caderno oficial. As cinco imagens de apoio estão em `public/pism-ii-2026-*.png`. As questões discursivas não estão incluídas.

Foi utilizado o gabarito do dia 1 disponibilizado pela COPESE e, para o dia 2, o gabarito **após recursos** de janeiro de 2026. A questão 17 de História do dia 2 foi anulada: no banco, `A/B/C/D/E` representa a anulação, e a interface atribui crédito mesmo quando a resposta fica em branco. As opções dessa questão não são identificadas como todas corretas na revisão.

Nas provas PISM, as explicações da revisão agora aparecem também nas respostas acertadas. As questões 6 e 7 de Biologia preservam o gabarito da banca e incluem observações científicas: distinção entre toxina e esporos no botulismo, e indicação da via de parto conforme avaliação clínica na prevenção da transmissão do HIV. Essas observações foram conferidas com a OMS e o Ministério da Saúde.

Fontes oficiais:
- [Cadernos e gabarito do 1º dia](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2026/provas-e-gabaritos-1o-dia/)
- [Caderno do 2º dia](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2026/provas-e-gabaritos-2o-dia/)
- [Gabarito do 2º dia após recursos](https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2026/01/GABARITO-PISM-2026-OBJETIVA-D2-P2-P%C3%B3s-Recursos.pdf)

Materiais de conferência: `pdf-extracts/pism-ii-2026`. Para regenerar SQL, dados e imagens, execute `scripts/generate-pism-ii-2026.py`; para validar, `node scripts/verify-pism-ii-2026.mjs`.

## PISM II 2024 e PISM III 2024, 2025 e 2026

A seleção de série agora inclui os dois dias de 2024 no 2º ano e os dois dias de cada edição de 2024, 2025 e 2026 no 3º ano. São oito novas provas, com **160 questões objetivas e 160 explicações autorais**.

Execute, completos, no SQL Editor do Supabase:

- `supabase/seed-pism-ii-2024.sql`: duas provas e 40 questões.
- `supabase/seed-pism-iii-2024-2026.sql`: seis provas e 120 questões.

As consultas são reexecutáveis e preservam IDs por meio de `on conflict`. Não é necessário repetir o schema ou os seeds anteriores. Os dados só aparecerão no site depois da execução das consultas. Publique também o código atualizado e as 23 figuras em `public/pism-ii-2024-*.png` e `public/pism-iii-*.png`.

O cadastro mantém o formato de questões objetivas já usado no projeto. No PISM III, as 20 objetivas de cada dia são comuns a Economia e Administração, Exatas, Humanas e Saúde; as discursivas variam conforme a área e não estão incluídas. O link de cada questão abre a página correspondente no caderno de Humanas. Os endereços dos cadernos das quatro áreas estão preservados no catálogo de fontes.

Enunciados e alternativas foram revisados/adaptados para estudo. Textos literários, letras e reportagens são resumidos ou referenciados no caderno oficial. A questão 5 do PISM III 2024, dia 1, exige comparar as cinco charges no caderno, acessível pelo link da questão. As explicações são autorais, não justificativas publicadas pela banca.

Gabaritos após recursos preservados:

- PISM II 2024, dia 1, questão 11: C ou D.
- PISM III 2025, dia 1, questão 11: C ou E; questão 15: B ou C.
- PISM III 2026, dia 2, questão 17: anulada, com crédito automático inclusive em branco.

A questão 15 do PISM II 2024, dia 1, registra a imprecisão do total de 375 viagens: o gabarito marca o 13º dia, quando a soma ultrapassa esse valor. A explicação da questão 8 do PISM II 2024, dia 2, distingue o gabarito de uma afirmação inadequada sobre hepatite A, com referência ao Ministério da Saúde. A questão 4 do PISM III 2026, dia 2, corrige na explicação o ano do Nobel de Einstein, com referência ao NobelPrize.org.

Fontes oficiais: páginas de provas e gabaritos da [edição 2024](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2024/2024-provas-e-gabaritos-1o-dia/), [2025](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2025/provas-e-gabaritos-2o-dia/) e [2026](https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-2026/provas-e-gabaritos-2o-dia/). A lista completa dos 34 PDFs consultados está em `pdf-extracts/pism-expansao/fontes.json`.

Dados e materiais de conferência: `pdf-extracts/pism-expansao`. Fluxo de regeneração: `scripts/import-pism-additions.py`, depois `scripts/reextract-pism-additions.py`, depois `scripts/finalize-pism-additions.py`. A revisão editorial e as explicações estão em `scripts/pism_additions_editorial.py` e `scripts/pism_additions_explanations.py`. Validação: `node scripts/verify-pism-additions.mjs`.

## INSS 2022 — Técnico do Seguro Social

O card INSS fica em Concursos. Execute **todo** o arquivo `supabase/seed-inss-2022-tecnico.sql` no SQL Editor do Supabase para disponibilizar os 120 itens (50 básicos e 70 específicos), da aplicação de **27/11/2022**, cadernos 01. A reaplicação de Guarulhos não está incluída. A consulta é reexecutável, preserva os IDs existentes e não altera as outras provas; explicações já preenchidas são preservadas quando não há explicação nova.

As opções exibidas são Certo e Errado. No banco, A representa Certo, B representa Errado e A/B/C/D/E representa anulação. A prova INSS 2022 usa +1 por acerto, −1 por erro e zero por item em branco. Os oito itens anulados (49, 54, 65, 68, 72, 74, 104 e 106) recebem +1 independentemente da marcação. A tela mostra a pontuação líquida, os acertos, os erros e os itens em branco. Os simulados personalizados continuam usando sua pontuação habitual.

Cada item possui acesso à página correspondente do caderno oficial do Cebraspe. O texto CB1A1 foi resumido para estudo; nas questões de análise textual e gramatical, leia o original pelo link. As duas figuras de informática estão em `public/inss-2022/`. As questões e o gabarito reproduzem o contexto da prova de 2022; não são uma atualização da legislação. Esta inclusão não traz comentários explicativos para os itens não anulados.

Fontes: [caderno básico](https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/760_INSS_CB1_01.PDF), [caderno específico](https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/760_INSS_001_01.PDF), [gabarito definitivo básico](https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/GAB_DEFINITIVO_760_INSS_CB1_01.PDF) e [gabarito definitivo específico](https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/GAB_DEFINITIVO_760_INSS_001_01.PDF).

Verificação: `node scripts/verify-inss-2022.mjs`. Os scripts `scripts/import-inss-2022.py` e `scripts/generate-inss-2022.py` permitem baixar novamente as fontes e regenerar a consulta, os recortes e os links (dependências Python: pdfplumber e pypdfium2).


## Praticar redação

Acesse **Praticar redação** no menu superior ou na página inicial. A área reúne editor de texto, contagens de palavras/parágrafos/caracteres, palavras frequentes (ao menos quatro letras e três ocorrências, filtrando termos comuns), repetições consecutivas e espaços duplicados. São verificações de leitura, sem IA, avaliação gramatical automática ou nota estimada.

A autoavaliação oferece sete critérios gerais de texto argumentativo e gera prioridades a partir das respostas do próprio aluno. Alterar o texto ou o tema invalida as avaliações anteriores para a nova versão. As anotações permanecem disponíveis para a reescrita. Os parágrafos são contados por quebras de linha; linhas visuais do editor não equivalem às linhas da folha oficial.

O rascunho, o tema sorteado e a revisão ficam no navegador/dispositivo (`provacerta-redacao-v1`), sem envio do texto ao Supabase. É possível baixar um arquivo TXT com texto, tema, fonte, autoavaliação e anotações. Se o armazenamento falhar, a interface avisa; um rascunho corrompido não é sobrescrito automaticamente.

### Banco de temas e sorteio

Execute **todo** o arquivo `supabase/seed-essay-themes.sql` no SQL Editor do Supabase. Ele cria a tabela `essay_themes`, habilita RLS para leitura pública apenas dos temas ativos e cadastra nove temas oficiais: **ENEM 2023, 2024 e 2025; FUVEST 2024, 2025 e 2026; UERJ 2024, 2025 e 2026**. A proposta da FUVEST 2026 cadastrada é a primeira, de gênero dissertativo-argumentativo. As propostas da UERJ dependem da leitura das obras indicadas. Títulos e orientações têm fontes oficiais individuais; as orientações são resumidas para estudo, com acesso à coletânea ou ao comentário da banca pelo link.

A consulta é reexecutável e preserva IDs e a ativação/desativação dos temas existentes. O navegador lê os temas do Supabase e permite filtrar por prova e ano antes de sortear. O sorteio evita repetir imediatamente o tema atual quando há outra opção no filtro, preserva o texto já escrito e atualiza a proposta. Editar manualmente o tema volta ao modo de tema livre. Sem conexão ou sem configuração do banco, a seleção inicial desses nove temas fica disponível, com uma indicação na tela; uma lista vazia publicada no banco é respeitada.

As tabelas e consultas das provas objetivas permanecem independentes. Não é necessário alterar o cadastro de questões para utilizar a redação. Verificação: `node scripts/verify-essay-practice.mjs`.


### Relatos de problemas e modo de prova
Execute `supabase/setup-question-reports.sql` no SQL Editor para habilitar o envio de relatos. O formulário identifica a prova e o número original da questão, inclusive nos simulados mistos. Somente o administrador consulta os relatos pelo painel ou SQL; visitantes podem apenas enviá-los. Não é necessário executar SQL para o cronômetro.

Ao carregar qualquer prova ou simulado, escolha estudo livre ou modo de prova com duração de 1 a 600 minutos. O relógio usa um prazo absoluto, continua em outras abas e encerra a sessão ao esgotar o tempo, mantendo as respostas para o resultado e a revisão. Há avisos nos últimos cinco minutos e no último minuto. Finalizar antecipadamente também mostra tempo utilizado e questões em branco. Sair cancela a sessão; recarregar a página perde o progresso atual.


### USP / FUVEST 2025 — primeira fase, V1
Execute todo o arquivo supabase/seed-usp-2025-v1.sql no SQL Editor. Ele cadastra a edição 2025, aplicada em 17/11/2024, com 90 questões, gabarito oficial V1, figuras e 90 explicações editoriais de estudo. Pode ser reexecutado sem duplicar registros; preserva IDs e as demais provas.

No card USP, selecione 2025 e a primeira fase. A edição 2026 continua disponível. A prova participa dos modos estudo livre e com cronômetro, da revisão e dos relatos de problemas. Os links levam às páginas correspondentes no caderno oficial, inclusive nas questões usadas em simulados personalizados.

Os textos literários, letras de músicas e parte dos textos jornalísticos têm resumos de apoio para estudo, identificados no conteúdo. Questões de interpretação de versos, vocabulário ou recursos expressivos devem ser conferidas também no caderno oficial. As figuras foram extraídas do PDF, e as alternativas exclusivamente gráficas das questões 60 e 69 estão na imagem de apoio.

Fontes: [acervo oficial](https://www.fuvest.br/acervo-vestibular-2025/), [caderno V1](https://www.fuvest.br/wp-content/uploads/fuvest2025_primeira_fase_prova_V1.pdf) e [gabarito oficial](https://www.fuvest.br/wp-content/uploads/fuvest2025_gabarito_primeira_fase.pdf).
Materiais de conferência: pdf-extracts/usp-2025. Regeneração: scripts/import-usp-2025.py, depois scripts/generate-usp-2025.py; a revisão está em scripts/usp_2025_editorial.py.


### Correios 2011 — três cargos, Tipo I

Incluídas as provas de Carteiro, Atendente Comercial e Operador de Triagem e Transbordo, com 60 questões por cargo e gabaritos definitivos do CESPE/UnB. A seleção de cargo mantém ou ajusta automaticamente o ano para uma edição disponível.

A consulta `supabase/seed-correios-2011.sql` foi aplicada ao Supabase e pode ser reexecutada sem duplicar questões; preserva IDs e comentários existentes. A prova de Carteiro 2024 permanece intacta. Os textos de apoio ficam em `support`; as figuras em `support_image`, com arquivos em `public/correios-2011/`. Ícones das alternativas foram transcritos em texto. Músicas têm resumos de apoio e acesso aos versos no caderno oficial. As quatro questões anuladas usam `A/B/C/D/E`, conforme a correção já existente no projeto.

Fontes: [cadernos e gabaritos definitivos](https://cdn.cebraspe.org.br/concursos/CORREIOSAGENTE2011/). Todas as questões de 2011 têm link para sua página original, inclusive nos simulados.

Verificação: `node scripts/verify-correios-2011.mjs`. Para regenerar a partir dos PDFs em `pdf-extracts/correios-2011/`, execute `scripts/import-correios-2011.py` e depois `scripts/finalize-correios-2011.py` com PyMuPDF instalado. Publique também os arquivos de imagem ao atualizar o site.

O botão **Informar problema** aparece como ação de texto menor, sem fundo nem borda, com realce ao passar o mouse e foco visível pelo teclado. O formulário e o envio continuam iguais.

## Login opcional e progresso

Os recursos estão descritos em [Conta e login opcional](#conta-e-login-opcional)
e [Meu progresso e caderno de erros](#meu-progresso-e-caderno-de-erros).
Antes de disponibilizar cadastros, confira o [guia de configuração do Supabase
Auth](supabase/LOGIN-SETUP.md). O código e a estrutura privada foram enviados à
`main`; a publicação e o envio real dos e-mails precisam ser verificados no
ambiente de produção.

## Conteúdos do pacote de estudos em Resumos

O pacote inicial foi integrado a **Estudar → Resumos** por
`src/lib/studyPilot.json` e `src/lib/studyPilotDetails.js`. Enriqueceu
Porcentagem e quatro temas de História sem duplicar entradas. Seus 11 exercícios
permanecem nos dados de origem; a interface atual usa o renderizador de cada matéria.

História apresenta teoria, referências quando cadastradas e podcast quando
associado, sem quiz embutido. As questões autorais ficam no botão de prática.
Matemática usa `MathStudyLesson.jsx`, com teoria, fórmulas, exemplos resolvidos,
exploração interativa e atividades de correção imediata, sem gravar essas
atividades como tentativas de prova.

As seis aulas anteriores de Matemática estão em `src/lib/mathLessons.js` e
`src/lib/percentageLesson.js`; as oito novas, em
`src/lib/advancedMathLessons.js`. História mantém o piloto, Idade Média em
`src/lib/medievalSummary.js` e sete aulas novas em `src/lib/historyLessons.js`.
O catálogo central e a ordem de integração estão em `src/lib/studySummaries.js`.

Os oito podcasts são associados por ID em `src/lib/studyPodcasts.js`, com
arquivos em `public/audio/`. O player mantém reprodução/pausa, busca, saltos de
15 segundos, velocidade, som e download. Sem transcrição nem início automático;
pausa ao sair de Resumos ou trocar de assunto.

O [guia de resumos e podcasts](docs/resumos-e-podcasts.md) descreve os formatos,
a inclusão de novas aulas, os campos obrigatórios e a conexão com as práticas.
Para reproduzir a importação do pacote inicial a partir do material extraído,
consulte `scripts/import-study-pilot.mjs`.

## Prática por assunto — questões autorais

`src/lib/summaryPractice.js` exporta 112 questões locais, selecionando até 10
por rodada. Os quinze assuntos novos têm três questões cada. Essas rodadas
funcionam sem consulta ao banco e podem repetir questões entre tentativas.

Os assuntos originais também têm um banco remoto de 300 questões em 15 temas.
Quando não há rodada local, o caminho autoral consulta esse banco e abre 10
itens, exigindo pelo menos 20 disponíveis e priorizando os que não apareceram
na rodada anterior. Os dois bancos não são somados em uma única rodada.

O conteúdo remoto está em `src/lib/authorQuestionBank.js`.
`node scripts/generate-author-seed.mjs` gera `supabase/study-author-seed.sql`.
A estrutura existente está em `supabase/study-author-questions.sql`.
`node scripts/verify-author-practice.mjs` verifica esse caminho, incluindo a
leitura no banco configurado. As novas aulas e questões locais não exigem
executar esses arquivos nem atualizar tabelas.

## Documentação de manutenção

- [Resumos, aulas e podcasts: formatos e lógica de inclusão](docs/resumos-e-podcasts.md).
- [Catálogo recolhível, calculadora e anotações](docs/ferramentas-provas.md).
- [Registro das inclusões de 25/10/2026](docs/atualizacoes-2026-10-25.md).
- [Destrinchando o conteúdo: PISM e validação](docs/destrinchando-conteudo.md).
- [Planejamento de estudos](docs/planejamento-estudos.md).
- [Provas militares](docs/military-exams.md), [CBMERJ](docs/cbmerj-provas.md),
  [EFOMM](docs/efomm.md), [ITA](docs/ita-2026.md) e
  [ITA segunda fase](docs/ita-2026-segunda-fase.md).
- [UERJ objetiva](docs/uerj-2026-objetiva.md) e [UERJ discursivas](docs/uerj-discursivas.md).

### Validação das inclusões de estudo

```bash
node scripts/verify-study-expansion.mjs
node scripts/verify-study-hub.mjs
node scripts/walkthrough.test.mjs
npm run build
```

A verificação da expansão é local. O verificador geral da área de estudos também
consulta o banco configurado e pode depender de conexão. O build gera `dist/`;
um push para `main` não confirma, por si só, o sucesso do deploy no provedor.


### Unesp — vestibulares 2026, 2025 e 2024

- Card em **Faculdades públicas**, no padrão atual, com ano e fase. A primeira fase oferece 90 questões por edição (270 no total), cinco alternativas, correção, revisão, histórico e simulado personalizado.
- Cadernos **versão 1**, processos Vunesp `VNSP2504`, `VNSP2404` e `VNSP2303`. Os PDFs originais da banca e seus gabaritos são cópias públicas disponíveis em `https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/`. Os processos oficiais ficam em `https://www.vunesp.com.br/<código>`; o acesso a provas no portal da organizadora exige login.
- Imagens originais preservam fórmulas, gráficos e alternativas visuais. Textos comuns aparecem como apoio em todas as questões correspondentes; a tabela periódica acompanha Natureza/Matemática. A extração textual auxilia acessibilidade; a imagem do caderno é a referência visual.
- Segunda fase: dois cadernos por ano, com questões discursivas e redação em PDF; sem correção automática dessas respostas. Em 2024, o arquivo original combinado foi separado nas páginas 1–28 e 29–52.
- `scripts/import-unesp.py`: baixa/valida os cadernos e gabaritos, recorta por coluna, trata textos compartilhados e gera `unespSources.js`, a fixture de respostas e `supabase/seed-unesp-2024-2026.sql`. O seed usa upsert por slug/número, preservando IDs e explicações existentes.
- `scripts/download-unesp-fase2.py`: reproduz a obtenção dos seis cadernos discursivos. Arquivos públicos em `public/provas/unesp` e `public/unesp-{ano}`.
- `node scripts/verify-unesp.mjs`: confere os 270 gabaritos, cinco alternativas, integridade das imagens, doze PDFs, pontuação, links seguros e renderização real das provas/cartões nos três anos.
