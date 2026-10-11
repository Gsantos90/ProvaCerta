"""Rebuild objective questions from source coordinates; retain IDs and answer keys."""
import json,re,sys,unicodedata
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/pism-revisao'
sys.stdout.reconfigure(encoding='utf-8')
def flat(s):return ''.join(c for c in unicodedata.normalize('NFD',s) if not unicodedata.combining(c)).lower()
def tidy(s):
 s=s.replace('\x02','-').replace('\ufffe','').replace('\x1c','fi').replace('\x1d','fl').replace('\x10','“').replace('\x11','”').replace('\x16','–')
 s=re.sub(r'([A-Za-zÀ-ÿ])-\s*\n\s*([A-Za-zÀ-ÿ])',r'\1\2',s)
 s=re.sub(r'[\x00-\x08\x0b\x0c\x0e-\x1f]','',s)
 return re.sub(r'[ \t]+',' ',s).strip()
def join(lines,paragraphs=False):
 value=tidy('\n'.join(l['text'].strip() for l in lines))
 return value if paragraphs else re.sub(r'\s+',' ',value)
db=json.loads((D/'database-before.json').read_text(encoding='utf-8'))
meta=json.loads((D/'sources.json').read_text(encoding='utf-8'))
result={};report=[]
for e in db:
 slug=e['slug'];m=meta[slug];pages=json.loads((D/f'{slug}-pages.json').read_text(encoding='utf-8'))
 lines=[]
 for p in pages:
  for l in p['lines']:
   t=flat(l['text']).strip()
   if re.search(r'^(?:pagina \d|pism 20|pro reitoria|coordenacao)',t):continue
   l=dict(l,page=p['page'],index=len(lines));lines.append(l)
 markers=[]
 for l in lines:
  match=re.match(r'^questao\s+(\d+)\s*[-–.]?',flat(l['text']).strip())
  if match and 1<=int(match[1])<=20:markers.append((int(match[1]),l))
 starts=[]
 for n in range(1,21):
  ms=[l for nn,l in markers if nn==n and l['page']==m['pages'][n-1]]
  if not ms:
   ms=[l for nn,l in markers if nn==n]
   if not ms:raise ValueError((slug,n,'missing marker'))
   ms=ms[:1];report.append(f'{slug} q{n}: official page {ms[0]["page"]}, previously {m["pages"][n-1]}')
  starts.append(ms[-1])
 qs=[];shared=[];prev_tail=[]
 for i,st in enumerate(starts):
  n=i+1;old=next(q for q in e['questions'] if q['number']==n)
  block=[dict(l) for l in lines[st['index']:(starts[i+1]['index'] if i<19 else len(lines))]]
  block[0]['text']=re.sub(r'^Quest[ãaÃA][oO]\s+\d+\s*[-–.]?\s*','',block[0]['text'],flags=re.I)
  om=[]
  if m['year']==2024:
   icons=[]
   for p in pages:
    for im in p['images']:
     if im['x0']<55 and 10<im['x1']-im['x0']<22 and 10<im['bottom']-im['top']<23:
      idx=next((j for j,l in enumerate(block) if l['page']==p['page'] and im['top']-4<=l['top']<=im['bottom']+2),None)
      if idx is not None:icons.append(idx)
   om=sorted(set(icons))[:5]
  else:
   om=[j for j,l in enumerate(block) if re.match(r'^\([A-E]\)',l['text'].strip())][:5]
  if len(om)!=5:
   report.append(f'{slug} q{n}: options {len(om)}');om=[]
  # Common reading material before the first question and between objective items.
  if n in (1,6,11,16):
   shared=prev_tail
   if n==1:shared=lines[:st['index']]
  text=join(block[:om[0]]) if om else old['text']
  options=[];tail=[]
  if om:
   for j,start in enumerate(om):
    part=block[start:om[j+1] if j<4 else len(block)]
    if j==4:
     # Separate the next reading prelude/subject heading from alternative E.
     cut=next((k for k,l in enumerate(part[1:],1) if re.match(r'^(?:leia |analise os titulos|observe a tabela|texto\s+(?:[ivx]+|[12345])\b|veja a figura|(?:lingua portuguesa|portugues|literaturas?|geografia|matematica|quimica|fisica|historia|biologia)\b.*(?:objetiv|dissert|$)|questoes de|objetivas|questoes discursivas)',flat(l['text']).strip())),len(part))
     tail=part[cut:];part=part[:cut]
    opt=join(part);opt=re.sub(r'^\([A-E]\)\s*','',opt)
    options.append(opt)
  else:options=old['options']
  support=join(shared,True) or None
  q=dict(old,text=text,support=support,options=options,page=st['page'])
  q['official_text']=text;q['official_options']=options
  qs.append(q)
  if tail:shared=tail
  prev_tail=tail
 # Attach all common pre-question passages to the five language/literature questions.
 for group in (range(1,6),range(6,11) if any('Liter' in q['subject'] for q in qs[5:10]) else []):
  passages=[]
  for q in qs:
   if q['number'] in group and q['support'] and q['support'] not in passages:passages.append(q['support'])
  for q in qs:
   if q['number'] in group:q['support']='\n\n'.join(passages) or None
 result[slug]=qs
(D/'questions.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(D/'parser-report.txt').write_text('\n'.join(report),encoding='utf-8')
print('Extracted',sum(map(len,result.values())),'questions; parser notices',len(report));print('\n'.join(report))
