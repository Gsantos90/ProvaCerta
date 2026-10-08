"""Conferência de limites, legendas e separação de textos dos cadernos."""
import importlib.util
import json
import re
from pathlib import Path

sp = importlib.util.spec_from_file_location('enm', Path('scripts/structure-enem-content.py'))
m = importlib.util.module_from_spec(sp)
sp.loader.exec_module(m)
f = m.fitz
D = m.D

def regions_for(year, cached, row, docs):
    n, day = row['number'], row['day']
    rs = [dict(r, bbox=list(r['bbox'])) for r in cached[n]['regions']]
    pn = rs[0]['page']
    others = [q for q in cached.values() if q['regions'][0]['page'] == pn
              and (1 if q['number'] <= 90 or q['number'] >= 181 else 2) == day]
    continuations = {2022: [108], 2023: [153, 172], 2025: []}[year]
    full = all(q['regions'][0]['bbox'][0]+3 < docs[day][pn-1].rect.width/2 for q in others)
    full = full and not any(q['number'] in continuations for q in others)
    if full:
        rs = rs[:1]
        rs[0]['bbox'][2] = docs[day][pn-1].rect.width-28
    if n in continuations:
        rs = rs[:1] + [dict(page=pn, bbox=[286.134, 55, 539.8, 734])]
    for r in rs:
        p = docs[day][r['page']-1]
        b = r['bbox']
        if year == 2025:
            right = p.rect.width-(57.5197 if r['page'] % 2 == 0 else 64.6063)+1
            if b[2] > p.rect.width/2+30:
                b[2] = right
            b[3] = min(b[3], p.rect.height-73)
        else:
            b[2] += 1.6
            if b[3] > p.rect.height-55:
                b[3] = p.rect.height-45
    return rs

def annotate(p, rect, box):
    r = f.Rect(rect)
    reach = r + (-30, -16, 24, 32)
    for b in p.get_text('dict', clip=reach)['blocks']:
        if b['type'] != 0:
            continue
        for l in b['lines']:
            text = m.clean(''.join(s['text'] for s in l['spans']))
            size = max(s['size'] for s in l['spans'])
            if abs(l['dir'][1]) > .1 or not text or len(text) > 95:
                continue
            if size >= 9 and len(text) > 23:
                continue
            if re.search('Quest|QUEST|CADERNO|ENEM|Disponível|Acesso|AMARELO', text):
                continue
            r |= f.Rect(l['bbox'])
    # Markers identify graphical alternatives without reproducing their command.
    for b in p.get_text('dict', clip=box)['blocks']:
        if b['type'] != 0:
            continue
        for l in b['lines']:
            for s in l['spans']:
                if 'Bundesbahn' in s['font'] and m.clean(s['text']) in list('ABCDE'):
                    lb = f.Rect(s['bbox'])
                    if r.y0-5 <= lb.y0 <= r.y1 and r.x0-65 <= lb.x0 <= r.x1:
                        r |= lb
    return (r + (-2, -2, 2, 2)) & box

for year in [2022, 2023, 2025]:
    rows = json.loads((D/f'{year}-structured-draft.json').read_text(encoding='utf-8'))
    audit = {a['number']: a for a in json.loads((D/f'{year}-structure-audit.json').read_text(encoding='utf-8'))}
    cached = {q['number']: q for q in json.loads((D/f'{year}-regions.json').read_text(encoding='utf-8'))}
    docs = {d: f.open(D/f'{year}-dia-{d}.pdf') for d in [1, 2]}
    for doc in docs.values():
        for p in doc:
            p.set_cropbox(p.mediabox)
    for row in rows:
        n, day = row['number'], row['day']
        rs = regions_for(year, cached, row, docs)
        all_figures = []
        body = []
        options = {l: [] for l in 'ABCDE'}
        active = None
        for ri, reg in enumerate(rs):
            p = docs[day][reg['page']-1]
            box = f.Rect(reg['bbox'])
            figs = []
            for im in audit[n]['figures']:
                if im['page'] != reg['page'] or not m.inside(im['bbox'], box, .5):
                    continue
                crop = annotate(p, im['bbox'], box)
                if crop.width < 8 or crop.height < 8:
                    continue
                figs.append(crop)
            # The previous pass can produce overlapping components after adding
            # axis labels. Combine them into one complete figure.
            merged = []
            for r in figs:
                hit = next((other for other in merged if (other & r).get_area() > 0), None)
                if hit is None:
                    merged.append(r)
                else:
                    hit |= r
            figs = merged
            for fi, fig in enumerate(figs):
                path = Path(f'public/enem-{year}/q{n:03}-support-{ri+1}-{fi+1}.png')
                p.get_pixmap(matrix=f.Matrix(2, 2), clip=fig, alpha=False).save(path)
                all_figures.append(dict(page=reg['page'], bbox=list(fig), path='/'+path.as_posix().split('public/', 1)[1]))
            labels = {}
            for b in p.get_text('dict', clip=box)['blocks']:
                if b['type'] != 0:
                    continue
                for l in b['lines']:
                    for s in l['spans']:
                        letter = m.clean(s['text'])
                        if 'Bundesbahn' in s['font'] and letter in list('ABCDE'):
                            labels.setdefault(letter, f.Rect(s['bbox']))
            ls = [l for l in m.lines(p, box, figs) if l['bbox'][1] < p.rect.height-(73 if year==2025 else 45)]
            start = min((r.y0 for r in labels.values()), default=box.y1)-5
            if active is None:
                body.extend(l for l in ls if l['bbox'][1] < start)
            for letter, lb in labels.items():
                active = letter
                end = min((r.y0-5 for r in labels.values() if abs(r.x0-lb.x0)<40 and r.y0>lb.y0+3), default=box.y1)
                options[letter] += [l['text'] for l in ls if lb.y0-5 <= l['bbox'][1] < end and l['bbox'][0]>=lb.x0+4]
        parts = m.paragraphs(body)
        row['text'] = parts[-1] if parts else ''
        row['support'] = '\n\n'.join(parts[:-1])
        row['options'] = [m.clean(' '.join(options[l])) or f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE']
        row['support_image'] = ','.join(im['path'] for im in all_figures)
        row['transcription'] = '\n\n'.join(parts)
        audit[n]['body'] = parts
        audit[n]['figures'] = all_figures
    if year < 2025:
        aa = [audit[q['number']] for q in rows]
        m.match_dataset(year, rows, aa)
        for row, a in zip(rows, aa):
            if a.get('answer_matches'):
                row['dataset_question'] = a['dataset_question']
    else:
        shared = '\n\n'.join(m.paragraphs(m.lines(docs[1][5], f.Rect(57, 110, 582, 776))))
        for row in rows:
            if 6 <= row['number'] <= 10:
                row['support'] = shared
    (D/f'{year}-structured-draft.json').write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding='utf-8')
    (D/f'{year}-structure-audit.json').write_text(json.dumps(list(audit.values()), ensure_ascii=False, indent=2), encoding='utf-8')
    print(year, 'limites e legendas conferidos', flush=True)
