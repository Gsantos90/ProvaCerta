import importlib.util,json,re
from pathlib import Path
sp=importlib.util.spec_from_file_location('enm',Path('scripts/import-enem-bank.py'))
m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m)
def write_year(year):
 raw=json.loads((m.D/f'{year}-regions.json').read_text(encoding='utf-8'))
 qs={q['number']:q for q in raw}
 if year in [2022,2023]:
  for day in [1,2]:
   with m.pdfplumber.open(m.D/f'{year}-dia-{day}.pdf') as doc:
    for q in qs.values():
     if (1 if q['number']<=90 or q['number']>=181 else 2)!=day:continue
     original=q['regions'][0];pn=original['page'];page=doc.pages[pn-1]
     x0,top,x1,bottom=original['bbox'];marker=top+5
     full=x0<page.width/2 and any(line['x0']>x0+40 and line['x1']>page.width/2+100 and 0<=line['top']-marker<=12 for line in page.lines)
     continuation=q['number'] in ([108] if year==2022 else [153,172])
     if not (full or continuation):continue
     clean=page.filter(lambda obj:obj.get('object_type')!='char' or (obj['size']>=5 and obj['upright'])).dedupe_chars()
     q.update(regions=[],raw='',labels=[])
     m.add_region(q,clean,pn-1,(x0,top,page.width-x0,bottom) if full else original['bbox'])
     if continuation:m.add_region(q,clean,pn-1,(286.134,55,page.width-28.181,page.height-54))
     image=Path(f'public/enem-{year}/q{q["number"]:03}.png')
     if image.exists():image.unlink()
 if year==2025:
  for day in [1,2]:
   with m.pdfplumber.open(m.D/f'{year}-dia-{day}.pdf') as doc:
    relevant=[q for q in qs.values() if (1 if q['number']<=90 or q['number']>=181 else 2)==day]
    pages=set(q['regions'][0]['page'] for q in relevant)
    for pn in pages:
     first=[q for q in relevant if q['regions'][0]['page']==pn]
     if not all(q['regions'][0]['bbox'][0]+3<doc.pages[pn-1].width/2 for q in first):continue
     page=doc.pages[pn-1].filter(lambda obj:obj.get('object_type')!='char' or (obj['size']>=5 and obj['upright'])).dedupe_chars()
     for q in first:
      original=q['regions'][0]
      x0,top,x1,bottom=original['bbox']
      q.update(regions=[],raw='',labels=[])
      m.add_region(q,page,pn-1,(x0,top,page.width-x0,bottom))
 rows=m.make_rows(year,qs)
 if year==2025:
  pdf=m.pdfium.PdfDocument(m.D/'2025-dia-1.pdf')
  pdf[5].set_cropbox(*pdf[5].get_mediabox())
  im=pdf[5].render(scale=1.8).to_pil()
  path=Path('public/enem-2025/apoio-q006-010.png');im.save(path,optimize=True)
  for q in rows:
   if 6<=q['number']<=10:q['support_image']='/enem-2025/apoio-q006-010.png,'+q['support_image']
 (m.D/f'{year}-questions.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
 content=m.seed(year,rows)
 if year==2024:
  content=content.replace('commit;',"""-- Corrige a representação das questões já sinalizadas como anuladas.
update public.questions q set answer='A/B/C/D/E'
from public.exams e where q.exam_id=e.id and e.slug='enem-2024'
and q.explanation ilike '%questão anulada%';
commit;""")
 name=f'seed-enem-{year}.sql' if year!=2024 else 'update-enem-2024-espanhol.sql'
 Path('supabase',name).write_text(content,encoding='utf-8')
 return content
if __name__=='__main__':
 import sys
 for year in map(int,sys.argv[1:]):write_year(year)
 files=[Path('supabase',f'seed-enem-{y}.sql') for y in [2022,2023,2025]]+[Path('supabase/update-enem-2024-espanhol.sql')]
 if all(p.exists() for p in files):
  content='begin;\n'+'\n'.join(p.read_text(encoding='utf-8').replace('begin;','').replace('commit;','') for p in files)+'\ncommit;\n'
  Path('supabase/import-enem-2022-2023-2025.sql').write_text(content,encoding='utf-8')
