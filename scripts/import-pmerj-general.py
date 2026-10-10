"""Additional PMERJ Soldado and CFO booklets (2009, 2012 and 2014).

Archive OCR is kept searchable; cropped original regions remain the visual
reference for formulas, underlining, diagrams and side-by-side alternatives.
"""
import importlib.util
import hashlib
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('archive_import', ROOT / 'scripts/import-pmerj-archives.py')
common = importlib.util.module_from_spec(spec)
spec.loader.exec_module(common)
fitz, BASE, ASSETS = common.fitz, common.BASE, common.ASSETS

def crop(doc, pieces, slug, suffix):
    paths = []
    for i, piece in enumerate(pieces):
        identity = json.dumps([Path(doc.name).name, piece['page'], piece['bbox']], sort_keys=True)
        path = ASSETS / ('pmerj-crop-' + hashlib.sha256(identity.encode()).hexdigest()[:20] + '.png')
        if not path.exists():
            page = doc[piece['page'] - 1]
            rect = fitz.Rect(piece['bbox']) & page.rect
            if rect.is_empty or rect.height < 1:
                rect = page.rect
            page.get_pixmap(matrix=fitz.Matrix(1.65, 1.65), clip=rect).save(str(path))
        paths.append('/pmerj-arquivo/' + path.name)
    return paths

def scan(name, kind):
    doc = fitz.open(BASE / (name + '.pdf'))
    result, supports = {}, []
    active, support, language = None, [], ''
    for pi, page in enumerate(doc):
        if kind in ('ibfc', 'oficial2014') and pi < (2 if kind == 'ibfc' else 1):
            continue
        text = page.get_text(sort=True)
        cols = [(15, page.rect.width - 15)] if kind == 'ibfc' else [(15, 300), (300, page.rect.width - 15)]
        for x0, x1 in cols:
            entries = [(t, box) for t, box in common.lines(page) if x0 <= box.x0 < x1]
            if kind == 'ibfc':
                markers = [(int(m[1]), box) for t, box in entries if box.x0 < 25 and (m := re.match(r'^(\d{1,2})\)', t))]
                top, bottom = 25, page.rect.height - 28
            elif kind == 'soldado2009':
                markers = [(int(m[1]), box) for t, box in entries if (m := re.match(r'^Questão\s+(\d+)', t))]
                top, bottom = 35, page.rect.height - 35
            else:
                markers = [(int(re.sub(r'\s+', '', m[1]).translate(str.maketrans('OIlS', '0115'))), box)
                           for t, box in entries if (m := re.match(r'^([0-9OIlS]\s*[0-9OIlS])\s*[-–—]', t))]
                if kind == 'oficial2014':
                    markers += [(int(t.strip()), box) for t, box in entries if re.fullmatch(r'\d{2}', t.strip()) and box.x0 < x0 + 25]
                markers = [(n, box) for n, box in markers if 1 <= n <= 80]
                top, bottom = 30, page.rect.height - 38
            markers = sorted(markers, key=lambda item: item[1].y0)
            if not markers:
                if re.search(r'Texto\s+[IVX]+|PORTUGU[EÊ]S|\bTexto\b', text, re.I) and len(text) > 100:
                    support.append({'page':pi + 1, 'bbox':[x0,top,x1,bottom]})
                continue
            first = markers[0][1].y0
            prefix_rect = fitz.Rect(x0, top, x1, first - 2)
            prefix = page.get_text(clip=prefix_rect, sort=True).strip() if first > top + 8 else ''
            if prefix and len(prefix) > 80:
                part = {'page':pi + 1, 'bbox':list(prefix_rect)}
                if active and re.search(r'^\s*\(?[a-eA-E][)\.]', prefix, re.M):
                    result[active]['regions'].append(part)
                else:
                    support.append(part)
            for i, (n, box) in enumerate(markers):
                if kind == 'oficial2014':
                    for title, title_box in sorted(entries, key=lambda entry: entry[1].y0):
                        if title_box.y0 <= box.y0 and re.search(r'L.{0,30}ESTRANGEIRA', title.upper()):
                            for lang, pattern in [('espanhol','ESPANH'),('frances','FRANC'),('ingles','INGL')]:
                                if pattern in title.upper():
                                    language = lang
                group = language if kind == 'oficial2014' and n >= 71 else ''
                key = (group, n)
                if key in result:
                    continue
                end = markers[i + 1][1].y0 - 2 if i + 1 < len(markers) else bottom
                rect = [x0, box.y0 - 1, x1, end]
                result[key] = {'number':n,'regions':[{'page':pi + 1,'bbox':rect}], 'support_regions':list(support)}
                active = key
            if kind == 'oficial2014':
                for title, _ in sorted(entries, key=lambda entry: entry[1].y0):
                    if re.search(r'L.{0,30}ESTRANGEIRA', title.upper()):
                        for lang, pattern in [('espanhol','ESPANH'),('frances','FRANC'),('ingles','INGL')]:
                            if pattern in title.upper():
                                language = lang
            # Text support is shared within the first language block only.
            if markers[-1][0] >= (10 if kind != 'soldado2009' else 40):
                support = []
    return doc, result

def key_pairs(name):
    doc = fitz.open(BASE / (name + '-gab.pdf'))
    text = '\n'.join(p.get_text(sort=True) for p in doc)
    pairs = re.findall(r'\b(\d{1,2})\s+([A-D])\b', text)
    return {int(n): a for n, a in pairs}

def build(name, slug, label, role, year, kind, answers, language=''):
    doc, extracted = scan(name, kind)
    count = 40 if kind.startswith('soldado') else 80
    rows = []
    for n in range(1, count + 1):
        key = (language if kind == 'oficial2014' and n >= 71 else '', n)
        assert key in extracted, (name, key, sorted(extracted))
        q = extracted[key]
        pieces = q['regions']
        raw = '\n'.join(doc[p['page'] - 1].get_text(clip=fitz.Rect(p['bbox']), sort=True) for p in pieces)
        paths = crop(doc, q['support_regions'], slug, f'support{n:02}') + crop(doc, pieces, slug, f'q{n:02}')
        choices = 'ABCDE' if kind == 'soldado2009' else 'ABCD'
        if kind == 'ibfc':
            subjects = ['Língua Portuguesa e Literatura Brasileira','Matemática','Geografia','História','Física','Biologia','Química', 'Língua ' + label.split('—')[-1].strip()]
            subject = subjects[(n - 1) // 10]
        elif kind == 'oficial2014':
            subject = ['Língua Portuguesa','Matemática','Geografia','História','Informática','Direitos Humanos','Sociologia','Língua ' + language.capitalize()][(n - 1) // 10]
        elif kind == 'soldado2009':
            subject = 'Matemática' if n <= 20 else 'Língua Portuguesa'
        else:
            subject = next(s for end,s in [(10,'Língua Portuguesa'),(15,'Sociologia'),(20,'Geografia'),(25,'História'),(30,'Legislação de Trânsito'),(35,'Informática'),(40,'Direitos Humanos')] if n <= end)
        answer = answers[n]
        rows.append({'number':n,'subject':subject,'text':f'Questão {n} — leia o enunciado e as alternativas na imagem do caderno.',
                     'support':'','support_image':json.dumps(paths),'options':['Alternativa ' + a for a in choices],
                     'answer':'A/B/C/D/E' if answer in ('X','*') else answer,
                     'explanation':f'Gabarito publicado da PMERJ — {label}: ' + ('questão anulada. A revisão considera a anulação publicada, sem exigir uma única alternativa.' if answer in ('X','*') else f'alternativa {answer}. Consulte o enunciado original nas imagens para relacionar a alternativa aos dados e às condições apresentados. Este comentário registra o gabarito; a fonte não fornece uma resolução comentada.'),
                     'regions':pieces,'transcription':common.clean(raw),'visual_fallback':True})
    return {'slug':slug,'role':role,'title':'PMERJ ' + year + ' — ' + label,'year':year,'files':common.downloads.FILES[name],'questions':rows}

def run():
    exams, pending = [], []
    # Branco booklet: Q1 asks for analysis of statements; Q10 fills the text gaps.
    branco = 'A C B X X C C C A D B X D A C A C C D B D D B B C B C C A D A B A B X A C D B C'.split()
    oficial = 'B A B D C D B X D C C X C A C C B D A X C B X B D A X B C C C D D C A X D C B X A A D B X C D X C D D B D B D C B D A C A C A D B A C D C A'.split()
    configs = [('archive-49472','pmerj-2014-soldado','Soldado Policial Militar — Branca','Soldado','2014','soldado2014',dict(enumerate(branco,1)),'')]
    doc = fitz.open(BASE / 'archive-49471-gab.pdf')
    left = doc[0].get_text(clip=fitz.Rect(0,0,195,doc[0].rect.height), sort=True)
    a2009 = {int(n):a for n,a in re.findall(r'\b(\d{2})\s+([A-E])\b',left)}
    configs.append(('archive-49471','pmerj-2009-soldado','Soldado Policial Militar — Prova A','Soldado','2009','soldado2009',a2009,''))
    for name, lang in [('archive-30966','Inglês'),('archive-30967','Francês'),('archive-30968','Espanhol')]:
        code = {'Inglês':'ingles','Francês':'frances','Espanhol':'espanhol'}[lang]
        configs.append((name,'pmerj-2012-oficial-' + code,'Oficial Policial Militar — ' + lang,'Oficial — ' + lang,'2012','ibfc',key_pairs(name),''))
    for lang, code in [('Espanhol','espanhol'),('Francês','frances'),('Inglês','ingles')]:
        last = 'B C D B D B A A D D'.split() if code != 'ingles' else 'B C D B D D A A D D'.split()
        configs.append(('archive-39534','pmerj-2014-oficial-' + code,'Oficial Policial Militar — ' + lang,'Oficial — ' + lang,'2014','oficial2014',dict(enumerate(oficial+last,1)),code))
    for args in configs:
        try:
            assert len(args[6]) == (40 if args[5].startswith('soldado') else 80)
            result = build(*args)
            exams = [e for e in exams if e['slug'] != result['slug']] + [result]
            print('OK',result['slug'],len(result['questions']),flush=True)
        except (OSError, AssertionError, KeyError, ValueError) as error:
            pending.append({'file':args[0],'reason':str(error)[:300]})
            print('REVIEW',args[0],str(error)[:160],flush=True)
        (BASE / 'general-importacao.json').write_text(json.dumps(exams,ensure_ascii=False,indent=2),encoding='utf-8')
    (BASE / 'general-importacao.json').write_text(json.dumps(exams,ensure_ascii=False,indent=2),encoding='utf-8')
    (BASE / 'general-pendencias.json').write_text(json.dumps(pending,ensure_ascii=False,indent=2),encoding='utf-8')

if __name__ == '__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    run()
