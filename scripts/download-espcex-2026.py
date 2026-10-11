import urllib.request
import pathlib
import json
import pdfplumber
import sys
sys.stdout.reconfigure(encoding='utf-8')
opener = urllib.request.build_opener(urllib.request.ProxyHandler({}))
target = pathlib.Path('public/provas/militares/2026')
sources = {}
for day, archive in [(1, 159076), (2, 159077)]:
    for kind, directory, suffix in [('prova', 'arquivo_prova', ''), ('gabarito', 'arquivo_gabarito', '-gabarito')]:
        name = f'espcex-dia-{day}{suffix}'
        url = f'https://arquivos.qconcursos.com/prova/{directory}/{archive}/espcex-2026-espcex-exame-intelectual-{day}-dia-{kind}.pdf'
        data = opener.open(url, timeout=30).read()
        assert data.startswith(b'%PDF')
        path = target / f'{name}.pdf'
        path.write_bytes(data)
        with pdfplumber.open(path) as doc:
            text = '\n\n'.join(f'=== PAGE {i+1} ===\n'+(page.extract_text() or '') for i,page in enumerate(doc.pages))
            pathlib.Path(f'pdf-extracts/militares-2026/{name}.txt').write_text(text, encoding='utf-8')
            print(name, len(doc.pages), text[:550])
        sources[name] = url
pathlib.Path('docs/espcex-2026-sources.json').write_text(json.dumps(sources,indent=2)+'\n',encoding='utf-8')
