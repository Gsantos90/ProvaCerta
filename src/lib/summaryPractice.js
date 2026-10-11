import { studySummaries } from './studySummaries.js'
import { studyTopics } from './studyTopics.js'
import { shuffleQuestions } from './authorPractice.js'

const bank = []
function add(topicId, text, options, explanation) {
  const topic = studySummaries.find(item => item.id === topicId)
  const number = bank.filter(item => item.topicId === topicId).length + 1
  const answerIndex = (number - 1) % options.length
  const ordered = [...options]
  ordered.splice(answerIndex, 0, ordered.shift())
  bank.push({ authoredId: `summary:${topicId}:${number}`, topicId, number, subject: topic.subject, text, options: ordered, answer: 'ABCDE'[answerIndex], explanation, origin: 'author', examSlug: `author:${topicId}`, examTitle: `Questões autorais · ${topic.title}`, sourceUrl: null })
}
const fmt = value => value.toLocaleString('pt-BR', { maximumFractionDigits: 3 })
for (const k of [1, 2, 3, 4]) {
  add('estequiometria', `Quantos mol de H₂O há em ${18*k} g? Use M = 18 g/mol.`, [`${k} mol`, `${18*k} mol`, `${2*k} mol`, `${k/2} mol`], `n = m/M = ${18*k}/18 = ${k} mol.`)
  add('estequiometria', `Na reação 2 H₂ + O₂ → 2 H₂O, ${2*k} mol de H₂ com O₂ em excesso produzem quantos mol de água, com reação completa?`, [`${2*k} mol`, `${k} mol`, `${4*k} mol`, `${3*k} mol`], `A razão H₂:H₂O é 2:2. Portanto, formam-se ${2*k} mol.`)
  add('estequiometria', `CaCO₃ → CaO + CO₂. Quanto CO₂ se forma de ${100*k} g de CaCO₃ puro? Use M(CaCO₃) = 100 e M(CO₂) = 44 g/mol, com rendimento de 100%.`, [`${44*k} g`, `${100*k} g`, `${22*k} g`, `${88*k} g`], `${100*k}/100 = ${k} mol; razão 1:1; massa de CO₂ = ${k} × 44 = ${44*k} g.`)
  add('estequiometria', `Uma amostra de ${50*k} g contém 80% de reagente puro. Qual massa entra no cálculo estequiométrico, se as impurezas são inertes?`, [`${40*k} g`, `${10*k} g`, `${50*k} g`, `${60*k} g`], `Massa pura = ${50*k} × 0,80 = ${40*k} g.`)
  add('estequiometria', `A produção teórica é ${40*k} g, mas foram coletados ${30*k} g. Qual o rendimento?`, ['75%', '25%', '100%', '125%'], `Rendimento = ${30*k}/${40*k} × 100 = 75%.`)
  add('solucoes', `${5*k} g de soluto em 500 mL de solução correspondem a qual concentração em massa?`, [`${10*k} g/L`, `${5*k} g/L`, `${2.5*k} g/L`, `${20*k} g/L`], `500 mL = 0,500 L; C = ${5*k}/0,500 = ${10*k} g/L.`)
  add('solucoes', `Uma solução tem ${40*k} g de NaOH em 2 L. Use M = 40 g/mol. Qual sua concentração molar?`, [`${fmt(k/2)} mol/L`, `${k} mol/L`, `${2*k} mol/L`, `${40*k} mol/L`], `n = ${40*k}/40 = ${k} mol; c = ${k}/2 = ${fmt(k/2)} mol/L.`)
  add('solucoes', `100 mL de solução ${k} mol/L são diluídos até 500 mL. Qual a concentração final, sem perda de soluto?`, [`${fmt(k/5)} mol/L`, `${k} mol/L`, `${5*k} mol/L`, `${fmt(k/2)} mol/L`], `c₂ = c₁V₁/V₂ = ${k} × 100/500 = ${fmt(k/5)} mol/L.`)
  add('solucoes', `${100*k} g de solução a 10% m/m contêm qual massa de soluto?`, [`${10*k} g`, `${90*k} g`, `${100*k} g`, `${20*k} g`], `Massa de soluto = ${100*k} × 0,10 = ${10*k} g; o restante é solvente.`)
  add('solucoes', `A solubilidade é 30 g por 100 g de água. Quanto se dissolve no máximo em ${50*k} g de água, à mesma temperatura?`, [`${15*k} g`, `${30*k} g`, `${60*k} g`, `${5*k} g`], `Massa máxima = 30 × ${50*k}/100 = ${15*k} g.`)
}
const concepts = {
  'generos-textuais': [
    ['Um anúncio pede que o leitor compre um produto. Qual função da linguagem se destaca?', 'Conativa', 'Metalinguística', 'Fática', 'A função conativa busca influenciar o destinatário.'],
    ['Uma notícia pode combinar descrição e narração. Isso mostra que:', 'Um gênero pode reunir diferentes sequências textuais', 'Cada gênero só admite uma sequência', 'Gênero e sequência são sinônimos', 'Gênero é uma forma social de comunicação; sequências são modos de organizar o conteúdo.'],
    ['Em uma charge, imagem e palavras devem ser interpretadas:', 'Em conjunto, considerando o contexto', 'Sempre isoladamente', 'Somente pela quantidade de palavras', 'A interação entre linguagem verbal e não verbal constrói o sentido.'],
  ],
  'variacao-linguistica': [
    ['Diferenças de vocabulário entre regiões exemplificam variação:', 'Regional', 'Somente histórica', 'Somente individual sem contexto', 'A variação regional ou diatópica envolve diferenças associadas ao espaço.'],
    ['A escolha de linguagem numa entrevista de emprego deve considerar:', 'A situação e o interlocutor', 'Uma única forma para todos os contextos', 'Que toda linguagem informal é incapaz de comunicar', 'Adequação relaciona escolhas linguísticas à finalidade e ao contexto.'],
    ['Uma variedade diferente da norma-padrão:', 'Tem regras e pode expressar identidade social', 'Não tem organização linguística', 'Impede qualquer comunicação', 'Variedades linguísticas são sistemas organizados; diferença não justifica preconceito.'],
  ],
  ecologia: [
    ['Em uma cadeia alimentar, a energia disponível geralmente:', 'Diminui nos níveis tróficos seguintes', 'Aumenta em cada nível', 'É integralmente reciclada', 'Parte da energia é dissipada como calor; a matéria pode circular em ciclos.'],
    ['O aumento de nutrientes na água pode provocar:', 'Eutrofização e redução do oxigênio dissolvido', 'Aumento permanente de oxigênio sem impactos', 'Eliminação imediata de todos os decompositores', 'A proliferação e posterior decomposição de organismos podem consumir oxigênio.'],
    ['Uma população é formada por:', 'Indivíduos da mesma espécie em uma área', 'Todas as espécies do planeta', 'Somente fatores não vivos', 'Comunidade reúne populações de diferentes espécies; população reúne uma espécie.'],
  ],
  genetica: [
    ['No cruzamento Aa × Aa, qual a chance de descendente aa no modelo mendeliano simples?', '25%', '50%', '75%', 'As combinações são AA, Aa, Aa e aa: uma em quatro é aa.'],
    ['Fenótipo corresponde:', 'Às características observáveis, influenciadas por genes e ambiente', 'Apenas à sequência de DNA sem influência ambiental', 'Sempre a um alelo dominante', 'Genótipo é a constituição genética; fenótipo envolve sua expressão em interação com o ambiente.'],
    ['Na expressão gênica, a tradução produz:', 'Uma cadeia polipeptídica a partir da informação do RNA mensageiro', 'DNA a partir de gordura', 'Uma cópia de DNA na divisão celular', 'Ribossomos leem códons do RNA mensageiro e incorporam aminoácidos.'],
  ],
  evolucao: [
    ['Na seleção natural, tendem a aumentar em frequência características hereditárias que:', 'Favorecem a reprodução no ambiente considerado', 'Surgem porque o organismo decide mudar', 'São sempre as mais complexas', 'O sucesso reprodutivo diferencial modifica frequências na população ao longo das gerações.'],
    ['Mutações e recombinação são importantes porque:', 'Geram variabilidade genética', 'Sempre são benéficas', 'Eliminam toda diversidade', 'Variabilidade fornece diferenças sobre as quais processos evolutivos podem atuar.'],
    ['Deriva genética envolve:', 'Mudanças aleatórias nas frequências alélicas', 'Escolha consciente de parceiros pelos alelos', 'Somente adaptação dirigida pelo ambiente', 'O acaso tem efeitos especialmente importantes em populações pequenas.'],
  ],
  cinematica: [
    ['Um veículo percorre 120 km em 2 h. Sua velocidade média em módulo, nesse percurso sem inversão de sentido, é:', '60 km/h', '240 km/h', '120 km/h', 'Divida o deslocamento pelo intervalo: 120/2 = 60 km/h.'],
    ['No movimento retilíneo uniforme, a velocidade é:', 'Constante', 'Sempre crescente', 'Obrigatoriamente zero', 'No MRU, s = s₀ + vt e a aceleração é zero.'],
    ['Uma velocidade passa de 4 para 12 m/s em 2 s. A aceleração média é:', '4 m/s²', '8 m/s²', '16 m/s²', 'a = Δv/Δt = (12 − 4)/2 = 4 m/s².'],
  ],
  'energia-mecanica': [
    ['Dobrar a velocidade de uma massa fixa multiplica sua energia cinética por:', '4', '2', '8', 'Ec = mv²/2; a velocidade entra ao quadrado.'],
    ['Se somente forças conservativas realizam trabalho, a energia mecânica:', 'É conservada', 'Sempre diminui', 'Sempre dobra', 'A soma das energias cinética e potencial permanece constante nas condições indicadas.'],
    ['Um equipamento transfere 600 J em 3 s. Sua potência média é:', '200 W', '1800 W', '600 W', 'P = E/Δt = 600/3 = 200 W.'],
  ],
  urbanizacao: [
    ['Urbanização de um país significa aumento:', 'Da participação da população urbana no total', 'Somente da área de uma cidade', 'Obrigatório da população rural', 'Crescimento de uma cidade e aumento da proporção urbana são indicadores diferentes.'],
    ['A influência de uma cidade na rede urbana depende:', 'Das funções e dos fluxos que ela articula', 'Somente da extensão territorial', 'Somente do clima', 'Serviços, trabalho, informação e mercadorias conectam cidades e definem influência.'],
    ['Longos deslocamentos entre moradia e trabalho podem expressar:', 'Desigualdade de acesso e segregação socioespacial', 'Igualdade automática de oportunidades', 'Ausência de relação com transporte', 'Localização da moradia, empregos e infraestrutura condiciona custos e tempo de acesso.'],
  ],
  'clima-energia': [
    ['A condição atmosférica de uma tarde descreve:', 'O tempo', 'Todo o clima de uma região', 'A matriz energética', 'Clima se refere a padrões de longo prazo; tempo, a condições em um momento.'],
    ['Uma fonte renovável de energia:', 'Pode causar impactos ambientais e sociais', 'Nunca causa impactos', 'É sempre inesgotável em qualquer condição de uso', 'Hidrelétricas, por exemplo, podem alterar ecossistemas e deslocar comunidades.'],
    ['Matriz elétrica descreve:', 'As fontes usadas para gerar eletricidade', 'Todos os usos de energia, sem distinção', 'Apenas o consumo de gasolina', 'A matriz energética é mais abrangente e inclui usos como transportes e aquecimento.'],
  ],
}
for (const [topicId, questions] of Object.entries(concepts)) {
  for (const [text, correct, wrong1, wrong2, explanation] of questions) add(topicId, text, [correct, wrong1, wrong2], explanation)
}
export const summaryPracticeQuestions = bank
export const practiceTopics = studySummaries.filter(topic => topic.subject !== 'Redação').map(topic => {
  const existing = studyTopics.find(item => item.id === topic.id)
  return { ...topic, ...existing, title: topic.title, questions: existing?.questions || [], color: existing?.color || (['Matemática', 'Física'].includes(topic.subject) ? 'math' : 'language'), description: existing?.description || topic.intro, authoredCount: existing?.authoredCount || bank.filter(q => q.topicId === topic.id).length }
})
export function localSummaryRound(topicId) {
  const questions = bank.filter(question => question.topicId === topicId)
  return questions.length ? shuffleQuestions(questions).slice(0, 10) : null
}
