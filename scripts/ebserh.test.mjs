import assert from 'node:assert/strict'
import { readFileSync, existsSync } from 'node:fs'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { transformSync } from 'esbuild'
import { ArrowRight, ChevronDown } from 'lucide-react'
import { ebserhExams } from '../src/lib/ebserhExams.js'
import { EBSERH_SLUGS, loadEbserhExam } from '../src/lib/ebserhExam.js'
import { isAnnulledAnswer, isCorrectAnswer } from '../src/lib/examAnswers.js'
import { usePageState } from '../src/lib/pageState.js'
import { attemptSource } from '../src/lib/catalogProgress.js'

const expected = {2025:[41,43,52],2023:[45,53],2022:[12,20]}
for (const slug of EBSERH_SLUGS) {
  const year = slug.split('-')[1]
  const exam = JSON.parse(readFileSync(`public/provas/ebserh/${year}-farmaceutico.json`,'utf8'))
  assert.deepEqual(exam.questions.filter(q=>q.annulled).map(q=>q.number),expected[year])
  for (const q of exam.questions) {
    assert(q.text.length > 20)
    assert.equal(q.options.length,5)
    assert(q.options.every(option=>option.trim()))
    assert.equal(isAnnulledAnswer(q.answer),q.annulled)
    assert.equal(q.options.filter((_,i)=>isCorrectAnswer('ABCDE'[i],q.answer)).length,q.annulled?5:1)
    if(q.annulled)assert(isCorrectAnswer(undefined,q.answer))
    for(const image of q.supportImage||[])assert(existsSync(`public${image}`))
    assert(!/pcimarkpci|IBFC_160|<!--/.test(q.text+q.options.join('')))
  }
  globalThis.fetch = async () => ({ok:true,json:async()=>exam})
  const loaded = await loadEbserhExam(slug)
  assert.equal(loaded.length,60)
  assert.equal(loaded[0].examTitle,exam.title)
  assert(loaded[0].sourceUrl)
  assert(loaded[0].support.includes(year==='2025'?'QUINTO IMPÉRIO':year==='2023'?'Belazarte':'A menina'))
  if(year==='2023') {
    assert(loaded[7].support.includes('Belazarte')&&loaded[7].support.includes('Redes sociais'))
    for (const n of [1,2,3,4,5,8]) {
      assert(loaded[n-1].support.startsWith('Texto I Nizia Figueira, sua criada'))
      assert(loaded[n-1].support.includes('4 moça robusta e formosa'))
    }
    for (const q of loaded) assert(!/INSTRUÇÕES|Folha de Respostas|GABARITO DO CANDIDATO|EMPRESA BRASILEIRA/.test(q.support||''))
  }
  if(year==='2022')assert(loaded[9].support.includes('Amapá:'))
  assert.equal(attemptSource({exam_title:exam.title}),'ebserh')
  console.log(`${year}: 60 questões, alternativas, textos, imagens, correção e anuladas OK`)
}
await assert.rejects(()=>loadEbserhExam('ebserh-2024-farmaceutico'))
globalThis.fetch=async()=>({ok:false})
await assert.rejects(()=>loadEbserhExam('ebserh-2025-farmaceutico'))
globalThis.fetch=async()=>({ok:true,json:async()=>({slug:'ebserh-2025-farmaceutico',questions:[]})})
await assert.rejects(()=>loadEbserhExam('ebserh-2025-farmaceutico'))

const source=readFileSync('src/EbserhExamCard.jsx','utf8').split('\n').filter(l=>!l.startsWith('import ')).join('\n').replace('export default function','function')
const code=transformSync(source,{loader:'jsx',format:'cjs'}).code
const Card=new Function('React','usePageState','ebserhExams','ArrowRight','ChevronDown',code+'\nreturn EbserhExamCard')(React,usePageState,ebserhExams,ArrowRight,ChevronDown)
const markup=renderToStaticMarkup(React.createElement(Card,{onStart(){}}))
assert.equal((markup.match(/<select/g)||[]).length,2)
for(const text of ['Ano da prova','Cargo','Farmacêutico','Começar prova'])assert(markup.includes(text))
assert(!markup.includes('em preparação'))
console.log('Seleção de ano e cargo, carregamento e erros OK')
