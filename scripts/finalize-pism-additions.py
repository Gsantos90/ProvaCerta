import json,re,sys,unicodedata
from pathlib import Path
import pypdfium2 as pdf
from PIL import Image,ImageDraw
from pism_additions_explanations import EXPLANATIONS
from pism_additions_editorial import PATCHES
ROOT=Path.cwd();D=ROOT/'pdf-extracts/pism-expansao';sys.stdout.reconfigure(encoding='utf-8')
CAT=json.loads((D/'catalogo.json').read_text(encoding='utf-8'))
# Images: PDF page numbers (including the two cover pages); object indices.
IMAGES={
('ii-2024-1',7):(9,[10]),('ii-2024-1',8):(10,[5]),('ii-2024-1',9):(11,[1]),('ii-2024-1',11):(12,[11]),
('ii-2024-2',12):(9,[5]),('ii-2024-2',19):(13,[5,6]),
('iii-2024-2',11):(8,[10]),('iii-2024-2',14):(9,[11]),
('iii-2025-1',9):(9,[1]),('iii-2025-2',2):(3,[1]),('iii-2025-2',9):(5,[1]),
('iii-2026-1',16):(11,[1]),('iii-2026-2',1):(3,[1]),('iii-2026-2',2):(3,[2]),('iii-2026-2',3):(4,[1]),('iii-2026-2',4):(4,[2]),('iii-2026-2',9):(6,[1]),('iii-2026-2',14):(8,[2])}
# Vector diagrams and tables, bounds in points from top-left.
VECTORS={('ii-2024-2',13):(10,(390,128,568,260)),('ii-2024-1',6):(8,(90,548,515,762)),('ii-2024-1',19):(16,(443,109,566,258)),('ii-2024-2',14):(10,(340,415,565,563)),('ii-2024-2',20):(14,(75,110,520,335))}
def sanitize(s):
 s=re.sub(r'(?i)Pró Reitoria de Graduação.*?1º Dia','',s)
 s=re.sub(r'\b([A-Za-zÀ-ÿ]+)-\s+([A-Za-zÀ-ÿ]+)',r'\1\2',s)
 s=re.sub(r'(?i)Página\s+\d+\s+de\s+\d+','',s)
 s=re.sub(r'(?i)\b(?:Leia o texto II|Texto II|Texto III|Texto IV|Veja a Figura I para responder).*','',s) if False else s
 return re.sub(r'\s+',' ',s).strip()
def quote(v):return 'null' if v is None else "'"+str(v).replace("'","''")+"'"
SOURCES=json.loads((D/'fontes.json').read_text(encoding='utf-8'))
allqs={};metadata={};images=[]
for item in CAT:
 slug=item['slug'];key=f"{item['module'].lower()}-{item['year']}-{item['day']}"
 qs=json.loads((D/item['questions_file']).read_text(encoding='utf-8'));assert len(EXPLANATIONS[key])==20
 doc=pdf.PdfDocument(D/item['file'])
 for q,exp in zip(qs,EXPLANATIONS[key]):
  n=q['number']
  if (q.get('support') or '').startswith('Redação adaptada para estudo;'): q['support']=q['support'].split('\n\n',1)[1] if '\n\n' in q['support'] else None
  q.update(PATCHES.get(key,{}).get(n,{}));q['text']=sanitize(q['text'])
  q['options']=[sanitize(o) for o in q['options']]
  # Section preludes accidentally attached to E must not leak support text into an option.
  q['options'][4]=re.split(r'(?i)(?:\bTexto\s+(?:II|III|IV|V)\b|Veja a Figura I|Leia o texto II)',q['options'][4])[0].strip()
  prefix='Questão anulada. ' if q['answer']=='A/B/C/D/E' else f"Gabarito oficial: {q['answer']}. "
  q['explanation']=prefix+exp
  note='Redação adaptada para estudo; numeração e ordem das alternativas preservadas. Textos de apoio resumidos. Consulte a questão e os textos integrais no caderno oficial. Explicação autoral, não publicada pela banca.'
  if item['module']=='III':note+=' As 20 questões objetivas são comuns às quatro áreas; o link abre o caderno de Humanas. As discursivas não integram este cadastro.'
  q['support']=note+('\n\n'+q['support'] if q.get('support') else '')
  cropkey=(key,n)
  if cropkey in IMAGES or cropkey in VECTORS:
   if cropkey in IMAGES:
    page,indices=IMAGES[cropkey];p=doc[page-1];w,h=p.get_size();im=p.render(scale=2.5).to_pil();objects=list(p.get_objects(filter=[3]));parts=[]
    for i in indices:
     l,b,r,t=objects[i].get_bounds();parts.append(im.crop(tuple(round(v*2.5) for v in (l,h-t,r,h-b))))
    if len(parts)>1:
     im=Image.new('RGB',(max(x.width for x in parts),sum(x.height for x in parts)+24*(len(parts)-1)),'white');y=0
     for part in parts:im.paste(part,(0,y));y+=part.height+24
    else:im=parts[0]
   else:
    page,bounds=VECTORS[cropkey];im=doc[page-1].render(scale=2.5).to_pil().crop(tuple(round(v*2.5) for v in bounds))
   name=f'{slug}-questao-{n}.png';im.save(ROOT/'public'/name);q['support_image']='/'+name;images.append((name,im.copy()))
  assert len(q['options'])==5 and all(q['options']),(slug,n)
  serialized=json.dumps(q,ensure_ascii=False)
  assert not re.search(r'[\x00-\x08\x0b\x0c\x0e-\x1f\ufffd]|\(cid:',serialized),(slug,n,'caractere inválido')
  assert len(q['text'])<1400 and all(len(o)<700 for o in q['options']),(slug,n,'texto excessivo')
 (D/item['questions_file']).write_text(json.dumps(qs,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');allqs[slug]=qs
 entry={k:item[k] for k in ['year','day','module','url']};entry['pages']=[q['page'] for q in qs]
 if item['module']=='III':entry['areas']={s['file'].rsplit('-',1)[1][:-4]:s['url'] for s in SOURCES if s['file'].startswith(f'pism-iii-{item["year"]}-dia-{item["day"]}-')}
 metadata[slug]=entry
(D/'catalogo-final.json').write_text(json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
for module,filename in [('II','seed-pism-ii-2024.sql'),('III','seed-pism-iii-2024-2026.sql')]:
 slugs=[s for s,x in metadata.items() if x['module']==module]
 sql=['-- ProvaCerta: PISM '+module+'. 20 questões objetivas por dia; redação adaptada para estudo.','-- Textos integrais nos cadernos UFJF; explicações autorais.','-- Gabaritos revisados preservados: II 2024 dia 1 Q11 C/D; III 2025 dia 1 Q11 C/E e Q15 B/C.','-- III 2026 dia 2 Q17 anulada: A/B/C/D/E representa ponto automático, inclusive em branco.','-- As objetivas do módulo III são comuns às quatro áreas; discursivas não incluídas.','-- Execute o arquivo inteiro no SQL Editor. Reexecutável; IDs e demais provas preservados.','begin;','alter table public.questions add column if not exists explanation text;','alter table public.questions drop constraint if exists questions_answer_check;',"alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');"]
 for slug in slugs:
  x=metadata[slug];y,d=x['year'],x['day'];sql.append('-- Caderno oficial: '+x['url'])
  for source in SOURCES:
   if source['file'].startswith(f'gabarito-{module.lower()}-{y}-dia-{d}') :sql.append('-- Gabarito oficial: '+source['url'])
  sql.append(f"insert into public.exams (slug,title,source,year) values ({quote(slug)},{quote(f'PISM {module} {y} - {d}º dia')},'pism',{quote(f'{y}-{d}')}) on conflict (slug) do update set title=excluded.title, source=excluded.source, year=excluded.year;")
  for q in allqs[slug]:
   vals=[str(q['number'])]+[quote(q[k]) for k in ['subject','text','support','support_image']]+[quote(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',quote(q['answer']),quote(q['explanation'])]
   sql.extend(['insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)',f"select id, {', '.join(vals)} from public.exams where slug={quote(slug)}",'on conflict (exam_id,number) do update set subject=excluded.subject, text=excluded.text, support=excluded.support, support_image=excluded.support_image, options=excluded.options, answer=excluded.answer, explanation=excluded.explanation;'])
 sql+=['commit;',f"select e.slug,count(q.id) as quantidade_questoes,count(q.explanation) as explicacoes from public.exams e left join public.questions q on q.exam_id=e.id where e.slug in ({','.join(quote(s) for s in slugs)}) group by e.slug order by e.slug;"]
 (ROOT/'supabase'/filename).write_text('\n\n'.join(sql)+'\n',encoding='utf-8')
# Preserve the existing catalog and add eight new entries.
p=ROOT/'src/lib/pismSources.js';s=p.read_text(encoding='utf-8');begin=s.index('{');end=s.index('\n\nexport function');old=json.loads(s[begin:end]);old.update(metadata)
funcs=s[end:].replace("value.includes('-ii-')","/-iii?-/.test(value)").replace("`pism-ii-${value.replace('-ii-', '-dia-')}`","`pism-${value.match(/-(iii?)-/)[1]}-${value.replace(/-iii?-/, '-dia-')}`")
p.write_text('// Anos oficiais e páginas PDF (incluindo capa); slugs legados preservados.\nconst pismExams = '+json.dumps(old,ensure_ascii=False,indent=2)+funcs,encoding='utf-8')
p=ROOT/'src/main.jsx';s=p.read_text(encoding='utf-8');s=s.replace("years: ['2026-ii-1', '2026-ii-2', '2025-ii-1', '2025-ii-2']","years: ['2026-ii-1', '2026-ii-2', '2025-ii-1', '2025-ii-2', '2024-ii-1', '2024-ii-2']")
# Restrict empty-year replacement to third-year block.
s=re.sub(r"('3 ano':\s*\{[^}]*?years:)\s*\[\]",r"\1 ['2026-iii-1', '2026-iii-2', '2025-iii-1', '2025-iii-2', '2024-iii-1', '2024-iii-2']",s)
for slug,x in metadata.items():
 if f"'{slug}': '{slug}'" not in s:s=s.replace("'pism-ii-2026-dia-2': 'pism-ii-2026-dia-2'",f"'{slug}': '{slug}', 'pism-ii-2026-dia-2': 'pism-ii-2026-dia-2'")
 value=f"{x['year']}-{x['module'].lower()}-{x['day']}"
 if f"'{value}': '{slug}'" not in s:s=s.replace("    '2026-ii-1':",f"    '{value}': '{slug}',\n    '2026-ii-1':")
p.write_text(s,encoding='utf-8')
# Keep the catalog regeneration utility aware of the additions.
p=ROOT/'scripts/update-pism-sources.py';s=p.read_text(encoding='utf-8')
if 'pism-expansao/catalogo-final.json' not in s:s=s.replace("js='// Slugs", "catalog_additions = ROOT/'pdf-extracts/pism-expansao/catalogo-final.json'\nif catalog_additions.exists(): metadata.update(json.loads(catalog_additions.read_text(encoding='utf-8')))\njs='// Slugs")
s=s.replace("value.includes('-ii-')","/-iii?-/.test(value)").replace("`pism-ii-${value.replace('-ii-', '-dia-')}`","`pism-${value.match(/-(iii?)-/)[1]}-${value.replace(/-iii?-/, '-dia-')}`");p.write_text(s,encoding='utf-8')
# Contact sheets for inspection of all exported figures.
for start in range(0,len(images),8):
 subset=images[start:start+8];sheet=Image.new('RGB',(1200,400*((len(subset)+2)//3)),'#eeeeee');draw=ImageDraw.Draw(sheet)
 for j,(name,im) in enumerate(subset):
  x=(j%3)*400;y=(j//3)*400;im.thumbnail((380,355));sheet.paste(im,(x+10,y+35));draw.text((x+8,y+8),name,fill='black')
 sheet.save(D/f'figuras-conferencia-{start//8+1}.png')
print('8 provas, 160 questões, 160 explicações,',len(images),'figuras; 2 consultas SQL; catálogo e seleção atualizados.')