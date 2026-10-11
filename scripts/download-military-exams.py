"""Download unchanged official ESA 2026 PDFs and verify their headers."""
import json
from pathlib import Path
import urllib.request
import pdfplumber

root = Path(__file__).resolve().parents[1]
target = root / 'public/provas/militares/2026'
target.mkdir(parents=True, exist_ok=True)
opener = urllib.request.build_opener(urllib.request.ProxyHandler({}))
sources = {}
for area, title in [('geral', 'Geral'), ('musica', 'Musica'), ('saude', 'Saude')]:
    sources[f'esa-{area}'] = f'https://concursocfgs-esa.eb.mil.br/assets/2026/provas/Prova-{title}.pdf'
    sources[f'esa-gabarito-{area}'] = f'https://esa.eb.mil.br/images/SCA/1.%20GABARITO%20DEF%20CA%202026%20-%20ATLZ_11_AGO_26%20-%20{title.upper()}.pdf'
for name, url in sources.items():
    try:
        data = opener.open(url, timeout=20).read()
        if not data.startswith(b'%PDF'):
            raise ValueError('A resposta não é um PDF')
        path = target / f'{name}.pdf'
        path.write_bytes(data)
        with pdfplumber.open(path) as doc:
            text = doc.pages[0].extract_text() or ''
            assert '2026' in text, f'Edição inesperada: {name}'
            print(name, len(doc.pages), text[:220])
    except Exception as exc:
        print(name, type(exc).__name__, str(exc))
(root / 'docs/military-exams-sources.json').write_text(json.dumps(sources, indent=2) + '\n', encoding='utf-8')
