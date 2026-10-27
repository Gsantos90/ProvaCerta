import React from 'react'
import {renderToStaticMarkup} from 'react-dom/server'
import assert from 'node:assert/strict'
import NationalExamCard from '../src/NationalExamCard.jsx'
import {nationalYears,nationalPapers,nationalRoleLabel} from '../src/lib/nationalExams.js'
for(const institution of ['prf','receita','tse']) for(const year of nationalYears(institution)){
 globalThis.window={sessionStorage:{getItem:key=>key.endsWith('.year')?JSON.stringify(year):null}}
 const html=renderToStaticMarkup(<NationalExamCard institution={institution} onStart={()=>{}} />)
 assert.ok(html.includes('<label>Cargo'))
 assert.ok(!html.includes('Caderno'))
 assert.ok(!/<p[\s>]/.test(html))
 assert.ok(!html.includes('gabarito definitivo'))
 const roleSelect=html.match(/<select[^>]*>[\s\S]*?<\/select>/g)[1]
 for(const paper of nationalPapers(institution,year))assert.ok(roleSelect.includes(nationalRoleLabel(paper)))
 assert.ok(!/PRF 20|Receita Federal 20|TSE 20|Justiça Eleitoral 20/.test(roleSelect))
}
delete globalThis.window
console.log('Cartões: nove combinações de instituição/ano, Cargo e ausência de subtextos validadas.')
