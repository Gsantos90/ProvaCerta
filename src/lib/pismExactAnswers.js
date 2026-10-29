// Bounded arithmetic parser. Never executes answer text as JavaScript.
const superscripts = { '⁰':'0','¹':'1','²':'2','³':'3','⁴':'4','⁵':'5','⁶':'6','⁷':'7','⁸':'8','⁹':'9','⁻':'-','⁺':'+' }
const subscripts = { '₀':'0','₁':'1','₂':'2','₃':'3','₄':'4','₅':'5','₆':'6','₇':'7','₈':'8','₉':'9' }
const one = () => new Map([['',1]])
const zero = () => new Map()
function term(key,value) {
  const count = [...key].filter(c => c === 'i').length
  return [key.replace(/i/g,'') + (count%2 ? 'i' : ''),value * (-1)**Math.floor(count/2)]
}
function add(a,b,factor=1) {
  const result=new Map(a)
  for (const [key,value] of b) result.set(key,(result.get(key)||0)+value*factor)
  for (const [key,value] of result) if (value === 0) result.delete(key)
  if (result.size>150 || [...result.values()].some(v => !Number.isFinite(v) || Math.abs(v)>1e100)) throw Error('Expression limit')
  return result
}
function multiply(a,b) {
  let result=zero()
  for (const [ka,va] of a) for (const [kb,vb] of b) {
    if (ka.length+kb.length>12) throw Error('Degree limit')
    const [key,value]=term([...ka,...kb].sort().join(''),va*vb)
    result=add(result,new Map([[key,value]]))
  }
  return result
}
const constant = value => ({ n:new Map(value ? [['',value]] : []),d:one() })
const variable = name => ({ n:new Map([[name,1]]),d:one() })
const numeric = value => value.n.size<=1 && (!value.n.size || value.n.has('')) && value.d.size===1 && value.d.has('') ? (value.n.get('')||0)/value.d.get('') : null
function operate(a,b,op) {
  if (op==='+') return { n:add(multiply(a.n,b.d),multiply(b.n,a.d)),d:multiply(a.d,b.d) }
  if (op==='-') return { n:add(multiply(a.n,b.d),multiply(b.n,a.d),-1),d:multiply(a.d,b.d) }
  if (op==='*') return { n:multiply(a.n,b.n),d:multiply(a.d,b.d) }
  if (!b.n.size) throw Error('Division by zero')
  return { n:multiply(a.n,b.d),d:multiply(a.d,b.n) }
}
function mathText(value) {
  return String(value).trim().replace(/[⁰¹²³⁴⁵⁶⁷⁸⁹⁻⁺]+/g, token => `^(${[...token].map(c => superscripts[c]).join('')})`)
    .normalize('NFKC').replace(/[−–]/g,'-').replace(/[×·⋅]/g,'*').replace(/\*\*/g,'^')
    .replace(/π/g,'pi').replace(/√\s*(\d+(?:[.,]\d+)?)/g,'sqrt($1)').replace(/√/g,'sqrt')
    .replace(/\braiz\s*(?:quadrada\s*)?(?:de\s*)?/gi,'sqrt').replace(/\bsqrt\s+/g,'sqrt')
    .replace(/sqrt(\d+(?:[.,]\d+)?)/g,'sqrt($1)')
    .replace(/(?<=\d)E(?=[+-]?\d)/g,'e').replace(/\bPI\b/g,'pi').replace(/SQRT/g,'sqrt')
    .replace(/(?<=\d)\s+x\s+(?=10\b)/g,'*').replace(/,/g,'.').replace(/\s+/g,'')
}
export function parseExactMath(input) {
  try {
    const text=mathText(input)
    if (!text || text.length>400) return null
    const tokens=text.match(/(?:\d+(?:\.\d*)?|\.\d+)(?:e[+-]?\d+)?|sqrt|pi|[a-zA-Z]|[()+*/^\-]/g)||[]
    if (tokens.join('')!==text || tokens.length>180) return null
    let index=0,depth=0
    const peek=() => tokens[index]
    const atom=() => {
      if (++depth>40) throw Error('Depth limit')
      const token=tokens[index++]
      let result
      if (token==='(') { result=expression(); if (tokens[index++]!==')') throw Error('Parenthesis') }
      else if (token==='sqrt') {
        if (tokens[index++]!=='(') throw Error('Root parentheses')
        const value=numeric(expression()); if (tokens[index++]!==')' || value===null) throw Error('Numeric root required')
        result=value<0 ? operate(constant(Math.sqrt(-value)),variable('i'),'*') : constant(Math.sqrt(value))
      } else if (token==='pi') result=constant(Math.PI)
      else if (/^[a-zA-Z]$/.test(token||'')) result=variable(token)
      else if (/^(?:\d|\.)/.test(token||'')) {
        const value=Number(token)
        if (!Number.isFinite(value) || value===0 && /[1-9]/.test(token.split('e')[0])) throw Error('Numeric range')
        result=constant(value)
      }
      else throw Error('Invalid token')
      depth--;return result
    }
    const power=() => {
      let result=atom()
      if (peek()==='^') {
        index++; const exponent=numeric(unary())
        if (!Number.isInteger(exponent) || Math.abs(exponent)>12) throw Error('Integer exponent required')
        if (exponent===0 && numeric(result)===0) throw Error('Undefined power')
        const base=result;result=constant(1)
        for (let n=0;n<Math.abs(exponent);n++) result=operate(result,base,'*')
        if (exponent<0) result=operate(constant(1),result,'/')
      }
      return result
    }
    const unary=() => peek()==='+' ? (index++,unary()) : peek()==='-' ? (index++,operate(constant(-1),unary(),'*')) : power()
    const product=() => {
      let result=unary()
      while (peek()==='*' || peek()==='/' || /^(?:\d|\.|[a-zA-Z(])/.test(peek()||'')) {
        const op=peek()==='*' || peek()==='/' ? tokens[index++] : '*'
        result=operate(result,unary(),op)
      }
      return result
    }
    const expression=() => {
      let result=product()
      while (peek()==='+' || peek()==='-') { const op=tokens[index++];result=operate(result,product(),op) }
      return result
    }
    const result=expression()
    return index===tokens.length && result.d.size ? result : null
  } catch { return null }
}

function samePolynomial(a,b,proportional=false) {
  const keys=new Set([...a.keys(),...b.keys()])
  if (!keys.size) return true
  const scale=Math.max(...[...a.values(),...b.values()].map(Math.abs),1e-300)
  let ratio=1
  if (proportional) {
    const pivot=[...b].find(([,value]) => Math.abs(value)>scale*1e-12)
    if (!pivot || !(a.get(pivot[0]))) return false
    ratio=a.get(pivot[0])/pivot[1]
  }
  return [...keys].every(key => Math.abs((a.get(key)||0)-(b.get(key)||0)*ratio)<=1e-10*Math.max(scale,Math.abs((b.get(key)||0)*ratio),1e-300))
}
function withoutAssignment(text) {
  return String(text).replace(/^\s*(?:[\p{L}][\p{L}\p{N}_]*(?:\([a-z]\))?)\s*=\s*(?!=)/u,'')
}
export function equivalentMath(actual,expected,equation=false) {
  const read = text => {
    if (!equation) return parseExactMath(withoutAssignment(text))
    const parts=String(text).split('=')
    if (parts.length!==2) return null
    const left=parseExactMath(parts[0]),right=parseExactMath(parts[1])
    return left && right ? operate(left,right,'-') : null
  }
  const a=read(actual),b=read(expected)
  if (a && b && [...a.d.keys(),...b.d.keys()].some(key => /[A-Za-hj-z]/.test(key))) return false
  return Boolean(a && b && samePolynomial(multiply(a.n,b.d),multiply(b.n,a.d),equation))
}

const units = {
  m:['length',1],cm:['length',.01],mm:['length',.001],km:['length',1000],
  'm2':['area',1],'cm2':['area',1e-4],'mm2':['area',1e-6],'km2':['area',1e6],
  'm3':['volume',1000],'cm3':['volume',.001],L:['volume',1],l:['volume',1],mL:['volume',.001],ml:['volume',.001],
  g:['mass',1],kg:['mass',1000],mg:['mass',.001],
  min:['time',1],minuto:['time',1],minutos:['time',1],h:['time',60],hora:['time',60],horas:['time',60],s:['time',1/60],
  '°':['angle',1],graus:['angle',1],rad:['angle',180/Math.PI],
  '%':['ratio',.01],
  'mol/L':['concentration',1],'mol L-1':['concentration',1],'mol L^-1':['concentration',1],'mol/mL':['concentration',1000],
  'kJ/mol':['energy',1],'J/mol':['energy',.001],
  'R$':['money',1],reais:['money',1],real:['money',1],
  pessoas:['count',1],habitantes:['count',1],milhoes:['count',1e6],'milhões':['count',1e6],
  'u.a.':['area-unit',1],'u.a':['area-unit',1],'u.a.²':['area-unit',1],'u.a.^2':['area-unit',1],
}
function unitText(text) { return text.replace(/²/g,'2').replace(/³/g,'3').replace(/\^([23])/g,'$1') }
export function exactQuantity(input,unit='',extraUnits=[]) {
  let text=String(input).trim().replace(/[.;]+$/,'')
  if (text.length>500) return null
  const base=units[unit] || [unit,1]
  if (base[0]==='time') {
    const compound=text.match(/^(\d+)\s*(?:h|horas?)\s*(?:e\s*)?(\d+)\s*(?:min|minutos?)$/i)
    if (compound && Number(compound[2])<60) return (Number(compound[1])*60+Number(compound[2]))/base[1]
  }
  let factor=1
  if (text.startsWith('R$')) { if (base[0]!=='money') return null; text=text.slice(2).trim() }
  const possibilities=[...Object.keys(units),...extraUnits].sort((a,b) => b.length-a.length)
  const normalized=unitText(text)
  const matched=possibilities.find(u => normalized.endsWith(unitText(u)))
  if (matched) {
    const found=units[matched] || [base[0],base[1]]
    if (found[0]!==base[0]) return null
    factor=found[1]/base[1]
    const start=[...text].findIndex((_,i) => unitText(text.slice(i))===unitText(matched))
    text=text.slice(0,start).trim()
  }
  text=withoutAssignment(text)
  if (/^[1-9]\d{0,2}(?:\.\d{3})+(?:,\d+)?$/.test(text)) text=text.replace(/\./g,'')
  const parsed=parseExactMath(text),value=parsed && numeric(parsed)
  return value!==null && value!==false && Number.isFinite(value) ? value*factor : null
}

function chemicalText(text) {
  return String(text).replace(/[₀₁₂₃₄₅₆₇₈₉]/g,c => subscripts[c])
    .replace(/[⁰¹²³⁴⁵⁶⁷⁸⁹⁻⁺]+/g,t => '^'+[...t].map(c => superscripts[c]).join(''))
    .replace(/ℓ/g,'l').replace(/[−–]/g,'-').replace(/\((?:aq|s|l|g|ℓ)\)/g,'').replace(/\s/g,'')
}
export function chemicalFormula(input) {
  let text=chemicalText(input).replace(/[.;]+$/,'')
  let charge='0'
  const explicit=text.match(/\^(\d*)([+-])$/)
  if (explicit) { charge=String((explicit[1] ? Number(explicit[1]) : 1)*(explicit[2]==='+' ? 1 : -1));text=text.slice(0,explicit.index) }
  else {
    const ion=text.match(/^([A-Z][a-z]?)(\d+)([+-])$/)
    if (ion) { charge=String(Number(ion[2])*(ion[3]==='+' ? 1 : -1));text=ion[1] }
    else if (/[+-]$/.test(text)) { charge=text.endsWith('+') ? '1' : '-1';text=text.slice(0,-1) }
  }
  if (!text || text.length>100) return null
  let index=0,depth=0
  function count() {
    const match=/^\d+/.exec(text.slice(index)); if (!match) return 1
    index+=match[0].length;const n=Number(match[0]);if (!n || n>1000) throw Error('Count');return n
  }
  function group() {
    if (++depth>10) throw Error('Depth')
    const atoms={}
    while (index<text.length && text[index]!==')') {
      let part
      if (text[index]==='(') { index++;part=group();if (text[index++]!==')') throw Error('Group') }
      else {
        const match=/^[A-Z][a-z]?/.exec(text.slice(index));if (!match) throw Error('Element')
        index+=match[0].length;part={ [match[0]]:1 }
      }
      const n=count();for (const [element,amount] of Object.entries(part)) atoms[element]=(atoms[element]||0)+amount*n
    }
    depth--;return atoms
  }
  try { const atoms=group();return index===text.length ? JSON.stringify([Object.entries(atoms).sort(),charge]) : null } catch { return null }
}
function reaction(input) {
  const text=chemicalText(input).replace(/<=>|<->|↔|⇄/g,'⇌').replace(/->|=>|⟶/g,'→')
  if (text.length>1000) return null
  const match=text.match(/^(.*?)((?:→|⇌))(.*?)$/)
  if (!match) return null
  const side=value => {
    const terms=value.split(/\+(?=[A-Z0-9])/)
    const map=new Map()
    for (const term of terms) {
      const m=/^(\d+)?(.+)$/.exec(term)
      if (!m || !chemicalFormula(m[2])) return null
      // Preserve structural formula spelling: atom totals cannot identify isomers.
      const formula=m[2].replace(/^([A-Z][a-z]?)(\d+)([+-])$/,'$1^$2$3').replace(/\^1([+-])$/,'$1').replace(/\^([+-])$/,'$1')
      map.set(formula,(map.get(formula)||0)+Number(m[1]||1))
    }
    return map
  }
  const left=side(match[1]),right=side(match[3])
  return left && right ? { left,right,arrow:match[2] } : null
}
function sameReaction(actual,expected) {
  const a=reaction(actual),b=reaction(expected)
  if (!a || !b || a.arrow!==b.arrow || a.left.size!==b.left.size || a.right.size!==b.right.size) return false
  const first=[...b.left][0],ratio=a.left.get(first[0])/first[1]
  return ratio>0 && ['left','right'].every(side => [...b[side]].every(([key,n]) => a[side].get(key)===n*ratio))
}
const words = text => String(text).normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase().trim().replace(/[.;]+$/,'').replace(/\s+/g,' ').replace(/\s*\/\s*/g,'/')
export function matchesPismExact(rule,input) {
  if (!String(input ?? '').trim()) return false
  if (rule.aliases?.some(alias => words(input)===words(alias))) return true
  if (rule.kind==='quantity') {
    const actual=exactQuantity(input,rule.unit,rule.extraUnits)
    return actual!==null && rule.models.some(model => {
      const expected=exactQuantity(model,rule.unit)
      return expected!==null && Math.abs(actual-expected)<=Math.max(rule.tolerance||0,1e-10*Math.max(Math.abs(actual),Math.abs(expected),1e-300))
    })
  }
  if (rule.kind==='math' || rule.kind==='equation') return rule.models.some(model => equivalentMath(input,model,rule.kind==='equation'))
  if (rule.kind==='formula') { const value=chemicalFormula(input);return Boolean(value && rule.models.some(model => value===chemicalFormula(model))) }
  if (rule.kind==='reaction') return rule.models.some(model => sameReaction(input,model))
  if (rule.kind==='terms') return rule.models.some(model => words(input)===words(model))
  if (rule.kind==='pair') {
    const text=String(input).trim().replace(/^[A-Za-z]\s*=?\s*(?=\()/,'').replace(/^\(|\)$/g,'')
    const parts=text.split(text.includes(';') ? ';' : ',').map(x => x.trim())
    return parts.length===2 && parts.every((part,i) => equivalentMath(part,rule.models[i]))
  }
  if (rule.kind==='set') {
    let text=String(input).trim().replace(/^\{|\}$/g,'')
    const values=text.includes('±') ? [text.replace('±','+'),text.replace('±','-')] : text.split(/;|\s+e\s+|\n/).map(s => s.trim()).filter(Boolean)
    const used=new Set()
    return values.length===rule.models.length && values.every(value => {
      const index=rule.models.findIndex((model,i) => !used.has(i) && equivalentMath(value,model))
      if (index<0) return false;used.add(index);return true
    })
  }
  return false
}
