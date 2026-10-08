"""Read alternatives by their printed baselines, including subscripts/exponents."""
import importlib.util,json,re
from pathlib import Path
sp=importlib.util.spec_from_file_location('enm',Path('scripts/structure-enem-content.py'));m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m)
f,D=m.fitz,m.D
sup=str.maketrans('0123456789+-()','⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁽⁾')
sub=str.maketrans('0123456789+-()','₀₁₂₃₄₅₆₇₈₉₊₋₍₎')
for year in [2022,2023,2025]:
 rows=json.loads((D/f'{year}-structured-draft.json').read_text(encoding='utf-8'))
 cached={q['number']:q for q in json.loads((D/f'{year}-regions.json').read_text(encoding='utf-8'))}
 aa={a['number']:a for a in json.loads((D/f'{year}-structure-audit.json').read_text(encoding='utf-8'))}
 docs={d:f.open(D/f'{year}-dia-{d}.pdf') for d in [1,2]}
 for doc in docs.values():
  for p in doc:p.set_cropbox(p.mediabox)
 for q in rows:
  n,day=q['number'],q['day'];regs=[dict(r,bbox=list(r['bbox'])) for r in cached[n]['regions']]
  pn=regs[0]['page'];cont={2022:[108],2023:[153,172],2025:[]}[year]
  same=[c for c in cached.values() if c['regions'][0]['page']==pn and (1 if c['number']<=90 or c['number']>=181 else 2)==day]
  if len(regs)==1 and all(c['regions'][0]['bbox'][0]+3<docs[day][pn-1].rect.width/2 for c in same) and not any(c['number'] in cont for c in same):regs[0]['bbox'][2]=docs[day][pn-1].rect.width-28
  if n in cont:regs=regs[:1]+[dict(page=pn,bbox=[286.134,55,540,734])]
  opts={l:[] for l in 'ABCDE'}
  for r in regs:
   p=docs[day][r['page']-1];box=f.Rect(r['bbox'])
   if year==2025 and box.x1>p.rect.width/2+30:box.x1=p.rect.width-(57.5197 if r['page']%2==0 else 64.6063)+1
   elif year<2025:box.x1+=1.6
   box.y1=min(p.rect.height-(73 if year==2025 else 45),box.y1)
   labels,ls={},[]
   for b in p.get_text('dict')['blocks']:
    if b['type']!=0:continue
    for line in b['lines']:
     if abs(line['dir'][1])>.1:continue
     spans=[]
     for s in line['spans']:
      if not m.inside(s['bbox'],box,.6):continue
      letter=m.clean(s['text'])
      if 'Bundesbahn' in s['font'] and letter in list('ABCDE'):labels.setdefault(letter,s)
      elif s['size']>=5:spans.append(s)
     if not spans:continue
     largest=max(spans,key=lambda s:s['size']);baseline=largest['origin'][1];parts=[]
     for s in spans:
      t=s['text']
      if s['size']<largest['size']*.9 and re.fullmatch(r'[0-9+−\-()]+',t.strip()):
       if s['origin'][1]<baseline-1.5:t=t.replace('−','-').translate(sup)
       elif s['origin'][1]>baseline+1:t=t.replace('−','-').translate(sub)
      parts.append(t)
     ls.append(dict(text=m.clean(''.join(parts)),y=baseline,x=min(s['bbox'][0] for s in spans)))
   for letter,lb in labels.items():
    start=lb['origin'][1]-8
    end=min((o['origin'][1]-8 for o in labels.values() if abs(o['bbox'][0]-lb['bbox'][0])<40 and o['origin'][1]>lb['origin'][1]+3),default=box.y1)
    opts[letter]+=[l['text'] for l in sorted(ls,key=lambda l:(l['y'],l['x'])) if start<=l['y']<end and l['x']>=lb['bbox'][0]+4]
  q['options']=[m.clean(' '.join(opts[l])) or f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE']
  # Retain the actual A–E markers next to graphical alternatives.
  for im in aa[n]['figures']:
   if im['path'] not in q['support_image'].split(','):continue
   p=docs[day][im['page']-1];crop=f.Rect(im['bbox'])
   for b in p.get_text('dict')['blocks']:
    if b['type']!=0:continue
    for line in b['lines']:
     for s in line['spans']:
      if 'Bundesbahn' in s['font'] and m.clean(s['text']) in list('ABCDE'):
       lb=f.Rect(s['bbox'])
       if crop.y0-4<=lb.y0<=crop.y1 and crop.x0-65<=lb.x0<=crop.x1:crop|=lb
   p.get_pixmap(matrix=f.Matrix(2,2),clip=crop+(-1,0,1,0),alpha=False).save(Path('public')/im['path'].lstrip('/'))
  if year==2025 and n==31:
   im=aa[n]['figures'][0];p=docs[day][im['page']-1];b=f.Rect(im['bbox']);photo=f.Rect(b.x0+b.width*.32,b.y0+b.height*.61,b.x0+b.width*.66,b.y1)
   path=Path('public/enem-2025/q031-photo.png');p.get_pixmap(matrix=f.Matrix(2,2),clip=photo,alpha=False).save(path);q['support_image']='/enem-2025/q031-photo.png'
 (D/f'{year}-structured-draft.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
 print(year,'alternativas por linha de base e marcadores gráficos conferidos',flush=True)
