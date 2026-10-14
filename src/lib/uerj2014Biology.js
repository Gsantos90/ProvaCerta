const source = '/provas/uerj/2014-discursivo-biologia-comentado.pdf'
const question = (number, page, title, text, fields, extra = {}) => ({
  id: `uerj-2014-biologia-${number}`, year: '2014', subject: 'Biologia', number,
  title, text, fields, source: `${source}#page=${page}`, examSource: `${source}#page=${page}`,
  ...extra,
})
const field = (id, label, reference, accepted, extra = {}) => ({ id, label, reference, accepted, ...extra })
const muscleProteins = [['actina'], ['miosina']]
const arteryFeatures = [
  ['fibras elásticas', 'muitas fibras elásticas', 'grande quantidade de fibras elásticas', 'abundância de fibras elásticas', 'tecido elástico'],
  ['músculo liso', 'musculatura lisa', 'músculo liso bem desenvolvido', 'camada muscular espessa', 'musculatura lisa bem desenvolvida'],
]
const venousFactors = [
  ['contração dos músculos esqueléticos', 'contração muscular', 'compressão pelos músculos esqueléticos', 'contração de músculos esqueléticos adjacentes', 'bomba muscular'],
  ['movimentos respiratórios', 'movimento respiratório', 'contração do diafragma', 'bomba respiratória', 'sucção torácica durante a inspiração'],
]
const lipidProducts = [['ácidos graxos', 'ácido graxo'], ['glicerol', 'glicerina']]

export const otherUerj2014BiologyQuestions = [
  question(1, 8, 'Osteoporose e tecido ósseo',
    'Uma das consequências do processo de envelhecimento da população é a maior ocorrência de doenças como a osteoporose, um desequilíbrio no metabolismo do cálcio que resulta em fragilidade óssea. Em mulheres, a osteoporose está relacionada à diminuição da produção de hormônios ovarianos.\n\nIdentifique o hormônio ovariano envolvido no metabolismo do cálcio. Em seguida, nomeie a célula óssea estimulada por esse hormônio. Indique, ainda, a função dessa célula na manutenção da homeostase do esqueleto.', [
      field('hormone', 'Hormônio ovariano', 'Estrogênio.', ['estrogênio', 'estrógeno', 'estrogênios', 'estrógenos']),
      field('cell', 'Célula óssea estimulada', 'Osteoblasto.', ['osteoblasto', 'osteoblastos']),
      field('function', 'Função da célula óssea', 'Captação de cálcio e deposição na matriz óssea, formando tecido ósseo novo.', ['captação de cálcio e deposição na matriz óssea', 'captar cálcio e depositá-lo na matriz óssea', 'deposição de cálcio na matriz óssea', 'formação de tecido ósseo', 'formação de tecido ósseo novo', 'formação de osso', 'síntese da matriz óssea', 'deposição de cálcio nos ossos']),
    ]),
  question(3, 9, 'Contração muscular e efeito estufa',
    'Nomeie as duas proteínas mais abundantes das fibras musculares, responsáveis por sua contração. Explique, ainda, a relação entre a expansão mundial dos rebanhos de bovinos e o aumento do efeito estufa.', [
      field('protein1', 'Uma proteína da contração muscular', 'Actina e miosina; informe uma em cada campo.', [], { concepts: muscleProteins, distinctGroup: 'proteins' }),
      field('protein2', 'Outra proteína da contração muscular', 'A segunda proteína deve ser diferente da primeira.', [], { concepts: muscleProteins, distinctGroup: 'proteins' }),
      field('mechanism', 'Como os bovinos contribuem para o efeito estufa?', 'Bactérias do rúmen produzem metano durante a digestão da celulose; mais bovinos aumentam a emissão desse gás de efeito estufa.', ['mais bovinos aumentam a emissão de metano produzido na digestão da celulose', 'aumento da emissão de metano pela fermentação da celulose no rúmen', 'maiores rebanhos liberam mais metano produzido pelas bactérias do rúmen', 'bactérias do rúmen produzem metano na digestão da celulose, aumentando o efeito estufa', 'mais bovinos produzem mais metano pela fermentação no rúmen']),
    ], { support: 'Em notícia de 2013, cientistas apresentaram um hambúrguer produzido a partir de fibras musculares cultivadas em laboratório. A técnica foi comparada à pecuária convencional por consumir menos energia e terra e emitir menos metano.' }),
  question(4, 9, 'Artérias e retorno venoso',
    'O sistema circulatório humano apresenta características estruturais específicas para suportar a grande pressão do sangue bombeado pelo coração, no caso das artérias, bem como para manter a velocidade do fluxo em direção ao coração, mesmo sob baixa pressão, no caso das veias. Observe no gráfico as principais variações nesse sistema.\n\nIndique duas características da composição da parede das artérias que possibilitam a passagem do sangue sob grande pressão. Indique, também, dois fatores que possibilitam a passagem do sangue pelas veias em velocidade quase tão alta quanto a verificada nas artérias.', [
      field('artery1', 'Uma característica da parede das artérias', 'Grande quantidade de fibras elásticas e músculo liso bem desenvolvido.', [], { concepts: arteryFeatures, distinctGroup: 'arteries' }),
      field('artery2', 'Outra característica da parede das artérias', 'Informe a característica diferente da primeira.', [], { concepts: arteryFeatures, distinctGroup: 'arteries' }),
      field('vein1', 'Um fator que auxilia o retorno venoso', 'Contração dos músculos esqueléticos adjacentes e movimento respiratório.', [], { concepts: venousFactors, distinctGroup: 'veins' }),
      field('vein2', 'Outro fator que auxilia o retorno venoso', 'Informe o fator diferente do primeiro.', [], { concepts: venousFactors, distinctGroup: 'veins' }),
    ], { image: '/uerj-discursivas/2014-biologia-q4.png', imageAlt: 'Variação da pressão e velocidade do sangue em artérias, arteríolas, capilares, vênulas e veias.' }),
  question(5, 10, 'Herança de chifres em caprinos',
    'Considere o cruzamento de um bode sem chifres com três cabras. Em cada cruzamento, foi gerado apenas um filhote. Observe os dados na tabela.\n\nAdmita que a ausência de chifres em caprinos seja uma característica monogênica dominante. Utilizando as letras A e a para representar os genes envolvidos, determine os genótipos do bode e das três cabras.', [
      field('goat', 'Genótipo do bode', 'Aa (heterozigoto).', ['Aa', 'aA'], { caseSensitive: true }),
      field('female1', 'Genótipo da cabra 1', 'aa (homozigota recessiva).', ['aa'], { caseSensitive: true }),
      field('female2', 'Genótipo da cabra 2', 'aa (homozigota recessiva).', ['aa'], { caseSensitive: true }),
      field('female3', 'Genótipo da cabra 3', 'Aa (heterozigota).', ['Aa', 'aA'], { caseSensitive: true }),
    ], { image: '/uerj-discursivas/2014-biologia-q5.png', imageAlt: 'Cabra 1: com chifres, filhote sem chifres. Cabra 2: com chifres, filhote com chifres. Cabra 3: sem chifres, filhote com chifres.' }),
  question(6, 11, 'Digestão do amido',
    'A análise do material coletado por uma sonda introduzida no intestino delgado de uma pessoa, algum tempo após a ingestão de uma refeição rica em amido, revelou a presença de um dissacarídeo e de um monossacarídeo.\n\nNomeie as duas enzimas envolvidas no processo de digestão do amido e o produto de cada uma delas.', [
      field('enzyme1', 'Enzima que atua inicialmente sobre o amido', 'Amilase.', ['amilase', 'amilase salivar', 'amilase pancreática', 'ptialina']),
      field('product1', 'Produto dessa primeira enzima', 'Maltose.', ['maltose']),
      field('enzyme2', 'Enzima que atua sobre o dissacarídeo', 'Maltase.', ['maltase']),
      field('product2', 'Produto dessa segunda enzima', 'Glicose.', ['glicose', 'glucose']),
    ]),
  question(7, 11, 'Precursores da acetilcoenzima A',
    'O ciclo dos ácidos tricarboxílicos, ou ciclo de Krebs, é realizado na matriz mitocondrial. Nesse ciclo, a acetilcoenzima A, proveniente do catabolismo de carboidratos, lipídios e proteínas, é oxidada.\n\nCite um monossacarídeo e duas substâncias derivadas da hidrólise de um tipo de lipídio que podem gerar acetilcoenzima A. Em seguida, nomeie o derivado do catabolismo de monossacarídeos que, por reações de desidrogenação e descarboxilação, é o precursor imediato da acetilcoenzima A.', [
      field('sugar', 'Um monossacarídeo', 'Glicose ou frutose.', ['glicose', 'glucose', 'frutose']),
      field('lipid1', 'Uma substância derivada da hidrólise de gordura', 'Ácidos graxos e glicerol.', [], { concepts: lipidProducts, distinctGroup: 'lipids' }),
      field('lipid2', 'Outra substância derivada da hidrólise de gordura', 'Informe a substância diferente da primeira.', [], { concepts: lipidProducts, distinctGroup: 'lipids' }),
      field('precursor', 'Precursor imediato da acetilcoenzima A', 'Ácido pirúvico (piruvato).', ['piruvato', 'ácido pirúvico', 'ácido pirúvico (piruvato)']),
    ]),
  question(8, 12, 'Febre amarela',
    'Atualmente, a varíola está erradicada no Brasil, mas a febre amarela apenas em algumas partes do país. No Rio de Janeiro, ainda existe a preocupação com o retorno desta doença.\n\nCite o agente etiológico da febre amarela e indique como ela é transmitida ao homem. Explique, também, por que, na cidade do Rio de Janeiro, há possibilidade de retorno da febre amarela.', [
      field('agent', 'Agente etiológico', 'Vírus da febre amarela.', ['vírus', 'vírus da febre amarela', 'flavivírus', 'flavivirus']),
      field('transmission', 'Forma de transmissão', 'Picada de mosquito infectado.', ['picada de mosquito infectado', 'picada de mosquito', 'picada de um mosquito infectado', 'picada de aedes aegypti infectado']),
      field('return', 'Por que havia possibilidade de retorno, segundo a questão?', 'Presença de mosquitos vetores no Rio de Janeiro e possibilidade de chegada de uma pessoa infectada, permitindo a circulação do vírus.', ['presença de mosquitos vetores e chegada de pessoas infectadas', 'focos de aedes e chegada de uma pessoa com febre amarela', 'presença de aedes aegypti e chegada de pessoas infectadas', 'mosquitos presentes podem transmitir o vírus de uma pessoa infectada que chegue à cidade', 'presença do vetor e introdução do vírus por pessoas infectadas']),
    ], { support: 'O texto de apoio descreve os problemas sanitários do Rio de Janeiro quando Oswaldo Cruz assumiu a direção da saúde pública. O enunciado retrata o contexto da prova de 2014.' }),
  question(9, 12, 'Fatores que afetam a fotossíntese',
    'O gráfico abaixo mostra a taxa de fotossíntese de uma mesma planta em função da temperatura e sob a concentração atmosférica de 0,05% de CO₂. As curvas correspondem aos resultados sob duas diferentes condições ambientais: dias nublados e dias ensolarados.\n\nCite o fator responsável pelas diferenças nas taxas de fotossíntese representadas nas duas curvas. Em seguida, identifique o processo biológico que promove a queda dessas taxas em temperaturas acima de 40 °C. Indique, ainda, o que deveria ocorrer com a taxa de fotossíntese em torno de 35 °C, em cada uma das curvas, se a concentração de CO₂ no ar fosse duplicada e justifique sua resposta.', [
      field('factor', 'Fator responsável pela diferença entre as curvas', 'Intensidade da iluminação.', ['luz', 'luminosidade', 'iluminação', 'intensidade luminosa', 'intensidade da luz', 'intensidade de iluminação']),
      field('process', 'Processo que reduz a taxa acima de 40 °C', 'Desnaturação das enzimas da fotossíntese.', ['desnaturação enzimática', 'desnaturação das enzimas', 'desnaturação das proteínas', 'desnaturação de enzimas da fotossíntese']),
      field('cloudy', 'Taxa em dias nublados se o CO₂ fosse duplicado', 'Aumentaria.', ['aumentaria', 'aumenta', 'aumento', 'aumento da taxa de fotossíntese']),
      field('sunny', 'Taxa em dias ensolarados se o CO₂ fosse duplicado', 'Aumentaria.', ['aumentaria', 'aumenta', 'aumento', 'aumento da taxa de fotossíntese']),
      field('reason', 'Justificativa para o efeito do CO₂', 'CO₂ é substrato da síntese de glicose; maior disponibilidade favorece a fotossíntese.', ['co2 é substrato da síntese de glicose', 'maior disponibilidade de co2 para a síntese de glicose', 'mais co2 disponível para a fotossíntese', 'aumento da disponibilidade de substrato para a fotossíntese', 'co2 é um reagente da fotossíntese']),
    ], { image: '/uerj-discursivas/2014-biologia-q9.png', imageAlt: 'Duas curvas de taxa de fotossíntese em função da temperatura; ambas atingem o máximo por volta de 35 graus e caem em temperaturas mais altas.' }),
  question(10, 13, 'Mutações e código genético',
    'Uma cultura de células de mamífero foi incubada com um agente mutagênico e teve seu DNA alterado. As células mutantes produziram moléculas de RNA mensageiro cujas proteínas modificadas tinham os aminoácidos isoleucina (ILE) ou valina (VAL), em vez de leucina (LEU), em uma determinada posição. Quando essas células mutantes foram expostas a outro agente mutagênico, foi gerada uma proteína com fenilalanina (PHE) nessa mesma posição.\n\nObserve o esquema e a tabela de códigos genéticos. Admita que as duas mutações ocorridas tenham sido provocadas pela mudança em apenas uma base nitrogenada. Utilizando a tabela de códigos genéticos, indique os códons possíveis para cada um dos quatro aminoácidos envolvidos nas mutações.', [
      field('leu', 'Códons possíveis para leucina (LEU)', 'CUU e CUC, considerando as duas mutações descritas.', [], { answerSet: ['CUU', 'CUC'] }),
      field('ile', 'Códons possíveis para isoleucina (ILE)', 'AUU e AUC.', [], { answerSet: ['AUU', 'AUC'] }),
      field('val', 'Códons possíveis para valina (VAL)', 'GUU e GUC.', [], { answerSet: ['GUU', 'GUC'] }),
      field('phe', 'Códons possíveis para fenilalanina (PHE)', 'UUU e UUC.', [], { answerSet: ['UUU', 'UUC'] }),
    ], { image: '/uerj-discursivas/2014-biologia-q10.png', imageAlt: 'Esquema LEU para ILE ou VAL, seguido de PHE, e tabela de códons de RNA com primeira, segunda e terceira bases.' }),
]
