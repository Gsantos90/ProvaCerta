import React, { useEffect, useMemo, useState, useRef } from 'react'
import { createRoot } from 'react-dom/client'
import {
  ArrowLeft, ArrowRight, Award, BookOpen, Check, ChevronDown, ChevronUp, Clock3,
  GraduationCap, LayoutGrid, Menu, RotateCcw, Sparkles, Target, X,
  ZoomIn, ZoomOut, Volume2, Square, Search,
} from 'lucide-react'
import './styles.css'
import { supabase } from './lib/supabase'
import { isCorrectAnswer, isAnnulledAnswer } from './lib/examAnswers'
import { inssOfficialSource } from './lib/inssSources'
import { cebraspeScore, isBinaryQuestion, binaryAnswerLabel } from './lib/cebraspeScore'
import { pismOfficialSource, pismExamDetails, pismSelectionLabel } from './lib/pismSources'

import ExamSetup from './ExamSetup'
import { remainingSeconds, formatDuration, reportContext } from './lib/examSession'
const QuestionReport = React.lazy(() => import('./QuestionReport'))

const EssayPractice = React.lazy(() => import('./EssayPractice'))

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

const enem2023SpanishSupport = {
  6: 'Técnicas de manipulación y el resultado\nManipular es sembrar en la conciencia y en la mente de la gente ideas, actitudes, conceptos y aspiraciones — incluso falsas e inmorales — que sirvan a los objetivos de sus manipuladores.\nManipular es una de las primeras cosas que aprendemos en la vida. A muy temprana edad, los bebés descubren el poder del llanto, el berrinche, los pataleos, la risa o alguna “gracia” como recursos para demandar atención, exigir comida, pedir ayuda o simplemente mantener ocupada a la gente. Nuestras actitudes de adultos reflejan lo mucho o poco que algunos maduraron, procesaron y rebasaron ese periodo.\nPara que exista un manipulador, debe haber una base de ciudadanos indefensos, dóciles, desinformados.\nEl manipulador es celoso, a veces casi paranoico; no admite cuestionamientos ni quiere que nadie ocupe su espacio, sabe que su vigencia depende de presencia controladora. Todos los días, hay que marcar la línea de discurso, incidir en el debate. El ridículo vale la pena si con ello se logra una cortina de humo.\nDisponível em: www.forbes.com.mx. Acesso em: 7 out. 2021 (adaptado).',
  7: 'Que quede claro\nCómo es posible que se cierren\ntantas bocas, tantos ojos,\ntantas puertas, muchas mentes ante un acto xenofóbico sin precedentes.\nPresidentes, ministros, cancilleres,\nautoridades, responsables.\n¿Quién pagará el daño causado a familiares?\nPor un loco del estrada sin modales. [...]\nSe alejó de aquel lugar donde su color era\nmucho más que su color, era su raza.\nPersiguiendo un sueño que desapareció,\nque se fusionó y terminó en una pesadilla. [...]\nDéjame que te cuente esta historia\nque sucedió en el metro de Barcelona,\ncuando aquella mañana la injusticia\ny xenofobia se juntaron de la mano,\nprotagonizando una de las más feas escenas de racismo.\nEn aquel vagón viajaba un ángel de color diferente,\nen su camino se interpuso aquel inconsciente,\nque aún sabiendo lo que hacía,\nseguía hablando con su gente.\nLe dio al ángel dos patadas en su cara,\nse rió de ella sin cambiar la mirada.\nY aún anda suelto, aún anda suelto...\nORISHAS. In: Cosita buena. Delaware: Suerte Publishing LLC, 2008 (fragmento).',
  9: 'TEXTO I\n?\nPorQUÉ ME CUESTA TANTO ESTUDIAR?\npORQUÉ ME CUESTA TANTO CONCENTRARME?\nPoRQUÉ......\npORQUÉ......\n?\n?\n?\n?\n..... .\nPORQUé NO CONSIGO APRENDER COMO LOS DEMÁS?',
}

const enemApiBaseUrl = 'https://api.enem.dev/v1'
const enemSubjectLabels = {
  'ciencias-humanas': 'Ciências Humanas',
  'ciencias-natureza': 'Ciências da Natureza',
  linguagens: 'Linguagens',
  matematica: 'Matemática',
}

const catalogCategories = [
  {
    id: 'vestibulares',
    title: 'Provas em destaques',
    description: 'Provas em destaque na plataforma.',
    exams: [
      { id: 'cnu', name: 'CNU', org: 'Concurso Nacional', short: 'CNU', description: 'Concurso Público Nacional Unificado', available: false, color: 'teal', roles: ['Nível Superior', 'Ensino Médio'] },
      { id: 'enem', name: 'ENEM', org: 'Brasil', description: 'Exame Nacional do Ensino Médio', available: true },
    ],
  },
  {
    id: 'faculdades',
    title: 'Faculdades públicas',
    description: 'Vestibulares específicos de universidades públicas.',
    exams: [
      { id: 'pism', name: 'PISM', org: 'UFJF', description: 'Programa de Ingresso Seletivo Misto', available: true },
      { id: 'uerj', name: 'UERJ', org: 'Rio de Janeiro', short: 'UERJ', description: 'Universidade do Estado do Rio de Janeiro', available: true, color: 'teal' },
      { id: 'usp', name: 'USP', org: 'FUVEST · São Paulo', short: 'USP', description: 'Universidade de São Paulo (FUVEST)', available: true, color: 'crimson' },
    ],
  },
  {
    id: 'concursos',
    title: 'Concursos',
    description: 'Provas de concursos públicos.',
    kind: 'concurso',
    exams: [
      { id: 'pmrj', name: 'PMERJ', org: 'Segurança', short: 'PMERJ', description: 'Polícia Militar do Estado do Rio de Janeiro', available: true, color: 'navy', roles: ['Soldado', 'Oficial'] },
      { id: 'bb', name: 'Banco do Brasil', org: 'Bancário', short: 'BB', description: 'Concurso do Banco do Brasil', available: false, color: 'gold', roles: ['Escriturário - Agente Comercial', 'Escriturário - Agente de Tecnologia'] },
      { id: 'inss', name: 'INSS', org: 'PREVIDÊNCIA SOCIAL', short: 'INSS', description: 'Concurso do Instituto Nacional do Seguro Social', available: true, color: 'sky', roles: ['Técnico do Seguro Social'] },
      { id: 'caixa', name: 'Caixa Econômica', org: 'BANCÁRIO', short: 'CAIXA', description: 'Concurso da Caixa Econômica Federal', available: true, color: 'sky', roles: ['Técnico Bancário Novo'] },
      { id: 'pf', name: 'Polícia Federal', org: 'Segurança', short: 'PF', description: 'Concurso da Polícia Federal', available: true, color: 'slate', roles: ['Agente', 'Escrivão', 'Delegado', 'Perito Criminal'] },
      { id: 'correios', name: 'Correios', org: 'SERVIÇOS', short: 'CORREIOS', description: 'Concurso dos Correios', available: true, color: 'amber', roles: ['Carteiro'] },
      { id: 'pc', name: 'Polícia Civil', org: 'Segurança', short: 'PC', description: 'Concurso da Polícia Civil', available: true, color: 'crimson', roles: ['Investigador', 'Inspetor', 'Auxiliar de Necropsia', 'Perito Legista', 'Escrivão', 'Delegado', 'Perito Criminal'] },
    ],
  },
  {
    id: 'oab',
    title: 'Exame da Ordem (OAB)',
    description: 'Exame de Ordem Unificado da Ordem dos Advogados do Brasil.',
    exams: [
      { id: 'oab', name: 'OAB', org: 'Ordem dos Advogados', short: 'OAB', description: 'Exame de Ordem Unificado (1ª fase)', available: true, color: 'crimson', roles: ['1ª fase'] },
    ],
  },
]

const wait = (milliseconds) => new Promise((resolve) => setTimeout(resolve, milliseconds))

const normalizeEnemQuestion = (question) => {
  const markdownImage = question.context?.match(/!\[[^\]]*\]\(([^)]+)\)/)?.[1]
  const support = question.context?.replace(/!\[[^\]]*\]\([^)]+\)/g, '').trim()
  return {
    number: question.index,
    subject: enemSubjectLabels[question.discipline] || question.discipline,
    discipline: question.discipline,
    language: question.language,
    text: question.alternativesIntroduction,
    support,
    supportImage: question.files?.[0] || markdownImage,
    options: question.alternatives.map((alternative) => alternative.text),
    answer: question.correctAlternative,
  }
}

const subjects = [
  { name: 'Língua Portuguesa', count: 5, color: 'coral' },
  { name: 'Geografia', count: 5, color: 'blue' },
  { name: 'Matemática', count: 5, color: 'amber' },
  { name: 'Química', count: 5, color: 'purple' },
]

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

const pismSeriesConfig = {
  '1 ano': {
    label: '1º ano',
    years: ['2025-1', '2025-2', '2024-1', '2024-2', '2023-1', '2023-2'],
  },
  '2 ano': {
    label: '2º ano',
    years: ['2026-ii-1', '2026-ii-2', '2025-ii-1', '2025-ii-2', '2024-ii-1', '2024-ii-2'],
  },
  '3 ano': {
    label: '3º ano',
    years: ['2026-iii-1', '2026-iii-2', '2025-iii-1', '2025-iii-2', '2024-iii-1', '2024-iii-2'],
  },
}

// Cargos e provas do concurso do Banco do Brasil.
// Cada ano aponta para o slug da prova cadastrada no Supabase (quando disponível).
const bbRolesConfig = {
  'Escriturário - Agente Comercial': {
    label: 'Escriturário - Agente Comercial',
    years: [
      { value: '2022', slug: 'bb-2022-a-comercial' },
      { value: '2021', slug: 'bb-2021-a-comercial' },
    ],
  },
  'Escriturário - Agente de Tecnologia': {
    label: 'Escriturário - Agente de Tecnologia',
    years: [
      { value: '2022', slug: 'bb-2022-tecnologia' },
      { value: '2021', slug: 'bb-2021-tecnologia' },
    ],
  },
}

// Concurso da Polícia Militar do Estado do Rio de Janeiro (PMERJ), banca FGV.
// Cada cargo lista os anos disponíveis; o ano aponta para o slug da prova no Supabase.
const pmerjRolesConfig = {
  'Soldado': {
    label: 'Soldado Policial Militar',
    years: [
      { value: '2024', slug: 'pmerj-2024-soldado' },
    ],
  },
  'Oficial': {
    label: 'Oficial Policial Militar',
    years: [],
  },
}

// Concurso dos Correios, organizado por cargo e ano da prova.
const correiosRolesConfig = {
  Carteiro: {
    label: 'Agente de Correios - Carteiro',
    years: [
      { value: '2024', slug: 'correios-2024-carteiro' },
    ],
  },
}

// Concurso da Caixa Econômica Federal, organizado por cargo e ano da prova.
const caixaRolesConfig = {
  tecnico: {
    label: 'Técnico Bancário Novo',
    years: [
      { value: '2024', slug: 'caixa-2024-tecnico-bancario' },
    ],
  },
}

// Concurso da Polícia Civil, banca FGV, organizado por Estado > Cargo > Ano.
// Cada ano aponta para o slug da prova cadastrada no Supabase (quando houver).
const pcByState = {
  'Rio de Janeiro': {
    label: 'Rio de Janeiro',
    roles: {
      'Investigador': {
        label: 'Investigador Policial',
        years: [
          { value: '2022', slug: 'pc-rj-2024-investigador' },
        ],
      },
      'Inspetor': {
        label: 'Inspetor de Polícia',
        years: [
          { value: '2022', slug: 'pc-rj-2022-inspetor' },
        ],
      },
      'Auxiliar de Necropsia': {
        label: 'Auxiliar Policial de Necropsia',
        years: [
          { value: '2022', slug: 'pc-rj-2022-necropsia' },
        ],
      },
      'Perito Legista': {
        label: 'Perito Legista',
        years: [
          { value: '2022', slug: 'pc-rj-2022-perito-legista' },
        ],
      },
      'Escrivão': { label: 'Escrivão de Polícia', years: [] },
      'Delegado': { label: 'Delegado de Polícia', years: [] },
      'Perito Criminal': {
        label: 'Perito Criminal - Química',
        years: [
          { value: '2022', slug: 'pc-rj-2022-perito-quimica' },
        ],
      },
    },
  },
  'São Paulo': { label: 'São Paulo', roles: { 'Investigador': { label: 'Investigador Policial', years: [] } } },
  'Minas Gerais': { label: 'Minas Gerais', roles: { 'Investigador': { label: 'Investigador Policial', years: [] } } },
}
const pcStateOptions = Object.keys(pcByState)

// Concurso da Polícia Federal (banca Cebraspe), organizado por Cargo > Área > Ano.
// No cargo Perito Criminal Federal, a opção "Conhecimento Básico" é comum a todas
// as áreas (prova única). As áreas específicas ("Específico - ...") ainda não têm
// prova cadastrada e ficam indisponíveis até existir o seed correspondente.
const pfPeritoSpecificAreas = [
  'Contábil/Financeira',
  'Engenharia Elétrica / Engenharia Eletrônica',
  'Informática Forense',
  'Geologia Forense',
  'Engenharia Civil',
  'Engenharia Cartográfica',
  'Medicina Legal',
  'Física Forense',
  'Engenharia de Minas',
  'Genética Forense',
  'Engenharia Ambiental',
  'Antropologia Forense',
]
const pfPeritoAreaOptions = [
  { value: 'Conhecimento Básico', years: [{ value: '2025', slug: 'pf-2025-perito-cb' }] },
  ...pfPeritoSpecificAreas.map((area) => ({ value: `Específico - ${area}`, years: [] })),
]
const pfRolesConfig = {
  'Perito Criminal Federal': {
    label: 'Perito Criminal Federal',
    areas: pfPeritoAreaOptions,
  },
}
const pfRoleOptions = Object.keys(pfRolesConfig)

// Concurso Publico Nacional Unificado (CNU).
// Os blocos variam conforme o ano e o nivel. Quando houver prova cadastrada, o bloco tera um slug.
const cnuLevelLabels = { superior: 'Nível superior', medio: 'Ensino médio' }
const cnuBlocksByYear = {
  '2025': {
    superior: [
      { value: 'bloco-1', label: 'Bloco 1: Seguridade Social – Saúde, Assistência Social e Previdência Social' },
      { value: 'bloco-2', label: 'Bloco 2: Cultura e Educação' },
      { value: 'bloco-3', label: 'Bloco 3: Ciência, Dados e Tecnologia' },
      { value: 'bloco-4', label: 'Bloco 4: Engenharia e Arquitetura' },
      { value: 'bloco-5', label: 'Bloco 5: Administração' },
      { value: 'bloco-6', label: 'Bloco 6: Desenvolvimento Socioeconômico' },
      { value: 'bloco-7', label: 'Bloco 7: Justiça e Defesa' },
    ],
    medio: [
      { value: 'bloco-8', label: 'Bloco 8: Saúde' },
      { value: 'bloco-9', label: 'Bloco 9: Regulação' },
    ],
  },
  '2024': {
    superior: [
      { value: 'bloco-1', label: 'Bloco 1: Infraestrutura, Exatas e Engenharia' },
      { value: 'bloco-2', label: 'Bloco 2: Tecnologia, Dados e Informação' },
      { value: 'bloco-3', label: 'Bloco 3: Ambiental, Agrário e Biológicas' },
      { value: 'bloco-4', label: 'Bloco 4: Trabalho e Saúde do Servidor' },
      { value: 'bloco-5', label: 'Bloco 5: Educação, Saúde, Desenvolvimento Social e Direitos Humanos' },
      { value: 'bloco-6', label: 'Bloco 6: Setores Econômicos e Regulação' },
      { value: 'bloco-7', label: 'Bloco 7: Gestão Governamental e Administração Pública' },
    ],
    medio: [
      { value: 'bloco-8', label: 'Bloco 8: Nível Intermediário' },
    ],
  },
}
// Niveis disponiveis para o card (label + chave), na ordem de exibicao.
const cnuLevelsConfig = {
  superior: { label: cnuLevelLabels.superior },
  medio: { label: cnuLevelLabels.medio },
}
// Cada prova do CNU tem dois turnos/fases.
const cnuShifts = [
  { value: 'manha', label: 'Manhã — Conhecimentos Gerais' },
  { value: 'tarde', label: 'Tarde — Conhecimentos Específicos' },
]
// Opcoes do seletor "Ano da prova": a fase/turno foi incorporada ao ano.
// Em 2025, conhecimentos gerais e especificos estao na mesma prova (turno unico).
// Em 2024, a prova e dividida em Manha (basicos) e Tarde (especificos).
const cnuYearOptions = [
  { value: '2025', label: '2025', year: '2025', shift: 'tarde' },
  { value: '2024-manha', label: '2024 - Manhã - Conhecimentos Básicos', year: '2024', shift: 'manha' },
  { value: '2024-tarde', label: '2024 - Tarde - Conhecimentos Específicos', year: '2024', shift: 'tarde' },
]
// Slugs das provas do CNU cadastradas no Supabase, por ano/nivel/bloco/turno.
// Somente as combinacoes presentes aqui ficam disponiveis para iniciar.
const cnuExamSlugs = {
  '2025|superior|bloco-1|tarde': 'cnu-2025-bloco1-tarde',
  '2025|superior|bloco-2|tarde': 'cnu-2025-bloco2-tarde',
  '2025|superior|bloco-3|tarde': 'cnu-2025-bloco3-tarde',
  '2025|superior|bloco-4|tarde': 'cnu-2025-bloco4-tarde',
  '2025|superior|bloco-5|tarde': 'cnu-2025-bloco5-tarde',
  '2025|superior|bloco-6|tarde': 'cnu-2025-bloco6-tarde',
  '2025|superior|bloco-7|tarde': 'cnu-2025-bloco7-tarde',
  '2025|medio|bloco-8|tarde': 'cnu-2025-bloco8-tarde',
  '2025|medio|bloco-9|tarde': 'cnu-2025-bloco9-tarde',
  '2024|superior|bloco-1|manha': 'cnu-2024-bloco1-manha',
  '2024|superior|bloco-1|tarde': 'cnu-2024-bloco1-tarde',
  '2024|superior|bloco-2|manha': 'cnu-2024-bloco2-manha',
  '2024|superior|bloco-2|tarde': 'cnu-2024-bloco2-tarde',
  '2024|superior|bloco-3|manha': 'cnu-2024-bloco3-manha',
  '2024|superior|bloco-3|tarde': 'cnu-2024-bloco3-tarde',
  '2024|superior|bloco-4|manha': 'cnu-2024-bloco4-manha',
  '2024|superior|bloco-4|tarde': 'cnu-2024-bloco4-tarde',
  '2024|superior|bloco-5|manha': 'cnu-2024-bloco5-manha',
  '2024|superior|bloco-5|tarde': 'cnu-2024-bloco5-tarde',
  '2024|superior|bloco-6|manha': 'cnu-2024-bloco6-manha',
  '2024|superior|bloco-6|tarde': 'cnu-2024-bloco6-tarde',
  '2024|superior|bloco-7|manha': 'cnu-2024-bloco7-manha',
  '2024|superior|bloco-7|tarde': 'cnu-2024-bloco7-tarde',
  '2024|medio|bloco-8|manha': 'cnu-2024-bloco8-manha',
  '2024|medio|bloco-8|tarde': 'cnu-2024-bloco8-tarde',
}

// Exame de Ordem Unificado da OAB (1a fase), organizado por ano da prova.
// Cada edicao aponta para o slug da prova cadastrada no Supabase (quando houver).
// Enquanto o slug for null, a edicao aparece listada, mas o botao fica desabilitado
// ("Em breve"). Para habilitar, basta preencher o slug do seed correspondente.
const oabExamsByYear = {
  '2026': [
    { value: '47', label: '47º Exame de Ordem', slug: 'oab-47-primeira-fase' },
    { value: '46', label: '46º Exame de Ordem', slug: 'oab-46-primeira-fase' },
  ],
  '2025': [
    { value: '45', label: '45º Exame de Ordem', slug: 'oab-45-primeira-fase' },
    { value: '44', label: '44º Exame de Ordem', slug: 'oab-44-primeira-fase' },
    { value: '43', label: '43º Exame de Ordem', slug: 'oab-43-primeira-fase' },
  ],
}
const oabYearOptions = Object.keys(oabExamsByYear).sort((a, b) => b.localeCompare(a))

// Vestibular Estadual da UERJ, organizado por ano > edição (exame de qualificação).
// Cada edição aponta para o slug da prova cadastrada no Supabase (quando houver).
const uerjExamsByYear = {
  '2025': [
    { value: 'eq2', label: 'Exame de Qualificação', slug: 'uerj-2025-eq2' },
  ],
}
const uerjYearOptions = Object.keys(uerjExamsByYear).sort((a, b) => b.localeCompare(a))

// Vestibular da USP (FUVEST), organizado por ano > prova/fase.
// Cada edição aponta para o slug da prova cadastrada no Supabase (quando houver).
const uspExamsByYear = {
  '2026': [
    { value: 'v1', label: '1ª fase - Conhecimentos Gerais', slug: 'usp-2026-v1' },
  ],
}
const uspYearOptions = Object.keys(uspExamsByYear).sort((a, b) => b.localeCompare(a))

// Renderiza uma ou mais imagens de apoio. O campo support_image pode conter
// varios caminhos separados por virgula; cada um vira uma <img> clicavel.
function renderSupportImages(supportImage, questionNumber) {
  if (!supportImage) return null
  const sources = String(supportImage)
    .split(',')
    .map((src) => src.trim())
    .filter(Boolean)
  if (sources.length === 0) return null
  return sources.map((src, index) => (
    <img
      key={src}
      className="support-image"
      src={src}
      alt={sources.length > 1
        ? `Imagem de apoio ${index + 1} da questão ${questionNumber}`
        : `Imagem de apoio da questão ${questionNumber}`}
    />
  ))
}

// ============================================================
// Simulado personalizado ("Crie seu simulado")
// O usuario escolhe o grau de ensino, as materias e a quantidade
// de questoes; montamos uma prova aleatoria a partir das questoes
// ja cadastradas no Supabase.
// ============================================================

// Graus de ensino disponiveis no gerador de simulado.
const simuladoLevels = [
  { value: 'medio', label: 'Ensino Médio', description: 'Questões de provas de nível médio (ENEM e afins).' },
  { value: 'superior', label: 'Ensino Superior', description: 'Questões de concursos e exames de nível superior.' },
]

const oabSimuladoSubjects = [
  'Ética e Estatuto da OAB',
  'Direito Administrativo',
  'Direito Ambiental',
  'Direito Civil',
  'Direito Constitucional',
  'Direito do Consumidor',
  'Direito do Trabalho',
  'Direito Eleitoral',
  'Direito Empresarial',
  'Direito Financeiro',
  'Direito Internacional',
  'Direito Penal',
  'Direito Previdenciário',
  'Direito Processual Civil',
  'Direito Processual do Trabalho',
  'Direito Processual Penal',
  'Direito Tributário',
  'Direitos Humanos',
  'Estatuto da Criança e do Adolescente',
  'Filosofia do Direito',
]

const simuladoSubjectGroups = {
  medio: [
    { label: 'Língua Portuguesa', subjects: ['Língua Portuguesa', 'Linguagens, Códigos e suas Tecnologias'] },
    { label: 'Matemática e suas Tecnologias', subjects: ['Matemática', 'Matemática e suas tecnologias', 'Matemática e suas Tecnologias'] },
  ],
  superior: [
    { label: 'Português', subjects: ['Língua Portuguesa', 'Linguagens', 'Literatura', 'Literaturas'] },
    { label: 'Matemática', subjects: ['Matemática', 'Matemática Financeira'] },
  ],
}

const normalizeSimuladoSubject = (subject) => subject
  .trim()
  .toLocaleLowerCase('pt-BR')
  .normalize('NFD')
  .replace(/[\u0300-\u036f]/g, '')

const simuladoSubjectsForDisplay = (level, subjects) => {
  const groups = simuladoSubjectGroups[level] || []
  const sourceSubjects = new Set(subjects.map(normalizeSimuladoSubject))
  const groupedSubjects = new Set(groups.flatMap((group) => group.subjects.map(normalizeSimuladoSubject)))
  const groupedLabels = groups
    .filter((group) => group.subjects.some((subject) => sourceSubjects.has(normalizeSimuladoSubject(subject))))
    .map((group) => group.label)
  const groupedLabelNames = new Set(groupedLabels.map(normalizeSimuladoSubject))
  const individualSubjects = subjects.filter((subject) => (
    !groupedSubjects.has(normalizeSimuladoSubject(subject))
    && !groupedLabelNames.has(normalizeSimuladoSubject(subject))
  ))
  const uniqueDisplaySubjects = [...new Map(
    [...groupedLabels, ...individualSubjects]
      .map((subject) => [normalizeSimuladoSubject(subject), subject]),
  ).values()]
  return uniqueDisplaySubjects.sort((a, b) => a.localeCompare(b, 'pt-BR'))
}

const simuladoSourceSubjects = (level, selectedSubjects) => {
  const groups = simuladoSubjectGroups[level] || []
  return [...new Set(selectedSubjects.flatMap((subject) => {
    const group = groups.find((item) => item.label === subject)
    return group ? group.subjects : [subject]
  }))]
}

// Classifica uma prova (pelo campo source e pelo slug) em um grau de ensino.
// Como o banco nao possui uma coluna de nivel, usamos a origem da prova.
const simuladoLevelForExam = (exam) => {
  const source = (exam?.source || '').toLowerCase()
  const slug = (exam?.slug || '').toLowerCase()
  // ENEM e sempre ensino medio.
  if (source === 'enem' || source === 'inss') return 'medio'
  // CNU: os blocos 8 e 9 sao de nivel intermediario (ensino medio);
  // os demais blocos sao de nivel superior.
  if (source === 'cnu') return /bloco-?(8|9)/.test(slug) ? 'medio' : 'superior'
  // Demais origens (pism, oab, pc, pf, bb, pmerj, ...) sao tratadas como superior.
  return 'superior'
}

// Quantidades de questoes oferecidas no gerador de simulado.
const simuladoCountOptions = [5, 10, 15, 20, 30, 50]

// Embaralha um array (Fisher-Yates) sem alterar o original.
const shuffleArray = (items) => {
  const copy = [...items]
  for (let i = copy.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[copy[i], copy[j]] = [copy[j], copy[i]]
  }
  return copy
}

// Cache em memória (por sessão) das provas já carregadas do Supabase, por slug.
// Evita refazer a requisição ao reabrir a mesma prova. Fora do componente para
// persistir entre renders sem causar re-render.
const supabaseExamCache = new Map()

function App() {
  const [screen, setScreen] = useState('home')
  const [session, setSession] = useState(null)
  const [timeLeft, setTimeLeft] = useState(0)
  const [report, setReport] = useState(null)
  const finishGuard = useRef(false)
  const [selectedExam, setSelectedExam] = useState(null)
  const [supportScale, setSupportScale] = useState(1)
  const [speakingId, setSpeakingId] = useState(null)
  const [lightboxImage, setLightboxImage] = useState(null)
  const [catalogSearch, setCatalogSearch] = useState('')
  const [catalogCategory, setCatalogCategory] = useState('todas')
  const [pismSeries, setPismSeries] = useState('1 ano')
  const [year, setYear] = useState('2025-1')
  const [bbRole, setBbRole] = useState('Escriturário - Agente Comercial')
  const [bbYear, setBbYear] = useState('2022')
  const [bbLoading, setBbLoading] = useState(false)
  const [bbError, setBbError] = useState('')
  const [pmerjRole, setPmerjRole] = useState('Soldado')
  const [pmerjYear, setPmerjYear] = useState('2024')
  const [pmerjLoading, setPmerjLoading] = useState(false)
  const [pmerjError, setPmerjError] = useState('')
  const [correiosRole, setCorreiosRole] = useState('Carteiro')
  const [correiosYear, setCorreiosYear] = useState('2024')
  const [correiosLoading, setCorreiosLoading] = useState(false)
  const [correiosError, setCorreiosError] = useState('')
  const [inssLoading, setInssLoading] = useState(false)
  const [inssError, setInssError] = useState('')
  const [caixaRole, setCaixaRole] = useState('tecnico')
  const [caixaYear, setCaixaYear] = useState('2024')
  const [caixaLoading, setCaixaLoading] = useState(false)
  const [caixaError, setCaixaError] = useState('')
  const [pcState, setPcState] = useState('Rio de Janeiro')
  const [pcRole, setPcRole] = useState('Investigador')
  const [pcYear, setPcYear] = useState('2022')
  const [pcLoading, setPcLoading] = useState(false)
  const [pcError, setPcError] = useState('')
  const [pfRole, setPfRole] = useState('Perito Criminal Federal')
  const [pfArea, setPfArea] = useState('Conhecimento Básico')
  const [pfYear, setPfYear] = useState('2025')
  const [pfLoading, setPfLoading] = useState(false)
  const [pfError, setPfError] = useState('')
  const [cnuYear, setCnuYear] = useState('2025')
  const [cnuLevel, setCnuLevel] = useState('superior')
  const [cnuBlock, setCnuBlock] = useState('bloco-1')
  const [cnuShift, setCnuShift] = useState('tarde')
  const [oabYear, setOabYear] = useState(oabYearOptions[0] || '')
  const [oabEdition, setOabEdition] = useState(oabExamsByYear[oabYearOptions[0]]?.[0]?.value || '')
  const [oabLoading, setOabLoading] = useState(false)
  const [oabError, setOabError] = useState('')
  const [uerjYear, setUerjYear] = useState(uerjYearOptions[0] || '')
  const [uerjEdition, setUerjEdition] = useState(uerjExamsByYear[uerjYearOptions[0]]?.[0]?.value || '')
  const [uerjLoading, setUerjLoading] = useState(false)
  const [uerjError, setUerjError] = useState('')
  const [uspYear, setUspYear] = useState(uspYearOptions[0] || '')
  const [uspEdition, setUspEdition] = useState(uspExamsByYear[uspYearOptions[0]]?.[0]?.value || '')
  const [uspLoading, setUspLoading] = useState(false)
  const [uspError, setUspError] = useState('')
  const [cnuLoading, setCnuLoading] = useState(false)
  const [cnuError, setCnuError] = useState('')
  // Estado do gerador de simulado personalizado.
  const [simuladoLevel, setSimuladoLevel] = useState('medio')
  const [simuladoSubjects, setSimuladoSubjects] = useState({}) // { medio: [...], superior: [...] }
  const [simuladoSelected, setSimuladoSelected] = useState([]) // materias marcadas
  const [simuladoCount, setSimuladoCount] = useState(10)
  const [simuladoCatalogLoading, setSimuladoCatalogLoading] = useState(false)
  const [simuladoLoading, setSimuladoLoading] = useState(false)
  const [simuladoError, setSimuladoError] = useState('')
  const [enemCatalog, setEnemCatalog] = useState([])
  const [enemYear, setEnemYear] = useState('2023')
  const [enemDiscipline, setEnemDiscipline] = useState('linguagens')
  const [enemLanguage, setEnemLanguage] = useState('ingles')
  const [enemQuestions, setEnemQuestions] = useState([])
  const [enemQuestionCache, setEnemQuestionCache] = useState({})
  const [enemLoading, setEnemLoading] = useState(false)
  const [enemError, setEnemError] = useState('')
  const [current, setCurrent] = useState(0)
  const [answers, setAnswers] = useState({})
  const [menuOpen, setMenuOpen] = useState(false)
  const [voices, setVoices] = useState([])
  const [gridExpanded, setGridExpanded] = useState(false)
  const [pismLoading, setPismLoading] = useState(false)
  const [supabaseExamSlug, setSupabaseExamSlug] = useState(null)
  useEffect(() => {
    if (typeof window !== 'undefined' && 'speechSynthesis' in window) window.speechSynthesis.cancel()
    setSpeakingId(null)
  }, [current, screen, selectedExam])
  useEffect(() => {
    setGridExpanded(false)
  }, [selectedExam, screen])
  useEffect(() => {
    if (typeof window === 'undefined' || !('speechSynthesis' in window)) return undefined
    const loadVoices = () => setVoices(window.speechSynthesis.getVoices())
    loadVoices()
    window.speechSynthesis.addEventListener('voiceschanged', loadVoices)
    return () => window.speechSynthesis.removeEventListener('voiceschanged', loadVoices)
  }, [])
  useEffect(() => {
    if (!lightboxImage) return undefined
    const onKey = (event) => { if (event.key === 'Escape') setLightboxImage(null) }
    window.addEventListener('keydown', onKey)
    return () => window.removeEventListener('keydown', onKey)
  }, [lightboxImage])
  useEffect(() => {
    let cancelled = false
    fetch(`${enemApiBaseUrl}/exams`)
      .then(async (response) => {
        if (!response.ok) throw new Error(`Não foi possível carregar as provas do ENEM (HTTP ${response.status}).`)
        return response.json()
      })
      .then((data) => {
        if (cancelled) return
        setEnemCatalog(data)
        const currentExam = data.find((exam) => exam.year === 2023) || data[0]
        if (currentExam) {
          setEnemYear(String(currentExam.year))
          setEnemDiscipline(currentExam.disciplines.find((item) => item.value === 'linguagens')?.value || currentExam.disciplines[0]?.value || '')
          setEnemLanguage(currentExam.languages[0]?.value || '')
        }
      })
      .catch((error) => {
        if (!cancelled) setEnemError(error.message)
      })
    return () => { cancelled = true }
  }, [])

  const questionSets = {
    'enem-2023-1-ingles': [...enem2023EnglishQuestions, ...enem2023SpanishQuestions],
  }
  // Provas de ENEM cadastradas no Supabase, apresentadas no mesmo seletor de ano
  // da API. 'source: supabase' indica que a prova vem completa do banco (sem
  // filtro por area/idioma) em vez da api.enem.dev.
  const enemSupabaseExams = [{ year: 2024, slug: 'enem-2024', source: 'supabase', disciplines: [], languages: [] }]
  const enemCatalogCombined = [
    ...enemSupabaseExams.filter((item) => !enemCatalog.some((apiItem) => apiItem.year === item.year)),
    ...enemCatalog,
  ].sort((a, b) => b.year - a.year)
  const activeQuestions = selectedExam === 'enem-api' || supabaseExamSlug ? enemQuestions : questionSets[selectedExam] || []
  const pismExam = pismExamDetails(supabaseExamSlug)
  const examLabel = selectedExam === 'inss' ? 'INSS 2022 · Técnico do Seguro Social' : pismExam ? String(pismExam.year) : selectedExam === 'usp' ? `USP ${uspYear} · FUVEST` : selectedExam === 'uerj' ? `UERJ ${uerjYear} · ${(uerjExamsByYear[uerjYear] || []).find((item) => item.value === uerjEdition)?.label || ''}` : selectedExam === 'simulado' ? `Simulado · ${simuladoLevels.find((item) => item.value === simuladoLevel)?.label || 'Personalizado'}` : selectedExam === 'pism-1' ? '2025-1' : selectedExam === 'pism-2' ? '2025-2' : selectedExam === 'pism-2024-1' ? '2024-1' : selectedExam === 'pism-2024-2' ? '2024-2' : selectedExam === 'pism-2023-1' ? '2023-1' : selectedExam === 'pism-2023-2' ? '2023-2' : supabaseExamSlug === 'enem-2024' ? 'ENEM 2024 · Prova completa' : selectedExam === 'enem-api' ? `ENEM ${enemYear}` : selectedExam === 'bb' ? `Banco do Brasil ${bbYear} · ${bbRole}` : selectedExam === 'cnu' ? `CNU ${cnuYear} · Bloco ${cnuBlock.replace('bloco-', '')}` : selectedExam === 'oab' ? `OAB ${oabYear} · ${(oabExamsByYear[oabYear] || []).find((item) => item.value === oabEdition)?.label || 'Exame de Ordem'}` : selectedExam === 'pmerj' ? `PMERJ ${pmerjYear} · ${pmerjRolesConfig[pmerjRole]?.label || 'Soldado'}` : selectedExam === 'correios' ? `Correios ${correiosYear} · ${correiosRolesConfig[correiosRole]?.label || 'Carteiro'}` : selectedExam === 'caixa' ? `CAIXA ${caixaYear} · ${caixaRolesConfig[caixaRole]?.label || 'Técnico Bancário Novo'}` : selectedExam === 'pc' ? `Polícia Civil ${pcState} ${pcYear} · ${pcByState[pcState]?.roles?.[pcRole]?.label || 'Investigador'}` : selectedExam === 'pf' ? `Polícia Federal ${pfYear} · ${pfRole} · ${pfArea}` : '2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS'
  // Tela de "início" para onde os botões de voltar da prova/resultado devem retornar:
  // simulados voltam para a tela de simulado; as demais provas, para o catálogo (todas as provas).
  const examHomeScreen = selectedExam === 'simulado' ? 'simulado' : 'catalog'
  const cnuShiftLabel = cnuYear === '2025' ? 'Conhecimentos Gerais e Específicos' : cnuShift === 'manha' ? 'Manhã · Conhecimentos Gerais' : 'Tarde · Conhecimentos Específicos'
  const examDay = selectedExam === 'inss' ? `Prova objetiva · ${activeQuestions.length} itens (Certo/Errado)` : selectedExam === 'usp' || selectedExam === 'uerj' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'simulado' ? `Simulado personalizado · ${activeQuestions.length} questões` : supabaseExamSlug === 'enem-2024' ? 'Prova completa · 180 questões' : selectedExam === 'enem-api' ? 'Área selecionada' : selectedExam === 'bb' ? 'Prova objetiva' : selectedExam === 'oab' ? 'Prova objetiva · 1ª fase' : selectedExam === 'pmerj' || selectedExam === 'correios' || selectedExam === 'caixa' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'pc' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'pf' ? 'Conhecimentos Básicos · 50 itens (Certo/Errado)' : selectedExam === 'cnu' ? cnuShiftLabel : pismExam ? `${pismExam.day}º dia` : examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'

  // Normaliza letras de gabarito/resposta para evitar falhas de comparação
  // por espaços, quebras de linha ou diferença de maiúsculas/minúsculas.
  const normalizeLetter = (value) => (typeof value === 'string' ? value.trim().toUpperCase() : value)
  const score = useMemo(() => activeQuestions.reduce((total, question, index) => (
    total + (isCorrectAnswer(answers[index], question.answer) ? 1 : 0)
  ), 0), [activeQuestions, answers])

  const inssScore = useMemo(() => cebraspeScore(activeQuestions, answers), [activeQuestions, answers])

  const finishExam = (reason = 'manual') => {
    if (finishGuard.current) return
    finishGuard.current = true
    setSession((old) => old ? { ...old, reason: old.deadline && Date.now() >= old.deadline ? 'timeout' : reason, endedAt: old.deadline ? Math.min(Date.now(), old.deadline) : Date.now() } : old)
    setReport(null)
    setLightboxImage(null)
    setScreen('result')
  }
  const beginSession = (minutes) => {
    const startedAt = Date.now()
    const deadline = minutes ? startedAt + minutes * 60000 : null
    finishGuard.current = false
    setSession({ startedAt, deadline, reason: null, endedAt: null })
    setTimeLeft(minutes ? minutes * 60 : 0)
    setCurrent(0)
    setAnswers({})
    setReport(null)
    setScreen('exam')
  }
  useEffect(() => {
    if (screen !== 'exam' || !session?.deadline) return
    const tick = () => {
      setTimeLeft(remainingSeconds(session.deadline))
      if (Date.now() >= session.deadline) finishExam('timeout')
    }
    tick()
    const interval = window.setInterval(tick, 250)
    document.addEventListener('visibilitychange', tick)
    window.addEventListener('focus', tick)
    return () => {
      window.clearInterval(interval)
      document.removeEventListener('visibilitychange', tick)
      window.removeEventListener('focus', tick)
    }
  }, [screen, session?.deadline])

  // Carrega as questões de uma prova cadastrada no Supabase a partir do seu slug.
  const loadSupabaseExam = async (supabaseSlug) => {
    if (!supabase || !supabaseSlug) {
      throw new Error('Esta prova exige conexão com o Supabase. Verifique a configuração do banco de dados.')
    }
    // Reaproveita a prova já carregada nesta sessão, se houver.
    if (supabaseExamCache.has(supabaseSlug)) {
      return supabaseExamCache.get(supabaseSlug)
    }
    const { data: examRecord, error: examError } = await supabase.from('exams').select('id, title').eq('slug', supabaseSlug).maybeSingle()
    if (examError) throw examError
    if (!examRecord) {
      throw new Error(`A prova "${supabaseSlug}" não foi encontrada no banco de dados.`)
    }
    const { data: storedQuestions, error: questionsError } = await supabase.from('questions').select('id, number, subject, text, support, support_image, options, answer, explanation').eq('exam_id', examRecord.id).order('number')
    if (questionsError) throw questionsError
    if (!storedQuestions?.length) {
      throw new Error(`A prova "${supabaseSlug}" não possui questões cadastradas no banco de dados.`)
    }
    const mapped = storedQuestions.map((question) => ({
      questionId: question.id,
      number: question.number,
      examSlug: supabaseSlug,
      examTitle: examRecord.title,
      subject: question.subject,
      text: question.text,
      support: question.support,
      supportImage: question.support_image,
      options: question.options,
      answer: question.answer,
      explanation: question.explanation,
      sourceUrl: inssOfficialSource(supabaseSlug, question.number) || pismOfficialSource(supabaseSlug, question.number),
    }))
    supabaseExamCache.set(supabaseSlug, mapped)
    return mapped
  }

  const startExam = async (exam) => {
    if (exam === 'enem') return
    setPismLoading(true)
    setEnemError('')
    try {
      const supabaseSlug = { 'pism-1': 'pism-2025-1', 'pism-2': 'pism-2025-2', 'pism-2024-1': 'pism-2024-1', 'pism-2024-2': 'pism-2024-2', 'pism-2023-1': 'pism-2023-1', 'pism-2023-2': 'pism-2023-2', 'pism-ii-2025-dia-1': 'pism-ii-2025-dia-1', 'pism-ii-2025-dia-2': 'pism-ii-2025-dia-2', 'pism-ii-2026-dia-1': 'pism-ii-2026-dia-1', 'pism-ii-2024-dia-1': 'pism-ii-2024-dia-1', 'pism-iii-2024-dia-1': 'pism-iii-2024-dia-1', 'pism-ii-2024-dia-2': 'pism-ii-2024-dia-2', 'pism-iii-2024-dia-2': 'pism-iii-2024-dia-2', 'pism-iii-2025-dia-1': 'pism-iii-2025-dia-1', 'pism-iii-2025-dia-2': 'pism-iii-2025-dia-2', 'pism-iii-2026-dia-1': 'pism-iii-2026-dia-1', 'pism-iii-2026-dia-2': 'pism-iii-2026-dia-2', 'pism-ii-2026-dia-2': 'pism-ii-2026-dia-2' }[exam]
      if (!supabaseSlug) {
        throw new Error('As provas do PISM exigem conexão com o Supabase. Verifique a configuração do banco de dados.')
      }
      const questions = await loadSupabaseExam(supabaseSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(supabaseSlug)
      setSelectedExam(exam)
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setEnemError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setPismLoading(false)
    }
  }

  const startBbExam = async () => {
    setBbLoading(true)
    setBbError('')
    try {
      const selectedYear = (bbRolesConfig[bbRole]?.years || []).find((item) => item.value === bbYear)
      if (!selectedYear?.slug) {
        throw new Error('Esta prova ainda não está disponível para o cargo selecionado.')
      }
      const questions = await loadSupabaseExam(selectedYear.slug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(selectedYear.slug)
      setSelectedExam('bb')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setBbError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setBbLoading(false)
    }
  }

  const changeBbRole = (value) => {
    setBbRole(value)
    setBbError('')
    const roleYears = bbRolesConfig[value]?.years || []
    // Preserva o ano selecionado se ele existir no novo cargo; senão, usa o primeiro disponível.
    const keepYear = roleYears.some((item) => item.value === bbYear)
    setBbYear(keepYear ? bbYear : (roleYears[0]?.value || ''))
  }

  const currentBbYears = bbRolesConfig[bbRole]?.years || []
  const isBbAvailable = currentBbYears.length > 0

  // Concurso da PMERJ. Carrega a prova do cargo/ano selecionado a partir do slug.
  const changePmerjRole = (value) => {
    setPmerjRole(value)
    setPmerjError('')
    const roleYears = pmerjRolesConfig[value]?.years || []
    setPmerjYear(roleYears[0]?.value || '')
  }

  const currentPmerjYears = pmerjRolesConfig[pmerjRole]?.years || []
  const isPmerjAvailable = currentPmerjYears.length > 0

  const startPmerjExam = async () => {
    setPmerjLoading(true)
    setPmerjError('')
    try {
      const selectedYear = (pmerjRolesConfig[pmerjRole]?.years || []).find((item) => item.value === pmerjYear)
      if (!selectedYear?.slug) {
        throw new Error('Esta prova ainda não está disponível para o cargo selecionado.')
      }
      const questions = await loadSupabaseExam(selectedYear.slug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(selectedYear.slug)
      setSelectedExam('pmerj')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setPmerjError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setPmerjLoading(false)
    }
  }

  const currentCorreiosYears = correiosRolesConfig[correiosRole]?.years || []
  const isCorreiosAvailable = currentCorreiosYears.length > 0

  const startCorreiosExam = async () => {
    setCorreiosLoading(true)
    setCorreiosError('')
    try {
      const selectedYear = currentCorreiosYears.find((item) => item.value === correiosYear)
      if (!selectedYear?.slug) {
        throw new Error('Esta prova ainda não está disponível para o cargo selecionado.')
      }
      const questions = await loadSupabaseExam(selectedYear.slug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(selectedYear.slug)
      setSelectedExam('correios')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setCorreiosError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setCorreiosLoading(false)
    }
  }

  const startInssExam = async () => {
    setInssLoading(true)
    setInssError('')
    try {
      const questions = await loadSupabaseExam('inss-2022-tecnico')
      setEnemQuestions(questions)
      setSupabaseExamSlug('inss-2022-tecnico')
      setSelectedExam('inss')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setInssError('Não foi possível carregar a prova do INSS. Verifique se ela já foi cadastrada e tente novamente.')
    } finally {
      setInssLoading(false)
    }
  }

  const currentCaixaYears = caixaRolesConfig[caixaRole]?.years || []
  const isCaixaAvailable = currentCaixaYears.length > 0

  const startCaixaExam = async () => {
    setCaixaLoading(true)
    setCaixaError('')
    try {
      const selectedYear = currentCaixaYears.find((item) => item.value === caixaYear)
      if (!selectedYear?.slug) {
        throw new Error('Esta prova ainda não está disponível para o cargo selecionado.')
      }
      const questions = await loadSupabaseExam(selectedYear.slug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(selectedYear.slug)
      setSelectedExam('caixa')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setCaixaError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setCaixaLoading(false)
    }
  }

  // Concurso da Polícia Civil. Seleção em três níveis: Estado > Cargo > Ano.
  const currentPcRoles = pcByState[pcState]?.roles || {}
  const currentPcYears = currentPcRoles[pcRole]?.years || []
  const pcSlug = currentPcYears.find((item) => item.value === pcYear)?.slug
  const isPcAvailable = Boolean(pcSlug)

  const changePcState = (value) => {
    setPcState(value)
    setPcError('')
    const roles = pcByState[value]?.roles || {}
    // Seleciona o primeiro cargo que possua prova cadastrada (ano com slug);
    // se nenhum tiver, cai no primeiro cargo (que ficará indisponível).
    const firstAvailableRole = Object.keys(roles).find(
      (key) => (roles[key]?.years || []).some((entry) => entry.slug),
    )
    const firstRole = firstAvailableRole || Object.keys(roles)[0] || ''
    setPcRole(firstRole)
    setPcYear(roles[firstRole]?.years?.[0]?.value || '')
  }

  const changePcRole = (value) => {
    setPcRole(value)
    setPcError('')
    setPcYear((currentPcRoles[value]?.years || [])[0]?.value || '')
  }

  const startPcExam = async () => {
    if (!pcSlug) return
    setPcLoading(true)
    setPcError('')
    try {
      const questions = await loadSupabaseExam(pcSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(pcSlug)
      setSelectedExam('pc')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setPcError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setPcLoading(false)
    }
  }

  // Concurso da Polícia Federal. Seleção por Cargo > Área > Ano.
  const currentPfAreas = pfRolesConfig[pfRole]?.areas || []
  const currentPfYears = currentPfAreas.find((item) => item.value === pfArea)?.years || []
  const pfSlug = currentPfYears.find((item) => item.value === pfYear)?.slug
  const isPfAvailable = Boolean(pfSlug)

  const changePfRole = (value) => {
    setPfRole(value)
    setPfError('')
    const areas = pfRolesConfig[value]?.areas || []
    const firstArea = areas[0]?.value || ''
    setPfArea(firstArea)
    setPfYear(areas[0]?.years?.[0]?.value || '')
  }

  const changePfArea = (value) => {
    setPfArea(value)
    setPfError('')
    const years = currentPfAreas.find((item) => item.value === value)?.years || []
    // Preserva o ano selecionado se existir na nova área; senão, usa o primeiro disponível.
    const keepYear = years.some((item) => item.value === pfYear)
    setPfYear(keepYear ? pfYear : (years[0]?.value || ''))
  }

  const startPfExam = async () => {
    if (!pfSlug) return
    setPfLoading(true)
    setPfError('')
    try {
      const questions = await loadSupabaseExam(pfSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(pfSlug)
      setSelectedExam('pf')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setPfError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setPfLoading(false)
    }
  }

  // Vai para a home e rola suavemente até a seção "Sobre nós".
  const goToAbout = () => {
    setMenuOpen(false)
    setScreen('home')
    if (typeof window !== 'undefined') {
      window.requestAnimationFrame(() => {
        setTimeout(() => {
          document.getElementById('sobre')?.scrollIntoView({ behavior: 'smooth', block: 'start' })
        }, 60)
      })
    }
  }

  // ----------------------------------------------------------
  // Gerador de simulado personalizado
  // ----------------------------------------------------------

  // Carrega, uma unica vez, o catalogo de materias por grau de ensino.
  // Junta cada questao do banco ao seu exame para descobrir o grau e,
  // em seguida, agrupa as materias (coluna subject) por grau de ensino.
  const loadSimuladoCatalog = async () => {
    if (!supabase) {
      throw new Error('O simulado personalizado exige conexão com o Supabase. Verifique a configuração do banco de dados.')
    }
    const { data: exams, error: examsError } = await supabase.from('exams').select('id, slug, source, title')
    if (examsError) throw examsError
    const levelByExamId = new Map((exams || []).map((exam) => [exam.id, simuladoLevelForExam(exam)]))
    const { data: rows, error: rowsError } = await supabase.from('questions').select('exam_id, subject')
    if (rowsError) throw rowsError
    const byLevel = { medio: new Set(), superior: new Set() }
    for (const row of rows || []) {
      const level = levelByExamId.get(row.exam_id)
      if (level && row.subject) byLevel[level].add(row.subject)
    }
    // No ensino superior, ocultamos as materias genericas "Eixo 1" a "Eixo 5"
    // (provenientes das provas do CNU) da selecao de materias do simulado.
    const isHiddenSuperiorSubject = (subject) => /^eixo\s*[1-5]$/i.test(subject.trim())
    return {
      superior: simuladoSubjectsForDisplay('superior', [...new Set([...byLevel.superior, ...oabSimuladoSubjects])])
        .filter((subject) => !isHiddenSuperiorSubject(subject))
        .sort((a, b) => a.localeCompare(b, 'pt-BR')),
      medio: simuladoSubjectsForDisplay('medio', [...byLevel.medio]),
    }
  }

  // Abre a tela do simulado, carregando o catalogo de materias se ainda nao houver.
  const openSimulado = async () => {
    setMenuOpen(false)
    setSimuladoError('')
    setScreen('simulado')
    if (simuladoSubjects.medio || simuladoSubjects.superior) return
    setSimuladoCatalogLoading(true)
    try {
      const catalog = await loadSimuladoCatalog()
      setSimuladoSubjects(catalog)
    } catch (error) {
      setSimuladoError(`Não foi possível carregar as matérias: ${error.message}`)
    } finally {
      setSimuladoCatalogLoading(false)
    }
  }

  // Troca o grau de ensino e limpa as materias marcadas (sao especificas de cada grau).
  const changeSimuladoLevel = (value) => {
    setSimuladoLevel(value)
    setSimuladoSelected([])
    setSimuladoError('')
  }

  // Marca/desmarca uma materia.
  const toggleSimuladoSubject = (subject) => {
    setSimuladoError('')
    setSimuladoSelected((current) => (
      current.includes(subject) ? current.filter((item) => item !== subject) : [...current, subject]
    ))
  }

  const currentSimuladoSubjects = [...new Map(
    (simuladoSubjects[simuladoLevel] || [])
      .map((subject) => [normalizeSimuladoSubject(subject), subject]),
  ).values()]

  // Monta e inicia o simulado: busca as questoes das materias escolhidas no grau
  // selecionado, embaralha e corta na quantidade pedida.
  const startSimulado = async () => {
    if (simuladoSelected.length === 0) {
      setSimuladoError('Selecione ao menos uma matéria para gerar o simulado.')
      return
    }
    if (!supabase) {
      setSimuladoError('O simulado personalizado exige conexão com o Supabase.')
      return
    }
    setSimuladoLoading(true)
    setSimuladoError('')
    try {
      const { data: exams, error: examsError } = await supabase.from('exams').select('id, slug, source, title')
      if (examsError) throw examsError
      const examIds = (exams || [])
        .filter((exam) => simuladoLevelForExam(exam) === simuladoLevel)
        .map((exam) => exam.id)
      if (examIds.length === 0) {
        throw new Error('Nenhuma prova disponível para o grau selecionado.')
      }
      const { data: rows, error: rowsError } = await supabase
        .from('questions')
        .select('id, exam_id, number, subject, text, support, support_image, options, answer, explanation')
        .in('exam_id', examIds)
        .in('subject', simuladoSourceSubjects(simuladoLevel, simuladoSelected))
      if (rowsError) throw rowsError
      if (!rows?.length) {
        throw new Error('Não há questões cadastradas para as matérias selecionadas.')
      }
      const questions = shuffleArray(rows).slice(0, simuladoCount).map((question) => ({
        questionId: question.id,
        number: question.number,
        examSlug: exams.find((exam) => exam.id === question.exam_id)?.slug,
        examTitle: exams.find((exam) => exam.id === question.exam_id)?.title,
        subject: question.subject,
        text: question.text,
        support: question.support,
        supportImage: question.support_image,
        options: question.options,
        answer: question.answer,
        explanation: question.explanation,
        sourceUrl: inssOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || pismOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number),
      }))
      setEnemQuestions(questions)
      setSupabaseExamSlug('simulado')
      setSelectedExam('simulado')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setSimuladoError(`Não foi possível gerar o simulado: ${error.message}`)
    } finally {
      setSimuladoLoading(false)
    }
  }

  const blocksFor = (yearValue, levelValue) => cnuBlocksByYear[yearValue]?.[levelValue] || []

  const changeCnuLevel = (value) => {
    setCnuLevel(value)
    setCnuBlock(blocksFor(cnuYear, value)[0]?.value || '')
  }

  // O seletor "Ano da prova" agora combina ano + turno/fase em uma única opção.
  const changeCnuYearOption = (optionValue) => {
    const option = cnuYearOptions.find((item) => item.value === optionValue) || cnuYearOptions[0]
    setCnuYear(option.year)
    setCnuShift(option.shift)
    setCnuBlock(blocksFor(option.year, cnuLevel)[0]?.value || '')
  }
  // Valor atualmente selecionado no seletor combinado (deriva de ano + turno).
  const cnuYearOption = cnuYear === '2025' ? '2025' : `2024-${cnuShift}`

  const currentCnuBlocks = blocksFor(cnuYear, cnuLevel)
  const cnuSlug = cnuExamSlugs[`${cnuYear}|${cnuLevel}|${cnuBlock}|${cnuShift}`]
  const isCnuAvailable = Boolean(cnuSlug)

  const startCnuExam = async () => {
    if (!cnuSlug) return
    setCnuLoading(true)
    setCnuError('')
    try {
      const questions = await loadSupabaseExam(cnuSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(cnuSlug)
      setSelectedExam('cnu')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setCnuError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setCnuLoading(false)
    }
  }

  // Exame da Ordem (OAB). Carrega a prova da edicao selecionada a partir do slug
  // cadastrado em oabExamsByYear/Supabase.
  const currentOabEditions = oabExamsByYear[oabYear] || []
  const oabSlug = currentOabEditions.find((item) => item.value === oabEdition)?.slug
  const isOabAvailable = Boolean(oabSlug)

  const changeOabYear = (value) => {
    setOabYear(value)
    setOabEdition((oabExamsByYear[value] || [])[0]?.value || '')
    setOabError('')
  }

  const startOabExam = async () => {
    if (!oabSlug) return
    setOabLoading(true)
    setOabError('')
    try {
      const questions = await loadSupabaseExam(oabSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(oabSlug)
      setSelectedExam('oab')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setOabError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setOabLoading(false)
    }
  }

  // Vestibular da UERJ. Seleção por ano > edição; o slug define a prova disponível.
  const currentUerjEditions = uerjExamsByYear[uerjYear] || []
  const uerjSlug = currentUerjEditions.find((item) => item.value === uerjEdition)?.slug
  const isUerjAvailable = Boolean(uerjSlug)

  const changeUerjYear = (value) => {
    setUerjYear(value)
    setUerjError('')
    setUerjEdition((uerjExamsByYear[value] || [])[0]?.value || '')
  }

  const startUerjExam = async () => {
    if (!uerjSlug) return
    setUerjLoading(true)
    setUerjError('')
    try {
      const questions = await loadSupabaseExam(uerjSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(uerjSlug)
      setSelectedExam('uerj')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setUerjError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setUerjLoading(false)
    }
  }

  // Vestibular da USP (FUVEST). Seleção por ano > prova; o slug define a prova disponível.
  const currentUspEditions = uspExamsByYear[uspYear] || []
  const uspSlug = currentUspEditions.find((item) => item.value === uspEdition)?.slug
  const isUspAvailable = Boolean(uspSlug)

  const changeUspYear = (value) => {
    setUspYear(value)
    setUspError('')
    setUspEdition((uspExamsByYear[value] || [])[0]?.value || '')
  }

  const startUspExam = async () => {
    if (!uspSlug) return
    setUspLoading(true)
    setUspError('')
    try {
      const questions = await loadSupabaseExam(uspSlug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(uspSlug)
      setSelectedExam('usp')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setUspError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setUspLoading(false)
    }
  }

  const loadEnemQuestions = async () => {
    setEnemError('')
    const cached = enemQuestionCache[enemYear]
    if (cached) return cached
    setEnemLoading(true)
    try {
      const questions = []
      let offset = 0
      let hasMore = true
      while (hasMore) {
        const response = await fetch(`${enemApiBaseUrl}/exams/${enemYear}/questions?limit=50&offset=${offset}`)
        if (!response.ok) throw new Error(`Não foi possível carregar as questões do ENEM ${enemYear} (HTTP ${response.status}).`)
        const data = await response.json()
        questions.push(...data.questions)
        hasMore = data.metadata?.hasMore
        offset += data.metadata?.limit || 50
        if (hasMore) await wait(1100)
      }
      const normalized = questions.map(normalizeEnemQuestion)
      setEnemQuestionCache((old) => ({ ...old, [enemYear]: normalized }))
      return normalized
    } finally {
      setEnemLoading(false)
    }
  }

  const startEnemExam = async () => {
    // Anos cadastrados no Supabase (ex.: 2024) carregam a prova completa do banco.
    const supabaseExam = enemSupabaseExams.find((item) => String(item.year) === String(enemYear))
    if (supabaseExam) {
      setEnemError('')
      setEnemLoading(true)
      try {
        const questions = await loadSupabaseExam(supabaseExam.slug)
        setEnemQuestions(questions)
        setSupabaseExamSlug(supabaseExam.slug)
        setSelectedExam('enem-api')
        setCurrent(0)
        setAnswers({})
        setScreen('exam-setup')
        setMenuOpen(false)
      } catch (error) {
        setEnemError(`Não foi possível carregar o ENEM ${supabaseExam.year} do Supabase: ${error.message}`)
      } finally {
        setEnemLoading(false)
      }
      return
    }
    try {
      const allQuestions = await loadEnemQuestions()
      const filtered = allQuestions.filter((question) => question.discipline === enemDiscipline)
      const questionsForLanguage = enemDiscipline === 'linguagens'
        ? filtered.filter((question) => question.language === enemLanguage || !question.language)
        : filtered
      if (!questionsForLanguage.length) {
        throw new Error('A API não retornou questões para os filtros selecionados.')
      }
      setEnemQuestions(questionsForLanguage)
      setSupabaseExamSlug(null)
      setSelectedExam('enem-api')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setEnemError(error.message)
    }
  }

  const selectedExamForYear = {
    '2025-1': 'pism-1',
    '2025-2': 'pism-2',
    '2024-ii-1': 'pism-ii-2024-dia-1',
    '2024-iii-1': 'pism-iii-2024-dia-1',
    '2024-ii-2': 'pism-ii-2024-dia-2',
    '2024-iii-2': 'pism-iii-2024-dia-2',
    '2025-iii-1': 'pism-iii-2025-dia-1',
    '2025-iii-2': 'pism-iii-2025-dia-2',
    '2026-iii-1': 'pism-iii-2026-dia-1',
    '2026-iii-2': 'pism-iii-2026-dia-2',
    '2026-ii-1': 'pism-ii-2026-dia-1',
    '2026-ii-2': 'pism-ii-2026-dia-2',
    '2025-ii-1': 'pism-ii-2025-dia-1',
    '2025-ii-2': 'pism-ii-2025-dia-2',
    '2024-1': 'pism-2024-1',
    '2024-2': 'pism-2024-2',
    '2023-1': 'pism-2023-1',
    '2023-2': 'pism-2023-2',
  }

  const changePismSeries = (value) => {
    setPismSeries(value)
    const validYears = pismSeriesConfig[value]?.years || []
    if (validYears.length > 0) {
      setYear(validYears[0])
    } else {
      setYear('')
    }
  }

  const currentPismYears = pismSeriesConfig[pismSeries]?.years || []
  const isPismAvailable = currentPismYears.length > 0

  const changeEnemYear = (value) => {
    const exam = enemCatalogCombined.find((item) => String(item.year) === value)
    setEnemYear(value)
    setEnemDiscipline(exam?.disciplines?.find((item) => item.value === 'linguagens')?.value || exam?.disciplines?.[0]?.value || '')
    setEnemLanguage(exam?.languages?.[0]?.value || '')
    setEnemError('')
  }

  const answer = (letter) => {
    if (finishGuard.current) return
    if (session?.deadline && Date.now() >= session.deadline) { finishExam('timeout'); return }
    setAnswers((old) => ({ ...old, [current]: letter }))
  }
  const previous = () => setCurrent((value) => Math.max(0, value - 1))
  const next = () => setCurrent((value) => Math.min(activeQuestions.length - 1, value + 1))

  const speechSupported = typeof window !== 'undefined' && 'speechSynthesis' in window
  const stopSpeech = () => {
    if (speechSupported) window.speechSynthesis.cancel()
    setSpeakingId(null)
  }
  // Escolhe a voz pt-BR mais natural disponível no dispositivo.
  // Vozes "online"/"natural" (Google, Microsoft Natural, Luciana) soam bem menos
  // robóticas que a voz local padrão; por isso são priorizadas.
  const pickPortugueseVoice = () => {
    const available = voices.length ? voices : (speechSupported ? window.speechSynthesis.getVoices() : [])
    const ptVoices = available.filter((voice) => /pt(-|_)?BR/i.test(voice.lang) || /pt/i.test(voice.lang))
    if (!ptVoices.length) return null
    const score = (voice) => {
      const name = voice.name.toLowerCase()
      let value = 0
      if (/pt(-|_)?br/i.test(voice.lang)) value += 5
      if (/google/.test(name)) value += 4
      if (/natural|neural|online/.test(name)) value += 4
      if (/luciana|francisca|maria|helo[ií]sa| br/i.test(name)) value += 2
      if (!voice.localService) value += 3 // vozes online costumam ser mais naturais
      return value
    }
    return [...ptVoices].sort((a, b) => score(b) - score(a))[0]
  }
  const speak = (id, text) => {
    if (!speechSupported || !text) return
    if (speakingId === id) {
      stopSpeech()
      return
    }
    const synth = window.speechSynthesis
    synth.cancel()
    const voice = pickPortugueseVoice()
    // O Chrome corta falas muito longas; dividimos o texto em blocos por frases.
    const chunks = String(text).match(/[^.!?\n]+[.!?\n]*|\s*\S+/g)?.reduce((acc, part) => {
      const last = acc[acc.length - 1]
      if (last && (last.length + part.length) < 200) acc[acc.length - 1] = last + part
      else acc.push(part)
      return acc
    }, []) || [String(text)]
    const start = () => {
      setSpeakingId(id)
      chunks.forEach((chunk, index) => {
        const utterance = new SpeechSynthesisUtterance(chunk.trim())
        if (voice) utterance.voice = voice
        utterance.lang = voice?.lang || 'pt-BR'
        utterance.rate = 1
        utterance.pitch = 1.05
        utterance.volume = 1
        if (index === chunks.length - 1) {
          utterance.onend = () => setSpeakingId(null)
        }
        utterance.onerror = () => setSpeakingId(null)
        synth.speak(utterance)
      })
      // O Chrome às vezes deixa o motor "pausado" após um cancel; resume garante a fala.
      if (synth.paused) synth.resume()
    }
    // Pequeno atraso evita a falha do Chrome ao chamar speak() logo após cancel().
    setTimeout(start, 60)
  }
  const zoomIn = () => setSupportScale((value) => Math.min(1.8, Math.round((value + 0.15) * 100) / 100))
  const zoomOut = () => setSupportScale((value) => Math.max(0.85, Math.round((value - 0.15) * 100) / 100))

  const pismCard = (
    <ExamCard
      type="pism"
      title="PISM"
      description="Programa de Ingresso Seletivo Misto"
      series={pismSeriesConfig}
      currentSeries={pismSeries}
      onSeriesChange={changePismSeries}
      years={currentPismYears}
      year={year}
      setYear={setYear}
      onStart={() => isPismAvailable && selectedExamForYear[year] && startExam(selectedExamForYear[year])}
      available={isPismAvailable}
      loading={pismLoading}
      error={enemError}
    />
  )
  const enemCard = (
    <EnemCard catalog={enemCatalogCombined} year={enemYear} setYear={changeEnemYear} discipline={enemDiscipline} setDiscipline={setEnemDiscipline} language={enemLanguage} setLanguage={setEnemLanguage} onStart={startEnemExam} loading={enemLoading} error={enemError} />
  )
  const bbCard = (
    <BbCard
      roles={bbRolesConfig}
      role={bbRole}
      onRoleChange={changeBbRole}
      years={currentBbYears}
      year={bbYear}
      setYear={setBbYear}
      onStart={startBbExam}
      available={isBbAvailable}
      loading={bbLoading}
      error={bbError}
    />
  )
  const pmerjCard = (
    <PmerjCard
      roles={pmerjRolesConfig}
      role={pmerjRole}
      onRoleChange={changePmerjRole}
      years={currentPmerjYears}
      year={pmerjYear}
      setYear={setPmerjYear}
      onStart={startPmerjExam}
      available={isPmerjAvailable}
      loading={pmerjLoading}
      error={pmerjError}
    />
  )
  const correiosCard = (
    <CorreiosCard
      roles={correiosRolesConfig}
      role={correiosRole}
      onRoleChange={setCorreiosRole}
      years={currentCorreiosYears}
      year={correiosYear}
      setYear={setCorreiosYear}
      onStart={startCorreiosExam}
      available={isCorreiosAvailable}
      loading={correiosLoading}
      error={correiosError}
    />
  )
  const inssCard = <InssCard onStart={startInssExam} loading={inssLoading} error={inssError} />
  const caixaCard = (
    <CaixaCard
      roles={caixaRolesConfig}
      role={caixaRole}
      onRoleChange={setCaixaRole}
      years={currentCaixaYears}
      year={caixaYear}
      setYear={setCaixaYear}
      onStart={startCaixaExam}
      available={isCaixaAvailable}
      loading={caixaLoading}
      error={caixaError}
    />
  )
  const pcCard = (
    <PcCard
      states={pcStateOptions}
      state={pcState}
      onStateChange={changePcState}
      roles={currentPcRoles}
      role={pcRole}
      onRoleChange={changePcRole}
      years={currentPcYears}
      year={pcYear}
      setYear={setPcYear}
      onStart={startPcExam}
      available={isPcAvailable}
      loading={pcLoading}
      error={pcError}
    />
  )
  const pfCard = (
    <PfCard
      roles={pfRoleOptions}
      role={pfRole}
      onRoleChange={changePfRole}
      areas={currentPfAreas}
      area={pfArea}
      onAreaChange={changePfArea}
      years={currentPfYears}
      year={pfYear}
      setYear={setPfYear}
      onStart={startPfExam}
      available={isPfAvailable}
      loading={pfLoading}
      error={pfError}
    />
  )
  const cnuCard = (
    <CnuCard
      yearOptions={cnuYearOptions}
      yearOption={cnuYearOption}
      onYearOptionChange={changeCnuYearOption}
      levels={cnuLevelsConfig}
      level={cnuLevel}
      onLevelChange={changeCnuLevel}
      blocks={currentCnuBlocks}
      block={cnuBlock}
      setBlock={setCnuBlock}
      onStart={startCnuExam}
      available={isCnuAvailable}
      loading={cnuLoading}
      error={cnuError}
    />
  )
  const oabCard = (
    <OabCard
      years={oabYearOptions}
      year={oabYear}
      setYear={changeOabYear}
      editions={currentOabEditions}
      edition={oabEdition}
      setEdition={setOabEdition}
      onStart={startOabExam}
      available={isOabAvailable}
      loading={oabLoading}
      error={oabError}
    />
  )
  const uerjCard = (
    <UerjCard
      years={uerjYearOptions}
      year={uerjYear}
      setYear={changeUerjYear}
      editions={currentUerjEditions}
      edition={uerjEdition}
      setEdition={setUerjEdition}
      onStart={startUerjExam}
      available={isUerjAvailable}
      loading={uerjLoading}
      error={uerjError}
    />
  )
  const uspCard = (
    <UspCard
      years={uspYearOptions}
      year={uspYear}
      setYear={changeUspYear}
      editions={currentUspEditions}
      edition={uspEdition}
      setEdition={setUspEdition}
      onStart={startUspExam}
      available={isUspAvailable}
      loading={uspLoading}
      error={uspError}
    />
  )
  const featuredCards = { inss: inssCard, pism: pismCard, enem: enemCard, uerj: uerjCard, usp: uspCard, bb: bbCard, cnu: cnuCard, oab: oabCard, pmrj: pmerjCard, correios: correiosCard, caixa: caixaCard, pc: pcCard, pf: pfCard }

  if (screen === 'essay') {
    return <div className="app-shell"><Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} /><React.Suspense fallback={<main className="essay-page"><p role="status">Carregando a área de redação…</p></main>}><EssayPractice onBack={() => setScreen('home')} /></React.Suspense></div>
  }

  if (screen === 'simulado') {
    const subjectColors = ['coral', 'blue', 'amber', 'purple']
    const canStart = simuladoSelected.length > 0 && !simuladoLoading
    return (
      <div className="app-shell">
        <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="catalog-page simulado-page">
          <div className="catalog-head">
            <button className="back-link" onClick={() => setScreen('home')}><ArrowLeft size={17} /> Voltar ao início</button>
            <p className="eyebrow">Monte do seu jeito</p>
            <h1>Crie seu simulado</h1>
            <p className="catalog-subtitle">Escolha o grau de ensino, selecione as matérias que deseja treinar e a quantidade de questões. Montamos um simulado único a partir das provas da plataforma.</p>
          </div>

          <div className="simulado-steps">
            <section className="simulado-block">
              <div className="simulado-block-head">
                <span className="simulado-step-num">1</span>
                <div>
                  <h2>Grau de ensino</h2>
                  <p>Define o conjunto de provas usado no seu simulado.</p>
                </div>
              </div>
              <div className="simulado-levels">
                {simuladoLevels.map((level) => (
                  <button
                    key={level.value}
                    type="button"
                    className={`simulado-level ${simuladoLevel === level.value ? 'active' : ''}`}
                    onClick={() => changeSimuladoLevel(level.value)}
                    aria-pressed={simuladoLevel === level.value}
                  >
                    <strong>{level.label}</strong>
                    <small>{level.description}</small>
                  </button>
                ))}
              </div>
            </section>

            <section className="simulado-block">
              <div className="simulado-block-head">
                <span className="simulado-step-num">2</span>
                <div>
                  <h2>Matérias</h2>
                  <p>Toque para incluir ou remover uma matéria. {simuladoSelected.length > 0 && <b>{simuladoSelected.length} selecionada(s)</b>}</p>
                </div>
                {currentSimuladoSubjects.length > 0 && (
                  <button
                    type="button"
                    className="simulado-selectall"
                    onClick={() => setSimuladoSelected(
                      simuladoSelected.length === currentSimuladoSubjects.length ? [] : [...currentSimuladoSubjects],
                    )}
                  >
                    {simuladoSelected.length === currentSimuladoSubjects.length ? 'Limpar seleção' : 'Selecionar todas'}
                  </button>
                )}
              </div>
              {simuladoCatalogLoading ? (
                <p className="simulado-hint">Carregando matérias disponíveis…</p>
              ) : currentSimuladoSubjects.length === 0 ? (
                <p className="simulado-hint">Nenhuma matéria disponível para este grau de ensino no momento.</p>
              ) : (
                <div className="simulado-subjects">
                  {currentSimuladoSubjects.map((subject, index) => {
                    const active = simuladoSelected.includes(subject)
                    return (
                      <button
                        key={subject}
                        type="button"
                        className={`simulado-subject ${subjectColors[index % subjectColors.length]} ${active ? 'active' : ''}`}
                        onClick={() => toggleSimuladoSubject(subject)}
                        aria-pressed={active}
                      >
                        <span className="simulado-subject-check">{active ? <Check size={13} /> : null}</span>
                        {subject}
                      </button>
                    )
                  })}
                </div>
              )}
            </section>

            <section className="simulado-block">
              <div className="simulado-block-head">
                <span className="simulado-step-num">3</span>
                <div>
                  <h2>Quantidade de questões</h2>
                  <p>Caso haja menos questões disponíveis, usamos todas as que existirem.</p>
                </div>
              </div>
              <div className="simulado-counts">
                {simuladoCountOptions.map((count) => (
                  <button
                    key={count}
                    type="button"
                    className={`simulado-count ${simuladoCount === count ? 'active' : ''}`}
                    onClick={() => setSimuladoCount(count)}
                    aria-pressed={simuladoCount === count}
                  >
                    {count}
                  </button>
                ))}
              </div>
            </section>
          </div>

          {simuladoError && <p className="api-error" role="alert">{simuladoError}</p>}

          <div className="simulado-cta">
            <div className="simulado-summary">
              <Target size={16} />
              <span>
                {simuladoLevels.find((item) => item.value === simuladoLevel)?.label}
                {' · '}
                {simuladoSelected.length > 0 ? `${simuladoSelected.length} matéria(s)` : 'nenhuma matéria'}
                {' · '}
                até {simuladoCount} questões
              </span>
            </div>
            <button className={`button ${canStart ? 'primary' : 'disabled'}`} onClick={startSimulado} disabled={!canStart}>
              {simuladoLoading ? 'Gerando simulado…' : 'Gerar simulado'} {!simuladoLoading && <ArrowRight size={17} />}
            </button>
          </div>
        </main>
        <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
      </div>
    )
  }

  if (screen === 'catalog') {
    return (
      <div className="app-shell">
        <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="catalog-page">
          <div className="catalog-head">
            <button className="back-link" onClick={() => setScreen('home')}><ArrowLeft size={17} /> Voltar ao início</button>
            <p className="eyebrow">Catálogo completo</p>
            <h1>Todas as provas</h1>
            <p className="catalog-subtitle">Escolha uma prova por categoria. Novas provas serão adicionadas em breve.</p>
          </div>

          <div className="catalog-filters">
            <div className="catalog-search">
              <Search size={17} />
              <input
                type="text"
                value={catalogSearch}
                onChange={(event) => setCatalogSearch(event.target.value)}
                placeholder="Buscar prova por nome..."
                aria-label="Buscar prova por nome"
              />
              {catalogSearch && <button className="catalog-search-clear" onClick={() => setCatalogSearch('')} aria-label="Limpar busca"><X size={15} /></button>}
            </div>
            <div className="catalog-chips">
              <button className={`catalog-chip ${catalogCategory === 'todas' ? 'active' : ''}`} onClick={() => setCatalogCategory('todas')}>Todas</button>
              {catalogCategories.map((category) => (
                <button key={category.id} className={`catalog-chip ${catalogCategory === category.id ? 'active' : ''}`} onClick={() => setCatalogCategory(category.id)}>{category.title}</button>
              ))}
            </div>
          </div>

          {(() => {
            const term = catalogSearch.trim().toLowerCase()
            const matches = (exam) => !term || exam.name.toLowerCase().includes(term) || (exam.description || '').toLowerCase().includes(term)
            const visibleCategories = catalogCategories
              .filter((category) => catalogCategory === 'todas' || category.id === catalogCategory)
              .map((category) => ({ ...category, exams: category.exams.filter(matches) }))
              .filter((category) => category.exams.length > 0)

            if (visibleCategories.length === 0) {
              return <p className="catalog-empty">Nenhuma prova encontrada para o filtro selecionado.</p>
            }

            return visibleCategories.map((category) => {
              const featured = category.exams.filter((exam) => featuredCards[exam.id])
              const upcoming = category.exams.filter((exam) => !featuredCards[exam.id])
              // Nos concursos e nas faculdades publicas, os cards funcionais usam o mesmo
              // grid compacto (trio) dos demais para manter todos com o mesmo tamanho:
              // 3 por linha e o que sobrar na linha de baixo.
              const useUnifiedGrid = category.kind === 'concurso' || category.id === 'faculdades' || category.id === 'oab'
              return (
                <section className="catalog-category" key={category.id}>
                  <div className="catalog-category-head">
                    <h2>{category.title}</h2>
                    <p>{category.description}</p>
                  </div>
                  {useUnifiedGrid ? (
                    (featured.length > 0 || upcoming.length > 0) && (
                      <div className="exam-cards trio">
                        {featured.map((exam) => <React.Fragment key={exam.id}>{featuredCards[exam.id]}</React.Fragment>)}
                        {upcoming.map((exam) => <UpcomingCard key={exam.id} exam={exam} />)}
                      </div>
                    )
                  ) : (
                    <>
                      {featured.length > 0 && (
                        <div className="exam-cards">
                          {featured.map((exam) => <React.Fragment key={exam.id}>{featuredCards[exam.id]}</React.Fragment>)}
                        </div>
                      )}
                      {upcoming.length > 0 && (
                        <div className="exam-cards trio">
                          {upcoming.map((exam) => <UpcomingCard key={exam.id} exam={exam} />)}
                        </div>
                      )}
                    </>
                  )}
                </section>
              )
            })
          })()}
        </main>
        <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
      </div>
    )
  }

  if (screen === 'exam-setup') {
    return <div className="app-shell"><Header onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => setScreen('essay')} menuOpen={menuOpen} setMenuOpen={setMenuOpen} />
      <ExamSetup title={examLabel} count={activeQuestions.length} onStart={beginSession} onBack={() => examHomeScreen === 'simulado' ? openSimulado() : setScreen(examHomeScreen)} />
    </div>
  }
  if (screen === 'result') {
    const isInss = selectedExam === 'inss'
    const resultPoints = isInss ? inssScore.points : score
    const percentage = activeQuestions.length ? Math.round((resultPoints / activeQuestions.length) * 100) : 0
    return (
      <div className="app-shell">
        <Header onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="result-page">
          <div className="result-glow" />
          <section className="result-card">
            <div className="result-icon"><Award size={34} /></div>
            <p className="eyebrow">{session?.reason === 'timeout' ? 'Tempo encerrado' : 'Simulado concluído'}</p>
            {session?.deadline && <p className="result-message">{session.reason === 'timeout' ? 'A prova foi finalizada automaticamente.' : 'Você finalizou a prova.'} Tempo utilizado: {formatDuration((session.endedAt - session.startedAt) / 1000)}. Questões sem resposta marcada: {activeQuestions.length - Object.keys(answers).length}.</p>}
            <h1>Você chegou ao fim.<br /><span>Veja como foi seu desempenho.</span></h1>
            <div className="score-circle" style={{ '--score': `${Math.max(0, percentage) * 3.6}deg` }}>
              <strong>{resultPoints}<small>/{activeQuestions.length}</small></strong>
              <span>{isInss ? 'pontos líquidos' : 'acertos'}</span>
            </div>
            <p className="result-message">
              {percentage >= 70 ? 'Excelente trabalho! Seu ritmo de estudo está dando resultado.' : 'Cada questão é uma oportunidade. Revise os temas e tente novamente.'}
            </p>
            {isInss && <p className="result-message">Acerto: +1 · Erro: −1 · Em branco: 0. {inssScore.annulled} itens anulados recebem +1 cada. Correção conforme o gabarito de 2022.</p>}
            <div className="result-stats">
              <div><strong>{isInss ? inssScore.correct : `${percentage}%`}</strong><span>{isInss ? "Acertos" : "Aproveitamento"}</span></div>
              <button className="review-stat" onClick={() => { setCurrent(0); setScreen('review') }}><strong>{isInss ? inssScore.wrong : activeQuestions.length - score}</strong><span>{isInss ? "Erros · revisar" : "Para revisar"}</span></button>
              <div><strong>{isInss ? inssScore.blank : activeQuestions.length}</strong><span>{isInss ? "Em branco" : "Questões"}</span></div>
            </div>
            <div className="result-actions">
              <button className="button primary" onClick={() => { setCurrent(0); setAnswers({}); setScreen('exam-setup') }}><RotateCcw size={17} /> Refazer prova</button>
              <button className="button secondary" onClick={() => { if (examHomeScreen === 'simulado') { openSimulado() } else { setScreen(examHomeScreen) } }}>Voltar ao início</button>
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
    const binary = isBinaryQuestion(question)
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
        <Header onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="exam-page">
          <div className="exam-topline">
            <button className="back-link" onClick={() => { if (isReview) { setScreen('result') } else if (examHomeScreen === 'simulado') { openSimulado() } else { setScreen(examHomeScreen) } }}><ArrowLeft size={17} /> {isReview ? 'Voltar ao resultado' : 'Sair da prova'}</button>
            <div className="exam-name"><span className="mini-logo">P</span><span>provacerta · {selectedExam === 'usp' || selectedExam === 'uerj' || selectedExam === 'simulado' || selectedExam === 'enem-api' || selectedExam === 'bb' || selectedExam === 'cnu' || selectedExam === 'oab' || selectedExam === 'pmerj' || selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' ? examLabel : `PISM ${examLabel}`}</span><b>·</b><span>{isReview ? 'Revisão' : selectedExam === 'usp' || selectedExam === 'uerj' || selectedExam === 'simulado' || selectedExam === 'bb' || selectedExam === 'cnu' || selectedExam === 'oab' || selectedExam === 'pmerj' || selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' ? examDay : `Módulo ${pismExam?.module || 'I'} · ${examDay}`}</span></div>
            <span className="question-count">{current + 1} <i>/</i> {activeQuestions.length}</span>
          </div>
          {!isReview && session?.deadline && <div className="exam-timer">
            <span><Clock3 size={18} /> Tempo restante <strong role="timer" aria-label="Tempo restante">{formatDuration(timeLeft)}</strong></span>
            <span role="status">{timeLeft <= 60 ? 'Resta até 1 minuto.' : timeLeft <= 300 ? 'Restam até 5 minutos.' : 'Modo de prova'}</span>
            <button className="button secondary small" onClick={() => finishExam()}>Finalizar prova</button>
          </div>}
          <div className="progress-track"><span style={{ width: `${((current + 1) / activeQuestions.length) * 100}%` }} /></div>
          <div className="exam-layout">
            <aside className="question-nav">
              <div className="aside-heading"><span>{isReview ? 'Revisão' : 'Questões'}</span><small>{isReview ? `${score}/${activeQuestions.length}` : `${Object.keys(answers).length}/${activeQuestions.length}`}</small></div>

              <div className="a11y-bar">
                <div className="a11y-zoom">
                  <button type="button" onClick={zoomOut} disabled={supportScale <= 0.85} aria-label="Diminuir tamanho do texto de apoio"><ZoomOut size={14} /></button>
                  <span className="a11y-zoom-value">{Math.round(supportScale * 100)}%</span>
                  <button type="button" onClick={zoomIn} disabled={supportScale >= 1.8} aria-label="Aumentar tamanho do texto de apoio"><ZoomIn size={14} /></button>
                </div>
                {speechSupported && question.support && <button type="button" className={`listen-button small ${speakingId === 'support' ? 'active' : ''}`} onClick={() => speak('support', question.support)} aria-label={speakingId === 'support' ? 'Parar leitura do texto de apoio' : 'Ouvir o texto de apoio'}>{speakingId === 'support' ? <><Square size={13} /> Parar</> : <><Volume2 size={14} /> Ouvir</>}</button>}
              </div>

              <div className="support-stack" style={{ fontSize: `${supportScale}rem` }} onClick={(event) => { if (event.target.tagName === 'IMG' && event.target.classList.contains('support-image')) setLightboxImage({ src: event.target.src, alt: event.target.alt }) }}>
              {supabaseExamSlug
                ? (question.support || question.supportImage) && <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{renderSupportImages(question.supportImage, current + 1)}{question.support && <span>{question.support}</span>}</div></details>
                : selectedExam === 'enem-api'
                ? (question.support || question.supportImage) && <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{renderSupportImages(question.supportImage, current + 1)}{question.support && <span>{question.support}</span>}</div></details>
                : selectedExam === 'enem-2023-1-ingles'
                ? <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{question.supportImage ? renderSupportImages(question.supportImage, current + 1) : <span>{current === 9 ? `${enem2023SpanishSupport[9]}\n\n${question.support}` : question.support || enem2023SpanishSupport[current]}</span>}</div></details>
                : null}
              </div>

              {(() => {
                const gridThreshold = 40
                const isCollapsible = activeQuestions.length > gridThreshold
                // Mantém a questão atual visível mesmo com a grade recolhida.
                const visibleCount = isCollapsible && !gridExpanded ? Math.max(gridThreshold, current + 1) : activeQuestions.length
                return (
                  <>
                    <div className="question-grid">
                      {activeQuestions.slice(0, visibleCount).map((item, index) => {
                        // Na revisao, marca cada quadradinho: verde se acertou,
                        // vermelho se errou OU nao respondeu.
                        const reviewCorrect = isReview && isCorrectAnswer(answers[index], item.answer)
                        const reviewWrong = isReview && !reviewCorrect
                        return (
                          <button key={item.text} className={`${index === current ? 'active' : ''} ${answers[index] ? 'answered' : ''} ${reviewCorrect ? 'review-correct' : ''} ${reviewWrong ? 'review-wrong' : ''}`} onClick={() => setCurrent(index)}>{index + 1}</button>
                        )
                      })}
                    </div>
                    {isCollapsible && (
                      <button type="button" className="grid-toggle" onClick={() => setGridExpanded((value) => !value)} aria-expanded={gridExpanded}>
                        {gridExpanded ? <><ChevronUp size={15} /> Ver menos questões</> : <><ChevronDown size={15} /> Ver todas as {activeQuestions.length} questões</>}
                      </button>
                    )}
                  </>
                )
              })()}
              <div className="legend"><span><i className="dot filled" /> Respondida</span><span><i className="dot" /> Em aberto</span></div>
              <div className="exam-tip"><Sparkles size={18} /><p><b>Dica de foco</b><br />Leia com calma e marque a alternativa que melhor responde ao enunciado.</p></div>
            </aside>
            <section className="question-content">
              <button type="button" className="report-trigger" onClick={() => setReport(reportContext(question, current, examLabel, supabaseExamSlug))}>Informar problema</button>
              <div className={`subject-tag ${subjects.find((item) => item.name === question.subject)?.color}`}>{question.subject}</div>
              <div className="question-heading"><span>Questão {String(current + 1).padStart(2, '0')}</span><Clock3 size={16} /> <small>{isReview ? 'Revisão' : session?.deadline ? 'Modo de prova' : 'Sem tempo limite'}</small>{speechSupported && <button type="button" className={`listen-button ${speakingId === 'question' ? 'active' : ''}`} onClick={() => speak('question', `${question.text}. ${question.options.map((option, index) => binary ? option : `Alternativa ${letters[index]}. ${option}`).join('. ')}`)} aria-label={speakingId === 'question' ? 'Parar leitura da questão' : 'Ouvir a questão'}>{speakingId === 'question' ? <><Square size={14} /> Parar</> : <><Volume2 size={15} /> Ouvir questão</>}</button>}</div>
              {selectedExam === 'inss' && <p className="official-source">Acerto: +1 · Erro: −1 · Em branco: 0 · Anulado: +1.</p>}
              <h1>{question.text}</h1>
              {question.sourceUrl && <p className="official-source"><a href={question.sourceUrl} target="_blank" rel="noopener noreferrer">Abrir questão e textos no caderno oficial {question.sourceUrl.includes('cebraspe.org.br') ? 'do Cebraspe' : 'da UFJF'} ↗</a></p>}
              <div className="options">
                {question.options.map((option, index) => {
                  const letter = letters[index]
                  const isCorrect = !isAnnulledAnswer(question.answer) && isCorrectAnswer(letter, question.answer)
                  const isSelected = normalizeLetter(selected) === letter
                  return <button key={letter} onClick={() => !isReview && answer(letter)} className={`option ${isReview && isCorrect ? 'correct' : ''} ${isReview && !isAnnulledAnswer(question.answer) && isSelected && !isCorrect ? 'incorrect' : ''} ${!isReview && isSelected ? 'selected' : ''}`}><span className="option-letter">{binary ? (index === 0 ? "C" : "E") : letter}</span><span>{option}</span>{isReview && isCorrect && <span className="answer-label"><Check size={15} /> Correta</span>}{isReview && !isAnnulledAnswer(question.answer) && isSelected && !isCorrect && <span className="answer-label wrong"><X size={15} /> Sua resposta</span>}{!isReview && isSelected && <Check size={18} className="option-check" />}</button>
                })}
              </div>
              {isReview && isAnnulledAnswer(question.answer) && <p className="official-source">Questão anulada · ponto atribuído automaticamente.</p>}
              {isReview && (question.sourceUrl || !isCorrectAnswer(selected, question.answer)) && question.explanation && (
                <div className="answer-explanation">
                  <div className="answer-explanation-head"><Sparkles size={15} /> <b>{isAnnulledAnswer(question.answer) ? 'Questão anulada · ponto atribuído automaticamente' : `Como chegar na resposta correta (${binary ? binaryAnswerLabel(question.answer) : question.answer})`}</b></div>
                  <p>{question.explanation}</p>
                </div>
              )}
              <div className="question-footer">
                <div className="question-footer-left">
                  {isReview && <button className="button secondary small" onClick={() => setScreen('result')}>Sair da revisão</button>}
                  <button className="button secondary small" onClick={previous} disabled={current === 0}><ArrowLeft size={16} /> Anterior</button>
                </div>
                {isReview
                  ? <button className="button primary small" onClick={nextReviewQuestion}>{current === activeQuestions.length - 1 ? 'Voltar ao resultado' : 'Próxima'} <ArrowRight size={16} /></button>
                  : current === activeQuestions.length - 1
                  ? <button className="button primary small" onClick={() => finishExam()}>Finalizar prova <Check size={16} /></button>
                  : <button className="button primary small" onClick={next}>Próxima <ArrowRight size={16} /></button>}
              </div>
            </section>
          </div>
        </main>
        {report && <React.Suspense fallback={<div role="status">Abrindo formulário…</div>}><QuestionReport context={report} onClose={() => setReport(null)} /></React.Suspense>}
        {lightboxImage && (
          <div className="lightbox" onClick={() => setLightboxImage(null)} role="dialog" aria-modal="true" aria-label="Imagem de apoio ampliada">
            <button className="lightbox-close" onClick={() => setLightboxImage(null)} aria-label="Fechar imagem"><X size={22} /></button>
            <img src={lightboxImage.src} alt={lightboxImage.alt} onClick={(event) => event.stopPropagation()} />
          </div>
        )}
      </div>
    )
  }

  return (
    <div className="app-shell">
      <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
      <main className="home">
        <section className="hero">
          <div className="hero-copy">
            <div className="pill"><span className="pulse-dot" /> Seu próximo passo começa aqui</div>
            <h1>Estude melhor.<br /><em>Conquiste mais.</em></h1>
            <p>Sua aprovação começa com a prática certa.

Acesse provas reais de concursos e faculdades federais, resolva simulados exclusivos e acompanhe seu desempenho para chegar pronto no dia da prova.</p>
            <div className="hero-buttons">
              <button className="button primary hero-button" onClick={() => setScreen('catalog')}>Explorar provas <ArrowRight size={18} /></button>
              <button className="button secondary hero-button" onClick={openSimulado}><Sparkles size={17} /> Crie seu simulado</button>
            </div>
            <div className="hero-proof"><div className="avatars"><span>J</span><span>M</span><span>A</span><span>+</span></div><span>Junte-se a quem está estudando hoje</span></div>
          </div>
          <div className="hero-visual">
            <div className="orb orb-one" /><div className="orb orb-two" />
            <div className="floating-card card-top"><Target size={18} /><div><b>Foco no progresso</b><small>Um passo de cada vez</small></div></div>
            <div className="study-card"><div className="study-card-top"><span className="mini-logo">P</span><span>Seu desempenho</span><MoreDots /></div><div className="chart"><span className="chart-label">APROVEITAMENTO</span><strong>76<span>%</span></strong><div className="chart-bars">{[38, 55, 47, 70, 62, 84, 76].map((height, i) => <i key={i} style={{ height: `${height}%` }} className={i === 6 ? 'highlight' : ''} />)}</div><div className="chart-days"><span>SEG</span><span>TER</span><span>QUA</span><span>QUI</span><span>SEX</span><span>SÁB</span><span>HOJ</span></div></div></div>
            <div className="floating-card card-bottom"><div className="mini-check"><Check size={15} /></div><div><b>Meta alcançada!</b><small>+12% esta semana</small></div></div>
          </div>
        </section>
        <section className="essay-entry"><div><p className="eyebrow">Pratique também sua escrita</p><h2>Uma redação melhor começa na revisão.</h2><p>Escreva, confira as repetições e monte seu plano de reescrita com uma autoavaliação guiada.</p></div><button className="button primary" onClick={() => { setScreen('essay'); setMenuOpen(false) }}>Praticar redação <ArrowRight size={17} /></button></section>
        <section className="trust-row"><div><BookOpen size={18} /><span>Conteúdo selecionado<br /><b>por especialistas</b></span></div><div><GraduationCap size={20} /><span>Prepare-se para<br /><b>o seu futuro</b></span></div><div><Sparkles size={18} /><span>Estude no seu<br /><b>próprio ritmo</b></span></div></section>
        <section className="exams-section" id="provas">
          <div className="section-heading"><div><p className="eyebrow">Escolha seu desafio</p><h2>Provas em destaque</h2></div><button className="view-all" onClick={() => setScreen('catalog')}><LayoutGrid size={17} /> Todas as provas</button></div>
          <div className="exam-cards">
            {cnuCard}
            {enemCard}
          </div>
        </section>
        <section className="about-section" id="sobre">
          <div className="section-heading"><div><p className="eyebrow">Sobre nós</p><h2>O que é o Provacerta</h2></div></div>
          <div className="about-grid">
            <div className="about-lead">
              <p>O provacerta é uma plataforma de estudos feita para quem se prepara para concursos, vestibulares e exames. Reunimos provas reais, organizadas por banca, ano e cargo, para que você treine exatamente no formato que vai encontrar no dia da prova.</p>
              <p>Além das provas completas, você pode montar simulados personalizados, escolhendo o grau de ensino, as matérias e a quantidade de questões. Ao final, acompanhe seu desempenho e revise cada questão com explicações que mostram o caminho até a resposta correta.</p>
              <p>Nosso objetivo é simples: transformar a prática em aprovação, com conteúdo fiel às provas originais e uma experiência de estudo leve, focada e no seu ritmo.</p>
            </div>
            <ul className="about-points">
              <li><BookOpen size={18} /><div><b>Provas reais</b><small>Concursos, vestibulares e exames transcritos fielmente, com gabarito oficial.</small></div></li>
              <li><Sparkles size={18} /><div><b>Simulados sob medida</b><small>Monte sua prova por grau de ensino, matérias e número de questões.</small></div></li>
              <li><Target size={18} /><div><b>Revisão com explicações</b><small>Entenda por que cada alternativa está certa e evolua a cada tentativa.</small></div></li>
              <li><GraduationCap size={18} /><div><b>No seu ritmo</b><small>Estude quando e quanto quiser, acompanhando seu progresso.</small></div></li>
            </ul>
          </div>
        </section>
        <section className="bottom-quote"><span className="quote-mark">“</span><p>Grandes resultados começam<br />com pequenas escolhas diárias.</p><span className="quote-line" /></section>
      </main>
      <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
    </div>
  )
}

function Header({ onHome, onSimulado, onCatalog, onAbout, onEssay, menuOpen, setMenuOpen }) {
  const handleSimulado = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onSimulado?.()
  }
  const handleCatalog = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onCatalog?.()
  }
  const handleEssay = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onEssay?.()
  }
  const handleAbout = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onAbout?.()
  }
  return <header><button className="brand" onClick={onHome}><span className="brand-mark">P</span> prova<span>certa</span></button><nav className={menuOpen ? 'open' : ''}><a href="#provas" onClick={handleCatalog}>Provas</a><a href="#simulado" className="nav-cta" onClick={handleSimulado}>Crie seu simulado</a><a href="#redacao" onClick={handleEssay}>Praticar redação</a><a href="#sobre" onClick={handleAbout}>Sobre nós</a></nav><button className="menu-button" onClick={() => setMenuOpen?.(!menuOpen)}><Menu size={22} /></button></header>
}

function EnemCard({ catalog, year, setYear, discipline, setDiscipline, language, setLanguage, onStart, loading, error }) {
  const exam = catalog.find((item) => String(item.year) === year)
  const isSupabaseExam = exam?.source === 'supabase'
  const disciplines = exam?.disciplines || []
  const languages = exam?.languages || []
  return (
    <article className="exam-card enem">
      <div className="card-art"><span className="art-kicker">BRASIL</span><strong>ENEM</strong><span className="art-shape">ENEM</span><div className="art-dots" /></div>
      <div className="exam-card-body">
        <div className="card-title-row"><div><h3>ENEM</h3><p>Exame Nacional do Ensino Médio</p></div><span className={`status ${catalog.length ? 'ready' : ''}`}>{catalog.length ? 'API conectada' : 'Carregando'}</span></div>
        <div className="enem-controls">
          <label>Ano da prova <span className="select-wrap"><select value={year} onChange={(event) => setYear(event.target.value)} disabled={!catalog.length}>{catalog.map((item) => <option key={item.year} value={item.year}>{item.source === 'supabase' ? `${item.year} (prova completa)` : item.year}</option>)}</select><ChevronDown size={16} /></span></label>
          {!isSupabaseExam && <label>Área <span className="select-wrap"><select value={discipline} onChange={(event) => setDiscipline(event.target.value)} disabled={!disciplines.length}>{disciplines.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>}
          {!isSupabaseExam && discipline === 'linguagens' && <label>Idioma <span className="select-wrap"><select value={language} onChange={(event) => setLanguage(event.target.value)} disabled={!languages.length}>{languages.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>}
          {isSupabaseExam && <p className="enem-note">Prova completa (180 questões), com todas as áreas.</p>}
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${catalog.length && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!catalog.length || loading}>{loading ? 'Carregando questões…' : 'Começar prova'} {!loading && catalog.length > 0 && <ArrowRight size={17} />}</button>
      </div>
    </article>
  )
}

function ExamCard({ type, title, description, series, currentSeries, onSeriesChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className={`exam-card ${type}`}>
      <div className="card-art">
        <span className="art-kicker">{type === 'pism' ? 'UFJF' : 'BRASIL'}</span>
        <strong>{title}</strong>
        <span className="art-shape">{type === 'pism' ? 'PISM' : 'ENEM'}</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>{title}</h3>
            <p>{description}</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{pismSelectionLabel(item)}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Série
            <span className="select-wrap">
              <select value={currentSeries} onChange={(event) => onSeriesChange(event.target.value)}>
                {Object.entries(series || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function BbCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-gold">
      <div className="card-art">
        <span className="art-kicker">BANCÁRIO</span>
        <strong>BB</strong>
        <span className="art-shape">BB</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Banco do Brasil</h3>
            <p>Concurso do Banco do Brasil</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function PmerjCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-navy">
      <div className="card-art">
        <span className="art-kicker">SEGURAÇA</span>
        <strong className="long">PMERJ</strong>
        <span className="art-shape">PMERJ</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>PMERJ</h3>
            <p>Polícia Militar do Estado do Rio de Janeiro</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function CorreiosCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-amber">
      <div className="card-art">
        <span className="art-kicker">SERVIÇOS</span>
        <strong>CORREIOS</strong>
        <span className="art-shape">ECT</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Correios</h3>
            <p>Agente de Correios - Carteiro</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>) : <option value="">Nenhum ano disponível</option>}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => <option key={key} value={key}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function InssCard({ onStart, loading, error }) {
  return (
    <article className="exam-card color-sky">
      <div className="card-art">
        <span className="art-kicker">PREVIDÊNCIA SOCIAL</span>
        <strong>INSS</strong>
        <span className="art-shape">INSS</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>INSS</h3>
            <p>Técnico do Seguro Social · 120 itens</p>
          </div>
          <span className="status ready">Disponível</span>
        </div>
        <div className="pism-controls">
          <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova do INSS" defaultValue="2022"><option value="2022">2022</option></select><ChevronDown size={16} /></span></label>
          <label>Cargo<span className="select-wrap"><select aria-label="Cargo do INSS" defaultValue="tecnico"><option value="tecnico">Técnico do Seguro Social</option></select><ChevronDown size={16} /></span></label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${!loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={loading}>
          {loading ? 'Carregando questões…' : 'Começar prova'} {!loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function CaixaCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-sky">
      <div className="card-art">
        <span className="art-kicker">BANCÁRIO</span>
        <strong>CAIXA</strong>
        <span className="art-shape">CAIXA</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Caixa Econômica Federal</h3>
            <p>Concurso Técnico Bancário Novo</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>) : <option value="">Nenhum ano disponível</option>}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {Object.entries(roles || {}).map(([key, item]) => <option key={key} value={key}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function PcCard({ states, state, onStateChange, roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error }) {
  // Mostra no seletor apenas cargos que tenham ao menos uma prova cadastrada
  // (algum ano com slug). Cargos sem prova ficam ocultos.
  const availableRoles = Object.entries(roles || {}).filter(
    ([, item]) => (item.years || []).some((entry) => entry.slug),
  )
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">SEGURANÇA</span>
        <strong>PC</strong>
        <span className="art-shape">PC</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Polícia Civil</h3>
            <p>Concurso da Polícia Civil</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Estado
            <span className="select-wrap">
              <select value={state} onChange={(event) => onStateChange(event.target.value)}>
                {states.map((item) => <option key={item} value={item}>{item}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)} disabled={availableRoles.length === 0}>
                {availableRoles.length > 0 ? (
                  availableRoles.map(([key, item]) => (
                    <option key={key} value={key}>{item.label}</option>
                  ))
                ) : (
                  <option value="">Nenhum cargo disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function PfCard({ roles, role, onRoleChange, areas, area, onAreaChange, years, year, setYear, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-slate">
      <div className="card-art">
        <span className="art-kicker">SEGURANÇA</span>
        <strong className="long">PF</strong>
        <span className="art-shape">PF</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>Polícia Federal</h3>
            <p>Concurso da Polícia Federal</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Cargo
            <span className="select-wrap">
              <select value={role} onChange={(event) => onRoleChange(event.target.value)}>
                {roles.map((item) => <option key={item} value={item}>{item}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Área
            <span className="select-wrap">
              <select value={area} onChange={(event) => onAreaChange(event.target.value)}>
                {areas.map((item) => <option key={item.value} value={item.value}>{item.value}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function CnuCard({ yearOptions, yearOption, onYearOptionChange, levels, level, onLevelChange, blocks, block, setBlock, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-teal">
      <div className="card-art">
        <span className="art-kicker">CONCURSO NACIONAL</span>
        <strong>CNU</strong>
        <span className="art-shape">CNU</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>CNU</h3>
            <p>Concurso Público Nacional Unificado</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={yearOption} onChange={(event) => onYearOptionChange(event.target.value)}>
                {yearOptions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Nível
            <span className="select-wrap">
              <select value={level} onChange={(event) => onLevelChange(event.target.value)}>
                {Object.entries(levels || {}).map(([key, item]) => (
                  <option key={key} value={key}>{item.label}</option>
                ))}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Bloco
            <span className="select-wrap">
              <select value={block} onChange={(event) => setBlock(event.target.value)} disabled={blocks.length === 0}>
                {blocks.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function OabCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">ORDEM DO ADVOGADOS</span>
        <strong>OAB</strong>
        <span className="art-shape">OAB</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>OAB</h3>
            <p>Exame de Ordem Unificado (1ª fase)</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Edição do exame
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function UerjCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-teal">
      <div className="card-art">
        <span className="art-kicker">RIO DE JANEIRO</span>
        <strong>UERJ</strong>
        <span className="art-shape">UERJ</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>UERJ</h3>
            <p>Vestibular Estadual</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Edição
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function UspCard({ years, year, setYear, editions, edition, setEdition, onStart, available, loading, error }) {
  return (
    <article className="exam-card color-crimson">
      <div className="card-art">
        <span className="art-kicker">FUVEST · SÃO PAULO</span>
        <strong>USP</strong>
        <span className="art-shape">USP</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>USP</h3>
            <p>Universidade de São Paulo (FUVEST)</p>
          </div>
          <span className={`status ${available ? 'ready' : ''}`}>{available ? 'Disponível' : 'Em breve'}</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
                ) : (
                  <option value="">Nenhum ano disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          <label>
            Prova
            <span className="select-wrap">
              <select value={edition} onChange={(event) => setEdition(event.target.value)} disabled={editions.length === 0}>
                {editions.length > 0 ? (
                  editions.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)
                ) : (
                  <option value="">Nenhuma prova disponível</option>
                )}
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
        </div>
        {error && <p className="api-error" role="alert">{error}</p>}
        <button className={`button ${available && !loading ? 'primary' : 'disabled'} full`} onClick={onStart} disabled={!available || loading}>
          {loading ? 'Carregando questões…' : available ? 'Começar prova' : 'Em breve'} {available && !loading && <ArrowRight size={17} />}
        </button>
      </div>
    </article>
  )
}

function UpcomingCard({ exam }) {
  return (
    <article className={`exam-card upcoming color-${exam.color}`}>
      <div className="card-art">
        <span className="art-kicker">{exam.org}</span>
        <strong className={exam.short?.length >= 7 ? 'long' : ''}>{exam.short}</strong>
        <span className="art-shape">{exam.short}</span>
        <div className="art-dots" />
      </div>
      <div className="exam-card-body">
        <div className="card-title-row">
          <div>
            <h3>{exam.name}</h3>
            <p>{exam.description}</p>
          </div>
          <span className="status">Em breve</span>
        </div>
        <div className="pism-controls">
          <label>
            Ano da prova
            <span className="select-wrap">
              <select disabled>
                <option value="">Em breve</option>
              </select>
              <ChevronDown size={16} />
            </span>
          </label>
          {exam.roles?.length > 0 && (
            <label>
              Cargo
              <span className="select-wrap">
                <select disabled>
                  {exam.roles.map((role) => <option key={role} value={role}>{role}</option>)}
                </select>
                <ChevronDown size={16} />
              </span>
            </label>
          )}
        </div>
        <button className="button disabled full" disabled>Em breve</button>
      </div>
    </article>
  )
}

function MoreDots() { return <span className="more-dots"><i /><i /><i /></span> }

createRoot(document.getElementById('root')).render(<App />)
