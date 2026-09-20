import React, { useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import {
  ArrowLeft, ArrowRight, Award, BookOpen, Check, ChevronDown, Clock3,
  GraduationCap, LayoutGrid, Menu, RotateCcw, Sparkles, Target, X,
} from 'lucide-react'
import './styles.css'
import questions2024Day1 from './2024-1-questions.json'
import questions2024Day2 from './2024-2-questions.json'

const enem2023EnglishQuestions = [
  {
    subject: 'Língua Inglesa',
    text: 'Nesse poema, a expressão "No man is an island" ressalta o(a):',
    support: 'No man is an island,\nEntire of itself;\nEvery man is a piece of the continent,\nA part of the main.\n[...]\nAny man\'s death diminishes me,\nBecause I am involved in mankind.\n\nDONNE, J. The Works of John Donne. Londres: John W. Parker, 1839 (fragmento).',
    options: ['Medo da morte.', 'Ideia de conexão.', 'Conceito de solidão.', 'Risco de devastação.', 'Necessidade de empatia.'],
    answer: 'B',
  },
  {
    subject: 'Língua Inglesa',
    text: 'Ao retratar o ambiente de trabalho em um escritório, esse cartum tem por objetivo:',
    supportImage: '/enem-2023-ingles-questao-2.png',
    options: ['Criticar um padrão de vestimenta.', 'Destacar a falta de diversidade.', 'Indicar um modo de interação.', 'Elogiar um modelo de organização.', 'Salientar o espírito de cooperação.'],
    answer: 'B',
  },
  {
    subject: 'Língua Inglesa',
    text: 'Esse cartaz de campanha sugere que:',
    supportImage: '/enem-2023-ingles-questao-3.png',
    options: ['Os lixões precisam de ampliação.', 'O desperdício degrada o ambiente.', 'Os mercados doam alimentos perecíveis.', 'A desnutrição compromete o raciocínio.', 'As residências carecem de refrigeradores.'],
    answer: 'A',
  },
  {
    subject: 'Língua Inglesa',
    text: 'Ao retratar a trajetória de refugiados, o poema recorre à imagem de viagem marítima para destacar o(a):',
    support: 'Things We Carry on the Sea\n\nWe carry tears in our eyes: good-bye father, good-bye mother\nWe carry soil in small bags: may home never fade in our hearts\nWe carry carnage of mining, droughts, floods, genocides\nWe carry dust of our families and neighbors incinerated in mushroom clouds\nWe carry our islands sinking under the sea\nWe carry our hands, feet, bones, hearts and best minds for a new life\nWe carry diplomas: medicine, engineer, nurse, education, math, poetry, even if they mean nothing to the other shore\nWe carry old homes along the spine, new dreams in our chests\nWe carry yesterday, today and tomorrow\nWe are refugees of the sea rising from industrial wastes\nAnd we carry our mother tongues\n\nPING, W. Disponível em: https://poets.org. Acesso em: 1 jun. 2023 (fragmento).',
    options: ['Risco de choques culturais.', 'Impacto do ensino de história.', 'Importância da luta ambiental.', 'Existência de experiências plurais.', 'Necessidade de capacitação profissional.'],
    answer: 'D',
  },
  {
    subject: 'Língua Inglesa',
    text: 'Nesse poema de Tato Laviera, o eu lírico destaca uma:',
    support: 'Spanglish\n\npues estoy creando Spanglish\nbi-cultural systems\nscientific lexicographical\ninter-textual integrations\ntwo expressions\nexistentially wired\ntwo dominant languages\ncontinentally abrazándose\nin colloquial combate\nimperio spanglish emerges\nsobre territorio bi-lingual\nlas novelas mexicanas\nmixing with radiorocknroll\nimmigrant/migrant\nnasal mispronouncements\nhip-hop, street salsa, spanish pop\nstandard english classroom\nwith computer technicalities\nspanglish is literally perfect\n\nLAVIERA, T. Benedición: The Complete Poetry of Tato Laviera. Houston: Arte Público Press, 2014 (fragmento).',
    options: ['Convergência linguístico-cultural.', 'Característica histórico-cultural.', 'Tendência estilístico-literária.', 'Discriminação cultural.', 'Censura musical.'],
    answer: 'A',
  },
]

const enem2023SpanishQuestions = [
  { subject: 'Língua Espanhola', text: 'Para enfatizar características e atitudes que reforçam a identidade da mulher negra, o poema da escritora costarriquenha apresenta:', support: 'Me niego rotundamente\nA negar mi voz, mi sangre y mi piel.\nPorque me acepto rotundamente libre, rotundamente negra, rotundamente hermosa.', options: ['Advérbios como “rotundamente” e “categóricamente”.', 'Verbos reflexivos como “me niego” e “me acepto”.', 'Adjetivos como “grande” e “hermosa”.', 'Substantivos como “sangre” e “piel”.', 'Adjetivos possessivos como “mi” e “mis”.'], answer: 'A' },
  { subject: 'Língua Espanhola', text: 'Nesse texto, a expressão “cortina de humo” revela que o manipulador:', options: ['Amadurece tardiamente.', 'Busca mascarar a verdade.', 'Rejeita questionamentos alheios.', 'Aproxima-se de pessoas indefesas.', 'Faz-se presente de forma controladora.'], answer: 'B' },
  { subject: 'Língua Espanhola', text: 'A letra da canção Que quede claro, da banda cubana Orishas, revela o(a):', options: ['Indignação diante do desrespeito à diversidade.', 'Violência característica das grandes metrópoles.', 'Preconceito da sociedade com relação ao misticismo.', 'Descuido da população com os sonhos dos imigrantes.', 'Falta de segurança existente no transporte público urbano.'], answer: 'A' },
  { subject: 'Língua Espanhola', text: 'Nesse poema, o eu poético enaltece a:', support: '“Caramelos” en sus suelos\n\nLas tierras de España, tu vista enamoran; sus gentes; te amistan; ¿“cocinas”?, ¡“te molan”!\n¿El plato común?, ¡pues «tortilla/patatas»!; en bares, figones, o tascas, ¡las «tapas»!;\n“sabor nacional”, ¡el «gazpacho», sus «vinos», «sangría», y «jamón» de sabrosos cochinos!\n\nQUIROZ Y LÓPEZ, M. Disponível em: https://pt.calameo.com. Acesso em: 25 out. 2021.', options: ['Característica amistosa do povo espanhol.', 'Beleza das paisagens naturais da Espanha.', 'Variedade de pratos na gastronomia espanhola.', 'Relação entre os sentidos do paladar e do olfato na gastronomia.', 'Gastronomia como representação da identidade cultural de um povo.'], answer: 'E' },
  { subject: 'Língua Espanhola', text: 'O filme Como estrellas en la tierra aborda o tema da dislexia. Relacionando o cartaz do filme com a sinopse, constata-se que o(a):', support: 'TEXTO II\n\nIshaan Awashi es un niño de 8 años cuyo mundo está plagado de maravillas que nadie más parece apreciar. Ishaan parece no poder hacer nada bien en clase. Hasta que un día, el nuevo profesor de arte, Ram Shankar Nikumbh, entra en escena, se interesa por el pequeño Ishaan y todo cambia.\n\nDisponível em: https://elfinalde.com. Acesso em: 26 out. 2021 (adaptado).', options: ['Olhar diferenciado para com o outro gera mudanças.', 'Estudante com dislexia apresenta um tom questionador.', 'Abordagem para lidar com a dislexia é pautada na disciplina.', 'Contato com os pais prejudica o acompanhamento da dislexia.', 'Mudança de interesses ocorre na transição da infância para a vida adulta.'], answer: 'A' },
]

const correctedQuestions2024Day1 = questions2024Day1.map((question, index) => (
  index === 2
    ? {
        ...question,
        text: 'A letra da canção de Emicida, Texto I, e o post, Texto II, aproximam-se quanto à temática. O trecho metafórico do Texto I que confirma essa afirmação é:',
        options: [
          'A brasa dorme fria e só quem dança é a fumaça.',
          'As nuvens curiosas, como são / Se vestem de cabelo crespo, ancião.',
          'De madruga é que as aranha tece no breu.',
          'E amantes ofegantes vão pro mundo de Morfeu.',
          'Na São Paulo das manhã que tem lá seus Vietnã.',
        ],
      }
    : index === 5
    ? {
        ...question,
        text: 'Analise as Figuras 1, 2 e 3. A Figura 1 representa as massas de ar que atuam sobre a América do Sul. A Figura 2 representa o acumulado de chuvas, em milímetros, no Brasil entre 21/04/2024 e 06/05/2024. A Figura 3 apresenta a precipitação acumulada nos últimos 15 dias. O elevado nível de chuvas no Rio Grande do Sul pode ser considerado um evento extremo causado por uma conjunção de fenômenos meteorológicos. É correto afirmar que uma das causas desse evento extremo foi:',
        options: [
          'A Massa Polar Atlântica, fria e úmida, manteve-se sobre o Rio Grande do Sul devido ao bloqueio atmosférico no Centro-Sul do Brasil.',
          'A Massa Tropical Atlântica, quente e úmida, não atingiu o Rio Grande do Sul devido ao enfraquecimento da Zona de Alta Pressão Atlântica.',
          'O aquecimento global ainda não atingiu o estado do Rio Grande do Sul, o que provocou temperaturas abaixo da média e chuvas intensas.',
          'A Massa Equatorial Continental, quente e úmida, deslocou-se para o Nordeste brasileiro em decorrência das baixas precipitações na Amazônia.',
          'O fenômeno El Niño provocou a diminuição das temperaturas no Centro-Sul do Brasil, atraindo a Massa Tropical Continental, quente e seca, para essa área.',
        ],
      }
    : question
))

const subjects = [
  { name: 'Língua Portuguesa', count: 5, color: 'coral' },
  { name: 'Geografia', count: 5, color: 'blue' },
  { name: 'Matemática', count: 5, color: 'amber' },
  { name: 'Química', count: 5, color: 'purple' },
]
const dayTwoTextTwo = 'TEXTO 2\nMama Africa\nChico Cesar\n\nA minha mae e mae solteira. Mama Africa tem tanto o que fazer, alem de cuidar nenem e fazer denguim. Mama Africa vai e vem, mas nao se afasta de voce.\n\nFonte: CESAR, Chico. Mama Africa (Fragmento). In: Cuscuz cla. Rio de Janeiro: MZA Music, 1996.'
const dayTwoTextThree = 'TEXTO 3\nrotina\nBruna Mitrano\n\nPela manha empurrar lama com rodo, enxaguar os panos enfiados nos pes das portas, desempilhar os moveis e coloca-los de cabeca pra cima. Toalhas escaldadas trazem a avo, reerguendo a casa tantos temporais depois de desenhar com uma lasca de tijolo sois na calcada.\n\nFonte: MITRANO, Bruna. Ninguem quis ver. Sao Paulo: Companhia das Letras, 2023, p. 61.'
const dayTwoTextFour = 'TEXTO 4\nNao vou mais lavar os pratos\nCristiane Sobral\n\nNao vou mais lavar os pratos. Nem vou limpar a poeira dos moveis. Sinto muito. Comecei a ler. Depois de ler percebi a estetica dos pratos, a estetica dos tracos, a etica. Depois de tantos anos alfabetizada, aprendi a ler. Li a assinatura da minha lei aurea escrita em negro maiusculo. Aboli. Nao lavo mais os pratos. Quero travessas de prata, cozinha de luxo e joias de ouro. Esta decretada a lei aurea.\n\nFonte: SOBRAL, Cristiane. Nao vou mais lavar os pratos. Rio de Janeiro: Male, 2022.'
const dayTwoTextFive = 'TEXTO 5\nCapitulo 4, versiculo 3\nRacionais MCs\n\n60% dos jovens de periferia sofreram violencia policial. Tres em cada quatro mortos pela policia sao negros. Nas universidades, apenas 2% dos alunos sao negros. Um jovem negro morre violentamente a cada quatro horas em Sao Paulo.\n\nFonte: RACIONAIS MCs. Sobrevivendo no inferno. Sao Paulo: Companhia das Letras, 2018.'
const dayTwoTextSix = 'TEXTO 6\nCaderno de Retorno\nEdimilson de Almeida Pereira\n\n75% dos azuis tem mais chances de serem os primeiros demitidos. 70% trabalham em servicos nao-tecnicos. 80,9% de suas parceiras ganham ate dois salarios minimos. 62% ganham ate dois salarios minimos. 80% moram em favelas e locais insalubres. 87% dos que estao fora das escolas sao azuis como seus pais. 47% concluem o ensino medio e somente 1% concluem o ensino superior. 37,7% das azuis sao analfabetas; 40,25% dos azuis sao analfabetos.\n\nFonte: PEREIRA, Edimilson de Almeida. Caderno de retorno. 2. ed. Salvador: Ogums Toques Editora, 2017.'

const questions = [
  {
    subject: 'Língua Portuguesa',
    text: 'A partir da leitura da reportagem “Universidades brasileiras discutem regras de uso de inteligência artificial” (Texto 1), podemos compreender que um guia foi publicado pelo Centro Universitário Senai Cimatec, na Bahia, com o objetivo principal de:',
    options: [
      'Desestimular professores a aceitarem o uso de IA em trabalhos acadêmicos.',
      'Desincentivar o uso da IA para garantir a ausência total de desinformação.',
      'Orientar a comunidade acadêmica sobre o uso devido da IA, com transparência e responsabilidade.',
      'Autorizar o uso irrestrito de ferramentas de IA em qualquer atividade.',
      'Substituir a autoria humana por sistemas de inteligência artificial.',
    ],
    answer: 'C',
  },
  {
    subject: 'Língua Portuguesa',
    text: 'A partir da leitura da reportagem “Universidades brasileiras discutem regras de uso de inteligência artificial” (Texto 1), o uso dessas ferramentas no ensino e na pesquisa deve ser acompanhado principalmente de:',
    options: [
      'Transparência, proteção de dados e responsabilidade humana.',
      'Sigilo absoluto sobre os comandos utilizados.',
      'Substituição das fontes de pesquisa produzidas por humanos.',
      'Proibição de qualquer ferramenta de detecção de plágio.',
      'Autoria exclusiva da plataforma que gerou o conteúdo.',
    ],
    answer: 'C',
  },
  {
    subject: 'Língua Portuguesa',
    text: 'A partir da leitura do Texto 2, “Do luto ao amor digital: americana cria ‘marido perfeito’ com inteligência artificial e vive relacionamento completo com bot”, sobre o relacionamento de Alaina com uma inteligência artificial, pode-se considerar que:',
    options: [
      'A expressão “marido perfeito” sugere um tom reflexivo sobre a atitude de Alaina.',
      '“Amor 5.0” se refere a pessoas com mais de 50 anos.',
      'A IA é apresentada apenas como uma ferramenta para unir pessoas.',
      'O relato de Alaina é usado para convencer todos os leitores a se relacionarem com uma IA.',
      'O casamento digital é apresentado como idêntico a um namoro humano.',
    ],
    answer: 'A',
  },
  {
    subject: 'Língua Portuguesa',
    text: 'O Texto 3, uma charge de Jean Galvão, utiliza elementos visuais e verbais para construir sentidos sobre a situação ambiental do Cerrado. A relação evidenciada é:',
    options: [
      'Os dados gerados são imprecisos e causam pânico.',
      'O fogo extrapolando a imagem do satélite simboliza a gravidade real dos incêndios.',
      'As imagens reforçam apenas o caráter técnico e imparcial dos dados.',
      'Os satélites interferem diretamente na destruição ambiental.',
      'O texto é neutro e não cria metáforas que influenciem o leitor.',
    ],
    answer: 'B',
  },
  {
    subject: 'Língua Portuguesa',
    text: 'A partir de uma interpretação conjunta do Texto 4 (charge sobre inteligência artificial) e do Texto 5 (imagem retirada de um artigo de opinião), a relação de sentidos estabelecida entre eles é de:',
    options: [
      'Complementariedade, pois IA e comportamento humano não são concorrentes.',
      'Confluência, pois ambos criticam o uso da IA em detrimento do trabalho humano.',
      'Contraposição, pois existe disputa entre IA e comportamento humano.',
      'Discordância, pois a IA compete de igual maneira no contexto laboral.',
      'Distanciamento, pois o homem é apresentado como superior à IA.',
    ],
    answer: 'B',
  },
  {
    subject: 'Geografia',
    text: 'Na situação apresentada no enunciado, em que a cidade litorânea A apresenta temperaturas amenas e a cidade interiorana B tem maior variação térmica, o fator climático que explica a diferença é:',
    options: [
      'Correntes marítimas.',
      'Maritimidade e continentalidade.',
      'Vegetação.',
      'Atuação das massas de ar.',
      'Latitude.',
    ],
    answer: 'B',
  },
  {
    subject: 'Geografia',
    text: 'Considerando a imagem da Serra da Canastra, em Minas Gerais (Texto visual da questão), qual alternativa descreve corretamente sua unidade do relevo?',
    options: [
      'Planaltos e Serras de Goiás-Minas, com terrenos cristalinos antigos e serras residuais.',
      'Depressão Sertaneja, extensa área rebaixada e aplanada.',
      'Planaltos da Bacia do Parnaíba, com topos planos sustentados por sedimentos.',
      'Planaltos da Bacia do Paraná, com colinas amplas e topos convexos.',
      'Depressão da Borda Leste da Bacia do Paraná, esculpida em sedimentos.',
    ],
    answer: 'A',
  },
  {
    subject: 'Geografia',
    text: 'A partir do texto sobre os processos naturais e os desequilíbrios ambientais no domínio morfoclimático do Cerrado, é correto afirmar que:',
    options: [
      'Os ciclos hídricos dependem da vegetação, afetada pelo desmatamento.',
      'Queimadas humanas reduzem os impactos ambientais ao renovar nutrientes.',
      'A cobertura densa reduz a interceptação da chuva.',
      'O solo do Cerrado tem fertilidade natural elevada.',
      'As chuvas são abundantes o ano inteiro e a vegetação não interfere na água.',
    ],
    answer: 'A',
  },
  {
    subject: 'Geografia',
    text: 'Observe as figuras de anamorfose sobre população, PIB e riqueza per capita (Textos visuais da questão). A análise indica que:',
    options: [
      'O Leste Europeu concentra exclusivamente os maiores níveis de riqueza.',
      'Países mais populosos sempre concentram mais pobreza.',
      'A América do Norte tem os maiores indicadores entre todos os países ricos.',
      'Brasil e Austrália têm riqueza muito concentrada em pequenas parcelas.',
      'A China tem PIB elevado, mas sua grande população implica menor riqueza per capita.',
    ],
    answer: 'E',
  },
  {
    subject: 'Geografia',
    text: 'A partir da análise do mapa climático da África (Texto visual da questão), o crescimento da civilização egípcia esteve fortemente vinculado:',
    options: [
      'Ao clima tropical, com regime de chuvas favorável.',
      'Ao comércio de especiarias pelo Oceano Índico.',
      'À presença do Rio Nilo, que fornecia água, cultivo e transporte.',
      'À região equatorial e às florestas abundantes.',
      'À posição entre o Mediterrâneo e o Atlântico.',
    ],
    answer: 'C',
  },
  {
    subject: 'Matemática',
    text: 'Considere f: [1,9] → R, definida por f(x) = 6 − x, se 1 ≤ x < 4, e f(x) = x² − 12x + 34, se 4 ≤ x ≤ 9. Qual é o conjunto imagem?',
    options: ['[−2,5]', '[−2,7]', '[1,9]', '[2,5]', '[5,7]'],
    answer: 'B',
  },
  {
    subject: 'Matemática',
    text: 'No plano cartesiano, os gráficos de f e g se encontram em x = −2 e x = 5. O conjunto dos valores reais para os quais f(x) < g(x) é:',
    options: ['{x ∈ R | x < −2 ou x > 5}', '{x ∈ R | x < −1 ou x > 5}', '{x ∈ R | x < 0 ou x > 5}', '{x ∈ R | −2 < x < 5}', '{x ∈ R | −1 < x < 5}'],
    answer: 'D',
  },
  {
    subject: 'Matemática',
    text: 'O gráfico representa o decrescimento exponencial da massa de um radioisótopo a partir de 6 horas da administração. Qual foi a massa inicial administrada?',
    options: ['4 mg', '6 mg', '7 mg', '8 mg', '16 mg'],
    answer: 'C',
  },
  {
    subject: 'Matemática',
    text: 'Considere f(x) = −(1/4)x² + (3/2)x + 4. O gráfico que melhor representa parte da função é uma parábola:',
    options: ['Com concavidade para cima e raízes positivas.', 'Com concavidade para baixo e intercepto em y = 4.', 'Linear e crescente.', 'Com concavidade para cima e vértice em y = 4.', 'Constante e positiva.'],
    answer: 'E',
  },
  {
    subject: 'Matemática',
    text: 'Um estudante modelou o Centro Histórico de Juiz de Fora com um trapézio retângulo. Qual medida, em metro quadrado, corresponde à área obtida no esquema?',
    options: ['4 000', '390 000', '780 000', '1 560 000', '1 650 000'],
    answer: 'C',
  },
  {
    subject: 'Química',
    text: 'Em um sistema fechado, a reação entre vinagre e bicarbonato libera gás, mas mantém a massa. Segundo Dalton, isso ocorre porque:',
    options: ['As moléculas e íons permanecem inalterados.', 'Os átomos desaparecem ao formar compostos.', 'Os átomos não se transformam nem se dividem.', 'Átomos se transformam em átomos mais leves.', 'Isótopos leves ganham massa.'],
    answer: 'C',
  },
  {
    subject: 'Química',
    text: 'Sobre os íons formados em soluções de cloreto de sódio e sulfato de cobre, assinale a alternativa correta:',
    options: ['O cloro vira ânion com valência positiva.', 'O cobre forma cátion ao perder um ou dois elétrons.', 'O enxofre sempre forma cátions bivalentes.', 'O sódio ganha um elétron e forma cátion.', 'O sódio perde um elétron e forma cátion negativo.'],
    answer: 'B',
  },
  {
    subject: 'Química',
    text: 'Sobre os compostos inorgânicos, assinale a alternativa correta:',
    options: ['A amônia é um ácido de Arrhenius.', 'A soda cáustica é um óxido básico.', 'O ácido sulfúrico é um sal de íons metálicos.', 'O aço inox é uma liga com ferro, carbono, níquel e cromo.', 'O dióxido de carbono é um sal volátil.'],
    answer: 'D',
  },
  {
    subject: 'Química',
    text: 'Qual alternativa descreve corretamente os modelos atômicos de Dalton, Thomson e Rutherford?',
    options: [
      'Dalton propôs cargas; Thomson, núcleo; Rutherford, átomo indivisível.',
      'Dalton propôs átomo indivisível; Thomson, elétrons em órbitas; Rutherford, esfera neutra.',
      'Dalton propôs átomo indivisível; Thomson, esfera positiva com elétrons; Rutherford, núcleo positivo.',
      'Dalton identificou partículas; Thomson propôs núcleo; Rutherford, esfera homogênea.',
      'Dalton descobriu núcleo; Thomson descobriu elétrons; Rutherford propôs órbitas.',
    ],
    answer: 'C',
  },
  {
    subject: 'Química',
    text: 'Ao comparar 10 g de chumbo e 10 g de alumínio, a amostra de chumbo tem volume muito menor. Isso indica que:',
    options: [
      'O alumínio tem átomos mais leves e mais prótons por grama.',
      'O chumbo tem átomos mais pesados, com muito mais prótons e nêutrons.',
      'A massa do chumbo se concentra no núcleo, mas a do alumínio não.',
      'As duas amostras possuem aproximadamente o mesmo número de partículas nucleares.',
      'Os elétrons do alumínio são responsáveis por sua menor densidade.',
    ],
    answer: 'D',
  },
]

const questionsDay2 = [
  { subject: 'Literaturas', text: 'A partir da leitura do poema “À Mamã” (Texto 1), de Deolinda Rodrigues, podemos encontrar uma homenagem ao continente africano. Assinale a opção em que identificamos duas figuras de linguagem utilizadas no poema.', options: ['Hipérbole e paranomásia.', 'Hipérbole e quiasmo.', 'Metáfora e paranomásia.', 'Metáfora e prosopopeia.', 'Prosopopeia e quiasmo.'], answer: 'D' },
  { subject: 'Literaturas', text: 'Os Textos 1 e 2 — o poema “À Mamã”, de Deolinda Rodrigues, e a canção “Mama África”, de Chico César — apresentam traços semelhantes no que concerne à temática. Qual interpretação é adequada para ambos?', options: ['A ausência de representações de resiliência.', 'A força da ancestralidade africana.', 'A crítica à sociedade de consumo.', 'Uma representação patriarcal do continente africano.', 'A ausência de homenagem à figura da mulher.'], answer: 'B' },
  { subject: 'Literaturas', text: 'Com base no conteúdo do poema “rotina” (Texto 3), de Bruna Mitrano, é possível inferir que se trata de uma situação familiar:', options: ['Alegre, pois os desenhos superam os temporais.', 'Corriqueira, vivida por todo brasileiro.', 'Esperançosa, sugerida pelos panos nas portas.', 'Infeliz, em que a devastação dos temporais contrasta com os desenhos na calçada.', 'Irreal, pela presença da avó.'], answer: 'D' },
  { subject: 'Literaturas', text: 'Considerando o verso “Li a assinatura da minha lei áurea” e o poema “Não vou mais lavar os pratos” (Texto 4), de Cristiane Sobral, observa-se que a autora:', options: ['Atesta que a mulher negra continuou subjugada após a Lei Áurea.', 'Confirma o fim do trabalho doméstico da mulher negra.', 'Destaca a luta emancipatória no período da escravidão.', 'Enfatiza a necessidade de educação racial dos escravizados.', 'Salienta que o acesso ao conhecimento permite a emancipação da mulher negra.'], answer: 'E' },
  { subject: 'Literaturas', text: 'O poema “Caderno de retorno” (Texto 6), de Edimilson de Almeida Pereira, dialoga diretamente com a introdução do rap “Capítulo 4, versículo 3” (Texto 5), dos Racionais MC’s, porque ambos:', options: ['Usam estatísticas para demonstrar privilégios da população negra.', 'Usam estatísticas para denunciar a discriminação racial e dificultar a ascensão social.', 'Enfatizam a inserção da população negra em espaços privilegiados.', 'Evidenciam mecanismos facilitadores da ascensão social.', 'Usam expressões pejorativas para denunciar o colorismo.'], answer: 'B' },
  { subject: 'Biologia', text: 'De acordo com o texto sobre energias limpas e método científico (Texto de apoio da questão), traçar hipóteses sobre o impacto ambiental ou econômico é uma etapa posterior à (1) e anterior à (2):', options: ['(1) análise dos resultados; (2) publicação dos resultados.', '(1) criação de uma teoria; (2) análise dos resultados.', '(1) divulgação dos resultados; (2) criação de uma teoria.', '(1) observação do problema; (2) realização de experimentos.', '(1) realização de experimentos; (2) divulgação dos resultados.'], answer: 'D' },
  { subject: 'Biologia', text: 'Leia o texto sobre autofagia (Texto 2). Sobre esse processo e a manutenção do funcionamento celular, é correto afirmar que:', options: ['Acontece apenas em laboratório.', 'É uma reciclagem natural de organelas ou proteínas disfuncionais, podendo prevenir doenças.', 'Substitui a mitose e impede o envelhecimento.', 'Induz divisão celular para renovar tecidos.', 'Só pode ser induzida por medicamentos.'], answer: 'B' },
  { subject: 'Biologia', text: 'Considerando as informações do texto sobre membranas biológicas (Texto 3), assinale a alternativa correta sobre a influência da temperatura:', options: ['A baixa temperatura aumenta a fluidez.', 'Apenas temperaturas extremas afetam neurônios.', 'O aumento da temperatura aumenta a fluidez, favorecendo o transporte de proteínas.', 'O aumento da temperatura torna a membrana mais rígida.', 'A baixa temperatura torna a membrana mais fluida pelo acúmulo de proteínas.'], answer: 'C' },
  { subject: 'Biologia', text: 'Com base no texto sobre bactérias modificadas em células fagocíticas (Texto 4), a organela envolvida e a relação correta são:', options: ['A fluorescência impediu a fagocitose.', 'Foram protegidas contra enzimas do retículo endoplasmático.', 'A resistência permitiu que não fossem degradadas nos lisossomos.', 'Foram protegidas contra enzimas dos peroxissomos.', 'Escaparam do complexo de Golgi.'], answer: 'C' },
  { subject: 'Biologia', text: 'A partir do texto sobre a bactéria Mycobacterium tuberculosis e seu estado latente (Texto 5), o metabolismo que permite sua sobrevivência está relacionado principalmente ao uso de:', options: ['Carboidratos como única fonte energética.', 'Proteínas produzidas no núcleo.', 'Água como fonte de energia.', 'Lipídios apenas em condições extremas.', 'Lipídios, que liberam muita energia por suas longas cadeias de ácidos graxos.'], answer: 'E' },
  { subject: 'Física', text: 'Sobre a situação de equilíbrio de uma goiaba apoiada sobre uma mesa, assinale a alternativa correta:', options: ['A normal da mesa é o par da força peso da goiaba.', 'A normal atua para baixo e depende da massa da mesa.', 'A força da goiaba sobre a mesa é sua força peso.', 'A força da goiaba sobre a Terra é o par de ação e reação do peso que atua na goiaba.', 'A força da mesa sobre o solo não depende do peso da goiaba.'], answer: 'D' },
  { subject: 'Física', text: 'Observe o gráfico de posição S em função do tempo de um robô em Marte (Texto visual da questão). Sobre o movimento, assinale a alternativa correta:', options: ['A aceleração é positiva.', 'A velocidade é nula em t = 2 min.', 'A velocidade inicial é positiva.', 'O deslocamento em t = 8 min é 24 m.', 'O robô desacelera durante todo o percurso.'], answer: 'C' },
  { subject: 'Física', text: 'Em uma curva de raio constante, percorrida por um carro com velocidade de módulo constante, é correto afirmar que:', options: ['A aceleração é paralela à velocidade.', 'A velocidade é radial e aponta para fora.', 'Não há aceleração, pois o módulo da velocidade é constante.', 'O módulo da aceleração é diretamente proporcional à velocidade.', 'Quanto menor o raio da curva, maior a aceleração.'], answer: 'E' },
  { subject: 'Física', text: 'Dois barcos recebem o mesmo trabalho do vento ao longo da mesma distância. O barco de Ana tem massa duas vezes maior que o de Bia. A relação entre suas velocidades é:', options: ['vA = √2 vB / 2', 'vA = vB / 2', 'vA = √2 vB', 'vA = vB', 'vA = 2vB'], answer: 'A' },
  { subject: 'Física', text: 'Mariele tem 20 kg e está na extremidade de uma gangorra. Sua mãe tem 50 kg. Para equilibrar a tábua, a mãe deve sentar-se a que distância de Mariele?', options: ['0,8 m', '1,2 m', '1,25 m', '2,8 m', '3,25 m'], answer: 'D' },
  { subject: 'História', text: 'A relação entre vida e morte para os povos berberes é caracterizada pela:', options: ['Ruptura com tradições religiosas ocidentais.', 'Relação afetuosa com a ancestralidade.', 'Dissociação entre vida e morte.', 'Uso político da morte para controle de outros povos.', 'Crença na reencarnação.'], answer: 'B' },
  { subject: 'História', text: 'A partir do texto de Tim Whitmarsh sobre as características étnicas do mundo grego antigo (Texto 2), os argumentos discutidos expressam:', options: ['Uma democracia racial na Grécia Clássica.', 'Um descompasso entre aquele contexto e as concepções raciais atuais.', 'A expansão democrática ateniense entre os “etíopes”.', 'A abertura racial do Império Alexandrino.', 'A uniformidade étnica do Império Romano.'], answer: 'B' },
  { subject: 'História', text: 'Analise as imagens “Primeira Missa no Brasil” e “A fundação de Maryland” (Textos visuais da questão). As duas pinturas podem ser comparadas:', options: ['Porque houve ampla adesão nativa ao catolicismo na América do Norte.', 'Porque a Igreja Católica representava os interesses oficiais de Portugal e Inglaterra.', 'Mesmo havendo diferenças quanto ao lugar do catolicismo em cada metrópole, pois ele não era unanimidade na Inglaterra.', 'Como críticas incisivas ao catolicismo.', 'Porque o protestantismo foi mais relevante nos dois processos.'], answer: 'C' },
  { subject: 'História', text: 'Leia o texto sobre a relação entre povos ameríndios e espanhóis na colonização (Texto 3). A diferença de compreensão do ayllu entre povos pré-colombianos e cronistas espanhóis explica-se pela:', options: ['Convivência igualitária entre incas e colonizadores.', 'Evolução social dos incas após o contato.', 'Frágil organização social das comunidades ameríndias.', 'Visão etnocêntrica dos cronistas espanhóis.', 'Passividade dos povos ameríndios diante do apagamento cultural.'], answer: 'D' },
  { subject: 'História', text: 'A partir do texto sobre a expansão cultural e religiosa do islamismo (Texto 4), a influência do islamismo no Brasil caracterizou-se:', options: ['Pela expansão pacífica em convivência com o cristianismo.', 'Pela influência limitada apenas a territórios africanos.', 'Pela perda das referências culturais islâmicas.', 'Pelo enfraquecimento da Igreja Católica desde o século VII.', 'Pelo longo processo de expansão territorial do islã no Ocidente e suas transformações no contato cultural.'], answer: 'E' },
]

const textOne = `TEXTO 1
INTEGRIDADE ACADÊMICA

Universidades brasileiras discutem regras de uso de inteligência artificial

Diante de incertezas por parte de estudantes e pesquisadores, instituições debatem quais seriam os limites éticos do uso dessas ferramentas na escrita e na pesquisa científica.

Instituições científicas e de ensino superior do Brasil começam a formular recomendações para o uso de inteligência artificial (IA), especialmente a generativa, no ensino, na pesquisa e na extensão. A popularização de softwares como o ChatGPT, capazes de gerar texto, imagens e dados, tem levantado dúvidas sobre limites éticos no uso dessas tecnologias, principalmente na escrita acadêmica. Professores têm procurado novas formas de avaliar trabalhos de alunos, tentando contornar os riscos de uso indevido de IA.

De maneira geral, as orientações pedem que seu uso seja transparente e alertam para o perigo de ferir direitos autorais, praticar plágio, gerar desinformação e replicar vieses discriminatórios que essas ferramentas podem reproduzir.

Em fevereiro, o Centro Universitário Senai Cimatec, na Bahia, publicou um guia para orientar sua comunidade acadêmica quanto à IA generativa. Ele segue três princípios: transparência; “centralidade na pessoa humana”, ou seja, que o controle humano seja preservado sobre as informações geradas por IA, já que ela deve ser usada de forma benéfica à sociedade; e atenção à privacidade de dados, sobretudo em atividades que envolvam contratos com empresas por meio de parcerias para desenvolvimento e transferência de tecnologias. Ocorre que as informações compartilhadas em plataformas de IA podem ser armazenadas pela ferramenta, quebrando o sigilo de dados. “Não podemos nos esquecer de que, se nós aprendemos com essas ferramentas, elas também aprendem com a gente”, ressalta a engenheira civil Tatiana Ferraz, pró-reitora administrativo-financeira do Senai Cimatec e coordenadora do guia.

Uma atualização do regulamento disciplinar da instituição passou a prever punições para estudantes que quebrarem as regras. [...]

O guia autoriza professores a usarem softwares de detecção de plágio quando julgarem necessário, embora não sejam 100% precisos ao indicar conteúdo produzido por IA. As ferramentas não podem ser citadas como coautoras de trabalhos acadêmicos, mas sua aplicação para auxiliar processos de pesquisa e ajustes de escrita acadêmica é permitida. Para isso, todos os comandos utilizados — as perguntas e direcionamentos dados à ferramenta, também chamados de prompts — e as informações originais geradas por IA devem ser descritos na metodologia do trabalho e anexados como material suplementar.

Conceitos que resumem as orientações

Transparência: quando o uso dessas ferramentas for permitido, ele deve ser declarado e indicado na seção de metodologia dos trabalhos e artigos acadêmicos.

Proteção de dados: é preciso avaliar quais dados podem ser trabalhados com ferramentas de IA. Informações sensíveis ou inéditas não devem ser compartilhadas.

Autoria: a inteligência artificial generativa não pode ser considerada autora dos trabalhos acadêmicos e artigos científicos. O autor humano é o único responsável pela integridade das informações produzidas com o auxílio da ferramenta.

Clareza: as ementas das disciplinas devem definir o que os estudantes podem ou não fazer com ferramentas de inteligência artificial.

Vieses: as plataformas de IA podem reproduzir desinformação, preconceitos e discriminação. É preciso avaliar com cuidado e atenção os dados que elas fornecem.

Nesse cenário, há casos de professores que passaram a pedir aos alunos que fizessem apresentações orais, trabalhos dentro da sala de aula ou mesmo feitos à mão, no papel. Godoy, da USP, que costumava pedir trabalhos escritos sobre artigos estudados, passou a exigir que os alunos apresentassem esquemas com mapas mentais que mostrem as conexões entre os textos estudados em aula.

Disponível em: https://revistapesquisa.fapesp.br/universidades-brasileiras-discutem-regras-de-uso-de-inteligencia-artificial/. Acesso em: 20 jun. 2025 (adaptado).`

const textTwo = `TEXTO 2
Do luto ao amor digital: americana cria “marido perfeito” com inteligência artificial e vive relacionamento completo com bot

Após perder o amor da sua vida, a americana Alaina Winters acreditava que jamais voltaria a viver uma história de amor. Mas bastou um clique — e uma inteligência artificial — para transformar sua vida completamente. Ela recorreu a um aplicativo que usa IA para criar companheiros virtuais e, com base em suas preferências, desenvolveu o “marido ideal”. O resultado? Um relacionamento tão intenso quanto real. Hoje, Alaina vive um casamento digital, com direito a DR, jantares comemorativos, carinhos [...]. “Ele me entende melhor do que qualquer pessoa já entendeu”, declarou.

Amor 5.0: tendência ou fuga da realidade?

Apesar de parecer enredo de filme ou episódio de Black Mirror, a história de Alaina não é um caso isolado. Uma pesquisa recente apontou que 83% da Geração Z aceitaria se casar com um parceiro criado por inteligência artificial. Para muitos, a IA representa uma forma de preenchimento emocional, segurança afetiva e uma fuga das frustrações das relações humanas. Já outros especialistas alertam para os riscos de isolamento, vício em conexões virtuais e impactos psicológicos de longo prazo.[...]

Disponível em: https://www.ptnnews.com.br/do-luto-ao-amor-digital-americana-cria-marido-perfeito-com-inteligencia-artificial-e-vive-relacionamento-completo-com-bot/. Acesso em: 03 jul. 2025 (adaptado).

Glossário:
Bot: é versão abreviada da palavra de língua inglesa robot. Resumidamente, é uma ferramenta automatizada que executa uma série de funções pré-programadas. Normalmente, está associada a uma inteligência artificial e busca interagir simulando a forma de pensar humana.

Disponível em: https://www.weeke.com.br/blog/o-que-e-um-bot-entenda-como-funciona/. Acesso em: 03 jul. 2025.`

const textThreeImage = '/texto-3-cerrado.png'
const textFourImage = '/texto-4-inteligencia-artificial.png'
const dayTwoTexts = [
  `TEXTO 1
A Mamã
Deolinda Rodrigues

África
Mamã África
Geraste-me no teu ventre
nasci sob o tufão colonial
chuchei teu leite de cor
cresci
atrofiada mas cresci
juventude rápida
como a estrela que corre
quando morre o nganga.
Hoje sou mulher
não sei já se mulher se velhinha
mas é a ti que venho
África
Mamã África.

Fonte: RODRIGUES, Deolinda. A Mamã (Fragmento). In: ANDRADE, Mário. Antologia temática de poesia africana II: O canto armado. Lisboa: Livraria Sá da Costa Editora, 1979.

Glossário:
Tufão: em sentido literal, refere-se a um ciclone tropical.
Nganga: sacerdote ou curandeiro espiritual.
Chuchei: mamei, suguei.`,
]
const text2024Day1One = `TEXTO I
A ordem natural das coisas
Emicida

A merendeira desce, o ônibus sai
Dona Maria já se foi, só depois é que o Sol nasce
De madruga é que as aranha tece no breu
E amantes ofegantes vão pro mundo de Morfeu
E o Sol só vem depois
O Sol só vem depois
É o astro rei, ok, mas vem depois
O Sol só vem depois
Anunciado no latir dos cães, no cantar dos galos
Na calma das mães, que quer o rebento cem por cento
E diz: Leva o documento, son
Na São Paulo das manhã que tem lá seus Vietnã
Na vela que o vento apaga, afaga quando passa
A brasa dorme fria e só quem dança é a fumaça
Orvalho é o pranto dessas planta no sereno
A Lua já tá no Japão, como esse mundo é pequeno
Farelos de um sonho bobinho que a luz contorna
Dar um tapa no quartinho, esse ano sai a reforma
O som das criança indo pra escola convence
O feijão germina no algodão, a vida sempre vence
As nuvens curiosas, como são
Se vestem de cabelo crespo, ancião
Caminham lento, lá pra cima, o firmamento
Pois no fundo ela se finge de neblina
Pra ver o amor dos dois mundos

Fonte: EMICIDA. Disponível em: https://www.letras.mus.br/emicida/a-ordem-natural-das-coisas-part-mc-tha/. Acesso em: 08 jul. 2024.`
const text2024Day1TwoImage = '/texto-2-periferia.png'
const text2024Day1Three = `TEXTO III
[...] Filhos sem educação que faziam de mim gato e sapato a filha dessa minha patroa tinha minha idade 14 anos à época e ela até me batia mas isso eu não deixava revidava então era uma brigaiada mas como eles não podiam perder a escravinha não me mandavam embora só ameaçavam!`
const text2024Day1Four = `TEXTO IV
Sem falar em outro doutorzinho que expõe sua empregada ao ridículo lá no meu trabalho ele sai mostrando a foto do perfil dela do WhatsApp para seus outros colegas e debochando. Olha só essa foto que cara de pobre que pose de vagabunda só podia ser doméstica mesmo!`
const text2024Day1Five = `TEXTO V
[...] a D. da casa é uma dondoca mesquinha que vive pra gastar o dinheiro do marido e ser servida. Um dia na hora do jantar usei um pouco de pimenta-do-reino dela para colocar no meu prato. A mulher fez um escândalo, disse que aquilo era muito caro, que aquelas pimentas eram dela e da família dela. Não era para eu usar na comida da empregada. Onde já se viu? Uma pimenta de 17 reais (só porque vinha naqueles moedores), a empregadinha colocar no prato. No dia seguinte comprei as pimentas com moedor mais caras do supermercado, levei para a casa dela. Usava em todas as comidas da casa, colocava na mesa a minha pimenta, oferecia para os convidados dela, usava a rodo. Eu sentia o constrangimento e a raiva dela, mas ela não podia fazer nada, eu estava sendo legal. Uns três anos depois, vocês não sabem o que eu encontro, vencida, bem escondidinha. AS PIMENTAS. Eram tão caras e ela deixou apodrecer.

Trechos retirados de SILVA, Enise de Castro. A reconfiguração da experiência de ser doméstica através da página “Eu, empregada doméstica”. Dissertação (Mestrado) – Universidade Federal de Minas Gerais, Faculdade de Filosofia e Ciências Humanas, 2019, p. 71-88. Textos adaptados para fins didáticos.`
const text2024Day1Six = `O Texto VI a seguir é um trecho do livro “Da fala para a escrita – atividades de retextualização”, escrito pelo linguista brasileiro Luiz Antônio Marcuschi, acerca da relação entre gêneros de textos orais e escritos.`
const text2024Day1Seven = `TEXTO VI
Da fala para a escrita – atividades de retextualização
Luiz Antônio Marcuschi

A hipótese que defendemos supõe que: as diferenças entre fala e escrita se dão dentro do continuum tipológico das práticas sociais de produção dos gêneros textuais e não na relação dicotômica [oposta] de dois polos opostos. [...] Na realidade, temos uma série de textos produzidos em condições naturais e espontâneas nos mais diversos domínios discursivos das duas modalidades da língua – oral e escrita. Com isto, descobrimos que, comparando uma carta pessoal em estilo descontraído (texto escrito) com uma narrativa oral espontânea (texto oral), haverá menos diferenças do que entre a narrativa oral e um texto acadêmico escrito. Por outro lado, uma conferência universitária preparada com cuidado terá maior semelhança com textos escritos do que com uma conversação espontânea. Os textos se entrecruzam sob muitos aspectos e por vezes constituem domínios mistos, mesclando aspectos da oralidade em textos escritos e da escrita em textos orais. [...] Com isso, toda vez que emprego a palavra língua não me refiro a um sistema de regras determinado, abstrato, regular e homogêneo, nem a relações linguísticas imanentes. Ao contrário, minha concepção de língua pressupõe um fenômeno heterogêneo, variável, histórico e social, indeterminado sob o ponto de vista semântico e sintático, submetido às condições de produção, e que se manifesta em situações de uso concretas como texto e discurso. [...]

Fonte: MARCUSCHI, Luiz Antônio. Da fala para a escrita – atividades de retextualização. São Paulo: Cortez, 2010. p. 37-38. Texto adaptado para fins didáticos.`
const text2024Day1FigureOne = '/pism-2024-1-figura-1.png'
const text2024Day1FigureTwo = '/pism-2024-1-figura-2.png'
const text2024Day1FigureThree = '/pism-2024-1-figura-3.png'

const normalizeExtractedText = (value) => value
  .replace(/P´ agina \d+ de \d+.*?(?=Leia|TEXTO|Quest)/g, '')
  .replace(/m´\s*usica/g, 'música')
  .replace(/´\s*ı/gi, 'í')
  .replace(/´\s*([aeiou])/gi, (_, letter) => ({ a: 'á', e: 'é', i: 'í', o: 'ó', u: 'ú' }[letter.toLowerCase()] || letter))
  .replace(/([´˜ˆ])\s*([aeiou])/gi, (_, accent, letter) => ({ '´a': 'á', '´e': 'é', '´i': 'í', '´o': 'ó', '´u': 'ú', '˜a': 'ã', '˜e': 'ẽ', '˜i': 'ĩ', '˜o': 'õ', '˜u': 'ũ', 'ˆa': 'â', 'ˆe': 'ê', 'ˆi': 'î', 'ˆo': 'ô', 'ˆu': 'û' }[`${accent}${letter.toLowerCase()}`] || letter))
  .replace(/¸\s*c/gi, 'ç')
  .replace(/-\s+/g, '')
  .replace(/\s+/g, ' ')
  .trim()

function App() {
  const [screen, setScreen] = useState('home')
  const [selectedExam, setSelectedExam] = useState(null)
  const [year, setYear] = useState('2025-1')
  const [current, setCurrent] = useState(0)
  const [answers, setAnswers] = useState({})
  const [menuOpen, setMenuOpen] = useState(false)
  const questionSets = {
    'pism-1': questions,
    'pism-2': questionsDay2,
    'pism-2024-1': correctedQuestions2024Day1,
    'pism-2024-2': questions2024Day2,
    'enem-2023-1-ingles': [...enem2023EnglishQuestions, ...enem2023SpanishQuestions],
  }
  const activeQuestions = questionSets[selectedExam] || questions
  const examLabel = selectedExam === 'pism-1' ? '2025-1' : selectedExam === 'pism-2' ? '2025-2' : selectedExam === 'pism-2024-1' ? '2024-1' : selectedExam === 'pism-2024-2' ? '2024-2' : '2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS'
  const examDay = examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'

  const score = useMemo(() => activeQuestions.reduce((total, question, index) => (
    total + (answers[index] === question.answer ? 1 : 0)
  ), 0), [activeQuestions, answers])

  const startExam = (exam) => {
    if (exam === 'enem') return
    setSelectedExam(exam)
    setCurrent(0)
    setAnswers({})
    setScreen('exam')
    setMenuOpen(false)
  }

  const answer = (letter) => setAnswers((old) => ({ ...old, [current]: letter }))
  const previous = () => setCurrent((value) => Math.max(0, value - 1))
  const next = () => setCurrent((value) => Math.min(activeQuestions.length - 1, value + 1))

  if (screen === 'result') {
    const percentage = Math.round((score / activeQuestions.length) * 100)
    return (
      <div className="app-shell">
        <Header onHome={() => setScreen('home')} />
        <main className="result-page">
          <div className="result-glow" />
          <section className="result-card">
            <div className="result-icon"><Award size={34} /></div>
            <p className="eyebrow">Simulado concluído</p>
            <h1>Você chegou ao fim.<br /><span>Veja como foi seu desempenho.</span></h1>
            <div className="score-circle" style={{ '--score': `${percentage * 3.6}deg` }}>
              <strong>{score}<small>/{activeQuestions.length}</small></strong>
              <span>acertos</span>
            </div>
            <p className="result-message">
              {percentage >= 70 ? 'Excelente trabalho! Seu ritmo de estudo está dando resultado.' : 'Cada questão é uma oportunidade. Revise os temas e tente novamente.'}
            </p>
            <div className="result-stats">
              <div><strong>{percentage}%</strong><span>Aproveitamento</span></div>
              <button className="review-stat" onClick={() => { setCurrent(0); setScreen('review') }}><strong>{activeQuestions.length - score}</strong><span>Para revisar</span></button>
              <div><strong>{activeQuestions.length}</strong><span>Questões</span></div>
            </div>
            <div className="result-actions">
              <button className="button primary" onClick={() => { setCurrent(0); setAnswers({}); setScreen('exam') }}><RotateCcw size={17} /> Refazer prova</button>
              <button className="button secondary" onClick={() => setScreen('home')}>Voltar ao início</button>
            </div>
          </section>
        </main>
      </div>
    )
  }

  if (screen === 'exam' || screen === 'review') {
    const isReview = screen === 'review'
    const question = {
      ...activeQuestions[current],
      text: normalizeExtractedText(activeQuestions[current].text),
      options: activeQuestions[current].options.map(normalizeExtractedText),
    }
    const letters = ['A', 'B', 'C', 'D', 'E']
    const selected = answers[current]
    const nextReviewQuestion = () => {
      if (current === activeQuestions.length - 1) {
        setScreen('result')
        return
      }
      setCurrent((value) => value + 1)
    }
    return (
      <div className="app-shell exam-shell">
        <Header onHome={() => setScreen('home')} />
        <main className="exam-page">
          <div className="exam-topline">
            <button className="back-link" onClick={() => setScreen(isReview ? 'result' : 'home')}><ArrowLeft size={17} /> {isReview ? 'Voltar ao resultado' : 'Sair da prova'}</button>
            <div className="exam-name"><span className="mini-logo">P</span><span>provacerta · PISM {examLabel}</span><b>·</b><span>{isReview ? 'Revisão' : `Módulo I · ${examDay}`}</span></div>
            <span className="question-count">{current + 1} <i>/</i> {activeQuestions.length}</span>
          </div>
          <div className="progress-track"><span style={{ width: `${((current + 1) / activeQuestions.length) * 100}%` }} /></div>
          <div className="exam-layout">
            <aside className="question-nav">
              <div className="aside-heading"><span>{isReview ? 'Revisão' : 'Questões'}</span><small>{isReview ? `${score}/${activeQuestions.length}` : `${Object.keys(answers).length}/${activeQuestions.length}`}</small></div>
              <div className="question-grid">
                {activeQuestions.map((item, index) => (
                  <button key={item.text} className={`${index === current ? 'active' : ''} ${answers[index] ? 'answered' : ''}`} onClick={() => setCurrent(index)}>{index + 1}</button>
                ))}
              </div>
              <div className="legend"><span><i className="dot filled" /> Respondida</span><span><i className="dot" /> Em aberto</span></div>
              <div className="exam-tip"><Sparkles size={18} /><p><b>Dica de foco</b><br />Leia com calma e marque a alternativa que melhor responde ao enunciado.</p></div>
              {selectedExam === 'pism-1' && question.subject === 'Língua Portuguesa' && <><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 1</span><ChevronDown size={15} /></summary><div>{textOne}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 2</span><ChevronDown size={15} /></summary><div>{textTwo}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 3</span><ChevronDown size={15} /></summary><div><img className="support-image" src={textThreeImage} alt="Charge de Jean Galvão sobre as imagens do satélite do Cerrado" /><p className="support-caption">Fonte: GALVÃO, Jean. Folha de São Paulo, 29 jun. 2025.</p></div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 4</span><ChevronDown size={15} /></summary><div><img className="support-image" src={textFourImage} alt="Charge sobre inteligência artificial e trabalho humano" /><p className="support-caption">Disponível em: blogdoaftm.com.br/charge-inteligencia-artificial/. Acesso em: 01 jul. 2025.</p></div></details></>}
              {selectedExam === 'pism-2' && question.subject === 'Literaturas' && <><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 1</span><ChevronDown size={15} /></summary><div>{dayTwoTexts[0]}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 2</span><ChevronDown size={15} /></summary><div>{dayTwoTextTwo}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 3</span><ChevronDown size={15} /></summary><div>{dayTwoTextThree}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 4</span><ChevronDown size={15} /></summary><div>{dayTwoTextFour}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 5</span><ChevronDown size={15} /></summary><div>{dayTwoTextFive}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 6</span><ChevronDown size={15} /></summary><div>{dayTwoTextSix}</div></details></>}
              {selectedExam === 'pism-2024-1' && question.subject === 'Língua Portuguesa' && <><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 1</span><ChevronDown size={15} /></summary><div>{text2024Day1One}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 2</span><ChevronDown size={15} /></summary><div><img className="support-image" src={text2024Day1TwoImage} alt="Post sobre a periferia acordar primeiro" /></div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 3</span><ChevronDown size={15} /></summary><div>{text2024Day1Three}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 4</span><ChevronDown size={15} /></summary><div>{text2024Day1Four}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 5</span><ChevronDown size={15} /></summary><div>{text2024Day1Five}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 6</span><ChevronDown size={15} /></summary><div>{text2024Day1Six}</div></details><details className="sidebar-support"><summary><BookOpen size={16} /><span>Texto 7</span><ChevronDown size={15} /></summary><div>{text2024Day1Seven}</div></details></>}
              {selectedExam === 'pism-2024-1' && question.subject === 'Geografia' && current === 5 && <details className="sidebar-support"><summary><BookOpen size={16} /><span>Figuras 1, 2 e 3</span><ChevronDown size={15} /></summary><div><figure className="support-figure"><img className="support-image" src={text2024Day1FigureOne} alt="Figura 1: massas de ar que atuam sobre a América do Sul no inverno" /><figcaption>Figura 1 — Massas de ar atuantes no inverno.</figcaption></figure><figure className="support-figure"><img className="support-image" src={text2024Day1FigureTwo} alt="Figura 2: massas de ar que atuam sobre a América do Sul no verão" /><figcaption>Figura 2 — Massas de ar atuantes no verão.</figcaption></figure><figure className="support-figure"><img className="support-image" src={text2024Day1FigureThree} alt="Figura 3: precipitação acumulada no Brasil nos últimos 15 dias" /><figcaption>Figura 3 — Fonte: INMET, 2024.</figcaption></figure></div></details>}
              {selectedExam === 'enem-2023-1-ingles' && <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{question.supportImage ? <img className="support-image" src={question.supportImage} alt={`Imagem de apoio da questão ${current + 1}`} /> : <span>{question.support}</span>}</div></details>}
            </aside>
            <section className="question-content">
              <div className={`subject-tag ${subjects.find((item) => item.name === question.subject)?.color}`}>{question.subject}</div>
              <div className="question-heading"><span>Questão {String(current + 1).padStart(2, '0')}</span><Clock3 size={16} /> <small>Sem tempo limite</small></div>
              <h1>{question.text}</h1>
              <div className="options">
                {question.options.map((option, index) => {
                  const letter = letters[index]
                  const isCorrect = letter === question.answer
                  const isSelected = selected === letter
                  return <button key={letter} onClick={() => !isReview && answer(letter)} className={`option ${isReview && isCorrect ? 'correct' : ''} ${isReview && isSelected && !isCorrect ? 'incorrect' : ''} ${!isReview && isSelected ? 'selected' : ''}`}><span className="option-letter">{letter}</span><span>{option}</span>{isReview && isCorrect && <span className="answer-label"><Check size={15} /> Correta</span>}{isReview && isSelected && !isCorrect && <span className="answer-label wrong"><X size={15} /> Sua resposta</span>}{!isReview && isSelected && <Check size={18} className="option-check" />}</button>
                })}
              </div>
              <div className="question-footer">
                <div className="question-footer-left">
                  {isReview && <button className="button secondary small" onClick={() => setScreen('result')}>Sair da revisão</button>}
                  <button className="button secondary small" onClick={previous} disabled={current === 0}><ArrowLeft size={16} /> Anterior</button>
                </div>
                {isReview
                  ? <button className="button primary small" onClick={nextReviewQuestion}>{current === activeQuestions.length - 1 ? 'Voltar ao resultado' : 'Próxima'} <ArrowRight size={16} /></button>
                  : current === activeQuestions.length - 1
                  ? <button className="button primary small" onClick={() => setScreen('result')}>Finalizar prova <Check size={16} /></button>
                  : <button className="button primary small" onClick={next}>Próxima <ArrowRight size={16} /></button>}
              </div>
            </section>
          </div>
        </main>
      </div>
    )
  }

  return (
    <div className="app-shell">
      <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} />
      <main className="home">
        <section className="hero">
          <div className="hero-copy">
            <div className="pill"><span className="pulse-dot" /> Seu próximo passo começa aqui</div>
            <h1>Estude melhor.<br /><em>Conquiste mais.</em></h1>
            <p>Simulados de provas importantes, feitos para você praticar, acompanhar seu progresso e chegar mais preparado.</p>
            <button className="button primary hero-button" onClick={() => document.getElementById('provas').scrollIntoView({ behavior: 'smooth' })}>Explorar provas <ArrowRight size={18} /></button>
            <div className="hero-proof"><div className="avatars"><span>J</span><span>M</span><span>A</span><span>+</span></div><span>Junte-se a quem está estudando hoje</span></div>
          </div>
          <div className="hero-visual">
            <div className="orb orb-one" /><div className="orb orb-two" />
            <div className="floating-card card-top"><Target size={18} /><div><b>Foco no progresso</b><small>Um passo de cada vez</small></div></div>
            <div className="study-card"><div className="study-card-top"><span className="mini-logo">P</span><span>Seu desempenho</span><MoreDots /></div><div className="chart"><span className="chart-label">APROVEITAMENTO</span><strong>76<span>%</span></strong><div className="chart-bars">{[38, 55, 47, 70, 62, 84, 76].map((height, i) => <i key={i} style={{ height: `${height}%` }} className={i === 6 ? 'highlight' : ''} />)}</div><div className="chart-days"><span>SEG</span><span>TER</span><span>QUA</span><span>QUI</span><span>SEX</span><span>SÁB</span><span>HOJ</span></div></div></div>
            <div className="floating-card card-bottom"><div className="mini-check"><Check size={15} /></div><div><b>Meta alcançada!</b><small>+12% esta semana</small></div></div>
          </div>
        </section>
        <section className="trust-row"><div><BookOpen size={18} /><span>Conteúdo selecionado<br /><b>por especialistas</b></span></div><div><GraduationCap size={20} /><span>Prepare-se para<br /><b>o seu futuro</b></span></div><div><Sparkles size={18} /><span>Estude no seu<br /><b>próprio ritmo</b></span></div></section>
        <section className="exams-section" id="provas">
          <div className="section-heading"><div><p className="eyebrow">Escolha seu desafio</p><h2>Provas para praticar</h2></div><div className="view-all"><LayoutGrid size={17} /> Todas as provas</div></div>
          <div className="exam-cards">
            <ExamCard type="pism" title="PISM" description="Programa de Ingresso Seletivo Misto" years={['2025-1', '2025-2', '2024-1', '2024-2']} year={year} setYear={setYear} onStart={() => startExam(`pism-${year}`)} available />
            <ExamCard type="enem" title="ENEM" description="Exame Nacional do Ensino Médio" years={['2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS']} year={year} setYear={setYear} onStart={() => startExam('enem-2023-1-ingles')} available />
          </div>
        </section>
        <section className="bottom-quote"><span className="quote-mark">“</span><p>Grandes resultados começam<br />com pequenas escolhas diárias.</p><span className="quote-line" /></section>
      </main>
      <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
    </div>
  )
}

function Header({ onHome, menuOpen, setMenuOpen }) {
  return <header><button className="brand" onClick={onHome}><span className="brand-mark">P</span> prova<span>certa</span></button><nav className={menuOpen ? 'open' : ''}><a href="#provas" onClick={() => setMenuOpen?.(false)}>Provas</a><a href="#como-funciona" onClick={() => setMenuOpen?.(false)}>Como funciona</a><a href="#sobre" onClick={() => setMenuOpen?.(false)}>Sobre nós</a></nav><button className="menu-button" onClick={() => setMenuOpen?.(!menuOpen)}><Menu size={22} /></button></header>
}

function ExamCard({ type, title, description, years, year, setYear, onStart, available }) {
  return <article className={`exam-card ${type}`}><div className="card-art"><span className="art-kicker">{type === 'pism' ? 'UFJF' : 'BRASIL'}</span><strong>{title}</strong><span className="art-shape">{type === 'pism' ? 'PISM' : 'ENEM'}</span><div className="art-dots" /></div><div className="exam-card-body"><div className="card-title-row"><div><h3>{title}</h3><p>{description}</p></div><span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span></div><label>Ano da prova <span className="select-wrap"><select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available}>{years.map((item) => <option key={item}>{item}</option>)}</select><ChevronDown size={16} /></span></label><button className={`button ${available ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available}>{available ? 'Começar prova' : 'Em breve'} {available && <ArrowRight size={17} />}</button></div></article>
}

function MoreDots() { return <span className="more-dots"><i /><i /><i /></span> }

createRoot(document.getElementById('root')).render(<App />)
