import { studyTopics } from './studyTopics.js'
import { essaySummaries } from './essaySummaries.js'
import pilot from './studyPilot.json' with { type: 'json' }
import { studyPilotDetails } from './studyPilotDetails.js'
import { studyPodcasts } from './studyPodcasts.js'
import { medievalSummary } from './medievalSummary.js'
import { mathLessons } from './mathLessons.js'

// Resumos autorais. A existência de um resumo não indica uma rodada de questões curada.
const additionalSummaries = [
  {
    id: 'funcoes', title: 'Funções e gráficos', subject: 'Matemática',
    intro: 'Uma função associa cada valor de entrada a um único valor de saída. Gráficos e fórmulas ajudam a descrever relações entre preço, tempo, distância e outras grandezas.',
    concepts: [
      ['Função afim', 'Em f(x) = ax + b, a indica a variação de f quando x aumenta uma unidade e b é o valor de f(0). Se a é positivo, a função é crescente; se é negativo, decrescente.'],
      ['Função quadrática', 'Em f(x) = ax² + bx + c, com a diferente de zero, o gráfico é uma parábola. Se a > 0, o vértice é um mínimo; se a < 0, é um máximo. A coordenada horizontal do vértice é −b/(2a).'],
      ['Leitura de gráficos', 'Confira os eixos, as unidades, a escala e o domínio da situação. Interceptos, crescimento e pontos de máximo ou mínimo têm significado no contexto do problema.'],
    ],
    example: 'Uma corrida custa R$ 6 de taxa fixa mais R$ 2 por quilômetro. A função é C(x) = 2x + 6. Para 8 km, C(8) = 16 + 6 = R$ 22.',
    commonMistake: 'O termo b não é a taxa de crescimento. Não estenda um gráfico além do domínio informado sem verificar se a situação permite.',
    checklist: ['Identifique entrada, saída e unidades.', 'Separe a parcela fixa da parcela variável.', 'Confira se o resultado pertence ao domínio do problema.'],
  },
  {
    id: 'geometria', title: 'Geometria plana e espacial', subject: 'Matemática',
    intro: 'Geometria aparece em problemas sobre terrenos, embalagens, reservatórios e construções. Identifique a figura e diferencie comprimentos, áreas e volumes.',
    concepts: [
      ['Áreas e perímetros', 'Perímetro é o comprimento do contorno. A área do retângulo é base × altura; a do triângulo é base × altura ÷ 2; a do círculo é πr². O comprimento da circunferência é 2πr.'],
      ['Triângulo retângulo', 'O teorema de Pitágoras relaciona a hipotenusa h e os catetos a e b: h² = a² + b². Ele vale para triângulos retângulos. A hipotenusa fica oposta ao ângulo de 90°.'],
      ['Volumes e escalas', 'O volume de um bloco retangular é comprimento × largura × altura; o de um cilindro é πr²h. Quando os comprimentos são multiplicados por k, as áreas mudam por k² e os volumes por k³.'],
    ],
    example: 'Um reservatório retangular mede 2 m × 1,5 m × 1 m. Seu volume é 3 m³. Como 1 m³ corresponde a 1.000 litros, sua capacidade é de 3.000 litros.',
    commonMistake: 'Converter metros em centímetros não usa o mesmo fator que converter m² em cm² ou m³ em cm³. Área e volume exigem fatores elevados ao quadrado e ao cubo.',
    checklist: ['Identifique a figura e o que está sendo pedido.', 'Use medidas na mesma unidade.', 'Escreva a unidade final: comprimento, área ou volume.'],
  },
  {
    id: 'probabilidade', title: 'Probabilidade', subject: 'Matemática',
    intro: 'Probabilidade mede a chance de um evento em um modelo de resultados possíveis. A razão entre casos favoráveis e casos possíveis só pode ser usada diretamente quando os resultados são equiprováveis.',
    concepts: [
      ['Espaço amostral', 'Liste os resultados possíveis e identifique os favoráveis ao evento. A probabilidade varia de 0 a 1, ou de 0% a 100%.'],
      ['Eventos complementares', 'A chance de um evento não ocorrer é 1 menos a chance de ele ocorrer. Para “ao menos um”, pode ser mais simples calcular 1 menos a probabilidade de nenhum ocorrer.'],
      ['Etapas e dependência', 'Em eventos independentes, multiplique as probabilidades. Quando uma etapa altera a seguinte, como em sorteios sem reposição, atualize o número de possibilidades.'],
    ],
    example: 'Uma urna tem 3 bolas azuis e 2 vermelhas. A chance de retirar duas azuis sem reposição é (3/5) × (2/4) = 3/10 = 30%.',
    commonMistake: 'Não repita a probabilidade inicial em sorteios sem reposição. Diferencie “e” de “ou” e confira se eventos podem acontecer ao mesmo tempo.',
    checklist: ['Defina o evento e os resultados possíveis.', 'Confira se há reposição e equiprobabilidade.', 'Verifique se a resposta está entre 0 e 1.'],
  },
  {
    id: 'estatistica', title: 'Estatística e leitura de dados', subject: 'Matemática',
    intro: 'Tabelas e gráficos apresentam dados que precisam ser interpretados no contexto. Média, mediana e moda resumem uma distribuição de maneiras diferentes.',
    concepts: [
      ['Média e média ponderada', 'A média simples é a soma dos valores dividida pela quantidade. Na média ponderada, multiplique cada valor por seu peso, some os produtos e divida pela soma dos pesos.'],
      ['Mediana e moda', 'Para encontrar a mediana, ordene os dados. Ela é o valor central ou a média dos dois centrais quando a quantidade é par. A moda é o valor de maior frequência; pode haver mais de uma ou nenhuma moda.'],
      ['Gráficos e comparação', 'Confira a escala, a unidade e se os dados são absolutos ou relativos. Um eixo que começa acima de zero pode ampliar visualmente uma diferença. Correlação não prova causalidade.'],
    ],
    example: 'Nos dados 2, 3, 3 e 12, a média é 20 ÷ 4 = 5, a mediana é (3 + 3) ÷ 2 = 3 e a moda é 3. O valor 12 eleva a média.',
    commonMistake: 'Não calcule a mediana sem ordenar os valores. A média de médias de grupos com tamanhos diferentes exige ponderação pelo tamanho de cada grupo.',
    checklist: ['Leia título, legenda e unidades.', 'Ordene os dados quando necessário.', 'Escolha a medida adequada à pergunta.'],
  },
  {
    id: 'generos-textuais', title: 'Gêneros textuais e funções da linguagem', subject: 'Português',
    intro: 'Gêneros textuais são formas de comunicação ligadas a situações sociais: notícia, anúncio, crônica, artigo de opinião e muitas outras. A finalidade e o público ajudam a interpretar o texto.',
    concepts: [
      ['Gênero e sequência textual', 'Gênero é a forma social do texto; narração, descrição, exposição, argumentação e injunção são modos de organizar o conteúdo. Um gênero pode reunir várias dessas sequências.'],
      ['Funções da linguagem', 'A referencial destaca a informação; a emotiva, o emissor; a conativa, o destinatário; a fática, o contato; a metalinguística, o próprio código; a poética, a forma da mensagem. Podem coexistir.'],
      ['Texto verbal e não verbal', 'Em anúncios, tirinhas e cartazes, imagem, palavras, cores e composição constroem sentido em conjunto. A resposta deve considerar a relação entre esses elementos.'],
    ],
    example: 'Em um anúncio com “Economize água: feche a torneira”, o imperativo procura orientar o comportamento do leitor. Isso destaca a função conativa.',
    commonMistake: 'Não classifique um texto apenas por uma palavra isolada. Uma notícia pode conter descrição, e uma propaganda pode apresentar informações para convencer.',
    checklist: ['Identifique quem fala e para quem.', 'Reconheça a finalidade do texto.', 'Relacione imagens e linguagem verbal.'],
  },
  {
    id: 'variacao-linguistica', title: 'Variação linguística', subject: 'Português',
    intro: 'A língua varia conforme região, grupo social, época e situação de comunicação. Interpretar essas variações exige considerar o contexto e evitar preconceito linguístico.',
    concepts: [
      ['Tipos de variação', 'Diferenças regionais, sociais e históricas aparecem no vocabulário, na pronúncia e nas construções. As escolhas também variam conforme o grau de formalidade da situação.'],
      ['Adequação ao contexto', 'Uma conversa entre amigos e um requerimento formal pedem escolhas diferentes. Adequação depende do público, do objetivo e da situação, não de uma hierarquia entre as pessoas.'],
      ['Norma-padrão e identidade', 'A norma-padrão é uma referência usada em contextos formais. Outras variedades têm regras e expressam identidades culturais; não indicam menor capacidade intelectual.'],
    ],
    example: '“Mandioca”, “aipim” e “macaxeira” podem nomear o mesmo alimento em diferentes regiões. É um exemplo de variação lexical regional.',
    commonMistake: 'Não trate toda diferença em relação à norma-padrão como falha de comunicação. Observe a função da variedade no texto e a situação em que ela aparece.',
    checklist: ['Identifique a situação comunicativa.', 'Observe marcas regionais, sociais e de formalidade.', 'Diferencie adequação linguística de preconceito.'],
  },
  {
    id: 'ecologia', title: 'Ecologia e impactos ambientais', subject: 'Biologia',
    intro: 'Ecologia estuda as relações dos seres vivos entre si e com o ambiente. Cadeias alimentares, ciclos da matéria e impactos humanos ajudam a explicar mudanças nos ecossistemas.',
    concepts: [
      ['Energia e matéria', 'Produtores incorporam energia à cadeia, geralmente por fotossíntese. A energia disponível diminui entre níveis tróficos; a matéria circula e é reciclada, com participação dos decompositores.'],
      ['Populações e relações ecológicas', 'Competição, predação e outras interações influenciam o tamanho das populações. Uma mudança em uma espécie pode afetar diversas outras em uma teia alimentar.'],
      ['Impactos ambientais', 'Eutrofização envolve excesso de nutrientes, proliferação de organismos e possível redução do oxigênio dissolvido. Desmatamento e fragmentação alteram habitats e ameaçam a biodiversidade.'],
    ],
    example: 'Fertilizantes levados pela chuva a um lago aumentam a oferta de nutrientes. A proliferação de algas e a decomposição de matéria orgânica podem reduzir o oxigênio e causar morte de peixes.',
    commonMistake: 'Energia não é reciclada como a matéria. Em uma cadeia, a seta normalmente aponta do organismo que serve de alimento para quem o consome.',
    checklist: ['Identifique os níveis tróficos.', 'Diferencie fluxo de energia de ciclo da matéria.', 'Relacione causa, processo e consequência ambiental.'],
  },
  {
    id: 'genetica', title: 'Genética e hereditariedade', subject: 'Biologia',
    intro: 'Genética estuda a transmissão e a expressão das informações hereditárias. Genes, alelos e condições ambientais participam da formação das características dos organismos.',
    concepts: [
      ['Genótipo e fenótipo', 'Genótipo é a constituição genética considerada. Fenótipo é a característica observável, resultante da interação entre genótipo e ambiente. Dominância não significa maior frequência na população.'],
      ['Segregação dos alelos', 'Em um modelo mendeliano para um locus, os alelos se separam na formação dos gametas. Um indivíduo Aa pode produzir gametas A ou a. Use as condições do enunciado para montar o cruzamento.'],
      ['DNA e expressão gênica', 'A informação do DNA pode ser transcrita em RNA. Na síntese proteica, o RNA mensageiro orienta a sequência de aminoácidos. Nem todo gene codifica uma proteína.'],
    ],
    example: 'No cruzamento Aa × Aa, as combinações esperadas são AA, Aa, Aa e aa. A probabilidade de aa é 1/4. Com dominância completa, a proporção fenotípica esperada é 3:1.',
    commonMistake: 'As proporções mendelianas dependem do modelo. Dominância incompleta, codominância, ligação gênica e herança poligênica exigem outras análises.',
    checklist: ['Identifique o padrão de herança informado.', 'Liste os gametas possíveis.', 'Diferencie probabilidade de genótipo e de fenótipo.'],
  },
  {
    id: 'evolucao', title: 'Evolução e seleção natural', subject: 'Biologia',
    intro: 'Evolução envolve mudanças nas características hereditárias das populações ao longo das gerações. Seleção natural é um dos processos que alteram as frequências dessas características.',
    concepts: [
      ['Variabilidade', 'Mutações e recombinação contribuem para diferenças hereditárias. Mutações não surgem porque o organismo precisa de uma característica específica.'],
      ['Seleção natural', 'Em determinado ambiente, algumas variantes podem favorecer sobrevivência e reprodução. O resultado depende do contexto; uma característica vantajosa em um ambiente pode não ser em outro.'],
      ['Outros mecanismos e ancestralidade', 'Deriva genética envolve alterações ao acaso, especialmente relevantes em populações pequenas. Fluxo gênico ocorre entre populações. Árvores evolutivas representam hipóteses de parentesco, não uma escala de progresso.'],
    ],
    example: 'Em uma população bacteriana, variantes resistentes podem existir antes do uso de um antibiótico. O tratamento favorece sua sobrevivência relativa, e elas podem deixar mais descendentes.',
    commonMistake: 'Indivíduos não passam a ter uma adaptação hereditária por vontade ou necessidade. A seleção atua sobre diferenças existentes; populações mudam ao longo das gerações.',
    checklist: ['Localize a variação hereditária.', 'Identifique a pressão seletiva.', 'Diferencie seleção, mutação e mudança ao acaso.'],
  },
  {
    id: 'estequiometria', title: 'Estequiometria', subject: 'Química',
    intro: 'Estequiometria relaciona as quantidades de reagentes e produtos em uma reação. O primeiro passo é usar uma equação química corretamente balanceada.',
    concepts: [
      ['Mol e massa molar', 'O mol expressa quantidade de matéria. Para uma substância de massa m e massa molar M, n = m/M. A massa molar pode ser calculada a partir da fórmula e das massas atômicas fornecidas.'],
      ['Proporção da reação', 'Os coeficientes da equação balanceada indicam proporções entre quantidades em mol. Eles não indicam diretamente a mesma proporção entre massas.'],
      ['Limitante e rendimento', 'O reagente limitante determina a quantidade máxima de produto. O rendimento percentual é a quantidade obtida dividida pela quantidade teórica, multiplicada por 100.'],
    ],
    example: 'Em 2 H₂ + O₂ → 2 H₂O, 4 mol de H₂ reagem com 2 mol de O₂ e podem formar 4 mol de H₂O, com reagentes suficientes e rendimento de 100%.',
    commonMistake: 'Não compare massas diretamente pelos coeficientes. Converta para mol e verifique pureza, reagente limitante e rendimento quando o enunciado informar.',
    checklist: ['Balanceie a equação.', 'Converta as quantidades para unidades compatíveis.', 'Identifique o limitante e aplique o rendimento.'],
  },
  {
    id: 'solucoes', title: 'Soluções e concentração', subject: 'Química',
    intro: 'Uma solução é uma mistura homogênea. A concentração relaciona a quantidade de soluto à quantidade de solução e pode ser expressa de diferentes formas.',
    concepts: [
      ['Concentração em massa', 'C = m/V relaciona a massa de soluto ao volume de solução. Se a massa está em gramas e o volume em litros, a unidade é g/L. Use o volume final da solução.'],
      ['Concentração em mol', 'A concentração molar é n/V, geralmente em mol/L. Para converter massa em mol, utilize n = m/M, com a massa molar adequada.'],
      ['Diluição', 'Adicionar solvente reduz a concentração sem mudar a quantidade de soluto, se não houver reação ou perda. Nessas condições, C₁V₁ = C₂V₂ para a mesma forma de concentração.'],
    ],
    example: 'Uma solução tem 10 g de soluto em 0,5 L de solução: C = 20 g/L. Ao diluir até o volume final de 1 L, a concentração passa a 10 g/L.',
    commonMistake: 'Volume final não é volume adicionado. Densidade da solução relaciona sua massa total ao volume, enquanto concentração em massa considera a massa do soluto.',
    checklist: ['Identifique soluto e solução.', 'Confira a unidade de concentração.', 'Use o volume final e verifique se o soluto foi conservado.'],
  },
  {
    id: 'quimica-organica', title: 'Química orgânica e funções', subject: 'Química',
    intro: 'Química orgânica estuda compostos de carbono, suas estruturas, propriedades e transformações. Reconhecer os grupos funcionais ajuda a interpretar moléculas do cotidiano.',
    concepts: [
      ['Cadeias carbônicas', 'Classifique a cadeia conforme sua estrutura: aberta ou fechada, normal ou ramificada, homogênea ou heterogênea. Insaturação da cadeia envolve ligação dupla ou tripla entre carbonos.'],
      ['Grupos funcionais', 'Álcool tem hidroxila ligada a carbono saturado; ácido carboxílico tem o grupo carboxila; éster apresenta a ligação característica −COO− entre grupos orgânicos. Aminas contêm nitrogênio ligado a hidrogênios ou grupos orgânicos.'],
      ['Propriedades e interações', 'Polaridade e forças intermoleculares influenciam solubilidade e temperatura de ebulição. Uma cadeia carbônica maior tende a reduzir a solubilidade em água dentro de uma mesma série de álcoois.'],
    ],
    example: 'O etanol, CH₃CH₂OH, é um álcool. Sua hidroxila permite ligações de hidrogênio com a água, ajudando a explicar sua miscibilidade com ela.',
    commonMistake: 'Não classifique uma molécula só por ter oxigênio. Observe as ligações e o grupo funcional; uma molécula pode apresentar várias funções.',
    checklist: ['Localize os grupos funcionais.', 'Observe a estrutura e as ligações da cadeia.', 'Relacione estrutura, polaridade e propriedades.'],
  },
  {
    id: 'cinematica', title: 'Cinemática e movimento', subject: 'Física',
    intro: 'Cinemática descreve o movimento a partir de um referencial, sem analisar suas causas. Posição, deslocamento, velocidade e aceleração devem ser interpretados com unidades e sinais.',
    concepts: [
      ['Velocidade média', 'A velocidade média é deslocamento dividido pelo intervalo de tempo. Distância percorrida e deslocamento podem ser diferentes; por isso, rapidez média e velocidade média não são sempre iguais.'],
      ['Movimento uniforme', 'Com velocidade constante, x = x₀ + vt. O gráfico posição × tempo é uma reta, e sua inclinação representa a velocidade.'],
      ['Aceleração constante', 'Nesse modelo, v = v₀ + at e x = x₀ + v₀t + at²/2. No gráfico velocidade × tempo, a inclinação indica aceleração e a área algébrica indica deslocamento.'],
    ],
    example: 'Um carro se desloca 150 km em 2 horas sempre no mesmo sentido. Sua velocidade média nesse referencial é 75 km/h, equivalente a aproximadamente 20,8 m/s.',
    commonMistake: 'A média das velocidades de dois trechos só é uma média simples quando os tempos são iguais. Use o deslocamento total dividido pelo tempo total.',
    checklist: ['Defina o referencial e o sentido positivo.', 'Converta km/h para m/s dividindo por 3,6 quando necessário.', 'Escolha a equação de acordo com as condições do movimento.'],
  },
  {
    id: 'energia-mecanica', title: 'Trabalho, energia e potência', subject: 'Física',
    intro: 'Energia permite analisar transformações e transferências. Trabalho é uma forma de transferência de energia, e potência indica a rapidez dessa transferência.',
    concepts: [
      ['Energia mecânica', 'A energia cinética é mv²/2. Perto da superfície terrestre, a variação da energia potencial gravitacional pode ser calculada por mgΔh. A energia potencial depende de um nível de referência.'],
      ['Trabalho e conservação', 'Para força constante, W = Fd cosθ. O trabalho da força resultante é igual à variação da energia cinética. A energia mecânica se conserva quando não há trabalho de forças dissipativas ou outras transferências que a alterem.'],
      ['Potência e eficiência', 'A potência média é energia transferida dividida pelo tempo. A eficiência relaciona energia ou potência útil à fornecida; perdas transformam energia, por exemplo, em aquecimento.'],
    ],
    example: 'Elevar uma massa de 2 kg em 5 m aumenta sua energia potencial em 2 × 10 × 5 = 100 J, usando g = 10 m/s². Se isso leva 4 s, a potência útil média é 25 W.',
    commonMistake: 'Energia não desaparece por causa do atrito: parte se transforma em energia interna. Watt mede potência; joule mede energia.',
    checklist: ['Identifique as formas de energia.', 'Verifique se a energia mecânica pode ser conservada.', 'Diferencie energia, potência e eficiência.'],
  },
  {
    id: 'eletricidade', title: 'Circuitos e consumo elétrico', subject: 'Física',
    intro: 'Circuitos envolvem corrente, tensão e resistência. Para analisar consumo, relacione a potência do equipamento ao tempo em que ele fica ligado.',
    concepts: [
      ['Lei de Ohm', 'Para um resistor ôhmico nas condições consideradas, U = Ri. Tensão é medida em volts, corrente em ampères e resistência em ohms.'],
      ['Associações', 'Em resistores em série, a corrente é a mesma e as resistências se somam. Em paralelo, a tensão é a mesma e 1/R equivalente é a soma dos inversos das resistências.'],
      ['Potência e consumo', 'Em corrente contínua, a potência elétrica pode ser calculada por P = Ui. Energia consumida é E = PΔt. Na conta de energia, kWh é uma unidade de energia, não de potência.'],
    ],
    example: 'Um aparelho de 1.000 W ligado durante 2 horas consome 1 kW × 2 h = 2 kWh. A R$ 0,80 por kWh, o custo dessa energia seria R$ 1,60, sem outras cobranças.',
    commonMistake: 'Não misture W e kW ao calcular kWh. As relações P = Ri² e P = U²/R são aplicadas a resistores nas condições apropriadas.',
    checklist: ['Identifique a associação do circuito.', 'Converta potência e tempo para unidades compatíveis.', 'Diferencie tensão, corrente e energia consumida.'],
  },
  {
    id: 'brasil-colonia', title: 'Brasil colonial e escravidão', subject: 'História',
    intro: 'A colonização portuguesa envolveu exploração econômica, ocupação territorial, imposição de poder e conflitos com diferentes grupos. A escravidão e suas resistências são centrais para compreender o período.',
    concepts: [
      ['Economia e território', 'Produção açucareira, mineração, pecuária e outras atividades articularam regiões e formas de trabalho. A economia colonial não se reduzia à exportação: também havia mercados e atividades internas.'],
      ['Escravidão e resistência', 'A escravização de indígenas e africanos envolveu violência e diferentes interesses. Pessoas escravizadas resistiram por fugas, quilombos, revoltas, negociações e preservação ou recriação de práticas culturais.'],
      ['Fontes históricas', 'Documentos expressam posições e interesses de quem os produziu. Identifique autoria, época e finalidade antes de usar uma fonte para explicar o passado.'],
    ],
    example: 'Um registro de um proprietário que descreve fugas como “desordem” revela seu ponto de vista. Para analisar a resistência das pessoas escravizadas, é preciso contextualizar esse interesse e comparar fontes.',
    commonMistake: 'Evite tratar indígenas ou africanos como grupos homogêneos ou passivos. Não suponha que todos os períodos e regiões coloniais tinham a mesma organização.',
    checklist: ['Situe o documento no tempo e no espaço.', 'Identifique os grupos e seus interesses.', 'Relacione exploração, poder e resistência.'],
  },
  {
    id: 'urbanizacao', title: 'Urbanização e desigualdades', subject: 'Geografia',
    intro: 'Urbanização envolve o aumento da participação da população urbana e transformações na organização do espaço. Transporte, moradia, trabalho e acesso a serviços revelam desigualdades dentro das cidades.',
    concepts: [
      ['Urbanização e migração', 'Industrialização, mudanças no campo e concentração de serviços podem estimular migrações. Crescimento da população de uma cidade e aumento da proporção urbana do país são medidas diferentes.'],
      ['Rede urbana', 'Cidades se conectam por fluxos de pessoas, mercadorias, informações e serviços. Sua influência depende das funções que exercem, não apenas do tamanho populacional.'],
      ['Segregação e ambiente', 'Preço da terra e distribuição de infraestrutura influenciam o acesso à moradia e aos serviços. Ocupação de áreas de risco, impermeabilização e falta de drenagem podem ampliar problemas como enchentes.'],
    ],
    example: 'Bairros distantes dos empregos e com transporte insuficiente podem impor deslocamentos mais longos e caros. Isso limita o acesso a oportunidades e revela desigualdade socioespacial.',
    commonMistake: 'Não explique problemas urbanos apenas pelo número de habitantes. Considere planejamento, infraestrutura, renda, uso do solo e políticas públicas.',
    checklist: ['Identifique a escala: bairro, cidade ou rede urbana.', 'Relacione localização e acesso aos serviços.', 'Procure causas sociais e ambientais combinadas.'],
  },
  {
    id: 'clima-energia', title: 'Clima, energia e sustentabilidade', subject: 'Geografia',
    intro: 'Clima descreve padrões atmosféricos de longo prazo; tempo é a condição em um momento. Produção e consumo de energia se relacionam ao território, à economia e aos impactos ambientais.',
    concepts: [
      ['Fatores climáticos', 'Latitude, altitude, relevo, massas de ar, correntes oceânicas e proximidade do mar influenciam os climas. Uma situação isolada não caracteriza todo o padrão climático de uma região.'],
      ['Efeito estufa e mudança climática', 'O efeito estufa natural ajuda a manter temperaturas adequadas à vida. Sua intensificação por atividades humanas altera o balanço energético e contribui para o aquecimento global.'],
      ['Fontes e matrizes de energia', 'Matriz energética inclui diferentes usos de energia; matriz elétrica trata da geração de eletricidade. Fontes renováveis também podem provocar impactos, que dependem da tecnologia e de sua localização.'],
    ],
    example: 'Uma hidrelétrica usa um fluxo de água renovável para gerar eletricidade, mas a formação do reservatório pode alterar ecossistemas e deslocar comunidades. Renovável não significa ausência de impactos.',
    commonMistake: 'Não confunda efeito estufa com destruição da camada de ozônio, nem matriz energética com matriz elétrica. Um dia frio não refuta uma tendência climática de longo prazo.',
    checklist: ['Diferencie tempo e clima.', 'Identifique a fonte de energia e a escala do impacto.', 'Compare benefícios e consequências sociais e ambientais.'],
  },
]

// Uma única entrada por assunto, mantendo as referências de prática e o resumo completo.
const summaries = new Map(studyTopics.map(topic => [topic.id, topic]))
for (const summary of [...additionalSummaries, ...essaySummaries]) summaries.set(summary.id, { ...summaries.get(summary.id), ...summary })
for (const module of pilot.modules) {
  const existing = summaries.get(module.id)
  const details = studyPilotDetails[module.id] || []
  summaries.set(module.id, {
    ...existing,
    id: module.id,
    title: module.title,
    subject: module.subject,
    intro: existing?.intro || module.content[0].split(/\.(?=[A-ZÁÉÍÓÚ])/)[0] + '.',
    concepts: existing?.concepts || details.map(([title, ...paragraphs]) => [title, paragraphs.join(' ')]),
    checklist: existing?.checklist || details.map(([title]) => title),
    lesson: { ...module, details, podcast: studyPodcasts[module.id] },
  })
}
summaries.set(medievalSummary.id, { ...summaries.get(medievalSummary.id), ...medievalSummary, lesson: { ...medievalSummary.lesson, podcast: studyPodcasts[medievalSummary.id] } })
for (const [id, mathLesson] of Object.entries(mathLessons)) {
  const summary = summaries.get(id)
  summaries.set(id, { ...summary, mathLesson, concepts: mathLesson.sections.map(section => [section.title, section.paragraphs.join(' ')]) })
}
export const studySummaries = [...summaries.values()]
export const summarySubjects = [...new Set(studySummaries.map(topic => topic.subject))]
