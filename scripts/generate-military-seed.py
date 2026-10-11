from pathlib import Path
import json
root=Path.cwd()
exams=json.loads((root/'pdf-extracts/militares-2026/catalogo.json').read_text(encoding='utf-8'))
def sql(value):
    if value is None:return 'NULL'
    if isinstance(value,(list,dict)):value=json.dumps(value,ensure_ascii=False)
    return "'"+str(value).replace("'","''")+"'"
for exam in exams:
    data=json.dumps(exam,ensure_ascii=False)
    query="""BEGIN;
INSERT INTO public.exams (slug,title,source,year) VALUES (%s,%s,%s,%s)
ON CONFLICT (slug) DO UPDATE SET title=excluded.title,source=excluded.source,year=excluded.year;
WITH data AS (SELECT %s::jsonb AS body)
INSERT INTO public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)
SELECT e.id,(q->>'number')::integer,q->>'subject',q->>'text',q->>'support',q->>'support_image',q->'options',q->>'answer',q->>'explanation'
FROM data CROSS JOIN LATERAL jsonb_array_elements(body->'questions') q JOIN public.exams e ON e.slug=body->>'slug'
ON CONFLICT (exam_id,number) DO UPDATE SET subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;
COMMIT;
""" % (sql(exam['slug']),sql(exam['title']),sql(exam['source']),sql(exam['year']),sql(data))
    (root/'supabase'/('seed-'+exam['slug']+'.sql')).write_text(query,encoding='utf-8')
    print(exam['slug'],len(exam['questions']))
