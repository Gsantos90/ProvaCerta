"""Download Comvest sources and rebuild faithful first-phase banks (PyMuPDF)."""
import json
import re
import sys
import urllib.request
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf8')
D=Path('pdf-extracts/unicamp');D.mkdir(parents=True,exist_ok=True)
PUBLIC=Path('public/provas/unicamp');PUBLIC.mkdir(parents=True,exist_ok=True)
SOURCES={
    '2026':{'booklet':'Q_X','prova':'https://www.comvest.unicamp.br/vest2026/F1/f12026Q_X.pdf','gabarito':'https://www.comvest.unicamp.br/wp-content/uploads/2025/10/Q_X-gabarito.pdf'},
    '2025':{'booklet':'Q_Z','prova':'https://www.comvest.unicamp.br/vest2025/F1/f12025Q_Z.pdf','gabarito':'https://www.comvest.unicamp.br/wp-content/uploads/2024/10/QZ_gabarito_2025_FINAL_site.pdf'},
    '2024':{'booklet':'Q_Y','prova':'https://www.comvest.unicamp.br/vest2024/F1/f12024Q_Y.pdf','gabarito':'https://www.comvest.unicamp.br/wp-content/uploads/2023/10/Q_Y.pdf'},
}

def download(url,path):
    if not path.exists():
        data=urllib.request.urlopen(url,timeout=30).read()
        assert data.startswith(b'%PDF'),url
        path.write_bytes(data)
    return fitz.open(path)

def clean(text):
    # Soft hyphens encode words split across lines, not actual hyphenated words.
    text=re.sub('\u00ad\\s*','',text)
    return re.sub(r'\s+',' ',text).strip()

banks=[];metadata={};reference={}
for year,source in SOURCES.items():
    doc=download(source['prova'],D/(year+'-prova.pdf'))
    answer_doc=download(source['gabarito'],D/(year+'-gabarito.pdf'))
    key_text='\n'.join(p.get_text(sort=True)for p in answer_doc)
    keys={int(n):k for n,k in re.findall(r'\b(0?[1-9]|[1-6]\d|7[0-2])\s+([ABCD*])\b',key_text)}
    # Asterisks (annulments) are not word characters.
    keys.update({int(n):'*' for n in re.findall(r'\b(0?[1-9]|[1-6]\d|7[0-2])\s+\*',key_text)})
    assert sorted(keys)==list(range(1,73)),(year,len(keys),sorted(keys))
    reference[year]=[keys[n]for n in range(1,73)]
    markers=[]
    for pi,page in enumerate(doc):
        for block in page.get_text('dict')['blocks']:
            for line in block.get('lines',[]):
                text=''.join(s['text']for s in line['spans']).strip()
                m=re.fullmatch(r'QUESTÃO\s+(\d+)',text)
                if m:
                    rect=fitz.Rect(line['bbox']);col=int(rect.x0>295)
                    markers.append({'number':int(m[1]),'page':pi,'col':col,'y':rect.y0-3})
    markers.sort(key=lambda m:(m['page'],m['col'],m['y']))
    assert [m['number']for m in markers]==list(range(1,73)),(year,markers)
    last_page=markers[-1]['page']
    assets=Path('public/unicamp-'+year);assets.mkdir(exist_ok=True)
    groups={'2024':[(1,2),(20,21),(34,35,36,37),(39,40)],'2025':[(5,6),(9,10),(13,14),(18,19),(35,36),(37,38)],'2026':[(9,10,11),(13,14),(55,56)]}[year]
    def position(m):return (m['page']*2+m['col'],m['y'])
    def rectangles(start,finish):
        begin=start['page']*2+start['col'];end=finish['page']*2+finish['col']
        for slot in range(begin,end+1):
            pi,col=divmod(slot,2);top=start['y']if slot==begin else 48;bottom=finish['y']-3 if slot==end else 812
            if bottom-top>4:yield pi,fitz.Rect(28 if col==0 else 305,top,291 if col==0 else 570,bottom)
    shared={};cutoffs=[]
    for group in groups:
        first=markers[group[0]-1];instruction=None
        for pi,page in enumerate(doc):
            for block in page.get_text('blocks'):
                t=clean(block[4]);pattern=r'questões\s+'+str(group[0])+r'\b.*?\b'+str(group[-1])+r'\b'
                if re.search(pattern,t)and any(word in t.lower()for word in ['texto comum','texto para','usado para','responder']):
                    instruction={'page':pi,'col':int(block[0]>295),'y':block[1]-2};break
            if instruction:break
        assert instruction,(year,group)
        # Some booklets place the shared passage after the first question header.
        # Other booklets put it before that header, possibly across columns/pages.
        same_slot=position(instruction)[0]==position(first)[0]
        inline=position(instruction)>=position(first)or(same_slot and first['y']-instruction['y']<65)
        if inline:
            start={'page':first['page'],'col':first['col'],'y':first['y']+21}
            following=markers[group[0]]
            candidates=[]
            for pi,box in rectangles(start,following):
                for word in doc[pi].get_text('words',clip=box):
                    if word[4].lower()=='a)':candidates.append({'page':pi,'col':int(word[0]>295),'y':word[1]})
            assert candidates,(year,group,'alternativa A')
            finish=min(candidates,key=position)
        else:
            start=instruction;finish=first;cutoffs.append(instruction)
        paths=[];texts=[]
        for pi,box in rectangles(start,finish):
            name=f'contexto-{group[0]}-{group[-1]}-{len(paths)+1}.png'
            doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box,alpha=False).save(assets/name)
            paths.append('/unicamp-'+year+'/'+name);texts.append(doc[pi].get_text(clip=box,sort=True))
        assert paths,(year,group)
        for n in group:
            if not inline or n!=group[0]:shared[n]={'images':paths,'text':clean(' '.join(texts))}
    # In 2025, question 19 adds a second passage before its question header.
    if year=='2025':
        first=markers[18];instruction=None
        for pi,page in enumerate(doc):
            for block in page.get_text('blocks'):
                if clean(block[4]).startswith('Para responder questão 19'):
                    instruction={'page':pi,'col':int(block[0]>295),'y':block[1]-2}
        assert instruction and position(instruction)<position(first)
        cutoffs.append(instruction)
        for pi,box in rectangles(instruction,first):
            name=f'contexto-19-texto2-{len(shared[19]["images"])}.png'
            doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box,alpha=False).save(assets/name)
            shared[19]['images'].append('/unicamp-'+year+'/'+name)
            shared[19]['text']+=' '+clean(doc[pi].get_text(clip=box,sort=True))
    questions=[];pages={}
    for i,m in enumerate(markers):
        n=m['number'];following=markers[i+1]if i+1<len(markers)else {'page':last_page,'col':1,'y':812}
        relevant=[c for c in cutoffs if position(m)<position(c)<position(following)]
        if relevant:following=min(relevant,key=position)
        begin=m['page']*2+m['col'];end=following['page']*2+following['col']
        parts=[];text_parts=[];regions=[]
        for slot in range(begin,end+1):
            pi,col=divmod(slot,2)
            top=m['y']if slot==begin else 48
            bottom=following['y']-3 if slot==end else 812
            if bottom-top<4:continue
            left,right=(28,291)if col==0 else (305,570)
            box=fitz.Rect(left,top,right,bottom)
            text=doc[pi].get_text(clip=box,sort=True).strip()
            # Drop blank scratch columns without carrying them into the question.
            if not text or text=='RASCUNHO':continue
            image=f'q{n:02d}-{len(parts)+1}.png'
            doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box,alpha=False).save(assets/image)
            parts.append('/unicamp-'+year+'/'+image);text_parts.append(text)
            regions.append({'page':pi+1,'box':list(box)})
        raw='\n'.join(text_parts)
        raw=re.sub(r'^QUESTÃO\s+\d+\s*','',raw)
        options=list(re.finditer(r'(?m)^\s*([a-dA-D])\)\s*',raw))
        if len(options)==4 and [o[1].lower()for o in options]==list('abcd'):
            text=clean(raw[:options[0].start()])
            choices=[clean(raw[o.end():options[j+1].start()if j<3 else len(raw)])for j,o in enumerate(options)]
        else:
            # Original image remains authoritative for diagrammatic/grid options.
            text=clean(raw)
            choices=[f'Alternativa {letter}, conforme o caderno original.'for letter in 'ABCD']
        assert parts and text,(year,n)
        choices=[c if c else f'Alternativa {letter}, conforme a figura do caderno.'for c,letter in zip(choices,'ABCD')]
        context=shared.get(n,{})
        row={'number':n,'subject':'Conhecimentos Gerais','text':clean(context.get('text','')+' '+text),'support':None,
             'support_image':json.dumps({'original':parts,'support':context.get('images',[])},ensure_ascii=False),
             'options':choices,'answer':'A/B/C/D/E'if keys[n]=='*'else keys[n],
             'explanation':'Questão anulada no gabarito oficial final da Comvest. Ponto atribuído automaticamente.'if keys[n]=='*'else None,
             'page':m['page']+1,'regions':regions}
        questions.append(row);pages[n]=m['page']+1
    banks.append({'slug':'unicamp-'+year+'-fase1','year':year,'title':'Unicamp '+year+' · 1ª fase · Prova '+source['booklet'].replace('_','/'),'questions':questions})
    metadata['unicamp-'+year+'-fase1']={'url':source['prova'],'answerUrl':source['gabarito'],'pages':pages}
    (D/(year+'-questions.json')).write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
    (PUBLIC/(year+'-fase1.pdf')).write_bytes((D/(year+'-prova.pdf')).read_bytes())
    (PUBLIC/(year+'-gabarito.pdf')).write_bytes((D/(year+'-gabarito.pdf')).read_bytes())
    print(year,'72 questões; anuladas:',[n for n,k in keys.items()if k=='*'],'imagens:',sum(len(json.loads(q['support_image'])['original'])for q in questions))

def lit(value):return 'null'if value is None else "'"+str(value).replace("'","''")+"'"
sql=['-- Unicamp: Comvest, primeira fase 2026, 2025 e 2024.','-- Dados somente; preservar schema/RLS e IDs existentes.','begin;']
for exam in banks:
    sql.append('insert into public.exams(slug,title,source,year) values ('+','.join(lit(v)for v in [exam['slug'],exam['title'],'unicamp',exam['year']])+') on conflict(slug) do update set title=excluded.title;')
    for q in exam['questions']:
        values=[str(q['number'])]+[lit(q[k])for k in ['subject','text','support','support_image']]+[lit(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',lit(q['answer']),lit(q['explanation'])]
        sql.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(values)+' from public.exams where slug='+lit(exam['slug'])+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);')
sql.append('commit;')
Path('supabase/seed-unicamp-2024-2026.sql').write_text('\n'.join(sql)+'\n',encoding='utf8')
Path('src/lib/unicampSources.js').write_text('// Generated by scripts/import-unicamp.py.\nexport default '+json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
Path('scripts/fixtures/unicamp-keys.json').write_text(json.dumps(reference,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
