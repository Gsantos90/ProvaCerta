"""Extract only figures/tables from official pages, not whole question statements."""
import json,sys
from pathlib import Path
import pypdfium2 as pdfium
from PIL import Image,ImageDraw
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/cbmerj';OUT=ROOT/'public/cbmerj-apoios';sys.stdout.reconfigure(encoding='utf8')
media={};inventory=[]
for year in (2023,2024,2025,2026):
 pages=json.loads((D/f'{year}-layout.json').read_text(encoding='utf8'));entries=json.loads((D/f'{year}-entries.json').read_text(encoding='utf8'));doc=pdfium.PdfDocument(str(ROOT/f'public/provas/cbmerj/{year}.pdf'))
 def save(n,p,box,kind='figura'):
  box=(max(0,box[0]-6),max(0,box[1]-5),min(p['width'],box[2]+6),min(p['height'],box[3]+5))
  path=f'/cbmerj-apoios/{year}-q{n}-p{p["page"]}-{kind}.png'
  bitmap=doc[p['page']-1].render(scale=2).to_pil().convert('RGB');bitmap.crop(tuple(round(v*2) for v in box)).save(ROOT/'public'/path.lstrip('/'))
  media.setdefault(f'{year}-{n}',[]).append(path);inventory.append(dict(year=year,number=n,page=p['page'],path=path,box=box))
 for e in entries:
  n=e['number']
  if n<=(15 if year==2023 else 20):continue
  spans={}
  for x in e['lines']:spans.setdefault((x['page'],x['column']),[]).append(x['line'])
  for (pno,col),lines in spans.items():
   p=next(p for p in pages if p['page']==pno)
   top=e['top'] if pno==e['page'] and col==e['column'] else 46
   next_marks=[a for a in entries if a['page']==pno and a['column']==col and a['top']>top+.1]
   bottom=min((a['top'] for a in next_marks),default=p['height']-44)
   x0,x1=(28,p['width']/2) if year<=2024 and col==0 else (p['width']/2,p['width']-25) if year<=2024 else (80,p['width']-25)
   candidates=[i for i in p['images'] if i['x1']-i['x0']>30 and i['bottom']-i['top']>20 and i['x0']>=(x0 if year<=2024 else 40) and i['x1']<=x1+3 and top-30<=i['top'] and i['bottom']<=bottom+2]
   candidates += [i for i in p['rects']+p['curves'] if 18<i['x1']-i['x0']<x1-x0+1 and 15<i['bottom']-i['top']<bottom-top and i['x0']>=x0 and i['x1']<=x1+3 and top<=i['top'] and i['bottom']<=bottom]
   if candidates:
    box=[min(i['x0'] for i in candidates),min(i['top'] for i in candidates),max(i['x1'] for i in candidates),max(i['bottom'] for i in candidates)]
    # Include axis tick labels, legends and alternative letters close to drawings.
    near=[l for l in lines if l['top']>=box[1]-8 and l['bottom']<=box[3]+8 and l['x0']>=x0 and l['x1']-l['x0']<(x1-x0)*.75 and l['x0']>=box[0]-15 and l['x1']<=box[2]+15]
    if near:box=[min(box[0],min(l['x0'] for l in near)),min(box[1],min(l['top'] for l in near)),max(box[2],max(l['x1'] for l in near)),max(box[3],max(l['bottom'] for l in near))]
    save(n,p,box)
 # Periodic table is a separate shared support page, never a whole question.
 pno=2 if year<=2024 else 47;p=doc[pno-1];w,h=p.get_size();path=f'/cbmerj-apoios/{year}-tabela-periodica.png'
 pic=p.render(scale=1.8).to_pil().convert('RGB');pic.crop((round(w*.06*1.8),round(h*.08*1.8),round(w*.96*1.8),round(h*.93*1.8))).save(ROOT/'public'/path.lstrip('/'))
 for n in range(46,61) if year==2023 else range(76,84) if year==2024 else range(51,61):media.setdefault(f'{year}-{n}',[]).append(path)
 if year==2025:
  # The ambulance illustration introduces the common passage of Q41-Q43.
  p=next(p for p in pages if p['page']==19)
  save(41,p,[140,122,515,195],'apoio-comum');path=media['2025-41'][-1]
  for n in (42,43):media.setdefault(f'2025-{n}',[]).append(path)
  media.pop('2025-40',None)
 # Manually verified complete vector tables/diagrams, whose strokes may consist
 # only of thin lines or rectangles and cannot be detected by image objects.
 manual={
  2023:[(26,6,(115,214,239,267))],
  2024:[(79,15,(43,152,286,241)),(84,16,(70,150,275,238)),(88,17,(73,108,258,214)),(88,17,(42,318,286,789)),(91,18,(55,106,276,182)),(91,18,(40,236,287,288))],
  2025:[(21,13,(190,95,433,205)),(41,19,(80,326,147,488)),(49,22,(250,134,445,263)),(52,23,(150,275,510,363)),(53,23,(87,530,544,595)),(58,25,(85,354,551,419)),(58,25,(80,443,551,648)),(59,26,(105,88,543,162)),(62,27,(92,439,546,618)),(65,30,(90,88,543,211)),(67,31,(88,173,542,405)),(69,33,(98,59,545,302)),(75,38,(90,63,288,362)),(77,40,(164,62,473,236)),(80,43,(190,63,448,320))],
  2026:[(21,14,(180,90,449,196)),(41,20,(95,113,540,205)),(44,21,(115,505,485,630)),(45,22,(170,127,466,271)),(51,24,(220,97,465,167)),(48,23,(190,117,453,157)),(59,26,(177,517,467,599)),(61,28,(86,212,548,287)),(61,28,(80,333,550,580)),(70,35,(77,55,553,730))],
 }[year]
 replaced=set()
 for n,pno,box in manual:
  if n not in replaced:
   # A manual crop replaces detected fragments on this page; other pages remain.
   old=[i for i in inventory if i['year']==year and i['number']==n and i['page']==pno]
   for i in old:
    if i['path'] in media.get(f'{year}-{n}',[]):media[f'{year}-{n}'].remove(i['path'])
    inventory.remove(i)
   replaced.add(n)
  p=next(p for p in pages if p['page']==pno)
  save(n,p,box,'completo-'+str(sum(i['year']==year and i['number']==n for i in inventory)))
(D/'media.json').write_text(json.dumps(media,ensure_ascii=False,indent=2),encoding='utf8')
(D/'media-inventory.json').write_text(json.dumps(inventory,ensure_ascii=False,indent=2),encoding='utf8')
for start in range(0,len(inventory),16):
 sheet=Image.new('RGB',(1200,1400),'#eee');draw=ImageDraw.Draw(sheet)
 for j,item in enumerate(inventory[start:start+16]):
  pic=Image.open(ROOT/'public'/item['path'].lstrip('/'));pic.thumbnail((285,315));x=(j%4)*300;y=(j//4)*350
  sheet.paste(pic,(x,y+27));draw.text((x+4,y+5),f'{item["year"]} Q{item["number"]} P{item["page"]}',fill='black')
 sheet.save(D/f'media-contact-{start//16+1}.jpg')
print(len(inventory),'figures/tables;',len(media),'questions with visual supports')
