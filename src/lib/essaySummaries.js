// Dicas autorais; exigências de gênero e formato devem seguir a proposta de cada prova.
export const essaySummaries = [
  {
    id: 'redacao-planejamento', title: 'Tema, planejamento e tese', subject: 'Redação',
    intro: 'Uma boa redação começa com uma leitura cuidadosa da proposta. Antes de escrever, defina o recorte do tema, o ponto de vista e o caminho da argumentação.',
    concepts: [
      ['Leia o comando', 'Identifique o gênero solicitado, o público, a finalidade e os limites de extensão. No ENEM, pratique o texto dissertativo-argumentativo; em vestibulares, siga o gênero pedido na proposta.'],
      ['Delimite o tema', 'Destaque as palavras centrais e a relação entre elas. Falar de educação em geral não basta se o tema pede obstáculos à inclusão digital nas escolas. Use os textos motivadores para compreender o problema, sem copiar seus trechos.'],
      ['Monte um projeto de texto', 'Escreva uma tese em uma frase e escolha argumentos que a sustentem. Para cada argumento, planeje uma explicação e um exemplo. Dois desenvolvimentos podem ajudar na organização, mas o número de parágrafos não é uma regra universal.'],
    ],
    example: 'Tema de treino: inclusão digital nas escolas. Tese possível: a falta de infraestrutura e de formação para o uso pedagógico da tecnologia dificulta a inclusão. O plano pode discutir uma dessas causas em cada desenvolvimento.',
    commonMistake: 'Não transforme o tema em uma lista de palavras soltas. Uma tese precisa afirmar algo que será defendido ao longo do texto.',
    checklist: ['Meu texto responde ao recorte completo do tema?', 'Entendi o gênero e as instruções da prova?', 'Tenho argumentos diferentes que sustentam minha tese?'],
  },
  {
    id: 'redacao-introducao', title: 'Introdução com direção clara', subject: 'Redação',
    intro: 'A introdução apresenta o problema e orienta a leitura. Prefira clareza a uma abertura decorada que poderia servir para qualquer tema.',
    concepts: [
      ['Contextualize com propósito', 'Comece com uma situação, conceito ou referência pertinente. Explique a ligação entre essa abertura e o tema: uma citação isolada não substitui a apresentação do problema.'],
      ['Apresente a tese', 'Mostre o ponto de vista que pretende defender. Evite apenas anunciar que o assunto é importante ou que será discutido.'],
      ['Anuncie um percurso coerente', 'Se antecipar causas ou consequências, desenvolva essas ideias depois. Uma introdução curta pode funcionar bem quando contextualização e tese estão conectadas.'],
    ],
    example: 'A presença de computadores nas escolas não garante seu uso na aprendizagem. Quando faltam conexão estável e formação dos docentes, a tecnologia permanece subutilizada. Por isso, infraestrutura e preparo pedagógico precisam caminhar juntos.',
    commonMistake: 'Evite expressões vagas como “desde os primórdios” sem explicar o contexto. Não prometa argumentos que ficarão ausentes no desenvolvimento.',
    checklist: ['A abertura se conecta ao tema?', 'Meu ponto de vista está claro?', 'O desenvolvimento cumprirá o que anunciei?'],
  },
  {
    id: 'redacao-argumentacao', title: 'Argumentos e repertório produtivo', subject: 'Redação',
    intro: 'Argumentar é explicar por que uma ideia faz sentido. Um exemplo, dado ou referência fortalece o texto quando contribui para a análise.',
    concepts: [
      ['Desenvolva uma ideia por vez', 'Apresente a ideia central do parágrafo, explique o mecanismo ou a causa e mostre suas consequências. Ao final, relacione essa análise à tese.'],
      ['Use referências que domina', 'Livros, acontecimentos históricos, conceitos e experiências sociais podem apoiar o argumento. Explique a relação com o problema. Não invente percentuais, estudos, citações ou nomes de autores.'],
      ['Analise o exemplo', 'Depois de apresentar uma evidência, explique o que ela demonstra. Pergunte “por que isso ocorre?” e “como isso sustenta minha tese?” para evitar um parágrafo apenas descritivo.'],
    ],
    example: 'Argumento: equipamentos, sozinhos, não resolvem a exclusão digital. Explicação: sem formação, o professor pode ter dificuldade para integrar os recursos às aulas. Consequência: o investimento não se converte plenamente em oportunidades de aprendizagem.',
    commonMistake: 'Uma referência famosa e genérica não melhora o texto por si só. Não substitua raciocínio por uma sequência de citações.',
    checklist: ['Expliquei a relação de causa ou consequência?', 'O repertório é correto e pertinente?', 'Cada parágrafo contribui para defender minha tese?'],
  },
  {
    id: 'redacao-conclusao', title: 'Conclusão e intervenção no ENEM', subject: 'Redação',
    intro: 'A conclusão fecha o raciocínio. No ENEM, ela também pode apresentar uma proposta de intervenção relacionada ao problema discutido, com respeito aos direitos humanos.',
    concepts: [
      ['Retome sem repetir', 'Sintetize o resultado da argumentação com outras palavras. Evite inserir uma causa central que não foi discutida no texto.'],
      ['Torne a proposta concreta', 'Para planejar a intervenção, pense em quem pode agir, qual ação será realizada, por qual meio, com qual finalidade e que detalhe torna a execução clara. Relacione a ação às causas que analisou.'],
      ['Adapte à prova', 'Intervenção é uma exigência da redação do ENEM. Em outros vestibulares, a conclusão deve respeitar a proposta e o gênero solicitado; não aplique esse formato automaticamente.'],
    ],
    example: 'Em um tema sobre inclusão digital, secretarias de educação podem oferecer formação continuada aos docentes, por meio de oficinas práticas sobre planejamento de aulas com tecnologia, para ampliar o uso pedagógico dos recursos disponíveis.',
    commonMistake: '“O governo deve conscientizar a população” é vago. Especifique responsáveis, ações e meios adequados ao problema, sem defender violações de direitos.',
    checklist: ['A conclusão decorre do desenvolvimento?', 'A proposta enfrenta uma causa que discuti?', 'O fechamento atende às instruções da minha prova?'],
  },
  {
    id: 'redacao-revisao', title: 'Coesão, linguagem e revisão', subject: 'Redação',
    intro: 'Reserve tempo para reler. A revisão melhora tanto a linguagem quanto a continuidade das ideias; não se limita a procurar erros de ortografia.',
    concepts: [
      ['Conecte as ideias pelo sentido', 'Use conectivos conforme a relação: “porque” para causa, “porém” para oposição e “portanto” para conclusão. Não é necessário começar todas as frases com um conectivo.'],
      ['Escreva com precisão', 'Prefira frases que você consegue controlar. Confira concordância, pontuação, acentuação e referência de pronomes. Evite palavras difíceis usadas sem domínio e generalizações como “todos” ou “ninguém” sem fundamento.'],
      ['Faça duas leituras', 'Primeiro, confira tema, tese e encadeamento dos argumentos. Depois, revise linguagem e instruções de apresentação. Durante o treino, use a autoavaliação guiada para escolher um aspecto a melhorar na próxima redação.'],
    ],
    example: '“Falta conexão nas escolas. Portanto, atividades que dependem da internet ficam limitadas.” O conectivo mostra uma consequência. Usar “porém” nesse trecho criaria uma oposição que as frases não apresentam.',
    commonMistake: 'Não avalie a qualidade apenas pelo tamanho do texto ou pela quantidade de conectivos. Consistência das ideias e atendimento à proposta são essenciais.',
    checklist: ['Mantive o tema e a tese do começo ao fim?', 'As frases se conectam sem ambiguidades?', 'Revisei a linguagem e respeitei os limites da proposta?'],
  },
]

export const essayGuidanceSource = 'https://www.gov.br/inep/pt-br/centrais-de-conteudo/noticias/enem/enem-2026-cartilha-da-redacao-esta-disponivel'
