import React, { useState } from 'react'
import { validMinutes } from './lib/examSession'

export default function ExamSetup({ title, count, onStart, onBack }) {
  const [mode, setMode] = useState('study')
  const [minutes, setMinutes] = useState('60')
  return <main className="session-setup">
    <section className="session-card">
      <p className="eyebrow">Prepare sua sessão</p><h1>{title}</h1>
      <p>{count} questões. Escolha como deseja praticar.</p>
      <fieldset><legend>Modo de prática</legend>
        <label><input type="radio" name="session-mode" checked={mode === 'study'} onChange={() => setMode('study')} /> Estudo livre — sem limite de tempo</label>
        <label><input type="radio" name="session-mode" checked={mode === 'timed'} onChange={() => setMode('timed')} /> Modo de prova — com cronômetro</label>
      </fieldset>
      {mode === 'timed' && <><label className="session-time">Duração em minutos<input type="number" min="1" max="600" step="1" value={minutes} onChange={(event) => setMinutes(event.target.value)} /></label>
        <p>Escolha de 1 a 600 minutos. O tempo começa ao iniciar, continua enquanto você estiver em outra aba e encerra a prova automaticamente. Sair da prova encerra esta sessão.</p>
        {!validMinutes(minutes) && <p role="alert">Informe um número inteiro de 1 a 600.</p>}</>}
      <div className="result-actions"><button className="button primary" disabled={mode === 'timed' && !validMinutes(minutes)} onClick={() => onStart(mode === 'timed' ? Number(minutes) : null)}>Iniciar prova</button><button className="button secondary" onClick={onBack}>Voltar</button></div>
    </section>
  </main>
}
