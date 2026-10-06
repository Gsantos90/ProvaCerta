import json,re,unicodedata,urllib.request,urllib.parse,html,sys
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
ROOT=Path.cwd(); DATA=ROOT/'pdf-extracts/pism-expansao'; DATA.mkdir(parents=True,exist_ok=True)
sys.stdout.reconfigure(encoding='utf-8')
base='https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/'
pages={(2024,1):base+'pism-2024/2024-provas-e-gabaritos-1o-dia/',(2024,2):base+'pism-2024/2024-provas-e-gabaritos-2o-dia/',(2025,1):base+'pism-2024/2025-provas-e-gabaritos-1o-dia/',(2025,2):base+'pism-2025/provas-e-gabaritos-2o-dia/',(2026,1):base+'pism-2026/provas-e-gabaritos-1o-dia/',(2026,2):base+'pism-2026/provas-e-gabaritos-2o-dia/'}
def norm(s): return ''.join(c for c in unicodedata.normalize('NFKD',s.lower()) if not unicodedata.combining(c))
files=[]
for (year,day),url in pages.items():
    raw=urllib.request.urlopen(url).read().decode('utf-8')
    (DATA/f'pagina-{year}-{day}.html').write_text(raw,encoding='utf-8')
    for href,body in re.findall(r'<a[^>]+href=[\"\x27]([^\"\x27]+)[\"\x27][^>]*>(.*?)</a>',raw,re.S):
        label=html.unescape(re.sub('<[^>]+>','',body)).strip(); label=re.sub(r'\s+',' ',label); n=norm(label)
        if '.pdf' not in href.lower(): continue
        module='iii' if 'modulo iii' in n else 'ii' if 'modulo ii' in n else None
        if not module or (module=='ii' and year!=2024): continue
        if 'caderno' in n:
            area=next((a for a in ['humanas','exatas','saude','economia'] if a in n),'comum')
            filename=f'pism-{module}-{year}-dia-{day}-{area}.pdf'
        elif 'gabarito' in n:
            filename=f'gabarito-{module}-{year}-dia-{day}.pdf'
        else: continue
        item=dict(year=year,day=day,module=module,label=label,url=urllib.parse.urljoin(url,html.unescape(href)),file=filename)
        if not any(x['file']==filename for x in files): files.append(item)
(DATA/'fontes.json').write_text(json.dumps(files,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def download(item):
    path=DATA/item['file']
    if not path.exists(): path.write_bytes(urllib.request.urlopen(item['url']).read())
    return item['file']
with ThreadPoolExecutor(max_workers=5) as pool: downloaded=list(pool.map(download,files))
print(f'{len(downloaded)} PDFs oficiais salvos:')
for x in files: print(x['file'],x['url'])