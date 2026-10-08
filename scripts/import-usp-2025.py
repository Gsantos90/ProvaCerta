import json,re,sys
from pathlib import Path
import pdfplumber
sys.stdout.reconfigure(encoding='utf-8')
D=Path('pdf-extracts/usp-2025')
sources={'prova':'https://www.fuvest.br/wp-content/uploads/fuvest2025_primeira_fase_prova_V1.pdf','gabarito':'https://www.fuvest.br/wp-content/uploads/fuvest2025_gabarito_primeira_fase.pdf','acervo':'https://www.fuvest.br/acervo-vestibular-2025/'}
(D/'fontes.json').write_text(json.dumps(sources,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
questions={}
shared=[]
current=None
with pdfplumber.open(D/'prova-v1.pdf') as doc:
 for pi,page in enumerate(doc.pages):
  if pi==0 or pi==len(doc.pages)-1: continue
  columns=[(25,40,570,805)] if pi in (1,11) else [(25,40,292,805),(302,40,570,805)]
  for bounds in columns:
   col=page.crop(bounds)
   markers=[w for w in col.extract_words(extra_attrs=['fontname','size']) if re.fullmatch(r'\d{2}',w['text']) and w['size']>12 and 'Gadugi-Bold' in w['fontname']]
   markers.sort(key=lambda w:w['top'])
   parts=[]
   if not markers or markers[0]['top']>65:
    parts.append((current,bounds[1],markers[0]['top']-5 if markers else bounds[3],False))
   for i,m in enumerate(markers):
    n=int(m['text']); questions.setdefault(n,{'number':n,'raw':'','regions':[]})
    current=n
    parts.append((n,m['top']-5,markers[i+1]['top']-5 if i+1<len(markers) else bounds[3],True))
   for n,top,bottom,has_marker in parts:
    if n is None or bottom<=top: continue
    rect=(bounds[0],top,bounds[2],bottom)
    crop=page.crop(rect)
    text=crop.extract_text(x_tolerance=2,y_tolerance=3) or ''
    if has_marker: text=re.sub(r'^\s*\{\s*\d{2}\s*\}\s*','',text)
    questions[n]['raw']+=text+'\n'
    questions[n]['regions'].append({'page':pi+1,'bbox':list(rect),'text':text})
assert sorted(questions)==list(range(1,91)),sorted(questions)
for q in questions.values():
 raw=q['raw']; blocks=raw.split('#####')
 q['body']=blocks[0].strip()
 for tail in blocks[1:]:
  if len(tail.strip())>20: shared.append({'preceding':q['number'],'text':tail.strip()})
 matches=list(re.finditer(r'(?m)^\(([A-E])\)\s*',q['body']))
 q['labels']=[m[1] for m in matches]
 if q['labels']==list('ABCDE'):
  q['text']=q['body'][:matches[0].start()].strip()
  q['options']=[q['body'][m.end():matches[i+1].start() if i<4 else len(q['body'])].strip() for i,m in enumerate(matches)]
 else: q['text']=q['body'];q['options']=[]
(D/'question-blocks.json').write_text(json.dumps(list(questions.values()),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(D/'shared-blocks.json').write_text(json.dumps(shared,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
with pdfplumber.open(D/'gabarito.pdf') as doc:
 text=doc.pages[0].extract_text()
 answers={}
 for line in text.splitlines():
  values=line.split()
  if len(values)==16 and values[0].isdigit():
   answers[int(values[0])]=values[1];answers[int(values[2])]=values[3]
 assert sorted(answers)==list(range(1,91))
 assert all(a in 'ABCDE' for a in answers.values())
 (D/'answers-v1.json').write_text(json.dumps(answers,indent=2)+'\n',encoding='utf-8')
for q in questions.values():
 print(q['number'],'pages',','.join(str(r['page']) for r in q['regions']),'labels',''.join(q['labels']),'body',len(q['text']),'opts',[len(o) for o in q['options']])
print('SHARED REFERENCES', [x['preceding'] for x in shared])
