import fitz,json
from pathlib import Path
root=Path('public/provas/destrinchando/pism-2026-i')
clips={'matematica-12':(1,10,(110,156,237,369)),'matematica-13':(1,10,(322,148,538,308)),'matematica-14':(1,11,(52,204,285,800)),'matematica-15':(1,11,(325,163,535,453)),'fisica-12':(2,8,(52,548,286,724))}
p=Path('src/lib/walkthroughQuestions.json');data=json.loads(p.read_text(encoding='utf8'))
for q in data:
 key=q['id'].removeprefix('pism-2026-i-')
 if key in clips and q.get('year')==2026 and q.get('module')=='I':
  day,page,box=clips[key];doc=fitz.open(f'pdf-extracts/pism-i-fontes/2026-{day}.pdf');name=key+'-apoio.png';doc[page].get_pixmap(matrix=fitz.Matrix(2,2),clip=fitz.Rect(box)).save(root/name);q['supportImages']=['/provas/destrinchando/pism-2026-i/'+name]
p.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
print('5 figuras de apoio separadas.')
