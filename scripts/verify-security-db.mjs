import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'
const env = Object.fromEntries(readFileSync('.env.local','utf8').split(/\r?\n/).filter(line => line.includes('=')).map(line => {
  const index = line.indexOf('=')
  return [line.slice(0,index),line.slice(index+1).trim().replace(/^['"]|['"]$/g,'')]
}))
const client = createClient(env.VITE_SUPABASE_URL,env.VITE_SUPABASE_PUBLISHABLE_KEY,{auth:{persistSession:false,autoRefreshToken:false}})
for (const table of ['exams','questions','essay_themes','study_author_questions']) {
  const {data,error} = await client.from(table).select('id').limit(1)
  assert.equal(error,null,table)
  assert.equal(data.length,1,table)
}
const privateResult = await client.from('exam_attempts').select('id').limit(1)
assert.ok(privateResult.error || privateResult.data.length === 0, 'Um visitante não deve acessar histórico privado')
// Payload vazio: mesmo se a permissão for reintroduzida por engano, não grava dados.
for (const table of ['exams','questions','essay_themes','study_author_questions']) {
  const {error} = await client.from(table).insert({})
  assert.ok(error,table)
  assert.equal(error.code,'42501',`${table}: escrita pública precisa ser negada antes da validação do conteúdo`)
}
console.log('Leitura pública preservada; histórico privado protegido e escrita pública negada nas quatro tabelas de conteúdo.')
