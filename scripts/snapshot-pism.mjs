import { readFile, mkdir, writeFile } from 'node:fs/promises'
import { createClient } from '@supabase/supabase-js'
const env = Object.fromEntries((await readFile('.env.local','utf8')).split(/\r?\n/).filter(l=>/^VITE_\w+=/.test(l)).map(l=>{const i=l.indexOf('=');return [l.slice(0,i),l.slice(i+1).replace(/^['"]|['"]$/g,'')]}))
const client=createClient(env.VITE_SUPABASE_URL,env.VITE_SUPABASE_ANON_KEY||env.VITE_SUPABASE_PUBLISHABLE_KEY)
const {data,error}=await client.from('exams').select('id,slug,title,source,year,questions(id,number,subject,text,support,support_image,options,answer,explanation)').eq('source','pism').order('slug')
if(error)throw error
await mkdir('pdf-extracts/pism-revisao',{recursive:true})
const filename=process.argv[2]||'database-before.json'
await writeFile('pdf-extracts/pism-revisao/'+filename,JSON.stringify(data,null,2)+'\n')
console.log(`${data.length} provas; ${data.reduce((n,e)=>n+e.questions.length,0)} questões; ${filename}`)
