"""Extract reading-order text and provenance for reviewing the official EFOMM exams."""
import json, re, sys
from pathlib import Path
import pdfplumber
ROOT=Path(__file__).resolve().parents[1]
D=ROOT/'pdf-extracts/efomm'
sys.stdout.reconfigure(encoding='utf8')
def num(x): return min(x) if isinstance(x,list) else x
for year in (2025,2026):
 for day in (1,2):
  stream=[]
  with pdfplumber.open(ROOT/f'public/provas/efomm/{year}/dia-{day}.pdf') as pdf:
   if year==2026 and day==1:
    ocr=json.loads((D/'2026-dia-1-ocr.json').read_text(encoding='utf-8-sig'))
   for pi,page in enumerate(pdf.pages):
    if year==2026 and pi==0:continue
    w,h=page.width,page.height
    for col in range(2):
     if year==2026 and day==1:
      lines=[dict(text=l['text'],x0=num(l['x'])/2,top=num(l['y'])/2,bottom=l['bottom']/2) for l in ocr[pi]['lines']]
      lines=[l for l in lines if (l['x0']<w/2)==(col==0) and 57<l['top']<h-65]
     else:
      crop=page.crop((col*w/2,48,(col+1)*w/2,h-50))
      lines=crop.extract_text_lines(layout=False,return_chars=True)
      # Native superscripts/subscripts are preserved before ordinary line assembly.
      for l in lines:
       chars=l.get('chars',[])
       sizes=[c['size'] for c in chars if c['text'].strip()]
       if year==2025 and sizes:
        base=sorted(sizes)[len(sizes)//2]
        bottoms=[c['bottom'] for c in chars if c['size']>=base*.9]
        bottom=sorted(bottoms)[len(bottoms)//2] if bottoms else 0
        for c in chars:
         if c['size']<base*.82:
          if bottom-c['bottom']>1:c['text']=c['text'].translate(str.maketrans('0123456789+-()','⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁽⁾'))
          elif c['bottom']-bottom>1:c['text']=c['text'].translate(str.maketrans('0123456789+-()','₀₁₂₃₄₅₆₇₈₉₊₋₍₎'))
        # Keep pdfplumber's word spacing; isolated exponents repaired in review.
     lines=sorted(lines,key=lambda l:(round(l['top']/3),l['x0']))
     for l in lines:
      t=l['text'].strip()
      if re.match(r'^(Processo Seletivo|Prova:|PS[-– ]?E[FO]|MATEMÁTICA e FÍSICA|INGLÊS e PORTUGUÊS|PROVA DE |RASCUNHO)',t,re.I):continue
      if re.fullmatch(r'\d+/\d+',t) or re.search(r'PS[-– ]?EFOMM',t):continue
      if year==2026 and day==1 and pi==7 and col==1 and t.startswith('Read the comic strip'):
       stream.append(dict(text='20ª Questão',page=pi+1,col=col,top=l['top']-2,bottom=l['top']))
      if year==2026 and day==1 and pi==10 and t=='28a':t='28ª Questão'
      stream.append(dict(text=t,page=pi+1,col=col,top=l['top'],bottom=l['bottom']))
  entries=[];pending=[];cur=None
  for l in stream:
   t=l['text']
   # Some OCR ordinal suffixes are read as 11, Y or a; retain sequential identity.
   if re.match(r'^.{0,7}\s*Quest[ãaâ]o\s*$',t,re.I):
    if cur:entries.append(cur)
    cur=dict(number=len(entries)+1,page=l['page'],col=l['col'],top=l['top'],lines=[])
   elif cur:cur['lines'].append(l)
   else:pending.append(l)
  if cur:entries.append(cur)
  output=dict(year=year,day=day,prelude=pending,questions=entries)
  (D/f'{year}-dia-{day}-entries.json').write_text(json.dumps(output,ensure_ascii=False,indent=2),encoding='utf8')
  (D/f'{year}-dia-{day}-review.txt').write_text('\n\n'.join(f"Q{e['number']} PAGE {e['page']}\n"+'\n'.join(l['text'] for l in e['lines']) for e in entries),encoding='utf8')
  print(year,day,'questions',len(entries),[(e['number'],len(re.findall(r'\([A-E]\)', '\n'.join(l['text'] for l in e['lines'])))) for e in entries if len(re.findall(r'\([A-E]\)', '\n'.join(l['text'] for l in e['lines'])))!=5])
