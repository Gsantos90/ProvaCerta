import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { execFileSync } from 'node:child_process'
import { createRequire } from 'node:module'
import { buildSync } from 'esbuild'
import React from 'react'
import { renderToStaticMarkup } from 'react-dom/server'
import { safeWebUrl, safeImageUrl, supportImageUrls } from '../src/lib/safeUrls.js'
import { reviewGroups } from '../src/lib/studyTopics.js'

for (const invalid of ['javascript:alert(1)', 'java\nscript:alert(1)', 'data:text/html,<script>alert(1)</script>', '//evil.example/a', '/\\evil.example/a', 'https://trusted.example@evil.example/a', 'https://example.com/\nfile', null, {}, 'file:///etc/passwd']) {
  assert.equal(safeWebUrl(invalid), null)
  assert.equal(safeImageUrl(invalid), null)
}
for (const url of ['https://download.inep.gov.br/a.pdf#page=4', 'http://example.com/a.png', 'https://example.com/a%20b.png']) assert.equal(safeWebUrl(url), url)
assert.equal(safeImageUrl('/figura.png'), '/figura.png')
assert.deepEqual(supportImageUrls('/a.png, /b.png'), ['/a.png','/b.png'])
assert.deepEqual(supportImageUrls('["/a.png","javascript:alert(1)","//evil.example/a.png"]'), ['/a.png'])
const question = { text:'Pergunta', options:['A','B'], answer:'A', sourceUrl:'javascript:alert(1)', examSlug:'enem-2023', number:7 }
assert.equal(reviewGroups([{ completed_at:'2026-10-09', mistakes:[question] }])[0].questions[0].sourceUrl,null)

const config = JSON.parse(readFileSync('vercel.json','utf8'))
const headers = Object.fromEntries(config.headers.find(rule => rule.source === '/(.*)').headers.map(header => [header.key,header.value]))
assert.equal(headers['X-Frame-Options'],'DENY')
assert.equal(headers['X-Content-Type-Options'],'nosniff')
assert.match(headers['Content-Security-Policy'], /script-src 'self';/)
assert.match(headers['Content-Security-Policy'], /frame-ancestors 'none'/)
assert.match(headers['Content-Security-Policy'], /object-src 'none'/)
assert.match(headers['Content-Security-Policy'], /https:\/\/\*\.supabase\.co/)
assert.ok(!readFileSync('index.html','utf8').includes('<script>'))
assert.ok(readFileSync('public/theme-init.js','utf8').includes('provacerta-theme'))

const manifest = JSON.parse(readFileSync('package.json','utf8'))
const lock = JSON.parse(readFileSync('package-lock.json','utf8'))
for (const group of ['dependencies','devDependencies']) for (const [name,version] of Object.entries(manifest[group])) {
  assert.equal(version,lock.packages[`node_modules/${name}`].version)
  assert.equal(version,lock.packages[''][group][name])
}
const tracked = execFileSync('git',['ls-files'],{encoding:'utf8'}).trim().split(/\r?\n/)
assert.ok(!tracked.some(path => /^\.env(?:\.|$)/.test(path) && path !== '.env.example'), 'Credenciais não devem estar no Git')

// Compara a estrutura HTML anterior e atual sem depender de capturas ou CSS.
function renderHome(source) {
  const contents = source.replace(/createRoot\(document[\s\S]*$/, '') + '\nexport { App }'
  const compiled = buildSync({ stdin:{contents,resolveDir:process.cwd()+'/src',loader:'jsx'}, bundle:true,platform:'node',format:'cjs',write:false,external:['react','react-dom/client','lucide-react','@supabase/supabase-js'],loader:{'.css':'empty'},define:{'import.meta.env':'{}'} }).outputFiles[0].text
  const mod = {exports:{}}
  new Function('module','exports','require',compiled)(mod,mod.exports,createRequire(import.meta.url))
  return renderToStaticMarkup(React.createElement(mod.exports.App))
}
const baseline = execFileSync('git',['show','c666bdd:src/main.jsx'],{encoding:'utf8'})
assert.equal(renderHome(readFileSync('src/main.jsx','utf8')), renderHome(baseline), 'A organização do código deve preservar a página inicial')
console.log('Segurança de URLs, cabeçalhos, dependências fixas e página inicial idêntica verificados.')
