"""Build small transactional batches for the connected database importer."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / 'pdf-extracts/pmerj-ate-2020'
TARGET = BASE / 'sql-batches'
TARGET.mkdir(exist_ok=True)
exams = json.loads((BASE / 'importacao.json').read_text(encoding='utf-8'))
quote = lambda value: "'" + str(value).replace("'", "''") + "'"
index = []
columns = ['number', 'subject', 'text', 'support', 'support_image', 'options', 'answer', 'explanation']
for exam in exams:
    for start in range(0, len(exam['questions']), 50):
        questions = [{key: q[key] for key in columns} for q in exam['questions'][start:start + 50]]
        payload = quote(json.dumps(questions, ensure_ascii=False))
        sql = 'begin;\ninsert into public.exams(slug,title,source,year) values (' + ','.join(quote(v) for v in [exam['slug'],exam['title'],'pmerj',exam['year']]) + ') on conflict(slug) do nothing;\n'
        sql += 'insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select e.id,q.number,q.subject,q.text,q.support,q.support_image,q.options,q.answer,q.explanation from public.exams e cross join jsonb_to_recordset(' + payload + '::jsonb) as q(number integer,subject text,text text,support text,support_image text,options jsonb,answer text,explanation text) where e.slug=' + quote(exam['slug']) + ' on conflict(exam_id,number) do nothing;\ncommit;'
        filename = f'{len(index):03}.sql'
        (TARGET / filename).write_text(sql, encoding='utf-8')
        index.append({'file':filename,'slug':exam['slug'],'questions':len(questions),'bytes':len(sql.encode('utf-8'))})
(TARGET / 'index.json').write_text(json.dumps(index),encoding='utf-8')
print(f'{len(exams)} exams, {len(index)} transactions, largest {max(b["bytes"] for b in index)} bytes.')
