"""Extract selectable text and figure-only crops from the official yellow booklets.

Run with PyMuPDF and rapidfuzz available (the local .venv/enem-tools directory
is supported). Review the generated audit before regenerating SQL.
"""
import json
import re
import sys
import unicodedata
from pathlib import Path

sys.path.insert(0, str(Path('.venv/enem-tools').resolve()))
import pymupdf as fitz
from rapidfuzz import fuzz

D = Path('pdf-extracts/enem-migration')

def norm(s):
    return re.sub(r'[^a-z0-9]', '', unicodedata.normalize('NFKD', s).lower())

def clean(s):
    s = re.sub(r'\(cid:\d+\)', '', s).replace('\u00ad', '')
    s = re.sub(r'[ \t]+', ' ', s)
    return s.strip()

def inside(a, b, fraction=.8):
    a, b = fitz.Rect(a), fitz.Rect(b)
    if not a.get_area():
        return b.contains(fitz.Point((a.x0+a.x1)/2, (a.y0+a.y1)/2))
    return a.get_area() > 0 and (a & b).get_area() / a.get_area() >= fraction

def lines(page, box, exclude=()):
    result = []
    for block in page.get_text('dict', clip=box)['blocks']:
        if block['type'] != 0:
            continue
        for line in block['lines']:
            if abs(line['dir'][1]) > .1:
                continue
            spans = [s for s in line['spans'] if s['size'] >= 5 and 'Bundesbahn' not in s['font']
                     and not any(inside(s['bbox'], r) for r in exclude)]
            if not spans:
                continue
            text = clean(''.join(s['text'] for s in spans))
            if not text or re.search(r'QUEST[Ãã]O|Quest\s*ão|ENEM\s*20\d\d|CADERNO|AMARELO', text):
                continue
            if len(text) == 1 and text in 'ABCDE' and all('Bundesbahn' in s['font'] for s in spans):
                continue
            if re.fullmatch(r'\d+\s*(?:LC|CH|CN|MT)?', text) and line['bbox'][1] > page.rect.height - 45:
                continue
            bbox = fitz.Rect(spans[0]['bbox'])
            for s in spans[1:]:
                bbox |= fitz.Rect(s['bbox'])
            result.append(dict(text=text, bbox=list(bbox), size=max(s['size'] for s in spans)))
    result.sort(key=lambda l: (round(l['bbox'][1] / 3), l['bbox'][0]))
    return result

def paragraphs(ls):
    groups = []
    prev = None
    for l in ls:
        # Smaller citation fonts and paragraph indentation keep the source and
        # the question's command separate, even when they share a PDF block.
        new = prev is None or l['bbox'][1] - prev['bbox'][3] > 4 or abs(l['size'] - prev['size']) > 1
        if prev and l['bbox'][0] - prev['bbox'][0] > 8 and l['bbox'][1] > prev['bbox'][3] - 1:
            new = True
        if new:
            groups.append([])
        groups[-1].append(l['text'])
        prev = l
    return [' '.join(g) for g in groups]

def figures(page, box):
    # Header rules, registration marks and page furniture are not support.
    raster = [fitz.Rect(im['bbox']) for im in page.get_image_info()
              if im['bbox'][3] - im['bbox'][1] > 12
              and im['bbox'][2] - im['bbox'][0] > 12
              and inside(im['bbox'], box, .9)]
    paths = [p for p in page.get_drawings() if inside(p['rect'], box, .9)
             and p['rect'].y0 > box.y0 + 18
             and p['rect'].y1 < page.rect.height - 45
             and not any(inside(p['rect'], r) for r in raster)]
    vector = [r for r in page.cluster_drawings(drawings=paths, x_tolerance=10, y_tolerance=10)
              if r.width > 24 and r.height > 16]
    regions = raster + vector
    # Expand only into labels belonging to diagrams; prose paragraphs never
    # become part of a figure crop.
    all_lines = lines(page, box)
    for r in regions:
        for l in all_lines:
            b = fitz.Rect(l['bbox'])
            if len(l['text']) < 45 and b.width < r.width + 25 and (b & (r + (-14, -12, 14, 14))).get_area() > 0:
                r |= b
        r += (-3, -3, 3, 3)
        r &= box
    merged = []
    for r in sorted(regions, key=lambda r: (r.y0, r.x0)):
        match = next((m for m in merged if (m & r).get_area() > 0), None)
        if match is not None:
            match |= r
        else:
            merged.append(r)
    return merged

def extract_year(year):
    cached = json.loads((D / f'{year}-regions.json').read_text(encoding='utf-8'))
    originals = json.loads((D / f'{year}-questions.json').read_text(encoding='utf-8'))
    old = {q['number']: q for q in originals}
    docs = {d: fitz.open(D / f'{year}-dia-{d}.pdf') for d in [1, 2]}
    for doc in docs.values():
        for p in doc:
            p.set_cropbox(p.mediabox)
    full_pages = {}
    for day in [1, 2]:
        qs = [q for q in cached if old[q['number']]['day'] == day]
        for pn in {q['regions'][0]['page'] for q in qs}:
            first = [q for q in qs if q['regions'][0]['page'] == pn]
            full_pages[day, pn] = all(q['regions'][0]['bbox'][0] + 3 < docs[day][pn-1].rect.width / 2 for q in first)
    rows = []
    audits = []
    for q in cached:
        n = q['number']
        row = dict(old[n])
        day = row['day']
        regions = [dict(r, bbox=list(r['bbox'])) for r in q['regions']]
        pn = regions[0]['page']
        continuation = n in ({2022: [108], 2023: [153, 172], 2025: []}[year])
        if full_pages[day, pn] and not continuation:
            regions = regions[:1]
            regions[0]['bbox'][2] = docs[day][pn-1].rect.width - regions[0]['bbox'][0]
        if continuation:
            regions = regions[:1] + [dict(page=pn, bbox=[286.134, 55, 538.748, 744.528])]
        for r in regions:
            h = docs[day][r['page']-1].rect.height
            if abs(r['bbox'][3] - (h-54)) < 2:
                r['bbox'][3] = h - (35 if year < 2025 else 54)
        body = []
        options = {l: [] for l in 'ABCDE'}
        image_paths = []
        image_audit = []
        active_letter = None
        for ri, r in enumerate(regions):
            p = docs[day][r['page']-1]
            box = fitz.Rect(r['bbox'])
            labels = []
            for block in p.get_text('dict', clip=box)['blocks']:
                if block['type'] != 0:
                    continue
                for l in block['lines']:
                    for s in l['spans']:
                        if 'Bundesbahn' in s['font'] and clean(s['text']) in list('ABCDE'):
                            labels.append(dict(letter=clean(s['text']), bbox=s['bbox']))
            # The font can contain a duplicate accessible copy of the letter.
            unique = {}
            for label in labels:
                unique.setdefault(label['letter'], label)
            labels = sorted(unique.values(), key=lambda l: (l['bbox'][0] // 250, l['bbox'][1]))
            figs = figures(p, box)
            for fi, fig in enumerate(figs):
                path = Path(f'public/enem-{year}/q{n:03}-fig-{ri+1}-{fi+1}.png')
                p.get_pixmap(matrix=fitz.Matrix(2, 2), clip=fig, alpha=False).save(path)
                image_paths.append('/' + path.as_posix().split('public/', 1)[1])
                image_audit.append(dict(page=r['page'], bbox=list(fig)))
            ls = lines(p, box, figs)
            first_option = min((l['bbox'][1] for l in labels), default=box.y1)
            if active_letter is None:
                body.extend(l for l in ls if l['bbox'][1] < first_option - 5)
            for i, label in enumerate(labels):
                active_letter = label['letter']
                lb = fitz.Rect(label['bbox'])
                next_y = min((fitz.Rect(o['bbox']).y0 for o in labels
                              if abs(o['bbox'][0]-lb.x0) < 40 and o['bbox'][1] > lb.y0 + 3), default=box.y1)
                ol = [l for l in ls if l['bbox'][1] >= lb.y0 - 5 and l['bbox'][1] < next_y - 5
                      and l['bbox'][0] >= lb.x0 + 4]
                options[active_letter] += [re.sub(r'^' + active_letter + r'\s+', '', l['text']) for l in ol]
        parts = paragraphs(body)
        row['text'] = parts[-1] if parts else ''
        row['support'] = '\n\n'.join(parts[:-1])
        row['options'] = [clean(' '.join(options[l])) or f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE']
        row['support_image'] = ','.join(image_paths)
        row['graphical_options'] = any(o.startswith('Figura ') for o in row['options'])
        row['transcription'] = '\n\n'.join(parts)
        rows.append(row)
        audits.append(dict(number=n, body=parts, figures=image_audit, labels=[l for l in options if options[l]], options=row['options']))
    return rows, audits, docs

def match_dataset(year, rows, audit):
    dataset = [json.loads(l) for l in (D / f'{year}.jsonl').read_text(encoding='utf-8').splitlines()]
    used = set()
    for row, a in zip(rows, audit):
        if row['number'] >= 181:
            continue
        raw_text = row['transcription']
        raw = re.sub(r'[^\w ]', ' ', raw_text.lower())
        normalized_raw = norm(raw_text)
        extracted_options = norm(' '.join(row['options']))
        scores = []
        for i, d in enumerate(dataset):
            if i in used:
                continue
            opts = ' '.join(d['alternatives'])
            words = re.sub(r'[^\w ]', ' ', (opts + ' ' + d['question'].replace('[[placeholder]]', '')).lower())
            command = norm(d['question'].replace('[[placeholder]]', '').strip().splitlines()[-1])
            option_hits = sum(bool(norm(o)) and norm(o) in normalized_raw for o in d['alternatives']) / 5
            command_hit = bool(command) and command in normalized_raw
            score = max(70 * command_hit + 30 * option_hits,
                        .5*fuzz.ratio(norm(opts), extracted_options) + .5*fuzz.token_set_ratio(words, raw))
            scores.append((score, i))
        score, i = max(scores)
        if score < 70:
            a['dataset_match'] = dict(score=score, candidate=dataset[i]['id'])
            continue
        d = dataset[i]
        a['dataset_match'] = dict(score=score, candidate=d['id'])
        a['answer_matches'] = d['label'] == row['answer'] or row['answer'] == 'A/B/C/D/E'
        # Printed citations remain in support; the dataset provides clean
        # mathematical notation and text alternatives when PDF fonts are encoded.
        if a['answer_matches']:
            used.add(i)
            actual = clean(d['question'].replace('[[placeholder]]', ''))
            a['dataset_question'] = actual
            row['options'] = d['alternatives']
    print(year, 'dataset matches', len(used), 'answer mismatches', [a['number'] for a in audit if a.get('answer_matches') is False], flush=True)

old_transcriptions = {}
if __name__ == '__main__':
    for year in [2022, 2023, 2025]:
        old_transcriptions[year] = {q['number']: q['transcription'] for q in json.loads((D/f'{year}-questions.json').read_text(encoding='utf-8'))}
        rows, audit, docs = extract_year(year)
        if year in [2022, 2023]:
            match_dataset(year, rows, audit)
        if year == 2025:
            shared = '\n\n'.join(paragraphs(lines(docs[1][5], fitz.Rect(57, 110, 582, 776))))
            for row in rows:
                if 6 <= row['number'] <= 10:
                    row['support'] = shared + ('\n\n' + row['support'] if row['support'] else '')
        (D/f'{year}-structured-draft.json').write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding='utf-8')
        (D/f'{year}-structure-audit.json').write_text(json.dumps(audit, ensure_ascii=False, indent=2), encoding='utf-8')
        print(year, 'rows', len(rows), 'figures', sum(bool(r['support_image']) for r in rows), 'empty stems', [r['number'] for r in rows if not r['text']], flush=True)
