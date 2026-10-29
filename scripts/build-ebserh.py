"""Build the three pharmacist exams from public booklets and definitive keys.

2023 text is the publicly rendered transcription of IBFC_160 (not a simulation).
Download provenance is kept in pdf-extracts/ebserh; no answers are inferred.
"""
import html
import json
import re
import shutil
from pathlib import Path
import fitz

ROOT = Path(__file__).resolve().parents[1]
D = ROOT / 'pdf-extracts/ebserh'
OUT = ROOT / 'public/provas/ebserh'
OUT.mkdir(parents=True, exist_ok=True)

def clean(text, reflow=True):
    text = re.sub(r'<!--.*?-->', '', text)
    text = re.sub(r'(?m)^pcimarkpci.*\n?', '', text)
    text = re.sub(r'(?m)^www\.pciconcursos\.com\.br.*\n?', '', text)
    text = re.sub(r'IBFC_160\s*\d*', '', text)
    text = re.sub(r'(?m)^\s*(LÍNGUA PORTUGUESA|RACIOCÍNIO LÓGICO|LEGISLAÇÃO\s*[-–]\s*SUS|LEGISLAÇÃO\s*[-–]\s*EBSERH|CONHECIMENTOS ESPECÍFICOS)\s*$', '', text)
    text = re.sub(r'(?m)^\s*(?:CONHECIMENTOS BÁSICOS|Língua Portuguesa|LINGUA PORTUGUESA|Legislação EBSERH|Políticas Públicas de Saúde e Educação|NOÇÕES DE INFORMÁTICA|HISTÓRIA E GEOGRAFIA DO AMAPÁ|LEGISLAÇÃO GERAL|LEGISLAÇÃO ESPECÍFICA - EBSERH|RASCUNHO)\s*$', '', text)
    return re.sub(r'\s+' if reflow else r'[ \t]+', ' ', text).strip()

def pdf_stream(path, year):
    doc = fitz.open(path)
    entries = []
    for page_index in range(2, len(doc)):
        page = doc[page_index]
        # Read each column separately: prevents interleaving questions/options.
        for col, (left, right) in enumerate([(30, 297), (298, 568)]):
            rect = fitz.Rect(left, 60 if year == '2025' else 45, right, 785 if year == '2025' else 808)
            lines = []
            for block in page.get_text('dict', clip=rect)['blocks']:
                for line in block.get('lines', []):
                    text = ''.join(s['text'] for s in line['spans']).strip()
                    if text: lines.append((line['bbox'][1], line['bbox'][0], text, line['bbox']))
            # Preserve line geometry for question crops and shared supporting texts.
            for y, x, text, bbox in sorted(lines):
                entries.append({'text': text, 'page': page_index+1, 'col': col, 'bbox': list(bbox)})
    return doc, entries

def key(year):
    path = D / ('a2025.pdf' if year == '2025' else f'a{year}pdf.pdf')
    doc = fitz.open(path)
    text = doc[13].get_text().split('Grupo - Farmácia - TIPO  2')[0] if year == '2025' else doc[0].get_text()
    letters = re.findall(r'(?m)^\s*([A-E*])\s*$', text)
    assert len(letters) == 60, (year, len(letters))
    return letters

def subject(year, n):
    if year == '2025':
        return 'Língua Portuguesa' if n <= 10 else 'Legislação EBSERH' if n <= 15 else 'Políticas Públicas de Saúde e Educação' if n <= 20 else 'Conhecimentos Específicos — Farmácia'
    if year == '2023':
        return ['Língua Portuguesa', 'Raciocínio Lógico', 'Legislação SUS', 'Legislação EBSERH', 'Conhecimentos Específicos — Farmácia'][min((n-1)//10, 4)]
    for end, label in [(10,'Língua Portuguesa'),(14,'Raciocínio Lógico'),(18,'Noções de Informática'),(22,'História e Geografia do Amapá'),(26,'Legislação Geral'),(30,'Legislação EBSERH'),(60,'Conhecimentos Específicos — Farmácia')]:
        if n <= end: return label

for year in ['2025', '2023', '2022']:
    answers = key(year)
    scope = ' — HU-UNIFAP' if year == '2022' else ''
    title = f'EBSERH {year} — Farmacêutico{scope}'
    slug = f'ebserh-{year}-farmaceutico'
    if year == '2023':
        raw = clean((D/'2023-text.txt').read_text(encoding='utf8'), False)
        matches = list(re.finditer(r'(?m)^\s*(\d{1,2})\)\s+', raw))
        stream = None
    else:
        doc, stream = pdf_stream(D / ('2025.pdf' if year == '2025' else 'p2022.pdf'), year)
        raw = '\n'.join(e['text'] for e in stream)
        matches = list(re.finditer(r'(?m)^\s*(\d{1,2})\s*$' if year == '2025' else r'(?m)^\s*(\d{1,2})\)\s+', raw))
    assert [int(m[1]) for m in matches] == list(range(1,61)), (year, [m[1] for m in matches])
    # Shared reading passages occur before Q1 and between Q5/Q6 or Q6/Q7.
    shared1 = raw[:matches[0].start()]
    if year == '2023':
        # The transcription includes the cover and general instructions.
        # Only the reading passage (including its glossary) supports Q1-Q5/Q8.
        start = re.search(r'Texto I\s+Nizia Figueira, sua criada', shared1)
        assert start, 'Missing original Texto I title'
        shared1 = shared1[start.start():]
    shared2 = None
    questions = []
    for i, match in enumerate(matches):
        n = int(match[1])
        end = matches[i+1].start() if i+1 < len(matches) else len(raw)
        body = raw[match.end():end].strip()
        if (year == '2023' and n == 5) or (year == '2022' and n == 9):
            body, shared2 = body.split('Texto II',1)
            shared2 = 'Texto II\n'+shared2.strip()
        if year == '2025' and n == 6:
            # Q7 references a new shared passage on the following page.
            idx = body.find('Texto 2')
            if idx >= 0:
                body, shared2 = body[:idx], body[idx:]
                body = re.sub(r'Atenção: use o\s*$', '', body)
        pattern = r'\(([A-E])\)\s*' if year == '2025' else r'(?<![\w(])([a-e])\)\s*'
        opts = list(re.finditer(pattern, body))
        assert len(opts) == 5 and sorted(m[1].upper() for m in opts) == list('ABCDE'), (year, n, body)
        stem = body[:opts[0].start()].strip()
        options = {}
        for j, opt in enumerate(opts):
            options[opt[1].upper()] = clean(body[opt.end():opts[j+1].start() if j+1 < len(opts) else len(body)])
        support = shared1 if n <= (6 if year == '2025' else 5 if year == '2023' else 9) else shared2 if shared2 and n <= 10 else None
        if year == '2023' and n == 8: support = shared1 + '\n\n' + shared2
        start_line = raw[:match.start()].count('\n')
        end_line = raw[:end].count('\n')
        page = stream[start_line]['page'] if stream else None
        q = {'number':n, 'subject':subject(year,n), 'text':clean(stem), 'support':clean(support) if support else None,
             'options':[re.sub(r'\s+', ' ', options[c]).strip() for c in 'ABCDE'],
             'answer':'A/B/C/D/E' if answers[i] == '*' else answers[i], 'annulled':answers[i] == '*', 'page':page,
             'explanation': 'Questão anulada no gabarito definitivo da banca.' if answers[i] == '*' else None}
        if year == '2023' and n == 14:
            q['text'] = q['text'].replace('P Q P ∧ Q V V V F F V F F ', '')
            q['support'] = 'Tabela da questão: colunas P, Q e P ∧ Q (a preencher). Linhas: V e V; V e F; F e V; F e F.'
            table = '''<svg xmlns="http://www.w3.org/2000/svg" width="420" height="270" viewBox="0 0 420 270"><rect width="420" height="270" fill="white"/><g fill="none" stroke="#222" stroke-width="2"><path d="M30 20H390V250H30Z M150 20V250 M270 20V250 M30 66H390 M30 112H390 M30 158H390 M30 204H390"/></g><g font-family="Arial,sans-serif" font-size="24" text-anchor="middle" fill="#111"><text x="90" y="51">P</text><text x="210" y="51">Q</text><text x="330" y="51">P ∧ Q</text><text x="90" y="97">V</text><text x="210" y="97">V</text><text x="90" y="143">V</text><text x="210" y="143">F</text><text x="90" y="189">F</text><text x="210" y="189">V</text><text x="90" y="235">F</text><text x="210" y="235">F</text></g></svg>'''
            (OUT/'2023-q14-tabela.svg').write_text(table,encoding='utf8')
            q['supportImage'] = ['/provas/ebserh/2023-q14-tabela.svg']
        # Include original visual context for questions with tables, diagrams,
        # underlining or mathematical notation, without losing accessible text.
        visual = year == '2025' and (n in [3, 16] or re.search(r'figura|tabela|gráfico|sublinhad', body, re.I)) or year == '2022' and (11 <= n <= 18 or re.search(r'figura|imagem|gráfico|tabela|sublinhad', body, re.I))
        if stream and visual:
            regions = {}
            for entry in stream[start_line:end_line]:
                k = (entry['page'],entry['col'])
                regions.setdefault(k,[]).append(entry['bbox'])
            images=[]
            for (p,c), boxes in regions.items():
                ymin=min(b[1] for b in boxes)-3; ymax=max(b[3] for b in boxes)+3
                clip=fitz.Rect(30 if c == 0 else 298,ymin,297 if c == 0 else 568,ymax)
                name=f'{year}-q{n}-p{p}.png'
                doc[p-1].get_pixmap(matrix=fitz.Matrix(2,2),clip=clip).save(OUT/name)
                images.append('/provas/ebserh/'+name)
            if images:q['supportImage']=images
        questions.append(q)
    exam={'slug':slug,'title':title,'year':year,'role':'farmaceutico','board':'FGV' if year == '2025' else 'IBFC','questions':questions}
    if year == '2023': exam['textSource'] = 'https://www.passeidireto.com/arquivo/133404624/farmaceutico-1'
    (OUT/f'{year}-farmaceutico.json').write_text(json.dumps(exam,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
    if year != '2023':shutil.copyfile(D/('2025.pdf' if year == '2025' else 'p2022.pdf'),OUT/f'{year}-farmaceutico.pdf')
    shutil.copyfile(D/('a2025.pdf' if year == '2025' else f'a{year}pdf.pdf'),OUT/f'{year}-gabarito.pdf')
    print(year,len(questions),'questions; annulled:',[q['number'] for q in questions if q['annulled']])
