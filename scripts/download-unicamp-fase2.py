"""Download official second-phase booklets and expected answers (2024–2026)."""
import concurrent.futures
import json
import urllib.request
from pathlib import Path

D=Path('public/provas/unicamp');D.mkdir(parents=True,exist_ok=True)
jobs=[];manifest={}
for year in [2026,2025,2024]:
    root=f'https://www.comvest.unicamp.br/vest{year}/F2/provas/'
    uploads=f'https://www.comvest.unicamp.br/wp-content/uploads/{year-1}/12/'
    files={'dia-1':root+f'{year}F2redporingcn.pdf','exatas':root+f'{year}F2CE.pdf','biologicas':root+f'{year}F2CB.pdf','humanas':root+f'{year}F2CH.pdf',
           'dia-1-respostas':uploads+('Respostas-Esperadas_1odia.pdf'if year==2024 else 'Respostas-Esperadas_Dia-1.pdf'),
           'redacao-expectativas':uploads+('Expectativa-Banca_RED.pdf'if year==2024 else 'Expectativa-Banca_RED_FINAL.pdf')}
    for name,code in [('exatas','CE'),('biologicas','CB'),('humanas','CH')]:
        files[name+'-respostas']=uploads+(f'RespostasEsperadas_dia2_{code}.pdf'if year==2024 else f'Respostas-Esperadas_Dia-2_{code}'+('T'if code=='CE'else'S'if code=='CB'else'A')+'.pdf')
    manifest[str(year)]=files
    jobs.extend((year,name,url)for name,url in files.items())

def get(job):
    year,name,url=job;path=D/f'{year}-fase2-{name}.pdf'
    if not path.exists():
        data=urllib.request.urlopen(url,timeout=25).read()
        assert data.startswith(b'%PDF'),url
        path.write_bytes(data)
    return path.name,path.stat().st_size

with concurrent.futures.ThreadPoolExecutor(max_workers=4)as executor:
    for name,size in executor.map(get,jobs):print(name,size)
Path('pdf-extracts/unicamp/fase2-sources.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf8')
