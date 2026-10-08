import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createRequire } from 'node:module'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { buildSync } from 'esbuild'
import { attemptPayload, saveAttempt } from '../src/lib/studyHistory.js'

const questions = [
  { text: 'Acerto', options: ['Sim', 'Não'], answer: 'A' },
  { text: 'Erro', options: ['Sim', 'Não'], answer: 'B', questionNumber: 42, examTitle: 'Original', supportImage: '/figura.png' },
  { text: 'Branco', options: ['Sim', 'Não'], answer: 'A' },
  { text: 'Anulada', options: ['A', 'B', 'C', 'D', 'E'], answer: 'A/B/C/D/E' },
]
const session = { id: 'attempt', ownerId: 'student', startedAt: 1000, endedAt: 61000, deadline: 61000 }
const input = { session, questions, answers: { 0: 'A', 1: 'A' }, title: 'Teste', userId: 'student' }
const original = JSON.stringify(input)
const standard = attemptPayload(input)
assert.deepEqual([standard.correct, standard.wrong, standard.blank, standard.annulled, standard.points], [1, 1, 1, 1, 2])
assert.equal(standard.mistakes.length, 1)
assert.equal(standard.mistakes[0].number, 42)
assert.equal(standard.mistakes[0].selected, 'A')
assert.equal(standard.mistakes[0].supportImage, '/figura.png')
assert.equal(JSON.stringify(input), original)
assert.equal(attemptPayload({ ...input, binary: true }).points, 1)
assert.equal(attemptPayload({ ...input, userId: 'other' }), null)
assert.equal(attemptPayload({ ...input, session: { ...session, endedAt: null } }), null)
assert.equal(attemptPayload({ ...input, session: { ...session, ownerId: null } }).user_id, 'student')
assert.equal(attemptPayload({ ...input, binary: true, answers: { 0: 'B', 1: 'A', 2: 'B' } }).points, -2)
await saveAttempt({ from: () => ({ insert: async () => ({ error: null }) }) }, standard)
const duplicate = { from: () => ({ insert: async () => ({ error: { code: '23505' } }), select: () => ({ eq() { return this }, maybeSingle: async () => ({ data: { id: 'attempt' }, error: null }) }) }) }
await saveAttempt(duplicate, standard)
await assert.rejects(() => saveAttempt({ from: () => ({ insert: async () => ({ error: new Error('offline') }) }) }, standard), /offline/)

const main = readFileSync('src/main.jsx', 'utf8')
const source = main.replace(/createRoot\(document[\s\S]*$/, '') + '\nexport { App }'
const output = buildSync({ stdin: { contents: source, resolveDir: process.cwd() + '/src', loader: 'jsx' }, bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react', 'react-dom/client', 'lucide-react', '@supabase/supabase-js'], loader: { '.css': 'empty' }, define: { 'import.meta.env': '{}' } }).outputFiles[0].text
const mod = { exports: {} }
new Function('module', 'exports', 'require', output)(mod, mod.exports, createRequire(import.meta.url))
const stateNames = [...main.slice(main.indexOf('function App()'), main.indexOf('const beginSession')).matchAll(/const \[([^,]+),[^\]]+\] = useState/g)].map(m => m[1].trim())
const originalState = React.useState
function render(overrides) {
  let index = 0
  React.useState = initial => originalState(Object.hasOwn(overrides, stateNames[index]) ? overrides[stateNames[index++]] : (index++, initial))
  try { return renderToStaticMarkup(React.createElement(mod.exports.App)) }
  finally { React.useState = originalState }
}
const base = { selectedExam: 'usp', supabaseExamSlug: 'usp-2025-v1', enemQuestions: questions, current: 0, answers: {}, session }
assert.ok(render({ screen: 'home' }).includes('Entrar na minha conta'))
const exam = render({ ...base, screen: 'exam' })
assert.ok(exam.includes('Acerto') && !exam.includes('Entrar na minha conta') && !exam.includes('Praticar redação'))
const result = render({ ...base, screen: 'result' })
assert.ok(result.includes('Quer guardar este resultado?') && result.includes('Refazer prova') && result.includes('Para revisar'))
assert.ok(render({ screen: 'account' }).includes('continuar fazendo provas sem conta'))

// Exercise the real form handlers without sending emails or creating accounts.
let authSource = readFileSync('src/Auth.jsx', 'utf8').replace("import { supabase, isRecoveryLink } from './lib/supabase'", 'const supabase = testClient; const isRecoveryLink = false') + '\nexport { AuthDialog }'
const authOutput = buildSync({ stdin: { contents: authSource, resolveDir: process.cwd() + '/src', loader: 'jsx' }, bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react', 'lucide-react'], loader: { '.css': 'empty' } }).outputFiles[0].text
const calls = []
let response = { data: { session: { user: { id: 'student' } } }, error: null }
const client = { auth: Object.fromEntries(['signInWithPassword', 'signUp', 'resetPasswordForEmail', 'updateUser'].map(name => [name, async (...args) => { calls.push({ name, args }); return response }])) }
const authMod = { exports: {} }
new Function('module', 'exports', 'require', 'testClient', authOutput)(authMod, authMod.exports, createRequire(import.meta.url), client)
globalThis.window = { location: { origin: 'https://prova-certa-dusky.vercel.app', pathname: '/' } }
const findForm = element => {
  if (!element || typeof element !== 'object') return null
  if (element.type === 'form') return element
  const children = React.Children.toArray(element.props?.children)
  for (const child of children) { const found = findForm(child); if (found) return found }
  return null
}
async function submit(mode, repeat = 'password123') {
  const saved = { useState: React.useState, useRef: React.useRef, useEffect: React.useEffect, useContext: React.useContext }
  const states = [' student@example.com ', 'password123', repeat, false, '', '']
  let index = 0, closed = false
  React.useState = () => { const i = index++; return [states[i], value => { states[i] = value }] }
  React.useRef = value => ({ current: value })
  React.useEffect = () => {}
  React.useContext = () => ({ user: null })
  try {
    const tree = authMod.exports.AuthDialog({ mode, setMode() {}, onClose() { closed = true } })
    await findForm(tree).props.onSubmit({ preventDefault() {} })
    return { states, closed }
  } finally { Object.assign(React, saved) }
}
assert.equal((await submit('login')).closed, true)
assert.deepEqual(calls.at(-1), { name: 'signInWithPassword', args: [{ email: 'student@example.com', password: 'password123' }] })
response = { data: { session: null }, error: null }
assert.ok((await submit('signup')).states[5].includes('confirmar o cadastro'))
assert.equal(calls.at(-1).args[0].options.emailRedirectTo, 'https://prova-certa-dusky.vercel.app/')
await submit('forgot')
assert.equal(calls.at(-1).name, 'resetPasswordForEmail')
assert.equal(calls.at(-1).args[1].redirectTo, 'https://prova-certa-dusky.vercel.app/')
assert.equal((await submit('reset')).closed, true)
assert.equal(calls.at(-1).name, 'updateUser')
const count = calls.length
assert.ok((await submit('signup', 'different')).states[4].includes('precisam ser iguais'))
assert.equal(calls.length, count)
response = { error: { code: 'invalid_credentials' } }
const failure = await submit('login')
assert.equal(failure.closed, false)
assert.equal(failure.states[4], 'E-mail ou senha incorretos.')
delete globalThis.window

const accountSource = readFileSync('src/StudyAccount.jsx', 'utf8').replace("import { useAuth } from './Auth'", 'const useAuth = () => testAuth').replace("import { supabase } from './lib/supabase'", 'const supabase = null')
const accountOutput = buildSync({ stdin: { contents: accountSource, resolveDir: process.cwd() + '/src', loader: 'jsx' }, bundle: true, platform: 'node', format: 'cjs', write: false, external: ['react'], loader: { '.css': 'empty' } }).outputFiles[0].text
const accountMod = { exports: {} }
new Function('module', 'exports', 'require', 'testAuth', accountOutput)(accountMod, accountMod.exports, createRequire(import.meta.url), { user: { id: 'student', email: 'student@example.com' } })
function renderAccount(tab, owner = 'student') {
  const states = [tab, { owner, rows: [standard], loading: false, error: '' }, 0, 0]
  let index = 0
  React.useState = initial => originalState(index < states.length ? states[index++] : initial)
  try { return renderToStaticMarkup(React.createElement(accountMod.exports.default, { onBack() {} })) }
  finally { React.useState = originalState }
}
const notebook = renderAccount('mistakes')
assert.ok(notebook.includes('Questão 42') && notebook.includes('/figura.png') && notebook.includes('Sua resposta') && notebook.includes('Gabarito'))
assert.ok(!renderAccount('mistakes', 'other').includes('Questão 42'))
assert.ok(renderAccount('history').includes('1 acertos · 1 erros · 1 em branco · 1 anuladas'))
assert.ok(renderAccount('account').includes('student@example.com'))
console.log('Conta: pontuação, anuladas, privacidade ao trocar de conta, salvamento idempotente, erro de conexão e acesso completo sem login verificados.')
console.log('Auth: entrada, cadastro com confirmação, recuperação, nova senha, destino dos e-mails e validação de senhas verificados sem enviar mensagens.')
