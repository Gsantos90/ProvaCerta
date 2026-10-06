from pathlib import Path
import pypdfium2 as pdf
from PIL import Image,ImageDraw
import json
D=Path('pdf-extracts/pism-expansao')
items=[('ii',2024,1,13),('iii',2024,1,5),('iii',2024,1,11),('iii',2024,1,12),('iii',2026,1,11),('iii',2026,1,12)]
for m,y,d,n in items:
 p=pdf.PdfDocument(D/(f'pism-{m}-{y}-dia-{d}-'+('comum.pdf' if m=='ii' else 'humanas.pdf')))[n-1]
 im=p.render(scale=1.5).to_pil();im.save(D/f'conferencia-{m}-{y}-{d}-pagina-{n}.png')
# inventory larger embedded figures excluding logos and option icons
for item in json.loads((D/'catalogo.json').read_text(encoding='utf-8')):
 doc=pdf.PdfDocument(D/item['file']); print(item['slug'])
 for i in sorted(set(item['pages'])):
  imgs=[(j,tuple(round(v,1) for v in obj.get_bounds())) for j,obj in enumerate(doc[i-1].get_objects(filter=[3])) if obj.get_bounds()[2]-obj.get_bounds()[0]>35 and obj.get_bounds()[3]-obj.get_bounds()[1]>25]
  if imgs:print(i,imgs)