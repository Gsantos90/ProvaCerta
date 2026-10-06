import json,re,sys,unicodedata
from pathlib import Path
import pdfplumber,pypdfium2 as pdf
ROOT=Path.cwd(); DATA=ROOT/'pdf-extracts/pism-expansao'
sys.stdout.reconfigure(encoding='utf-8')
files=json.loads((DATA/'fontes.json').read_text(encoding='utf-8'))
for item in files:
    if not item['file'].startswith('gabarito') and not item['file'].endswith(('humanas.pdf','comum.pdf')): continue
    with pdfplumber.open(DATA/item['file']) as doc:
        text='\n\n'.join(f'=== PDF {i+1} ===\n'+(page.extract_text() or '') for i,page in enumerate(doc.pages))
        (DATA/item['file'].replace('.pdf','.txt')).write_text(text,encoding='utf-8')
        cols=[]
        if item['file'].startswith('pism'):
            for i,page in enumerate(doc.pages):
                if i<2: continue
                w,h=page.width,page.height
                cols.append(f'\n=== PDF {i+1} ===\n'+ '\n'.join(page.crop((x0,58,x1,h-24)).extract_text() or '' for x0,x1 in [(0,w/2),(w/2,w)]))
            (DATA/item['file'].replace('.pdf','-colunas.txt')).write_text('\n'.join(cols),encoding='utf-8')
    if item['file'].startswith('gabarito'): print(item['file'],text)
print('Textos dos 8 cadernos e dos 8 gabaritos extraídos.')