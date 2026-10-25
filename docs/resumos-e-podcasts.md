# Resumos, aulas interativas e podcasts

Estado conferido no código em 25/10/2026. Entrada: **Estudar → Resumos → Aprenda antes de praticar**. Não exige login para ler, ouvir ou fazer atividades locais.

## Catálogo atual

| Matéria | Resumos |
| --- | ---: |
| Matemática | 14 |
| Português | 3 |
| Química | 3 |
| Física | 4 |
| História | 12 |
| Biologia | 3 |
| Geografia | 2 |
| Redação | 5 |
| Total | 46 |

Os seletores são gerados a partir dos dados; não existe uma lista de matérias separada para manter manualmente. Os totais acima são uma fotografia desta versão, não limites fixos.

### Novos conteúdos de História

| ID estável | Nome exibido | Questões locais |
| --- | --- | ---: |
| `grandes-navegacoes` | Grandes Navegações | 3 |
| `america-espanhola` | América espanhola | 3 |
| `america-inglesa` | América inglesa | 3 |
| `sociedades-africanas` | Sociedades africanas | 3 |
| `africa-antiga` | África antiga | 3 |
| `egito-antigo` | Egito antigo | 3 |
| `antiguidade-classica` | Antiguidade clássica | 3 |

As sete aulas estão em `src/lib/historyLessons.js`. Incluem introdução, cronologia, seções aprofundadas, exemplo de interpretação de questão, erros comuns, roteiro de revisão, orientação de prova e links institucionais. São 21 questões autorais comentadas, acessadas por **Praticar este assunto** ou pela aba de questões. O componente de leitura não mostra quiz embutido para História.

### Novos conteúdos de Matemática

| ID estável | Nome exibido | Exploração |
| --- | --- | --- |
| `trigonometria` | Trigonometria | Triângulo retângulo com ângulo variável |
| `logaritmos` | Logaritmos | Base, potência e expoente correspondente |
| `inequacoes` | Inequações | Desigualdade linear e inversão ao dividir por negativo |
| `relacoes-trigonometricas` | Relações trigonométricas | Ciclo, quadrantes e identidade fundamental |
| `areas-poligonos-triangulos` | Área dos polígonos e dos triângulos | Base, altura e deslocamento de um vértice |
| `funcao-quadratica` | Função quadrática | Coeficientes, gráfico e vértice |
| `funcao-exponencial` | Função exponencial | Base, entrada, crescimento e decaimento |
| `funcao-logaritmica` | Função logarítmica | Base, entrada positiva e gráfico |

Cada aula tem seis a oito seções de teoria, fórmulas, três exemplos resolvidos passo a passo, exploração interativa, erros comuns e três atividades comentadas: 24 exemplos e 24 questões ao todo. Os dados estão em `src/lib/advancedMathLessons.js`, e as explorações em `src/AdvancedMathExplorer.jsx`. As seis aulas anteriores de Matemática continuam disponíveis.

As atividades embutidas no resumo são locais: exibem explicação ao selecionar uma alternativa e têm reinício próprio. Não constituem uma tentativa no histórico. O botão de prática abre a tela de prova, seguindo o fluxo de resultados e histórico da aplicação.

## Como os resumos são reunidos

`src/lib/studySummaries.js` é o ponto de integração. Usa um `Map` com a chave `id`, nesta ordem:

1. Carrega `studyTopics`, preservando metadados e referências de questões reais.
2. Complementa com resumos gerais e de Redação.
3. Integra os módulos de `studyPilot.json`, seus detalhes e podcasts.
4. Integra Idade Média.
5. Associa as aulas de Matemática, Química e Ciências aos assuntos existentes.
6. Integra as sete aulas novas de História e seus podcasts.
7. Integra as oito aulas novas de Matemática.
8. Exporta `studySummaries` e deriva `summarySubjects` das matérias encontradas.

Um ID repetido atualiza a entrada no `Map`; não cria uma segunda opção. Isso exige cuidado: ao enriquecer um assunto existente, preserve campos que ainda são necessários, como `questions`. Para assunto novo, use ID sem acentos, estável e único. Mudar esse ID também afeta seleção persistida, prática e identificação de questões.

`src/StudyHub.jsx` filtra os resumos por `subject` e escolhe o renderizador com esta prioridade: `scienceLesson`, `chemistryLesson`, `mathLesson`, `lesson`, e por último o formato simples com `intro`, `concepts`, `example`, `commonMistake` e `checklist`. Evite atribuir dois formatos ricos à mesma entrada sem intenção: o primeiro esconde os demais.

## Incluir uma aula de Matemática

Para novas aulas no padrão detalhado atual, acrescente uma chave em `advancedMathLessons`:

```js
'novo-assunto': {
  title: 'Nome apresentado ao estudante',
  goal: 'Objetivo de aprendizagem concreto.',
  sections: [
    {
      title: '1. Primeiro conceito',
      paragraphs: ['Explicação inicial.', 'Aplicação e condições de uso.'],
      formula: 'Fórmula com suas restrições',
    },
  ],
  examples: [
    {
      title: 'Exemplo resolvido',
      problem: 'Enunciado completo.',
      steps: ['Identificar os dados.', 'Resolver e conferir.'],
      answer: 'Resposta com unidade e interpretação.',
    },
  ],
  mistakes: ['Erro frequente e como evitá-lo.'],
  challenges: [
    {
      text: 'Pergunta autoral.',
      options: ['Correta', 'Distrator 1', 'Distrator 2'],
      answer: 0,
      explanation: 'Raciocínio que justifica a alternativa correta.',
    },
  ],
}
```

`advancedMathSummaries` converte esse objeto para o catálogo e prepara `practice`. O índice `answer` das atividades é baseado em zero. A conversão coloca a alternativa correta primeiro no formato intermediário de prática; `summaryPractice.js` depois alterna sua posição e atribui a letra correspondente.

Para esse adaptador, mantenha exatamente três alternativas por atividade. A prática intermediária atual espera `[pergunta, correta, errada1, errada2, explicação]`; adicionar uma quarta alternativa exige atualizar o adaptador e seu consumidor antes.

Registre a exploração do novo ID em `AdvancedMathExplorer.jsx` ou em `explorers` de `MathStudyLesson.jsx`. O fallback atual foi construído para as três funções novas; uma aula de outro tipo precisa de uma exploração própria, para não receber um gráfico inadequado. Ao adicionar uma aula em `mathLessons.js`, confira antes se existe uma entrada-base completa no catálogo: aquele laço enriquece assuntos existentes.

## Incluir uma aula de História

Use a função `lesson(...)` de `historyLessons.js`, fornecendo ID, título, introdução, linha do tempo, seções, exemplo comentado, erros, revisão, referências e prática. Cada seção tem formato `[título, parágrafo1, parágrafo2, ...]`. Cada questão tem o formato intermediário de cinco itens descrito acima, com a alternativa correta primeiro.

A função monta `concepts`, `checklist`, `practice` e `lesson`. O renderizador `StudyLessonContent.jsx` usa:

- `content`: introdução e orientação de prova;
- `details`: seções aprofundadas com subtítulos e parágrafos;
- `sources`: pares `[título, URL]`, apresentados como referências;
- `podcast`: opcional, associado pelo catálogo central;
- `questions`: quiz embutido somente quando a matéria não é História.

Os marcadores exatos `Pontos que o aluno precisa dominar` e `Como esse tema costuma aparecer em prova` separam partes de `content` no renderizador. Não os renomeie sem atualizar a lógica de leitura. Subtítulos aprofundados devem ficar em `details`, evitando depender de detecção de títulos dentro de texto corrido.

## Prática: local e banco

Há 41 assuntos de prática: todos os resumos, exceto os cinco de Redação. O banco local exportado por `summaryPractice.js` contém 112 questões nesta versão, incluindo 45 das quinze aulas novas.

O fluxo de `StudyHub.start` é: questões fornecidas explicitamente → rodada local, quando a ação é autoral → carregamento autoral remoto, se não houver rodada local. A ação não autoral utiliza a curadoria de provas reais. Não há mistura automática entre banco local e remoto no mesmo assunto.

| Caminho | Quantidade da rodada | Regra |
| --- | --- | --- |
| `localSummaryRound(topicId)` | Até 10 | Embaralha as questões locais e corta a lista; um tema com 3 questões abre 3 |
| `loadAuthorQuestions` / `selectAuthorRound` | 10 | Exige pelo menos 20 questões remotas e prioriza as que não apareceram na rodada anterior |
| Atividade embutida na aula | Todas as atividades da aula | Estado local, correção imediata, sem tentativa no histórico |

Não documente que todos os assuntos têm 20 questões ou que a rodada local evita repetições: essa proteção pertence ao caminho remoto. `rememberAuthorRound` registra a última seleção, mas a seleção local atual não consulta esse registro.

Questões locais recebem `authoredId = summary:<topicId>:<número>`, `origin = 'author'`, `examSlug = author:<topicId>` e explicação. A numeração segue a ordem de inclusão no banco local: evite reordenar questões já publicadas sem considerar a estabilidade dos IDs. A contagem `authoredCount` usa a curadoria existente quando disponível e, nos assuntos novos, a contagem local.

Os 300 itens remotos dos 15 assuntos originais continuam sendo um conjunto separado. Incluir estas aulas e questões locais não exige migração nem alteração do banco.

## Podcasts

| Tema | Episódio | Arquivo em `public/audio/` |
| --- | --- | --- |
| Brasil Colônia | O jogo geopolítico do Brasil Colônia | `brasil-colonia-geopolitica.m4a` |
| Império e Abolição | As raízes da desigualdade no Brasil Império | `imperio-raizes-desigualdade.m4a` |
| República e Vargas | Como Vargas virou o Pai dos Pobres | `era-vargas-pai-dos-pobres.m4a` |
| Ditadura e redemocratização | Da ditadura à Constituição de 1988 | `ditadura-constituicao-1988.m4a` |
| Idade Média | Como a Peste Negra destruiu o feudalismo | `idade-media-peste-negra.m4a` |
| Grandes Navegações | O custo humano das Grandes Navegações | `grandes-navegacoes-custo-humano.m4a` |
| América espanhola | Como funcionava a máquina colonial espanhola | `america-espanhola-maquina-colonial.m4a` |
| América inglesa | A máquina econômica das Treze Colônias | `america-inglesa-treze-colonias.m4a` |

Para incluir um episódio:

1. Coloque o áudio real em `public/audio/`, usando nome estável sem espaços e preferencialmente sem acentos.
2. Cadastre `studyPodcasts[summaryId]` em `src/lib/studyPodcasts.js`, com `id`, `title`, `description`, `src`, `subject` e `label`.
3. Use `src: 'audio/arquivo.m4a'`, sem `public/` e sem barra inicial: o player acrescenta `import.meta.env.BASE_URL`.
4. Confira se o catálogo associa esse cadastro a `summary.lesson.podcast`. Os laços do piloto, de Idade Média e das novas aulas de História já fazem isso. Um novo tipo de módulo precisa dessa associação.
5. Publique o áudio junto com o código; cadastrar apenas o caminho gera erro de carregamento.

`StudyPodcast.jsx` mantém capa, reprodução/pausa, busca, saltos de 15 segundos, velocidade, som e download. Não inicia automaticamente e pausa ao trocar de assunto, desmontar a aula ou sair da aba Resumos. Carrega metadados inicialmente. Sem transcrição automática e sem geração de narração.

O episódio de América espanhola tem aproximadamente 46,3 MiB e deve ser considerado no tamanho da publicação. Compressão ou hospedagem externa são decisões futuras; esta versão usa o arquivo fornecido, sem conversão.

## Critérios editoriais e verificação

- Explique termos antes de usá-los, desenvolva do simples ao complexo e apresente exemplos com etapas justificadas.
- Informe domínio, unidade, aproximação e condições das fórmulas; confira cada resultado e os distratores.
- Diferencie conteúdo autoral de enunciado oficial; referências não tornam uma questão autoral uma questão real de prova.
- Em História, contextualize sujeitos, fontes e cronologias, evitando anacronismos e generalizações sobre continentes e povos.
- Não exiba sucesso de salvamento ou reprodução se o recurso falhou.
- Preserve o layout e os componentes existentes. Novos conteúdos entram pelos dados; mudanças de apresentação precisam ser intencionais.

Execute `node scripts/verify-study-hub.mjs`, `node scripts/verify-study-expansion.mjs` e `npm run build`. A verificação de StudyHub existente também consulta o banco configurado; falhas de conexão devem ser distinguidas de falhas locais. A verificação da expansão é local. Para QA no navegador, confira seleção dos quinze temas, exemplos, controles interativos, correção das alternativas e reprodução de cada episódio, inclusive pausa ao trocar de assunto e layout no celular.
