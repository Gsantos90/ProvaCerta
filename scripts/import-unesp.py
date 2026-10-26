"""Rebuild UNESP 2024–2026 from Vunesp booklets publicly mirrored by Objetivo.

PyMuPDF required. --inspect prints layout without generating assets or SQL.
"""
import json
import re
import sys
import urllib.request
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf8')
D=Path('pdf-extracts/unesp');D.mkdir(parents=True,exist_ok=True)
PUBLIC=Path('public/provas/unesp');PUBLIC.mkdir(parents=True,exist_ok=True)
BASE='https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/'
CODES={'2026':'VNSP2504','2025':'VNSP2404','2024':'VNSP2303'}
INSPECT='--inspect'in sys.argv

def clean(text):
    text=re.sub(r'(?<=[a-zÀ-ÿ])[-\u00ad\x02]\s*\n(?=[a-zÀ-ÿ])','',text)
    text=re.sub(r'[\x00-\x08\x0b-\x1f\u00ad]','',text)
    return re.sub(r'\s+',' ',text).strip()

def pos(m):return(m['page']*2+m['col'],m['y'])

def download(url,path):
    if not path.exists():
        data=urllib.request.urlopen(url,timeout=25).read();assert data.startswith(b'%PDF'),url;path.write_bytes(data)
    return fitz.open(path)

def layout(doc):
    markers=[];contexts=[]
    for pi,page in enumerate(doc):
        for b in page.get_text('dict')['blocks']:
            for line in b.get('lines',[]):
                text=clean(''.join(s['text']for s in line['spans']))
                m=re.fullmatch(r'QUESTÃO\s*(\d+)',text)
                if m:markers.append({'number':int(m[1]),'page':pi,'col':int(line['bbox'][0]>295),'y':line['bbox'][1]-4})
        for b in page.get_text('blocks'):
            t=clean(b[4]);m=re.search(r'questões\s+(?:de\s+)?(\d{1,2})\s+(?:a|e)\s+(\d{1,2})\b',t,re.I)
            if m and any(w in t.lower()for w in ['responder','leia','considere','comum']):
                first,last=map(int,m.groups())
                if 1<=first<last<=90:contexts.append({'first':first,'last':last,'page':pi,'col':int(b[0]>295),'y':b[1]-2})
    markers.sort(key=pos)
    assert [m['number']for m in markers]==list(range(1,91)),[m['number']for m in markers]
    for c in contexts:assert pos(c)<pos(markers[c['first']-1]),c
    events=markers+contexts;wide={};floors={}
    for m in markers:
        if m['col']or any(e['page']==m['page']and e['col']==1 and abs(e['y']-m['y'])<5 for e in events):continue
        stop=min([e['y']for e in events if e['page']==m['page']and e['y']>m['y']+8]+[805])
        page=doc[m['page']]
        crossing=[line['bbox']for b in page.get_text('dict')['blocks']for line in b.get('lines',[])if m['y']<=line['bbox'][1]<stop and line['bbox'][0]<100 and line['bbox'][2]>400]
        crossing += [im['bbox']for im in page.get_image_info()if m['y']<=im['bbox'][1]<stop and im['bbox'][0]<250 and im['bbox'][2]>350]
        if crossing:
            wide[m['number']]={'page':m['page'],'box':[28,m['y'],568,stop-4]}
            if m['y']<40:floors[m['page']]=stop
    return markers,contexts,wide,floors

def rectangles(start,finish,floors,markers,merge=False):
    rects=[]
    for slot in range(pos(start)[0],pos(finish)[0]+1):
        pi,col=divmod(slot,2);top=start['y']if slot==pos(start)[0]else 25
        if col==1:top=max(top,floors.get(pi,25))
        bottom=finish['y']-4 if slot==pos(finish)[0]else 805
        if bottom-top>4:rects.append((pi,fitz.Rect(28 if col==0 else 302,top,294 if col==0 else 568,bottom)))
    if merge:
        for pi in sorted(set(p for p,b in rects)):
            same=[b for p,b in rects if p==pi]
            if len(same)==2 and not any(m['page']==pi for m in markers):
                rects=[(p,b)for p,b in rects if p!=pi]+[(pi,fitz.Rect(28,min(b.y0 for b in same),568,max(b.y1 for b in same)))]
        rects.sort(key=lambda item:(item[0],item[1].x0))
    return rects

banks=[];metadata={};reference={};sources={}
for year in ['2026','2025','2024']:
    urls={k:BASE+f'{year}/1fase/UNESP{year}_1fase_{k}.pdf'for k in ['prova','gabarito']}
    sources[year]={'process':'https://www.vunesp.com.br/'+CODES[year],**urls}
    doc=download(urls['prova'],D/(year+'-prova.pdf'));keydoc=download(urls['gabarito'],D/(year+'-gabarito.pdf'))
    assert CODES[year]in ''.join(p.get_text()for p in doc),year
    key_text='\n'.join(p.get_text(sort=True)for p in keydoc)
    assert CODES[year]in key_text and re.search(r'Versão\s+1',key_text,re.I),(year,key_text)
    keys={int(n):k for n,k in re.findall(r'\b(\d{1,2})\s*-\s*([A-E*X])\b',key_text)}
    assert sorted(keys)==list(range(1,91)),(year,len(keys))
    markers,contexts,wide,floors=layout(doc)
    print(year,'90 itens; contextos:',[(c['first'],c['last'])for c in contexts],'largura total:',list(wide))
    if INSPECT:continue
    assets=Path('public/unesp-'+year);assets.mkdir(exist_ok=True)
    shared={};pages={};questions=[]
    for c in contexts:
        paths=[];texts=[];first=markers[c['first']-1]
        for pi,box in rectangles(c,first,floors,markers,merge=True):
            name=f'contexto-{c["first"]}-{c["last"]}-{len(paths)+1}.png';doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box,alpha=False).save(assets/name)
            paths.append('/unesp-'+year+'/'+name);texts.append(doc[pi].get_text(clip=box,sort=True))
        assert paths,c
        for n in range(c['first'],c['last']+1):shared[n]={'images':paths,'text':clean(' '.join(texts))}
    table=None
    for pi,page in enumerate(doc):
        if pi>markers[-1]['page']and 'PERIÓDICA'in page.get_text().upper():
            name='tabela-periodica.png';page.get_pixmap(matrix=fitz.Matrix(2,2),clip=fitz.Rect(25,25,570,805),alpha=False).save(assets/name);table='/unesp-'+year+'/'+name;break
    for i,m in enumerate(markers):
        n=m['number'];next_marker=markers[i+1]if i+1<len(markers)else{'page':m['page'],'col':1,'y':805}
        cuts=[c for c in contexts if pos(m)<pos(c)<pos(next_marker)]
        finish=min(cuts,key=pos)if cuts else next_marker
        regions=[(wide[n]['page'],fitz.Rect(wide[n]['box']))]if n in wide else rectangles(m,finish,floors,markers)
        paths=[];texts=[];audit=[]
        for pi,box in regions:
            raw=doc[pi].get_text(clip=box,sort=True).strip()
            if raw.upper()in['RASCUNHO','RESERVADO','']:continue
            name=f'q{n:02d}-{len(paths)+1}.png';doc[pi].get_pixmap(matrix=fitz.Matrix(2.5,2.5),clip=box,alpha=False).save(assets/name)
            paths.append('/unesp-'+year+'/'+name);texts.append(raw);audit.append({'page':pi+1,'box':list(box)})
        raw=re.sub(r'^QUESTÃO\s*\d+\s*','','\n'.join(texts));matches=list(re.finditer(r'(?m)^\s*\(([A-E])\)\s*',raw))
        if len(matches)==5 and[m[1]for m in matches]==list('ABCDE'):
            text=clean(raw[:matches[0].start()]);options=[clean(raw[m.end():matches[j+1].start()if j<4 else len(raw)])for j,m in enumerate(matches)]
        else:text=clean(raw);options=[f'Alternativa {k}, conforme o caderno original.'for k in 'ABCDE']
        context=shared.get(n,{});support=list(context.get('images',[]))
        if table and n>=61:support.append(table)
        options=[value or f'Alternativa {chr(65+i)}, conforme o caderno original.' for i,value in enumerate(options)]
        assert paths and text and all(options),(year,n)
        row={'number':n,'subject':'Conhecimentos Gerais','text':clean(context.get('text','')+' '+text),'support':None,'support_image':json.dumps({'original':paths,'support':support},ensure_ascii=False),'options':options,'answer':'A/B/C/D/E'if keys[n]in'X*'else keys[n],'explanation':None,'regions':audit}
        questions.append(row);pages[n]=m['page']+1
    slug='unesp-'+year+'-fase1';banks.append({'slug':slug,'year':year,'title':'Unesp '+year+' · 1ª fase · Versão 1','questions':questions})
    metadata[slug]={'url':urls['prova'],'processUrl':sources[year]['process'],'mirror':urls['prova'],'pages':pages}
    reference[year]=[keys[n]for n in range(1,91)]
    (D/(year+'-questions.json')).write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
    for name in ['prova','gabarito']:(PUBLIC/(year+('-fase1.pdf'if name=='prova'else'-gabarito.pdf'))).write_bytes((D/(year+'-'+name+'.pdf')).read_bytes())

if INSPECT:sys.exit(0)
def lit(v):return'null'if v is None else"'"+str(v).replace("'","''")+"'"
sql=['-- Unesp/Vunesp 2026, 2025, 2024: versão 1. Cópias públicas dos cadernos da banca.','-- Apenas dados: preserva IDs, schema, RLS e demais provas.','begin;']
for exam in banks:
    sql.append('insert into public.exams(slug,title,source,year) values ('+','.join(lit(v)for v in[exam['slug'],exam['title'],'unesp',exam['year']])+') on conflict(slug) do update set title=excluded.title;')
    for q in exam['questions']:
        vals=[str(q['number'])]+[lit(q[k])for k in['subject','text','support','support_image']]+[lit(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',lit(q['answer']),'null']
        sql.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(vals)+' from public.exams where slug='+lit(exam['slug'])+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer;')
sql.append('commit;')
Path('supabase/seed-unesp-2024-2026.sql').write_text('\n'.join(sql)+'\n',encoding='utf8')
Path('src/lib/unespSources.js').write_text('// Generated by scripts/import-unesp.py.\nexport default '+json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
Path('scripts/fixtures/unesp-keys.json').write_text(json.dumps(reference,indent=2)+'\n',encoding='utf8')
(D/'sources.json').write_text(json.dumps(sources,indent=2)+'\n',encoding='utf8')
