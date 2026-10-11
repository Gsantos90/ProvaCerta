"""Extract military stems/options as text and only figures/tables as support images."""
from pathlib import Path
import importlib.util
import json
import re
import sys
import unicodedata
import pdfplumber
from pdfplumber.utils import extract_text

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('military_import', ROOT / 'scripts/import-military-2026.py')
legacy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(legacy)
sys.stdout.reconfigure(encoding='utf-8')
DATA = ROOT / 'pdf-extracts/militares-2026'
# Reviewed against the original cadernos. Full column width keeps axis labels,
# legends and vertex names that extend beyond the vector drawing itself.
FIGURE_RANGES = {
    'espcex-dia-1': {23: [(101, 265)], 25: [(91, 228)], 26: [(150, 284)],
        29: [(204, 400)], 31: [(434, 603)], 32: [(165, 298)],
        37: [(352, 421)], 38: [(102, 202)], 42: [(378, 504)],
        43: [(163, 484)], 44: [(137, 187)]},
    'espcex-dia-2': {1: [(158, 378)], 6: [(113, 369)], 7: [], 9: [(388, 522)],
        13: [(78, 223)], 16: [(276, 422)], 17: [(76, 247)],
        20: [(291, 445)], 25: [(78, 280)], 31: [(87, 264)], 35: [(78, 313)]},
}


def apply_reviewed_text(exam):
    overrides = json.loads((ROOT / 'docs/military-text-overrides.json').read_text(encoding='utf-8'))
    esa = exam['source'] == 'esa'
    general = exam['slug'] == 'esa-2026-geral'
    common_keys = {1: '1', 2: '2', 7 if general else 5: 'polynomial',
                   10 if general else 6: 'parallelepiped', 11 if general else 8: 'logarithms',
                   14 if general else 10: 'ellipse'}
    for row in exam['questions']:
        if esa and row['number'] in common_keys:
            row.update(overrides['esa-common'][common_keys[row['number']]])
        row.update(overrides.get(exam['slug'], {}).get(str(row['number']), {}))
        # PDF vectors over segment names become readable letter pairs.
        for key in ['text', 'support']:
            if row.get(key):
                row[key] = re.sub(r'[\u20d7\u20e1\u0305]', '', row[key]).replace('diferenciandose', 'diferenciando-se').replace('sulamericanos', 'sul-americanos')
        row['options'] = [value.replace('diferenciandose', 'diferenciando-se').replace('sulamericanos', 'sul-americanos') for value in row['options']]
        if exam['slug'] == 'esa-2026-musica':
            row['options'] = [re.sub(r'\b(Lá|Sol|Ré|Mi|Si|Dó|Fá) b\b', r'\1♭', text) for text in row['options']]
        if exam['slug'] == 'esa-2026-musica' and row['number'] == 43:
            row['support_image'] = '/militares-2026/esa-2026-musica-partitura-batista-de-melo.png'
        if esa and row['number'] == (42 if general else 30):
            row['support'] = None
    return exam


def inside(obj, box):
    return box[0] <= (obj['x0'] + obj['x1']) / 2 <= box[2] and box[1] <= (obj['top'] + obj['bottom']) / 2 <= box[3]


def text_of(page, box, excluded=(), omit=()):
    chars = [dict(c) for c in page.chars if inside(c, box) and not any(inside(c, b) for b in excluded) and id(c) not in omit]
    for c in chars:
        c['text'] = ''.join(unicodedata.normalize('NFKC', x) if 0x1D400 <= ord(x) <= 0x1D7FF else x for x in c['text'])
    superscripts = str.maketrans('0123456789+-', '⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻')
    subscripts = str.maketrans('0123456789+-', '₀₁₂₃₄₅₆₇₈₉₊₋')
    for c in chars:
        if c['text'] not in '0123456789':
            continue
        anchors = [v for v in chars if v['fontname'] == c['fontname'] and v['x0'] < c['x0'] and -1 < c['x0'] - v['x1'] < 3 and v['size'] > c['size'] * 1.12 and abs(v['top'] - c['top']) < 7 and v['text'].strip()]
        if anchors:
            anchor = min(anchors, key=lambda v: c['x0'] - v['x1'])
            if c['bottom'] < anchor['bottom'] - 2:
                c['text'] = c['text'].translate(superscripts)
            elif c['bottom'] > anchor['bottom'] + 1:
                c['text'] = c['text'].translate(subscripts)
            else:
                continue
            c['top'], c['bottom'] = anchor['top'], anchor['bottom']
            c['doctop'] = anchor['doctop']
    # Recover stacked fractions as ordinary readable text rather than losing
    # the division bar or swapping the numerator and denominator.
    removed = set()
    fractions = []
    for bar in page.rects + page.lines:
        if not inside(bar, box) or any(inside(bar, b) for b in excluded) or not (bar['height'] < 1.6 and 4 < bar['width'] < 150):
            continue
        above = [c for c in chars if bar['x0'] - 1 <= (c['x0'] + c['x1']) / 2 <= bar['x1'] + 1 and bar['top'] - 18 < c['top'] and c['bottom'] < bar['top'] + 1 and c['text'].strip()]
        below = [c for c in chars if bar['x0'] - 1 <= (c['x0'] + c['x1']) / 2 <= bar['x1'] + 1 and bar['bottom'] - 1 < c['top'] and c['bottom'] < bar['bottom'] + 18 and c['text'].strip()]
        if not above or not below or not any('Math' in c['fontname'] or c['text'].isdigit() for c in below):
            continue
        if any(id(c) in removed for c in above + below):
            continue
        numerator = extract_text(above, x_tolerance=1.5, y_tolerance=3).replace('\n', ' ')
        denominator = extract_text(below, x_tolerance=1.5, y_tolerance=3).replace('\n', ' ')
        value = f'{numerator}/{denominator}' if numerator.isdigit() and denominator.isdigit() else f'({numerator})/({denominator})'
        fractions.append(dict(above[0], text=value, x0=bar['x0'], x1=bar['x1'], top=bar['top'] - 6, bottom=bar['top'] + 6, doctop=page.initial_doctop + bar['top'] - 6))
        removed.update(id(c) for c in above + below)
    chars = [c for c in chars if id(c) not in removed] + fractions
    text = extract_text(chars, x_tolerance=1.5, y_tolerance=3) or ''
    text = re.sub(r'(?<=\w)-\n(?=\w)', '', text)
    return re.sub(r'[ \t]+', ' ', text.replace('\x07', ' ')).strip()


def labels_of(page, region, end, esa):
    box = (region['x0'], region['top'], region['x1'], end)
    if esa:
        labels = [dict(c, letter='ABCDE'['ⒶⒷⒸⒹⒺ'.index(c['text'])], ids=[id(c)]) for c in page.chars if inside(c, box) and c['text'] in 'ⒶⒷⒸⒹⒺ']
    else:
        labels = []
        for line in page.crop(box).extract_text_lines():
            match = re.match(r'^\(([A-E])\)', line['text'])
            if match:
                cs = line['chars'][:3]
                labels.append(dict(letter=match[1], x0=min(c['x0'] for c in cs), x1=max(c['x1'] for c in cs), top=min(c['top'] for c in cs), bottom=max(c['bottom'] for c in cs), ids=[]))
    assert sorted(c['letter'] for c in labels) == list('ABCDE'), (region['number'], labels)
    return sorted(labels, key=lambda c: c['letter'])


def fraction_start(page, label, right):
    bars = [o for o in page.rects + page.lines if o['height'] < 1.6 and 4 < o['width'] < 100 and label['x1'] <= o['x0'] < right and label['top'] - 8 < o['top'] < label['bottom'] - 1]
    return label['top'] - (12 if bars else 1)


def graphic_boxes(page, box, esa):
    # Raster figures include maps, comics and diagrams. Internal rectangular
    # rules identify tables; printed page/question borders are excluded.
    boxes = [(o['x0'], o['top'], o['x1'], o['bottom']) for o in page.images if inside(o, box)]
    rules = [o for o in page.rects + page.lines if inside(o, box) and o['width'] > 35 and o['height'] < 2 and o['x0'] > box[0] + 30 and o['x1'] < box[2] - 15]
    groups = []
    for o in sorted(rules, key=lambda o: o['top']):
        if groups and o['top'] - groups[-1][-1]['top'] < 32:
            groups[-1].append(o)
        else:
            groups.append([o])
    for group in groups:
        if len({round(o['top']) for o in group}) >= 2 and max(o['top'] for o in group) - min(o['top'] for o in group) > 15:
            boxes.append((min(o['x0'] for o in group) - 3, min(o['top'] for o in group) - 18, max(o['x1'] for o in group) + 3, max(o['bottom'] for o in group) + 3))
    if not esa:
        # Vector figures in Vunesp PDFs are separated from prose by whitespace.
        objects = [o for o in page.curves + page.rects + page.lines if inside(o, box) and (o['height'] > 12 or o['width'] > 22) and o['width'] < box[2] - box[0] - 2]
        groups = []
        for o in sorted(objects, key=lambda o: o['top']):
            b = [o['x0'], o['top'], o['x1'], o['bottom']]
            hits = [g for g in groups if b[0] <= g[2] + 12 and b[2] >= g[0] - 12 and b[1] <= g[3] + 12 and b[3] >= g[1] - 12]
            for g in hits:
                b = [min(b[0], g[0]), min(b[1], g[1]), max(b[2], g[2]), max(b[3], g[3])]
                groups.remove(g)
            groups.append(b)
        boxes += [tuple(g) for g in groups if g[3] - g[1] > 28 and g[2] - g[0] > 35]
    # Keep raster figures when vectors overlap; merge overlapping crops.
    merged = []
    for b in boxes:
        b = [max(box[0], b[0]), max(box[1], b[1]), min(box[2], b[2]), min(box[3], b[3])]
        hits = [g for g in merged if b[0] <= g[2] and b[2] >= g[0] and b[1] <= g[3] and b[3] >= g[1]]
        for g in hits:
            b = [min(b[0], g[0]), min(b[1], g[1]), max(b[2], g[2]), max(b[3], g[3])]
            merged.remove(g)
        merged.append(b)
    return sorted(merged, key=lambda b: b[1])


def normalize_exam(kind, original):
    esa = kind.startswith('esa')
    slug = original['slug']
    with pdfplumber.open(legacy.PDF / f'{kind}.pdf') as doc:
        regions = legacy.find_regions(doc, esa)
        if not esa:
            for region in regions:
                page = doc.pages[region['page']]
                left_column = region['x0'] < page.width / 2
                region['x0'] = 26 if left_column else page.width / 2 + 3
                region['x1'] = page.width / 2 - 3 if left_column else page.width - 23
        passages = {}
        if esa:
            for pi, page in enumerate(doc.pages[1:], 1):
                for line in page.crop((36, 70, page.width - 36, page.height - 36)).extract_text_lines():
                    match = re.match(r'^TEXTO\s+([IVX]+)\b', line['text'])
                    if not match:
                        continue
                    following = [r for r in regions if r['page'] == pi and r['top'] > line['top']]
                    if following:
                        stop = min(r['top'] for r in following)
                        passages[match[1]] = text_of(page, (40, line['top'] - 1, page.width - 40, stop))
        for r, row in zip(regions, original['questions']):
            page = doc.pages[r['page']]
            next_regions = [v for v in regions if v['page'] == r['page'] and v['x0'] == r['x0'] and v['number'] > r['number']]
            end = min([v['top'] for v in next_regions] + [page.height - 36])
            labels = labels_of(page, r, end, esa)
            first = min(c['top'] for c in labels)
            first_label = min(labels, key=lambda c: c['top'])
            stem_end = fraction_start(page, first_label, r['x1'])
            stem_box = (r['x0'], r['top'], r['x1'], stem_end)
            figures = graphic_boxes(page, stem_box, esa)
            if row['number'] in FIGURE_RANGES.get(kind, {}):
                figures = [(r['x0'], top, r['x1'], stop) for top, stop in FIGURE_RANGES[kind][row['number']]]
            marker_ids = [id(c) for c in page.chars if esa and c['x0'] < 66 and abs(c['top'] - r['marker']) < 3 and c['text'].isdigit()]
            row['text'] = re.sub(r'^QUESTÃO\s+\d+\s*', '', text_of(page, stem_box, figures, marker_ids)).strip()
            row['support'] = None
            support_images = []
            for i, box in enumerate(figures, 1):
                support_images.append(legacy.render(page, box, f'{slug}-q{row["number"]}-figura-{i}.png'))
            options = []
            for label in labels:
                same_row = [c for c in labels if abs(c['top'] - label['top']) < 8]
                right = min([c['x0'] - 2 for c in same_row if c['x0'] > label['x0'] + 10] + [r['x1']])
                lane = [c for c in labels if abs(c['x0'] - label['x0']) < 15 and c['top'] > label['top'] + 8]
                bottom = min([fraction_start(page, c, right) for c in lane] + [end])
                top = fraction_start(page, label, right)
                # Stop the final alternative before the next shared passage.
                for line in page.crop((r['x0'], max(top, 0), r['x1'], bottom)).extract_text_lines():
                    if line['top'] > label['top'] and line['text'].startswith(('TEXTO', 'REDAÇÃO', 'QUESTÃO DISCURSIVA')):
                        bottom = min(bottom, line['top'] - 2)
                option = text_of(page, (label['x1'] + 1, top, right, bottom))
                options.append(re.sub(r'\s+', ' ', option).strip())
            assert all(options), (slug, row['number'], options)
            row['options'] = options
            row['page'] = r['page'] + 1
            if esa:
                match = re.search(r'Texto\s+([IVX]+)\b', row['text'], re.I)
                if match:
                    row['support'] = passages.get(match[1].upper())
                # Question 42/30 uses the dialogue printed inside question 41/29.
                if row['number'] == (42 if kind == 'esa-geral' else 30):
                    previous = original['questions'][row['number'] - 2]
                    row['support'] = previous['text']
                if kind == 'esa-musica' and 43 <= row['number'] <= 46:
                    support_images.insert(0, legacy.render(doc.pages[19], (40, 84, 559, 810), f'{slug}-partitura-batista-de-melo.png'))
            else:
                contexts = []
                n = row['number']
                if kind.endswith('1'):
                    if 1 <= n <= 4: contexts = [(2, 30, 26, doc.pages[2].width / 2 - 8, 806)]
                    elif 7 <= n <= 14: contexts = [(4, 30, 322, doc.pages[4].width / 2 - 8, 644)]
                    elif 16 <= n <= 20: contexts = [(6, 26, 26, doc.pages[6].width / 2 - 3, 610)]
                    elif 21 <= n <= 22: contexts = [(8, 26, 26, doc.pages[8].width / 2 - 3, 204)]
                else:
                    if 45 <= n <= 47: contexts = [(15, 30, 26, doc.pages[15].width / 2 - 8, 379)]
                    elif 48 <= n <= 54: contexts = [(16, 30, 26, doc.pages[16].width / 2 - 8, 751)]
                    elif 55 <= n <= 56: contexts = [(18, 30, 26, doc.pages[18].width / 2 - 8, 399)]
                for pi, x0, top, x1, stop in contexts:
                    cp = doc.pages[pi]
                    context_box = (x0, top, x1, stop)
                    context_figures = graphic_boxes(cp, context_box, False)
                    if kind == 'espcex-dia-1' and 21 <= n <= 22:
                        context_figures = [(x0, 120, x1, 191)]
                    row['support'] = text_of(cp, context_box, context_figures) or None
                    for i, box in enumerate(context_figures, 1):
                        support_images.append(legacy.render(cp, box, f'{slug}-apoio-{pi + 1}-figura-{i}.png'))
            row['support_image'] = ','.join(dict.fromkeys(support_images)) or None
    return apply_reviewed_text(original)


if __name__ == '__main__':
    original = json.loads((DATA / 'catalogo.json').read_text(encoding='utf-8'))
    backup = DATA / 'catalogo-recortes-originais.json'
    if not backup.exists():
        backup.write_text(json.dumps(original, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    output = []
    for exam in original:
        kind = exam['slug'].replace('-2026', '')
        print('Separando texto e figuras:', kind, flush=True)
        output.append(normalize_exam(kind, exam))
        print('Concluído:', len(exam['questions']), 'questões;', sum(bool(q['support_image']) for q in exam['questions']), 'com figuras.', flush=True)
    (DATA / 'catalogo.json').write_text(json.dumps(output, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
