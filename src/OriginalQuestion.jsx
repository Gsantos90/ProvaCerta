import React from 'react'
import { supportImageUrls } from './lib/safeUrls'
import './originalQuestion.css'

export default function OriginalQuestion({ images, text, number, onExpand }) {
  return <div className="original-question">
    <h1 className="original-question-accessible">{text}</h1>
    {supportImageUrls(images).map((src,index) => <button key={src} type="button" className="original-question-page" onClick={() => onExpand({src,alt:`Questão ${number}, parte ${index+1}`})} aria-label={`Ampliar questão ${number}, parte ${index+1}`}><img src={src} alt={`Enunciado e alternativas originais da questão ${number}, parte ${index+1}`} /></button>)}
  </div>
}
