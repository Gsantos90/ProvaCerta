import React, { useEffect, useId, useRef, useState } from 'react'
import { Compass, Headphones, Pause, Play, RotateCcw, RotateCw, Volume2, VolumeX, Download } from 'lucide-react'
import './studyPodcast.css'

export function audioTime(value) {
  const seconds = Number.isFinite(value) && value > 0 ? Math.floor(value) : 0
  return `${Math.floor(seconds / 60)}:${String(seconds % 60).padStart(2, '0')}`
}

export default function StudyPodcast({ podcast, active = true }) {
  const audio = useRef(null)
  const id = useId()
  const [playing, setPlaying] = useState(false)
  const [duration, setDuration] = useState(0)
  const [position, setPosition] = useState(0)
  const [speed, setSpeed] = useState(1)
  const [muted, setMuted] = useState(false)
  const [error, setError] = useState('')
  const src = `${import.meta.env.BASE_URL || '/'}${podcast.src}`
  useEffect(() => {
    if (!active) audio.current?.pause()
  }, [active])
  useEffect(() => {
    const element = audio.current
    return () => element?.pause()
  }, [])
  const toggle = async () => {
    const element = audio.current
    if (!element || !active) return
    if (!element.paused) { element.pause(); return }
    setError('')
    try {
      if (element.error) element.load()
      await element.play()
    } catch (reason) {
      if (reason.name !== 'AbortError') setError('Não foi possível reproduzir o episódio. Tente novamente ou baixe o áudio.')
    }
  }
  const seek = value => {
    if (!audio.current || !duration) return
    const time = Math.max(0, Math.min(duration, value))
    audio.current.currentTime = time
    setPosition(time)
  }
  return <section className={`study-podcast${playing ? ' is-playing' : ''}`} aria-labelledby={`${id}-title`}>
    <div className="podcast-cover" aria-hidden="true">
      <span className="podcast-cover-label">PROVA CERTA · EM ÁUDIO</span>
      <div className="podcast-compass"><span className="compass-north">N</span><Compass strokeWidth={1} /><span className="compass-south">S</span></div>
      <div className="podcast-cover-title"><strong>{podcast.label}</strong></div>
      <div className="podcast-waves">{[12, 22, 15, 30, 20, 38, 26, 17, 33, 23, 14, 28, 18].map((height, index) => <span key={index} style={{ height, animationDelay: `${index * 90}ms` }} />)}</div>
    </div>
    <div className="podcast-body">
      <div className="podcast-kicker"><span><Headphones size={14} /> APRENDA OUVINDO</span><span>{podcast.subject}</span></div>
      <h3 id={`${id}-title`}>{podcast.title}</h3>
      <p className="podcast-description">{podcast.description}</p>
      <audio ref={audio} src={src} preload="metadata" onLoadedMetadata={event => { const length = event.currentTarget.duration; setDuration(Number.isFinite(length) ? length : 0); event.currentTarget.playbackRate = speed }} onDurationChange={event => { const length = event.currentTarget.duration; if (Number.isFinite(length)) setDuration(length) }} onTimeUpdate={event => setPosition(event.currentTarget.currentTime)} onPlay={() => setPlaying(true)} onPause={() => setPlaying(false)} onEnded={() => setPlaying(false)} onError={() => { setPlaying(false); setError('Não foi possível carregar o episódio. Tente novamente ou baixe o áudio.') }} />
      <div className="podcast-timeline"><label className="podcast-sr-only" htmlFor={`${id}-progress`}>Posição do áudio</label><input id={`${id}-progress`} type="range" min="0" max={duration || 1} step="1" value={Math.min(position, duration || 1)} disabled={!duration} onChange={event => seek(Number(event.target.value))} aria-valuetext={`${audioTime(position)} de ${audioTime(duration)}`} style={{ '--podcast-progress': `${duration ? position / duration * 100 : 0}%` }} /><div><span>{audioTime(position)}</span><span>{duration ? audioTime(duration) : 'Carregando duração…'}</span></div></div>
      <div className="podcast-controls">
        <div className="podcast-transport"><button type="button" className="podcast-skip" aria-label="Voltar 15 segundos" disabled={!duration} onClick={() => seek(position - 15)}><RotateCcw size={19} /><span>15</span></button><button type="button" className="podcast-play" aria-label={playing ? 'Pausar podcast' : 'Reproduzir podcast'} onClick={toggle}>{playing ? <Pause size={20} fill="currentColor" /> : <Play size={20} fill="currentColor" />}<span>{playing ? 'Pausar' : 'Ouvir episódio'}</span></button><button type="button" className="podcast-skip" aria-label="Avançar 15 segundos" disabled={!duration} onClick={() => seek(position + 15)}><RotateCw size={19} /><span>15</span></button></div>
        <div className="podcast-options"><label className="podcast-sr-only" htmlFor={`${id}-speed`}>Velocidade de reprodução</label><select id={`${id}-speed`} value={speed} onChange={event => { const rate = Number(event.target.value); setSpeed(rate); if (audio.current) audio.current.playbackRate = rate }}>{[0.75, 1, 1.25, 1.5, 2].map(rate => <option key={rate} value={rate}>{rate}×</option>)}</select><button type="button" aria-label={muted ? 'Ativar som' : 'Silenciar'} aria-pressed={muted} onClick={() => { if (audio.current) audio.current.muted = !muted; setMuted(!muted) }}>{muted ? <VolumeX size={19} /> : <Volume2 size={19} />}</button><a href={src} download aria-label="Baixar podcast"><Download size={19} /></a></div>
      </div>
      <div className="podcast-footer"><span className="podcast-status" role="status"><i />{playing ? 'Você está ouvindo' : 'Seu momento de escuta'}</span><span>Ouça no seu ritmo</span></div>
      {error && <p className="podcast-error" role="alert">{error}</p>}
    </div>
  </section>
}
