import { otherUerj2014BiologyQuestions } from './uerj2014Biology.js'
import { recentUerjBiologyQuestions } from './uerjRecentBiology.js'

const leptinEffects = [
  ['redução do apetite', 'diminuição do apetite', 'reduz o apetite', 'diminui o apetite', 'inibição do apetite', 'aumento da saciedade'],
  ['aumento da termogênese', 'aumenta a termogênese', 'aumento da produção de calor', 'maior produção de calor'],
]

const initialQuestions = [
  {
    id: 'uerj-2014-biologia-2', year: '2014', subject: 'Biologia', number: 2,
    title: 'Fixação de nitrogênio',
    source: '/provas/uerj/2014-discursivo-biologia-comentado.pdf#page=8',
    examSource: '/provas/uerj/2014-discursivo-biologia-comentado.pdf#page=8',
    text: 'Em seu processo de fixação biológica, o gás atmosférico nitrogênio é convertido em compostos inorgânicos nitrogenados. Um exemplo desse mecanismo de conversão ocorre na relação simbiótica entre bactérias do gênero Rhizobium e raízes de leguminosas.\n\nIndique duas vantagens dessa relação simbiótica, uma para a planta e outra para a bactéria. Em seguida, cite o íon nitrogenado usado preferencialmente pelas plantas no processo de fixação e nomeie uma das moléculas, encontradas nas células vegetais, que incorpora esse íon.',
    fields: [
      { id: 'plant', label: 'Vantagem para a planta', reference: 'Obtenção de compostos nitrogenados produzidos pelas bactérias.',
        accepted: ['compostos nitrogenados', 'obtenção de compostos nitrogenados', 'obtenção de nitrogênio', 'recebe compostos nitrogenados', 'recebe nitrogênio', 'a planta recebe compostos nitrogenados', 'a planta obtém compostos nitrogenados', 'fornecimento de compostos nitrogenados', 'compostos nitrogenados produzidos pelas bactérias', 'obtenção de compostos nitrogenados produzidos pelas bactérias', 'absorção de compostos nitrogenados', 'obtém nitrogênio para seu metabolismo'] },
      { id: 'bacteria', label: 'Vantagem para a bactéria', reference: 'Obtenção de carboidratos produzidos pela planta.',
        accepted: ['carboidratos', 'açúcares', 'nutrientes orgânicos', 'obtenção de carboidratos', 'recebe carboidratos', 'obtenção de nutrientes orgânicos', 'carboidratos produzidos pela planta', 'obtenção de carboidratos produzidos pela planta', 'a bactéria recebe carboidratos da planta', 'recebe carboidratos produzidos pela planta', 'obtém carboidratos da planta', 'recebe nutrientes orgânicos da planta'] },
      { id: 'ion', label: 'Íon nitrogenado preferencial', reference: 'Íon nitrato (NO₃⁻). O comentário oficial desta questão especifica nitrato.',
        accepted: ['nitrato', 'íon nitrato', 'NO3-', 'NO3 -', 'nitrato (NO3-)', 'íon nitrato (NO3-)', 'NO3⁻', 'NO₃⁻'] },
      { id: 'molecule', label: 'Uma molécula que incorpora esse íon', reference: 'Aminoácidos, proteínas, ácidos nucleicos ou bases nitrogenadas.',
        accepted: ['aminoácido', 'aminoácidos', 'proteína', 'proteínas', 'ácido nucleico', 'ácidos nucleicos', 'base nitrogenada', 'bases nitrogenadas', 'DNA', 'RNA', 'ácido desoxirribonucleico', 'ácido ribonucleico'] },
    ],
  },
  {
    id: 'uerj-2015-biologia-3', year: '2015', subject: 'Biologia', number: 3,
    title: 'Leptina e controle do peso',
    source: 'https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/22.pdf',
    examSource: 'https://sistema.vestibular.uerj.br/portal_vestibular_uerj/arquivos/arquivos2015/provas_e_gabaritos/ed/prova/2015_ED_Biologia.pdf',
    text: 'A leptina é um dos hormônios que controlam o comportamento alimentar e, consequentemente, o peso corporal.\n\nIdentifique o principal tipo de célula que produz a leptina e o local do sistema nervoso central onde esse hormônio atua. Em seguida, cite dois de seus efeitos que podem colaborar para a perda de peso.',
    fields: [
      { id: 'cell', label: 'Tipo de célula que produz leptina', reference: 'Adipócitos.', accepted: ['adipócito', 'adipócitos', 'célula adiposa', 'células adiposas'] },
      { id: 'location', label: 'Local de atuação no sistema nervoso central', reference: 'Hipotálamo.', accepted: ['hipotálamo', 'no hipotálamo'] },
      { id: 'effect1', label: 'Um efeito relacionado à perda de peso', reference: 'Redução do apetite ou aumento da termogênese.', concepts: leptinEffects, distinctGroup: 'effects' },
      { id: 'effect2', label: 'Outro efeito relacionado à perda de peso', reference: 'O segundo efeito deve ser diferente do primeiro: redução do apetite e aumento da termogênese.', concepts: leptinEffects, distinctGroup: 'effects' },
    ],
  },
]

export const uerjDiscursiveQuestions = [...initialQuestions, ...otherUerj2014BiologyQuestions, ...recentUerjBiologyQuestions].sort((a, b) => a.year.localeCompare(b.year) || a.number - b.number)
export const findUerjDiscursive = id => uerjDiscursiveQuestions.find(question => question.id === id)
export const uerjDiscursiveExams = Object.fromEntries(['2014', '2025', '2026'].map(year => [year, uerjDiscursiveQuestions.filter(question => question.year === year)]))
