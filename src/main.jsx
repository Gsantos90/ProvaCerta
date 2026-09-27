import React, { useEffect, useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import {
  ArrowLeft, ArrowRight, Award, BookOpen, Check, ChevronDown, Clock3,
  GraduationCap, LayoutGrid, Menu, RotateCcw, Sparkles, Target, X,
  ZoomIn, ZoomOut, Volume2, Square, Search,
} from 'lucide-react'
import './styles.css'
import { isSupabaseConfigured, supabase } from './lib/supabase'

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
    title: 'Vestibulares e ENEM',
    description: 'Provas de acesso ao ensino superior.',
    exams: [
      { id: 'pism', name: 'PISM', org: 'UFJF', description: 'Programa de Ingresso Seletivo Misto', available: true },
      { id: 'enem', name: 'ENEM', org: 'Brasil', description: 'Exame Nacional do Ensino Médio', available: true },
    ],
  },
  {
    id: 'faculdades',
    title: 'Faculdades públicas',
    description: 'Vestibulares específicos de universidades públicas.',
    exams: [
      { id: 'uerj', name: 'UERJ', org: 'Rio de Janeiro', short: 'UERJ', description: 'Universidade do Estado do Rio de Janeiro', available: false, color: 'teal' },
      { id: 'uff', name: 'UFF', org: 'Fluminense', short: 'UFF', description: 'Universidade Federal Fluminense', available: false, color: 'indigo' },
      { id: 'ufrj', name: 'UFRJ', org: 'Rio de Janeiro', short: 'UFRJ', description: 'Universidade Federal do Rio de Janeiro', available: false, color: 'crimson' },
    ],
  },
  {
    id: 'concursos',
    title: 'Concursos',
    description: 'Provas de concursos públicos.',
    exams: [
      { id: 'pmrj', name: 'PMERJ', org: 'Segurança', short: 'PMERJ', description: 'Polícia Militar do Estado do Rio de Janeiro', available: false, color: 'navy' },
      { id: 'bb', name: 'Banco do Brasil', org: 'Bancário', short: 'BB', description: 'Concurso do Banco do Brasil', available: false, color: 'gold' },
      { id: 'caixa', name: 'Caixa Econômica', org: 'Bancário', short: 'CAIXA', description: 'Concurso da Caixa Econômica Federal', available: false, color: 'sky' },
      { id: 'pf', name: 'Polícia Federal', org: 'Segurança', short: 'PF', description: 'Concurso da Polícia Federal', available: false, color: 'slate' },
      { id: 'correios', name: 'Correios', org: 'Serviços', short: 'CORREIOS', description: 'Concurso dos Correios', available: false, color: 'amber' },
    ],
  },
]

const wait = (milliseconds) => new Promise((resolve) => setTimeout(resolve, milliseconds))

const normalizeEnemQuestion = (question) => {
  const markdownImage = question.context?.match(/!\[[^\]]*\]\(([^)]+)\)/)?.[1]
  const support = question.context?.replace(/!\[[^\]]*\]\([^)]+\)/g, '').trim()
  return {
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
    years: [],
  },
  '3 ano': {
    label: '3º ano',
    years: [],
  },
}

function App() {
  const [screen, setScreen] = useState('home')
  const [selectedExam, setSelectedExam] = useState(null)
  const [supportScale, setSupportScale] = useState(1)
  const [speakingId, setSpeakingId] = useState(null)
  const [lightboxImage, setLightboxImage] = useState(null)
  const [catalogSearch, setCatalogSearch] = useState('')
  const [catalogCategory, setCatalogCategory] = useState('todas')
  const [pismSeries, setPismSeries] = useState('1 ano')
  const [year, setYear] = useState('2025-1')
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
  const [pismLoading, setPismLoading] = useState(false)
  const [supabaseExamSlug, setSupabaseExamSlug] = useState(null)
  useEffect(() => {
    if (typeof window !== 'undefined' && 'speechSynthesis' in window) window.speechSynthesis.cancel()
    setSpeakingId(null)
  }, [current, screen, selectedExam])
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
  const activeQuestions = selectedExam === 'enem-api' || supabaseExamSlug ? enemQuestions : questionSets[selectedExam] || []
  const examLabel = selectedExam === 'pism-1' ? '2025-1' : selectedExam === 'pism-2' ? '2025-2' : selectedExam === 'pism-2024-1' ? '2024-1' : selectedExam === 'pism-2024-2' ? '2024-2' : selectedExam === 'pism-2023-1' ? '2023-1' : selectedExam === 'pism-2023-2' ? '2023-2' : selectedExam === 'enem-api' ? `ENEM ${enemYear}` : '2023-1_Cad_Amarelo - LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS'
  const examDay = selectedExam === 'enem-api' ? 'Área selecionada' : examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'

  const score = useMemo(() => activeQuestions.reduce((total, question, index) => (
    total + (answers[index] === question.answer ? 1 : 0)
  ), 0), [activeQuestions, answers])

  const startExam = async (exam) => {
    if (exam === 'enem') return
    setPismLoading(true)
    setEnemError('')
    try {
      const supabaseSlug = { 'pism-1': 'pism-2025-1', 'pism-2': 'pism-2025-2', 'pism-2024-1': 'pism-2024-1', 'pism-2024-2': 'pism-2024-2', 'pism-2023-1': 'pism-2023-1', 'pism-2023-2': 'pism-2023-2' }[exam]
      if (!supabase || !supabaseSlug) {
        throw new Error('As provas do PISM exigem conexão com o Supabase. Verifique a configuração do banco de dados.')
      }
      const { data: examRecord, error: examError } = await supabase.from('exams').select('id').eq('slug', supabaseSlug).maybeSingle()
      if (examError) throw examError
      if (!examRecord) {
        throw new Error(`A prova "${supabaseSlug}" não foi encontrada no banco de dados.`)
      }
      const { data: storedQuestions, error: questionsError } = await supabase.from('questions').select('*').eq('exam_id', examRecord.id).order('number')
      if (questionsError) throw questionsError
      if (!storedQuestions?.length) {
        throw new Error(`A prova "${supabaseSlug}" não possui questões cadastradas no banco de dados.`)
      }
      setEnemQuestions(storedQuestions.map((question) => ({
        subject: question.subject,
        text: question.text,
        support: question.support,
        supportImage: question.support_image,
        options: question.options,
        answer: question.answer,
      })))
      setSupabaseExamSlug(supabaseSlug)
      setSelectedExam(exam)
      setCurrent(0)
      setAnswers({})
      setScreen('exam')
      setMenuOpen(false)
    } catch (error) {
      setEnemError(`Não foi possível carregar as questões do Supabase: ${error.message}`)
    } finally {
      setPismLoading(false)
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
      setScreen('exam')
      setMenuOpen(false)
    } catch (error) {
      setEnemError(error.message)
    }
  }

  const selectedExamForYear = {
    '2025-1': 'pism-1',
    '2025-2': 'pism-2',
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
    const exam = enemCatalog.find((item) => String(item.year) === value)
    setEnemYear(value)
    setEnemDiscipline(exam?.disciplines.find((item) => item.value === 'linguagens')?.value || exam?.disciplines[0]?.value || '')
    setEnemLanguage(exam?.languages[0]?.value || '')
    setEnemError('')
  }

  const answer = (letter) => setAnswers((old) => ({ ...old, [current]: letter }))
  const previous = () => setCurrent((value) => Math.max(0, value - 1))
  const next = () => setCurrent((value) => Math.min(activeQuestions.length - 1, value + 1))

  const speechSupported = typeof window !== 'undefined' && 'speechSynthesis' in window
  const stopSpeech = () => {
    if (speechSupported) window.speechSynthesis.cancel()
    setSpeakingId(null)
  }
  const speak = (id, text) => {
    if (!speechSupported || !text) return
    if (speakingId === id) {
      stopSpeech()
      return
    }
    window.speechSynthesis.cancel()
    const utterance = new SpeechSynthesisUtterance(text)
    utterance.lang = 'pt-BR'
    utterance.rate = 0.95
    utterance.onend = () => setSpeakingId(null)
    utterance.onerror = () => setSpeakingId(null)
    setSpeakingId(id)
    window.speechSynthesis.speak(utterance)
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
    <EnemCard catalog={enemCatalog} year={enemYear} setYear={changeEnemYear} discipline={enemDiscipline} setDiscipline={setEnemDiscipline} language={enemLanguage} setLanguage={setEnemLanguage} onStart={startEnemExam} loading={enemLoading} error={enemError} />
  )
  const featuredCards = { pism: pismCard, enem: enemCard }

  if (screen === 'catalog') {
    return (
      <div className="app-shell">
        <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} />
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
              return (
                <section className="catalog-category" key={category.id}>
                  <div className="catalog-category-head">
                    <h2>{category.title}</h2>
                    <p>{category.description}</p>
                  </div>
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
                </section>
              )
            })
          })()}
        </main>
        <footer><span className="brand"><span className="brand-mark">P</span> prova<span>certa</span></span><span>Feito para quem quer chegar mais longe.</span><span>© 2025 provacerta</span></footer>
      </div>
    )
  }

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
            <div className="exam-name"><span className="mini-logo">P</span><span>provacerta · {selectedExam === 'enem-api' ? examLabel : `PISM ${examLabel}`}</span><b>·</b><span>{isReview ? 'Revisão' : `Módulo I · ${examDay}`}</span></div>
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

              <div className="a11y-bar">
                <span className="a11y-label">Acessibilidade</span>
                <div className="a11y-controls">
                  <div className="a11y-zoom">
                    <button type="button" onClick={zoomOut} disabled={supportScale <= 0.85} aria-label="Diminuir tamanho do texto de apoio"><ZoomOut size={16} /></button>
                    <span className="a11y-zoom-value">{Math.round(supportScale * 100)}%</span>
                    <button type="button" onClick={zoomIn} disabled={supportScale >= 1.8} aria-label="Aumentar tamanho do texto de apoio"><ZoomIn size={16} /></button>
                  </div>
                  {speechSupported && question.support && <button type="button" className={`listen-button small ${speakingId === 'support' ? 'active' : ''}`} onClick={() => speak('support', question.support)} aria-label={speakingId === 'support' ? 'Parar leitura do texto de apoio' : 'Ouvir o texto de apoio'}>{speakingId === 'support' ? <><Square size={13} /> Parar</> : <><Volume2 size={14} /> Ouvir apoio</>}</button>}
                </div>
              </div>

              <div className="support-stack" style={{ fontSize: `${supportScale}rem` }} onClick={(event) => { if (event.target.tagName === 'IMG' && event.target.classList.contains('support-image')) setLightboxImage({ src: event.target.src, alt: event.target.alt }) }}>
              {supabaseExamSlug
                ? (question.support || question.supportImage) && <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{question.supportImage && <img className="support-image" src={question.supportImage} alt={`Imagem de apoio da questão ${current + 1}`} />}{question.support && <span>{question.support}</span>}</div></details>
                : selectedExam === 'enem-api'
                ? (question.support || question.supportImage) && <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{question.supportImage && <img className="support-image" src={question.supportImage} alt={`Imagem de apoio da questão ${current + 1}`} />}{question.support && <span>{question.support}</span>}</div></details>
                : selectedExam === 'enem-2023-1-ingles'
                ? <details className="sidebar-support" open><summary><BookOpen size={16} /><span>Texto ou imagem de apoio</span><ChevronDown size={15} /></summary><div>{question.supportImage ? <img className="support-image" src={question.supportImage} alt={`Imagem de apoio da questão ${current + 1}`} /> : <span>{current === 9 ? `${enem2023SpanishSupport[9]}\n\n${question.support}` : question.support || enem2023SpanishSupport[current]}</span>}</div></details>
                : null}
              </div>
            </aside>
            <section className="question-content">
              <div className={`subject-tag ${subjects.find((item) => item.name === question.subject)?.color}`}>{question.subject}</div>
              <div className="question-heading"><span>Questão {String(current + 1).padStart(2, '0')}</span><Clock3 size={16} /> <small>Sem tempo limite</small>{speechSupported && <button type="button" className={`listen-button ${speakingId === 'question' ? 'active' : ''}`} onClick={() => speak('question', `${question.text}. ${question.options.map((option, index) => `Alternativa ${letters[index]}. ${option}`).join('. ')}`)} aria-label={speakingId === 'question' ? 'Parar leitura da questão' : 'Ouvir a questão'}>{speakingId === 'question' ? <><Square size={14} /> Parar</> : <><Volume2 size={15} /> Ouvir questão</>}</button>}</div>
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
      <Header menuOpen={menuOpen} setMenuOpen={setMenuOpen} onHome={() => setScreen('home')} />
      <main className="home">
        <section className="hero">
          <div className="hero-copy">
            <div className="pill"><span className="pulse-dot" /> Seu próximo passo começa aqui</div>
            <h1>Estude melhor.<br /><em>Conquiste mais.</em></h1>
            <p>Simulados de provas importantes, feitos para você praticar, acompanhar seu progresso e chegar mais preparado.</p>
            <button className="button primary hero-button" onClick={() => setScreen('catalog')}>Explorar provas <ArrowRight size={18} /></button>
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
          <div className="section-heading"><div><p className="eyebrow">Escolha seu desafio</p><h2>Provas em destaque</h2></div><button className="view-all" onClick={() => setScreen('catalog')}><LayoutGrid size={17} /> Todas as provas</button></div>
          <div className="exam-cards">
            {pismCard}
            {enemCard}
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

function EnemCard({ catalog, year, setYear, discipline, setDiscipline, language, setLanguage, onStart, loading, error }) {
  const exam = catalog.find((item) => String(item.year) === year)
  const disciplines = exam?.disciplines || []
  const languages = exam?.languages || []
  return (
    <article className="exam-card enem">
      <div className="card-art"><span className="art-kicker">BRASIL</span><strong>ENEM</strong><span className="art-shape">ENEM</span><div className="art-dots" /></div>
      <div className="exam-card-body">
        <div className="card-title-row"><div><h3>ENEM</h3><p>Exame Nacional do Ensino Médio</p></div><span className={`status ${catalog.length ? 'ready' : ''}`}>{catalog.length ? 'API conectada' : 'Carregando'}</span></div>
        <div className="enem-controls">
          <label>Ano da prova <span className="select-wrap"><select value={year} onChange={(event) => setYear(event.target.value)} disabled={!catalog.length}>{catalog.map((item) => <option key={item.year} value={item.year}>{item.year}</option>)}</select><ChevronDown size={16} /></span></label>
          <label>Área <span className="select-wrap"><select value={discipline} onChange={(event) => setDiscipline(event.target.value)} disabled={!disciplines.length}>{disciplines.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>
          {discipline === 'linguagens' && <label>Idioma <span className="select-wrap"><select value={language} onChange={(event) => setLanguage(event.target.value)} disabled={!languages.length}>{languages.map((item) => <option key={item.value} value={item.value}>{item.label}</option>)}</select><ChevronDown size={16} /></span></label>}
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
          <label>
            Ano da prova
            <span className="select-wrap">
              <select value={year} onChange={(event) => setYear(event.target.value)} disabled={!available || years.length === 0}>
                {years.length > 0 ? (
                  years.map((item) => <option key={item} value={item}>{item}</option>)
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
        <strong>{exam.short}</strong>
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
        </div>
        <button className="button disabled full" disabled>Em breve</button>
      </div>
    </article>
  )
}

function MoreDots() { return <span className="more-dots"><i /><i /><i /></span> }

createRoot(document.getElementById('root')).render(<App />)
