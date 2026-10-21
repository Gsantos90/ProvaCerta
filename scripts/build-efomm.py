"""Build local EFOMM catalogs from reviewed reading-order extraction and final keys."""
import json,re,sys
from pathlib import Path
import pdfplumber,pypdfium2 as pdfium
from efomm_content import OPTIONS_2025,TEXT_2025,OPTIONS_2026,TEXT_2026
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/efomm'
sys.stdout.reconfigure(encoding='utf8')
def clean(s):
 s=re.sub(r'\s+',' ',s).strip().replace('\ufffd','–')
 for a,b in {'wna':'uma','wn ':'um ','mat1izes':'matrizes','detennin':'determin','transfonna':'transforma','pennite':'permite','tenno':'termo','nova.mente':'novamente','F onnação':'Formação','inst:mção':'instrução','infonna':'informa','info nna':'informa','fonna':'forma','ténnic':'térmic','tennic':'termic','unifonne':'uniforme','nenhwn':'nenhum','volwne':'volume','volw':'volu','volmne':'volume','aranjo':'arranjo','tomo do':'torno do','batTa':'barra','rigida':'rígida','✓':'√','rtm/min':'π m/min'}.items():s=s.replace(a,b)
 return s
def crop(year,day,page,box,name):
 pdf=pdfium.PdfDocument(ROOT/f'public/provas/efomm/{year}/dia-{day}.pdf')
 im=pdf[page-1].render(scale=2).to_pil();im=im.crop(tuple(round(v*2) for v in box))
 path=ROOT/f'public/provas/efomm/{year}/{name}.png';im.save(path)
 return f'/provas/efomm/{year}/{name}.png'
def key(year,day):
 with pdfplumber.open(ROOT/f'public/provas/efomm/{year}/gabarito.pdf') as p:t=p.pages[0].extract_text()
 rows=[l for l in t.splitlines() if re.match(r'^\d{1,2} [A-E]|^\d{1,2} ANULADA',l)]
 assert len(rows)==40
 result=[]
 for row in rows[(20 if day==1 else 0):(40 if day==1 else 20)]:
  # First two columns are the white version. Alterations carry the final letter.
  values=re.findall(r'(\d{1,2}) (ANULADA|Alterada de [A-E] para [A-E]|[A-E])',row)
  assert len(values)==4,(year,row,values)
  for n,a in values[:2]:result.append((int(n),a[-1] if a.startswith('Alterada') else a))
 return dict(result)
def build(year,day):
 data=json.loads((D/f'{year}-dia-{day}-entries.json').read_text(encoding='utf8'))
 entries=data['questions'];assert len(entries)==40
 # Detach reading passages from the preceding question's last alternative.
 boundaries=({4:'Text II',9:'Text III',20:'Homem no Mar'} if year==2025 else {2:'Textil',4:'Text m',5:'Seafaring Language',8:'Text V',11:'Text VI',14:'TextV11',20:'A invenção da laranja'}) if day==1 else {}
 supports={};carry=''
 prelude='\n'.join(l['text'] for l in data['prelude'])
 if day==1:
  supports[1]=prelude
  if year==2025:
   # The full song is in the official booklet, not redistributed as lyrics.
   supports[1]='Texto I — “Dance The Night”, de Dua Lipa. Consulte a letra no caderno oficial, página 1.'
 for e in entries:
  n=e['number'];lines=e['lines']
  if n in boundaries:
   found=next((i for i,l in enumerate(lines) if l['text'].startswith(boundaries[n])),None)
   if found is None and year==2025 and n==17:found=next((i for i,l in enumerate(lines) if l['page']>e['page']),None)
   if found is not None:
    supports[n+1]='\n'.join(l['text'] for l in lines[found:]);e['lines']=lines[:found]
 if day==1:
  ranges=([(1,3,1),(5,6,5),(10,12,10),(21,40,21)] if year==2025 else [(1,2,1),(3,4,3),(5,5,5),(6,6,6),(12,14,12),(15,17,15),(21,40,21)])
  for a,b,k in ranges:
   for n in range(a,b+1):supports[n]=supports.get(k,'')
 questions=[];answers=key(year,day)
 for e in entries:
  n=e['number'];lines=[l for l in e['lines'] if l['top']>55 and not re.search(r'PS[-– ]?E[FO]|Prova\s*[•:]|Conhecim|^\d+/(?:10|13|26|28)$|^\d{2}$',l['text'],re.I)]
  if day==2:
   # Scanned blank right columns contain page-edge fragments only.
   lines=[l for l in lines if l['col']==0 or (year==2025 and n==6 and l['page']==3)]
  ts=[l['text'] for l in lines]
  s='\n'.join(ts)
  matches=list(re.finditer(r'\(([A-E])\)\s*',s))
  text=clean(s[:matches[0].start()]) if matches else clean(s)
  options=[clean(s[m.end():matches[i+1].start() if i+1<len(matches) else len(s)]) for i,m in enumerate(matches)]
  if day==2:
   text=({2025:TEXT_2025,2026:TEXT_2026}[year]).get(n,text)
   options=({2025:OPTIONS_2025,2026:OPTIONS_2026}[year]).get(n,options)
  subject=('Inglês' if n<=20 else 'Língua Portuguesa') if day==1 else ('Matemática' if n<=20 else 'Física')
  q=dict(number=n,page=e['page'],subject=subject,text=text,options=options,answer='A/B/C/D/E' if answers[n]=='ANULADA' else answers[n],annulled=answers[n]=='ANULADA')
  if supports.get(n):q['support']=clean(supports[n])
  questions.append(q)
 # Review corrections for scanned language items and formula blocks.
 from efomm_review import review
 review(year,day,questions)
 # Native embedded figures from the 2025 booklet, cropped independently of text.
 if year==2025:
  with pdfplumber.open(ROOT/f'public/provas/efomm/{year}/dia-{day}.pdf') as pdf:
   for pi,p in enumerate(pdf.pages):
    if day==1:
     highlights={}
     for rect in p.rects:
      if rect['height']>2 or rect['width']<5:continue
      chars=[c for c in p.chars if c['x0']>=rect['x0']-1 and c['x1']<=rect['x1']+1 and rect['top']-17<c['top']<rect['top'] and c['bottom']<rect['bottom']+3]
      if not chars:continue
      top=min(c['top'] for c in chars);col=int(rect['x0']>p.width/2)
      owner=max((e for e in entries if (e['page'],e['col'],e['top'])<(pi+1,col,top)),key=lambda e:(e['page'],e['col'],e['top']),default=None)
      if owner and len(chars)<100:highlights.setdefault(owner['number'],[]).append(''.join(c['text'] for c in sorted(chars,key=lambda c:c['x0'])))
     for n,words in highlights.items():
      questions[n-1]['text']+='\nDestaques do original: '+'; '.join(dict.fromkeys(words))+'.'
    for ii,img in enumerate(sorted(p.images,key=lambda image:(image['top'],image['x0']))):
     if day==2 and pi==2 and img['top']>210:continue # letter options have text descriptions
     col=int(img['x0']>p.width/2)
     owner=max((e for e in entries if (e['page'],e['col'],e['top'])<(pi+1,col,img['top'])),key=lambda e:(e['page'],e['col'],e['top']),default=None)
     if owner:
      n=owner['number'];url=crop(year,day,pi+1,(img['x0'],img['top'],img['x1'],img['bottom']),f'dia-{day}-q{n}-fig{ii+1}')
      questions[n-1].setdefault('supportImage',[]).append(url)
  if day==2:questions[27]['supportImage']=[crop(year,day,17,(86,557,195,688),'dia-2-q28-fig1')]
 # Reviewed figure regions in the scanned 2026 pages (coordinates in PDF points).
 if year==2026:
  figures={20:[(8,(310,110,555,410))]} if day==1 else {
   21:[(13,(38,224,250,307)),(13,(72,398,205,541))],22:[(14,(100,158,192,290)),(14,(99,374,192,509))],24:[(15,(106,413,180,496))],25:[(16,(60,140,230,273))],27:[(17,(133,440,175,492))],28:[(18,(55,156,235,316))],30:[(19,(38,431,245,540))],31:[(20,(28,186,250,425))],32:[(21,(112,140,196,222))],34:[(22,(28,220,230,355))],37:[(24,(73,140,247,237)),(24,(100,471,212,588))],40:[(27,(28,214,175,354))]}
  for n,regions in figures.items():
   questions[n-1]['supportImage']=[crop(year,day,page,box,f'dia-{day}-q{n}-fig{i+1}') for i,(page,box) in enumerate(regions)]
 if day==2:
  for q in questions:
   if q['number']>=21:q['support']=('Adote g = 10 m/s² para a aceleração da gravidade, salvo indicação contrária. '+q.get('support','')).strip()
 for q in questions:
  assert len(q['options'])==5,(year,day,q['number'],q['options'])
  assert all(q['options']),(year,day,q['number'])
  assert len(q['text'])>15,(year,day,q['number'])
 slug=f'efomm-{year}-dia-{day}'
 output=dict(slug=slug,title=f'EFOMM {year} · {day}º dia · Prova branca',year=year,day=day,contentVersion=1,questions=questions)
 (ROOT/f'public/provas/efomm/{year}/dia-{day}.json').write_text(json.dumps(output,ensure_ascii=False,indent=2),encoding='utf8')
 print(slug,len(questions),'questions',sum(q['annulled'] for q in questions),'annulled')
for y in (2025,2026):
 for d in (1,2):build(y,d)
