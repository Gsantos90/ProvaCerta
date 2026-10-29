"""Import reviewed PM-SP public booklets. Text/options/support stay separate.

Run download-pmsp.mjs first. Geometry is in PDF points; images contain figures
only. All upserts preserve existing IDs and other institutions.
"""
import json, re, shutil, sys
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf8')
D = Path('pdf-extracts/pmsp')
OUT = Path('public/provas/pmsp'); OUT.mkdir(parents=True, exist_ok=True)
LINKS = json.loads((D/'document-links.json').read_text(encoding='utf8'))
REVIEWED = json.loads(Path('scripts/pmsp-reviewed-text.json').read_text(encoding='utf8'))
def link(code, pattern):
    return next(x['url'] for x in LINKS[code] if re.search(pattern,x['title']))
META = [
 dict(name='soldado-2026', date='20/09/2026',year='2026',role='Soldado',mode='vunesp',count=60,url=link('PMES2601','Caderno'),keyUrl='https://doe.sp.gov.br/executivo/secretaria-da-seguranca-publica/comunicado-n-dp-031-321-26-20261009133616191662194492'),
 dict(name='soldado-2025-11',date='30/11/2025',year='2025',role='Soldado',mode='vunesp',count=60,url='https://documento.vunesp.com.br/documento/stream/NzQ5MDc4NQ==',keyUrl='https://documento.vunesp.com.br/documento/stream/NzUzOTM5Mg=='),
 dict(name='soldado-2025-02',date='16/02/2025',year='2025',role='Soldado',mode='fgv',count=60,url='https://conhecimento.fgv.br/sites/default/files/concursos/soldado-pm-de-2a-classe-cnm001-tipo-1_0.pdf',keyUrl='https://conhecimento.fgv.br/sites/default/files/concursos/doeco-04.321.25-gabarito-definitivo-ed.3.321.24.pdf'),
 dict(name='oficial-2026',date='16/08/2026',year='2026',role='Oficial',mode='vunesp',count=80,url=link('PMES2602','Caderno.*Cadete'),keyUrl=link('PMES2602','Definitivo')),
 dict(name='oficial-2025',date='13/07/2025',year='2025',role='Oficial',mode='fgv',count=80,url='https://conhecimento.fgv.br/sites/default/files/concursos/cabo-oficial-da-policia-militar-do-estado-de-sao-paulocnm001-tipo-1.pdf',keyUrl='https://conhecimento.fgv.br/sites/default/files/concursos/pmesp_aluno_gabarito_definitivo_v2_g46f64f31.pdf'),
 dict(name='oficial-2024',date='18/08/2024',year='2024',role='Oficial',mode='vunesp',count=80,url='https://arquivos.qconcursos.com/prova/arquivo_prova/128614/vunesp-2024-pm-sp-aluno-oficial-prova.pdf',keyUrl='https://arquivos.qconcursos.com/prova/arquivo_gabarito/128614/vunesp-2024-pm-sp-aluno-oficial-gabarito.pdf'),
]

def clean(t):
    t=t.replace('\u00ad','').replace('\x02','').replace('\uf06c','l').replace('\uf0b0','°').replace('retângu-lo','retângulo')
    t=re.sub(r'[\x00-\x08\x0b-\x1f]','',t)
    t=re.sub(r'(?<=[a-zà-ÿ])-\s*\n(?=(?:se|lhe|lo|la|los|las)\b)', '-\u200b',t)
    t=re.sub(r'(?<=[a-zà-ÿ])-\s*\n(?=[a-zà-ÿ])','',t).replace('\u200b','')
    return re.sub(r'\s+',' ',t).strip()

def page_lines(p):
    rows=[]
    for b in p.get_text('dict',flags=0)['blocks']:
        for l in b.get('lines',[]):
            spans=l['spans'];base=max(s['size'] for s in spans);text=''
            baseline=next(s['origin'][1] for s in spans if s['size']==base)
            for s in spans:
                t=s['text']
                if s['size']<base*.86 and re.fullmatch(r'[0-9+−-]+',t.strip()):
                    alphabet='⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁻' if s['origin'][1]<baseline-1 else '₀₁₂₃₄₅₆₇₈₉₊₋₋'
                    t=t.translate(str.maketrans('0123456789+−-',alphabet))
                text+=t
            rows.append(dict(box=l['bbox'],text=text.strip(),font=spans[0]['font'],size=base))
    return rows

def keys(meta,lang):
    name=meta['name']
    if name=='soldado-2026':
        # Official definitive Version 1, corroborated by the press key.
        # The original press PDF contains the identical 60-letter sequence.
        key_doc=fitz.open(D/(name+'-imprensa.pdf'))
        text='\n'.join(p.get_text(sort=True) for p in key_doc)
    elif name=='oficial-2025':
        doc=fitz.open(D/(name+'-gabarito.pdf'))
        text=doc[1 if lang=='ingles' else 0].get_text(sort=True)
        text=text.split('TIPO 1')[1].split('TIPO 2')[0]
        rows=text.splitlines(); answers=[]
        for row in rows:
            tokens=row.split()
            if len(tokens)==20 and all(re.fullmatch('[A-E*]',x) for x in tokens):answers.extend(tokens)
        assert len(answers)==80,(name,answers)
        return dict(enumerate(answers,1))
    else:
        doc=fitz.open(D/(name+'-gabarito.pdf'));text='\n'.join(p.get_text(sort=True) for p in doc)
        if 'PROVA TIPO 1' in text:text=text.split('PROVA TIPO 1')[1].split('PROVA TIPO 2')[0]
    result={int(n):a for n,a in re.findall(r'\b(\d{1,2})\s*-\s*([A-EN*])\b',text)}
    assert len(result)==meta['count'],(name,len(result))
    if name=='soldado-2026':
        definitive='CDCABDEACB BCADEDBDCE AEACBDAECB DBADEBCACE DEABEDCACB EAADECBDAC'.replace(' ','')
        assert ''.join(result[n] for n in range(1,61))==definitive, 'Press key differs from definitive Version 1 (DP-031/321/26)'
    return result

def extract(meta):
    name=meta['name']; fgv=meta['mode']=='fgv'; doc=fitz.open(D/(name+'-prova.pdf'))
    slots=[]; events=[]
    for pi,p in enumerate(doc):
        if pi==0:continue
        lines=page_lines(p)
        for col,(left,right) in enumerate([(40,289),(309,558)] if fgv else [(30,298),(300,570)]):
            slot=len(slots)
            rows=sorted([l for l in lines if left<=l['box'][0]<right and (50 if fgv else 20)<=l['box'][1]< (787 if fgv else 800)],key=lambda l:(round(l['box'][1],1),l['box'][0]))
            slots.append(dict(pi=pi,col=col,left=left,right=right,top=50 if fgv else 20,bottom=787 if fgv else 800,rows=rows))
            for ri,l in enumerate(rows):
                t=l['text'];x,y,_,_=l['box'];m=None
                if fgv and abs(x-(42.6 if col==0 else 311.69))<1 and 'Bold' in l['font'] and l['size']<10:
                    m=re.fullmatch(r'(\d{1,2})',t)
                elif not fgv:
                    if meta['role']=='Soldado' and abs(x-(34 if col==0 else 304.7))<2:m=re.match(r'^(\d{2})\.\s*',t)
                    elif abs(x-(35.4 if col==0 else 306.1))<2 and 'Tahoma-Bold' in l['font'] and l['size']<10:m=re.fullmatch(r'(\d{2})',t)
                if m and 1<=int(m[1])<=meta['count']:events.append(dict(kind='question',number=int(m[1]),slot=slot,y=y-.1))
                if re.match(r'Leia |Read |Para responder|Examine |Utilize ',t):
                    intro=clean('\n'.join(r['text'] for r in rows[ri:ri+4]))
                    shared=re.search(r'(?:questões|questions)\s*(?:de\s*)?(\d{1,2})\s*(?:a|e|to|and)\s*(\d{1,2})',intro,re.I)
                    if shared:events.append(dict(kind='context',first=int(shared[1]),last=int(shared[2]),slot=slot,y=y-.1))
                if name=='oficial-2025' and pi==9 and col==1 and t=='Text I':
                    events.append(dict(kind='context',first=39,last=42,slot=slot,y=y-.1))
                # Spanish passages start before their question group, without a command.
                if name=='oficial-2025' and ((pi==10 and col==1 and t.startswith('Tres de cada diez')) or (pi==11 and col==0 and t.startswith('La mitad de los brasileños')) or (pi==11 and col==1 and t.startswith('En lo profundo'))):
                    first,last=(39,40) if pi==10 else (41,42) if col==0 else (43,44)
                    events.append(dict(kind='context',first=first,last=last,slot=slot,y=y-.1))
    events.sort(key=lambda e:(e['slot'],e['y']))
    markers=[e for e in events if e['kind']=='question']
    print(name,'markers',[m['number'] for m in markers],flush=True)
    assert all(any(m['number']==n for m in markers) for n in range(1,meta['count']+1)),name
    last80=max(i for i,e in enumerate(events) if e['kind']=='question' and e['number']==meta['count'])
    events=events[:last80+1]
    def regions(start,end):
        result=[]
        for si in range(start['slot'],end['slot']+1):
            s=slots[si];top=start['y'] if si==start['slot'] else s['top'];bottom=end['y']-.2 if si==end['slot'] else s['bottom']
            if bottom>top:result.append((si,fitz.Rect(s['left'],top,s['right'],bottom)))
        return result
    def content(start,end):
        regs=regions(start,end); texts=[];figures=[]
        for si,box in regs:
            s=slots[si];pg=doc[s['pi']]
            selected=[l for l in s['rows'] if box.y0<=l['box'][1]<box.y1 and l['text'] and not re.search(r'RASCUNHO|FGV CONHECIMENTO|POLÍCIA MILITAR DO ESTADO|ESPAÇO PARA',l['text']) and not ('Bold' in l['font'] and l['size']>=10)]
            texts.extend(l['text'] for l in selected)
            # Embedded illustrations, excluding page logos and small decorations.
            for image in pg.get_image_info():
                b=fitz.Rect(image['bbox'])
                if b.width>30 and b.height>25 and box.x0<=b.x0<box.x1 and box.y0<=b.y0 and b.y1<=box.y1:figures.append((s['pi'],b))
            drawings=[d for d in pg.get_drawings() if not (d['items'] and all(item[0]=='l' and abs(item[1].y-item[2].y)<.5 for item in d['items']))]
            for b in pg.cluster_drawings(drawings=drawings):
                if b.width>20 and b.height>18 and b.width<box.width+2 and box.contains(b):
                    expanded=fitz.Rect(b.x0-12,b.y0-18,b.x1+12,b.y1+18)&box
                    if not any(pi==s['pi'] and existing.intersects(b) for pi,existing in figures):figures.append((s['pi'],expanded))
        return '\n'.join(texts),figures,regs
    shared={};questions=[];pages={};assetdir=Path('public/pmsp')/name;assetdir.mkdir(parents=True,exist_ok=True)
    def save_figs(figs,prefix):
        urls=[]
        for pi,box in figs:
            path=assetdir/f'{prefix}-{len(urls)+1}.png'
            doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box).save(path);urls.append('/pmsp/'+name+'/'+path.name)
        return urls
    for ei,e in enumerate(events):
        if e['kind']=='context':
            stop=next(m for m in events[ei+1:] if m['kind']=='question')
            text,figs,_=content(e,stop)
            if re.search(r'tira|tirinha',text.split('\n')[0],re.I):
                # Vector comics consist of many disconnected paths. Keep the
                # whole comic together, bounded by its caption and question.
                figs=[]
                for si,box in regions(e,stop):
                    s=slots[si]; rs=[l for l in s['rows'] if box.y0<=l['box'][1]<box.y1]
                    intro_end=rs[0]['box'][3]+3
                    caption=next((l['box'][1]-3 for l in rs[1:] if l['text'].startswith('(')),box.y1-3)
                    complete=[(s['pi'],fitz.Rect(image['bbox'])) for image in doc[s['pi']].get_image_info() if intro_end<image['bbox'][1] and image['bbox'][3]<box.y1 and image['bbox'][2]-image['bbox'][0]>50]
                    if complete:figs.extend(complete)
                    elif caption-intro_end>25:figs.append((s['pi'],fitz.Rect(box.x0,intro_end,box.x1,caption)))
            shared[(e['slot'],e['y'])]=(e,clean(text),save_figs(figs,f'apoio-{e["first"]}-{e["last"]}-{e["slot"]}'))
    for ei,e in enumerate(events):
        if e['kind']!='question':continue
        n=e['number'];stop=events[ei+1] if ei+1<len(events) else dict(slot=e['slot'],y=slots[e['slot']]['bottom'])
        text,figs,regs=content(e,stop)
        text=re.sub(r'^\s*0?'+str(n)+r'\.?\s*','',text)
        matches=list(re.finditer(r'(?m)^\s*\(([A-E])\)\s*',text))[-5:]
        assert [m[1] for m in matches]==list('ABCDE'),(name,n,text)
        stem=text[:matches[0].start()]
        options=[clean(text[m.end():matches[i+1].start() if i<4 else len(text)]) for i,m in enumerate(matches)]
        if name=='soldado-2025-02' and n==53:options=['']*5
        context=next((item for key,item in reversed(list(shared.items())) if key<(e['slot'],e['y']) and item[0]['first']<=n<=item[0]['last']),None)
        support=context[1] if context else None;media=list(context[2]) if context else []
        empty_options=any(not option for option in options)
        if empty_options:
            firstoption=next((slots[si]['pi'],l['box'][1]) for si,box in regs for l in slots[si]['rows'] if box.y0<=l['box'][1]<box.y1 and l['text'].startswith('(A)'))
            figs=[(pi,b) for pi,b in figs if pi<firstoption[0] or pi==firstoption[0] and b.y1<firstoption[1]]
        media+=save_figs(figs,f'q{n}-{e["slot"]}-figura')
        # Some Vunesp alternatives are vector charts/formulas, not PDF text.
        if any(not option for option in options):
            altfigs=[]
            for si,box in regs:
                s=slots[si]
                altrows=[l for l in s['rows'] if box.y0<=l['box'][1]<box.y1 and re.match(r'^\([A-E]\)',l['text'])]
                for ai,row in enumerate(altrows):
                    letter=re.match(r'^\(([A-E])\)',row['text'])[1];idx='ABCDE'.index(letter)
                    if options[idx]:continue
                    bottom=altrows[ai+1]['box'][1]-2 if ai+1<len(altrows) else min(box.y1,row['box'][1]+125)
                    altfigs.append((s['pi'],fitz.Rect(box.x0,row['box'][1]-1,box.x1,bottom)))
                    options[idx]=f'Figura da alternativa {letter} (ver apoio).'
            media+=save_figs(altfigs,f'q{n}-{e["slot"]}-alternativa')
            support=(support+'\n\n' if support else '')+'Figuras das alternativas A, B, C, D e E, nessa ordem.'
        # Split quoted source passages from the command after their citation.
        citations=list(re.finditer(r'(?m)^\([^\n]+(?:\n[^\n]+){0,3}?\)\s*$',stem))
        if not support and citations:
            cut=citations[-1].end()
            if clean(stem[cut:]) and len(clean(stem[:cut]))>80:
                support=clean(stem[:cut]);stem=stem[cut:]
        if name=='oficial-2025' and n==43 and 'The cartoon criticizes' in stem:
            cut=stem.index('The cartoon criticizes');support=clean(stem[:cut]);stem=stem[cut:]
        # Underlines carry meaning in language questions. Preserve their text
        # explicitly, rather than turning the whole question into a screenshot.
        if re.search(r'sublinhad|destacad',stem,re.I):
            marked=[]
            for si,box in regs:
                pg=doc[slots[si]['pi']]
                chars=[c for b in pg.get_text('rawdict',flags=0)['blocks'] for l in b.get('lines',[]) for s in l['spans'] for c in s['chars']]
                for drawing in pg.get_drawings():
                    for item in drawing['items']:
                        if item[0]!='l' or abs(item[1].y-item[2].y)>.5 or abs(item[1].x-item[2].x)<4:continue
                        x0,x1=sorted([item[1].x,item[2].x]);y=item[1].y
                        if not box.contains(fitz.Point(x0,y)) or not box.contains(fitz.Point(x1,y)):continue
                        match=[c for c in chars if x0-.5<= (c['bbox'][0]+c['bbox'][2])/2 <= x1+.5 and 0<c['bbox'][3]-y<5 and c['bbox'][1]<y]
                        value=clean(''.join(c['c'] for c in match))
                        if value and value not in marked and len(value)<90:marked.append(value)
            if marked:support=(support+'\n\n' if support else '')+'Trechos sublinhados no original: '+ '; '.join('“'+s+'”' for s in marked)+'.'
        subject=('Língua Portuguesa' if n<=20 else 'Matemática' if n<=35 else 'Conhecimentos Gerais' if n<=50 else 'Noções de Informática' if n<=55 else 'Noções de Administração Pública') if meta['role']=='Soldado' else next(label for first,label in reversed([(1,'História'),(7,'Filosofia'),(11,'Sociologia'),(15,'Geografia'),(21,'Língua Portuguesa'),(39,'Língua Estrangeira'),(45,'Matemática'),(57,'Física'),(63,'Química'),(69,'Biologia'),(75,'Noções de Administração Pública'),(77,'Noções de Informática')]) if n>=first)
        q=dict(number=n,subject=subject,text=clean(stem),support=support,support_image=json.dumps(media) if media else None,options=options,slot=e['slot'],regions=[(slots[si]['pi'],list(box)) for si,box in regs])
        review=REVIEWED.get(name,{}).get(str(n),{})
        for key in ['text','options','support','support_image']:
            if key in review:q[key]=review[key]
        for a,b in review.get('replace',[]):q['text']=q['text'].replace(a,b)
        for a,b in review.get('optionReplace',[]):q['options']=[s.replace(a,b) for s in q['options']]
        if 'options' in review and support and 'Figuras das alternativas' in support:
            q['support']=support.split('Figuras das alternativas')[0].strip() or None
            media=[p for p in media if '-alternativa-' not in p]
            q['support_image']=json.dumps(media) if media else None
        questions.append(q)
        pages[n]=slots[e['slot']]['pi']+1
    if meta['role']=='Oficial':
        periodic_page={'oficial-2024':31,'oficial-2025':2,'oficial-2026':30}[name]
        periodic=save_figs([(periodic_page,fitz.Rect(30,95 if fgv else 60,570,780))],'tabela-periodica')
        for q in questions:
            if 63<=q['number']<=68:
                q['support_image']=json.dumps(json.loads(q['support_image'] or '[]')+periodic)
    if name=='oficial-2025':
        # Both English questions refer to the same cartoon (Text II).
        cartoon=next(q for q in questions if q['number']==43)
        dependent=next(q for q in questions if q['number']==44)
        dependent['support']=cartoon['support']
        dependent['support_image']=cartoon['support_image']
    return questions,pages

all_banks=[];sources={};roles={}
for meta in META:
    rows,pages=extract(meta)
    for lang in (['ingles','espanhol'] if meta['role']=='Oficial' else [None]):
        answers=keys(meta,lang);seen={}
        for q in rows:
            n=q['number']
            if n in seen:
                if lang=='espanhol':seen[n]=q
            else:seen[n]=q
        slug='pmsp-'+meta['name']+('-'+lang if lang else '')
        qs=[]
        for n,row in sorted(seen.items()):
            q={k:v for k,v in row.items() if k not in ['slot','regions']}
            a=answers[n];q.update(answer='A/B/C/D/E' if a in '*N' else a,explanation='Questão anulada no gabarito definitivo.' if a in '*N' else None)
            qs.append(q)
        assert len(qs)==meta['count']
        label=f'{meta["year"]} · {meta["date"]}'+(' · '+('Inglês' if lang=='ingles' else 'Espanhol') if lang else '')
        title=f'PM São Paulo · {meta["role"]} · {label}'
        all_banks.append(dict(slug=slug,title=title,source='pmerj',year=meta['year'],questions=qs))
        roles.setdefault(meta['role'],dict(label='Soldado PM' if meta['role']=='Soldado' else 'Oficial / Cadete PM',years=[]))['years'].append(dict(value=meta['name']+('-'+lang if lang else ''),label=label,slug=slug,year=meta['year']))
        sources[slug]=dict(url='/provas/pmsp/'+meta['name']+'.pdf',pages={n:row['regions'][0][0]+1 for n,row in seen.items()},keyUrl=meta['keyUrl'])
    shutil.copyfile(D/(meta['name']+'-prova.pdf'),OUT/(meta['name']+'.pdf'))
(D/'banks.json').write_text(json.dumps(all_banks,ensure_ascii=False,indent=2),encoding='utf8')
Path('src/lib/pmspExams.js').write_text('// Generated by scripts/import-pmsp.py\nexport const pmspRolesConfig = '+json.dumps(roles,ensure_ascii=False,indent=2)+'\nexport const pmspSources = '+json.dumps(sources,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
def literal(v):return 'null' if v is None else "'"+str(v).replace("'","''")+"'"
statements=[]
for bank in all_banks:
    statements.append('insert into public.exams(slug,title,source,year) values ('+','.join(literal(bank[k]) for k in ['slug','title','source','year'])+') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;')
    for q in bank['questions']:
        values=[str(q['number'])]+[literal(q[k]) for k in ['subject','text','support','support_image']]+[literal(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',literal(q['answer']),literal(q['explanation'])]
        statements.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(values)+' from public.exams where slug='+literal(bank['slug'])+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;')
Path('supabase/seed-pmsp-recent.sql').write_text('-- Generated by scripts/import-pmsp.py. Preserve existing question IDs.\nbegin;\n'+'\n'.join(statements)+'\ncommit;\n',encoding='utf8')
print('Imported',len(all_banks),'versions;',sum(len(x['questions']) for x in all_banks),'questions')
