"""Import military exams as text, with figures in the standard support field."""
from pathlib import Path
import json, re, math, sys
import pdfplumber
from PIL import Image, ImageDraw
sys.stdout.reconfigure(encoding='utf-8')
ROOT=Path.cwd()
D=ROOT/'pdf-extracts/militares-2026'
PDF=ROOT/'public/provas/militares/2026'
A=ROOT/'public/militares-2026'
A.mkdir(exist_ok=True)

def clean(text):
    return re.sub(r'\s+',' ',text.replace('\x07',' ')).strip()

def key_esa(area):
    with pdfplumber.open(PDF/f'esa-gabarito-{area}.pdf') as d:
        p=d.pages[0]
        nums=[w for w in p.extract_words() if re.fullmatch(r'\d{2}',w['text']) and 200<w['top']<530]
        circles=[c for c in p.curves if c['fill'] and 10<c['width']<13 and 10<c['height']<13 and c['non_stroking_color'] in (0,0.0,(0,0,0),[0,0,0])]
        keys={}
        for w in nums:
            hit=[c for c in circles if abs((c['top']+c['bottom'])/2-(w['top']+w['bottom'])/2)<4 and 0<c['x0']-w['x1']<120]
            assert len(hit)==1,(area,w['text'],hit)
            # The five printed alternatives have a fixed 16-point pitch.
            labels=[c for c in p.chars if c['text'] in 'ⒶⒷⒸⒹⒺ' and abs(c['top']-w['top'])<6 and 0<c['x0']-w['x1']<120]
            if labels:
                best=min(labels,key=lambda c:abs((c['x0']+c['x1'])/2-(hit[0]['x0']+hit[0]['x1'])/2))
                keys[int(w['text'])]='ABCDE'['ⒶⒷⒸⒹⒺ'.index(best['text'])]
            else:
                # Word bounding boxes include circled letters even if chars differ.
                labels=[v for v in p.extract_words() if v['text'] in 'ⒶⒷⒸⒹⒺ' and abs(v['top']-w['top'])<6 and 0<v['x0']-w['x1']<120]
                assert len(labels)==5,(area,w['text'],labels)
                best=min(labels,key=lambda c:abs((c['x0']+c['x1'])/2-(hit[0]['x0']+hit[0]['x1'])/2))
                keys[int(w['text'])]='ABCDE'['ⒶⒷⒸⒹⒺ'.index(best['text'])]
        assert sorted(keys)==list(range(1,51)),(area,len(keys))
        return keys

def key_espcex(day):
    text=(D/f'espcex-dia-{day}-gabarito.txt').read_text(encoding='utf-8')
    keys={int(n):a for n,a in re.findall(r'(\d+)\s*-\s*([A-E])',text)}
    if day==2:
        final=json.loads((ROOT/'docs/espcex-2026-gabarito-definitivo.json').read_text(encoding='utf-8'))
        keys={int(n):a for n,a in final['answers'].items()}
    assert sorted(keys)==list(range(1,45 if day==1 else 57))
    return keys

def subject(kind,n):
    if kind=='esa-geral':
        return 'Matemática' if n<=14 else 'Língua Portuguesa' if n<=28 else 'História' if n<=34 else 'Geografia' if n<=40 else 'Língua Inglesa'
    if kind.startswith('esa'):
        return 'Matemática' if n<=10 else 'Língua Portuguesa' if n<=20 else 'História' if n<=24 else 'Geografia' if n<=28 else 'Língua Inglesa' if n<=38 else 'Teoria Musical' if kind.endswith('musica') else 'Enfermagem'
    if kind.endswith('1'):
        return 'Língua Portuguesa' if n<=20 else 'Física' if n<=32 else 'Química'
    return 'Matemática' if n<=20 else 'Geografia' if n<=32 else 'História' if n<=44 else 'Língua Inglesa'

def render(p,box,path):
    if box[3]-box[1]<3:return None
    if not hasattr(p, '_military_render'):
        p._military_render=p.to_image(resolution=144).original.convert('RGB')
    p._military_render.crop(tuple(round(v*2) for v in box)).save(A/path,optimize=True)
    return '/militares-2026/'+path

def find_regions(doc,esa):
    regions=[]
    for pi,p in enumerate(doc.pages):
        if pi==0:continue
        if esa:
            for w in p.extract_words():
                if re.fullmatch(r'\d{2}',w['text']) and 42<w['x0']<46 and w['top']>65 and int(w['text'])<=50:
                    regions.append(dict(number=int(w['text']),page=pi,x0=36,x1=p.width-36,top=max(70,w['top']-10),marker=w['top']))
        else:
            for x0,x1 in [(30,p.width/2-8),(p.width/2+8,p.width-30)]:
                for line in p.crop((x0,20,x1,p.height-35)).extract_text_lines():
                    m=re.match(r'^QUESTÃO\s+(\d+)',line['text'])
                    if m:regions.append(dict(number=int(m[1]),page=pi,x0=x0,x1=x1,top=line['top']-2,marker=line['top']))
    regions.sort(key=lambda r:r['number'])
    assert [r['number'] for r in regions]==list(range(1,51 if esa else 45 if '1' in Path(doc.stream.name).stem else 57)),[r['number'] for r in regions]
    return regions

def import_exam(kind, keys):
    import importlib.util
    esa = kind.startswith('esa')
    slug = kind.replace('esa-', 'esa-2026-') if esa else kind.replace('espcex-', 'espcex-2026-')
    rows = [dict(number=n, subject=subject(kind,n), text='', support=None,
                 support_image=None, options=[], answer=answer,
                 explanation='Questão anulada pela banca após a análise dos recursos. O ponto é atribuído automaticamente.' if answer=='A/B/C/D/E' else None)
            for n,answer in sorted(keys.items())]
    exam = dict(slug=slug, source='esa' if esa else 'espcex', year='2026',
                title=('ESA 2026 · '+{'geral':'Geral / Aviação','musica':'Música','saude':'Saúde'}[kind[4:]]) if esa else f'EsPCEx 2026 · {kind[-1]}º dia', questions=rows)
    spec = importlib.util.spec_from_file_location('military_normalize', ROOT/'scripts/normalize-military-2026.py')
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.normalize_exam(kind, exam)

if __name__=='__main__':
    exams=[]
    for kind in ['esa-geral','esa-musica','esa-saude','espcex-dia-1','espcex-dia-2']:
        print('Importando',kind,flush=True)
        keys=key_esa(kind[4:]) if kind.startswith('esa') else key_espcex(int(kind[-1]))
        exams.append(import_exam(kind,keys))
        (D/'catalogo.json').write_text(json.dumps(exams,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print(kind,len(exams[-1]['questions']),flush=True)
