// Short results transcribed from COPESE's official correction PDFs (2024–2026).
// Only these registered results are graded. Proofs and structural drawings stay manual.
import { matchesPismExact } from './pismExactAnswers.js'

const exact = (kind,models,reference,extra={}) => ({ kind,models:Array.isArray(models) ? models : [models],reference,...extra })
const quantity = (model,unit='',reference='',extra={}) => exact('quantity',model,reference || `${Array.isArray(model) ? model[0] : model}${unit && !['ratio','count'].includes(unit) ? ` ${unit}` : ''}`,{ unit,...extra })
const math = (model,reference=model) => exact('math',model,reference)
const terms = (models,reference=models[0]) => exact('terms',models,reference)
const formula = (models,reference=Array.isArray(models) ? models[0] : models,extra={}) => exact('formula',models,reference,extra)
const equation = model => exact('equation',model,Array.isArray(model) ? model[0] : model)
const reaction = (models,reference=Array.isArray(models) ? models[0] : models) => exact('reaction',models,reference)
const pair = (x,y) => exact('pair',[x,y],`(${x}; ${y})`)
const part = (id,label,rule) => ({ id,label,rule })
const rules = {}
const register = (module,year,subject,number,fields) => { rules[`${module}:${year}:${subject}:${number}`]=fields }

register('I',2024,'Matemática',1,{ a:math('7-x','f(x) = −x + 7'),b:math('(4x+8)/5','g(x) = (4x + 8)/5'),c:quantity('82/5','u.a.','82/5 u.a. = 16,4 unidades de área') })
register('I',2024,'Matemática',2,{ a:quantity(['4sqrt(3)','6.8'],'m','4√3 m; a referência também aceita 6,8 m.'),b:quantity('8','m') })
register('I',2025,'Matemática',1,{ a:quantity('2sqrt(3)','cm','2√3 cm'),b:quantity('10.2','cm2','10,2 cm², usando as aproximações pedidas.') })
register('I',2025,'Matemática',2,{ b:quantity('5.5','R$','R$ 5,50'),c:quantity('211','min','211 minutos = 3 horas e 31 minutos') })
register('I',2026,'Matemática',1,{ a:quantity('2.5','R$','R$ 2,50'),b:quantity('300','R$','R$ 300,00'),c:math('5q','R(q) = 5q'),d:quantity('121','','121 brigadeiros',{ extraUnits:['brigadeiros','unidades'] }) })
register('I',2026,'Matemática',2,{ a:quantity('25','m'),b:quantity('65','m'),c:quantity('650','m2','650 m²') })

register('II',2024,'Matemática',1,{ a:quantity('.14','ratio','14% = 0,14'),b:quantity('12800000','count','12.800.000 habitantes = 12,8 milhões',{extraUnits:['pessoas','habitantes']}) })
register('II',2024,'Matemática',2,{ a:quantity('54pi','cm3','54π cm³'),b:quantity('194/27','cm','194/27 cm ≈ 7,19 cm',{tolerance:.005}) })
register('II',2025,'Matemática',1,{ a:quantity('200'),b:quantity('10050') })
register('II',2025,'Matemática',2,{ a:math('2l','L = 2ℓ'),b:math('sqrt(3)*l','DE = √3·ℓ') })
register('II',2026,'Matemática',1,{ a:math('pi*n/3-pi/4','aₙ = πn/3 − π/4'),b:quantity('-sqrt(2)/2','','−√2/2') })
register('II',2026,'Matemática',2,{ a:quantity('60','°','β = 60°'),b:quantity('100sqrt(6)/3','m','100√6/3 m') })

register('III',2024,'Matemática',1,{ a:quantity('sqrt(50)','','√50 = 5√2'),b:terms(['exterior','externo','fora da circunferência','exterior da circunferência'],'Exterior da circunferência; a justificativa deve comparar a distância ao raio.') })
register('III',2024,'Matemática',2,{ resposta:[part('a','Valor de a',math('41/85','a = 41/85')),part('b','Valor de b',math('33/85','b = 33/85'))] })
register('III',2024,'Matemática',3,{ a:quantity('25','','25 senhas',{extraUnits:['senhas','possibilidades']}),b:quantity('1/25','ratio','1/25 = 4%') })
register('III',2024,'Matemática',4,{ a:quantity('500','R$','R$ 500,00'),b:equation(['A+B=800','a+b=800']) })
register('III',2024,'Matemática',5,{ resposta:exact('set',['(5-i*sqrt(11))/6','(5+i*sqrt(11))/6'],'(5 − i√11)/6 e (5 + i√11)/6') })
register('III',2025,'Matemática',1,{ a:[part('a','Item A · a',math('4/3','a = 4/3')),part('b','Item A · b',math('1','b = 1')),part('c','Item A · c',math('-2/3','c = −2/3'))],b:quantity('74') })
register('III',2025,'Matemática',2,{ a:pair('1','2'),b:equation('(x-1/2)^2+(y-1)^2=5/4') })
register('III',2025,'Matemática',3,{ resposta:[part('a','Valor de a',math('1','a = 1')),part('b','Valor de b',math('2','b = 2')),part('c','Valor de c',math('0','c = 0'))] })
register('III',2025,'Matemática',4,{ a:quantity('1/8','ratio','1/8 = 12,5%'),b:quantity('7/10','ratio','7/10 = 70%') })
register('III',2025,'Matemática',5,{ a:quantity('6','','6 trajetos',{extraUnits:['trajetos','caminhos']}),b:quantity('1/3','ratio','1/3 ≈ 33,33%',{tolerance:.00005}) })
register('III',2026,'Matemática',1,{ a:[part('m','Item A · Ordenada de M, em função de m',math('(m+12)/3','(m + 12)/3')),part('n','Item A · Ordenada de N, em função de n',math('(6-5n)/3','(6 − 5n)/3'))],b:[part('m','Item B · Ponto M',pair('9','7')),part('n','Item B · Ponto N',pair('3','-3'))],c:quantity('2sqrt(34)','','2√34 = √136') })
register('III',2026,'Matemática',2,{ a:quantity('20','','20 caminhos',{extraUnits:['caminhos','trajetos']}),b:quantity('9/20','ratio','9/20 = 45%') })
register('III',2026,'Matemática',3,{ a:[part('1','Item A · Equação da cabine 01',equation('2x+5y+3z=48')),part('2','Item A · Equação da cabine 02',equation('6y+2z=40'))],b:[part('x','Item B · x em função de y',math('2y-6','x = 2y − 6')),part('z','Item B · z em função de y',math('20-3y','z = 20 − 3y'))] })
register('III',2026,'Matemática',4,{ a:[part('b','Item A · Valor de b',math('3','b = 3')),part('k','Item A · Valor de k',math('3','k = 3'))],b:quantity('240','min','240 minutos = 4 horas') })
register('III',2026,'Matemática',5,{ a:quantity('1','','a = 1'),b:quantity('2','','a = 2'),c:terms(['concorrentes','retas concorrentes','secantes','retas secantes'],'Retas concorrentes, com ponto comum (1; −3/4).') })

register('I',2024,'Química',1,{ a:formula('CaSO4','CaSO₄ — sulfato de cálcio'),b:reaction(['H2SO4 + Ca(OH)2 → CaSO4 + 2H2O','2H+ + SO4^2- + Ca^2+ + 2OH- → Ca^2+ + SO4^2- + 2H2O'],'H₂SO₄ + Ca(OH)₂ → CaSO₄ + 2H₂O; a forma iônica completa também é aceita.') })
register('I',2024,'Química',2,{ a:reaction('N2 + O2 → 2NO','N₂ + O₂ → 2NO') })
register('I',2025,'Química',1,{ c:formula('Ba^2+','Ba²⁺') })
register('I',2025,'Química',2,{ a:reaction('CO2 + H2O → H2CO3','CO₂ + H₂O → H₂CO₃'),b:formula('CaSO4','CaSO₄'),c:[part('h','Item C · Átomos de hidrogênio',quantity('1')),part('n','Item C · Átomos de nitrogênio',quantity('1')),part('o','Item C · Átomos de oxigênio',quantity('3'))] })
// Module I 2026 asks for structural drawings and explanations, not isolated exact results.
register('II',2024,'Química',1,{ a:quantity('.24','ratio','24% (v/v) = 0,24'),c:quantity('7.9','g','7,9 g') })
register('II',2024,'Química',2,{ b:formula('C4H8O2','C₄H₈O₂'),c:terms(['3-metil-1-butanol','3-metilbutan-1-ol'],'3-metilbutan-1-ol ou 3-metil-1-butanol'),d:quantity('17.4','g','17,4 g') })
register('II',2025,'Química',1,{ a:terms(['exotérmica','exotérmico','reação exotérmica','processo exotérmico'],'Exotérmico; a justificativa deve relacionar a reação à liberação de energia.'),b:quantity('-2229','kJ/mol','−2229 kJ/mol'),c:terms(['queijo','o queijo'],'Queijo, com 20 kJ/g; confira o desenvolvimento na referência.') })
register('II',2025,'Química',2,{ a:formula(['CO2','CH4'],'CO₂ ou CH₄'),b:quantity('6','','Limite planetário 6'),c:terms(['CFC','HCFC','clorofluorcarboneto','hidroclorofluorcarboneto'],'CFC ou HCFC') })
register('II',2026,'Química',1,{ a:quantity('.05','L','0,05 L = 50 mL'),b:quantity('.22','mol/L','0,22 mol/L; valor maior que o previsto.') })
register('II',2026,'Química',2,{ b:[part('propanona','Item B · Função da propanona',terms(['cetona'],'Cetona')),part('acetato','Item B · Função do acetato de etila',terms(['éster','ester'],'Éster'))],c:terms(['dietilamina','N-etiletanamina'],'Dietilamina ou N-etiletanamina; a avaliação da nomenclatura original deve ser justificada.') })

register('III',2024,'Química',1,{ c:quantity('18','g') })
register('III',2024,'Química',2,{ a:reaction(['HNO2 + H2O ⇌ NO2- + H3O+','HNO2 ⇌ NO2- + H+'],'HNO₂ + H₂O ⇌ NO₂⁻ + H₃O⁺, ou HNO₂ ⇌ NO₂⁻ + H⁺'),b:formula('HCN','HCN; confira a comparação de Ka na justificativa.',{aliases:['ácido cianídrico']}),c:formula('HF','HF; confira a relação entre Ka e pH na justificativa.',{aliases:['ácido fluorídrico']}) })
register('III',2024,'Química',3,{ b:quantity('12','min','12 minutos; justifique pela estabilização das concentrações.'),c:quantity(['800000/2.25','355555','355000'],'','Kc = 800.000/2,25 ≈ 3,55 × 10⁵') })
register('III',2024,'Química',4,{ d:quantity(['.60675','.607'],'g','0,607 g de HBr') })
register('III',2025,'Química',1,{ b:[part('redutor','Item B · Agente redutor',formula('Mg','Mg',{aliases:['magnésio']})),part('oxidante','Item B · Agente oxidante',formula(['Al','Al^3+'],'Al³⁺ (alumínio, indicado como Al na referência)',{aliases:['alumínio']}))],c:formula(['Zn','Cu'],'Zn ou Cu',{aliases:['zinco','cobre']}) })
register('III',2025,'Química',3,{ a:quantity('1','','Recipiente 1; justifique pela concentração.'),b:quantity('2','','Recipiente 2; justifique pela temperatura.') })
register('III',2025,'Química',5,{ c:terms(['isômeros de posição','isomeria de posição','posição'],'Isômeros de posição') })
register('III',2026,'Química',2,{ b:quantity('143','','143 nêutrons',{extraUnits:['nêutrons','neutrons']}) })
register('III',2026,'Química',3,{ a:reaction(['CH3COOH + OH- ⇌ CH3COO- + H2O','CH3COOH + NaOH ⇌ CH3COONa + H2O'],'CH₃COOH + OH⁻ ⇌ CH₃COO⁻ + H₂O'),b:terms(['CH3COOH/CH3COO-','CH₃COOH/CH₃COO⁻','H2O/OH-','H₂O/OH⁻'],'CH₃COOH/CH₃COO⁻ ou H₂O/OH⁻, na ordem ácido/base.') })
register('III',2026,'Química',5,{ a:[part('a','Item A · Substância A',terms(['força de London','forças de London','London','van der Waals','dipolo induzido-dipolo induzido'],'Forças de London')),part('b','Item A · Substância B',terms(['ligações de hidrogênio','ligação de hidrogênio','pontes de hidrogênio'],'Ligações de hidrogênio')),part('c','Item A · Substância C',terms(['dipolo-dipolo','dipolo permanente-dipolo permanente'],'Dipolo-dipolo'))] })

export function preparePismExactExam(exam) {
  return { ...exam, sections:exam.sections.map(section => ({ ...section, questions:section.questions.map(question => {
    const registered=rules[`${exam.module}:${exam.year}:${section.subject}:${question.number}`] || {}
    const fields=question.fields.flatMap(field => {
      const definition=registered[field.id]
      if (!definition) return [{ ...field,manual:true }]
      return (Array.isArray(definition) ? definition : [part('',field.label,definition)]).map(component => ({
        id:component.id ? `${field.id}_${component.id}` : field.id,label:component.label,baseField:field.id,
        rule:component.rule,reference:component.rule.reference,manual:false,
      }))
    })
    return { ...question,fields,legacyFields:question.fields.filter(field => fields.some(f => f.baseField===field.id && f.id!==field.id)) }
  }) })) }
}

export function gradePismQuestion(question,answers={}) {
  const items=question.fields.map(field => ({ id:field.id,manual:field.manual,blank:!String(answers[field.id]||'').trim(),matched:!field.manual && matchesPismExact(field.rule,answers[field.id]) }))
  return { items,total:items.filter(item => !item.manual).length,recognized:items.filter(item => item.matched).length,manual:items.filter(item => item.manual).length }
}
