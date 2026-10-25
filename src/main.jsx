import ExamTools from './ExamTools'
import { militaryQuestionMedia, militaryOfficialSource } from './lib/militaryExams'
import { pmerjRolesConfig, pmerjOfficialSource } from './lib/pmerjExams'
import React, { useEffect, useMemo, useState, useRef } from 'react'
import { createRoot } from 'react-dom/client'
import {
  ArrowLeft, ArrowRight, Award, BookOpen, Check, ChevronDown, ChevronUp, Clock3,
  GraduationCap, LayoutGrid, Menu, RotateCcw, Sparkles, Target, X,
  ZoomIn, ZoomOut, Volume2, Square, Search, Moon, Sun,
} from 'lucide-react'
import './styles.css'
import { supabase } from './lib/supabase'
import { supportImageUrls } from './lib/safeUrls'
import { isCorrectAnswer, isAnnulledAnswer } from './lib/examAnswers'
import { inssOfficialSource } from './lib/inssSources'
import { inssYears, inssExamsByYear, inssExamFor, inssExamFromSlug } from './lib/inssExams'
import { correiosOfficialSource } from './lib/correiosSources'
import { fuvestOfficialSource } from './lib/fuvestSources'
import { enemExams, enemAreas, enemHasLanguage, selectEnemQuestions, enemOfficialSource } from './lib/enemExams'
import { cebraspeScore, isBinaryQuestion, binaryAnswerLabel } from './lib/cebraspeScore'
import { pismOfficialSource, pismExamDetails, pismSelectionLabel } from './lib/pismSources'

import { AuthProvider, useAuth, AccountControl } from './Auth'
import StudyAccount, { SaveResult } from './StudyAccount'
import ExamPicker, { ExamProgressProvider, CatalogFilters } from './ExamPicker'
import ExamSetup from './ExamSetup'
import MilitaryExamCard from './MilitaryExamCard'
import EfommExamCard from './EfommExamCard'
import EbserhExamCard from './EbserhExamCard'
import { EBSERH_SLUGS, loadEbserhExam } from './lib/ebserhExam'
import { EFOMM_SLUGS, loadEfommExam } from './lib/efommExam'
import SimuladoSubjectPicker from './SimuladoSubjectPicker'
import ItaExamCard from './ItaExamCard'
import { ITA_SLUG, loadItaExam } from './lib/itaExam'
import BombeirosExamCard from './BombeirosExamCard'
import UerjDiscursive from './UerjDiscursive'
import { uerjDiscursiveExams } from './lib/uerjDiscursive'
import { uerjObjectiveSource } from './lib/uerjObjectiveSources'
import { uerjObjectiveMedia } from './lib/uerjObjectiveMedia'
import { bombeirosOfficialSource } from './lib/bombeirosExams'
import { EnemCard, ExamCard, BbCard, PmerjCard, CorreiosCard, InssCard, CaixaCard, PcCard, PfCard, CnuCard, OabCard, UerjCard, UspCard, UpcomingCard } from './ExamCards'
import './studyHub.css'
import { remainingSeconds, formatDuration, reportContext } from './lib/examSession'
import { readExamDraft, writeExamDraft } from './lib/examDraft'
import { usePageState } from './lib/pageState'
const QuestionReport = React.lazy(() => import('./QuestionReport'))
const ItaDiscursive = React.lazy(() => import('./ItaDiscursive'))

const EssayPractice = React.lazy(() => import('./EssayPractice'))
const StudyHub = React.lazy(() => import('./StudyHub'))

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
      { id: 'ita', name: 'ITA', org: 'AERONÁUTICA · São Paulo', short: 'ITA', description: 'Instituto Tecnológico de Aeronáutica · Vestibular', available: true, color: 'navy' },
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
      { id: 'ebserh', name: 'EBSERH', org: 'SAÚDE · HOSPITAIS UNIVERSITÁRIOS', short: 'EBSERH', description: 'Concurso para Empresa Brasileira de Serviços Hospitalares', available: true, color: 'teal', roles: ['Farmacêutico'] },
      { id: 'efomm', name: 'EFOMM', org: 'MARINHA MERCANTE · CIAGA / CIABA', short: 'EFOMM', description: 'Escola de Formação de Oficiais da Marinha Mercante', available: true, color: 'navy' },
      { id: 'esa', name: 'ESA', org: 'EXÉRCITO BRASILEIRO', short: 'ESA', description: 'Escola de Sargentos das Armas', available: true, color: 'olive', roles: ['Geral / Aviação', 'Música', 'Saúde'] },
      { id: 'espcex', name: 'EsPCEx', org: 'EXÉRCITO BRASILEIRO', short: 'EsPCEx', description: 'Escola Preparatória de Cadetes do Exército', available: true, color: 'olive', roles: ['Cadete'] },
      { id: 'cbmerj', name: 'Bombeiro Militar', org: 'CORPO DE BOMBEIROS · RJ', short: 'CBMERJ', description: 'Corpo de Bombeiros Militar do Estado do Rio de Janeiro · CFO', available: true, color: 'crimson', roles: ['Oficial'] },
      { id: 'pmrj', name: 'PMERJ', org: 'Segurança', short: 'PMERJ', description: 'Polícia Militar do Estado do Rio de Janeiro', available: true, color: 'navy', roles: ['Soldado', 'Oficial'] },
      { id: 'bb', name: 'Banco do Brasil', org: 'Bancário', short: 'BB', description: 'Concurso do Banco do Brasil', available: false, color: 'gold', roles: ['Escriturário - Agente Comercial', 'Escriturário - Agente de Tecnologia'] },
      { id: 'inss', name: 'INSS', org: 'PREVIDÊNCIA SOCIAL', short: 'INSS', description: 'Concurso do Instituto Nacional do Seguro Social', available: true, color: 'sky', roles: ['Técnico do Seguro Social', 'Analista do Seguro Social'] },
      { id: 'caixa', name: 'Caixa Econômica', org: 'BANCÁRIO', short: 'CAIXA', description: 'Concurso da Caixa Econômica Federal', available: true, color: 'sky', roles: ['Técnico Bancário Novo'] },
      { id: 'pf', name: 'Polícia Federal', org: 'Segurança', short: 'PF', description: 'Concurso da Polícia Federal', available: true, color: 'slate', roles: ['Agente', 'Escrivão', 'Delegado', 'Perito Criminal'] },
      { id: 'correios', name: 'Correios', org: 'SERVIÇOS', short: 'CORREIOS', description: 'Concurso dos Correios', available: true, color: 'amber', roles: ['Carteiro', 'Atendente Comercial', 'Operador de Triagem e Transbordo'] },
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
// Concurso dos Correios, organizado por cargo e ano da prova.
const correiosRolesConfig = {
  Carteiro: {
    label: 'Agente de Correios - Carteiro',
    years: [
      { value: '2024', slug: 'correios-2024-carteiro' },
      { value: '2011', slug: 'correios-2011-carteiro' },
    ],
  },
  'atendente-comercial': {
    label: 'Agente de Correios - Atendente Comercial',
    years: [{ value: '2011', slug: 'correios-2011-atendente-comercial' }],
  },
  'operador-triagem': {
    label: 'Agente de Correios - Operador de Triagem e Transbordo',
    years: [{ value: '2011', slug: 'correios-2011-operador-triagem' }],
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
  '2026': [
    { value: 'eq2', label: '2º Exame de Qualificação', slug: 'uerj-2026-eq2' },
    { value: 'ed-biologia', label: 'Exame discursivo - Biologia', discursive: true },
  ],
  '2014': [
    { value: 'ed-biologia', label: 'Exame discursivo - Biologia', discursive: true },
  ],
  '2025': [
    { value: 'eq2', label: 'Exame de Qualificação', slug: 'uerj-2025-eq2' },
    { value: 'ed-biologia', label: 'Exame discursivo - Biologia', discursive: true },
  ],
}
const uerjYearOptions = Object.keys(uerjExamsByYear).sort((a, b) => b.localeCompare(a))

// Vestibular da USP (FUVEST), organizado por ano > prova/fase.
// Cada edição aponta para o slug da prova cadastrada no Supabase (quando houver).
const uspExamsByYear = {
  '2025': [
    { value: 'v1', label: '1ª fase - Conhecimentos Gerais', slug: 'usp-2025-v1' },
  ],
  '2026': [
    { value: 'v1', label: '1ª fase - Conhecimentos Gerais', slug: 'usp-2026-v1' },
  ],
}
const uspYearOptions = Object.keys(uspExamsByYear).sort((a, b) => b.localeCompare(a))

// Renderiza uma ou mais imagens de apoio. O campo support_image pode conter
// varios caminhos separados por virgula; cada um vira uma <img> clicavel.
function renderSupportImages(supportImage, questionNumber) {
  if (!supportImage) return null
  const sources = supportImageUrls(supportImage)
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
  if (source === 'enem' || source === 'inss' || source === 'esa' || source === 'espcex' || source === 'cbmerj') return 'medio'
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
  const { user } = useAuth()
  const [restoredDraft] = useState(() => {
    try { return readExamDraft(window.sessionStorage) } catch { return null }
  })
  const [draftSaveFailed, setDraftSaveFailed] = useState(false)
  const [accountTab, setAccountTab] = usePageState('app.accountTab', 'history')
  const openAccount = (tab) => { setAccountTab(tab); setScreen('account'); setMenuOpen(false) }
  const [savedScreen, setSavedScreen] = usePageState('screen', 'home', value => ['home', 'catalog', 'study', 'essay', 'simulado', 'account', 'uerj-discursive', 'ita-discursive'].includes(value))
  const [screen, setScreen] = useState(restoredDraft?.screen || savedScreen)
  const [discursiveYear, setDiscursiveYear] = usePageState('uerj.discursive.year', '2014', value => Boolean(uerjDiscursiveExams[value]))
  useEffect(() => { setSavedScreen(screen) }, [screen])
  const [studyTab, setStudyTab] = usePageState('app.studyTab', 'questions')
  const [studyPracticeTitle, setStudyPracticeTitle] = useState(restoredDraft?.label || 'Estudo por assunto')
  const openStudy = () => { setScreen('study'); setMenuOpen(false) }
  const startStudy = (questions, title) => {
    setEnemQuestions(questions)
    setSupabaseExamSlug('study')
    setSelectedExam('study')
    setStudyPracticeTitle(title)
    setCurrent(0)
    setAnswers({})
    setScreen('exam-setup')
    setMenuOpen(false)
  }
  const [session, setSession] = useState(restoredDraft?.session || null)
  const [timeLeft, setTimeLeft] = useState(() => restoredDraft?.session.deadline ? remainingSeconds(restoredDraft.session.deadline) : 0)
  const [report, setReport] = useState(null)
  const finishGuard = useRef(Boolean(restoredDraft?.session.endedAt))
  const [selectedExam, setSelectedExam] = useState(restoredDraft?.selectedExam || null)
  const [supportScale, setSupportScale] = useState(restoredDraft?.supportScale || 1)
  const [speakingId, setSpeakingId] = useState(null)
  const [lightboxImage, setLightboxImage] = useState(null)
  const [catalogSearch, setCatalogSearch] = usePageState('app.catalogSearch', '')
  const [catalogCategory, setCatalogCategory] = usePageState('app.catalogCategory', 'todas')
  const [pismSeries, setPismSeries] = usePageState('app.pismSeries', '1 ano')
  const [year, setYear] = usePageState('app.year', '2025-1')
  const [bbRole, setBbRole] = usePageState('app.bbRole', 'Escriturário - Agente Comercial')
  const [bbYear, setBbYear] = usePageState('app.bbYear', '2022')
  const [bbLoading, setBbLoading] = useState(false)
  const [bbError, setBbError] = useState('')
  const [pmerjRole, setPmerjRole] = usePageState('app.pmerjRole', 'Soldado')
  const [pmerjYear, setPmerjYear] = usePageState('app.pmerjYear', '2024')
  const [pmerjLoading, setPmerjLoading] = useState(false)
  const [pmerjError, setPmerjError] = useState('')
  const [correiosRole, setCorreiosRole] = usePageState('app.correiosRole', 'Carteiro')
  const [correiosYear, setCorreiosYear] = usePageState('app.correiosYear', '2024')
  const [correiosLoading, setCorreiosLoading] = useState(false)
  const [correiosError, setCorreiosError] = useState('')
  const [militaryLoading, setMilitaryLoading] = useState('')
  const [militaryError, setMilitaryError] = useState({})
  const [inssLoading, setInssLoading] = useState(false)
  const [inssYear, setInssYear] = usePageState('app.inssYear', '2022')
  const [inssRole, setInssRole] = usePageState('app.inssRole', 'tecnico')
  const inssSelection = inssExamFor(inssYear, inssRole) || inssExamsByYear[inssYear]?.[0]
  const [inssError, setInssError] = useState('')
  const [caixaRole, setCaixaRole] = usePageState('app.caixaRole', 'tecnico')
  const [caixaYear, setCaixaYear] = usePageState('app.caixaYear', '2024')
  const [caixaLoading, setCaixaLoading] = useState(false)
  const [caixaError, setCaixaError] = useState('')
  const [pcState, setPcState] = usePageState('app.pcState', 'Rio de Janeiro')
  const [pcRole, setPcRole] = usePageState('app.pcRole', 'Investigador')
  const [pcYear, setPcYear] = usePageState('app.pcYear', '2022')
  const [pcLoading, setPcLoading] = useState(false)
  const [pcError, setPcError] = useState('')
  const [pfRole, setPfRole] = usePageState('app.pfRole', 'Perito Criminal Federal')
  const [pfArea, setPfArea] = usePageState('app.pfArea', 'Conhecimento Básico')
  const [pfYear, setPfYear] = usePageState('app.pfYear', '2025')
  const [pfLoading, setPfLoading] = useState(false)
  const [pfError, setPfError] = useState('')
  const [cnuYear, setCnuYear] = usePageState('app.cnuYear', '2025')
  const [cnuLevel, setCnuLevel] = usePageState('app.cnuLevel', 'superior')
  const [cnuBlock, setCnuBlock] = usePageState('app.cnuBlock', 'bloco-1')
  const [cnuShift, setCnuShift] = usePageState('app.cnuShift', 'tarde')
  const [oabYear, setOabYear] = usePageState('app.oabYear', oabYearOptions[0] || '')
  const [oabEdition, setOabEdition] = usePageState('app.oabEdition', oabExamsByYear[oabYearOptions[0]]?.[0]?.value || '')
  const [oabLoading, setOabLoading] = useState(false)
  const [oabError, setOabError] = useState('')
  const [uerjYear, setUerjYear] = usePageState('app.uerjYear', uerjYearOptions[0] || '')
  const [uerjEdition, setUerjEdition] = usePageState('app.uerjEdition', uerjExamsByYear[uerjYearOptions[0]]?.[0]?.value || '')
  const [uerjLoading, setUerjLoading] = useState(false)
  const [uerjError, setUerjError] = useState('')
  const [uspYear, setUspYear] = usePageState('app.uspYear', uspYearOptions[0] || '')
  const [uspEdition, setUspEdition] = usePageState('app.uspEdition', uspExamsByYear[uspYearOptions[0]]?.[0]?.value || '')
  const [uspLoading, setUspLoading] = useState(false)
  const [uspError, setUspError] = useState('')
  const [cnuLoading, setCnuLoading] = useState(false)
  const [cnuError, setCnuError] = useState('')
  // Estado do gerador de simulado personalizado.
  const [simuladoLevel, setSimuladoLevel] = usePageState('app.simuladoLevel', 'medio')
  const [simuladoSubjects, setSimuladoSubjects] = useState({}) // { medio: [...], superior: [...] }
  const [simuladoSelected, setSimuladoSelected] = usePageState('app.simuladoSelected', []) // materias marcadas
  const [simuladoCount, setSimuladoCount] = usePageState('app.simuladoCount', 10)
  const [simuladoCatalogLoading, setSimuladoCatalogLoading] = useState(false)
  const [simuladoLoading, setSimuladoLoading] = useState(false)
  const [simuladoError, setSimuladoError] = useState('')
  const [enemYear, setEnemYear] = usePageState('app.enemYear', '2025')
  const [enemDiscipline, setEnemDiscipline] = usePageState('app.enemDiscipline', 'completa')
  const [enemLanguage, setEnemLanguage] = usePageState('app.enemLanguage', 'ingles')
  const [enemQuestions, setEnemQuestions] = useState(restoredDraft?.questions || [])
  useEffect(() => {
    // Upgrade sessions opened during the image-based import without losing answers.
    if (selectedExam !== 'ita' || !enemQuestions.some(question => question.questionImage)) return
    let alive = true
    loadItaExam().then(questions => {
      if (alive) {
        supabaseExamCache.set(ITA_SLUG, questions)
        setEnemQuestions(questions)
      }
    }).catch(error => {
      if (alive) setMilitaryError(previous => ({ ...previous, ita: error.message }))
    })
    return () => { alive = false }
  }, [selectedExam, enemQuestions])
  const [enemLoading, setEnemLoading] = useState(false)
  const [enemError, setEnemError] = useState('')
  const [current, setCurrent] = useState(restoredDraft?.current || 0)
  const [answers, setAnswers] = useState(restoredDraft?.answers || {})
  const [menuOpen, setMenuOpen] = useState(false)
  const [voices, setVoices] = useState([])
  const [gridExpanded, setGridExpanded] = useState(false)
  const [pismLoading, setPismLoading] = useState(false)
  const [supabaseExamSlug, setSupabaseExamSlug] = useState(restoredDraft ? restoredDraft.supabaseExamSlug || 'restored-local' : null)
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

  const questionSets = {
    'enem-2023-1-ingles': [...enem2023EnglishQuestions, ...enem2023SpanishQuestions],
  }
  const enemCatalogCombined = enemExams
  const activeQuestions = selectedExam === 'enem' || supabaseExamSlug ? enemQuestions : questionSets[selectedExam] || []
  const pismExam = pismExamDetails(supabaseExamSlug)
  const inssBinary = selectedExam === 'inss' && activeQuestions.length > 0 && activeQuestions.every(isBinaryQuestion)
  const isRestoredSession = restoredDraft && session?.id === restoredDraft.session.id && selectedExam === restoredDraft.selectedExam && enemQuestions === restoredDraft.questions
  const examLabel = isRestoredSession ? restoredDraft.label : ['esa', 'espcex', 'cbmerj', 'ita', 'efomm', 'ebserh'].includes(selectedExam) ? activeQuestions[0]?.examTitle || selectedExam.toUpperCase() : selectedExam === 'study' ? studyPracticeTitle : selectedExam === 'inss' ? inssExamFromSlug(supabaseExamSlug)?.title || activeQuestions[0]?.examTitle || 'INSS' : pismExam ? String(pismExam.year) : selectedExam === 'usp' ? `USP ${uspYear} · FUVEST` : selectedExam === 'uerj' ? `UERJ ${uerjYear} · ${(uerjExamsByYear[uerjYear] || []).find((item) => item.value === uerjEdition)?.label || ''}` : selectedExam === 'simulado' ? `Simulado · ${simuladoLevels.find((item) => item.value === simuladoLevel)?.label || 'Personalizado'}` : selectedExam === 'pism-1' ? '2025-1' : selectedExam === 'pism-2' ? '2025-2' : selectedExam === 'pism-2024-1' ? '2024-1' : selectedExam === 'pism-2024-2' ? '2024-2' : selectedExam === 'pism-2023-1' ? '2023-1' : selectedExam === 'pism-2023-2' ? '2023-2' : selectedExam === 'enem' ? `ENEM ${enemYear}` : selectedExam === 'bb' ? `Banco do Brasil ${bbYear} · ${bbRole}` : selectedExam === 'cnu' ? `CNU ${cnuYear} · Bloco ${cnuBlock.replace('bloco-', '')}` : selectedExam === 'oab' ? `OAB ${oabYear} · ${(oabExamsByYear[oabYear] || []).find((item) => item.value === oabEdition)?.label || 'Exame de Ordem'}` : selectedExam === 'pmerj' ? `PMERJ ${pmerjYear} · ${pmerjRolesConfig[pmerjRole]?.label || 'Soldado'}` : selectedExam === 'correios' ? `Correios ${correiosYear} · ${correiosRolesConfig[correiosRole]?.label || 'Carteiro'}` : selectedExam === 'caixa' ? `CAIXA ${caixaYear} · ${caixaRolesConfig[caixaRole]?.label || 'Técnico Bancário Novo'}` : selectedExam === 'pc' ? `Polícia Civil ${pcState} ${pcYear} · ${pcByState[pcState]?.roles?.[pcRole]?.label || 'Investigador'}` : selectedExam === 'pf' ? `Polícia Federal ${pfYear} · ${pfRole} · ${pfArea}` : '2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS'
  // Tela de "início" para onde os botões de voltar da prova/resultado devem retornar:
  // simulados voltam para a tela de simulado; as demais provas, para o catálogo (todas as provas).
  const examHomeScreen = selectedExam === 'study' ? 'study' : selectedExam === 'simulado' ? 'simulado' : 'catalog'
  const cnuShiftLabel = cnuYear === '2025' ? 'Conhecimentos Gerais e Específicos' : cnuShift === 'manha' ? 'Manhã · Conhecimentos Gerais' : 'Tarde · Conhecimentos Específicos'
  const examDay = isRestoredSession ? restoredDraft.day : selectedExam === 'study' ? `Prática por assunto · ${activeQuestions.length} questões` : selectedExam === 'inss' ? `Prova objetiva · ${activeQuestions.length} ${inssBinary ? 'itens (Certo/Errado)' : 'questões (múltipla escolha)'}` : selectedExam === 'usp' || selectedExam === 'uerj' || selectedExam === 'esa' || selectedExam === 'espcex' || selectedExam === 'cbmerj' || selectedExam === 'ita' || selectedExam === 'efomm' || selectedExam === 'ebserh' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'simulado' ? `Simulado personalizado · ${activeQuestions.length} questões` : selectedExam === 'enem' ? (enemAreas.find(item => item.value === enemDiscipline)?.label + (enemHasLanguage(enemDiscipline) ? ' · ' + (enemLanguage === 'espanhol' ? 'Espanhol' : 'Inglês') : '')) : selectedExam === 'bb' ? 'Prova objetiva' : selectedExam === 'oab' ? 'Prova objetiva · 1ª fase' : selectedExam === 'pmerj' || selectedExam === 'correios' || selectedExam === 'caixa' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'pc' ? `Prova objetiva · ${activeQuestions.length} questões` : selectedExam === 'pf' ? 'Conhecimentos Básicos · 50 itens (Certo/Errado)' : selectedExam === 'cnu' ? cnuShiftLabel : pismExam ? `${pismExam.day}º dia` : examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'

  useEffect(() => {
    let saved = false
    try {
      saved = writeExamDraft(window.sessionStorage, {
        screen, selectedExam, supabaseExamSlug, questions: activeQuestions,
        session, current, answers, label: examLabel, day: examDay, supportScale,
      })
    } catch { /* Navegadores podem bloquear o armazenamento desta aba. */ }
    setDraftSaveFailed(!saved && screen === 'exam')
  }, [screen, selectedExam, supabaseExamSlug, enemQuestions, session, current, answers, examLabel, examDay, supportScale])

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
    setSession({ id: crypto.randomUUID(), ownerId: user?.id || null, startedAt, deadline, reason: null, endedAt: null })
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
    if (EBSERH_SLUGS.has(supabaseSlug)) {
      if (!supabaseExamCache.has(supabaseSlug)) supabaseExamCache.set(supabaseSlug, await loadEbserhExam(supabaseSlug))
      return supabaseExamCache.get(supabaseSlug)
    }
    if (EFOMM_SLUGS.has(supabaseSlug)) {
      if (!supabaseExamCache.has(supabaseSlug)) supabaseExamCache.set(supabaseSlug, await loadEfommExam(supabaseSlug))
      return supabaseExamCache.get(supabaseSlug)
    }
    if (supabaseSlug === ITA_SLUG) {
      if (!supabaseExamCache.has(ITA_SLUG)) supabaseExamCache.set(ITA_SLUG, await loadItaExam())
      return supabaseExamCache.get(ITA_SLUG)
    }
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
      ...militaryQuestionMedia(question.support_image),
      ...uerjObjectiveMedia(supabaseSlug, question.number, question.support),
      options: question.options,
      answer: question.answer,
      explanation: question.explanation,
      sourceUrl: uerjObjectiveSource(supabaseSlug, question.number) || bombeirosOfficialSource(supabaseSlug, question.number) || militaryOfficialSource(supabaseSlug) || pmerjOfficialSource(supabaseSlug, question.number) || correiosOfficialSource(supabaseSlug, question.number) || inssOfficialSource(supabaseSlug, question.number) || pismOfficialSource(supabaseSlug, question.number) || fuvestOfficialSource(supabaseSlug, question.number) || enemOfficialSource(supabaseSlug, question.number),
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

  const startMilitaryExam = async (slug) => {
    if (slug === 'ita-2026-fase-2') {
      setScreen('ita-discursive')
      setMenuOpen(false)
      return
    }
    const institution = slug.split('-')[0]
    setMilitaryLoading(institution)
    setMilitaryError(previous => ({ ...previous, [institution]: '' }))
    try {
      const questions = await loadSupabaseExam(slug)
      setEnemQuestions(questions)
      setSupabaseExamSlug(slug)
      setSelectedExam(institution)
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setMilitaryError(previous => ({ ...previous, [institution]: `Não foi possível carregar a prova. ${error.message}` }))
    } finally { setMilitaryLoading('') }
  }

  const startInssExam = async () => {
    setInssLoading(true)
    setInssError('')
    try {
      if (!inssSelection) throw new Error('Selecione uma edição e um cargo válidos.')
      const questions = await loadSupabaseExam(inssSelection.slug)
      if (questions.length !== inssSelection.count) throw new Error('O caderno está incompleto.')
      setEnemQuestions(questions)
      setSupabaseExamSlug(inssSelection.slug)
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

  useEffect(() => {
    if (screen === 'simulado' && !simuladoSubjects.medio && !simuladoSubjects.superior && !simuladoCatalogLoading) openSimulado()
  }, [screen])

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
        ...militaryQuestionMedia(question.support_image),
        ...uerjObjectiveMedia(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number, question.support),
        options: question.options,
        answer: question.answer,
        explanation: question.explanation,
        sourceUrl: uerjObjectiveSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || bombeirosOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || militaryOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug) || pmerjOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || correiosOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || inssOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || pismOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || fuvestOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || enemOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number),
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
  const selectedUerjEdition = currentUerjEditions.find((item) => item.value === uerjEdition) || currentUerjEditions[0]
  const uerjSlug = selectedUerjEdition?.slug
  const isUerjAvailable = Boolean(uerjSlug || (selectedUerjEdition?.discursive && uerjDiscursiveExams[uerjYear]?.length))

  const changeUerjYear = (value) => {
    setUerjYear(value)
    setUerjError('')
    setUerjEdition((uerjExamsByYear[value] || [])[0]?.value || '')
  }

  const startUerjExam = async () => {
    if (selectedUerjEdition?.discursive && uerjDiscursiveExams[uerjYear]) {
      setDiscursiveYear(uerjYear)
      setScreen('uerj-discursive')
      setMenuOpen(false)
      window.scrollTo({ top: 0, behavior: 'instant' })
      return
    }
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

  const startEnemExam = async () => {
    const exam = enemExams.find(item => String(item.year) === enemYear)
    if (!exam) return
    setEnemError('')
    setEnemLoading(true)
    try {
      const stored = await loadSupabaseExam(exam.slug)
      const questions = selectEnemQuestions(stored, enemDiscipline, enemLanguage)
      setEnemQuestions(questions)
      setSupabaseExamSlug(exam.slug)
      setSelectedExam('enem')
      setCurrent(0)
      setAnswers({})
      setScreen('exam-setup')
      setMenuOpen(false)
    } catch (error) {
      setEnemError('Não foi possível carregar o ENEM ' + exam.year + ' do Supabase: ' + error.message)
    } finally {
      setEnemLoading(false)
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
    setEnemYear(value)
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
      catalog={Object.values(pmerjRolesConfig).flatMap((item) => item.years)}
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
      onRoleChange={(nextRole) => {
        setCorreiosRole(nextRole)
        const years = correiosRolesConfig[nextRole]?.years || []
        if (!years.some((item) => item.value === correiosYear)) setCorreiosYear(years[0]?.value || '')
        setCorreiosError('')
      }}
      years={currentCorreiosYears}
      year={correiosYear}
      setYear={setCorreiosYear}
      onStart={startCorreiosExam}
      available={isCorreiosAvailable}
      loading={correiosLoading}
      error={correiosError}
    />
  )
  const inssCard = <InssCard years={inssYears} year={inssYear} role={inssSelection?.value || ''} setYear={year => { setInssYear(year); setInssRole(inssExamsByYear[year]?.[0]?.value || ''); setInssError('') }} onRoleChange={role => { setInssRole(role); setInssError('') }} onStart={startInssExam} loading={inssLoading} error={inssError} />
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
      edition={selectedUerjEdition?.value || ''}
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
  const featuredCards = { ebserh: <EbserhExamCard years={['2025', '2023', '2022']} onStart={startMilitaryExam} loading={militaryLoading === 'ebserh'} error={militaryError.ebserh} />, efomm: <EfommExamCard years={['2026', '2025']} onStart={startMilitaryExam} loading={militaryLoading === 'efomm'} error={militaryError.efomm} />, ita: <ItaExamCard years={['2026']} onStart={startMilitaryExam} loading={militaryLoading === 'ita'} error={militaryError.ita} />, cbmerj: <BombeirosExamCard years={['2026','2025','2024','2023']} onStart={startMilitaryExam} loading={militaryLoading === 'cbmerj'} error={militaryError.cbmerj} />, esa: <MilitaryExamCard institution="esa" years={['2026']} onStart={startMilitaryExam} loading={militaryLoading === 'esa'} error={militaryError.esa} />, espcex: <MilitaryExamCard institution="espcex" years={['2026']} onStart={startMilitaryExam} loading={militaryLoading === 'espcex'} error={militaryError.espcex} />, inss: inssCard, pism: pismCard, enem: enemCard, uerj: uerjCard, usp: uspCard, bb: bbCard, cnu: cnuCard, oab: oabCard, pmrj: pmerjCard, correios: correiosCard, caixa: caixaCard, pc: pcCard, pf: pfCard }

  if (screen === 'uerj-discursive') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen="catalog" onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} /><ExamTools examKey={`uerj-discursive:${discursiveYear}`} /><UerjDiscursive key={discursiveYear} year={discursiveYear} onBack={() => setScreen('catalog')} /></div>
  }

  if (screen === 'ita-discursive') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen="catalog" onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} /><React.Suspense fallback={<main className="discursive-page"><p role="status">Carregando a segunda fase do ITA…</p></main>}><ExamTools examKey="ita-discursive" /><ItaDiscursive onBack={() => setScreen('catalog')} /></React.Suspense></div>
  }

  if (screen === 'essay') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} /><React.Suspense fallback={<main className="essay-page"><p role="status">Carregando a área de redação…</p></main>}><ExamTools examKey="essay" /><EssayPractice onBack={() => setScreen('home')} /></React.Suspense></div>
  }

  if (screen === 'simulado') {
    const subjectColors = ['coral', 'blue', 'amber', 'purple']
    const canStart = simuladoSelected.length > 0 && !simuladoLoading
    return (
      <div className="app-shell">
        <Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
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
              ) : simuladoLevel === 'superior' ? (
                <SimuladoSubjectPicker subjects={currentSimuladoSubjects} selected={simuladoSelected} onChange={subjects => { setSimuladoSelected(subjects); setSimuladoError('') }} />
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
        <Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="catalog-page">
          <div className="catalog-head">
            <button className="back-link" onClick={() => setScreen('home')}><ArrowLeft size={17} /> Voltar ao início</button>
            <p className="eyebrow">Catálogo completo</p>
            <h1>Todas as provas</h1>
            <p className="catalog-subtitle">Escolha uma prova por categoria. Novas provas serão adicionadas em breve.</p>
          </div>

          <CatalogFilters search={catalogSearch} setSearch={setCatalogSearch} category={catalogCategory} setCategory={setCatalogCategory} categories={catalogCategories}>
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
          </CatalogFilters>

          <ExamProgressProvider onHistory={openAccount}>
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
              return (
                <section className="catalog-category" key={category.id}>
                  {['faculdades', 'concursos', 'oab'].includes(category.id) ? (
                    <details className="catalog-category-disclosure">
                      <summary className="catalog-category-toggle">
                        <div className="catalog-category-head"><h2>{category.title}</h2><p>{category.description}</p></div>
                        <span className="catalog-category-action"><ChevronDown size={20} aria-hidden="true" /></span>
                      </summary>
                      <div className="exam-cards trio">
                        {category.exams.map(exam => <ExamPicker key={exam.id} exam={exam}>{featuredCards[exam.id]}</ExamPicker>)}
                      </div>
                    </details>
                  ) : (
                    <>
                      <div className="catalog-category-head"><h2>{category.title}</h2><p>{category.description}</p></div>
                      <div className="exam-cards trio">
                        {category.exams.map(exam => <ExamPicker key={exam.id} exam={exam}>{featuredCards[exam.id]}</ExamPicker>)}
                      </div>
                    </>
                  )}
                </section>
              )
            })
          })()}
          </ExamProgressProvider>
        </main>
        <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
      </div>
    )
  }

  if (screen === 'exam-setup') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => setScreen('essay')} menuOpen={menuOpen} setMenuOpen={setMenuOpen} />
      <ExamSetup title={examLabel} count={activeQuestions.length} onStart={beginSession} onBack={() => examHomeScreen === 'simulado' ? openSimulado() : setScreen(examHomeScreen)} />
    </div>
  }
  if (screen === 'account') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} onHome={() => setScreen('home')} onCatalog={() => setScreen('catalog')} onSimulado={openSimulado} onEssay={() => setScreen('essay')} onAbout={goToAbout} menuOpen={menuOpen} setMenuOpen={setMenuOpen} /><StudyAccount initialTab={accountTab} onBack={() => setScreen('home')} /></div>
  }
  if (screen === 'study') {
    return <div className="app-shell"><Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} onHome={() => setScreen('home')} onCatalog={() => setScreen('catalog')} onSimulado={openSimulado} onEssay={() => setScreen('essay')} onAbout={goToAbout} menuOpen={menuOpen} setMenuOpen={setMenuOpen} />
      <React.Suspense fallback={<main className="study-hub" role="status">Abrindo seus conteúdos de estudo…</main>}><StudyHub onBack={() => setScreen('home')} onStart={startStudy} tab={studyTab} onTabChange={setStudyTab} onHistory={openAccount} onCatalog={() => setScreen('catalog')} onEssay={() => setScreen('essay')} /></React.Suspense>
    </div>
  }
  if (screen === 'result') {
    const isInss = inssBinary
    const resultPoints = isInss ? inssScore.points : score
    const percentage = activeQuestions.length ? Math.round((resultPoints / activeQuestions.length) * 100) : 0
    return (
      <div className="app-shell">
        <Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
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
            {isInss && <p className="result-message">Acerto: +1 · Erro: -1 · Em branco: 0. {inssScore.annulled} itens anulados recebem +1 cada. Correção conforme o gabarito definitivo da edição selecionada.</p>}
            <div className="result-stats">
              <div><strong>{isInss ? inssScore.correct : `${percentage}%`}</strong><span>{isInss ? "Acertos" : "Aproveitamento"}</span></div>
              <button className="review-stat" onClick={() => { setCurrent(0); setScreen('review') }}><strong>{isInss ? inssScore.wrong : activeQuestions.length - score}</strong><span>{isInss ? "Erros · revisar" : "Para revisar"}</span></button>
              <div><strong>{isInss ? inssScore.blank : activeQuestions.length}</strong><span>{isInss ? "Em branco" : "Questões"}</span></div>
            </div>
            <SaveResult source={selectedExam} session={session} questions={activeQuestions} answers={answers} title={examLabel} binary={isInss} />
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
      ...uerjObjectiveMedia(activeQuestions[current].examSlug, activeQuestions[current].number, activeQuestions[current].support),
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
        <ExamTools examKey={`${selectedExam}:${examLabel}:${examDay}`} />
        <Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} hideNavigation onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
        <main className="exam-page">
          <div className="exam-topline">
            <button className="back-link" onClick={() => { if (isReview) { setScreen('result') } else if (examHomeScreen === 'simulado') { openSimulado() } else { setScreen(examHomeScreen) } }}><ArrowLeft size={17} /> {isReview ? 'Voltar ao resultado' : 'Sair da prova'}</button>
            <div className="exam-name"><span className="mini-logo">P</span><span>provacerta · {selectedExam === 'study' || selectedExam === 'usp' || selectedExam === 'uerj' || selectedExam === 'simulado' || selectedExam === 'enem' || selectedExam === 'bb' || selectedExam === 'cnu' || selectedExam === 'oab' || selectedExam === 'pmerj' || selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' || selectedExam === 'esa' || selectedExam === 'espcex' || selectedExam === 'cbmerj' || selectedExam === 'ita' || selectedExam === 'efomm' || selectedExam === 'ebserh' ? examLabel : `PISM ${examLabel}`}</span><b>·</b><span>{isReview ? 'Revisão' : selectedExam === 'study' || selectedExam === 'usp' || selectedExam === 'uerj' || selectedExam === 'simulado' || selectedExam === 'enem' || selectedExam === 'bb' || selectedExam === 'cnu' || selectedExam === 'oab' || selectedExam === 'pmerj' || selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' || selectedExam === 'esa' || selectedExam === 'espcex' || selectedExam === 'cbmerj' || selectedExam === 'ita' || selectedExam === 'efomm' || selectedExam === 'ebserh' ? examDay : `Módulo ${pismExam?.module || 'I'} · ${examDay}`}</span></div>
            <span className="question-count">{current + 1} <i>/</i> {activeQuestions.length}</span>
          </div>
          {!isReview && session?.deadline && <div className="exam-timer">
            <span><Clock3 size={18} /> Tempo restante <strong role="timer" aria-label="Tempo restante">{formatDuration(timeLeft)}</strong></span>
            <span role="status">{timeLeft <= 60 ? 'Resta até 1 minuto.' : timeLeft <= 300 ? 'Restam até 5 minutos.' : 'Modo de prova'}</span>
            <button className="button secondary small" onClick={() => finishExam()}>Finalizar prova</button>
          </div>}
          {draftSaveFailed && <p className="exam-draft-status" role="status">Não foi possível guardar o progresso nesta aba. Evite atualizar a página durante a prova.</p>}
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
                : selectedExam === 'enem'
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
                          <button key={item.questionId || index} className={`${index === current ? 'active' : ''} ${answers[index] ? 'answered' : ''} ${reviewCorrect ? 'review-correct' : ''} ${reviewWrong ? 'review-wrong' : ''}`} onClick={() => setCurrent(index)}>{index + 1}</button>
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
              {selectedExam === 'study' && <p className="official-source">{question.examTitle} · Questão {question.number}</p>}
              <div className="question-heading"><span>Questão {String(current + 1).padStart(2, '0')}</span><Clock3 size={16} /> <small>{isReview ? 'Revisão' : session?.deadline ? 'Modo de prova' : 'Sem tempo limite'}</small>{speechSupported && <button type="button" className={`listen-button ${speakingId === 'question' ? 'active' : ''}`} onClick={() => speak('question', `${question.text}. ${question.options.map((option, index) => binary ? option : `Alternativa ${letters[index]}. ${option}`).join('. ')}`)} aria-label={speakingId === 'question' ? 'Parar leitura da questão' : 'Ouvir a questão'}>{speakingId === 'question' ? <><Square size={14} /> Parar</> : <><Volume2 size={15} /> Ouvir questão</>}</button>}</div>
              {inssBinary && <p className="official-source">Acerto: +1 · Erro: -1 · Em branco: 0 · Anulado: +1.</p>}
              <h1 className={question.examSlug?.match(/^(esa|espcex|ita|efomm)-/) ? 'military-question-text' : undefined}>{question.text}</h1>
              {question.sourceUrl && <p className="official-source"><a href={question.sourceUrl} target="_blank" rel="noopener noreferrer">{question.examSlug?.startsWith('ebserh-') ? 'Consultar fonte da questão da EBSERH' : 'Abrir questão e textos no caderno oficial'} {question.examSlug?.startsWith('ebserh-') ? '' : question.examSlug?.startsWith('efomm-') ? 'da EFOMM' : question.examSlug?.startsWith('ita-') ? 'do ITA' : question.examSlug?.startsWith('uerj-') ? 'da UERJ' : question.examSlug?.startsWith('cbmerj-') ? 'do CBMERJ' : question.examSlug?.startsWith('pmerj-') ? 'da PMERJ' : question.sourceUrl.includes('cebraspe.org.br') ? 'do Cebraspe' : question.sourceUrl.includes('fuvest.br') ? 'da FUVEST' : question.sourceUrl.includes('inep') ? 'do Inep' : question.examSlug?.startsWith('esa-') ? 'da ESA' : question.examSlug?.startsWith('espcex-') ? 'da EsPCEx' : 'da UFJF'} ↗</a></p>}
              <div className="options">
                {question.options.map((option, index) => {
                  const letter = letters[index]
                  const isCorrect = !isAnnulledAnswer(question.answer) && isCorrectAnswer(letter, question.answer)
                  const isSelected = normalizeLetter(selected) === letter
                  return <button key={letter} onClick={() => !isReview && answer(letter)} className={`option ${isReview && isCorrect ? 'correct' : ''} ${isReview && !isAnnulledAnswer(question.answer) && isSelected && !isCorrect ? 'incorrect' : ''} ${!isReview && isSelected ? 'selected' : ''}`}><span className="option-letter">{binary ? (index === 0 ? "C" : "E") : letter}</span><span>{option}</span>{isReview && isCorrect && <span className="answer-label"><Check size={15} /> Correta</span>}{isReview && !isAnnulledAnswer(question.answer) && isSelected && !isCorrect && <span className="answer-label wrong"><X size={15} /> Sua resposta</span>}{!isReview && isSelected && <Check size={18} className="option-check" />}</button>
                })}
              </div>
              {isReview && isAnnulledAnswer(question.answer) && <p className="official-source">Questão anulada · ponto atribuído automaticamente.</p>}
              {isReview && (question.origin === 'author' || question.sourceUrl || !isCorrectAnswer(selected, question.answer)) && question.explanation && (
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
      <Header onStudy={openStudy} activeScreen={screen} onAccount={openAccount} menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} onSimulado={openSimulado} onCatalog={() => setScreen('catalog')} onAbout={goToAbout} onEssay={() => { setScreen('essay'); setMenuOpen(false) }} />
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
          <ExamProgressProvider onHistory={openAccount}>
          <div className="exam-cards trio">
            <ExamPicker exam={catalogCategories.flatMap(category => category.exams).find(exam => exam.id === 'cnu')}>{cnuCard}</ExamPicker>
            <ExamPicker exam={catalogCategories.flatMap(category => category.exams).find(exam => exam.id === 'enem')}>{enemCard}</ExamPicker>
            <ExamPicker exam={catalogCategories.flatMap(category => category.exams).find(exam => exam.id === 'oab')}>{oabCard}</ExamPicker>
          </div>
          </ExamProgressProvider>
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

function Header({ onStudy, activeScreen, onAccount, onHome, onSimulado, onCatalog, onAbout, onEssay, menuOpen, setMenuOpen, hideNavigation = false }) {
  const [darkMode, setDarkMode] = useState(() => typeof document !== 'undefined' && document.documentElement.dataset.theme === 'dark')
  const toggleTheme = () => {
    const next = !darkMode
    setDarkMode(next)
    document.documentElement.dataset.theme = next ? 'dark' : 'light'
    document.documentElement.style.colorScheme = next ? 'dark' : 'light'
    document.querySelector('meta[name="theme-color"]')?.setAttribute('content', next ? '#101725' : '#f7f9fc')
    try { window.localStorage.setItem('provacerta-theme', next ? 'dark' : 'light') } catch {}
  }
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
  const handleStudy = (event) => {
    event.preventDefault()
    setMenuOpen?.(false)
    onStudy?.()
  }
  return <header><button className="brand" onClick={onHome}><span className="brand-mark">P</span> prova<span>certa</span></button>{!hideNavigation && <nav className={menuOpen ? 'open' : ''}><a href="#provas" aria-current={activeScreen === 'catalog' ? 'page' : undefined} onClick={handleCatalog}>Provas</a><a href="#simulado" aria-current={activeScreen === 'simulado' ? 'page' : undefined} onClick={handleSimulado}>Crie seu simulado</a><a href="#estudar" aria-current={activeScreen === 'study' ? 'page' : undefined} onClick={handleStudy}>Estudar</a><a href="#redacao" aria-current={activeScreen === 'essay' ? 'page' : undefined} onClick={handleEssay}>Praticar redação</a><a href="#sobre" onClick={handleAbout}>Sobre nós</a></nav>}<div className="header-actions"><button className="theme-toggle" onClick={toggleTheme} aria-label={darkMode ? 'Ativar modo claro' : 'Ativar modo escuro'} aria-pressed={darkMode} title={darkMode ? 'Ativar modo claro' : 'Ativar modo escuro'}>{darkMode ? <Sun size={18} /> : <Moon size={18} />}<span>{darkMode ? 'Modo claro' : 'Modo escuro'}</span></button>{!hideNavigation && <AccountControl onAccount={onAccount} />}{!hideNavigation && <button className="menu-button" aria-label="Abrir menu" onClick={() => setMenuOpen?.(!menuOpen)}><Menu size={22} /></button>}</div></header>
}

function MoreDots() { return <span className="more-dots"><i /><i /><i /></span> }

createRoot(document.getElementById('root')).render(<AuthProvider><App /></AuthProvider>)
