import urllib.request,json,sys
from pathlib import Path
import pdfplumber
sys.stdout.reconfigure(encoding='utf-8');D=Path('pdf-extracts/inss-2022');D.mkdir(parents=True,exist_ok=True)
BASE='https://cdn.cebraspe.org.br/concursos/INSS_22/arquivos/'
files={'basicos.pdf':'760_INSS_CB1_01.PDF','especificos.pdf':'760_INSS_001_01.PDF','gabarito-basicos.pdf':'GAB_DEFINITIVO_760_INSS_CB1_01.PDF','gabarito-especificos.pdf':'GAB_DEFINITIVO_760_INSS_001_01.PDF','edital.pdf':'ED_1_INSS_22_ABERTURA.PDF'}
for name,remote in files.items():
 p=D/name
 if not p.exists():p.write_bytes(urllib.request.urlopen(BASE+remote,timeout=40).read())
 with pdfplumber.open(p) as doc:
  text='\n\n'.join(f'=== PDF {i+1} ===\n'+(page.extract_text() or '') for i,page in enumerate(doc.pages))
  (D/name.replace('.pdf','.txt')).write_text(text,encoding='utf-8')
 print(name,len(text))
(D/'fontes.json').write_text(json.dumps({k:BASE+v for k,v in files.items()},indent=2)+'\n',encoding='utf-8')
with pdfplumber.open(D/'basicos.pdf') as doc:
 page=doc.pages[0]
 for line in page.extract_text_lines():
  if line['text'].startswith(('1 ','2 ','6 ','14 ','Em relação','Julgue')):print(line['text'],[(c['text'],c['fontname']) for c in line['chars'][:6]])