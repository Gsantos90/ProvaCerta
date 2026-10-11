"""Extract the official PISM pages with coordinates for editorial review."""
import json,re,sys,unicodedata
from pathlib import Path
import pdfplumber
import pypdfium2 as pdfium
ROOT=Path(__file__).resolve().parents[1]
D=ROOT/'pdf-extracts/pism-revisao';D.mkdir(exist_ok=True)
sys.stdout.reconfigure(encoding='utf-8')
source=(ROOT/'src/lib/pismSources.js').read_text(encoding='utf-8')
meta=json.loads(source[source.index('{'):source.index('\n\nexport')].rstrip().removesuffix(';'))
if (D/'sources.json').exists():
 previous=json.loads((D/'sources.json').read_text(encoding='utf-8'))
 for slug,m in meta.items():
  if previous.get(slug,{}).get('file'):m['file']=previous[slug]['file']
def clean(s):
 s=s.replace('\ufffe','').replace('ı','i').replace('\x1c','fi').replace('\x1d','fl')
 for mark,comb in [('¸','\u0327'),('´','\u0301'),('`','\u0300'),('ˆ','\u0302'),('˜','\u0303'),('¨','\u0308')]:
  s=re.sub(re.escape(mark)+r'\s*([a-zA-Z])',lambda m:unicodedata.normalize('NFC',m[1]+comb),s)
 return unicodedata.normalize('NFC',s)
def repaired_chars(chars):
 chars=[dict(c) for c in chars]
 accents={'¸':'\u0327','´':'\u0301','`':'\u0300','ˆ':'\u0302','˜':'\u0303','¨':'\u0308'}
 removed=set()
 for i,c in enumerate(chars):
  if c['text'] not in accents:continue
  candidates=[(j,b) for j,b in enumerate(chars) if b['text'] in ('cC' if c['text']=='¸' else 'aAeEiIoOuUı') and abs(b['top']-c['top'])<4 and b['x0']-1<=(c['x0']+c['x1'])/2<=b['x1']+1]
  if candidates:
   j,b=min(candidates,key=lambda jb:abs((jb[1]['x0']+jb[1]['x1'])/2-(c['x0']+c['x1'])/2))
   b['text']=unicodedata.normalize('NFC',b['text'].replace('ı','i')+accents[c['text']]);removed.add(i)
 return [c for i,c in enumerate(chars) if i not in removed]
for slug,m in meta.items():
 if len(sys.argv)>1 and slug not in sys.argv[1:]:continue
 if m['module']=='I': path=ROOT/f"pdf-extracts/pism-i-fontes/{m['year']}-{m['day']}.pdf"
 elif m['module']=='II' and m['year']>2024:path=ROOT/f"pdf-extracts/pism-ii-{m['year']}/dia-{m['day']}.pdf"
 else:path=ROOT/f"pdf-extracts/pism-expansao/pism-{m['module'].lower()}-{m['year']}-dia-{m['day']}-{'humanas' if m['module']=='III' else 'comum'}.pdf"
 m['file']=str(path.relative_to(ROOT)).replace('\\','/')
 pages=[]
 pd=pdfium.PdfDocument(path)
 with pdfplumber.open(path) as doc:
  for pno in range(3,min(len(doc.pages),max(m['pages'])+1)+1):
   p=doc.pages[pno-1].dedupe_chars(tolerance=1,extra_attrs=('fontname','size'))
   p._objects['char']=repaired_chars(p.chars)
   two_columns=m['year']>2024
   regions=[(30,65,p.width/2,p.height-36),(p.width/2,65,p.width-25,p.height-36)] if two_columns else [(25,65,p.width-25,p.height-36)]
   lines=[]; tp=pd[pno-1].get_textpage()
   for col,bounds in enumerate(regions):
    for l in p.crop(bounds).extract_text_lines(x_tolerance=2,y_tolerance=3):
     raw=tp.get_text_bounded(l['x0']-0.5,p.height-l['bottom']-0.3,l['x1']+0.5,p.height-l['top']+0.3) if slug=='pism-ii-2025-dia-2' else l['text']
     lines.append(dict(text=clean(raw).replace('\r','').replace('\n',' '),top=round(l['top'],2),bottom=round(l['bottom'],2),x0=round(l['x0'],2),x1=round(l['x1'],2),column=col))
   pages.append(dict(page=pno,width=p.width,height=p.height,lines=lines,images=[{k:round(i[k],2) for k in ['x0','x1','top','bottom']} for i in p.images if i['top']>55],rects=[{k:round(i[k],2) for k in ['x0','x1','top','bottom']} for i in p.rects],curves=[{k:round(i[k],2) for k in ['x0','x1','top','bottom']} for i in p.curves]))
 (D/f'{slug}-pages.json').write_text(json.dumps(pages,ensure_ascii=False,indent=2),encoding='utf-8')
 (D/f'{slug}.txt').write_text('\n\n'.join(f"=== PÁGINA {p['page']} ===\n"+'\n'.join(l['text'] for l in p['lines']) for p in pages),encoding='utf-8')
 print(slug,len(pages))
(D/'sources.json').write_text(json.dumps(meta,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
