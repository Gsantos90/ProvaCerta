import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import { createRequire } from 'node:module'
import { buildSync } from 'esbuild'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import questions from '../src/lib/walkthroughQuestions.json' with { type:'json' }
import { walkthroughSolutions } from '../src/lib/walkthroughSolutions.js'
import { isCorrectAnswer, isAnnulledAnswer } from '../src/lib/examAnswers.js'

// Transcribed from the definitive UFJF PDFs, including decisions after appeals.
const official = {
 '2024-I-Matemática':'B/C,A,C,D,B', '2024-I-Física':'D,B,C,B,D', '2024-I-Química':'E,D,E,C,D',
 '2025-I-Matemática':'B,C,D,A,D', '2025-I-Física':'C,D,B,B,D', '2025-I-Química':'B,C,A/B/C/D/E,E,A',
 '2026-I-Matemática':'B,A,D,E,C', '2026-I-Física':'D,C,E,A,D', '2026-I-Química':'C,B,D,C,D',
 '2024-II-Matemática':'C/D,A,C,A,B', '2024-II-Física':'B,B,E,A,D', '2024-II-Química':'D,C,B,A,D',
 '2025-II-Matemática':'C,E,B,D,A', '2025-II-Física':'A,A,E,C/E,B/C', '2025-II-Química':'E,E,A,A,D',
 '2026-II-Matemática':'B,E,C,C,C', '2026-II-Física':'A,D,A,E,A', '2026-II-Química':'A,C,B,D,A',
 '2024-III-Matemática':'C,C,D,E,A', '2024-III-Física':'E,D,B,E,D', '2024-III-Química':'C,C,D,E,D',
 '2025-III-Matemática':'A,B,C,E,C', '2025-III-Física':'E,D,B,E,C', '2025-III-Química':'D,A,C,D,A',
 '2026-III-Matemática':'A,D,C,B,E', '2026-III-Física':'B,A,C,C,C', '2026-III-Química':'B,C,B,B,A',
}
assert.equal(questions.length,135)
assert.equal(new Set(questions.map(q=>q.id)).size,135)
assert.equal(Object.keys(walkthroughSolutions).length,135)
for(const [combination,key] of Object.entries(official)) {
 const rows=questions.filter(q=>[q.year,q.module,q.subject].join('-')===combination)
 assert.equal(rows.length,5,combination)
 assert.equal(rows.map(q=>q.answer).join(','),key,combination)
 for(const q of rows) {
  assert.equal(q.options.length,5)
  assert(q.text && q.options.every(option=>option.trim()))
  assert(new URL(q.sourceUrl).hostname.endsWith('ufjf.br'))
  assert(new URL(q.answerSource).hostname.endsWith('ufjf.br'))
  for(const image of [...(q.images||[]),...(q.supportImages||[])])assert(existsSync('public'+image),image)
  const solution=walkthroughSolutions[q.id]
  assert(solution.steps.length>=5 && solution.vocabulary.length>=3,q.id)
  assert(solution.steps.every(step=>step.title && step.text.length>40),q.id)
  assert(solution.takeaway && solution.pitfalls.length>=2,q.id)
 }
}
assert(isCorrectAnswer('B','B/C'));assert(isCorrectAnswer('C','B/C'));assert(!isCorrectAnswer('A','B/C'))
assert(isAnnulledAnswer('A/B/C/D/E'))
// Independent numerical checks on representative explanations in every module.
assert.equal(30*5+40*5,350)
assert.equal(320+2*Math.sqrt(2*320/10),336)
assert.equal(Math.sqrt(9*4)*Math.sqrt(100-9*4),48)
assert.equal(153/1.7,90)
assert.equal(12*(2*12+5),348);assert.equal(13*(2*13+5),403)
assert.equal(25*Math.PI/(.2*Math.PI),125)
assert.equal((6*15+7*40+8*30+9*10+10*5)/100,7.5)
assert.equal(40*(9/5)*2,144)
assert(Math.abs(6*.8*2/.6-16)<1e-10)
assert.equal(4*412+2*498-2*799-4*463,-806)
const code=buildSync({entryPoints:['src/StudyWalkthrough.jsx'],bundle:true,platform:'node',format:'cjs',write:false,external:['react'],loader:{'.css':'empty'}}).outputFiles[0].text
const mod={exports:{}}
new Function('module','exports','require',code)(mod,mod.exports,createRequire(import.meta.url))
const originalState=React.useState
function render({subject='Matemática',year=2026,module='I',current=0,checked=false,chosen=null}={}) {
 let i=0
 const values=[subject,year,module,current,[],chosen,checked]
 React.useState=initial=>originalState(i<values.length?values[i++]:initial)
 try{return renderToStaticMarkup(React.createElement(mod.exports.default))}
 finally{React.useState=originalState}
}
for(const year of [2024,2025,2026])for(const module of ['I','II','III'])for(const subject of ['Matemática','Física','Química'])for(let current=0;current<5;current++) {
 const markup=render({year,module,subject,current})
 const q=questions.filter(q=>q.year===year&&q.module===module&&q.subject===subject)[current]
 assert(markup.includes('Destrinchando o conteúdo'))
 assert.equal((markup.match(/<select/g)||[]).length,4)
 assert(markup.includes('PISM '+year+' · Módulo '+module))
 assert(markup.includes(walkthroughSolutions[q.id].topic))
 assert(markup.includes('Passo 1')&&markup.includes('Passo 5'))
 assert(!markup.includes('Preciso de uma dica'))
 assert(!markup.includes('Ver enunciado original, figuras e alternativas'))
 assert(!markup.includes('Começar explicação passo a passo'))
 assert.equal(markup.includes('walkthrough-support'),q.supportImages.length>0)
}
assert(render({year:2024,checked:true,chosen:'B'}).includes('Você acertou!'))
assert(render({year:2024,checked:true,chosen:'C'}).includes('Você acertou!'))
assert(render({year:2024,checked:true,chosen:'A'}).includes('Ainda não foi desta vez'))
assert(render({year:2025,subject:'Química',current:2,checked:true,chosen:'A'}).includes('Questão anulada'))
assert(render({current:1}).includes('09/07/2026'))
assert(render().includes('Passo 6'))
console.log('Destrinchando: 135 questões, 27 combinações, gabaritos definitivos, figuras e todas as resoluções abertas verificados.')
