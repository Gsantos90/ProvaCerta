"""Discover PISM discursive booklets, subjects and official correction sources."""
import concurrent.futures
import html
import json
import re
import sys
import unicodedata
import urllib.request
from urllib.parse import unquote
from pathlib import Path

import fitz

sys.stdout.reconfigure(encoding='utf-8')
ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'public/pism-discursivas'
OUT.mkdir(parents=True, exist_ok=True)
source = (ROOT / 'src/lib/pismSources.js').read_text(encoding='utf-8')
metadata = json.loads(source[source.index('{'):source.index('\n\nexport')].rstrip().removesuffix(';'))
SUBJECTS = {'LINGUAPORTUGUESA': 'Língua Portuguesa', 'PORTUGUES': 'Língua Portuguesa',
            'LITERATURA': 'Literatura', 'GEOGRAFIA': 'Geografia', 'MATEMATICA': 'Matemática',
            'QUIMICA': 'Química', 'FISICA': 'Física', 'BIOLOGIA': 'Biologia',
            'HISTORIA': 'História', 'SOCIOLOGIA': 'Sociologia', 'FILOSOFIA': 'Filosofia'}

def flat(text):
    return re.sub('[^A-Z]', '', ''.join(c for c in unicodedata.normalize('NFD', text.upper()) if not unicodedata.combining(c)))

def get(url):
    return urllib.request.urlopen(urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'}), timeout=60).read()

def links(year, day):
    parent = f'https://www2.ufjf.br/copese/vestibular-pism-2/vestibular-pism-edicoes-anteriores/pism-{year}/'
    parent_html = get(parent).decode('utf-8')
    anchors = re.findall(r'<a[^>]+href=[\"\']([^\"\']+)[\"\'][^>]*>(.*?)</a>', parent_html, re.S)
    urls = [html.unescape(href) for href, label in anchors
            if re.sub(r'\s+', '', html.unescape(re.sub('<[^>]+>', '', label))).upper() in (f'DIA{day}',f'{day}ºDIA',f'{day}°DIA')]
    assert urls, (year,day,'missing day link')
    url = urls[0]
    page = get(url).decode('utf-8')
    return [(html.unescape(href), re.sub('<[^>]+>', '', html.unescape(label)))
            for href, label in re.findall(r'<a[^>]+href=[\"\']([^\"\']+)[\"\'][^>]*>(.*?)</a>', page, re.S)
            if '.pdf' in href.lower() and ('discursiv' in href.lower()) and str(year) in href]

with concurrent.futures.ThreadPoolExecutor(max_workers=6) as pool:
    corrections = dict(zip([(y,d) for y in (2024,2025,2026) for d in (1,2)],
                           pool.map(lambda item: links(*item), [(y,d) for y in (2024,2025,2026) for d in (1,2)])))

catalog = {}
for slug, meta in metadata.items():
    areas = meta.get('areas') or {'comum': meta['url']}
    for area, url in areas.items():
        year, day, module = meta['year'], meta['day'], meta['module']
        key = f'{slug}-{area}'
        if module == 'I':
            path = ROOT / f'pdf-extracts/pism-i-fontes/{year}-{day}.pdf'
        elif module == 'II' and year > 2024:
            path = ROOT / f'pdf-extracts/pism-ii-{year}/dia-{day}.pdf'
        else:
            path = ROOT / f'pdf-extracts/pism-expansao/pism-{module.lower()}-{year}-dia-{day}-{area}.pdf'
        doc = fitz.open(path)
        # The last objective page can also contain the first discursive heading.
        start = max(meta['pages']) - 1
        headings = []
        for pno in range(start, len(doc)):
            lines = doc[pno].get_text().splitlines()
            for i, line in enumerate(lines):
                normalized = flat(line).replace('LITERATURAS', 'LITERATURA')
                for name, subject in SUBJECTS.items():
                    if normalized.startswith(name) and ('DISCURSIVAS' in normalized or 'DISSERTATIVAS' in normalized
                        or normalized == name and (headings or any(any(kind in flat(s) for kind in ('DISCURSIVAS','DISSERTATIVAS')) for s in lines[i+1:i+5]))):
                        if headings and headings[-1]['subject'] == subject:
                            continue
                        count = re.search(r'(\d+)\s*quest', ' '.join(lines[i:i+5]), re.I)
                        headings.append({'subject': subject, 'page': pno+1, 'count': int(count[1]) if count else (4 if module == 'III' and subject in ('Língua Portuguesa','Literatura','Matemática','Física','Química','Biologia','História','Geografia') else 2)})
        # The two-subject booklets contain five per subject; the other areas 4/4/2.
        if module == 'III':
            for h in headings:
                h['count'] = 5 if area in ('exatas','saude') else 2 if h['subject'] in ('Sociologia','Filosofia') else 4
        assert len(headings) in (2,3,4), (key, headings)
        assert sum(h['count'] for h in headings) == (10 if module == 'III' else 8), (key, headings)
        sections = [dict(heading) for heading in headings]
        candidates = [(u,l) for u,l in corrections[(year,day)]
                      if re.search(rf'(?:P|MODULO[_-]?){len(module)}(?:[_-]|\.)', u, re.I)]
        if (year,day,module) == (2024,1,'II'):
            candidates = [('https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2024/01/Gabarito-mod-2-com-corre%C3%A7%C3%A3o-da-Geografia-1-b.pdf', 'Após recursos')]
        if module == 'III':
            candidates = [(u,l) for u,l in candidates if area in flat(unquote(u)).lower()]
        # Prefer references updated after appeals.
        candidates.sort(key=lambda pair: ('recurso' in pair[0].lower()), reverse=True)
        assert candidates, (key, corrections[(year,day)])
        catalog[key] = {'slug': slug, 'year': year, 'day': day, 'module': module, 'area': area,
                        'source': url, 'correction': candidates[0][0], 'sections': sections}
        print(key, [(s['subject'], s['count'],s['page']) for s in sections])

(OUT / 'catalog.json').write_text(json.dumps(catalog, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
print(f'{len(catalog)} cadernos; {sum(s["count"] for e in catalog.values() for s in e["sections"])} questões')
