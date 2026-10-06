import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { transformSync } from 'esbuild'
import { ArrowLeft, BookOpen, Check, Shuffle } from 'lucide-react'
import { analyzeEssay, emptyEssay, restoreEssay, reviewQuestions, summarizeReview, essayStorageKey } from '../src/lib/essayReview.js'
import { initialEssayThemes, normalizeEssayTheme, filterEssayThemes, pickEssayTheme } from '../src/lib/essayThemes.js'

assert.deepEqual(analyzeEssay(''), { wordCount: 0, paragraphCount: 0, characterCount: 0, repeatedWords: [], consecutiveWords: [], extraSpaces: 0 })
const text = 'Educação educação EDUCAÇÃO.\n\nA ação é importante. muito muito  importante.'
const stats = analyzeEssay(text)
assert.equal(stats.wordCount, 10)
assert.equal(stats.paragraphCount, 2)
assert.deepEqual(stats.repeatedWords, [{ word: 'educação', count: 3 }])
assert.deepEqual(stats.consecutiveWords, [{ word: 'educação', count: 2 }, { word: 'muito', count: 1 }])
assert.equal(stats.extraSpaces, 1)
assert.equal(analyzeEssay('ação\n\nação. ação').consecutiveWords.length, 0)
assert.equal(analyzeEssay("bem-estar d'água ação").wordCount, 3)
assert.equal(analyzeEssay('ação ação AÇÃO').repeatedWords[0].count, 3)
assert.equal(analyzeEssay('que que que para para para').repeatedWords.length, 0)
assert.equal(analyzeEssay('um\r\n\r\ndois').paragraphCount, 2)
assert.equal(analyzeEssay('😀').characterCount, 1)

assert.equal(initialEssayThemes.length, 9)
assert.equal(new Set(initialEssayThemes.map(theme => theme.slug)).size, 9)
for (const theme of initialEssayThemes) {
  assert.deepEqual(normalizeEssayTheme(theme), theme)
  assert.match(new URL(theme.source_url).hostname, /(inep\.gov\.br|fuvest\.br|uerj\.br)$/)
}
assert.equal(filterEssayThemes(initialEssayThemes, 'ENEM').length, 3)
assert.equal(filterEssayThemes(initialEssayThemes, 'all', '2025').length, 3)
const only = filterEssayThemes(initialEssayThemes, 'FUVEST', '2026')
assert.equal(only.length, 1)
assert.equal(pickEssayTheme(only, only[0].slug, () => 0).slug, only[0].slug)
assert.equal(pickEssayTheme([], null), null)
assert.notEqual(pickEssayTheme(initialEssayThemes, initialEssayThemes[0].slug, () => 0).slug, initialEssayThemes[0].slug)
assert.equal(pickEssayTheme(initialEssayThemes, null, () => 0.99999).slug, initialEssayThemes.at(-1).slug)
assert.equal(normalizeEssayTheme({ ...only[0], source_url: 'javascript:alert(1)' }), null)
assert.equal(normalizeEssayTheme({ ...only[0], active: false }), null)

const draft = { ...emptyEssay(), topic: only[0].title, theme: only[0], text: 'Um texto para revisar.', revision: 2, notes: 'Explicar o exemplo.' }
draft.checks = Object.fromEntries(reviewQuestions.map(item => [item.id, { value: item.id === 'tema' ? 'review' : 'ok', revision: 2 }]))
assert.deepEqual(restoreEssay(JSON.stringify(draft)), draft)
assert.equal(summarizeReview(draft).evaluated, 7)
assert.equal(summarizeReview(draft).confirmed, 6)
assert.equal(summarizeReview(draft).priorities[0].id, 'tema')
assert.equal(summarizeReview({ ...draft, revision: 3 }).evaluated, 0)
assert.equal(restoreEssay(JSON.stringify({ ...draft, topic: 'Tema livre' })).theme, null)
assert.throws(() => restoreEssay('{quebrado'))
assert.deepEqual(restoreEssay(null), emptyEssay())
assert.equal(restoreEssay(JSON.stringify({ ...draft, checks: { erro: { value: 'ok', revision: 2 } } })).checks.erro, undefined)

const sql = readFileSync(new URL('../supabase/seed-essay-themes.sql', import.meta.url), 'utf8')
assert.ok(sql.includes('enable row level security') && sql.includes('using (active = true)'))
assert.ok(sql.includes('grant select on public.essay_themes to anon, authenticated'))
assert.ok(sql.includes('on conflict (slug) do update') && sql.trim().endsWith('commit;'))
for (const theme of initialEssayThemes) assert.ok(sql.includes(`'${theme.slug}'`) && sql.includes(theme.title) && sql.includes(theme.source_url))

// Renderização da página com recuperação de rascunho; não executa efeitos nem consultas ao banco.
const source = readFileSync(new URL('../src/EssayPractice.jsx', import.meta.url), 'utf8').split('\n').filter(line => !line.startsWith('import ')).join('\n').replace('export default function EssayPractice', 'function EssayPractice')
const compiled = transformSync(source, { loader: 'jsx', format: 'cjs' }).code
const names = ['React', 'useEffect', 'useMemo', 'useState', 'ArrowLeft', 'BookOpen', 'Check', 'Shuffle', 'analyzeEssay', 'emptyEssay', 'essayStorageKey', 'restoreEssay', 'reviewQuestions', 'summarizeReview', 'initialEssayThemes', 'normalizeEssayTheme', 'filterEssayThemes', 'pickEssayTheme', 'supabase']
const values = [React, React.useEffect, React.useMemo, React.useState, ArrowLeft, BookOpen, Check, Shuffle, analyzeEssay, emptyEssay, essayStorageKey, restoreEssay, reviewQuestions, summarizeReview, initialEssayThemes, normalizeEssayTheme, filterEssayThemes, pickEssayTheme, null]
const Page = new Function(...names, compiled + '\nreturn EssayPractice')(...values)
globalThis.window = { localStorage: { getItem: () => JSON.stringify(draft) } }
const rendered = renderToStaticMarkup(React.createElement(Page, { onBack() {} }))
assert.ok(rendered.includes('Praticar redação') && rendered.includes('Autoavaliação guiada') && rendered.includes('Sortear um tema'))
assert.ok(rendered.includes('Um texto para revisar.') && rendered.includes('FUVEST') && rendered.includes('2026'))
assert.ok(rendered.includes('7 de 7 itens avaliados') && rendered.includes('Explicar o exemplo.'))
globalThis.window.localStorage.getItem = () => '{quebrado'
const failed = renderToStaticMarkup(React.createElement(Page, { onBack() {} }))
assert.ok(failed.includes('salvamento está pausado'))
delete globalThis.window
console.log('Redação: contagens, repetições, 7 critérios, rascunhos, revisão após edição, 9 temas, filtros, sorteio, SQL e renderização verificados.')