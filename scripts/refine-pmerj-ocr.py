"""Remove artificial letter spacing in the IBADE PDF text layer."""
import importlib.util
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('archive_import', ROOT / 'scripts/import-pmerj-archives.py')
common = importlib.util.module_from_spec(spec)
spec.loader.exec_module(common)
BASE = common.BASE
exams = json.loads((BASE / 'importacao.json').read_text(encoding='utf-8'))
changed = []
for exam in exams:
    if exam['slug'] not in ('pmerj-2017-oficial','pmerj-2019-oficial'):
        continue
    name = 'oficial' + exam['year']
    doc = common.fitz.open(BASE / (name + '.pdf'))
    for q in exam['questions']:
        pieces = q['regions']
        for piece in pieces:
            raw = doc[piece['page'] - 1].get_text(clip=common.fitz.Rect(piece['bbox']), sort=True, flags=common.fitz.TEXT_INHIBIT_SPACES)
            piece['raw'] = re.sub(r'(?m)^.*(?:PMERJ - Concurso|Pág\. \d+|\(\s*\d+\s*\)).*$', '', raw)
        improved = common.row_for(name,exam['slug'],exam['title'].split(' — ',1)[1],q['number'],pieces,doc,'X' if '/' in q['answer'] else q['answer'],q['subject'])
        q.update(improved)
        changed.append({'slug':exam['slug'], **{key:q[key] for key in ['number','text','options','explanation','support_image']}})
common.export(exams,json.loads((BASE / 'pendencias.json').read_text(encoding='utf-8')))
sql = 'begin;\nupdate public.questions target set text=q.text,options=q.options,explanation=q.explanation,support_image=q.support_image from public.exams e cross join jsonb_to_recordset(' + common.quoted(json.dumps(changed,ensure_ascii=False)) + '::jsonb) as q(slug text,number integer,text text,options jsonb,explanation text,support_image text) where e.slug=q.slug and target.exam_id=e.id and target.number=q.number;\ncommit;'
(BASE / 'ocr-refinements.sql').write_text(sql,encoding='utf-8')
print(f'{len(changed)} question text layers normalized; original images preserved.')
