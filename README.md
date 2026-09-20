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
- ENEM 2023 — Caderno 2 Amarelo, Linguagens, Códigos e suas Tecnologias
  (opção Inglês, questões 1 a 5).

As demais questões do caderno ENEM serão adicionadas progressivamente.

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

## Tecnologias utilizadas

- [React](https://react.dev/) 18;
- [Vite](https://vite.dev/) 6;
- [React DOM](https://react.dev/reference/react-dom);
- [Lucide React](https://lucide.dev/) para os ícones;
- JavaScript com módulos ES;
- JSON para armazenamento das questões de 2024;
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

- os dados das provas de 2025;
- a importação das provas de 2024;
- a seleção dinâmica da prova;
- o estado da questão atual;
- as respostas do estudante;
- a tela de resultado;
- o modo de revisão;
- os textos de apoio;
- a renderização das imagens;
- a normalização de alguns textos extraídos de PDF.

#### `src/2024-1-questions.json` e `src/2024-2-questions.json`

Contêm as questões objetivas, alternativas e gabaritos das provas de 2024.
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
