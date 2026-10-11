import json,sys
from pathlib import Path
import pypdfium2 as pdf
from PIL import Image,ImageDraw
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/pism-revisao'
source=(ROOT/'src/lib/pismSources.js').read_text(encoding='utf-8');meta=json.loads(source[source.index('{'):source.index('\n\nexport')].rstrip().removesuffix(';'))
for slug,m in meta.items():
 if len(sys.argv)>1 and slug not in sys.argv[1:]:continue
 if m['module']=='I':path=ROOT/f"pdf-extracts/pism-i-fontes/{m['year']}-{m['day']}.pdf"
 elif m['module']=='II' and m['year']>2024:path=ROOT/f"pdf-extracts/pism-ii-{m['year']}/dia-{m['day']}.pdf"
 else:path=ROOT/f"pdf-extracts/pism-expansao/pism-{m['module'].lower()}-{m['year']}-dia-{m['day']}-{'humanas' if m['module']=='III' else 'comum'}.pdf"
 doc=pdf.PdfDocument(path);pnos=list(range(3,max(m['pages'])+1));cw=330;ch=490
 sheet=Image.new('RGB',(cw*4,ch*((len(pnos)+3)//4)),'#ddd');draw=ImageDraw.Draw(sheet)
 for i,pno in enumerate(pnos):
  im=doc[pno-1].render(scale=.65).to_pil();im.thumbnail((cw-10,ch-30));x=(i%4)*cw;y=(i//4)*ch
  sheet.paste(im,(x,y+22));draw.text((x+5,y+3),f'{slug} PDF {pno}',fill='black')
 sheet.save(D/f'{slug}-contact.jpg');print(slug)
