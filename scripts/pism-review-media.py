"""Crop only figures/tables from official PISM PDFs, keeping stems and options textual."""
import json,re,sys
from pathlib import Path
import pypdfium2 as pdf
from PIL import Image,ImageDraw
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/pism-revisao';OUT=ROOT/'public/pism-apoios';OUT.mkdir(exist_ok=True)
sys.stdout.reconfigure(encoding='utf-8')
meta=json.loads((D/'sources.json').read_text(encoding='utf-8'))
for slug,m in meta.items():
 if m['module']=='I':m['file']=f"pdf-extracts/pism-i-fontes/{m['year']}-{m['day']}.pdf"
 elif m['module']=='II' and m['year']>2024:m['file']=f"pdf-extracts/pism-ii-{m['year']}/dia-{m['day']}.pdf"
 else:m['file']=f"pdf-extracts/pism-expansao/pism-{m['module'].lower()}-{m['year']}-dia-{m['day']}-{'humanas' if m['module']=='III' else 'comum'}.pdf"
db=json.loads((D/'database-before.json').read_text(encoding='utf-8'))
assets={};inventory=[];thumbs=[]
# These vector figures are reviewed against the official page previews.
VECTORS={
 ('pism-2023-2',8):(8,(43,116,555,228)),
 ('pism-2024-1',16):(10,(77,292,262,452)),
 ('pism-2024-2',12):(8,(334,405,480,587)),
 ('pism-2024-2',17):(10,(43,75,553,175)),
 ('pism-2025-1',12):(11,(75,205,238,473)),
 ('pism-2025-1',13):(11,(360,212,562,450)),
 ('pism-2025-1',14):(12,(58,257,269,754)),
 ('pism-2025-2',12):(9,(75,491,241,759)),
 ('pism-ii-2024-dia-1',20):(16,(144,510,470,585)),
 ('pism-ii-2025-dia-1',13):(11,(86,602,258,691)),
 ('pism-ii-2026-dia-1',20):(12,(364,550,498,625)),
 ('pism-iii-2025-dia-2',10):(5,(318,530,555,605)),
}
def slugpath(e):return meta[e]['file']
def clean(t):return re.sub(r'[^a-z0-9]','',t.lower().replace('ã','a').replace('õ','o'))
for e in db:
 slug=e['slug'];m=meta[slug];doc=pdf.PdfDocument(ROOT/m['file']);pages=json.loads((D/f'{slug}-pages.json').read_text(encoding='utf-8'));byq={q['number']:[] for q in e['questions']}
 # Retain previously reviewed vector crops. New raster crops replace ambiguous old filenames.
 for q in e['questions']:
  if q['support_image']:
   paths=[x.strip() for x in re.split(r'[,\n]',q['support_image']) if x.strip()]
   for path in paths:
    if (ROOT/'public'/path.lstrip('/')).exists():byq[q['number']].append('/'+path.lstrip('/'))
 markerlist=[];fresh=set();figure_groups={};ends=[]
 for p in pages:
  for l in p['lines']:
   if re.search(r'^(?:QUESTÕES\s+DISCURSIVAS|(?:LÍNGUA PORTUGUESA|PORTUGUÊS|LITERATURAS?|GEOGRAFIA|HISTÓRIA|BIOLOGIA|QUÍMICA|FÍSICA|MATEMÁTICA)\s*[-–]\s*(?:Discursivas|Dissertativas))',l['text'],re.I):ends.append((p['page'],l['column'],l['top']))
   match=re.match(r'^questao(\d+)',clean(l['text']))
   if match and 1<=int(match[1])<=20:markerlist.append((p['page'],l['column'],l['top'],int(match[1])))
 for p in pages:
  for j,im in enumerate(p['images']):
   w=im['x1']-im['x0'];h=im['bottom']-im['top']
   if w<35 or h<25 or im['top']<65 or im['bottom']>p['height']-55:continue
   col=0 if m['year']==2024 or (im['x0']+im['x1'])/2<p['width']/2 else 1
   if ends and (p['page'],col,im['top'])>=min(ends):continue
   before=[x for x in markerlist if (x[0],x[1],x[2])<=(p['page'],col,im['top'])]
   after=[x for x in markerlist if (x[0],x[1],x[2])>(p['page'],col,im['top'])]
   n=max(before,key=lambda x:x[:3])[3] if before else 1
   # Reading posters/charts presented before their question belong to that next item.
   first_subject=next(q['subject'] for q in e['questions'] if q['number']==1)
   if n<=5 and after and ('Liter' in first_subject or 'Portug' in first_subject):n=min(after,key=lambda x:x[:3])[3]
   if slug=='pism-iii-2024-dia-1' and p['page']==7:n=5
   if slug=='pism-ii-2025-dia-1' and p['page']==6:n=4
   if slug=='pism-ii-2025-dia-1' and p['page']==7:n=5
   if slug=='pism-2024-1' and p['page']==4:n=3
   if slug=='pism-2024-1' and p['page']==7:n=7
   if slug=='pism-2025-1' and p['page']==5:n=3
   if slug=='pism-2025-1' and p['page']==6:n=4 if col==0 else 5
   if slug=='pism-2025-1' and p['page']==9:n=9
   if slug=='pism-ii-2024-dia-1' and p['page'] in (6,7):n=4
   if slug=='pism-iii-2025-dia-1' and p['page']==9:n=9
   if slug=='pism-2023-1' and p['page']==13 and im['top']>390:n=16
   if slug=='pism-ii-2024-dia-1' and p['page']==14:n=16
   if slug=='pism-iii-2024-dia-2' and p['page']==5:n=6
   figure_groups.setdefault((p['page'],n),[]).append(im)
 for (pno,n),figures in figure_groups.items():
   name=f'{slug}-q{n}-pagina-{pno}.png'
   bounds=(max(0,min(im['x0'] for im in figures)-1),max(0,min(im['top'] for im in figures)-.3),max(im['x1'] for im in figures)+1,max(im['bottom'] for im in figures)+.3)
   if slug=='pism-2025-1' and n==14:bounds=(50,bounds[1],bounds[2],bounds[3])
   image=doc[pno-1].render(scale=2.5).to_pil().crop(tuple(round(v*2.5) for v in bounds)).convert('RGB');image.save(OUT/name)
   if n not in fresh:byq[n]=[];fresh.add(n)
   path='/pism-apoios/'+name;byq[n].append(path);inventory.append(dict(slug=slug,number=n,page=pno,bounds=bounds,path=path));thumbs.append((name,image))
 for (s,n),(pno,bounds) in VECTORS.items():
  if s!=slug or n in fresh:continue
  name=f'{slug}-q{n}-vetor.png';image=doc[pno-1].render(scale=2.5).to_pil().crop(tuple(round(v*2.5) for v in bounds)).convert('RGB');image.save(OUT/name)
  path='/pism-apoios/'+name;byq[n].append(path);inventory.append(dict(slug=slug,number=n,page=pno,bounds=bounds,path=path));thumbs.append((name,image))
 if slug=='pism-2023-1':
  for n in (17,18,19):byq[n]=byq[16].copy()
 if slug in ('pism-ii-2024-dia-1','pism-iii-2024-dia-2'):
  for n in range(17,21) if slug=='pism-ii-2024-dia-1' else range(7,11):byq[n]+=byq[16 if slug=='pism-ii-2024-dia-1' else 6]
 assets[slug]={str(n):list(dict.fromkeys(paths)) for n,paths in byq.items()}
 print(slug,sum(bool(x) for x in byq.values()))
(D/'media.json').write_text(json.dumps(assets,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(D/'media-inventory.json').write_text(json.dumps(inventory,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
for batch in range((len(thumbs)+19)//20):
 sheet=Image.new('RGB',(1200,5*270),'#eee');draw=ImageDraw.Draw(sheet)
 for k,(label,im) in enumerate(thumbs[batch*20:batch*20+20]):
  x=k%4*300;y=k//4*270;im=im.copy();im.thumbnail((285,235));sheet.paste(im,(x+7,y+30));draw.text((x+4,y+3),label.replace('pism-',''),fill='black')
 sheet.save(D/f'media-contact-{batch+1}.jpg')
