"""Extract official CBMERJ PDFs with layout coordinates retained for review."""
import json,re,sys,logging
from pathlib import Path
import pdfplumber
import pypdfium2 as pdfium
from PIL import Image,ImageDraw
logging.getLogger('pdfminer').setLevel(logging.ERROR)
sys.stdout.reconfigure(encoding='utf8')
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'pdf-extracts/cbmerj'
for year in (2023,2024,2025,2026):
 target=OUT/f'{year}-layout.json'
 if not target.exists():
  result=[]
  with pdfplumber.open(ROOT/f'public/provas/cbmerj/{year}.pdf') as doc:
   for p in doc.pages:
    if p.page_number<3 or (year>2024 and p.page_number>(43 if year==2025 else 42)):continue
    columns=[(28,36,p.width/2, p.height-32),(p.width/2,36,p.width-25,p.height-32)] if year<=2024 else [(30,46,p.width-30,p.height-30)]
    lines=[]
    for col,box in enumerate(columns):
     crop=p.crop(box)
     for l in crop.extract_text_lines(layout=False,x_tolerance=2,y_tolerance=3,return_chars=True):
      lines.append(dict(text=l['text'],x0=l['x0'],x1=l['x1'],top=l['top'],bottom=l['bottom'],column=col,chars=[{k:c[k] for k in ['text','x0','x1','top','bottom','size']} for c in l['chars']]))
    marks=[]
    if year>2024:
     words=p.extract_words()
     for w in words:
      if w['text']=='QUESTÃO':
       nums=[a for a in words if a['text'].isdigit() and a['x0']<100 and w['top']<=a['top']<=w['bottom']+25]
       if nums:marks.append(dict(number=int(nums[0]['text']),top=w['top']))
    result.append(dict(page=p.page_number,width=p.width,height=p.height,lines=lines,marks=marks,images=[{k:i[k] for k in ['x0','x1','top','bottom']} for i in p.images],rects=[{k:i[k] for k in ['x0','x1','top','bottom']} for i in p.rects],curves=[{k:i[k] for k in ['x0','x1','top','bottom']} for i in p.curves]))
    print(year,p.page_number,flush=True)
  target.write_text(json.dumps(result,ensure_ascii=False),encoding='utf8')
 doc=pdfium.PdfDocument(str(ROOT/f'public/provas/cbmerj/{year}.pdf'))
 pages=list(range(2,21 if year==2023 else 20 if year==2024 else 43 if year==2025 else 42))
 for part in range(0,len(pages),16):
  sheet=Image.new('RGB',(1400,1900),'#dedede');draw=ImageDraw.Draw(sheet)
  for j,index in enumerate(pages[part:part+16]):
   pic=doc[index].render(scale=.55).to_pil().convert('RGB');pic.thumbnail((340,440))
   x=(j%4)*350;y=(j//4)*475;sheet.paste(pic,(x,y+23));draw.text((x+5,y+4),f'{year} - pagina {index+1}',fill='black')
  sheet.save(OUT/f'{year}-contact-{part//16+1}.jpg')
