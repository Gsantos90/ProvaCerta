import React, { useId, useState } from 'react'
import { describeData, urnChances, evaluateFunction } from './lib/mathExplorers'
import './mathStudyLesson.css'
import AdvancedMathExplorer from './AdvancedMathExplorer'

const number = value => value.toLocaleString('pt-BR', { maximumFractionDigits: 2 })
function Slider({ label, value, onChange, min = 1, max = 12, step = 1 }) {
  return <label className="math-slider"><span>{label}<strong>{number(value)}</strong></span><input type="range" min={min} max={max} step={step} value={value} onChange={event => onChange(Number(event.target.value))} /></label>
}
function Diagram({ title, children }) {
  const id = useId()
  return <svg className="math-diagram" viewBox="0 0 400 240" role="img" aria-labelledby={id}><title id={id}>{title}</title>{children}</svg>
}
function Percentages() {
  const [base, setBase] = useState(200)
  const [rate, setRate] = useState(25)
  const [mode, setMode] = useState('part')
  const part = base * rate / 100
  const result = mode === 'increase' ? base + part : mode === 'discount' ? base - part : part
  return <>
    <p>Cada quadradinho representa 1% da base. Mude a taxa e observe quantos ficam preenchidos; depois compare o valor da parte com o valor final após um reajuste.</p>
    <label className="math-select">O que calcular<select value={mode} onChange={event => setMode(event.target.value)}><option value="part">Parte do total</option><option value="increase">Valor após aumento</option><option value="discount">Valor após desconto</option></select></label>
    <Slider label="Base: valor que representa 100%" min={0} max={1000} step={10} value={base} onChange={setBase} />
    <Slider label="Taxa (%)" min={0} max={100} value={rate} onChange={setRate} />
    <Diagram title={`${rate} de 100 quadradinhos preenchidos. ${rate}% de ${number(base)} = ${number(part)}.`}>
      {Array.from({length:100},(_,index) => <rect key={index} x={105+(index%10)*19} y={12+Math.floor(index/10)*19} width="16" height="16" rx="2" style={{fill:index<rate?'#2563eb':'#e2e8f0',stroke:'#64748b',strokeWidth:0.4}} />)}
      <text x="200" y="225" textAnchor="middle">{rate} de cada 100 partes iguais</text>
    </Diagram>
    <output className="math-result" aria-live="polite">{mode === 'part' ? `${number(base)} × ${number(rate/100)} = ${number(result)}` : `${number(base)} ${mode === 'increase' ? '+' : '−'} ${number(part)} = ${number(result)}`}</output>
    <p>{rate}% da base correspondem a {number(part)}. {mode === 'part' ? 'Esse é o valor da parte, não o total após um reajuste.' : `O valor final representa ${mode === 'increase' ? 100+rate : 100-rate}% da base inicial.`} {base === 0 ? 'Com base zero, qualquer parte percentual calculada por multiplicação também é zero.' : rate === 0 ? 'Com taxa de 0%, a parte é zero para qualquer base.' : 'A mesma taxa aplicada a uma base maior produz uma parte maior.'}</p>
  </>
}
function Proportions() {
  const [inverse, setInverse] = useState(false)
  const [quantity, setQuantity] = useState(8)
  const result = inverse ? 24 / quantity : 75 * quantity
  return <><label className="math-select">Situação<select value={inverse ? 'inverse' : 'direct'} onChange={event => setInverse(event.target.value === 'inverse')}><option value="direct">Receita: pessoas e farinha</option><option value="inverse">Serviço: trabalhadores e tempo</option></select></label>
    <Slider label={inverse ? 'Trabalhadores' : 'Pessoas'} value={quantity} onChange={setQuantity} max={16} />
    <Diagram title={inverse ? `4 trabalhadores: 6 dias. ${quantity} trabalhadores: ${number(result)} dias.` : `4 pessoas: 300 g. ${quantity} pessoas: ${number(result)} g.`}><text x="20" y="35">Situação inicial</text><rect x="20" y="50" width="100" height="35" rx="6" /><text x="20" y="110">{inverse ? '4 trabalhadores · 6 dias' : '4 pessoas · 300 g'}</text><text x="20" y="150">Sua escolha</text><rect x="20" y="165" width={Math.min(350, inverse ? result / 24 * 350 : quantity / 16 * 350)} height="35" rx="6" /><text x="20" y="225">{quantity} {inverse ? `trabalhadores · ${number(result)} dias` : `pessoas · ${number(result)} g`}</text></Diagram>
    <output className="math-result" aria-live="polite">{inverse ? `Tempo = 4 × 6 ÷ ${quantity} = ${number(result)} dias` : `Farinha = 300 ÷ 4 × ${quantity} = ${number(result)} g`}</output><p>{inverse ? 'O comprimento da barra mostra o tempo. Mais trabalhadores reduzem o tempo para o mesmo serviço, com produtividade constante.' : 'O comprimento da barra mostra a farinha. Cada pessoa acrescenta 75 g à receita.'}</p></>
}
function Functions() {
  const [quadratic, setQuadratic] = useState(false)
  const [a, setA] = useState(2)
  const [b, setB] = useState(1)
  const [c, setC] = useState(0)
  const points = Array.from({ length: 101 }, (_, index) => { const x = -5 + index / 10; return [x, evaluateFunction(x, a, b, c, quadratic)] })
  const minimum = Math.min(-1, ...points.map(point => point[1])) - 1
  const maximum = Math.max(1, ...points.map(point => point[1])) + 1
  const sx = x => 40 + (x + 5) / 10 * 330
  const sy = y => 205 - (y - minimum) / (maximum - minimum) * 175
  const vertex = quadratic && a !== 0 ? -b / (2 * a) : null
  return <><label className="math-select">Tipo de função<select value={quadratic ? 'quadratic' : 'affine'} onChange={event => setQuadratic(event.target.value === 'quadratic')}><option value="affine">Afim: ax + b</option><option value="quadratic">Quadrática: ax² + bx + c</option></select></label>
    <Slider label="Coeficiente a" min={-3} max={3} value={a} onChange={setA} /><Slider label="Coeficiente b" min={-5} max={5} value={b} onChange={setB} />{quadratic && <Slider label="Coeficiente c" min={-5} max={5} value={c} onChange={setC} />}
    <Diagram title={`Gráfico de f(x) = ${a}${quadratic ? 'x²' : 'x'} + ${b}${quadratic ? `x + ${c}` : ''}, para −5 ≤ x ≤ 5. O eixo vertical se ajusta aos valores.`}>
      <line x1="40" y1={sy(0)} x2="375" y2={sy(0)} /><line x1={sx(0)} y1="25" x2={sx(0)} y2="210" />
      {[-5, 0, 5].map(x => <text key={x} x={sx(x)} y="230" textAnchor="middle">{x}</text>)}<text x="5" y="35">{number(maximum)}</text><text x="5" y="205">{number(minimum)}</text><text x="375" y={Math.max(20, sy(0) - 8)}>x</text><text x={sx(0) + 8} y="20">y</text>
      <polyline points={points.map(([x, y]) => `${sx(x)},${sy(y)}`).join(' ')} />{vertex !== null && vertex >= -5 && vertex <= 5 && <circle cx={sx(vertex)} cy={sy(evaluateFunction(vertex, a, b, c, true))} r="5" />}
    </Diagram><output className="math-result" aria-live="polite">f(x) = {a}{quadratic ? 'x²' : 'x'} {b >= 0 ? '+' : '−'} {Math.abs(b)}{quadratic ? `x ${c >= 0 ? '+' : '−'} ${Math.abs(c)}` : ''} · f(2) = {number(evaluateFunction(2, a, b, c, quadratic))}</output>
    <p>O domínio mostrado é de −5 a 5. A escala vertical se ajusta: confira os limites escritos no gráfico.{quadratic ? a === 0 ? ' Com a = 0, a expressão deixa de ser quadrática.' : ` O vértice tem x = ${number(vertex)} e representa um ${a > 0 ? 'mínimo' : 'máximo'}.` : ` A reta é ${a === 0 ? 'constante' : a > 0 ? 'crescente' : 'decrescente'}.`}</p></>
}
function Geometry() {
  const [shape, setShape] = useState('rectangle')
  const [width, setWidth] = useState(4)
  const [height, setHeight] = useState(3)
  const round = shape === 'circle' || shape === 'cylinder'
  const area = round ? Math.PI * width ** 2 : width * height / (shape === 'triangle' ? 2 : 1)
  const volume = area * height
  const w = width * 16, h = height * 12
  return <><label className="math-select">Figura<select value={shape} onChange={event => setShape(event.target.value)}><option value="rectangle">Retângulo</option><option value="triangle">Triângulo</option><option value="circle">Círculo</option><option value="cylinder">Cilindro</option></select></label>
    <Slider label={round ? 'Raio (m)' : 'Base (m)'} value={width} onChange={setWidth} />{shape !== 'circle' && <Slider label="Altura (m)" value={height} onChange={setHeight} />}
    <Diagram title={`${shape === 'rectangle' ? 'Retângulo' : shape === 'triangle' ? 'Triângulo' : shape === 'circle' ? 'Círculo' : 'Cilindro'} com ${round ? 'raio' : 'base'} de ${width} m${shape !== 'circle' ? ` e altura de ${height} m` : ''}. Desenho ilustrativo.`}>
      {shape === 'rectangle' && <rect x={200 - w / 2} y={125 - h / 2} width={w} height={h} rx="2" />}
      {shape === 'triangle' && <><polygon points={`${200-w/2},${125+h/2} ${200+w/2},${125+h/2} 200,${125-h/2}`} /><line x1="200" x2="200" y1={125+h/2} y2={125-h/2} strokeDasharray="4 4" /></>}
      {shape === 'circle' && <><circle cx="200" cy="115" r={width * 7} /><line x1="200" y1="115" x2={200 + width * 7} y2="115" /></>}
      {shape === 'cylinder' && <><rect x={200-w/2} y={125-h/2} width={w} height={h} /><ellipse cx="200" cy={125+h/2} rx={w/2} ry={Math.max(3,w/9)} /><ellipse cx="200" cy={125-h/2} rx={w/2} ry={Math.max(3,w/9)} /></>}
      <text x="200" y="225" textAnchor="middle">{round ? 'Raio' : 'Base'}: {width} m{shape !== 'circle' ? ` · altura: ${height} m` : ''}</text>
    </Diagram><output className="math-result" aria-live="polite">{shape === 'cylinder' ? `Volume = π × ${width}² × ${height} ≈ ${number(volume)} m³ (${number(volume * 1000)} L)` : `Área = ${number(area)} m²${shape === 'rectangle' ? ` · perímetro = ${2*(width+height)} m` : shape === 'circle' ? ` · circunferência ≈ ${number(2*Math.PI*width)} m` : ''}`}</output>
    <p>{shape === 'triangle' ? 'A altura é perpendicular à base. Observe como o triângulo ocupa metade da área do retângulo de mesma base e altura.' : shape === 'cylinder' ? 'O cilindro é ilustrativo e não está em escala. O raio altera a área da base ao quadrado; a altura multiplica essa área para produzir volume.' : 'Compare as medidas: área usa unidades quadradas; contorno usa unidades de comprimento.'}</p></>
}
function Statistics() {
  const [input, setInput] = useState('2, 3, 3, 12')
  const tokens = input.split(/[,;\s]+/).filter(Boolean)
  const values = tokens.map(Number)
  const valid = values.length > 0 && values.length <= 20 && values.every(value => Number.isFinite(value) && value >= -100 && value <= 1000)
  const stats = valid ? describeData(values) : null
  const min = Math.min(0, ...values.filter(Number.isFinite))
  const max = Math.max(1, ...values.filter(Number.isFinite))
  const sy = y => 205 - (y-min) / (max-min || 1) * 175
  return <><label className="math-select">Seus dados<input value={input} onChange={event => setInput(event.target.value)} /></label><p>Digite até 20 valores entre −100 e 1.000. Separe por vírgulas; use ponto para decimais.</p>
    {!stats ? <p role="status">Digite uma lista válida para calcular e visualizar os dados.</p> : <><Diagram title={`Gráfico dos ${values.length} valores informados. Média ${number(stats.mean)}, mediana ${number(stats.median)}.`}>
      <line x1="30" x2="380" y1={sy(0)} y2={sy(0)} />{values.map((value, index) => {const x = 35 + index * 340 / values.length; return <g key={index}><rect x={x} y={Math.min(sy(0),sy(value))} width={Math.max(5, 300/values.length)} height={Math.max(1,Math.abs(sy(value)-sy(0)))} rx="2" />{values.length <= 10 && <text x={x+150/values.length} y={value >= 0 ? Math.max(16,sy(value)-6) : Math.min(230,sy(value)+16)} textAnchor="middle">{number(value)}</text>}</g>})}
    </Diagram><div className="math-metrics" aria-live="polite">{[['Média',number(stats.mean)],['Mediana',number(stats.median)],['Moda',stats.modes.length ? stats.modes.map(number).join(', ') : 'Sem moda destacada'],['Amplitude',number(stats.range)]].map(([label,value]) => <div key={label}><span>{label}</span><strong>{value}</strong></div>)}</div><p>Lista ordenada: {stats.ordered.map(number).join(' · ')}. Experimente trocar 12 por 100 e observe qual medida muda mais.</p></>}
  </>
}
function Probability() {
  const [blue,setBlue] = useState(3)
  const [red,setRed] = useState(2)
  const [replacement,setReplacement] = useState(false)
  const chances = urnChances(blue,red,replacement)
  const total = blue+red
  return <><Slider label="Bolas azuis" min={0} max={8} value={blue} onChange={setBlue} /><Slider label="Bolas vermelhas" min={0} max={8} value={red} onChange={setRed} /><label className="math-checkbox"><input type="checkbox" checked={replacement} onChange={event => setReplacement(event.target.checked)} />Repor a primeira bola antes da segunda retirada</label>
    <Diagram title={`Urna ilustrativa com ${blue} bolas azuis e ${red} vermelhas. Retirada ${replacement ? 'com' : 'sem'} reposição.`}><rect x="85" y="25" width="230" height="185" rx="20" className="math-urn" />{Array.from({length:total},(_,index) => <circle key={index} cx={120+(index%4)*50} cy={55+Math.floor(index/4)*40} r="12" className={index<blue ? 'math-blue' : 'math-red'} />)}<text x="200" y="235" textAnchor="middle">{blue} azuis · {red} vermelhas</text></Diagram>
    {!chances ? <p role="status">{replacement ? 'Inclua ao menos uma bola.' : 'Inclua ao menos duas bolas para realizar duas retiradas sem reposição.'}</p> : <><div className="math-probability-paths"><div><strong>Caminho azul → azul</strong><p>{blue}/{total} × {replacement ? blue : Math.max(0,blue-1)}/{replacement ? total : total-1} = {number(chances.blueBlue*100)}%</p></div><div><strong>Caminho vermelha → vermelha</strong><p>{red}/{total} × {replacement ? red : Math.max(0,red-1)}/{replacement ? total : total-1} = {number(chances.redRed*100)}%</p></div></div><output className="math-result" aria-live="polite">Duas da mesma cor: {number((chances.blueBlue+chances.redRed)*100)}%</output><p>{replacement ? 'A urna volta ao estado inicial: as probabilidades da segunda retirada permanecem iguais.' : 'A primeira bola sai da urna. O total diminui em 1 e a quantidade da cor retirada também diminui em 1.'} Cores e legendas identificam os grupos; não há sorteio simulado.</p></>}
  </>
}
const explorers = { porcentagem: Percentages, 'regra-de-tres': Proportions, funcoes: Functions, geometria: Geometry, estatistica: Statistics, probabilidade: Probability }
function Challenges({ questions }) {
  const [answers,setAnswers] = useState({})
  const id = useId()
  const answered = Object.keys(answers).length
  const correct = questions.filter((question,index) => answers[index] === question.answer).length
  return <section className="math-challenges"><h3>Confira o que você aprendeu</h3><p>Atividades autorais de fixação. Escolha uma alternativa para receber a explicação.</p>{questions.map((question,index) => <fieldset key={index}><legend>{index+1}. {question.text}</legend>{question.options.map((option,optionIndex) => <label key={optionIndex}><input type="radio" name={`${id}-${index}`} checked={answers[index]===optionIndex} onChange={() => setAnswers(previous => ({...previous,[index]:optionIndex}))} />{option}</label>)}{answers[index]!==undefined && <div className="math-feedback" role="status"><strong>{answers[index]===question.answer ? 'Você acertou.' : `Reveja: a resposta é ${question.options[question.answer]}.`}</strong><p>{question.explanation}</p></div>}</fieldset>)}{answered>0 && <p aria-live="polite">{correct} acertos em {answered} questões respondidas.</p>}<button className="study-text-button" onClick={() => setAnswers({})}>Reiniciar atividades</button></section>
}
export default function MathStudyLesson({ lesson, topicId }) {
  const Explorer = explorers[topicId]
  const id = useId()
  return <div className="math-complete-lesson"><div className="math-goal"><span>O que você vai aprender</span><p>{lesson.goal}</p></div><nav className="math-contents" aria-label="Conteúdo do resumo">{lesson.sections.map((section,index) => <a href={`#${id}-${index}`} key={section.title}>{index+1}. {section.title}</a>)}<a href={`#${id}-explore`}>Explore na prática</a></nav>
    {lesson.sections.map((section,index) => <section id={`${id}-${index}`} key={section.title}><h3>{section.title}</h3>{section.paragraphs.map(paragraph => <p key={paragraph}>{paragraph}</p>)}<div className="math-formula">{section.formula}</div></section>)}
    <section className="math-solved"><h3>Exemplos práticos resolvidos</h3>{lesson.examples.map(example => <article key={example.title}><h4>{example.title}</h4><p>{example.problem}</p><ol>{example.steps.map(step => <li key={step}>{step}</li>)}</ol><strong>{example.answer}</strong></article>)}</section>
    <section id={`${id}-explore`} className="math-explorer"><p className="eyebrow">Veja a matemática acontecer</p><h3>Explore na prática</h3><p>Altere os valores para acompanhar a figura e o resultado.</p>{Explorer ? <Explorer /> : <AdvancedMathExplorer key={topicId} topicId={topicId} />}</section>
    <section><h3>Erros comuns e como evitá-los</h3><ul>{lesson.mistakes.map(mistake => <li key={mistake}>{mistake}</li>)}</ul></section><Challenges questions={lesson.challenges} />
  </div>
}
