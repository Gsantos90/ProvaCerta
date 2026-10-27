"""Rebuild CFC 2025/2026, editions 1 and 2, from FGV type 1 booklets.
Full-width original crops preserve accounting tables, formulas and typography.
Requires PyMuPDF. Uses official definitive answer keys.
"""
import json,re,sys,urllib.request,html
from pathlib import Path
import fitz
sys.stdout.reconfigure(encoding='utf8')
D=Path('pdf-extracts/cfc');D.mkdir(parents=True,exist_ok=True)
op=urllib.request.build_opener(urllib.request.ProxyHandler({}))
sources={};banks=[];metadata={}
for ed in ['2026.2','2026.1','2025.2','2025.1']:
    url='https://conhecimento.fgv.br/exames/cfc/'+ed
    if (D/'sources.json').exists():
        entry=json.loads((D/'sources.json').read_text(encoding='utf8'))[ed]
    else:
        text=op.open(url,timeout=30).read().decode('utf8')
        links=[(html.unescape(u),re.sub('<[^>]+>','',t).strip())for u,t in re.findall(r'<a[^>]+href="([^"]+)"[^>]*>(.*?)</a>',text,re.S)]
        entry={'page':url}
        for kind,label in [('prova','Tipo 1'),('gabarito','Gabarito Oficial Definitivo da Prova Objetiva')]:
            u=next(u for u,t in links if t==label)
            entry[kind]='https://conhecimento.fgv.br'+u if u.startswith('/')else u
    sources[ed]=entry
    for kind in ['prova','gabarito']:
        path=D/(ed+'-'+kind+'.pdf')
        if not path.exists():
            data=op.open(entry[kind],timeout=30).read();assert data.startswith(b'%PDF');path.write_bytes(data)
    keytext='\n'.join(p.get_text(sort=True)for p in fitz.open(D/(ed+'-gabarito.pdf')))
    answers={};numbers=[]
    for line in keytext.splitlines():
        tokens=line.split()
        if tokens and all(t.isdigit()for t in tokens):numbers=[int(t)for t in tokens]
        elif numbers and tokens and all(t in 'ABCD*X'for t in tokens):
            assert len(numbers)==len(tokens)
            for n,a in zip(numbers,tokens):
                if n not in answers:answers[n]=a
            numbers=[]
            if len(answers)==50:break
    assert sorted(answers)==list(range(1,51)),(ed,answers)
    doc=fitz.open(D/(ed+'-prova.pdf'));markers=[]
    for pi,p in enumerate(doc):
        if pi==0:continue
        for b in p.get_text('dict')['blocks']:
            for line in b.get('lines',[]):
                t=''.join(s['text']for s in line['spans']).strip();x,y,x1,y1=line['bbox']
                if re.fullmatch(r'\d{1,2}',t)and abs(x-42.6)<1 and 50<y<780 and any(s['size']>=9.8 and 'Bold'in s['font'] for s in line['spans']):
                    markers.append({'number':int(t),'page':pi,'y':y-3})
    markers.sort(key=lambda m:(m['page'],m['y']))
    assert [m['number']for m in markers]==list(range(1,51)),(ed,markers)
    slug='cfc-'+ed.replace('.','-');assets=Path('public')/slug;assets.mkdir(exist_ok=True);rows=[];pages={}
    for i,m in enumerate(markers):
        end=markers[i+1]if i<49 else {'page':m['page'],'y':785}
        paths=[];texts=[]
        for pi in range(m['page'],end['page']+1):
            top=m['y']if pi==m['page']else 54
            bottom=end['y']-3 if pi==end['page']else 785
            if bottom-top<8:continue
            box=fitz.Rect(40,top,558,bottom)
            text=doc[pi].get_text(clip=box,sort=True)
            if not text.strip()and not doc[pi].get_images():continue
            path=assets/f'q{m["number"]}-{len(paths)+1}.png'
            doc[pi].get_pixmap(matrix=fitz.Matrix(2.3,2.3),clip=box,alpha=False).save(path)
            paths.append('/'+slug+'/'+path.name);texts.append(text)
        raw='\n'.join(texts)
        raw=re.sub(r'^\s*'+str(m['number'])+r'\s*\n','',raw)
        matches=list(re.finditer(r'(?m)^\s*\(([A-D])\)\s*',raw))[-4:]
        assert [a[1]for a in matches]==list('ABCD'),(ed,m['number'],raw)
        def clean(text):
            text=re.sub(r'(?<=[a-zà-ÿ])[-\u00ad]\s*\n(?=[a-zà-ÿ])','',text)
            return re.sub(r'\s+',' ',re.sub(r'[\x00-\x08\x0b-\x1f\u00ad]','',text)).strip()
        options=[clean(raw[a.end():matches[j+1].start()if j<3 else len(raw)])for j,a in enumerate(matches)]
        n=m['number'];answer=answers[n]
        rows.append({'number':n,'subject':'Língua Portuguesa'if n<=2 else'Matemática Financeira e Estatística'if n<=4 else'Ciências Contábeis','text':clean(raw[:matches[0].start()]),'support':None,'support_image':json.dumps({'original':paths},ensure_ascii=False),'options':options,'answer':'A/B/C/D/E'if answer in '*X'else answer,'explanation':None})
        pages[n]=m['page']+1
    banks.append({'slug':slug,'title':f'CFC {ed} — Exame de Suficiência — Contador — Tipo 1','source':'cfc','year':ed[:4],'questions':rows})
    metadata[slug]={'url':entry['prova'],'keyUrl':entry['gabarito'],'processUrl':url,'pages':pages}
    print(ed,len(rows),'questões; anuladas:',[q['number']for q in rows if '/'in q['answer']])
    dest=Path('public/provas/cfc');dest.mkdir(parents=True,exist_ok=True)
    for kind in ['prova','gabarito']:(dest/(ed+'-'+kind+'.pdf')).write_bytes((D/(ed+'-'+kind+'.pdf')).read_bytes())
def lit(v):return'null'if v is None else"'"+str(v).replace("'","''")+"'"
statements=[]
for b in banks:
    statements.append('insert into public.exams(slug,title,source,year) values ('+','.join(lit(b[k])for k in ['slug','title','source','year'])+') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;')
    for q in b['questions']:
        vals=[str(q['number'])]+[lit(q[k])for k in ['subject','text','support','support_image']]+[lit(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',lit(q['answer']),'null']
        statements.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(vals)+' from public.exams where slug='+lit(b['slug'])+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer;')
Path('supabase/seed-cfc-2025-2026.sql').write_text('-- CFC/FGV: tipo 1, gabaritos definitivos. Dados apenas.\nbegin;\n'+'\n'.join(statements)+'\ncommit;\n',encoding='utf8')
(D/'statements.json').write_text(json.dumps(statements,ensure_ascii=False),encoding='utf8')
(D/'banks.json').write_text(json.dumps(banks,ensure_ascii=False,indent=2),encoding='utf8')
(D/'sources.json').write_text(json.dumps(sources,indent=2),encoding='utf8')
Path('src/lib/cfcSources.js').write_text('// Generated by scripts/import-cfc.py\nexport default '+json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
