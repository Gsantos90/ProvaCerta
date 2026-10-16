"""Build the reviewed native-text ITA exam and crop only its six Physics figures."""
import hashlib
import json
from pathlib import Path
import pypdfium2 as pdfium
from ita_2026_content import QUESTIONS, MATH_SUPPORT, PHYSICS_SUPPORT, CHEMISTRY_SUPPORT, ENGLISH_SUPPORTS

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'public/provas/ita/2026'
doc = pdfium.PdfDocument(str(OUT / 'primeira-fase.pdf'))
layout = json.loads((ROOT / 'docs/ita-2026-layout.json').read_text(encoding='utf8'))
pages = {}

def image(page, box, name):
    if page not in pages:
        pages[page] = doc[page - 1].render(scale=2).to_pil().convert('RGB')
    pages[page].crop(box).save(OUT / name, optimize=True)
    return '/provas/ita/2026/' + name

# Figure-only boxes relative to the reviewed full-question regions.
figure_boxes = {16: [535, 10, 955, 380], 17: [90, 345, 870, 590],
                18: [400, 230, 960, 580], 21: [15, 350, 960, 870],
                22: [615, 55, 985, 655], 24: [90, 265, 900, 730]}
# Transcribed from the definitive official key, including annulled question 6.
keys = ['D B E C D * A B D E A B', 'B A D C A E B C D E C C',
        'A E D B E B E A B A A C', 'D C C B A D C B B B D C']
answers = ' '.join(keys).split()
subjects = ['Matemática', 'Física', 'Química', 'Língua Inglesa']
questions = []
assert [r['number'] for r in layout] == list(range(1, 49))
assert sorted(QUESTIONS) == list(range(1, 49))
for region in layout:
    n = region['number']
    support = MATH_SUPPORT if n <= 12 else PHYSICS_SUPPORT if n <= 24 else CHEMISTRY_SUPPORT if n <= 36 else ENGLISH_SUPPORTS[37 if n <= 39 else 40 if n <= 41 else 42 if n <= 45 else 46]
    figure = None
    if n in figure_boxes:
        x, y = region['box'][:2]
        left, top, right, bottom = figure_boxes[n]
        figure = image(region['page'], [x + left, y + top, x + right, y + bottom], f'figura-{n}.png')
    questions.append(dict(
        number=n, page=region['page'], subject=subjects[(n - 1) // 12],
        text=QUESTIONS[n]['text'], support=support, supportImage=figure,
        options=QUESTIONS[n]['options'],
        answer='A/B/C/D/E' if n == 6 else answers[n - 1],
        explanation='Questão anulada pelo ITA: a afirmação III admite duas leituras com julgamentos opostos. Ponto atribuído a todos os candidatos.' if n == 6 else None,
    ))
exam = dict(slug='ita-2026-fase-1', source='ita', year=2026, title='ITA 2026 · 1ª fase',
            contentVersion=2, durationMinutes=300, applicationDate='2025-10-05', questions=questions)
(OUT / 'catalogo.json').write_text(json.dumps(exam, ensure_ascii=False, indent=2), encoding='utf8')
# Remove only obsolete assets created by the first ITA import.
obsolete = [f'questao-{n:02}.png' for n in range(1, 49)] + [
    'convencoes-matematica.png', 'constantes-fisica.png', 'constantes-quimica.png',
    'texto-37-39.png', 'texto-40-41.png', 'texto-42-45.png', 'texto-46-48-1.png', 'texto-46-48-2.png',
]
for name in obsolete:
    (OUT / name).unlink(missing_ok=True)
sources = dict(
    index='https://vestibular.ita.br/provas.htm',
    exam='https://vestibular.ita.br/provas/2026_fase1.pdf',
    answerKey='https://vestibular.ita.br/provas/gabarito_2026.pdf',
    hashes={name: hashlib.sha256((OUT / name).read_bytes()).hexdigest() for name in ['primeira-fase.pdf', 'gabarito.pdf']},
)
(ROOT / 'docs/ita-2026-sources.json').write_text(json.dumps(sources, indent=2), encoding='utf8')
print('ITA 2026: 48 enunciados e 240 alternativas em texto; seis figuras de apoio.')
