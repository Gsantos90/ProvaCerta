"""Extract archival PMERJ questions with matching published answer keys.

Only complete objective booklets are exported. The review manifest records
source files, question regions and any visual fallback needed for fidelity.
"""
import importlib.util
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / '.venv/enem-tools'))
import pymupdf as fitz

BASE = ROOT / 'pdf-extracts/pmerj-ate-2020'
ASSETS = ROOT / 'public/pmerj-arquivo'
module = importlib.util.spec_from_file_location('downloads', ROOT / 'scripts/download-pmerj-archives.py')
downloads = importlib.util.module_from_spec(module)
module.loader.exec_module(downloads)

def clean(text):
    return re.sub(r'\s+', ' ', text.replace('\u00ad', '').replace('\ufffd', '')).strip()

def lines(page):
    return [( ''.join(s['text'] for s in line['spans']).strip(), fitz.Rect(line['bbox']))
            for block in page.get_text('dict')['blocks'] for line in block.get('lines', [])]

def key_for(name):
    doc = fitz.open(BASE / (name + '-gab.pdf'))
    text = '\n'.join(page.get_text(sort=True) for page in doc)
    if name == 'soldado2010':
        # Scanned official CRSP key, PROVA ALFA; visually checked row by row.
        values = 'C C A B C A D D B C C A D B A B B D A A A C B B D A A C D B C A X B C A B B D D'.split()
        return {i + 1: value for i, value in enumerate(values)}
    if name.startswith('oficial'):
        text = text.split('Prova: T')[1].split('Cargo:')[0]
        values = []
        for line in text.splitlines():
            if re.fullmatch(r'[A-E*\s]+', line) and line.strip():
                values.extend(re.findall(r'[A-E*]', line))
        assert len(values) == 60, (name, values)
        return dict(enumerate(values, 1))
    pairs = re.findall(r'\b(\d{1,2})\.\s*([A-D])\b', text)
    result = {int(n): a for n, a in pairs}
    result.update({int(n): 'X' for n in re.findall(r'\b(\d{1,2})\.\s*ANULADA\b', text)})
    return result

def extract_regions(name, count):
    doc = fitz.open(BASE / (name + '.pdf'))
    health = name == 'enfermagem2010' or name.startswith('archive-')
    full = name == 'soldado2010'
    regions = {}
    current = None
    for pi, page in enumerate(doc):
        if health and pi < 2:
            continue
        if name.startswith('oficial') and pi == 0:
            continue
        if full and pi == 0:
            continue
        entries = lines(page)
        if health and any(re.fullmatch(r'DISCURSIVAS|QUEST[ÕO]ES DISCURSIVAS', text, re.I) for text, _ in entries):
            break
        headings = [(int(m[1]), box) for text, box in entries
                    if (m := re.match(r'^\(?Quest[ãa]o\s+(\d+)\b', text))]
        if not headings:
            continue
        if any(n > count for n, _ in headings):
            headings = [(n, box) for n, box in headings if n <= count]
            if not headings:
                break
        divider = 293 if not full else page.rect.width
        top = (160 if pi == 2 else 35) if health else 30
        bottom = page.rect.height - (45 if health else 30)
        for x0, x1 in ([(30, page.rect.width - 28)] if full else [(20, divider), (divider, page.rect.width - 20)]):
            markers = sorted([(box.y0, box.y1, n) for n, box in headings if x0 <= box.x0 < x1])
            if not markers:
                written = any(x0 <= box.x0 < x1 and re.match(r'^Quest[ãa]o\s+5[1-5]\b', text) for text, box in entries)
                if current is not None and not written:
                    rect = fitz.Rect(x0, top, x1, bottom)
                    raw = page.get_text(clip=rect, sort=True).strip()
                    if len(raw) > 30:
                        regions[current].append({'page': pi + 1, 'bbox': list(rect), 'raw': raw})
                continue
            if current is not None and markers[0][0] > top + 20:
                prefix = fitz.Rect(x0, top, x1, markers[0][0] - 2)
                prefix_text = page.get_text(clip=prefix, sort=True).strip()
                if len(prefix_text) > 30:
                    regions[current].append({'page': pi + 1, 'bbox': list(prefix), 'raw': prefix_text})
            for i, (y0, y1, n) in enumerate(markers):
                end = markers[i + 1][0] - 2 if i + 1 < len(markers) else bottom
                # Stop before the separate written-response section.
                later = [box.y0 for text, box in entries if x0 <= box.x0 < x1 and box.y0 > y1
                         and re.match(r'^Quest[ãa]o\s+(5[1-5])\b', text)]
                if later:
                    end = min(end, min(later) - 2)
                rect = fitz.Rect(x0, y1 + 1, x1, end)
                raw = page.get_text(clip=rect, sort=True)
                # Repeated footer and the printed page number are not content.
                raw = re.sub(r'(?m)^.*(?:PMERJ - Concurso|Pág\. \d+|\(\s*\d+\s*\)).*$', '', raw)
                regions.setdefault(n, []).append({'page': pi + 1, 'bbox': list(rect), 'raw': raw})
                current = n
    assert sorted(regions) == list(range(1, count + 1)), (name, sorted(regions))
    return doc, regions

def row_for(name, slug, label, n, pieces, doc, answer, subject):
    raw = '\n'.join(piece['raw'] for piece in pieces).strip()
    matches = list(re.finditer(r'(?m)^\s*\(?([A-E])\)\s*', raw))
    expected = 'ABCDE' if name.startswith('oficial') else 'ABCD'
    good = ''.join(m[1] for m in matches) == expected
    options = [clean(raw[m.end():matches[i + 1].start() if i + 1 < len(matches) else len(raw)])
               for i, m in enumerate(matches)] if good else []
    stem = clean(raw[:matches[0].start()]) if good else clean(raw)
    image_paths = []
    graphical = any(fitz.Rect(image['bbox']).intersects(fitz.Rect(p['bbox']))
                    for p in pieces for image in doc[p['page'] - 1].get_image_info())
    if not good or any(not o for o in options) or graphical:
        for i, piece in enumerate(pieces):
            filename = f'{slug}-q{n:02}-{i + 1}-v3.png'
            if not (ASSETS / filename).exists():
                doc[piece['page'] - 1].get_pixmap(matrix=fitz.Matrix(1.7, 1.7), clip=fitz.Rect(piece['bbox'])).save(str(ASSETS / filename))
            image_paths.append('/pmerj-arquivo/' + filename)
        if not good or any(not o for o in options):
            options = ['Alternativa ' + a + ' — consulte o caderno na imagem.' for a in expected]
            stem = 'Leia o enunciado e as alternativas da questão ' + str(n) + ' na imagem do caderno.'
    annulled = answer in ('X', '*')
    explanation = f'Gabarito publicado da PMERJ — {label}: '
    if annulled:
        explanation += 'questão anulada. Não existe uma única alternativa exigida para pontuação; a revisão considera a anulação publicada.'
    else:
        explanation += 'alternativa ' + answer + '.'
        if good:
            explanation += ' Resposta indicada no gabarito: ' + options[ord(answer) - ord('A')] + '.'
            if re.search(r'incorreta|exceto|não é|não corresponde', stem, re.I):
                explanation += ' Atenção: o enunciado pede uma exceção ou uma afirmação incorreta; a alternativa selecionada não deve ser interpretada como uma regra correta.'
        else:
            explanation += ' Consulte o enunciado original nas imagens para relacionar esta alternativa aos dados apresentados. Este comentário registra o gabarito, sem atribuir à banca uma resolução que ela não publicou.'
    return {'number': n, 'subject': subject, 'text': stem, 'support': '',
            'support_image': json.dumps(image_paths) if image_paths else '', 'options': options,
            'answer': 'A/B/C/D/E' if annulled else answer,
            'explanation': explanation,
            'regions': pieces, 'visual_fallback': not good}

def health_label(role):
    words = {'medico':'Médico', 'odontologia':'Odontologia', 'farmacia':'Farmácia', 'fisioterapia':'Fisioterapia',
             'psicologia':'Psicologia', 'enfermagem':'Enfermagem', 'pedagogia':'Pedagogia', 'assistente':'Assistente',
             'protese':'Prótese', 'pediatrica':'Pediátrica', 'neurologica':'Neurológica', 'pneumologia':'Pneumologia',
             'clinica':'Clínica', 'pediatria':'Pediatria', 'ortopedia':'Ortopedia', 'fisiatria':'Fisiatria',
             'patologia':'Patologia', 'neurocirurgia':'Neurocirurgia', 'neurologia':'Neurologia',
             'gastroenterologia':'Gastroenterologia', 'ginecologia':'Ginecologia', 'oncologia':'Oncologia',
             'obstetricia':'Obstetrícia', 'endocrinologia':'Endocrinologia', 'otorrinolaringologia':'Otorrinolaringologia',
             'bioquimica':'Bioquímica', 'hemodinamica':'Hemodinâmica', 'social':'Social', 'toracica':'Torácica'}
    return ' '.join(words.get(w, w.capitalize()) for w in role.split('-'))

def quoted(value):
    return "'" + str(value).replace("'", "''") + "'"

def export(exams, rejected):
    output = ['-- Cadernos e gabaritos publicados da PMERJ. Fonte e conferência: docs/pmerj-arquivos.json', 'begin;']
    for exam in exams:
        output.append('insert into public.exams(slug,title,source,year) values (' + ','.join(quoted(v) for v in [exam['slug'], exam['title'], 'pmerj', exam['year']]) + ') on conflict(slug) do nothing;')
        for q in exam['questions']:
            values = [str(q['number'])] + [quoted(q[k]) for k in ['subject', 'text', 'support', 'support_image']] + [quoted(json.dumps(q['options'], ensure_ascii=False)) + '::jsonb', quoted(q['answer']), quoted(q['explanation'])]
            output.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,' + ','.join(values) + ' from public.exams where slug=' + quoted(exam['slug']) + ' on conflict(exam_id,number) do nothing;')
    output.append('commit;')
    (ROOT / 'supabase/seed-pmerj-arquivos.sql').write_text('\n'.join(output) + '\n', encoding='utf-8')
    (BASE / 'importacao.json').write_text(json.dumps(exams, ensure_ascii=False, indent=2), encoding='utf-8')
    (BASE / 'pendencias.json').write_text(json.dumps(rejected, ensure_ascii=False, indent=2), encoding='utf-8')

def run(only=None):
    ASSETS.mkdir(parents=True, exist_ok=True)
    definitions = [('soldado2010', 'pmerj-2010-soldado', 'Soldado', 'Soldado Policial Militar', '2010', 40),
                   ('oficial2017', 'pmerj-2017-oficial', 'Oficial', 'Oficial Policial Militar — QOPM Masculino', '2017', 60),
                   ('oficial2019', 'pmerj-2019-oficial', 'Oficial', 'Oficial Policial Militar — QOPM', '2019', 60),
                   ('enfermagem2010', 'pmerj-2010-enfermagem-geral', 'Enfermagem Geral', 'Oficial de Saúde — Enfermagem Geral', '2010', 50)]
    for archive, role in downloads.HEALTH.items():
        label = health_label(role)
        definitions.append(('archive-' + str(archive), 'pmerj-2010-' + role, label, 'Oficial — ' + label, '2010', 40 if archive == 8917 else 50))
    if only:
        definitions = [item for item in definitions if item[0] == only]
    exams = json.loads((BASE / 'importacao.json').read_text(encoding='utf-8')) if only else []
    rejected = [p for p in json.loads((BASE / 'pendencias.json').read_text(encoding='utf-8')) if p['file'] != only] if only else []
    for name, slug, role, label, year, count in definitions:
        try:
            if not (BASE / (name + '.pdf')).exists() or not (BASE / (name + '-gab.pdf')).exists():
                raise ValueError('Caderno ou gabarito indisponível no arquivo público.')
            answers = key_for(name)
            assert sorted(answers) == list(range(1, count + 1)), (name, len(answers))
            doc, regions = extract_regions(name, count)
            rows = []
            for n, pieces in sorted(regions.items()):
                subject = (next(s for end, s in [(15,'Direito Administrativo'),(30,'Direito Constitucional'),(45,'Direito Penal'),(55,'Direito Processual Penal'),(60,'Direito Penal Militar')] if n <= end)
                           if name.startswith('oficial') else role if name.startswith('archive-') or name == 'enfermagem2010' else next(s for end,s in [(10,'Língua Portuguesa'),(15,'História'),(20,'Geografia'),(25,'Direitos Humanos'),(30,'Sociologia'),(35,'Informática'),(40,'Legislação de Trânsito')] if n <= end))
                rows.append(row_for(name, slug, label, n, pieces, doc, answers[n], subject))
            if name == 'soldado2010':
                support = doc[0].get_text(sort=True)
                support = support[support.index('TEXTO I'):]
                support = re.sub(r'(?m)^\s*\d+\s*$', '', support)
                for q in rows[:8]:
                    q['support'] = support.strip()
                full_text = '\n'.join(page.get_text(sort=True) for page in doc)
                second = full_text.split('TEXTO II', 1)[1].split('Questão 9', 1)[0]
                for q in rows[8:10]:
                    q['support'] = 'TEXTO II\n' + second.strip()
                rows[7]['options'][-1] = rows[7]['options'][-1].split('TEXTO II')[0].strip()
            exams = [e for e in exams if e['slug'] != slug]
            exams.append({'slug':slug,'role':role,'title':'PMERJ ' + year + ' — ' + label,'year':year,'files':downloads.FILES[name],'questions':rows})
            print('OK', slug, count, 'visual', sum(q['visual_fallback'] for q in rows), flush=True)
        except (OSError, AssertionError, ValueError, KeyError) as error:
            rejected.append({'file':name,'reason':str(error)})
            print('REVIEW', name, str(error)[:180], flush=True)
    export(exams, rejected)

if __name__ == '__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    run(sys.argv[1] if len(sys.argv) > 1 else None)
