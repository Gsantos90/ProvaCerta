import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { transformSync } from 'esbuild'
import { remainingSeconds, formatDuration, validMinutes, reportContext, reportPayload } from '../src/lib/examSession.js'

const start = 100000, deadline = start + 60000
assert.equal(remainingSeconds(deadline, start), 60)
assert.equal(remainingSeconds(deadline, deadline - 1), 1)
assert.equal(remainingSeconds(deadline, deadline), 0)
assert.equal(remainingSeconds(deadline, deadline + 100000), 0)
assert.equal(remainingSeconds(deadline, start + 40000), 20) // Retorno de outra aba.
assert.equal(formatDuration(3661), '01:01:01')
assert.equal(formatDuration(-1), '00:00:00')
for (const value of ['', 0, 1.5, 601, NaN, 'abc']) assert.equal(validMinutes(value), false)
for (const value of [1, 60, '120', 600]) assert.equal(validMinutes(value), true)

const original = reportContext({ questionId: 'uuid', number: 89, examSlug: 'origem', examTitle: 'Prova original', subject: 'Matemática' }, 2, 'Simulado', 'simulado')
assert.equal(original.question_number, 89)
assert.equal(original.exam_title, 'Prova original')
assert.equal(original.exam_slug, 'origem')
assert.equal(original.question_id, 'uuid')
assert.equal(reportContext({ index: 136 }, 0, 'ENEM 2023', null).question_number, 136)
assert.equal(reportContext({}, 3, 'Exame', null).question_number, 4)
assert.throws(() => reportPayload(original, 'answer', 'curto'))
assert.throws(() => reportPayload(original, 'invalid', 'Descrição completa'))
assert.throws(() => reportPayload(original, 'image', 'a'.repeat(2001)))
assert.equal(reportPayload(original, 'text', '  Enunciado sem o texto.  ').message, 'Enunciado sem o texto.')

function loadComponent(file, name, values) {
  const source = readFileSync(new URL(file, import.meta.url), 'utf8').split('\n').filter(line => !line.startsWith('import ')).join('\n').replace('export default function', 'function')
  const compiled = transformSync(source, { loader: 'jsx', format: 'cjs' }).code
  return new Function(...Object.keys(values), compiled + '\nreturn ' + name)(...Object.values(values))
}
const Setup = loadComponent('../src/ExamSetup.jsx', 'ExamSetup', { React, useState: React.useState, validMinutes })
const setup = renderToStaticMarkup(React.createElement(Setup, { title: 'INSS 2022', count: 120, onStart() {}, onBack() {} }))
assert.ok(setup.includes('Estudo livre') && setup.includes('Modo de prova') && setup.includes('120 questões'))
const Report = loadComponent('../src/QuestionReport.jsx', 'QuestionReport', { React, useEffect: React.useEffect, useRef: React.useRef, useState: React.useState, supabase: null, reportPayload })
const report = renderToStaticMarkup(React.createElement(Report, { context: original, onClose() {} }))
assert.ok(report.includes('Questão 89') && report.includes('Prova original') && report.includes('Enviar relato'))
assert.ok(report.includes('aria-modal="true"') && report.includes('maxLength="2000"'))

const sql = readFileSync(new URL('../supabase/setup-question-reports.sql', import.meta.url), 'utf8')
assert.ok(sql.includes('enable row level security') && sql.includes("with check (status = 'new')"))
assert.ok(sql.includes('revoke all') && sql.includes('grant insert ('))
assert.ok(!sql.includes('grant select'))
console.log('Sessões: prazo absoluto, expiração, duração e limites; relatos: origem, validação, renderização e permissões SQL verificados.')
