"""Build reviewable questions from official layout extraction; keep media separate."""
import json,re,sys
from pathlib import Path
import pypdfium2 as pdfium
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/cbmerj';sys.stdout.reconfigure(encoding='utf8')
sup=str.maketrans('0123456789+-=()n','⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁼⁽⁾ⁿ');sub=str.maketrans('0123456789+-=()','₀₁₂₃₄₅₆₇₈₉₊₋₌₍₎')
def clean(s):
 s=s.replace('\ufffd','–').replace('\x02','-').replace('\ufb01','fi').replace('\ufb02','fl')
 return re.sub(r'([A-Za-zÀ-ÿ])-\s+([A-Za-zÀ-ÿ])',r'\1\2',s).strip()
def line_text(l):
 # Preserve the original text order. Repair raised/lowered digits by comparing font
 # size and baseline with neighbouring ordinary characters, rather than flattening.
 s=l['text'];chars=l['chars'];base=[c for c in chars if c['size']>8 and c['text'].strip()]
 if not base:return clean(s)
 bottom=sorted(c['bottom'] for c in base)[len(base)//2];size=sorted(c['size'] for c in base)[len(base)//2]
 # Match text characters in reading order to avoid changing neighbouring numbers.
 out='';ci=0
 for ch in s:
  if ch.isspace():out+=ch;continue
  while ci<len(chars) and chars[ci]['text'].isspace():ci+=1
  if ci<len(chars) and chars[ci]['text']==ch:
   c=chars[ci];ci+=1
   if c['size']<size*.85 and bottom-c['bottom']>2:ch=ch.translate(sup)
   elif c['size']<size*.85 and c['bottom']-bottom>1:ch=ch.translate(sub)
  out+=ch
 return clean(out)
def heading(s):return bool(re.match(r'^(CORPO DE BOMBEIROS|FGV CONHECIMENTO|CADETE BM|Cadete BM|CONCURSO PÚBLICO|LINGUAGENS E CÓDIGOS|CIÊNCIAS HUMANAS|CIÊNCIAS DA NATUREZA|LÍNGUA PORTUGUESA|LÍNGUA ESTRANGEIRA|MATEMÁTICA|BIOLOGIA|FÍSICA|QUÍMICA|GEOGRAFIA|HISTÓRIA|Língua Portuguesa(?: e Literatura)?$|Matemática$|Língua Estrangeira|História$|Geografia$|Filosofia$|Sociologia$|Química$|Física$|Biologia$)',s))
def subject(year,n,lang='ingles'):
 bounds=[(15,'Língua Portuguesa'),(30,'Matemática'),(45,'Física'),(60,'Química'),(70,'Biologia'),(80,'Geografia'),(90,'História'),(95,'Inglês'),(100,'Sociologia')] if year==2023 else [(20,'Língua Portuguesa'),(30,'Inglês'),(50,'Matemática'),(58,'História'),(66,'Geografia'),(71,'Filosofia'),(75,'Sociologia'),(83,'Química'),(91,'Física'),(100,'Biologia')] if year<=2024 else [(10,'Língua Portuguesa'),(20,'Espanhol' if lang=='espanhol' else 'Inglês'),(30,'Matemática'),(40,'Biologia'),(50,'Física'),(60,'Química'),(70,'Geografia'),(80,'História')]
 return next(s for limit,s in bounds if n<=limit)
all_data={};regions={};reports=[]
for year in (2023,2024,2025,2026):
 pages=json.loads((D/f'{year}-layout.json').read_text(encoding='utf8'));stream=[];current=None;seen=0
 for p in pages:
  for col in range(2 if year<=2024 else 1):
   lines=sorted([l for l in p['lines'] if l['column']==col and not heading(l['text']) and l['top']>46 and l['bottom']<p['height']-32],key=lambda l:(l['top'],l['x0']))
   if year<=2024:
    for l in lines:
     if (l['text']==str(seen+1) and max((c['size'] for c in l['chars']),default=0)>=8.9) or (seen==98 and l['text']=='NMCB109-00_08'):
      seen+=1;stream.append(dict(marker=seen,page=p['page'],top=l['top'],column=col));continue
     stream.append(dict(line=l,page=p['page'],column=col))
   else:
    marks=sorted(p['marks'],key=lambda m:m['top']);mi=0
    for l in lines:
     while mi<len(marks) and l['bottom']>=marks[mi]['top']:
      stream.append(dict(marker=marks[mi]['number'],page=p['page'],top=marks[mi]['top'],column=col));mi+=1
     if l['text'].strip()=='QUESTÃO' or (l['x0']<80 and re.fullmatch(r'\d{1,2}',l['text'])):continue
     l=dict(l);l['text']=re.sub(r'^QUESTÃO\s*','',l['text'])
     if l['x0']<80:l['text']=re.sub(r'^\d{1,2}\s+','',l['text'])
     # Do not retain the printed line counters of long reading passages.
     if l['x0']<55:l['text']=re.sub(r'^\d{1,2}\s+','',l['text'])
     if l['text'].strip():stream.append(dict(line=l,page=p['page'],column=col))
 entries=[];pending=[]
 for item in stream:
  if 'marker' in item:
   if current:entries.append(current)
   current=dict(number=item['marker'],page=item['page'],top=item['top'],column=item['column'],lines=[],prelude=pending);pending=[]
  elif current:current['lines'].append(item)
  else:pending.append(item)
 if current:entries.append(current)
 langs=['ingles'] if year<=2024 else ['espanhol','ingles']
 for lang in langs:
  slug=f'cbmerj-{year}-cfo'+('' if year<=2024 else '-'+lang);qs=[];common='';last=0;language_block='espanhol'
  for entry in entries:
   n=entry['number']
   if year>2024 and n==11 and last==20:language_block='ingles'
   last=n
   if year>2024 and 11<=n<=20 and language_block!=lang:continue
   texts=[line_text(x['line']) for x in entry['lines']]
   a=next((i for i,s in enumerate(texts) if re.match(r'^\(A\)',s)),None)
   if a is None:reports.append((year,lang,n,'no A'));a=len(texts)
   stem=texts[:a];opts=[];tail=[];letter=None
   for i,s in enumerate(texts[a:]):
    m=re.match(r'^\(([A-E])\)\s*(.*)',s)
    if m:
     letter=m[1];opts.append(m[2])
    elif opts:opts[-1]+=' '+s
   # Last alternative may be followed by a common reading passage for the next
   # question group. Split these source preludes explicitly instead of leaking them.
   final=opts[-1] if opts else ''
   cut=re.search(r'(Read Text II|Read Text I|Text II|CONSIDERE O TEXTO|Considere o texto|TEXTO [12])',final)
   if cut:tail=[final[cut.start():]];opts[-1]=final[:cut.start()].strip()
   support='\n'.join(line_text(x['line']) for x in entry.get('prelude',[]))
   if n==21 and year<=2024:common=support
   if year>2024 and n in (1,6,11):common=support
   # Reading-only pages can be appended to the previous E/D alternative by the
   # stream. Their full text is identified by its page preceding this question.
   prior=[x for x in entry['lines'] if False]
   if year>2024 and n<=20:
    pre_page={2025:{1:3,6:5,11:7 if lang=='espanhol' else 10},2026:{1:3,6:5,11:8 if lang=='espanhol' else 11}}[year].get(n)
    if pre_page:
     pp=next(p for p in pages if p['page']==pre_page)
     support_pages=[pp]+([next(p for p in pages if p['page']==6)] if year==2026 and n==6 else [])
     common='\n'.join(line_text(l) for pp in support_pages for l in sorted(pp['lines'],key=lambda l:(l['top'],l['x0'])) if not heading(l['text']) and l['bottom']<pp['height']-44)
    support=common
   if year<=2024 and 21<=n<=30:support=common
   # Remove source text from the end of the preceding alternative when it is on
   # later pages. Alternatives never include the next reading-only page.
   opt_items=entry['lines'][a:];end=next((i for i,x in enumerate(opt_items) if x['page']>entry['page'] and not any(re.match(r'^\([A-E]\)',line_text(y['line'])) for y in opt_items if y['page']==x['page'])),None)
   if end is not None:
    opts=[]
    for x in opt_items[:end]:
     s=line_text(x['line']);m=re.match(r'^\(([A-E])\)\s*(.*)',s)
     if m:opts.append(m[2])
     elif opts:opts[-1]+=' '+s
   if (year==2024 and n in (21,26)) or (year==2023 and n==91):
    # Text II lies between the last alternative of Q25 and the header of Q26.
    prev=next(e for e in entries if e['number']==n-1)
    tx=[line_text(x['line']) for x in prev['lines']]
    k=next((i for i,s in enumerate(tx) if s.startswith('Read the text' if year==2023 else 'Read Text II' if n==26 else 'Read Text I')),len(tx))
    common='\n'.join(tx[k:]);support=common
   if year==2024 and n>26 and n<=30:support=common
   if year==2023 and 91<=n<=95:support=common
   if year>2024 and n>=21:support=None
   # The region retains all original source figures; editorial media crops are
   # generated after inspecting the contact sheets and each visual choice item.
   regions[f'{year}-{lang}-{n}']=entry
   item=dict(number=n,subject=subject(year,n,lang),text='\n'.join(stem).strip(),support=support or None,support_image=None,options=[clean(o) for o in opts],page=entry['page'])
   qs.append(item)
  all_data[slug]=qs
 (D/f'{year}-entries.json').write_text(json.dumps(entries,ensure_ascii=False,indent=2),encoding='utf8')
(D/'questions-raw.json').write_text(json.dumps(all_data,ensure_ascii=False,indent=2),encoding='utf8')
(D/'regions.json').write_text(json.dumps(regions,ensure_ascii=False),encoding='utf8')
for slug,qs in all_data.items():
 print(slug,len(qs),'option issues:',[(q['number'],len(q['options'])) for q in qs if len(q['options'])!=(5 if '2024' in slug or '2023' in slug else 4)])
print('Parser notices:',reports)
