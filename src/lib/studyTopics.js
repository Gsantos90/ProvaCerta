// Curadoria por prova e número: não infere o assunto a partir de palavras soltas.
export const studyTopics = [
  {
    id: 'porcentagem', title: 'Porcentagem', subject: 'Matemática', color: 'math', icon: 'percent',
    description: 'Aumentos, descontos e comparação de valores.',
    questions: [
      { slug: 'cnu-2024-bloco8-tarde', number: 17 },
      { slug: 'pmerj-2024-soldado', number: 17 },
      { slug: 'correios-2011-carteiro', number: 35 },
      { slug: 'enem-2023', number: 140 },
      { slug: 'correios-2024-carteiro', number: 22 },
    ],
    intro: 'Porcentagem representa uma parte de cada 100. Para calcular p% de um valor, multiplique o valor por p e divida por 100.',
    concepts: [
      ['Parte e total', '20% de 150 = 150 × 20 ÷ 100 = 30. Para descobrir qual porcentagem uma parte representa, divida a parte pelo total e multiplique por 100.'],
      ['Aumentos e descontos', 'Um aumento de 15% multiplica o valor por 1,15. Um desconto de 15% multiplica o valor por 0,85. Para encontrar o preço original, divida o preço final pelo fator utilizado.'],
      ['Variações sucessivas', 'Aplique os fatores um após o outro. Um aumento de 10% seguido de um desconto de 10% resulta em 1,10 × 0,90 = 0,99: o valor fica 1% abaixo do inicial.'],
    ],
    example: 'Um produto custa R$ 300 e recebe 10% de desconto. O desconto é 300 × 10 ÷ 100 = R$ 30. O preço final é R$ 270.',
    commonMistake: 'Não confunda o valor do desconto com o preço final. Em variações sucessivas, a base de cálculo muda: os percentuais não podem ser simplesmente somados.',
    checklist: ['Identifique o valor que representa 100%.', 'Confira se a pergunta pede a parte, o total ou a variação.', 'Aplique cada aumento ou desconto à base correta.'],
  },
  {
    id: 'regra-de-tres', title: 'Regra de três e proporções', subject: 'Matemática', color: 'math', icon: 'calculator',
    description: 'Relações entre grandezas, proporções e escalas.',
    questions: [
      { slug: 'correios-2024-carteiro', number: 19 },
      { slug: 'enem-2022', number: 154 },
      { slug: 'enem-2024', number: 178 },
      { slug: 'cnu-2025-bloco8-tarde', number: 39 },
      { slug: 'correios-2011-atendente-comercial', number: 36 },
    ],
    intro: 'A regra de três encontra um valor desconhecido em uma relação proporcional. Antes de calcular, verifique como uma grandeza se comporta quando a outra aumenta.',
    concepts: [
      ['Proporção direta', 'Se dobrar uma grandeza dobra a outra, a relação é direta. Mantendo a velocidade, dobrar a distância dobra o tempo de viagem.'],
      ['Proporção inversa', 'Se dobrar uma grandeza reduz a outra à metade, a relação é inversa. Mantendo a produtividade e o trabalho total, dobrar o número de trabalhadores reduz o tempo à metade.'],
      ['Regra de três composta', 'Compare cada grandeza com a incógnita separadamente. Mais trabalhadores e mais horas aumentam a produção, quando a produtividade individual permanece constante.'],
      ['Escalas', 'Escala é a razão entre a medida no desenho e a medida real, na mesma unidade. Um desenho de 9 cm para uma peça de 45 cm usa a escala 9/45 = 1/5.'],
    ],
    example: 'Se 3 cadernos custam R$ 24, cada um custa R$ 8. Mantendo o preço por unidade, 5 cadernos custam 5 × 8 = R$ 40.',
    commonMistake: 'Nem toda relação é proporcional. Confira as condições do enunciado e converta as medidas para a mesma unidade antes de montar uma razão.',
    checklist: ['Organize as grandezas e suas unidades.', 'Classifique cada relação como direta ou inversa.', 'Confira se o resultado faz sentido no contexto.'],
  },
  {
    id: 'interpretacao', title: 'Interpretação de texto', subject: 'Português', color: 'language', icon: 'text-search',
    description: 'Ideia principal, inferências e sentidos do texto.',
    questions: [
      { slug: 'enem-2023', number: 7 },
      { slug: 'enem-2023', number: 9 },
      { slug: 'enem-2023', number: 10 },
      { slug: 'enem-2023', number: 11 },
      { slug: 'enem-2023', number: 12 },
    ],
    intro: 'Interpretar é reconhecer o que o texto afirma, como ele organiza as ideias e quais conclusões suas pistas permitem. A resposta precisa ser sustentada pelo texto.',
    concepts: [
      ['Tema e ideia principal', 'O tema é o assunto tratado. A ideia principal é o que o texto diz sobre esse assunto. Identifique o papel dos exemplos e dos argumentos.'],
      ['Informação explícita e inferência', 'A informação explícita está escrita. A inferência resulta de pistas do texto; não é uma suposição sem apoio.'],
      ['Finalidade e argumentação', 'Observe se o texto busca informar, convencer, criticar ou orientar. Conectivos como “porém”, “portanto” e “porque” ajudam a reconhecer oposição, conclusão e causa.'],
      ['Comparação e efeitos de sentido', 'Ao comparar textos, procure aproximações e diferenças. Humor, ironia e escolhas de palavras devem ser interpretados no contexto, considerando quem fala e com qual intenção.'],
    ],
    example: '“Marina pegou o guarda-chuva ao ouvir a previsão.” O trecho sugere que Marina considerou a possibilidade de chuva. Ele não confirma que já estava chovendo.',
    commonMistake: 'Uma alternativa pode parecer verdadeira no mundo e ainda assim não responder à questão. Evite extrapolar o texto ou ignorar palavras que limitam a afirmação.',
    checklist: ['Leia o comando para entender o que está sendo pedido.', 'Localize o trecho que sustenta a resposta.', 'Compare todas as alternativas antes de marcar.'],
  },
  { id: 'funcoes', title: 'Funções e gráficos', subject: 'Matemática', color: 'math', icon: 'calculator', description: 'Taxas de variação, custo e pontos de máximo.', questions: [{ slug: 'correios-2024-carteiro', number: 20 }, { slug: 'correios-2024-carteiro', number: 21 }] },
  { id: 'geometria', title: 'Geometria plana e espacial', subject: 'Matemática', color: 'math', icon: 'calculator', description: 'Áreas, perímetros e volumes em situações reais.', questions: [{ slug: 'pmerj-2024-soldado', number: 18 }, { slug: 'enem-2023', number: 146 }] },
  { id: 'estatistica', title: 'Estatística e leitura de dados', subject: 'Matemática', color: 'math', icon: 'calculator', description: 'Média, mediana, moda e leitura de gráficos.', questions: [{ slug: 'pmerj-2024-soldado', number: 11 }, { slug: 'enem-2023', number: 145 }] },
  { id: 'probabilidade', title: 'Probabilidade', subject: 'Matemática', color: 'math', icon: 'percent', description: 'Espaço amostral e contagem de resultados possíveis.', questions: [{ slug: 'pmerj-2024-soldado', number: 19 }] },
  { id: 'quimica-organica', title: 'Química orgânica e funções', subject: 'Química', color: 'language', description: 'Estruturas de compostos orgânicos e combustíveis.', questions: [{ slug: 'enem-2023', number: 96 }] },
  { id: 'eletricidade', title: 'Circuitos e consumo elétrico', subject: 'Física', color: 'math', description: 'Associações de resistores e funcionamento de circuitos.', questions: [{ slug: 'enem-2023', number: 98 }] },
  {
    id: 'ondas', title: 'Ondas e fenômenos ondulatórios', subject: 'Física', color: 'math',
    description: 'Som, luz, difração e intensidade de ondas.',
    questions: [91, 92, 93].map(number => ({ slug: 'enem-2023', number })),
    intro: 'Ondas transportam energia. Ondas mecânicas, como o som, precisam de um meio material; ondas eletromagnéticas, como a luz, também se propagam no vácuo.',
    concepts: [['Velocidade, frequência e comprimento de onda', 'A relação é v = λf. A frequência é determinada pela fonte; ao mudar o meio, a velocidade e o comprimento de onda podem mudar.'], ['Intensidade', 'Intensidade é potência por área. Para uma fonte pontual que irradia uniformemente sem perdas, I = P/(4πr²). Dobrar a distância reduz a intensidade a um quarto.'], ['Difração', 'Ondas podem se espalhar ao atravessar aberturas ou contornar obstáculos. O efeito é mais perceptível quando as dimensões são próximas ao comprimento de onda.']],
    example: 'Uma onda se propaga a 340 m/s com frequência de 170 Hz. Seu comprimento é λ = 340/170 = 2 m.',
    commonMistake: 'Não confunda intensidade com frequência: um som mais intenso não precisa ser mais agudo. Verifique as unidades de potência e distância.',
    checklist: ['Identifique o tipo de onda e o meio.', 'Converta os dados para unidades compatíveis.', 'Distinga frequência, comprimento e intensidade.'],
  },
]

export function topicForQuestion(question) {
  return studyTopics.find(topic => topic.questions.some(ref => ref.slug === question.examSlug && ref.number === Number(question.number || question.questionNumber))) || null
}

export function reviewGroups(rows) {
  const groups = new Map()
  for (const attempt of rows) {
    for (const question of Array.isArray(attempt.mistakes) ? attempt.mistakes : []) {
      if (!question || typeof question.text !== 'string' || typeof question.answer !== 'string' || !Array.isArray(question.options) || !question.options.every(option => typeof option === 'string')) continue
      const topic = topicForQuestion(question)
      const label = topic?.title || question.subject || 'Outros assuntos'
      const key = topic?.id || `subject:${label}`
      if (!groups.has(key)) groups.set(key, { key, label, topic, count: 0, questions: [], latest: '' })
      const group = groups.get(key)
      group.count++
      group.latest = group.latest > attempt.completed_at ? group.latest : attempt.completed_at
      const identity = question.questionId || `${question.examSlug || attempt.exam_title}:${question.number || question.position}:${question.text}`
      if (!group.questions.some(item => item.identity === identity)) group.questions.push({ identity, ...question, examTitle: question.examTitle || attempt.exam_title })
    }
  }
  return [...groups.values()].sort((a, b) => b.count - a.count || b.latest.localeCompare(a.latest))
}
