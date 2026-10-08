import json
from pathlib import Path
import pypdfium2 as pdfium
from PIL import Image
import re
D=Path('pdf-extracts/enem-migration')
for year in [2024,2025]:
 qs=json.loads((D/f'{year}-regions.json').read_text(encoding='utf-8'))
 if year==2024:qs=[q for q in qs if q['number']>=181]
 docs={day:pdfium.PdfDocument(D/f'{year}-dia-{day}.pdf') for day in ([1] if year==2024 else [1,2])}
 full={}
 if year==2025:
  for day in [1,2]:
   relevant=[q for q in qs if (1 if q['number']<=90 or q['number']>=181 else 2)==day]
   for pn in set(q['regions'][0]['page'] for q in relevant):
    same=[q for q in relevant if q['regions'][0]['page']==pn]
    full[(day,pn)]=all(q['regions'][0]['bbox'][0]+3<636.614/2 for q in same)
 rows=json.loads((D/f'{year}-questions.json').read_text(encoding='utf-8'))
 by_number={q['number']:q for q in rows}
 cache={}
 for q in qs:
  n=q['number'];day=1 if n<=90 or n>=181 else 2
  regions=q['regions']
  if full.get((day,regions[0]['page'])):
   r=regions[0];bbox=list(r['bbox']);bbox[2]=636.614-bbox[0]
   regions=[dict(r,bbox=bbox)]
  images=[];texts=[]
  for r in regions:
   key=(day,r['page']);page=docs[day][r['page']-1]
   page.set_cropbox(*page.get_mediabox())
   if key not in cache:
    cache.clear();cache[key]=page.render(scale=2).to_pil().convert('RGB')
   texts.append(page.get_textpage().get_text_bounded(left=r['bbox'][0],bottom=page.get_height()-r['bbox'][3],right=r['bbox'][2],top=page.get_height()-r['bbox'][1]))
   assert abs(cache[key].width-page.get_width()*2)<=2
   x0,top,x1,bottom=r['bbox']
   images.append(cache[key].crop((round(x0*2),round(top*2),round(x1*2),round(bottom*2))))
  joined=Image.new('RGB',(max(im.width for im in images),sum(im.height for im in images)+16*(len(images)-1)),'white');y=0
  for im in images:joined.paste(im,(0,y));y+=im.height+16
  joined.save(f'public/enem-{year}/q{n:03}.png')
  row=by_number[n]
  raw='\n'.join(texts).strip()
  row['transcription']=raw
  row['support']='A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.\n\nTexto disponível para leitura:\n'+raw
  matches=list(re.finditer(r'(?m)^([A-E])\s+',raw))
  valid=[m[1] for m in matches]==list('ABCDE')
  opts=[raw[m.end():matches[i+1].start() if i<4 else len(raw)].strip() for i,m in enumerate(matches)] if valid else []
  row['graphical_options']=not valid or any(not o or '(cid:' in o for o in opts)
  row['options']=['Alternativa '+letter+' — consulte a imagem da questão.' for letter in 'ABCDE'] if row['graphical_options'] else opts
 if year==2025:
  page=docs[1][5];page.set_cropbox(*page.get_mediabox());page.render(scale=1.8).to_pil().save('public/enem-2025/apoio-q006-010.png')
 (D/f'{year}-questions.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
 print(year,'recortes alinhados à MediaBox',len(qs),flush=True)
for year in [2022,2023,2024,2025]:
 for path in Path(f'public/enem-{year}').glob('q*.png'):
  im=Image.open(path).convert('RGB')
  band=im.crop((0,0,im.width,min(45,im.height)))
  pixels=band.load()
  has_header=any(sum(min(pixels[x,y])<245 for x in range(im.width))>im.width*.45 for y in range(band.height))
  assert has_header,('Título da questão fora do recorte',str(path))
print('560 imagens: títulos e faixas dos cabeçalhos presentes.')
