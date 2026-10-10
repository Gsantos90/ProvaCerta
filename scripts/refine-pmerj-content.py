"""Preserve shared reading passages and visual tables in archival questions."""
import importlib.util
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('archive_import', ROOT / 'scripts/import-pmerj-archives.py')
common = importlib.util.module_from_spec(spec)
spec.loader.exec_module(common)
BASE, ASSETS = common.BASE, common.ASSETS
exams = json.loads((BASE / 'importacao.json').read_text(encoding='utf-8'))
changed = []
visual = {'pmerj-2010-soldado': {4,18,20}, 'pmerj-2010-farmacia-hospitalar': {33,34}}
for exam in exams:
    foreign_support = []
    if 'oficial-' in exam['slug']:
        for q in exam['questions'][70:]:
            paths = json.loads(q['support_image'] or '[]')
            foreign_support.extend(paths[:-len(q['regions'])])
        foreign_support = list(dict.fromkeys(foreign_support))
    for q in exam['questions']:
        before = json.dumps(q, sort_keys=True)
        for region in q['regions']:
            for line in region.get('raw', '').splitlines():
                if re.search(r'Concurso Público de Admissão ao ingresso|^\s*P[áa](?:g\.?)?\s+\d+\s*$', line):
                    footer = common.clean(line)
                    q['text'] = q['text'].replace(footer, '').strip()
                    q['options'] = [option.replace(footer, '').strip() for option in q['options']]
                    q['explanation'] = q['explanation'].replace(footer, '').strip()
        if q['number'] >= 71 and foreign_support:
            paths = json.loads(q['support_image'] or '[]')
            q['support_image'] = json.dumps(list(dict.fromkeys(foreign_support + paths)))
        if q['number'] in visual.get(exam['slug'], set()):
            name = next(name for name, files in common.downloads.FILES.items() if files == exam['files'])
            doc = common.fitz.open(BASE / (name + '.pdf'))
            paths = []
            for i, piece in enumerate(q['regions']):
                filename = f'{exam["slug"]}-visual-q{q["number"]}-{i}.png'
                doc[piece['page'] - 1].get_pixmap(matrix=common.fitz.Matrix(1.7,1.7), clip=common.fitz.Rect(piece['bbox'])).save(str(ASSETS / filename))
                paths.append('/pmerj-arquivo/' + filename)
            q['support_image'] = json.dumps(paths)
        if before != json.dumps(q, sort_keys=True):
            changed.append({'slug':exam['slug'], **{key:q[key] for key in ['number','text','options','explanation','support_image']}})
common.export(exams,json.loads((BASE / 'pendencias.json').read_text(encoding='utf-8')))
sql = 'begin;\nupdate public.questions target set text=q.text,options=q.options,explanation=q.explanation,support_image=q.support_image from public.exams e cross join jsonb_to_recordset(' + common.quoted(json.dumps(changed,ensure_ascii=False)) + '::jsonb) as q(slug text,number integer,text text,options jsonb,explanation text,support_image text) where e.slug=q.slug and target.exam_id=e.id and target.number=q.number;\ncommit;'
(BASE / 'refinements.sql').write_text(sql,encoding='utf-8')
print(f'{len(changed)} questions refined for shared passages, tables and footer removal. SQL: {len(sql.encode())} bytes.')
