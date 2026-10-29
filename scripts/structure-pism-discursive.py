"""Extract native discursive questions, keeping only illustrations as images."""
import json
import re
import sys
import unicodedata
from pathlib import Path

import pdfplumber
import pypdfium2 as pdfium

sys.stdout.reconfigure(encoding='utf-8')
ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'public/pism-discursivas'
DATA = ROOT / 'pdf-extracts/pism-discursivas'
DATA.mkdir(exist_ok=True)
catalog = json.loads((OUT/'catalog.json').read_text(encoding='utf-8'))
use_cache = '--cached' in sys.argv
sys.argv = [arg for arg in sys.argv if arg != '--cached']

def flat(s):
    return ''.join(c for c in unicodedata.normalize('NFD',s) if not unicodedata.combining(c)).lower()

def clean(s):
    s = s.replace('\ufffe','').replace('ı','i').replace('\x1c','fi').replace('\x1d','fl')
    for mark,comb in [('¸','\u0327'),('´','\u0301'),('`','\u0300'),('ˆ','\u0302'),('˜','\u0303'),('¨','\u0308')]:
        s = re.sub(re.escape(mark)+r'\s*([a-zA-Z])',lambda m:unicodedata.normalize('NFC',m[1]+comb),s)
    return unicodedata.normalize('NFC',s).replace('(cid:136)','•').replace('(cid:176)','°')

def repaired(chars):
    chars = [dict(c) for c in chars]
    removed = set()
    for i,c in enumerate(chars):
        accents = {'¸':'\u0327','´':'\u0301','`':'\u0300','ˆ':'\u0302','˜':'\u0303','¨':'\u0308'}
        if c['text'] not in accents: continue
        candidates = [(j,b) for j,b in enumerate(chars) if b['text'] in ('cC' if c['text']=='¸' else 'aAeEiIoOuUı') and abs(b['top']-c['top'])<4 and b['x0']-1<=(c['x0']+c['x1'])/2<=b['x1']+1]
        if candidates:
            j,b=min(candidates,key=lambda jb:abs((jb[1]['x0']+jb[1]['x1'])/2-(c['x0']+c['x1'])/2))
            b['text']=unicodedata.normalize('NFC',b['text'].replace('ı','i')+accents[c['text']]);removed.add(i)
    return [c for i,c in enumerate(chars) if i not in removed]

def subject_name(s):
    t = re.sub('[^a-z]','',flat(s)).replace('literaturas','literatura')
    for name in ('linguaportuguesa','portugues','literatura','biologia','fisica','historia','geografia','matematica','quimica','sociologia','filosofia'):
        if t in (name, name+'discursivas',name+'dissertativas'):
            return 'linguaportuguesa' if name=='portugues' else name
    return None

def subject_key(s): return re.sub('[^a-z]','',flat(s))

def prose(lines, preserve=False):
    text_lines=[l for l in lines if l['kind']=='text' and l['text']]
    paragraphs=[]
    previous=None
    for line in text_lines:
        t=line['text']
        separate=(preserve or previous is None or re.match(r'^(?:\(?[A-Ha-h]\)|TEXTO\b|Fonte:|Disponível em:)',t)
                  or (line['page']==previous['page'] and line['column']==previous['column'] and line['top']-previous['bottom']>9))
        if separate:paragraphs.append(t)
        elif paragraphs[-1].endswith('-') and t[:1].islower():paragraphs[-1]=paragraphs[-1][:-1]+t
        else:paragraphs[-1]+=' '+t
        previous=line
    return ('\n' if preserve else '\n\n').join(paragraphs).strip()

question_marker = re.compile(r'^(?:quest[aã]o\s*)?(\d{1,2})\s*(?:[).:\-–])\s*(.*)$',re.I)
results = {}
report = []
for key,exam in catalog.items():
    if len(sys.argv)>1 and key not in sys.argv[1:]: continue
    year,day,module,area = exam['year'],exam['day'],exam['module'],exam['area']
    if module=='I': source=ROOT/f'pdf-extracts/pism-i-fontes/{year}-{day}.pdf'
    elif module=='II' and year>2024: source=ROOT/f'pdf-extracts/pism-ii-{year}/dia-{day}.pdf'
    else: source=ROOT/f'pdf-extracts/pism-expansao/pism-{module.lower()}-{year}-dia-{day}-{area}.pdf'
    doc=pdfium.PdfDocument(source)
    lines=[]
    cache_path=DATA/f'{key}-lines.json'
    if use_cache and cache_path.exists():
        lines=json.loads(cache_path.read_text(encoding='utf-8'))
    else:
        with pdfplumber.open(source) as pdf:
            for pno in range(exam['sections'][0]['page'],len(pdf.pages)+1):
                p=pdf.pages[pno-1].dedupe_chars(tolerance=1,extra_attrs=('fontname','size'))
                p._objects['char']=repaired(p.chars)
                columns=[(28,65,p.width/2,p.height-35),(p.width/2,65,p.width-25,p.height-35)] if year>2024 else [(25,65,p.width-25,p.height-35)]
                for col,bounds in enumerate(columns):
                    extracted=p.crop(bounds).extract_text_lines(x_tolerance=2,y_tolerance=3)
                    events=[]
                    for l in extracted:
                        raw=doc[pno-1].get_textpage().get_text_bounded(l['x0']-.5,p.height-l['bottom']-.3,l['x1']+.5,p.height-l['top']+.3) if key=='pism-ii-2025-dia-2-comum' else l['text']
                        t=clean(raw).replace('\r','').replace('\n',' ').strip()
                        if re.match(r'^(?:pagina\s+\d|pism\s+20|pro.reitoria|coordenacao)',flat(t)): continue
                        events.append(dict(kind='text',text=t,top=l['top'],bottom=l['bottom'],x0=l['x0'],x1=l['x1'],page=pno,column=col))
                    # Raster illustrations and vector diagrams, excluding heading rules.
                    shapes=[]
                    for im in p.images:
                        if im['x1']-im['x0']>12 and im['bottom']-im['top']>0 and bounds[0]<=(im['x0']+im['x1'])/2<bounds[2] and im['top']>65 and im['bottom']<p.height-34:
                            shapes.append((im['x0'],im['top'],im['x1'],im['bottom']))
                    for shape in p.curves+p.rects:
                        if shape['x1']-shape['x0']>12 and shape['bottom']-shape['top']>12 and bounds[0]<=(shape['x0']+shape['x1'])/2<bounds[2] and shape['top']>65 and shape['bottom']<p.height-34:
                            shapes.append((shape['x0'],shape['top'],shape['x1'],shape['bottom']))
                    groups=[]
                    for b in sorted(shapes,key=lambda b:b[1]):
                        matches=[g for g in groups if b[1]<=g[3]+12 and b[3]>=g[1]-12]
                        if matches:
                            g=matches[0];g[:]=[min(g[0],b[0]),min(g[1],b[1]),max(g[2],b[2]),max(g[3],b[3])]
                        else: groups.append(list(b))
                    for j,b in enumerate(groups):
                        b=[max(bounds[0],b[0]-4),max(65,b[1]-4),min(bounds[2],b[2]+4),min(p.height-35,b[3]+4)]
                        if b[3]-b[1]<24 or any(subject_name(l.get('text','')) and b[1]<=l['top']<=b[3] for l in events):continue
                        name=f'apoio-{pno}-{col}-{j}.png'
                        folder=OUT/key;folder.mkdir(exist_ok=True)
                        image=doc[pno-1].render(scale=2.5).to_pil().crop(tuple(round(v*2.5) for v in b)).convert('RGB')
                        image.save(folder/name)
                        # Labels inside a diagram are carried by the figure itself.
                        events.append(dict(kind='image',src=f'/pism-discursivas/{key}/{name}',top=b[1],bottom=b[3],page=pno,column=col,alt=f'Figura de apoio da prova PISM {module} {year}, página {pno}'))
                    lines+=sorted(events,key=lambda l:l['top'])

    # An outdented question number can sit just left of the gutter (2025 Humanas Q4).
    if year>2024:
        for line in lines:
            if line['kind']=='text' and re.match(r'^\d+\)$',line['text']) and line['column']==0 and line['x0']>280:
                line['column']=1
        lines.sort(key=lambda l:(l['page'],l['column'],l['top']))
    for line in lines:
        if line['kind']!='text':continue
        line['text']=clean(line['text'])
        if key=='pism-2023-2-comum' and '(cid:' in line['text']:line['text']='Considere g = 10 m/s².'
        if year==2024 and module=='III' and day==2 and '(cid:' in line['text']:
            line['text']='Considere g = 10 m/s².' if line['page']==15 else '2 N₂O₅(g) ⇌ 4 NO₂(g) + O₂(g)'
        if key=='pism-2025-1-comum':line['text']=re.sub(r'^\(cid:\d+\)\s*','',line['text'])
    lines=[line for line in lines if line['kind']!='text' or not re.match(r'^\d+\s+de\s+\d+$',line['text'])]
    (DATA/f'{key}-lines.json').write_text(json.dumps(lines,ensure_ascii=False,indent=2),encoding='utf-8')
    if key=='pism-2025-1-comum':
        lines=[l for l in lines if not (l['page']==15 and l['column']==0 and l['kind']=='text' and 263<=l['top']<=427)]
        lines.append(dict(kind='table',page=15,column=0,top=263,bottom=427,
                          headers=['Departamento','2019','2022'],rows=[
                              ['Serviço ao consumidor','60%','73%'],['Administração de IA','47%','50%'],
                              ['Pesquisa e desenvolvimento','40%','44%'],['Produção e operação','37%','29%'],
                              ['Vendas e marketing','33%','59%'],['Logística e cadeia de suprimentos','30%','28%'],
                              ['Finanças','26%','31%'],['Compliance','14%','26%'],['Recursos humanos','10%','30%']]))
        lines.sort(key=lambda l:(l['page'],l['column'],l['top']))
    starts=[]
    for section in exam['sections']:
        expected=subject_key(section['subject'])
        candidates=[i for i,l in enumerate(lines) if l['kind']=='text' and l['page']>=section['page'] and subject_name(l['text'])==expected and (not starts or i>starts[-1])]
        assert candidates,(key,section['subject'],'missing heading')
        starts.append(candidates[0])
    structured=[]
    for si,section in enumerate(exam['sections']):
        block=lines[starts[si]+1:starts[si+1] if si+1<len(starts) else len(lines)]
        block=[l for l in block if l['kind']!='text' or not (re.match(r'^(?:discursivas|dissertativas|questoes discursivas|\* lembre)',flat(l['text'])))]
        markers=[]
        seen=set()
        for i,l in enumerate(block):
            match=question_marker.match(l.get('text',''))
            if match and not l['text'][:1].islower() and 1<=int(match[1])<=section['count'] and int(match[1]) not in seen:
                markers.append((i,l,match));seen.add(int(match[1]))
        if len(markers)!=section['count']:
            report.append((key,section['subject'],'markers',len(markers),section['count']))
            continue
        shared=block[:markers[0][0]]
        carry=[]
        questions=[]
        for qi,(idx,line,match) in enumerate(markers):
            n=int(match[1])
            body=[dict(l) for l in block[idx:markers[qi+1][0] if qi+1<len(markers) else len(block)]]
            body[0]['text']=match[2]
            # A new passage between questions belongs to the following item.
            cut=next((i for i,l in enumerate(body[2:],2) if l['kind']=='text' and re.match(r'^(?:TEXTO\s+(?:[IVX]+|\d+)\b|Leia (?:o|a|os|as)\b)',l['text'])),len(body)) if qi+1<len(markers) and section['subject'] in ('Língua Portuguesa','Literatura') else len(body)
            tail=body[cut:];body=body[:cut]
            prompt=prose(body)
            if year==2024 and module=='I' and day==1 and section['subject']=='Matemática' and n==1:
                prompt='Considere as funções afins f e g representadas na figura a seguir. Sabe-se que:\n\n• f tem raiz igual a 7;\n• a reta que representa f é paralela à reta da função h, dada por h(x) = −x;\n• a reta que representa g intercepta o eixo das ordenadas no valor 8/5;\n• g(3) = f(3).\n\nA) Determine a lei de formação de f.\n\nB) Determine a lei de formação de g.\n\nC) Determine a área do polígono ABCD.'
            if year==2024 and module=='III' and day==1 and section['subject']=='Matemática':
                if n==1:prompt='Considere a circunferência x² + y² − 6x + 4y = 3 e o ponto P(2, 5).\n\nA) Encontre a distância entre P e o centro dessa circunferência.\n\nB) O ponto P pertence à própria circunferência, ao interior ou ao exterior dessa circunferência? Justifique.'
                if n==2:prompt='Considere as retas r e s:\n\nr: y = 3x + 2\ns: y = 5x − 4\n\nEncontre os valores de a e b tais que, simultaneamente, a reta t: y = (3a + 4b)x + 5 seja paralela à reta r, e a reta u: y = (2a − 3b)x + 1 seja perpendicular à reta s.'
                if n==5:prompt='Sabe-se que −2 é raiz do polinômio p(x) = 3x³ + x² − 7x + 6.\n\nEncontre as outras raízes (reais ou complexas) desse polinômio.'
            field_letters=[]
            for l in body:
                m=re.match(r'^\(?([A-Ha-h])\)\s+',l.get('text',''))
                if m and m[1].upper() not in field_letters:field_letters.append(m[1].upper())
            fields=[dict(id=letter.lower(),label=f'Item {letter}') for letter in field_letters] or [dict(id='resposta',label='Sua resposta')]
            support=shared+carry
            q=dict(id=f'{key}:{section["subject"]}:{n}',number=n,subject=section['subject'],page=line['page'],title=f'Questão {n}',
                   text=prompt,support=prose(support,section['subject']=='Literatura'),images=[{k:l[k] for k in ('src','alt')} for l in support+body if l['kind']=='image'],
                   tables=[{k:l[k] for k in ('headers','rows')} for l in support+body if l['kind']=='table'],fields=fields,
                   examSource=f'{exam["source"]}#page={line["page"]}',source=exam['correction'])
            questions.append(q);carry=tail
        questions.sort(key=lambda q:q['number'])
        structured.append({**{k:section[k] for k in ('subject','count','page')},'questions':questions})
    results[key]={**{k:v for k,v in exam.items() if k!='sections'},'sections':structured}
    print(key,[(s['subject'],len(s['questions'])) for s in structured],flush=True)
if report:
    (DATA/'parser-report.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    raise ValueError(report)
if len(sys.argv)>1:
    (DATA/'preview.json').write_text(json.dumps(results,ensure_ascii=False,indent=2),encoding='utf-8')
else:
    (OUT/'questions.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Structured:',sum(len(s['questions']) for e in results.values() for s in e['sections']))
