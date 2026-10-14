// Each rule requires every group; alternatives within a group are equivalent.
// Patterns are curated per item, rather than guessed from the reference text.
const rule = (groups, extra = {}) => ({ groups, ...extra })
const key = (year, number, field) => `uerj-${year}-biologia-${number}/${field}`
const rules = new Map()
const add = (year, number, field, groups, extra) => rules.set(key(year, number, field), rule(groups, extra))

add(2026, 1, 'organization', [['canai\\w*|canal'], ['intercomunic\\w*|conect\\w*|rede'], ['coanocit\\w*'], ['maior|mais|numeros\\w*|aument\\w*|muitos']])
add(2026, 1, 'feeding', [['maior|mais|aument\\w*|ampl\\w*'], ['area|superficie|captacao|absorcao'], ['nutrient\\w*|aliment\\w*']])
add(2026, 2, 'cycle', [
  ['roedor\\w*|ratos?|camundong\\w*'], ['felin\\w*|gatos?'],
  ['preda\\w*|captur\\w*|inger\\w*|comid\\w*'],
  ['parasita\\w*|protozoari\\w*|toxoplasma'],
  ['transfer\\w*|transmi\\w*|passagem|complet\\w*|cheg\\w*|alcanc\\w*'],
], {
  relations: [
    'roedor\\w*.{0,90}(?:preda\\w*|captur\\w*|ingerid\\w*).{0,35}(?:felin\\w*|gatos?)|(?:felin\\w*|gatos?).{0,35}(?:preda\\w*|captur\\w*|inger\\w*).{0,35}roedor\\w*',
    '(?:transfer\\w*|transmi\\w*|passagem|cheg\\w*).{0,55}(?:parasita\\w*|protozoari\\w*|hospedeir\\w*)|parasita\\w*.{0,55}(?:transfer\\w*|transmi\\w*|complet\\w*|cheg\\w*)',
  ],
  reject: ['(?:reduz|diminui|evita|impede)\\w*.{0,45}(?:preda|captur|transmi|transfer|ciclo)', '(?:felin\\w*|gatos?).{0,20}(?:capturad|predad)\\w*.{0,20}roedor\\w*', 'roedores\\s+(?:capturam|predam|comem|ingerem)\\s+(?:os\\s+)?(?:felinos|gatos)'],
})
add(2026, 3, 'size', [['maior|mais|aument\\w*'], ['numero|quantidade|concentracao'], ['hemaci\\w*|celul\\w*'], ['volume|sangu\\w*']])
add(2026, 3, 'shape', [['maior|mais|aument\\w*'], ['area|superficie'], ['oxigen\\w*|o2|gasos\\w*']])
add(2026, 4, 'advantage', [['econom\\w*|poup\\w*|redu\\w*'], ['energ\\w*|gasto\\w*'], ['ninh\\w*|cuidado\\w*|filhot\\w*|ovos?']])
add(2026, 4, 'inheritance', [['cromossomo w'], ['feme\\w*|sexo feminino'], ['apenas|somente|exclusiv\\w*|so']])
add(2026, 6, 'reason', [['temperatur\\w*'], ['alta\\w*|elevad\\w*|aument\\w*'], ['fech\\w*|redu\\w*|diminu\\w*'], ['estomat\\w*|abertura'], ['agua|desidrat\\w*']])
add(2026, 7, 'importance', [['remoc\\w*|remov\\w*|elimin\\w*|limp\\w*|transport\\w*'], ['particul\\w*|muco'], ['respiratori\\w*|vias aereas']], { alternatives: [rule([['transport\\w*|moviment\\w*|desloc\\w*'], ['ovocit\\w*|ovulit\\w*|zigot\\w*'], ['tubas?|trompas?']])] })
add(2026, 8, 'function', [['compact\\w*|organiz\\w*|empacot\\w*|condens\\w*'], ['dna|cromatin\\w*|material genetico']])
add(2026, 8, 'expression', [['maior|mais|aument\\w*'], ['compact\\w*|condens\\w*'], ['redu\\w*|diminu\\w*|dificult\\w*|imped\\w*|menor|menos'], ['transcri\\w*|expressao|acesso|leitura']], { alternatives: [rule([['menor|menos|redu\\w*|descompact\\w*'], ['compact\\w*|condens\\w*|descompact\\w*'], ['facilit\\w*|aument\\w*|maior|mais'], ['transcri\\w*|expressao|acesso']])] })
add(2026, 9, 'type2', [['estimul\\w*|aument\\w*|maior|mais'], ['produc\\w*|secret\\w*|secre\\w*|produz\\w*|liber\\w*'], ['insulin\\w*'], ['celulas? beta|pancrea\\w*']])
add(2026, 9, 'type1', [['destrui\\w*|destru\\w*|ausencia|perda'], ['celulas? beta'], ['autoimun\\w*|insulin\\w*|produz\\w*|produca\\w*|funciona\\w*']])

add(2025, 1, 'specificity', [['protein\\w*|virus|virais'], ['receptor\\w*'], ['especific\\w*|reconhec\\w*|encaix\\w*|lig\\w*|compativ\\w*']])
add(2025, 1, 'redcells', [['hemaci\\w*|eritrocit\\w*'], ['anuclead\\w*|ausencia de nucleo|sem nucleo|nao (?:possuem|tem|apresentam) nucleo|ausencia de ribossomos']], { allowNegation: true, reject: ['(?<!nao )(?:possuem|tem|apresentam) nucleo'] })
add(2025, 2, 'reasonx', [['maior|alta|elevada'], ['pressao'], ['coracao|bombe\\w*|velocidade']])
add(2025, 2, 'reasonz', [['maior|grande|ampla'], ['area|superficie'], ['menor|baixa|reduzida'], ['velocidade']], { alternatives: [rule([['menor|baixa|reduzida'], ['velocidade'], ['troc\\w*'], ['tecid\\w*']])] })
add(2025, 3, 'epistasis', [['genes?|genica'], ['loci|locus'], ['diferent\\w*|distint\\w*|outro']])
add(2025, 3, 'dominance', [['alel\\w*|genes?'], ['mesmo'], ['locus|gene']])
add(2025, 4, 'male', [['feme\\w*'], ['atrac\\w*|atra\\w*|prefer\\w*|escolh\\w*'], ['reprodut\\w*|reproduc\\w*|acasal\\w*']])
add(2025, 4, 'female', [['preda\\w*|captur\\w*|camufl\\w*'], ['feme\\w*'], ['ovos?|descenden\\w*|prole'], ['elimina\\w*|perda|perd\\w*|prote\\w*|redu\\w*']])
add(2025, 5, 'reasoncurve', [['alta|elevada|grande|maior'], ['mortalidade|morte'], ['juvenil|jovens|infancia']], { alternatives: [rule([['poucos|baixa|menor'], ['sobreviv\\w*|sobrevida|cheg\\w*'], ['adult\\w*']])] })
add(2025, 5, 'reasonstrategy', [['alta|grande|muitos|numeros\\w*|maior|elevada'], ['descenden\\w*|reprodut\\w*|reproduc\\w*|prole|filhot\\w*'], ['sobreviv\\w*|sobrevida|sobreviver\\w*']])
add(2025, 6, 'reasonchild', [['lise|destroi\\w*|destrui\\w*|romp\\w*'], ['bacteri\\w*'], ['fagos?|virus|virais|bacteriofag\\w*'], ['liber\\w*|multiplic\\w*|reprodu\\w*|muitos']])
add(2025, 6, 'reasonadult', [['dna|material genetico'], ['viral|virus|fagos?|bacteriofag\\w*'], ['integra\\w*|incorpor\\w*|inser\\w*'], ['bacteri\\w*']], { allowNegation: true, reject: ['com lise|ocorre lise|provoca lise|destroi as bacterias'] })
add(2025, 7, 'importance', [['atra\\w*'], ['poliniz\\w*']], { alternatives: [rule([['pigment\\w*|absorc\\w*|absorv\\w*'], ['luz|fotossint\\w*|fotossintese']]), rule([['antioxidant\\w*']])] })
add(2025, 7, 'event', [['tubo polinico'], ['cresc\\w*|forma\\w*|desenvolv\\w*|along\\w*']])
add(2025, 9, 'organelle', [['dependen\\w*'], ['metabolic\\w*|hospedeir\\w*|protein\\w*']], { alternatives: [rule([['transmi\\w*|heran\\w*|pass\\w*'], ['hereditar\\w*|celulas? filhas|gerac\\w*']])] })
add(2025, 9, 'symbiosis', [['rhizobium'], ['leguminos\\w*']])
add(2025, 9, 'nitrogen', [['compo\\w*|forma\\w*|sintes\\w*|sintet\\w*|constitui\\w*|produca\\w*'], ['aminoacid\\w*|protein\\w*|acidos? nucleicos?|bases? nitrogenadas?|atp|dna|rna']])
add(2025, 10, 'reason', [['inibid\\w*|inibic\\w*'], ['fora do sitio ativo|sitio alosterico']], { allowNegation: true, alternatives: [rule([['aument\\w*|maior|mais'], ['substrat\\w*'], ['nao'], ['revert\\w*|restaur\\w*|recuper\\w*|revers\\w*|altera\\w*|ating\\w*|elimina\\w*']], { allowNegation: true })], reject: ['compete com o substrato|inibidor se liga ao sitio ativo'] })

add(2014, 1, 'function', [['formacao|formam|produz\\w*|sintes\\w*|deposit\\w*|deposic\\w*|capt\\w*'], ['osso\\w*|ossea|osseo|calcio']])
add(2014, 2, 'plant', [['nitrogen\\w*|nitrogenio'], ['obt\\w*|receb\\w*|absor\\w*|fornec\\w*|disponib\\w*']])
add(2014, 2, 'bacteria', [['carboidrat\\w*|acucar\\w*|nutrientes organicos'], ['obt\\w*|receb\\w*|fornec\\w*|produz\\w*|produzid\\w*|disponib\\w*']])
add(2014, 3, 'mechanism', [['metano|ch4'], ['bovin\\w*|gado|rebanh\\w*'], ['emiss\\w*|emit\\w*|liber\\w*|produz\\w*|produc\\w*'], ['ferment\\w*|rumen|bacteri\\w*|digest\\w*'], ['estufa|aquecimento']])
add(2014, 8, 'transmission', [['picad\\w*'], ['mosquit\\w*|aedes']])
add(2014, 8, 'return', [['vetor\\w*|aedes|mosquit\\w*'], ['pessoas? infectadas?|individuos? infectados?|pessoa com febre amarela|introducao do virus']])
add(2014, 9, 'reason', [['co2|gas carbonico|dioxido de carbono'], ['substrato|reagente|disponib\\w*'], ['fotossint\\w*|glicose']])

export const getShortAnswerRule = (questionId, fieldId) => rules.get(`${questionId}/${fieldId}`)

const conceptRules = new Map([
  ['uerj-2014-biologia-4/artery', [rule([['fibr\\w*|tecido'], ['elastic\\w*']]), rule([['muscul\\w*'], ['lis\\w*|espess\\w*|desenvolvid\\w*']])]],
  ['uerj-2014-biologia-4/vein', [rule([['contrac\\w*|contra\\w*|comprim\\w*|compress\\w*'], ['muscul\\w*|esquelet\\w*']]), rule([['respirat\\w*|diafragm\\w*|toracic\\w*'], ['moviment\\w*|contrac\\w*|suc\\w*|bomba|contra\\w*']])]],
  ['uerj-2026-biologia-5/advantage', [
    rule([['natat\\w*|natac\\w*|nadar'], ['eficien\\w*|veloc\\w*|rap\\w*|melhor']]),
    rule([['nicho\\w*|profund\\w*|aguas frias|ambientes frios'], ['ocup\\w*|explor\\w*|viv\\w*|sobreviv\\w*|habita\\w*']]),
    rule([['cerebr\\w*|nervos\\w*'], ['respost\\w*|reac\\w*'], ['rap\\w*|melhor|maior']]),
    rule([['visual|visao'], ['acuidade|melhor|eficien\\w*|maior']]),
  ]],
  ['uerj-2026-biologia-10/carbon', [
    rule([['co2|gas carbonico|dioxido de carbono|carbono'], ['fotossint\\w*'], ['absor\\w*|fix\\w*|retir\\w*|consum\\w*|capt\\w*']]),
    rule([['carbono'], ['fundo|profund\\w*|sediment\\w*'], ['ocean\\w*|mar'], ['deposit\\w*|deposic\\w*|sequestr\\w*|acumul\\w*|sediment\\w*']]),
  ]],
  ['uerj-2026-biologia-10/oil', [rule([['flutua\\w*|superficie|boia\\w*']]), rule([['reserv\\w*|armazena\\w*|estoc\\w*'], ['energ\\w*']])]],
])
export function getShortConceptRules(questionId, fieldId) {
  return conceptRules.get(`${questionId}/${fieldId.replace(/[12]$/, '')}`)
}
