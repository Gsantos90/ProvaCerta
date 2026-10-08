import json,re,sys,unicodedata,math
from pathlib import Path
import pdfplumber,pypdfium2 as pdfium
from PIL import Image,ImageDraw
from usp_2025_editorial import *
sys.stdout.reconfigure(encoding='utf-8')
D=Path('pdf-extracts/usp-2025');A=Path('public/usp-2025');A.mkdir(parents=True,exist_ok=True)
blocks=json.loads((D/'question-blocks.json').read_text(encoding='utf-8'))
keys=json.loads((D/'answers-v1.json').read_text())
sources=json.loads((D/'fontes.json').read_text())
CID={'2868':'₀','2869':'₁','2870':'₂','2878':'+','3035':'h','3041':'ₙ','3045':'r','3397':'+','3398':'−','3400':'×','3404':'=','3407':'<','3408':'>','3409':'≤','4593':'′','4666':'(','4667':')','4670':'[','4671':']'}
def clean(text):
 text=re.sub(r'\(cid:(\d+)\)',lambda m:CID[m[1]],text)
 text=''.join(unicodedata.normalize('NFKC',c) if 0x1D400 <= ord(c) <= 0x1D7FF else c for c in text).replace('ꟷ','−')
 text=re.sub(r'-\s*\n\s*','-',text)
 return re.sub(r'\s+',' ',text).strip()
doc=pdfium.PdfDocument(D/'prova-v1.pdf');rendered={}
def render(pn,bbox,name):
 if pn not in rendered:
  page=doc[pn-1];bitmap=page.render(scale=2.5);rendered[pn]=bitmap.to_pil().convert('RGB');bitmap.close();page.close()
 im=rendered[pn];x0,t,x1,b=bbox
 crop=im.crop((math.floor(x0*2.5),math.floor(t*2.5),math.ceil(x1*2.5),math.ceil(b*2.5)))
 crop.save(A/name,optimize=True)
 return '/usp-2025/'+name
questions=[]; asset_records=[]
with pdfplumber.open(D/'prova-v1.pdf') as textdoc:
 for raw in blocks:
  n=raw['number'];body=raw['text'];support='';stem=body
  if n in STARTS:
   position=body.rfind(STARTS[n])
   assert position>=0,(n,STARTS[n])
   support=body[:position].strip();stem=body[position:].strip()
  if n in SUMMARIES: support='Resumo do texto de apoio para estudo: '+SUMMARIES[n]+'\n\nConsulte o texto original no caderno oficial.'
  for group,text in SHARED.items():
   if n in group: support='Resumo do texto de apoio para estudo: '+text+'\n\nConsulte o texto original no caderno oficial.'
  if n in TEXT_OVERRIDES:stem=TEXT_OVERRIDES[n]
  if n in SUPPORT_OVERRIDES:support=SUPPORT_OVERRIDES[n]
  if n in (69,76,77):support=''
  if n==72:stem='Em um experimento, 1 L de solução de sulfanilamida de pH 5 reage com Br₂ em excesso e passa a pH 4 após reação total. Sem alteração do volume, quantos mols de sulfanilamida reagiram?'
  if n==73:stem='Suponha que a reação produza 2 mols de CO₂ para cada 3 litros de vinagre. Para 1/3 de litro de líquido a 300 K, qual é aproximadamente a pressão indicada pelo manômetro?'
  opts=list(raw['options']); assert raw['labels']==list('ABCDE'),n
  note=''
  if 'Note e adote:' in opts[-1]:
   opts[-1],note=opts[-1].split('Note e adote:',1)
   if n==73:note='Trate CO₂ como gás ideal; R = 0,08 atm·L/(K·mol). Todo o ácido acético reagiu e o líquido resultante ocupa o volume inicial do vinagre.'
   if n==74:note='Pressão atmosférica: 1 atm = 10⁵ Pa. Use π = 3. Considere apenas as forças relativas à diferença de pressão entre os lados da rolha.'
   support+='\n\nNote e adote: '+note.strip()
  if n in OPTION_OVERRIDES:opts=OPTION_OVERRIDES[n]
  paths=[];finished=False
  for ri,region in enumerate(raw['regions']):
   if finished:break
   pn=region['page'];page=textdoc.pages[pn-1];x0,t,x1,b=region['bbox']
   crop=page.crop((x0,t,x1,b))
   delimiter=next((line for line in crop.extract_text_lines() if line['text'].strip()=='#####'),None)
   if delimiter:b=delimiter['top'];finished=True
   images=[image for image in page.images if image['x0']>=x0-8 and image['x1']<=x1+8 and t<=image['top']<b and image['bottom']<=b+2]
   if n in (60,69):
    bbox=[x0,t,x1,b]
   elif images:
    bbox=[x0 if len(images)>1 else min(i['x0'] for i in images),min(i['top'] for i in images),x1 if len(images)>1 else max(i['x1'] for i in images),max(i['bottom'] for i in images)]
   else:continue
   name=f'questao-{n}-{len(paths)+1}.png'
   path=render(pn,bbox,name);paths.append(path)
   asset_records.append({'number':n,'page':pn,'bbox':bbox,'path':path})
  if n in (73,74):
   bbox=[39.4,184.6,102.3,368.7]
   path=render(28,bbox,'experimento-73-74.png');paths.append(path)
   if n==73:asset_records.append({'number':'73/74','page':28,'bbox':bbox,'path':path})
  q={'number':n,'subject':SUBJECTS[n-1],'text':clean(stem),'support':clean(support) or None,'support_image':','.join(paths) or None,'options':[clean(o) for o in opts],'answer':keys[str(n)],'explanation':EXPLANATIONS[n-1],'page':raw['regions'][0]['page']}
  assert q['text'] and len(q['options'])==5 and all(q['options']),n
  assert not re.search(r'\(cid:|#####',json.dumps(q))
  questions.append(q)
(D/'questoes.json').write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(D/'figuras.json').write_text(json.dumps(asset_records,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def literal(value):
 return 'null' if value is None else "'"+str(value).replace("'","''")+"'"
lines=['-- USP/FUVEST 2025: primeira fase, versão V1, 90 questões.',
'-- Aplicação: 17/11/2024. Ano da edição: 2025.',
'-- Apoios literários/jornalísticos resumidos para estudo; original acessível no caderno.',
'-- Explicações editoriais de estudo; gabarito V1 oficial.',
'-- Execute todo o arquivo no Supabase. Reexecutável, preservando IDs.',
*[f'-- {key}: {url}' for key,url in sources.items()],
'begin;',
'alter table public.questions add column if not exists explanation text;',
"insert into public.exams (slug,title,source,year) values ('usp-2025-v1','USP 2025 · FUVEST (1ª fase · Conhecimentos Gerais · V1)','usp','2025') on conflict (slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;"]
for q in questions:
 vals=[str(q['number'])]+[literal(q[k]) for k in ['subject','text','support','support_image']]+[literal(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',literal(q['answer']),literal(q['explanation'])]
 lines+=['insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)',
 'select id, '+', '.join(vals)+" from public.exams where slug='usp-2025-v1'",
 'on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;']
lines+=['commit;']
Path('supabase/seed-usp-2025-v1.sql').write_text('\n\n'.join(lines)+'\n',encoding='utf-8')
pages=[q['page'] for q in questions]
Path('src/lib/fuvestSources.js').write_text("""// Páginas PDF do caderno oficial, incluindo capa.\nconst fuvest2025Url = '"""+sources['prova']+"""'\nconst pages2025 = """+json.dumps(pages)+"""\n\nexport function fuvestOfficialSource(slug, number) {\n  if (slug !== 'usp-2025-v1' || !Number.isInteger(number) || number < 1 || number > pages2025.length) return undefined\n  return fuvest2025Url + '#page=' + pages2025[number - 1]\n}\n""",encoding='utf-8')
# Contatos visuais dos recortes, apenas para conferência.
for start in range(0,len(asset_records),12):
 batch=asset_records[start:start+12];sheet=Image.new('RGB',(1440,480*math.ceil(len(batch)/3)), '#e5e7eb');draw=ImageDraw.Draw(sheet)
 for i,item in enumerate(batch):
  im=Image.open(Path('public')/item['path'].lstrip('/'));im.thumbnail((455,430))
  x=(i%3)*480+10;y=(i//3)*480+32;sheet.paste(im,(x,y));draw.text((x,y-24),f"Questao {item['number']} / pagina {item['page']}",fill='black')
 sheet.save(D/f'contato-{start//12+1}.png')
print('90 questões, 90 explicações,',len(asset_records),'figuras; SQL e metadados gerados.')
print('Questões com figuras:',[q['number'] for q in questions if q['support_image']])
