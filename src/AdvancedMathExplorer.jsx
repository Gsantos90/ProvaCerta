import React, { useId, useState } from 'react'

const fmt = value => value.toLocaleString('pt-BR', { maximumFractionDigits: 3 })
function Slider({ label, value, onChange, min, max, step = 1 }) {
  return <label className="math-slider"><span>{label}<strong>{fmt(value)}</strong></span><input type="range" min={min} max={max} step={step} value={value} onChange={event => onChange(Number(event.target.value))} /></label>
}
function Diagram({ title, children }) {
  const id = useId()
  return <svg className="math-diagram" viewBox="0 0 400 260" role="img" aria-labelledby={id}><title id={id}>{title}</title>{children}</svg>
}
function Base({ value, onChange }) {
  return <label className="math-select">Base<select value={value} onChange={event => onChange(Number(event.target.value))}>{[0.25, 0.5, 2, 3, 10].map(base => <option key={base} value={base}>{fmt(base)}</option>)}</select></label>
}
function Curve({ title, fn, xMin = -5, xMax = 5, point }) {
  const clip = useId()
  const px = x => 35 + (x - xMin) / (xMax - xMin) * 340
  const py = y => 220 - (y + 6) / 14 * 190
  const points = Array.from({ length: 241 }, (_, i) => { const x = xMin + (xMax - xMin) * i / 240; return [px(x), py(fn(x))] }).filter(pair => pair.every(Number.isFinite)).map(pair => pair.join(',')).join(' ')
  return <Diagram title={title}>
    <defs><clipPath id={clip}><rect x="35" y="30" width="340" height="190" /></clipPath></defs>
    <line x1="35" y1={py(0)} x2="375" y2={py(0)} /><line x1={px(0)} y1="30" x2={px(0)} y2="220" />
    {[xMin, (xMin + xMax) / 2, xMax].map(x => <text key={x} x={px(x)} y="242" textAnchor="middle">{fmt(x)}</text>)}
    {[-6, 0, 8].map(y => <text key={y} x="25" y={py(y) + 4} textAnchor="end">{y}</text>)}
    <text x="380" y={py(0) - 7}>x</text><text x={px(0) + 8} y="20">y</text>
    <g clipPath={`url(#${clip})`}><polyline points={points} /><circle cx={px(point[0])} cy={py(point[1])} r="5" /></g>
  </Diagram>
}
function Triangle() {
  const [angle, setAngle] = useState(30)
  const theta = angle * Math.PI / 180
  const x = 70 + 220 * Math.cos(theta), y = 220 - 220 * Math.sin(theta)
  return <><Slider label="Ângulo de referência (graus)" min={10} max={80} value={angle} onChange={setAngle} />
    <Diagram title={`Triângulo retângulo com ângulo ${angle} graus e hipotenusa 10.`}><polygon points={`70,220 ${x},220 ${x},${y}`} /><text x="72" y="245">θ = {angle}°</text><text x={(70 + x) / 2} y="210" textAnchor="middle">adjacente</text><text x={x + 8} y={(220 + y) / 2}>oposto</text><text x={(70 + x) / 2 - 12} y={(220 + y) / 2 - 10}>10</text></Diagram>
    <output className="math-result" aria-live="polite">Hipotenusa = 10; oposto = {fmt(10 * Math.sin(theta))}; adjacente = {fmt(10 * Math.cos(theta))}.<br />sen θ = {fmt(Math.sin(theta))}; cos θ = {fmt(Math.cos(theta))}; tg θ = {fmt(Math.tan(theta))}.</output><p>Ao manter a hipotenusa fixa e aumentar o ângulo agudo, o cateto oposto cresce e o adjacente diminui. Os lados exibidos são aproximados.</p></>
}
function Circle() {
  const [angle, setAngle] = useState(45)
  const theta = angle * Math.PI / 180, sin = Math.sin(theta), cos = Math.cos(theta)
  return <><Slider label="Ângulo no ciclo (graus)" min={0} max={360} value={angle} onChange={setAngle} />
    <Diagram title={`Círculo unitário: cosseno ${fmt(cos)} e seno ${fmt(sin)} em ${angle} graus.`}><circle cx="200" cy="130" r="90" style={{ fill: 'none' }} /><line x1="80" y1="130" x2="320" y2="130" /><line x1="200" y1="15" x2="200" y2="245" /><line x1="200" y1="130" x2={200 + 90 * cos} y2={130 - 90 * sin} /><circle cx={200 + 90 * cos} cy={130 - 90 * sin} r="5" /><text x="322" y="125">cos θ</text><text x="210" y="20">sen θ</text></Diagram>
    <output className="math-result" aria-live="polite">sen²θ + cos²θ = {fmt(sin * sin)} + {fmt(cos * cos)} ≈ 1.<br />tg θ = {Math.abs(cos) < 1e-10 ? 'não definida: cos θ = 0' : fmt(sin / cos)}.</output><p>As coordenadas mudam de sinal nos quadrantes. A soma dos quadrados permanece 1; pequenas diferenças na soma dos valores mostrados vêm do arredondamento.</p></>
}
function Area() {
  const [base, setBase] = useState(8), [height, setHeight] = useState(5), [shift, setShift] = useState(0)
  return <><Slider label="Base (cm)" min={2} max={12} value={base} onChange={setBase} /><Slider label="Altura (cm)" min={2} max={8} value={height} onChange={setHeight} /><Slider label="Deslocamento horizontal do vértice (cm)" min={-2} max={8} value={shift} onChange={setShift} />
    <Diagram title={`Triângulo de base ${base} cm e altura ${height} cm; área ${base * height / 2} cm quadrados.`}><polygon points={`80,215 ${80 + base * 20},215 ${160 + shift * 20},${215 - height * 20}`} /><line x1={160 + shift * 20} y1={215 - height * 20} x2={160 + shift * 20} y2="215" strokeDasharray="5 4" /><line x1="40" y1="215" x2="365" y2="215" /><text x="80" y="240">Base = {base} cm; altura = {height} cm</text></Diagram>
    <output className="math-result" aria-live="polite">A = {base} × {height}/2 = {fmt(base * height / 2)} cm².</output><p>Desloque apenas o vértice superior: a altura e a base permanecem iguais, por isso a área não muda. A altura pode ficar fora do triângulo.</p></>
}
function Inequality() {
  const [a, setA] = useState(2), [b, setB] = useState(2), [c, setC] = useState(6)
  const bound = (c - b) / a
  return <><label className="math-select">Coeficiente a<select value={a} onChange={event => setA(Number(event.target.value))}>{[-4, -2, -1, 1, 2, 4].map(value => <option key={value} value={value}>{value}</option>)}</select></label><Slider label="Termo b" min={-6} max={6} value={b} onChange={setB} /><Slider label="Limite c" min={-6} max={6} value={c} onChange={setC} />
    <output className="math-result" aria-live="polite">{a}x + ({b}) ≤ {c}<br />{a}x ≤ {c - b}<br />x {a > 0 ? '≤' : '≥'} {fmt(bound)}.<br />Solução: {a > 0 ? `(−∞, ${fmt(bound)}]` : `[${fmt(bound)}, ∞)`}.</output><p>{a < 0 ? 'Ao dividir por a negativo, o sentido da desigualdade se inverte.' : 'Ao dividir por a positivo, o sentido da desigualdade é preservado.'} O extremo é incluído porque a comparação permite igualdade. As exibições decimais são aproximadas.</p></>
}
function Logarithms() {
  const [base, setBase] = useState(2), [exponent, setExponent] = useState(3)
  const argument = base ** exponent
  return <><Base value={base} onChange={setBase} /><Slider label="Expoente procurado" min={-4} max={4} value={exponent} onChange={setExponent} /><output className="math-result" aria-live="polite">{fmt(base)} elevado a {exponent} = {fmt(argument)}.<br />Logo, log na base {fmt(base)} de {fmt(argument)} = {exponent}.</output><p>O resultado do logaritmo pode ser negativo, mas o argumento permanece positivo. Experimente uma base entre zero e 1 e compare os resultados. Valores decimais exibidos são aproximados.</p></>
}
function FunctionGraph({ type }) {
  const [base, setBase] = useState(2), [x, setX] = useState(1)
  const [a, setA] = useState(1), [b, setB] = useState(0), [c, setC] = useState(0)
  const logarithmic = type === 'funcao-logaritmica', quadratic = type === 'funcao-quadratica'
  const fn = quadratic ? value => a * value * value + b * value + c : logarithmic ? value => Math.log(value) / Math.log(base) : value => base ** value
  const value = fn(x)
  const vertex = -b / (2 * a)
  return <>{quadratic ? <><label className="math-select">Coeficiente a<select value={a} onChange={event => setA(Number(event.target.value))}>{[-2, -1, 0.5, 1, 2].map(value => <option key={value} value={value}>{fmt(value)}</option>)}</select></label><Slider label="Coeficiente b" min={-4} max={4} value={b} onChange={setB} /><Slider label="Coeficiente c" min={-4} max={4} value={c} onChange={setC} /></> : <Base value={base} onChange={setBase} />}
    <Slider label="Entrada x" min={logarithmic ? 0.25 : -4} max={4} step={0.25} value={x} onChange={setX} />
    <Curve title={`Gráfico de ${quadratic ? 'função quadrática' : logarithmic ? 'função logarítmica' : 'função exponencial'}; ponto (${fmt(x)}, ${fmt(value)}).`} fn={fn} xMin={logarithmic ? 0 : -5} xMax={5} point={[x, value]} />
    <output className="math-result" aria-live="polite">{quadratic ? `f(x) = ${fmt(a)}x² + (${fmt(b)})x + (${fmt(c)})` : logarithmic ? `f(x) = log na base ${fmt(base)} de x` : `f(x) = ${fmt(base)}ˣ`}<br />f({fmt(x)}) ≈ {fmt(value)}.{quadratic && <><br />Vértice: ({fmt(vertex)}, {fmt(fn(vertex))}); {a > 0 ? 'mínimo' : 'máximo'} no domínio real completo.</>}</output>
    <p>{quadratic ? 'Troque o sinal de a para comparar as concavidades. Alterar b também muda o eixo de simetria.' : logarithmic ? 'O domínio é x > 0; o gráfico passa por (1,0). Bases entre zero e 1 produzem uma função decrescente.' : 'O gráfico passa por (0,1) e suas saídas são positivas. Bases entre zero e 1 produzem decaimento.'} A janela mostra y entre −6 e 8; partes fora desse intervalo ficam cortadas. Valores exibidos são aproximados.</p></>
}

export default function AdvancedMathExplorer({ topicId }) {
  if (topicId === 'trigonometria') return <Triangle />
  if (topicId === 'relacoes-trigonometricas') return <Circle />
  if (topicId === 'areas-poligonos-triangulos') return <Area />
  if (topicId === 'inequacoes') return <Inequality />
  if (topicId === 'logaritmos') return <Logarithms />
  return <FunctionGraph type={topicId} />
}
