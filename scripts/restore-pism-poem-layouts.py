"""Read parallel poem columns in their intended order rather than interleaving verses."""
import json
from pathlib import Path
import pdfplumber
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/pism-revisao';sources=json.loads((D/'sources.json').read_text(encoding='utf-8'))
regions=[('pism-2023-1',5,580,739,'dias'),('pism-2023-2',3,198,358,'ninguem'),('pism-2023-2',4,286,576,'vozes'),('pism-2023-2',5,102,405,'cancao'),('pism-ii-2024-dia-2',5,377,664,'papo'),('pism-iii-2024-dia-1',9,576,748,'assunto')]
result={}
for slug,pno,top,bottom,key in regions:
 m=sources[slug]
 path=ROOT/(m.get('file') or (f"pdf-extracts/pism-i-fontes/{m['year']}-{m['day']}.pdf" if m['module']=='I' else f"pdf-extracts/pism-expansao/pism-{m['module'].lower()}-{m['year']}-dia-{m['day']}-{'humanas' if m['module']=='III' else 'comum'}.pdf"))
 with pdfplumber.open(path) as doc:
  p=doc.pages[pno-1].dedupe_chars(tolerance=1)
  result[key]='\n\n'.join(p.crop((x0,top,x1,bottom)).extract_text(x_tolerance=2,y_tolerance=3) or '' for x0,x1 in [(34,297),(297,562)])
result['dias']='Um homem como Abdias,\n'+result['dias']
result['vozes']=result['vozes'].replace('Conceição Evaristo\n','')
result['assunto']=result['assunto'].replace('Gregório de Matos\n','')
(D/'poem-layouts.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
