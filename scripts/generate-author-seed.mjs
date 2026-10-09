import { writeFileSync } from 'node:fs'
import { authorQuestionBank } from '../src/lib/authorQuestionBank.js'
const rows = authorQuestionBank.map(q => ({ authored_id:q.authoredId, topic_id:q.topicId, number:q.number, subject:q.subject, text:q.text, options:q.options, answer:q.answer, explanation:q.explanation }))
const sql = `insert into public.study_author_questions (authored_id,topic_id,number,subject,text,options,answer,explanation)
select authored_id,topic_id,number,subject,text,options,answer,explanation
from jsonb_to_recordset($questions$${JSON.stringify(rows)}$questions$::jsonb)
as q(authored_id text,topic_id text,number integer,subject text,text text,options jsonb,answer text,explanation text)
on conflict (authored_id) do update set topic_id=excluded.topic_id,number=excluded.number,subject=excluded.subject,text=excluded.text,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;`
writeFileSync(new URL('../supabase/study-author-seed.sql', import.meta.url), sql, 'utf8')
console.log(`${rows.length} questões autorais preparadas.`)
