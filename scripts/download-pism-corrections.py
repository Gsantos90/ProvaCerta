"""Cache the official reference PDFs used for exact-answer review."""
import concurrent.futures
import json
import sys
import urllib.request
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf-8')
root=Path(__file__).resolve().parents[1]
out=root/'pdf-extracts/pism-discursivas/correcoes'
out.mkdir(exist_ok=True)
catalog=json.loads((root/'public/pism-discursivas/questions.json').read_text(encoding='utf-8'))
jobs={}
for key,exam in catalog.items():
    if any(section['subject'] in ('Matemática','Química') for section in exam['sections']):
        jobs.setdefault(exam['correction'],key)

def download(item):
    url,key=item
    path=out/f'{key}.pdf'
    if not path.exists():
        request=urllib.request.Request(url,headers={'User-Agent':'Mozilla/5.0'})
        path.write_bytes(urllib.request.urlopen(request,timeout=60).read())
    doc=fitz.open(path)
    text='\n\n'.join(f'=== PÁGINA {i+1} ===\n'+p.get_text(sort=True) for i,p in enumerate(doc))
    (out/f'{key}.txt').write_text(text,encoding='utf-8')
    return {'key':key,'url':url,'file':str(path.relative_to(root)),'pages':len(doc)}

with concurrent.futures.ThreadPoolExecutor(max_workers=6) as pool:
    sources=list(pool.map(download,jobs.items()))
(out/'sources.json').write_text(json.dumps(sources,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Referências oficiais:',len(sources))
