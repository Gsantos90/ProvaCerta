"""Validate the curated PISM collection; optionally refresh keys from local UFJF PDFs.

The 135 transcriptions and authored solutions are versioned in src/lib. Do not
rebuild them from legacy database comments: several legacy answers are incorrect.
"""
import argparse,json,re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--refresh-keys',action='store_true',help='Read the 18 downloaded definitive UFJF answer PDFs')
args=parser.parse_args()
p=ROOT/'src/lib/walkthroughQuestions.json'
data=json.loads(p.read_text(encoding='utf8'))
assert len(data)==135 and len({q['id'] for q in data})==135
if args.refresh_keys:
 import fitz
 keys={}
 for year in [2024,2025,2026]:
  for module in [1,2,3]:
   for day in [1,2]:
    doc=fitz.open(ROOT/f'pdf-extracts/walkthrough-expansion/key-{year}-{module}-{day}.pdf')
    text='\n'.join(page.get_text() for page in doc)
    text=re.sub(r'([A-E])\s+ou\s+([A-E])',r'\1/\2',text)
    answers=re.findall(r'(?m)^\s*([A-E](?:/[A-E])?\*?|\*|ANULADA)\s*$',text)
    assert len(answers)==20,(year,module,day,answers)
    keys[year,module,day]=[a.rstrip('*') if a not in ['*','ANULADA'] else 'A/B/C/D/E' for a in answers]
 for q in data:
  q['answer']=keys[q['year'],{'I':1,'II':2,'III':3}[q['module']],q['day']][q['number']-1]
 p.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
for year in [2024,2025,2026]:
 for module in ['I','II','III']:
  for subject in ['Matemática','Física','Química']:
   rows=[q for q in data if q['year']==year and q['module']==module and q['subject']==subject]
   assert len(rows)==5,(year,module,subject)
for q in data:
 assert len(q['options'])==5 and q['text']
 for image in q.get('supportImages',[]):
  assert (ROOT/'public'/image.lstrip('/')).is_file(),image
print('135 curated questions, 27 complete combinations and support images validated.')
