import json,re,sys
from pathlib import Path
import pdfplumber,pypdfium2 as pdfium
from PIL import Image,ImageDraw
sys.stdout.reconfigure(encoding='utf-8')
D=Path('pdf-extracts/enem-migration')
def answers(year):
 out={}
 for day in [1,2]:
  p=D/f'{year}-gabarito-{day}.txt'
  if not p.exists(): continue
  for line in p.read_text(encoding='utf-8').splitlines():
   parts=line.split()
   if len(parts)==5 and parts[0].isdigit() and int(parts[0])<=5:
    out[int(parts[0])]=parts[1];out[int(parts[0])+180]=parts[2];out[int(parts[3])]=parts[4]
   elif len(parts)==4 and parts[0].isdigit() and parts[2].isdigit():
    out[int(parts[0])]=parts[1];out[int(parts[2])]=parts[3]
 return out
def extract(year,day):
 p=D/f'{year}-dia-{day}.pdf';qs={};current=None;seen=set()
 with pdfplumber.open(p) as doc:
  for pi,page in enumerate(doc.pages):
   if pi%8==0: print(year,day,'page',pi+1,flush=True)
   if pi==0: continue
   page=page.filter(lambda obj:obj.get('object_type')!='char' or (obj['size']>=5 and obj['upright'])).dedupe_chars()
   words=page.extract_words(extra_attrs=['fontname','size'])
   markers=[]
   for w in words:
    if w['text'].upper()!='QUESTÃO':continue
    if any(im['x0']<=w['x0']<im['x1'] and im['top']<=w['top']<im['bottom'] for im in page.images):continue
    nwords=[v for v in words if re.fullmatch(r'\d{2,3}',v['text']) and abs(v['top']-w['top'])<3 and 0<v['x0']-w['x1']<20]
    if not nwords:continue
    n=int(nwords[0]['text'])
    if not (1<=n<=90 if day==1 else 91<=n<=180):continue
    if n in seen and n<=5:n+=180
    if n in seen:raise ValueError(('Repeated',year,day,n,pi))
    seen.add(n);markers.append({**w,'n':n})
   if not markers: continue
   left=min(m['x0'] for m in markers)
   # Cadernos de 2022/2023 usam margens de 31pt; 2024/2025, 64–66pt.
   xleft=31.181 if page.width<600 else ((57.5197 if (pi+1)%2 else 64.6063) if year==2025 else 66.023)
   xright=289.134 if page.width<600 else (xleft+263.2676 if year==2025 else 324.307)
   columns=[(xleft-3,page.width-xleft+3)] if year==2025 and all(m['x0']<page.width/2 for m in markers) else [(xleft-3,xright-9),(xright-3,page.width-xleft+3)]
   for x0,x1 in columns:
    items=sorted([m for m in markers if x0<=m['x0']<x1],key=lambda m:m['top'])
    if not items:
     if current is not None and len(qs[current]['labels'])<5:
      rect=(x0,55 if page.width<600 else 90,x1,page.height-54)
      add_region(qs[current],page,pi,rect)
     continue
    if current is not None and len(qs[current]['labels'])<5 and items[0]['top']>100:
     top=55 if page.width<600 else 90
     rect=(x0,top,x1,items[0]['top']-5)
     add_region(qs[current],page,pi,rect)
    for i,m in enumerate(items):
     current=m['n']
     qs[current]={'number':current,'regions':[],'raw':'','labels':[],'option_regions':[]}
     bottom=items[i+1]['top']-5 if i+1<len(items) else page.height-(35 if year in [2022,2023] else 54)
     full=m['x0']<page.width/2 and any(line['x0']>m['x0']+40 and line['x1']>page.width/2+100 and 0<=line['top']-m['top']<=12 for line in page.lines)
     rect=(x0,m['top']-5,page.width-x0 if full else x1,bottom)
     add_region(qs[current],page,pi,rect)
 return qs
def add_region(q,page,pi,rect):
 crop=page.crop(rect)
 text=crop.extract_text(x_tolerance=2,y_tolerance=3) or ''
 words=crop.extract_words(extra_attrs=['fontname'])
 labels=[w for w in words if 'Bundesbahn' in w['fontname'] and w['text'] in 'ABCDE' and len(w['text'])==1]
 labels.sort(key=lambda w:(w['top'],w['x0']))
 q['labels'].extend(w['text'] for w in labels)
 q['regions'].append({'page':pi+1,'bbox':list(rect),'text':text,'labels':labels})
 q['raw']+=text+'\n'
def subject(n):
 if n>=181:return 'Linguagens - Língua Espanhola'
 if n<=5:return 'Linguagens - Língua Inglesa'
 if n<=45:return 'Linguagens, Códigos e suas Tecnologias'
 if n<=90:return 'Ciências Humanas e suas Tecnologias'
 if n<=135:return 'Ciências da Natureza e suas Tecnologias'
 return 'Matemática e suas Tecnologias'
def make_rows(year,qs):
 out=[];key=answers(year);asset=Path(f'public/enem-{year}');asset.mkdir(exist_ok=True)
 pdfs={day:pdfium.PdfDocument(D/f'{year}-dia-{day}.pdf') for day in ([1] if year==2024 else [1,2])}
 for n,q in sorted(qs.items()):
  if year==2024 and n<181:continue
  if n%25==0:print(year,'render',n,flush=True)
  assert n in key,(year,n)
  day=1 if n<=90 or n>=181 else 2
  path=asset/f'q{n:03}.png'
  if not path.exists():
   images=[]
   for region in q['regions']:
    x0,top,x1,bottom=region['bbox']
    page=pdfs[day][region['page']-1]
    page.set_cropbox(*page.get_mediabox())
    images.append(page.render(scale=2).to_pil().convert('RGB').crop((round(x0*2),round(top*2),round(x1*2),round(bottom*2))))
   width=max(im.width for im in images);height=sum(im.height for im in images)+16*(len(images)-1)
   joined=Image.new('RGB',(width,height),'white');y=0
   for im in images:joined.paste(im,(0,y));y+=im.height+16
   joined.save(path)
  raw=q['raw'].strip()
  matches=list(re.finditer(r'(?m)^([A-E])\s+',raw))
  valid=[m[1] for m in matches]==list('ABCDE') and q['labels']==list('ABCDE')
  options=[raw[m.end():matches[i+1].start() if i<4 else len(raw)].strip() for i,m in enumerate(matches)] if valid else []
  graphical=not valid or any(not o or '(cid:' in o for o in options)
  if graphical:options=['Alternativa '+letter+' — consulte a imagem da questão.' for letter in 'ABCDE']
  a=key[n];answer='A/B/C/D/E' if a.lower().startswith('anulad') else a
  assert answer=='A/B/C/D/E' or answer in 'ABCDE',(year,n,a)
  out.append({'number':n,'subject':subject(n),'text':'Questão '+str(n-180 if n>=181 else n)+' — leia o enunciado e as alternativas na imagem do caderno oficial.','support':'A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.\n\nTexto disponível para leitura:\n'+re.sub(r'\(cid:\d+\)','',raw),'support_image':'/'+path.as_posix().split('public/',1)[1],'options':options,'answer':answer,'explanation':('Questão anulada pelo Inep. Ponto atribuído automaticamente.' if answer=='A/B/C/D/E' else f'Gabarito oficial do ENEM {year}, caderno amarelo: alternativa {answer}.'),'page':q['regions'][0]['page'],'day':day,'graphical_options':graphical,'transcription':raw})
 print(year,'rows',len(out),'graphical',sum(q['graphical_options'] for q in out),flush=True)
 return out
def sqlquote(v):return "'"+str(v).replace("'","''")+"'"
def seed(year,rows):
 lines=['-- Fonte: https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos/'+str(year), '-- ENEM '+str(year)+' — aplicação regular, cadernos amarelos 2 e 5.','-- 181–185 armazenam espanhol (questões oficiais 1–5), sem somar ao total de 180.','begin;', "alter table public.questions drop constraint if exists questions_answer_check;", "alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');"]
 if year!=2024:
  lines.append("insert into public.exams (slug,title,source,year) values ("+','.join(map(sqlquote,[f'enem-{year}',f'ENEM {year} - Prova Objetiva','enem',year]))+") on conflict (slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;")
 for q in rows:
  values=[q['number']]+[sqlquote(q[k]) for k in ['subject','text','support','support_image']]+[sqlquote(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',sqlquote(q['answer']),sqlquote(q['explanation'])]
  lines.append('insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(map(str,values))+f" from public.exams where slug='enem-{year}' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;")
 lines+=['commit;']
 return '\n\n'.join(lines)+'\n'
if __name__=='__main__':
 import subprocess
 # The former full-question raster import is deliberately replaced.
 for script in ['structure-enem-content.py','repair-enem-structured.py','finalize-enem-structured.py','read-enem-options.py','prepare-corrected-enem.py']:
  subprocess.run([sys.executable,str(Path('scripts')/script)],check=True)
 print('Importação estruturada gerada. Confira e execute a query no Supabase.')
