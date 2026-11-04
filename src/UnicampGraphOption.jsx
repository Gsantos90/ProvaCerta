import React from 'react'

export default function UnicampGraphOption({ graph, letter }) {
  if (graph.vector) return <svg className="unicamp-option-graph" viewBox={`0 0 ${graph.width} ${graph.height}`} role="img" aria-label={`Gráfico ${letter}: quantidade de poluente em função do tempo`}>
    <rect width={graph.width} height={graph.height} fill="white" />
    {graph.paths.map((path, index) => <path key={index} d={path.d} stroke="#111" strokeWidth={path.width} fill="none" />)}
    {graph.texts.map((text, index) => <text key={index} x={text.x} y={text.y} fontSize={text.size} fill="#111" fontFamily="Arial, sans-serif">{text.text}</text>)}
    <text transform={`translate(9 ${graph.height/2}) rotate(-90)`} textAnchor="middle" fontSize="9" fill="#111">Q(t)</text>
  </svg>
  return <svg className="unicamp-option-graph" viewBox="0 0 345 245" role="img" aria-label={`Gráfico ${letter}: posição em função do tempo`}>
    <rect width="345" height="245" fill="white" />
    <g stroke="#777" strokeWidth="0.8" strokeDasharray="3 3">
      {[200, 400, 600, 800].map(value => <path key={value} d={`M45 ${205-value/800*180}H315`} />)}
      {Array.from({ length: 13 }, (_, i) => <path key={i} d={`M${45+i*22.5} 25V205`} />)}
    </g>
    <g stroke="#111" strokeWidth="1" fill="none"><path d="M45 25H315V205H45Z" />{[30, 50, 80, 95].map(t => <path key={t} d={`M${45+t/120*270} 25V205`} />)}</g>
    <path d={graph.path} stroke="#111" strokeWidth="1.8" fill="none" />
    <g fill="#111" fontSize="12" fontFamily="Arial, sans-serif" textAnchor="middle">
      {[0, 20, 40, 60, 80, 100, 120].map(t => <text key={t} x={45+t/120*270} y="221">{t}</text>)}
      {[0, 200, 400, 600, 800].map(value => <text key={value} x="35" y={209-value/800*180} textAnchor="end">{value}</text>)}
      <text x="180" y="239">t (s)</text><text transform="translate(12 115) rotate(-90)">s(t) (m)</text>
      {[['I', 15], ['II', 40], ['III', 87.5], ['IV', 107.5]].map(([label, t]) => <text key={label} x={45+t/120*270} y="97">{label}</text>)}
    </g>
  </svg>
}
