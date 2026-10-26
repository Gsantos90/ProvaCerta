"""Baixa cadernos originais Vunesp da 2a fase, espelhados publicamente no Objetivo.
2024 tem os dois dias no mesmo PDF: páginas 1-28 e 29-52.
Requer PyMuPDF. Execute na raiz do projeto.
"""
from pathlib import Path
import urllib.request
import fitz
BASE='https://www.curso-objetivo.br/vestibular/resolucao-comentada/unesp/'
OUT=Path('public/provas/unesp'); OUT.mkdir(parents=True,exist_ok=True)
for year in ['2026','2025','2024']:
    first=f'UNESP{year}_2fase_'+('1dia_' if year=='2026' else '')+'prova.pdf'
    names=[first] if year=='2024' else [first,f'UNESP{year}_2fase_2dia_prova.pdf']
    for day,name in enumerate(names,1):
        data=urllib.request.urlopen(BASE+f'{year}/2fase/'+name,timeout=60).read()
        doc=fitz.open(stream=data,filetype='pdf')
        assert '002.' in doc[0].get_text() if day==1 else '003.' in doc[0].get_text()
        if year=='2024':
            assert len(doc)==52 and '003.' in doc[28].get_text()
            for n,start,end in [(1,0,27),(2,28,51)]:
                part=fitz.open();part.insert_pdf(doc,from_page=start,to_page=end)
                (OUT/f'{year}-fase2-dia{n}.pdf').write_bytes(part.tobytes())
        else:(OUT/f'{year}-fase2-dia{day}.pdf').write_bytes(data)
