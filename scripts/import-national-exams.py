"""Import PRF, Receita Federal and TSE: last three entrance selections.
Original PDF regions preserve figures, accounting tables and mathematical notation.
PRF 2019 refers to the 2018 notice; TSE 2012 is not an unified selection.
"""
import json,re,sys,unicodedata
from pathlib import Path
import fitz
sys.stdout.reconfigure(encoding='utf8')
D=Path('pdf-extracts/national');URLS=json.loads((D/'urls.json').read_text(encoding='utf8'))

def clean(t):
    t=unicodedata.normalize('NFKC',t)
    t=re.sub(r'(?<=[a-zà-ÿ])[-\u00ad\x02]\s*\n(?=[a-zà-ÿ])','',t)
    t=re.sub(r'[\x00-\x08\x0b-\x1f\u00ad]','',t)
    return re.sub(r'\s+',' ',t).strip()

def doc(name):return fitz.open(D/name)
def line_records(p):
    return [(l['bbox'],''.join(s['text']for s in l['spans']).strip(),l['spans'])for b in p.get_text('dict')['blocks']for l in b.get('lines',[])]

def key_grid(name,fragment=None):
    t='\n'.join(p.get_text(sort=True)for p in doc(name))
    if fragment:
        start=t.index(fragment);t=t[start:]
        # Stop before the next booklet/type section.
        stops=[m.start()for m in re.finditer(r'(?:TIPO 2|TIPO 02|Prova de Gabarito 2)',t)]
        if stops:t=t[:min(stops)]
    keys={};numbers=[]
    for line in t.splitlines():
        tokens=line.upper().split()
        if tokens and tokens[0]in['QUESTÃO','ITEM','GABARITO']:tokens=tokens[1:]
        if tokens and all(v.isdigit()for v in tokens):numbers=[int(v)for v in tokens]
        elif numbers and tokens and all(v in ['A','B','C','D','E','X','*','NULA','NULO','0']for v in tokens):
            assert len(numbers)==len(tokens),(name,numbers,tokens)
            for n,a in zip(numbers,tokens):
                if n and (n not in keys or name=='rfb2014-p1-gabarito.pdf'):keys[n]=a
            numbers=[]
    return keys

def tse2012_keys():
    d=doc('tse2012-gabarito.pdf');t=d[44].get_text(sort=True)
    assert 'TÉCNICO JUDICIÁRIO'in t and 'ADMINISTRATIVA'in t and 'TIPO 01'in t
    return{int(n):a for n,a in re.findall(r'\b(\d{2,3})\s*-?\s*([ABCD#])(?=\s|$)',t)}

def esaf2012_keys(part):
    d=doc('rfb2012-gabarito.pdf');t='\n'.join(p.get_text(sort=True)for p in d)
    # Text is arranged as numbered/answer pairs in independent type columns.
    if part==1:
        a='C C B B C A E D A B A NULA D B A E D A D E'.split()
        a+='E A C A B A D B A E'.split()
        a+='B A B A D C B E D E A E B E D E D C C C'.split()
        a+='B E C A D E B B D A B A A E D C D B E C B D A E D E C E B A'.split()
    elif part==2:
        a='A E B D A E D NULA NULA C B A D D C C NULA A E D C C E C B E D C C B C D D A B C D A D E B B A D E A E E A E D A B E C C E E B A'.split()
    else:
        a='A B D E A C C B D B A C E C B D A E C D A D E B E B B D A C A C D E C B E B E C NULA B A D E E C D A C D B E A D B C D A B'.split()
    return dict(enumerate(a,1))

CONFIG=[]
def add(slug,source,year,label,parts,mode,count,notes=''):
    CONFIG.append({'slug':slug,'source':source,'year':str(year),'title':label,'parts':parts,'mode':mode,'count':count,'notes':notes})
# The common 112 PRF 2021 items are reused with each language's eight items.
for language,code in [('ingles','ING_01'),('espanhol','ESP_02')]:
    add('prf-2021-'+language,'prf',2021,'PRF 2021 — Policial Rodoviário Federal — '+('Inglês'if language=='ingles'else'Espanhol'),[(f'578_PRF_{code}.PDF',f'GAB_DEFINITIVO_578_PRF_{code}.PDF',None),( '578_PRF_001_01.PDF','GAB_DEFINITIVO_578_PRF_001_01.PDF',None)],'binary',120)
add('prf-2019','prf',2019,'PRF 2019 — Policial Rodoviário Federal — Edital 2018',[('440_PRF_001_00_PAG_9.PDF','GAB_DEFINITIVO_MATRIZ_440_PRF_001_00_PAG_9.PDF',None)],'binary',120)
add('prf-2013','prf',2013,'PRF 2013 — Policial Rodoviário Federal',[('DPRF13_001_01.pdf','Gab_definitivo_DPRF13_001_01.PDF',None)],'binary',120)
for i,name,frag in [(1,'Manhã','TIPO 1 (Manhã)'),(2,'Tarde','TIPO 1 (Tarde)')]:
    add('receita-2023-auditor-'+('manha'if i==1 else'tarde'),'receita',2023,'Receita Federal 2023 — Auditor-Fiscal — '+name,[(f'rfb2023-{i}.pdf','rfb2023-auditor-key.pdf',frag)],'fgv',80 if i==1 else 60)
for part,label in [(1,'Conhecimentos Gerais'),(2,'Conhecimentos Específicos')]:
    add(f'receita-2014-auditor-p{part}','receita',2014,'Receita Federal 2014 — Auditor-Fiscal — '+label,[(f'rfb2014-p{part}-prova.pdf',f'rfb2014-p{part}-gabarito.pdf',None)],'esaf',70)
for part,label,count in [(1,'Conhecimentos Gerais — Inglês',80),(2,'Conhecimentos Específicos I',60),(3,'Conhecimentos Específicos II',60)]:
    add(f'receita-2012-auditor-p{part}','receita',2012,'Receita Federal 2012 — Auditor-Fiscal — '+label,[(f'rfb2012-p{part}-prova.pdf','rfb2012-gabarito.pdf',part)],'esaf',count)
add('tse-2024-tecnico-administrativo','tse',2024,'Justiça Eleitoral 2024 — TSE Unificado — Técnico Judiciário — Área Administrativa',[('988_CPNUJE_CB5_01.PDF','GAB_DEFINITIVO_988_CPNUJE_CB5_01.PDF',None),('988_CPNUJE_019_01.PDF','GAB_DEFINITIVO_988_CPNUJE_019_01.PDF',None)],'binary',120)
add('tse-2012-tecnico-administrativo','tse',2012,'TSE 2012 — Técnico Judiciário — Área Administrativa',[('tse2012-prova.pdf','tse2012-gabarito.pdf',None)],'consulplan',120,'Seleção própria do TSE, edital de 2011; prova aplicada em 2012. Não é o concurso unificado de 2024.')
add('tse-2007-tecnico-administrativo','tse',2007,'TSE 2007 — Técnico Judiciário — Área Administrativa — Edital 2006',[('tse2007-prova.pdf','tse2007-gabarito.pdf',None)],'cespe_mc',80)

def markers_for(name,mode):
    d=doc(name);markers=[]
    for pi,p in enumerate(d):
        if (mode in ['fgv','esaf','cespe_mc']or name=='DPRF13_001_01.pdf')and pi==0:continue
        for box,t,ss in line_records(p):
            x,y,x1,y1=box;m=None
            if mode=='binary':
                first=ss[0];v=first['text'].strip()
                if re.fullmatch(r'\d{1,3}',v)and 7.8<=first['size']<=9.1 and any(abs(x-left)<2 for left in[28.3,303.4,304.4]):m=int(v)
            elif mode=='fgv':
                if re.fullmatch(r'\d{1,3}',t)and any(abs(x-left)<1 for left in[42.6,311.69])and ss[0]['size']>=8.8 and 'Bold'in ss[0]['font']:m=int(t)
            elif mode=='esaf':
                mm=re.match(r'^(\d{1,3})\s*[-–]',t)
                if mm and any(abs(x-left)<2 for left in[45.4,303.6]):m=int(mm[1])
            elif mode=='consulplan':
                if re.fullmatch(r'\d{2,3}',t)and ss[0]['size']>11 and any(abs(x-left)<1 for left in[37.8,311.6]):m=int(t)
            elif mode=='cespe_mc':
                mm=re.fullmatch(r'QUESTÃO\s+(\d+)',t)
                if mm:m=int(mm[1])
            if m is not None:markers.append({'number':m,'page':pi,'col':int(x>(270 if mode=='cespe_mc'else 300)),'y':y-2,'x':x,'bottom':y1})
    markers.sort(key=lambda m:(m['page'],m['col'],m['y']))
    if name=='rfb2012-p1-prova.pdf':
        # Both language options share 21–30; this booklet selects English.
        last={m['number']:m for m in markers};markers=[m for m in markers if m is last[m['number']]]
    return d,markers

if '--inspect'in sys.argv:
    for c in CONFIG:
        for name,key,fragment in c['parts']:
            d,ms=markers_for(name,c['mode']);print(c['slug'],name,len(ms),min(m['number']for m in ms),max(m['number']for m in ms))
    print('ESAF2012 KEY',esaf2012_keys(1))
    sys.exit(0)


def bounds(p,mode,col):
    if mode=='cespe_mc':
        if p.number==13:return (34,322)if col==0 else(330,560)
        if p.number==14:return (34,265)if col==0 else(274,560)
        if p.number==15:return (34,292)if col==0 else(300,560)
        return (34,301)if col==0 else(303,574)
    if mode=='fgv':return (40,289)if col==0 else(309,560)
    if mode=='esaf':return (43,298)if col==0 else(301,557)
    if mode=='consulplan':return (35,300)if col==0 else(309,563)
    return (26,300)if col==0 else(301,574)

def bodybottom(p,mode):
    if mode=='esaf':return 704 if p.rect.height<800 else 750
    return min(p.rect.height-25,817)if mode=='binary'else p.rect.height-45

def regions(d,ms,i,mode,name):
    m=ms[i];n=ms[i+1]if i+1<len(ms)else None
    # English is the selected variant; Spanish pages must never enter an interval.
    skip={11,12,13,14}if name=='rfb2012-p1-prova.pdf'else set()
    start=m['page']*2+m['col'];end=(n['page']*2+n['col'])if n else start
    if name=='rfb2012-p1-prova.pdf'and m['number']==20:end=start;n=None
    out=[]
    for slot in range(start,end+1):
        pi,col=divmod(slot,2)
        if slot in skip:continue
        p=d[pi];left,right=bounds(p,mode,col)
        y0=m['y']if slot==start else 32
        y1=n['y']-2 if n and slot==end else bodybottom(p,mode)
        if y1>y0+5:
            rect=fitz.Rect(left,y0,right,y1)
            if clean(p.get_text(clip=rect)).lower()not in ['','rascunho','espaço livre']:out.append((pi,rect))
    return out

def render(p,rect,path,scale=2):
    path.parent.mkdir(parents=True,exist_ok=True)
    if not path.exists():p.get_pixmap(matrix=fitz.Matrix(scale,scale),clip=rect,alpha=False).save(path,jpg_quality=88)
    return '/'+str(path.relative_to('public')).replace('\\','/')

def sql(v):return "'"+str(v).replace("'","''")+"'"if v is not None else 'null'

def subject(c,n):
    if c['source']=='receita':return 'Conhecimentos Gerais'if '-p1'in c['slug']or'manha'in c['slug']else'Conhecimentos Específicos'
    if c['source']=='tse':return ('Conhecimentos Básicos'if n<=50 else'Conhecimentos Específicos')if c['year']=='2024'else'Prova objetiva'
    return 'Prova objetiva'

# The importer uses structured text and separate shared support.
if __name__=='__main__':
    import runpy
    sys.argv.append('--write')
    runpy.run_path('scripts/national_structured.py',run_name='__main__')
