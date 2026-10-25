"""Download official matching booklets/definitive keys, then run generator."""
import json
import subprocess
import sys
import urllib.request
from pathlib import Path

D=Path('pdf-extracts/inss-2016');D.mkdir(parents=True,exist_ok=True)
base='https://cdn.cebraspe.org.br/concursos/INSS_2015/arquivos/'
files={'tecnico':'234INSS_002_01_Caderno_ALGA.PDF',
       'analista':'234INSS_001_01_Caderno_LUA.PDF',
       'tecnico-gabarito':'Gab_Definitivo_234INSS_002_01.PDF',
       'analista-gabarito':'Gab_Definitivo_234INSS_001_01.PDF'}
import fitz
for key,name in files.items():
    data=urllib.request.urlopen(base+name,timeout=30).read()
    assert data.startswith(b'%PDF'),name
    (D/(key+'.pdf')).write_bytes(data)
    doc=fitz.open(stream=data,filetype='pdf')
    (D/(key+'.txt')).write_text('\n'.join(p.get_text(sort=True)for p in doc),encoding='utf8')
(D/'sources.json').write_text(json.dumps({key:base+name for key,name in files.items()},indent=2),encoding='utf8')
subprocess.run([sys.executable,'scripts/generate-inss-2016.py'],check=True)
