"""Import PC-SP 2023, PC-MG 2025 (Investigador) and PC-MG 2026 (TPAG).

MG booklets use text questions, separate shared passages and figure-only media.
SP retains its existing presentation.
Requires PyMuPDF; cached PDFs are kept under pdf-extracts/pc-recent.
"""
import json
import re
import sys
import urllib.request
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf8')
D = Path('pdf-extracts/pc-recent')
D.mkdir(parents=True, exist_ok=True)
BASE = 'https://cdn.cebraspe.org.br/concursos/PC_MG_25_TPAG/arquivos/'
URLS = {
    'sp-prova': 'https://arquivos.qconcursos.com/prova/arquivo_prova/100303/vunesp-2023-pc-sp-investigador-de-policia-prova.pdf',
    'sp-gabarito': 'https://arquivos.qconcursos.com/prova/arquivo_gabarito/100303/vunesp-2023-pc-sp-investigador-de-policia-gabarito.pdf',
    'mg-prova': 'https://conhecimento.fgv.br/sites/default/files/concursos/investigador-de-policia-icns401-tipo-1.pdf',
    'mg-gabarito': 'https://conhecimento.fgv.br/sites/default/files/concursos/gabaritodefinitivo_pcgmpinvestigador.pdf',
    'mg26-geral': BASE + '31AD6B36C6C09518DD76EEECD97707FCCC25AF3CBF9C9643A3A5B739E548A0A6.pdf',
    'mg26-legislacao': BASE + '50D3F9E7506CE63891F71B5BDBA44934CC632924A7F8C9EA8376ADDAF0BC88BC.pdf',
    'mg26-especifico': BASE + '8D683FFE837383D55B0EF95FC92CE94231092310AF95E8B27A51C0D48A365F56.pdf',
    'mg26-geral-gabarito': BASE + 'C61D250D6FA81D954109D271929695930BDC2CF6E777C9B9BF32B966811EB72E.pdf',
    'mg26-legislacao-gabarito': BASE + '982FAA75AC3D0AF6CA2FB43803C8C0233309F3F2F1802CF44235B0EF6F914B27.pdf',
    'mg26-especifico-gabarito': BASE + 'D127CA9DB485BDFFD7CD053335ACE89962D7A841B50452E032D876BF5D65A350.pdf',
}
opener = urllib.request.build_opener(urllib.request.ProxyHandler({}))

def document(name):
    path = D / (name + '.pdf')
    if not path.exists():
        data = opener.open(URLS[name], timeout=40).read()
        assert data.startswith(b'%PDF'), name
        path.write_bytes(data)
    return fitz.open(path)

def clean(text):
    # Preserve lexical hyphens when the PDF wraps a clitic onto the next line.
    text = re.sub(r'(?<=[a-zà-ÿ])-\s*\n(?=(?:se|lhe)\b)', '-\u200b', text)
    text = re.sub(r'(?<=[a-zà-ÿ])[-\u00ad]\s*\n(?=[a-zà-ÿ])', '', text)
    text = text.replace('\u200b', '')
    text = re.sub(r'[\x00-\x08\x0b-\x1f\u00ad]', '', text)
    return re.sub(r'\s+', ' ', text).strip()

def lines(page):
    return [(l['bbox'], ''.join(s['text'] for s in l['spans']).strip())
            for b in page.get_text('dict')['blocks'] for l in b.get('lines', [])]

def keys(name, mode):
    text = '\n'.join(p.get_text(sort=True) for p in document(name))
    if mode == 'sp':
        return {int(n): a for n, a in re.findall(r'\b(\d{1,2})\s*-\s*([A-E*X])\b', text)}
    if mode == 'fgv':
        text = text.split('Prova Tipo 1')[1].split('Questão anulada')[0]
    result = {}
    numbers = []
    for line in text.splitlines():
        tokens = line.split()
        if mode == 'cebraspe' and tokens and tokens[0] in ['Questão', 'Gabarito']:
            tokens = tokens[1:]
        if tokens and all(t.isdigit() for t in tokens):
            numbers = [int(t) for t in tokens]
        elif numbers and tokens and all(re.fullmatch('[A-EX*0]', t) for t in tokens):
            assert len(numbers) == len(tokens), (name, numbers, tokens)
            result.update({n: a for n, a in zip(numbers, tokens) if n})
            numbers = []
    return result

def position(event):
    return event['slot'], event['y']

def extract(name, slug, expected, mode, answers):
    doc = document(name)
    markers, contexts, slots = [], [], []
    for pi, page in enumerate(doc):
        if (mode == 'sp' and pi < 2) or (mode == 'fgv' and pi == 0):
            continue
        full = mode == 'sp' and pi == 2 or mode == 'cebraspe' and name in ['mg26-geral', 'mg26-especifico'] and pi == len(doc)-1
        page_slots = [(25, 570)] if full else [(25, 298), (300, 573)]
        if mode == 'fgv':
            page_slots = [(40, 289), (309, 558)]
        for col, (left, right) in enumerate(page_slots):
            slot = len(slots)
            top, bottom = (50, 787) if mode == 'fgv' else (44, 800)
            if mode == 'sp':
                top, bottom = 24, 797
            if mode == 'cebraspe' and name == 'mg26-geral' and pi == 0:
                top = next(box[1]-2 for box, t in lines(page) if t == 'Texto CG1A1')
            slots.append({'pi': pi, 'left': left, 'right': right, 'top': top, 'bottom': bottom})
            for box, t in lines(page):
                x, y, x1, y1 = box
                if not left <= x < right or not top <= y < bottom:
                    continue
                match = None
                if mode == 'sp' and (abs(x-34)<2 or abs(x-304.7)<2):
                    match = re.match(r'^(\d{2})\.', t)
                elif mode == 'fgv' and (abs(x-42.6)<1 or abs(x-311.69)<1):
                    match = re.fullmatch(r'(\d{1,2})', t)
                elif mode == 'cebraspe':
                    match = re.fullmatch(r'Questão\s+(\d{1,2})', t)
                if match:
                    markers.append({'number': int(match[1]), 'slot': slot, 'y': y-3})
                shared = re.search(r'Leia o (?:poema|texto).*?números (\d+) a (\d+)', t)
                if shared:
                    contexts.append({'first': int(shared[1]), 'last': int(shared[2]), 'slot': slot, 'y': y-3})
                if mode == 'cebraspe' and t == 'Texto CG1A1':
                    contexts.append({'first': 1, 'last': 6, 'slot': slot, 'y': y-3})
                if t == 'Espaço livre':
                    slots[slot]['bottom'] = min(slots[slot]['bottom'], y-4)
    markers.sort(key=position)
    assert [m['number'] for m in markers] == list(expected), (name, [m['number'] for m in markers])
    assert sorted(answers) == list(expected), (name, answers)
    assets = Path('public') / slug
    assets.mkdir(exist_ok=True)

    def regions(start, end):
        result = []
        for si in range(start['slot'], end['slot']+1):
            s = slots[si]
            top = start['y'] if si == start['slot'] else s['top']
            bottom = min(s['bottom'], end['y']-3) if si == end['slot'] else s['bottom']
            if bottom-top>7:
                result.append((s['pi'], fitz.Rect(s['left'], top, s['right'], bottom)))
        return result

    def crop(rects, prefix):
        paths, texts = [], []
        for pi, box in rects:
            path = assets / f'{prefix}-{len(paths)+1}.png'
            if mode == 'sp' or 'figura' in prefix:
                doc[pi].get_pixmap(matrix=fitz.Matrix(2.5, 2.5), clip=box, alpha=False).save(path)
            paths.append('/'+slug+'/'+path.name)
            if mode == 'sp':
                texts.append(doc[pi].get_text(clip=box, sort=True))
            else:
                selected = [(bbox, t) for bbox, t in lines(doc[pi])
                            if box.x0 <= bbox[0] < box.x1 and box.y0 <= bbox[1] < box.y1
                            and not re.search(r'CEBRASPE|<PCMG|FGV CONHECIMENTO|POLÍCIA CIVIL DO ESTADO|Espaço livre', t)
                            and bbox[3]-bbox[1] > 5]
                texts.append('\n'.join(t for bbox, t in sorted(selected, key=lambda row:(round(row[0][1], 1), row[0][0]))))
        return paths, '\n'.join(texts)

    shared = {}
    for context in contexts:
        first = next(m for m in markers if m['number'] == context['first'])
        paths, text = crop(regions(context, first), f'contexto-{context["first"]}-{context["last"]}')
        assert paths, context
        for n in range(context['first'], context['last']+1):
            shared[n] = (paths, text)
    questions, pages = [], {}
    events = sorted(markers+contexts, key=position)
    for m in markers:
        n = m['number']
        after = [e for e in events if position(e)>position(m)]
        end = after[0] if after else {'slot': m['slot'], 'y': slots[m['slot']]['bottom']+3}
        paths, text = crop(regions(m, end), f'q{n}')
        text = re.sub(r'<PCMG[^>]+>', '', text)
        text = re.sub(r'^(?:Questão\s+)?0?'+str(n)+r'\.?\s*', '', text.strip())
        option_pattern = r'(?m)^\s*\(([A-E])\)\s*' if mode != 'cebraspe' else r'(?m)^\s*([A-D])\s+'
        count = 4 if mode == 'cebraspe' else 5
        matches = list(re.finditer(option_pattern, text))
        # The article "A" can begin a command in Portuguese; alternatives are
        # the final complete A-D/A-E sequence, not that opening article.
        matches = matches[-count:]
        parts = [text[:matches[0].start()]] if matches else [text]
        for oi, match in enumerate(matches):
            stop = matches[oi+1].start() if oi+1<len(matches) else len(text)
            parts.extend([match[1], text[match.end():stop]])
        assert parts[1::2] == list('ABCDE'[:count]), (name, n, parts[1::2], text)
        options = [clean(p) for p in parts[2::2]]
        support_paths, support_text = shared.get(n, ([], ''))
        subject = ('Noções de Informática' if n<=10 else 'Raciocínio Lógico' if n<=16 else 'Língua Portuguesa' if n<=36 else 'Noções de Direito' if n<=66 else 'Noções de Criminologia') if mode == 'sp' else ('Língua Portuguesa' if n<=10 else 'Raciocínio Lógico-Matemático' if n<=14 else 'Noções de Informática' if n<=22 else 'Noções de Direito' if n<=64 else 'Medicina Legal') if mode == 'fgv' else ('Língua Portuguesa' if n<=6 else 'Noções de Informática' if n<=12 else 'Raciocínio Lógico' if n<=15 else 'Legislação' if n<=30 else 'Conhecimentos Específicos')
        if mode == 'fgv':
            subjects = [(1,'Língua Portuguesa'), (11,'Raciocínio Lógico-Matemático'),
                        (17,'Informática Básica'), (25,'Lei Orgânica da Polícia Civil de Minas Gerais'),
                        (31,'Noções de Direito Administrativo'), (37,'Noções de Direito Constitucional'),
                        (43,'Noções de Direito Penal'), (48,'Noções de Direito Processual Penal'),
                        (53,'Noções de Legislação Penal e Processual Extravagante'),
                        (57,'Noções de Direitos Humanos'), (61,'Noções de Medicina Legal'),
                        (66,'Noções de Criminologia')]
            subject = next(label for first, label in reversed(subjects) if n>=first)
        # Section headings belong to the booklet, never to the last alternative.
        if mode != 'sp':
            headings = [label for _, label in subjects] if mode == 'fgv' else []
            headings += ['Lei Orgânica da Polícia Civil do Estado de Minas Gerais', 'MÓDULO II - CONHECIMENTOS ESPECÍFICOS']
            for _ in range(2):
                for heading in sorted(headings, key=len, reverse=True):
                    options = [re.sub(r'\s*'+re.escape(heading)+r'\s*$', '', value) for value in options]
        support = clean(support_text) if support_text and mode != 'sp' else None
        stem = clean(support_text+'\n'+parts[0]) if mode == 'sp' else clean(parts[0])
        media = json.dumps({'original': support_paths+paths}, ensure_ascii=False) if mode == 'sp' else None
        # Manually reviewed figure bounds in the original booklets (PDF points).
        figures = {'mg-prova': {1:(1,(42.55,134.64,273.69,367.46)),
                               13:(2,(324,366,540,445)),
                               16:(3,(110,390.31,216.15,532.63))},
                   'mg26-geral': {8:(1,(87.35,385.8,232.54,464.79))}}
        if n in figures.get(name, {}):
            pi, bounds = figures[name][n]
            figure_paths, _ = crop([(pi, fitz.Rect(bounds))], f'q{n}-figura')
            media = json.dumps({'support': figure_paths}, ensure_ascii=False)
        if mode == 'fgv' and n == 13:
            stem = re.sub(r'Tipo de Crime .*?Sabendo-se', 'Sabendo-se', stem)
            support = 'Tabela: Tipo de Crime | Ocorrências | Casos Solucionados\nRoubo | 180 | 135\nTráfico de Drogas | (em branco) | 45\nEstelionato | 120 | (em branco)\nLesão Corporal | (em branco) | 30'
        if mode == 'fgv' and n == 7:
            start = stem.index('O gerente'); end = stem.index('Sobre esse ato')
            support, stem = stem[start:end].strip(), stem[end:]
        underlined = {5:['feliz','alto','arranhada','importado','presidencial'],
                      8:['magra','se separou','grudaram','pálida','rabiscou'],
                      10:['Quem não escuta','Quem vive sozinho','Quem não se casou','Quem vive pedindo na rua','Quem vive de herança']}
        if mode == 'fgv' and n in underlined:
            support = 'Trechos sublinhados no original: '+ '; '.join(f'{c}) {t}' for c,t in zip('ABCDE',underlined[n]))+'.'
        if name == 'mg26-geral' and n == 15:
            stem = stem.removesuffix(' 56')
            options = ['56/143', '70/143', '73/143', '129/143']
        questions.append({'number': n, 'subject': subject, 'text': stem, 'support': support,
                          'support_image': media,
                          'options': options, 'answer': 'A/B/C/D/E' if answers[n] in '*X' else answers[n], 'explanation': None})
        pages[n] = {'url': URLS[name], 'page': slots[m['slot']]['pi']+1}
    print(name, len(questions), 'questões;', len(shared), 'com texto compartilhado')
    return questions, pages

banks, sources = [], {}
for name, slug, year, title, mode, expected in [
    ('sp-prova', 'pc-sp-2023-investigador', '2023', 'Polícia Civil SP 2023 — Investigador de Polícia — Versão 1', 'sp', range(1,81)),
    ('mg-prova', 'pc-mg-2025-investigador', '2025', 'Polícia Civil MG 2025 — Investigador de Polícia I — Tipo 1', 'fgv', range(1,71)),
]:
    answers = keys('sp-gabarito' if mode == 'sp' else 'mg-gabarito', mode)
    questions, pages = extract(name, slug, expected, mode, answers)
    banks.append({'slug': slug, 'title': title, 'source': 'pc', 'year': year, 'questions': questions})
    sources[slug] = pages
slug = 'pc-mg-2026-auxiliar-pericia'
questions, pages = [], {}
for part, expected in [('geral',range(1,16)), ('legislacao',range(16,31)), ('especifico',range(31,61))]:
    name = 'mg26-'+part
    rows, refs = extract(name, slug, expected, 'cebraspe', keys(name+'-gabarito', 'cebraspe'))
    questions.extend(rows)
    pages.update(refs)
banks.append({'slug': slug, 'title': 'Polícia Civil MG 2026 — Técnico-Assistente — Auxiliar de Perícia', 'source': 'pc', 'year': '2026', 'questions': questions})
sources[slug] = pages

def literal(v):
    return 'null' if v is None else "'"+str(v).replace("'", "''")+"'"

statements = []
for bank in banks:
    statements.append('insert into public.exams(slug,title,source,year) values ('+','.join(literal(bank[k])for k in ['slug','title','source','year'])+') on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;')
    for q in bank['questions']:
        vals = [str(q['number'])]+[literal(q[k])for k in ['subject','text','support','support_image']]+[literal(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',literal(q['answer']),'null']
        statements.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(vals)+' from public.exams where slug='+literal(bank['slug'])+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer;')
Path('supabase/seed-pc-sp-mg-recent.sql').write_text('-- Rebuild with scripts/import-pc-recent.py. Data only; preserve IDs and other exams.\nbegin;\n'+'\n'.join(statements)+'\ncommit;\n',encoding='utf8')
(D/'statements.json').write_text(json.dumps(statements,ensure_ascii=False),encoding='utf8')
(D/'banks.json').write_text(json.dumps(banks,ensure_ascii=False,indent=2),encoding='utf8')
(D/'sources.json').write_text(json.dumps(URLS,ensure_ascii=False,indent=2),encoding='utf8')
Path('src/lib/pcSources.js').write_text('// Generated by scripts/import-pc-recent.py.\nexport default '+json.dumps(sources,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
