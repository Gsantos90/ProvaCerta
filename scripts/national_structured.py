"""Structured question extraction: statements, options and shared support are independent."""
import json,re,runpy,sys,unicodedata
from pathlib import Path
import fitz
sys.stdout.reconfigure(encoding='utf8')
S=runpy.run_path('scripts/import-national-exams.py')
D=S['D']
EDITS=json.loads(Path('scripts/fixtures/national-editorial.json').read_text(encoding='utf8'))

def clean(t):
    for a,b in {'\uf06d':'μ','\uf073':'σ','\uf0c2':'ℝ','\uf02d':'−','\uf02b':'+'}.items():t=t.replace(a,b)
    t=unicodedata.normalize('NFKC',t)
    t=re.sub(r'(?<=[a-zà-ÿ])[-\u00ad]\s*\n(?=[a-zà-ÿ])','',t)
    t=re.sub(r'(?<=[f][il])\s+(?=[a-zà-ÿ])','',t)
    t=re.sub(r'[\x00-\x08\x0b-\x1f\u00ad]','',t)
    return re.sub(r'\s+',' ',t).strip()

def text(rows):return clean('\n'.join(r['text']for r in rows))
def pos(r):return r['slot'],r['y']

def get_rows(d,mode,name,ms):
    rows=[]
    for pi,p in enumerate(d):
        if pi==0 and(mode!='binary'or name=='DPRF13_001_01.pdf'):continue
        full=name=='rfb2012-p3-prova.pdf'and pi in [2,9]
        for col in ([0]if full else[0,1]):
            left,right=S['bounds'](p,mode,col)
            if full:left,right=43,557
            top=50 if mode=='fgv'else 40 if mode=='binary'else 30
            if mode=='binary':
                if pi==0 and name.startswith('578_PRF_')and '_001_'not in name:top=215
                if pi==0 and name.startswith('440_'):top=198 if col==0 else 175
                if pi==1 and name.startswith('DPRF'):top=168
                if pi==0 and name=='988_CPNUJE_CB5_01.PDF':top=225
            if mode=='cespe_mc':top=145 if pi==1 else 36
            bottom=S['bodybottom'](p,mode)
            if mode=='fgv':bottom=787
            if mode=='cespe_mc':bottom=770
            copyright_global=[box[1]for box,t,_ in S['line_records'](p)if 'TODOS OS DIREITOS RESERVADOS'in t and (left<=box[0]<right or box[2]-box[0]>400)]
            if copyright_global:bottom=min(bottom,min(copyright_global))
            raw=[]
            for box,t,sp in S['line_records'](p):
                if re.fullmatch(r'\d+',t)and max(spn['size']for spn in sp)<8:continue
                if '\\t'in t:continue
                mixed=name=='DPRF13_001_01.pdf'and pi==5 and box[1]<435
                if mixed and col==1:continue
                line_left,line_right=(26,574)if mixed else(left,right)
                if re.fullmatch(r'[–—-]\s*\d+\s*[–—-]',t):continue
                if not t or not(line_left-1<=box[0]<line_right)or not(top<=box[1]<bottom):continue
                if box[2]>line_right+10:continue
                if t.startswith('Nos itens que avaliam conhecimentos específicos'):continue
                if re.search(r'^(?:CONCURSO PÚBLICO DA RECEITA|CEBRASPE[ –]|UnB/CESPE|Concurso Público:|Prova [123] - Gabarito|Tipo 1 [–-]|FGV CONHECIMENTO|Cargo: Policial Rodoviário Federal)',t):continue
                if t.strip() in ['Espaço livre','RASCUNHO','Rascunho','Área para rascunho','A T E N Ç Ã O !','de sua inscrição.','rodoviário federal, conforme o contexto.']:continue
                raw.append({'slot':2*pi+col,'page':pi,'col':col,'x':box[0],'y':box[1],'x1':box[2],'y1':box[3],'text':t,'spans':sp,'left':left,'right':right})
            # Separate justified fragments are one physical reading line.
            raw.sort(key=lambda r:(r['y'],r['x']))
            merged=[]
            for r in raw:
                target=next((l for l in merged[-5:]if abs(l['y']-r['y'])<2),None)
                if target:
                    target['text']=(target['text']+' '+r['text'])if r['x']>=target['x']else(r['text']+' '+target['text']);target['x']=min(target['x'],r['x']);target['x1']=max(target['x1'],r['x1']);target['y1']=max(target['y1'],r['y1']);target['spans']+=r['spans']
                else:merged.append(r.copy())
            # The copyright box and subject headers never belong to an alternative.
            copyright_y=next((r['y']for r in merged if 'TODOS OS DIREITOS RESERVADOS'in r['text']),9999)
            rows.extend(r for r in merged if r['y']<copyright_y)
    return sorted(rows,key=pos)

def is_heading(r):
    t=clean(r['text'])
    if re.match(r'^(?:Texto\b|Text\s*\d|Questions\b|Questões\b|As questões|Leia|Read\b|For questions|O texto a seguir|A partir|Com relação|Julgue)',t,re.I):return False
    return len(t)<110 and not re.search(r'[.!?;:]$',t)and(all(not ch.isalpha()or ch.isupper()for ch in t)or all('Bold'in sp['font']for sp in r['spans']))

def body_rows(rows,m,n=None):
    a=(m['page']*2+m['col'],m['y'])
    b=(n['page']*2+n['col'],n['y'])if n else(a[0]//2*2+2,0)
    return [r for r in rows if a<=pos(r)<b]

def context_boundary(rows,mode,first=False):
    if not rows:return len(rows)
    # Item/alternative continuations are indented; a new command starts at the column margin.
    for j,r in enumerate(rows[1:],1):
        t=clean(r['text'])
        left=(28.3 if r['col']==0 else 303.4)if mode=='binary'else r['left']+2
        if mode!='binary':
            if is_heading(r):return j
            continue
        if mode=='binary'and r['x']>=left+27 and r['y']-rows[j-1]['y1']>9 and len(t)>30:return j
        if (r['x']<left+7 and len(t)>22)or(mode!='binary'and re.match(r'^(?:Texto\b|Questions\b|For questions\b|Leia o texto|As questões)',t,re.I)):
            k=j
            while k>1 and rows[k-1]['slot']==r['slot']and rows[k-1]['x']>=left+24:k-=1
            return k
    return len(rows)

def ranges(t,nextnum):
    t=clean(t)
    patterns=[r'questões?\s*(?:de\s*|n[úu]meros?\s*)?0?(\d{1,3})\s*(?:a|à|até|–|-)\s*0?(\d{1,3})',r'questions?\s*(\d+)\s*(?:through|to|and)\s*(\d+)',r'questões?\s*(\d+)\s*e\s*(\d+)']
    for pat in patterns:
        ms=list(re.finditer(pat,t,re.I))
        if ms:
            a,b=map(int,ms[0].groups())
            if a<=nextnum<=b:return a,b
    return nextnum,nextnum

def split_options(rr,mode,count):
    # An alternative marker requires its actual punctuation, never the article "a".
    pat=r'^\s*\(([A-E])\)\s*'if mode in['fgv','consulplan']else r'^\s*([a-e])\)\s*'if mode=='esaf'else r'^\s*([A-D])\s+'
    candidates=[(j,re.match(pat,r['text']))for j,r in enumerate(rr)]
    candidates=[(j,m)for j,m in candidates if m]
    seq=list('ABCDE'[:count]);matches=None
    for i in range(len(candidates)-count+1):
        group=candidates[i:i+count]
        if mode=='esaf'and len(candidates)==count+1 and [m[1]for _,m in candidates]==list('abccde'):group=candidates[:3]+candidates[4:]
        if [m[1].upper()for _,m in group]==seq:matches=group;break
    if matches is None:return None
    start=matches[0][0];option_rows=[];opts=[];trailing=[]
    for oi,(j,match)in enumerate(matches):
        end=matches[oi+1][0]if oi+1<len(matches)else len(rr)
        segment=[r.copy()for r in rr[j:end]]
        segment[0]['text']=segment[0]['text'][match.end():]
        if oi==count-1:
            cut=context_boundary(segment,mode)
            trailing=segment[cut:];segment=segment[:cut]
        opts.append(text(segment));option_rows.append(segment)
    return {'first_option':rr[start], 'stem':rr[:start],'options':opts,'option_rows':option_rows,'trailing':trailing}

# Explicit shared-passage boundaries checked against each source PDF (page indices are zero-based).
SHARED={
 'rfb2023-1.pdf':[(11,15,4,1,274),(16,18,5,1,298)],
 'rfb2014-p1-prova.pdf':[(31,33,7,0,145),(34,38,7,1,142),(39,40,8,1,36),(51,52,12,0,359),(55,56,13,0,406),(57,58,13,1,377)],
 'rfb2014-p2-prova.pdf':[(14,16,4,0,36),(20,22,5,0,223),(23,26,7,0,36),(29,30,8,0,36)],
 'rfb2012-p1-prova.pdf':[(21,23,7,1,179),(24,26,8,0,82),(27,30,8,1,82),(31,31,9,0,383),(32,33,9,1,82),(35,36,10,1,82),(38,38,11,1,360),(39,40,12,0,121),(43,43,13,0,82)],
 'rfb2012-p2-prova.pdf':[(55,56,14,1,82)],
 'rfb2012-p3-prova.pdf':[(24,25,8,0,82),(27,28,9,0,80)],
}

def shared_specs(name,rr,ms,mode):
    specs=SHARED.get(name,[])[:]
    if name.startswith('tse'):
        for r in rr:
            if re.match(r'Texto\b.*quest',r['text'],re.I):
                # A heading may continue on the following physical line.
                nearby=text([x for x in rr if x['slot']==r['slot']and r['y']<=x['y']<r['y']+35])
                mm=re.search(r'questões?\s*(?:de\s*)?(?:n[.oº°\s]*\s*)?(\d+)\s*(?:a|e|até)\s*(\d+)',nearby,re.I)
                if mm:
                    a,b=map(int,mm.groups());specs.append((a,b,r['page'],r['col'],r['y']-1))
    active={};removed=set();contexts=[]
    for a,b,pi,col,y in specs:
        m=next(x for x in ms if x['number']==a)
        start=(pi*2+col,y);end=(m['page']*2+m['col'],m['y'])
        context=[r for r in rr if start<=pos(r)<end]
        for num in range(a,b+1):active[num]=context
        for r in context:removed.add(id(r))
        contexts.append({'first':a,'last':b,'text':text(context)})
    return active,[r for r in rr if id(r)not in removed],contexts

def extract(c,name):
    d,ms=S['markers_for'](name,c['mode']);rr=get_rows(d,c['mode'],name,ms)
    if name=='rfb2012-p1-prova.pdf':rr=[r for r in rr if r['slot']not in[11,12,13,14]]
    # Marker line numbers are removed without touching numbers inside a sentence.
    segments=[];support_by_number={};contexts=[];active=[];passages={};last_passage=[]
    if c['mode']!='binary':support_by_number,rr,contexts=shared_specs(name,rr,ms,c['mode'])
    first=(ms[0]['page']*2+ms[0]['col'],ms[0]['y'])
    initial=[r for r in rr if pos(r)<first and not is_heading(r)]
    pending=initial
    for i,m in enumerate(ms):
        n=ms[i+1]if i+1<len(ms)else None
        chunk=body_rows(rr,m,n)
        if not chunk:raise ValueError((name,m['number'],'empty'))
        for j,r in enumerate(chunk[:2]):
            chunk[j]=r.copy()
            chunk[j]['text']=re.sub(r'^(?:QUESTÃO\s+)?0?'+str(m['number'])+r'\s*(?:[-–]\s*)?','',r['text'],count=1)
            break
        prefix=[r for r in pending if clean(r['text'])and not is_heading(r)]
        if c['mode']=='binary':
            cut=context_boundary(chunk,'binary');own=chunk[:cut];pending=chunk[cut:]
            while own and(re.fullmatch(r'[A-Za-z]{1,2}|g\\L',own[-1]['text'])or not own[-1]['text'].strip()):own.pop()
            if prefix:
                pt=text(prefix)
                # Named passages can be referenced by several consecutive commands.
                ids=[v for v in re.findall(r'\bTexto\s+([A-Z\d][\w-]*)',pt,re.I)if any(ch.isdigit()for ch in v)]
                if re.match(r'^Texto\b',pt,re.I)and ids:
                    passages[ids[0].lower()]=prefix;last_passage=prefix
                elif len(pt)>450 and not re.match(r'^(?:Com relação|Acerca|A respeito|Considerando as disposições|No que se refere à legislação)',pt,re.I):last_passage=prefix
                referenced=[v for k,v in passages.items()if re.search(r'\b'+re.escape(k)+r'\b',pt,re.I)]
                base=referenced[-1]if referenced else last_passage if re.search(r'\btexto (?:anterior|precedente|apresentado)|\bideias do texto|\bno texto\b',pt,re.I)else []
                active=(base if base and base!=prefix else[])+prefix
                contexts.append({'first':m['number'],'text':text(active),'prefix':pt})
            support_by_number[m['number']]=active[:]
            segments.append({'number':m['number'],'stem':own,'options':['Certo','Errado'],'prefix':prefix,'start':(m['page']*2+m['col'],m['y']),'end':pos(pending[0])if pending else((n['page']*2+n['col'],n['y'])if n else(m['page']*2+2,0))})
        else:
            parsed=split_options(chunk,c['mode'],2 if c['mode']=='consulplan'and 41<=m['number']<=80 else 4 if c['mode']in['cespe_mc','consulplan']else 5)
            manual=EDITS.get(c['slug'],{}).get(str(m['number']),{})
            if parsed is None and manual.get('options'):
                oi=next((j for j,r in enumerate(chunk)if re.match(r'^A(?:\s+(?:[\dPC(V]|C\b)|$)',r['text'])),len(chunk))
                parsed={'stem':chunk[:oi],'options':manual['options'],'trailing':[],'first_option':chunk[min(oi,len(chunk)-1)]}
            if parsed is None:segments.append({'number':m['number'],'error':'options','raw':text(chunk)});pending=[];continue
            pending=parsed['trailing']
            if prefix and name not in SHARED and not name.startswith('tse'):
                a,b=ranges(text(prefix),m['number'])
                if re.search(r'Texto|Questions|questões|Read|For questions|Leia',text(prefix),re.I)or len(text(prefix))>180:
                    for num in range(a,b+1):support_by_number[num]=prefix[:]
                    contexts.append({'first':a,'last':b,'text':text(prefix)})
            segments.append({'number':m['number'],'stem':parsed['stem'],'options':parsed['options'],'prefix':prefix,'start':(m['page']*2+m['col'],m['y']),'end':pos(parsed['first_option'])})
    for seg in segments:
        if 'error'not in seg:seg['support']=support_by_number.get(seg['number'],[])
    return d,segments,contexts


def figure_candidates(d,name):
    figures=[]
    for pi,p in enumerate(d):
        boxes=[]
        for im in p.get_image_info():
            r=fitz.Rect(im['bbox'])
            if r.width>15 and r.height>15 and not(r.width>500 and r.height>700):boxes.append(r)
        for draw in p.get_drawings():
            r=fitz.Rect(draw['rect'])
            if r.width>15 and r.height>15 and r.width<530 and r.height<600:boxes.append(r)
        # Connected vector paths form a single chart/table, rather than separate fragments.
        merged=[]
        for box in sorted(boxes,key=lambda r:-r.get_area()):
            same=[r for r in merged if (r+(-6,-6,6,6)).intersects(box)]
            if same:
                box=box|same[0];merged.remove(same[0])
                for r in same[1:]:box|=r;merged.remove(r)
            merged.append(box)
        for r in merged:
            if r.width<24 or r.height<20 or r.y0<35 or r.y1>790:continue
            label=clean(p.get_text(clip=r))
            if re.search(r'rascunho|espaço livre',label,re.I)and len(label)<80:continue
            col=0 if (name=='rfb2012-p3-prova.pdf'and pi in[2,9])or(name=='DPRF13_001_01.pdf'and pi==5 and r.width>400)else int((r.x0+r.x1)/2>300)
            figures.append({'page':pi,'slot':pi*2+col,'rect':r})
    return figures

def media_for(seg,figures,d,name,c):
    selected=[]
    support=seg.get('support',[]);suptext=text(support)
    for fig in figures:
        slot=fig['slot'];r=fig['rect'];mid=(slot,(r.y0+r.y1)/2)
        own=seg['start']<=mid<seg['end']and(c['mode']!='binary'or re.search(r'figura|gráfico|ilustr',text(seg['stem']),re.I)or len(text(seg['stem']))<15)
        shared=False
        if support:
            start=pos(support[0]);end=(support[-1]['slot'],support[-1]['y1']+12)
            if re.search(r'figura|gráfico',suptext,re.I):
                start=(start[0],40)
            shared=start<=mid<end
        if own or shared:
            # Tables and illustrations stay at the side, with typed statements/options.
            rect=fitz.Rect(max(20,r.x0-2),max(35,r.y0-2),min(d[fig['page']].rect.width-20,r.x1+2),min(780,r.y1+2))
            for box,label,_ in S['line_records'](d[fig['page']]):
                if (r+(-12,-12,12,12)).intersects(fitz.Rect(box))and re.fullmatch(r'(?:[a-zA-Z](?:[0-9₀-₉])?|[0-9.,−+]+|g[/\\]L|m/s²)',label.strip()):rect|=fitz.Rect(box)+(-2,-2,2,2)
            key=str(fig['page'])+'-'+str(round(r.x0))+'-'+str(round(r.y0))
            path=Path('public/provas/nacionais/apoio')/Path(name).stem.lower()/(key+'.png')
            path.parent.mkdir(parents=True,exist_ok=True)
            d[fig['page']].get_pixmap(matrix=fitz.Matrix(2,2),clip=rect,alpha=False).save(path)
            selected.append('/'+str(path.relative_to('public')).replace('\\','/'))
    return json.dumps({'support':list(dict.fromkeys(selected))},ensure_ascii=False)if selected else None

INLINE_START={
 'receita-2023-auditor-manha':{1:'Um texto obedece',2:'O texto acima mostra',3:'Sobre a organização linguística',4:'Sobre a construção desse parágrafo',5:'Observe os dois primeiros períodos',7:'Assinale a opção que mostra'},
}

def polish(q,slug):
    # Separate reading passages embedded within an item from its actual command.
    anchor=INLINE_START.get(slug,{}).get(q['number'])
    if anchor and anchor in q['text']:
        at=q['text'].index(anchor);q['support']=q['text'][:at].strip();q['text']=q['text'][at:]
    trailing_reading=(slug=='receita-2014-auditor-p1'and q['number']in[41,42,43,44,47,49,50,53,54,60])or(slug=='receita-2012-auditor-p1'and q['number']in[34,45,46,47])
    if trailing_reading:
        match=re.search(r'\.\s+(?=[A-ZÀ-Ý])',q['text'])
        if match:
            at=match.end();q['support']=q['text'][at:];q['text']=q['text'][:at].strip()
    if slug=='receita-2012-auditor-p1'and q['number']==42:
        at=q['text'].rfind('Assinale a letra');q['support']=q['text'][:at].strip();q['text']=q['text'][at:]
    if slug=='receita-2014-auditor-p1'and q['number']==45:
        m=re.search(r'\(\s*\)',q['text'])
        if m:q['support']=q['text'][m.start():];q['text']=q['text'][:m.start()].strip()
    if slug=='tse-2007-tecnico-administrativo'and q['number']in[3,4,5,6]:
        at=q['text'].rfind('Em relação ao texto')
        if at>0:q['support']=q['text'][:at].strip();q['text']=q['text'][at:]
    edits=EDITS.get(slug,{}).get(str(q['number']),{})
    for k in['text','support','options']:
        if k in edits:q[k]=edits[k]
    for a,b in edits.get('replace',[]):
        q['text']=q['text'].replace(a,b)
        q['options']=[o.replace(a,b)for o in q['options']]
    # The 2012 booklet prints the C marker twice; both paragraphs belong to that slot.
    if slug=='receita-2012-auditor-p2'and q['number']==40:q['options'][2]=q['options'][2].replace(' c) ','\n\n')
    for k in['text','support']:
        if q.get(k):q[k]=re.sub(r'\b(definese|podese|seguese|referese)\b',lambda m:{'definese':'define-se','podese':'pode-se','seguese':'segue-se','referese':'refere-se'}[m[0]],q[k])
    return q

def run():
    output=[];audit=[]
    for c in S['CONFIG']:
        qs=[]
        for name,_,_ in c['parts']:
            d,segments,contexts=extract(c,name)
            figures=figure_candidates(d,name)
            key,fragment=next((k,f)for file,k,f in c['parts']if file==name)
            answers=S['tse2012_keys']()if c['mode']=='consulplan'else S['esaf2012_keys'](fragment)if name.startswith('rfb2012')else S['key_grid'](key,fragment)
            audit.append({'slug':c['slug'],'file':name,'contexts':contexts,'errors':[x for x in segments if 'error'in x]})
            for seg in segments:
                if 'error'in seg:continue
                a=answers[seg['number']];annulled=a in ['X','*','#','NULA','NULO']
                answer='A/B/C/D/E'if annulled else('A'if a=='C'else'B')if c['mode']=='binary'else a
                explanation='Questão anulada no gabarito definitivo.'if annulled else 'Gabarito definitivo da banca: '+('Certo'if a=='C'else'Errado')if c['mode']=='binary'else 'Gabarito definitivo da banca: '+a+'.'
                old={'number':seg['number'],'subject':S['subject'](c,seg['number']),'answer':answer,'explanation':explanation}
                q={**old,'text':text(seg['stem']),'support':text(seg['support'])or None,'options':seg['options'],'support_image':media_for(seg,figures,d,name,c)}
                q=polish(q,c['slug'])
                qs.append(q)
        output.append({'exam':{k:c[k]for k in ['slug','source','year','title','notes','count']},'questions':sorted(qs,key=lambda q:q['number'])})
        print(c['slug'],len(qs),'support',sum(bool(q['support'])for q in qs))
    assert all(len(b['questions'])==b['exam']['count']for b in output)
    assert all(q['text']and all(q['options'])for b in output for q in b['questions'])
    (D/'structured-draft.json').write_text(json.dumps(output,ensure_ascii=False,indent=2),encoding='utf8')
    (D/'structured-audit.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2),encoding='utf8')
    if '--write'in sys.argv:
        statements=[];sql=S['sql']
        for b in output:
            e=b['exam']
            statements.append('insert into public.exams (slug,title,source,year) values ('+','.join(sql(e[k])for k in['slug','title','source','year'])+') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;')
            for q in b['questions']:
                fields=['number','subject','text','support','support_image','options','answer','explanation']
                vals=[str(q[k])if k=='number'else sql(json.dumps(q[k],ensure_ascii=False))+'::jsonb'if k=='options'else sql(q[k])for k in fields]
                statements.append('insert into public.questions (exam_id,'+','.join(fields)+') select id,'+','.join(vals)+' from public.exams where slug='+sql(e['slug'])+' on conflict(exam_id,number) do update set '+','.join(k+'=excluded.'+k for k in fields[1:])+';')
        (D/'questions.json').write_text(json.dumps(output,ensure_ascii=False),encoding='utf8')
        (D/'statements.json').write_text(json.dumps(statements,ensure_ascii=False),encoding='utf8')
        Path('supabase/seed-national-exams.sql').write_text('-- Textos, alternativas e apoios revisados nos cadernos originais.\nbegin;\n'+'\n'.join(statements)+'\ncommit;\n',encoding='utf8')
        print('WRITE',sum(len(b['questions'])for b in output))
if __name__=='__main__':run()
