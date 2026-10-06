import json,re,sys,unicodedata,runpy
from pathlib import Path
import pdfplumber
ROOT=Path.cwd(); DATA=ROOT/'pdf-extracts/pism-expansao'
sys.stdout.reconfigure(encoding='utf-8')
oldclean=runpy.run_path(str(ROOT/'scripts/import-pism-ii-2025.py'))['clean']
SUB={('ii',1):['Língua Portuguesa','Geografia','Matemática','Química'],('ii',2):['Literaturas','Biologia','Física','História'],('iii',1):['Língua Portuguesa','Literaturas','Biologia','Matemática'],('iii',2):['Física','Química','Geografia','História']}
ANS={'ii-2024-1':'C C A D E C D C A D C/D A C A B D C B A D','ii-2024-2':'A D B E B A B B C E B B E A D D B B A E','iii-2024-1':'A B D A C C D E C B C E D E C C C D E A','iii-2024-2':'E D B E D C C D E D B E B A E D E C D E','iii-2025-1':'D E A B D B B D D A C/E A D A B/C A B C E C','iii-2025-2':'E D B E C D A C D A C B E E B D D B B A','iii-2026-1':'A D A B A C E B B D B B E C C A D C B E','iii-2026-2':'B A C C C B C B B A E B E B B D A/B/C/D/E A A D'}
def clean(t,year):
    if year==2025: t=oldclean(t)
    elif year==2026:
        t=t.replace('ı','i').replace('c¸','ç').replace('C¸','Ç')
        marks={'´':'\u0301','˜':'\u0303','ˆ':'\u0302','`':'\u0300'}
        t=re.sub(r'([a-zA-Z])([´˜ˆ`])',lambda m:unicodedata.normalize('NFC',m[1]+marks[m[2]]),t)
        t=re.sub(r'([´˜ˆ`])([a-zA-Z])',lambda m:unicodedata.normalize('NFC',m[2]+marks[m[1]]),t)
    t=t.replace('\ufffe','').replace('\x1c','fi').replace('\x1d','fl')
    t=re.sub(r'(?m)^.*(?:Reitoria|PRÓ-REITORIA|PROCESSOS SELETIVOS|Processos Seletivos|PISM 202[456]|Pism 202[456]|Página \d+|Pagina \d+|=== PDF).*$','',t)
    return t.replace('\r','')
def flat(t): return re.sub(r'\s+',' ',t).strip()
files=json.loads((DATA/'fontes.json').read_text(encoding='utf-8'))
result=[]
for item in files:
    if not item['file'].startswith('pism') or not item['file'].endswith(('humanas.pdf','comum.pdf')): continue
    year,day,module=item['year'],item['day'],item['module']; parts=[]; page_offsets=[]; iconcount=0
    with pdfplumber.open(DATA/item['file']) as doc:
        for i,page in enumerate(doc.pages):
            if i<2: continue
            if year==2024:
                events=[]
                for line in page.dedupe_chars().extract_text_lines(return_chars=False):
                    if 50<=line['top']<page.height-25: events.append((line['top'],line['text']))
                for im in sorted(page.images,key=lambda im:im['top']):
                    if 13<=im['width']<=17 and 14<=im['height']<=18 and im['x0']>=25:
                        events.append((im['top']-8,'('+ 'ABCDE'[iconcount%5] +')')); iconcount+=1
                raw='\n'.join(t for _,t in sorted(events))
            else:
                w,h=page.width,page.height
                raw='\n'.join(page.crop((x0,58,x1,h-24)).extract_text() or '' for x0,x1 in [(0,w/2),(w/2,w)])
            text=clean(raw,year)
            page_offsets.append((sum(len(x)+1 for x in parts),i+1)); parts.append(text)
            if re.search(r'(?im)^.*discursivas.*$',text): break
    text='\n'.join(parts)
    (DATA/item['file'].replace('.pdf','-limpo.txt')).write_text(text,encoding='utf-8')
    matches=[]; expected=1
    for m in re.finditer(r'(?mi)^QUEST[ÃA]O\s+0?(\d{1,2})\s*[-.–—]',text):
        if int(m[1])==expected:
            matches.append(m); expected+=1
            if expected==21: break
    assert len(matches)==20,(item['file'],[(m[1],m.start()) for m in matches])
    questions=[]
    for k,m in enumerate(matches):
        block=text[m.end():matches[k+1].start() if k<19 else len(text)]
        if k==19: block=re.split(r'(?im)^.*discursivas.*$',block)[0]
        opts=list(re.finditer(r'(?m)^\(([A-E])\)\s*',block))
        opts=opts[:5]
        assert [o[1] for o in opts]==list('ABCDE'),(item['file'],k+1,[o[1] for o in opts],block[:200])
        options=[block[o.end():opts[j+1].start() if j<4 else len(block)] for j,o in enumerate(opts)]
        options[4]=re.split(r'(?im)^\s*(?:Leia\b|TEXTO\b|L[ÍI]NGUA\b|LITERATURAS\b|BIOLOGIA\b|MATEM[ÁA]TICA\b|F[ÍI]SICA\b|QU[ÍI]MICA\b|GEOGRAFIA\b|HIST[ÓO]RIA\b|QUEST[ÕO]ES\b|Questões\b)',options[4])[0]
        page=max(p for offset,p in page_offsets if offset<=m.start())
        questions.append(dict(number=k+1,subject=SUB[(module,day)][k//5],text=flat(block[:opts[0].start()]),options=[flat(o) for o in options],answer=ANS[f'{module}-{year}-{day}'].split()[k],support=None,support_image=None,explanation=None,page=page))
    filename=f'questoes-{module}-{year}-dia-{day}.json'
    (DATA/filename).write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    result.append(dict(slug=f'pism-{module}-{year}-dia-{day}',year=year,day=day,module=module.upper(),url=item['url'],file=item['file'],questions_file=filename,pages=[q['page'] for q in questions]))
    print(filename,'20 questões extraídas')
(DATA/'catalogo.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')