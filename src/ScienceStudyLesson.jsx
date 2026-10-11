import React, { useState } from 'react'
import ChemistryStudyLesson from './ChemistryStudyLesson'
import { circuit, motion, energyFall, trophicLevels, crossGenotypes, selectionPath } from './lib/scienceCalculations'
import './scienceStudyLesson.css'

const n = value => value.toLocaleString('pt-BR', { maximumFractionDigits: 2 })
function Slider({ label, value, setValue, min = 0, max, step = 1, unit = '' }) {
  return <label className="math-slider"><span>{label}<strong>{n(value)} {unit}</strong></span><input type="range" min={min} max={max} step={step} value={value} onChange={event => setValue(Number(event.target.value))} /></label>
}
function Select({ label, value, setValue, options }) {
  return <label className="math-select">{label}<select value={value} onChange={event => setValue(event.target.value)}>{options.map(([id, name]) => <option key={id} value={id}>{name}</option>)}</select></label>
}
function Result({ children }) { return <output className="math-result" aria-live="polite">{children}</output> }
function Bars({ rows, unit, title }) {
  const maximum = unit === '%' ? 100 : Math.max(1, ...rows.map(row => row[1]))
  return <div className="science-bars" role="img" aria-label={`${title}: ${rows.map(([label, value]) => `${label}: ${n(value)} ${unit}`).join('; ')}`}>{rows.map(([label, value]) => <div key={label}><span>{label}<strong>{n(value)} {unit}</strong></span><div className="science-bar-track"><div style={{ width: `${value / maximum * 100}%` }} /></div></div>)}</div>
}
function CircuitExplorer() {
  const [voltage, setVoltage] = useState(12)
  const [r1, setR1] = useState(4)
  const [r2, setR2] = useState(8)
  const [mode, setMode] = useState('series')
  const result = circuit(voltage, r1, r2, mode === 'parallel')
  return <><p>Compare dois resistores ôhmicos ligados a uma fonte ideal, com fios sem resistência. Troque a associação e observe corrente e tensão em cada resistor.</p><Select label="Associação" value={mode} setValue={setMode} options={ [['series', 'Em série: um único caminho'], ['parallel', 'Em paralelo: dois ramos']] } /><Slider label="Tensão da fonte" value={voltage} setValue={setVoltage} max={24} unit="V" /><Slider label="Resistor R₁" value={r1} setValue={setR1} min={1} max={30} unit="Ω" /><Slider label="Resistor R₂" value={r2} setValue={setR2} min={1} max={30} unit="Ω" /><Result>R equivalente = {n(result.resistance)} Ω<br />Corrente total = {n(result.current)} A<br />Potência total = {n(result.power)} W</Result><div className="science-table-wrap"><table><caption>O que acontece em cada resistor</caption><thead><tr><th scope="col">Resistor</th><th scope="col">Corrente</th><th scope="col">Tensão</th></tr></thead><tbody><tr><th scope="row">R₁</th><td>{n(result.i1)} A</td><td>{n(result.u1)} V</td></tr><tr><th scope="row">R₂</th><td>{n(result.i2)} A</td><td>{n(result.u2)} V</td></tr></tbody></table></div><p>{mode === 'series' ? 'A corrente é a mesma: confira que as duas quedas de tensão somam a tensão da fonte.' : 'A tensão é a mesma: confira que as correntes dos ramos somam a corrente total. A resistência equivalente é menor que cada resistência individual.'}</p></>
}
function WavesExplorer() {
  const [speed, setSpeed] = useState(340)
  const [frequency, setFrequency] = useState(170)
  const [amplitude, setAmplitude] = useState(20)
  const wavelength = speed / frequency
  const widthMeters = 8
  const points = Array.from({ length: 301 }, (_, i) => `${30 + i},${90 - amplitude * Math.sin((i / 300 * widthMeters) / wavelength * 2 * Math.PI)}`).join(' ')
  return <><p>Veja um perfil espacial senoidal em um instante. Frequência e velocidade determinam λ; a amplitude altera a altura da curva. A faixa desenhada representa 8 m.</p><Slider label="Velocidade de propagação" value={speed} setValue={setSpeed} min={100} max={400} step={10} unit="m/s" /><Slider label="Frequência" value={frequency} setValue={setFrequency} min={50} max={200} step={10} unit="Hz" /><Slider label="Amplitude gráfica ilustrativa" value={amplitude} setValue={setAmplitude} min={5} max={45} unit="unidades" /><svg viewBox="0 0 360 190" className="science-diagram" role="img" aria-label={`Onda em uma faixa de 8 metros; comprimento ${n(wavelength)} metros. Amplitude gráfica ${amplitude}.`}><line x1="30" y1="90" x2="330" y2="90" /><polyline points={points} /><text x="30" y="170">0 m</text><text x="300" y="170">8 m</text><text x="100" y="25">Perfil no espaço, em um instante</text></svg><Result>λ = v/f = {speed}/{frequency} = {n(wavelength)} m<br />T = 1/f = {n(1000 / frequency)} ms</Result><p>Com velocidade fixa, dobrar f reduz λ à metade. Mudar a amplitude não altera λ nem T neste modelo linear. Os controles representam cenários distintos; mudar a velocidade não simula, por si só, uma fonte atravessando meios.</p></>
}
function MotionExplorer() {
  const [v0, setV0] = useState(4)
  const [acceleration, setAcceleration] = useState(2)
  const [time, setTime] = useState(5)
  const result = motion(v0, acceleration, time)
  const samples = Array.from({ length: 41 }, (_, i) => motion(v0, acceleration, i / 40 * 10).displacement)
  const minimum = Math.min(0, ...samples)
  const maximum = Math.max(1, ...samples)
  const y = value => 155 - (value - minimum) / (maximum - minimum) * 115
  return <><p>Movimento retilíneo com x₀ = 0 e aceleração constante. Escolha sinais e tempo; o gráfico mostra x(t) de 0 a 10 s.</p><Slider label="Velocidade inicial" value={v0} setValue={setV0} min={-10} max={10} unit="m/s" /><Slider label="Aceleração" value={acceleration} setValue={setAcceleration} min={-4} max={4} unit="m/s²" /><Slider label="Instante observado" value={time} setValue={setTime} max={10} step={0.5} unit="s" /><svg className="science-diagram" viewBox="0 0 360 205" role="img" aria-label={`Gráfico posição versus tempo. No instante ${time} segundos, posição ${n(result.displacement)} metros e velocidade ${n(result.velocity)} metros por segundo.`}><line x1="40" y1={y(0)} x2="325" y2={y(0)} /><polyline points={samples.map((value, i) => `${40 + i / 40 * 280},${y(value)}`).join(' ')} /><circle cx={40 + time / 10 * 280} cy={y(result.displacement)} r="5" /><text x="8" y="40">x (m)</text><text x="240" y="195">t (s): 0 a 10</text><text x="45" y="32">Escala vertical: {n(minimum)} a {n(maximum)} m</text></svg><Result>v = {v0} + ({acceleration}) × {n(time)} = {n(result.velocity)} m/s<br />Δx = {v0} × {n(time)} + ({acceleration}) × {n(time)}²/2 = {n(result.displacement)} m</Result><p>A posição é uma coordenada com sinal, não a distância total. Uma velocidade negativa indica o sentido negativo. Quando a = 0, o gráfico é uma reta; quando a ≠ 0, é uma parábola neste modelo. O ponto destacado marca o instante escolhido.</p></>
}
function EnergyExplorer() {
  const [mass, setMass] = useState(2)
  const [height, setHeight] = useState(5)
  const [loss, setLoss] = useState(0)
  const result = energyFall(mass, height, loss / 100)
  return <><p>Um corpo parte do repouso a uma altura h. Use g = 10 m/s² e nível de referência no chão. A perda escolhida representa a fração da energia mecânica transformada em outras formas antes de chegar ao chão.</p><Slider label="Massa" value={mass} setValue={setMass} min={1} max={10} unit="kg" /><Slider label="Altura inicial" value={height} setValue={setHeight} max={20} unit="m" /><Slider label="Fração transformada em outras formas" value={loss} setValue={setLoss} max={100} unit="%" /><Bars title="Balanço energético" rows={ [['Potencial inicial', result.initial], ['Cinética final', result.kinetic], ['Outras formas', result.lost]] } unit="J" /><Result>Energia inicial = mgh = {n(result.initial)} J<br />Cinética final = {n(result.kinetic)} J<br />Velocidade final = √(2Ec/m) = {n(result.speed)} m/s</Result><p>{loss === 0 ? 'Sem perdas mecânicas, toda a energia potencial inicial vira cinética. Mudar a massa altera a energia, mas não a velocidade final nesta queda ideal.' : 'A energia mecânica final é menor, mas a energia total é conservada: cinética final + energia transformada = potencial inicial. A fração informada é uma hipótese de balanço, não uma simulação de uma força de arrasto específica.'}</p></>
}
function EcologyExplorer() {
  const [initial, setInitial] = useState(10000)
  const [efficiency, setEfficiency] = useState(10)
  const levels = trophicLevels(initial, efficiency)
  return <><p>Construa uma cadeia de quatro níveis e compare a energia disponibilizada em cada transferência. A eficiência é escolhida para o exercício e é a mesma em todas as passagens deste modelo.</p><Slider label="Energia nos produtores" value={initial} setValue={setInitial} min={1000} max={20000} step={1000} unit="kJ" /><Slider label="Eficiência de transferência" value={efficiency} setValue={setEfficiency} min={5} max={30} unit="%" /><Bars title="Energia por nível trófico, barras em escala linear" rows={ ['Produtores', 'Consumidores primários', 'Consumidores secundários', 'Consumidores terciários'].map((label, i) => [label, levels[i]]) } unit="kJ" /><Result>Produtores → primários: {n(levels[0])} × {efficiency}/100 = {n(levels[1])} kJ<br />Primários → secundários: {n(levels[1])} × {efficiency}/100 = {n(levels[2])} kJ<br />Secundários → terciários: {n(levels[2])} × {efficiency}/100 = {n(levels[3])} kJ</Result><p>As barras usam a mesma escala; valores muito pequenos podem ser pouco visíveis, por isso os números também são exibidos. Mais energia na base sustenta maior disponibilidade nos níveis seguintes. A energia não é reciclada; os nutrientes seguem outros processos.</p></>
}
function GeneticsExplorer() {
  const [parent1, setParent1] = useState('Aa')
  const [parent2, setParent2] = useState('Aa')
  const [inheritance, setInheritance] = useState('complete')
  const result = crossGenotypes(parent1, parent2)
  const options = ['AA', 'Aa', 'aa'].map(value => [value, value])
  return <><p>Um locus autossômico em organismos diploides, com segregação usual e gametas equiprováveis. Compare genótipos e depois troque a hipótese sobre expressão.</p><Select label="Genótipo do primeiro progenitor" value={parent1} setValue={setParent1} options={options} /><Select label="Genótipo do segundo progenitor" value={parent2} setValue={setParent2} options={options} /><Select label="Modelo de expressão" value={inheritance} setValue={setInheritance} options={ [['complete', 'Dominância completa de A'], ['incomplete', 'Dominância incompleta: três fenótipos']] } /><div className="science-table-wrap"><table><caption>Quadro de Punnett: gametas e descendentes possíveis</caption><thead><tr><th scope="col">Gametas</th>{[...parent2].map((allele, index) => <th scope="col" key={index}>{allele}</th>)}</tr></thead><tbody>{[...parent1].map((allele, row) => <tr key={row}><th scope="row">{allele}</th>{[...parent2].map((_, col) => <td key={col}>{result.offspring[row * 2 + col]}</td>)}</tr>)}</tbody></table></div><Result>AA: {n(result.counts.AA * 100)}% · Aa: {n(result.counts.Aa * 100)}% · aa: {n(result.counts.aa * 100)}%<br />{inheritance === 'complete' ? `Fenótipo dominante: ${n((result.counts.AA + result.counts.Aa) * 100)}%; recessivo: ${n(result.counts.aa * 100)}%.` : `Três fenótipos distinguíveis: AA ${n(result.counts.AA * 100)}%; intermediário Aa ${n(result.counts.Aa * 100)}%; aa ${n(result.counts.aa * 100)}%.`}</Result><p>Trocar a expressão altera a classificação dos fenótipos, sem alterar as combinações genotípicas do cruzamento. Cada célula do quadro tem probabilidade de 25%, mesmo quando células repetem o mesmo resultado. Esses percentuais não obrigam uma família de quatro descendentes a apresentar a proporção exata.</p></>
}
function EvolutionExplorer() {
  const [initial, setInitial] = useState(20)
  const [fitness, setFitness] = useState(2)
  const [generations, setGenerations] = useState(5)
  const path = selectionPath(initial / 100, fitness, generations)
  return <><p>Compare dois tipos hereditários A e B em uma população idealizada. B contribui com 1 unidade reprodutiva; A contribui com o valor escolhido. Descendentes mantêm o tipo parental. Não há mutação, migração, recombinação nem deriva neste modelo determinístico simplificado.</p><Slider label="Frequência inicial de A" value={initial} setValue={setInitial} min={0} max={100} unit="%" /><Slider label="Contribuição reprodutiva relativa de A" value={fitness} setValue={setFitness} min={0.5} max={3} step={0.25} /><Slider label="Gerações" value={generations} setValue={setGenerations} min={1} max={8} /><Bars title="Frequência de A em cada geração" rows={path.map((value, i) => [`Geração ${i}`, value * 100])} unit="%" /><Result>Frequência final de A: {n(path.at(-1) * 100)}%<br />Regra: pseguinte = pw/[pw + (1 − p)], com w = {n(fitness)}.</Result><p>{fitness > 1 ? 'A deixa proporcionalmente mais descendentes e aumenta quando está presente junto com B.' : fitness < 1 ? 'A deixa proporcionalmente menos descendentes e diminui quando ambos os tipos estão presentes.' : 'As contribuições são iguais: não há mudança por seleção neste modelo.'} Se A começa ausente, permanece ausente: seleção, sozinha, não cria o tipo. Uma população real pode mudar também por outros mecanismos; esta não é a equação geral de seleção para qualquer herança diploide.</p></>
}
function UrbanExplorer() {
  const [urban, setUrban] = useState(600)
  const [rural, setRural] = useState(400)
  const [distance, setDistance] = useState(15)
  const [speed, setSpeed] = useState(30)
  const [waiting, setWaiting] = useState(20)
  const total = urban + rural
  const trip = distance / speed * 60 + waiting
  return <><p>Compare participação urbana e tempo de acesso. Os valores representam um território hipotético; o modelo de viagem usa velocidade média de percurso e soma a espera.</p><Slider label="População urbana" value={urban} setValue={setUrban} max={1000} step={50} unit="mil pessoas" /><Slider label="População rural" value={rural} setValue={setRural} max={1000} step={50} unit="mil pessoas" /><Result>{total ? `Taxa de urbanização = ${urban}/(${urban} + ${rural}) × 100 = ${n(urban / total * 100)}%. População total: ${total} mil.` : 'População total nula: não é possível calcular uma taxa.'}</Result><h4>Explore o deslocamento até o trabalho</h4><Slider label="Distância de ida" value={distance} setValue={setDistance} min={1} max={40} unit="km" /><Slider label="Velocidade média no percurso" value={speed} setValue={setSpeed} min={10} max={60} step={5} unit="km/h" /><Slider label="Espera e transferências" value={waiting} setValue={setWaiting} max={60} step={5} unit="min" /><Result>Tempo de ida = ({distance}/{speed}) × 60 + {waiting} = {n(trip)} min<br />Ida e volta nas mesmas condições = {n(trip * 2)} min</Result><p>Você pode reduzir o tempo encurtando a distância, melhorando o percurso ou diminuindo a espera. São intervenções diferentes. Estes números não medem sozinhos toda a desigualdade: tarifas, qualidade, horários e localização dos serviços também importam.</p></>
}
function ClimateExplorer() {
  const [solar, setSolar] = useState(20)
  const [wind, setWind] = useState(20)
  const [hydro, setHydro] = useState(30)
  const [fossil, setFossil] = useState(30)
  const [action, setAction] = useState('emissions')
  const total = solar + wind + hydro + fossil
  const renewable = solar + wind + hydro
  const actions = { emissions: ['Mitigação', 'Reduzir emissões de gases de efeito estufa atua sobre uma causa da mudança climática.'], drainage: ['Adaptação', 'Melhorar drenagem e planejamento para inundações reduz vulnerabilidade aos impactos.'], shade: ['Adaptação', 'Abrigos e acesso a espaços frescos em ondas de calor protegem pessoas expostas.'] }
  return <><p>Monte uma matriz elétrica hipotética usando quantidades de energia gerada no mesmo período e na mesma unidade. A participação não é a capacidade instalada. Aqui, solar, eólica e hidráulica são contadas como renováveis.</p><Slider label="Geração solar" value={solar} setValue={setSolar} max={100} step={5} unit="unidades" /><Slider label="Geração eólica" value={wind} setValue={setWind} max={100} step={5} unit="unidades" /><Slider label="Geração hidráulica" value={hydro} setValue={setHydro} max={100} step={5} unit="unidades" /><Slider label="Geração fóssil" value={fossil} setValue={setFossil} max={100} step={5} unit="unidades" /><Bars title="Energia gerada por fonte" rows={ [['Solar', solar], ['Eólica', wind], ['Hidráulica', hydro], ['Fóssil', fossil]] } unit="unidades" /><Result>{total ? `Total: ${total}. Renováveis: ${renewable}/${total} × 100 = ${n(renewable / total * 100)}%. Fósseis: ${n(fossil / total * 100)}%.` : 'Sem geração: não é possível calcular participações.'}</Result><p>Reduzir participação fóssil pode ocorrer por redução absoluta ou por aumento de outras fontes. O modelo não estima emissões nem garante impacto zero: tecnologias, locais e ciclo de vida precisam ser considerados.</p><Select label="Medida para analisar" value={action} setValue={setAction} options={ [['emissions', 'Reduzir emissões na geração'], ['drainage', 'Planejar drenagem e áreas de risco'], ['shade', 'Proteger pessoas em ondas de calor']] } /><div className="math-feedback" role="status"><strong>{actions[action][0]}</strong><p>{actions[action][1]}</p></div></>
}
export const scienceExplorers = { eletricidade: CircuitExplorer, ondas: WavesExplorer, cinematica: MotionExplorer, 'energia-mecanica': EnergyExplorer, ecologia: EcologyExplorer, genetica: GeneticsExplorer, evolucao: EvolutionExplorer, urbanizacao: UrbanExplorer, 'clima-energia': ClimateExplorer }
export default function ScienceStudyLesson({ lesson, topicId }) {
  return <ChemistryStudyLesson lesson={lesson} topicId={topicId} explorer={scienceExplorers[topicId]} />
}
