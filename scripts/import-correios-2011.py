"""Extract the official Correios 2011 Type I exams and definitive answer keys.

Downloads are kept in pdf-extracts/correios-2011. Text is stored separately
from illustrations; the original question/page map is retained for review.
"""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / '.venv/enem-tools'))
import pymupdf as fitz

BASE = ROOT / 'pdf-extracts/correios-2011'
EXAMS = [
    ('atendente-comercial', 'Atendente Comercial', 'COR11_001_11.pdf'),
    ('carteiro', 'Carteiro', 'COR11_002_21.pdf'),
    ('operador-triagem', 'Operador de Triagem e Transbordo', 'COR11_003_31.pdf'),
]


def clean(text):
    return re.sub(r'\s+', ' ', text.replace('\u00ad', '')).strip()


def extract():
    records = []
    for role, label, filename in EXAMS:
        doc = fitz.open(BASE / filename)
        answer_doc = fitz.open(BASE / ('Definitivo_' + filename.upper().replace('.PDF', '.PDF')))
        answers = []
        for line in answer_doc[0].get_text(sort=True).splitlines():
            if line.strip().startswith('Gabarito'):
                answers.extend(re.findall(r'\b[ABCDEX]\b', line.replace('Gabarito', '')))
        assert len(answers) == 60, (role, answers)
        shared = {}
        questions = []
        for index, page in enumerate(doc):
            lines = []
            for block in page.get_text('dict')['blocks']:
                for line in block.get('lines', []):
                    text = ''.join(s['text'] for s in line['spans']).strip()
                    lines.append((text, fitz.Rect(line['bbox'])))
            headings = [(int(m.group(1)), box) for text, box in lines
                        if (m := re.fullmatch(r'QUESTÃO\s+(\d+)', text))]
            if not headings:
                continue
            right = [box.x0 for _, box in headings if box.x0 > 200]
            divider = min(right) - 8.5 if right else page.rect.width
            for x0, x1 in [(25, divider), (divider, page.rect.width - 25)]:
                if x0 >= x1:
                    continue
                markers = []
                for number, box in headings:
                    if x0 <= box.x0 < x1:
                        markers.append((box.y0, box.y1, 'question', number))
                for text, box in lines:
                    if not (x0 <= box.x0 < x1):
                        continue
                    m = re.search(r'Texto para as questões\s+(?:de\s+)?(\d+)\s+(a|e)\s+(\d+)', text)
                    if m:
                        numbers = list(range(int(m[1]), int(m[3]) + 1)) if m[2] == 'a' else [int(m[1]), int(m[3])]
                        markers.append((box.y0, box.y1, 'support', numbers))
                markers.sort()
                for pos, (top, start, kind, value) in enumerate(markers):
                    end = markers[pos + 1][0] - 3 if pos + 1 < len(markers) else page.rect.height - 40
                    rect = fitz.Rect(x0, start + 1, x1, end)
                    text = page.get_text(clip=rect, sort=True)
                    text = re.sub(r'(?m)^.*(?:RASCUNHO|Cargo: Agente dos Correios|Caderno \d+-BRANCO).*$','',text).strip()
                    image_boxes = [list(info['bbox']) for info in page.get_image_info()
                                   if rect.contains(fitz.Rect(info['bbox']))]
                    if kind == 'support':
                        for n in value:
                            shared[n] = {'text': text, 'page': index + 1, 'images': image_boxes}
                        continue
                    matches = list(re.finditer(r'(?m)^\s*([ABCDE])\s+', text))
                    candidates = [i for i in range(len(matches)-4)
                                  if [m[1] for m in matches[i:i+5]] == list('ABCDE')]
                    options = []
                    stem = text
                    if candidates:
                        chosen = matches[candidates[0]:candidates[0]+5]
                        stem = text[:chosen[0].start()]
                        options = [clean(text[m.end():chosen[i+1].start() if i<4 else len(text)])
                                   for i,m in enumerate(chosen)]
                    q = {'slug': 'correios-2011-' + role, 'number': value,
                         'subject': 'Informática' if value <= 20 else 'Matemática' if value <= 40 else 'Língua Portuguesa',
                         'text': clean(stem), 'support': '', 'support_image': '',
                         'options': options, 'answer': 'ANULADA' if answers[value - 1] == 'X' else answers[value - 1],
                         'explanation': 'Gabarito definitivo do CESPE/UnB, Correios 2011, Tipo I: ' +
                                        ('questão anulada.' if answers[value - 1] == 'X' else 'alternativa ' + answers[value - 1] + '.'),
                         'page': index + 1, 'rect': list(rect), 'images': image_boxes, 'raw': text}
                    questions.append(q)
                    page.get_pixmap(matrix=fitz.Matrix(1.5, 1.5), clip=rect).save(str(BASE / f'{role}-q{value:02}.png'))
            # The full-page extraction is useful when checking line references.
        for q in questions:
            if q['number'] in shared:
                q['support'] = shared[q['number']]['text']
                q['shared'] = shared[q['number']]
        questions.sort(key=lambda q: q['number'])
        assert [q['number'] for q in questions] == list(range(1, 61)), role
        (BASE / f'{role}-draft.json').write_text(json.dumps(questions, ensure_ascii=False, indent=2), encoding='utf-8')
        for q in questions:
            if len(q['options']) != 5:
                print('REVIEW', role, q['number'], len(q['options']), q['raw'][:130])
        records.extend(questions)
    return records


if __name__ == '__main__':
    extract()
