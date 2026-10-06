import re,json,unicodedata,sys
from pathlib import Path
import pypdfium2 as pdf
sys.stdout.reconfigure(encoding='utf-8')
D=Path('pdf-extracts/pism-expansao')
def clean25(t):
 t=t.replace('\r','').replace('\ufffe','').replace('ı','i')
 t=re.sub(r'[¸˛]\s*([cC])',lambda m:'ç' if m[1]=='c' else 'Ç',t)
 for mark,comb in [('´','\u0301'),('`','\u0300'),('ˆ','\u0302'),('^','\u0302'),('˜','\u0303'),('~','\u0303'),('¨','\u0308')]:
  t=re.sub(re.escape(mark)+r'\s*([a-zA-Z])',lambda m:unicodedata.normalize('NFC',m[1]+comb),t)
 t=re.sub(r'\ufffe\s*','',t)
 t=unicodedata.normalize('NFD',t)
 t=re.sub(r'([bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])\u0301',r'\1',t)
 return unicodedata.normalize('NFC',t)
for day in [1,2]:
 name=f'questoes-iii-2025-dia-{day}.json'; qs=json.loads((D/name).read_text(encoding='utf-8'))
 doc=pdf.PdfDocument(D/f'pism-iii-2025-dia-{day}-humanas.pdf')
 text='\n'.join(clean25(p.get_textpage().get_text_range()) for p in list(doc)[2:])
 # Use the last question 5 marker before question 6 (the first is a heading above Texto III).
 matches=list(re.finditer(r'(?mi)Questão\s+(\d+)\.',text)); starts=[]
 for n in range(1,21):
  ms=[m for m in matches if int(m[1])==n]
  if n==5: ms=[m for m in ms if m.start()<next(m.start() for m in matches if int(m[1])==6)]
  m=ms[-1] if n==5 else ms[0]; starts.append(m)
 for i,m in enumerate(starts):
  end=starts[i+1].start() if i<19 else next((x.start() for x in matches if x.start()>m.start()),len(text))
  block=text[m.end():end]; opts=list(re.finditer(r'(?m)^\(([A-E])\)\s*',block))[:5]
  assert [o[1] for o in opts]==list('ABCDE')
  q=qs[i];q['text']=re.sub(r'\s+',' ',block[:opts[0].start()]).strip()
  q['options']=[re.sub(r'\s+',' ',block[o.end():opts[j+1].start() if j<4 else len(block)]).strip() for j,o in enumerate(opts)]
  q['options'][4]=re.split(r'(?i)(?:LITERATURA\s*-|BIOLOGIA\s*-|MATEMÁTICA\s*-|FÍSICA\s*-|QUÍMICA\s*-|GEOGRAFIA\s*-|HISTÓRIA\s*-|P[áa]gina\s*\d)',q['options'][4])[0].strip()
 (D/name).write_text(json.dumps(qs,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print('Reextraído',name)

# As objetivas são iguais para todas as áreas, conforme seção 9.2 dos editais UFJF.
print('Texto 2025 reextraído; execute finalize-pism-additions.py para aplicar revisão e gerar SQL.')
