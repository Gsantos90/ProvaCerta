import json,re
from pathlib import Path
import pypdfium2 as pdfium
from PIL import Image
D=Path('pdf-extracts/enem-migration')
for year in [2022,2023]:
 rows=json.loads((D/f'{year}-questions.json').read_text(encoding='utf-8'))
 original={q['number']:q for q in json.loads((D/f'{year}-regions.json').read_text(encoding='utf-8'))}
 docs={day:pdfium.PdfDocument(D/f'{year}-dia-{day}.pdf') for day in [1,2]}
 cache={};fixed=0
 for q in rows:
  n=q['number'];day=q['day'];regions=[dict(r,bbox=list(r['bbox'])) for r in original[n]['regions']]
  path=Path('public')/q['support_image'].lstrip('/')
  with Image.open(path) as existing:wide=existing.width>700
  if wide:
   regions=regions[:1]
   r=regions[0];r['bbox'][2]=docs[day][r['page']-1].get_width()-r['bbox'][0]
  if n in ([108] if year==2022 else [153,172]):
   regions.append({'page':regions[0]['page'],'bbox':[286.134,55,538.748,725.528]})
  images=[];tails=[];changed=False
  for r in regions:
   page=docs[day][r['page']-1];h=page.get_height();x0,top,x1,bottom=r['bbox']
   if abs(bottom-(h-54))<1:
    changed=True
    text=page.get_textpage().get_text_bounded(left=x0,bottom=35,right=x1,top=54)
    text='\n'.join(line.strip() for line in text.splitlines() if line.strip() and not re.search(r'CADERNO|[LM][CT] .? [12]|\bdia\b|AMARELO|ENEM20',line,re.I)).strip()
    if text:tails.append(text)
    bottom=h-35
   key=(day,r['page'])
   if key not in cache:
    cache.clear();cache[key]=page.render(scale=2).to_pil().convert('RGB')
   images.append(cache[key].crop((round(x0*2),round(top*2),round(x1*2),round(bottom*2))))
  if not changed:continue
  sheet=Image.new('RGB',(max(im.width for im in images),sum(im.height for im in images)+16*(len(images)-1)),'white');y=0
  for im in images:sheet.paste(im,(0,y));y+=im.height+16
  sheet.save(path)
  tail='\n'.join(tails)
  if tail:
   q['transcription']+='\n'+tail;q['support']+='\n'+tail
   if not q['graphical_options']:q['options'][4]+=' '+tail
  fixed+=1
 (D/f'{year}-questions.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
 print(year,'margens ajustadas',fixed,flush=True)
