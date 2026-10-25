"""Rebuild INSS 2016 from official ALGA/LUA PDFs in pdf-extracts/inss-2016.

Requires PyMuPDF. Source numbering uses a legacy font: decode only the number
spans, never apply that mapping to ordinary Portuguese text.
"""
import json
import re
import sys
from pathlib import Path
import fitz

sys.stdout.reconfigure(encoding='utf-8')
D = Path('pdf-extracts/inss-2016')
sources = json.loads((D / 'sources.json').read_text(encoding='utf8'))
digits = {chr(i + 1): str(i) for i in range(1, 10)} | {'\x0b': '0'}

def clean(text):
    return re.sub(r'\s+', ' ', text).strip()

def lines_for(page, column):
    margin = 28.4 if column == 0 else 304.4
    spans = [s for b in page.get_text('dict')['blocks'] for l in b.get('lines', [])
             for s in l['spans'] if margin-2 <= s['bbox'][0] < margin+264
             and 48 <= s['bbox'][1] < 797]
    # Same baseline can be split into several spans (bold, italics, line refs).
    grouped = []
    for s in sorted(spans, key=lambda s: (round(s['origin'][1], 1), s['bbox'][0])):
        baseline = s['origin'][1]
        if not grouped or abs(grouped[-1]['baseline']-baseline) > 2.5:
            grouped.append({'baseline': baseline, 'spans': []})
        grouped[-1]['spans'].append(s)
    result = []
    for g in grouped:
        ss = sorted(g['spans'], key=lambda s: s['bbox'][0])
        # Line numbers for the reading passages use a separate small font.
        ss = [s for s in ss if s['size'] > 6.5]
        if not ss: continue
        num = None
        first = ss[0]
        if abs(first['bbox'][0]-margin) < 2 and all(c in digits for c in first['text']):
            num = int(''.join(digits[c] for c in first['text']))
            ss = ss[1:]
        text = ''
        right = 0
        for s in ss:
            if text and s['bbox'][0]-right > 1: text += ' '
            text += s['text']
            right = s['bbox'][2]
        text = re.sub(r'[\x00-\x08\x0b-\x1f]', '', text)
        if not text.strip(): continue
        result.append({'text': clean(text), 'number': num,
                       'x': min(s['bbox'][0] for s in ss),
                       'top': min(s['bbox'][1] for s in ss),
                       'bottom': max(s['bbox'][3] for s in ss), 'margin': margin})
    return result

all_questions = {}
meta = {}
for role in ['tecnico', 'analista']:
    doc = fitz.open(D / (role+'.pdf'))
    questions = []
    current = None
    context = []
    changed = True
    for pi in range(1, len(doc)):
        page = doc[pi]
        for col in range(2):
            if current and current['text'].endswith(('.', '?')):
                context = []
                changed = True
            for line in lines_for(page, col):
                t, n = line['text'], line['number']
                if pi == 1 and line['top'] < 280: continue
                if t.startswith(('Espaço livre', 'CONHECIMENTOS')): continue
                if n is not None:
                    assert n == len(questions)+1, (role, n, len(questions))
                    if changed and not context and current:
                        context = [current['support']]
                    current = {'number': n, 'text': t, 'support': clean(' '.join(context)),
                               'page': pi+1, 'column': col}
                    questions.append(current)
                    changed = False
                elif current and not changed and line['x'] >= line['margin']+17 and not re.match(r'•|Bruno, servidor|Art\. 21\.|Maria, proprietária|Mateus requereu|Em fevereiro de 2016|Conforme o Decreto|Aldo e Sandra|Roberto, empregado|Uma população de|Eric Hobsbawm',t):
                    current['text'] += ' '+t
                else:
                    if not changed: context = []; changed = True
                    context.append(t)
    assert len(questions) == 120, (role, len(questions))
    # Preserve the complete passages with their original line numbers.
    assets = Path('public/inss-2016'); assets.mkdir(exist_ok=True)
    for start,end,pi,box,label in (
        [(1,10,1,(26,280,294,796),'texto-1'),(11,14,2,(26,49,294,219),'texto-2')]
        if role=='tecnico' else [(1,9,1,(26,267,294,796),'texto-1'),(10,12,2,(26,48,294,321),'texto-2')]
    ):
        path=f'{role}-{label}.png'
        doc[pi].get_pixmap(matrix=fitz.Matrix(3,3),clip=fitz.Rect(box)).save(assets/path)
        for q in questions[start-1:end]:
            q['support_image']='/inss-2016/'+path
            command=q['support']
            # The passage is already displayed with its original layout/line numbers.
            match=re.search(r'(No que se refere|Julgue os seguintes|Julgue os itens|Acerca de aspectos).*',command)
            q['support']='Texto original para os itens '+str(start)+' a '+str(end)+'. '+(match[0] if match else 'Julgue o item a partir do texto de apoio.')
    if role == 'analista':
        doc[4].get_pixmap(matrix=fitz.Matrix(4,4),clip=fitz.Rect(113,380,207,463)).save(assets/'analista-planilha.png')
        questions[44]['support_image']='/inss-2016/analista-planilha.png'
    # Official answer grid, exact booklet matching the question order.
    keys = {}
    raw=(D/(role+'-gabarito.txt')).read_text(encoding='utf8').splitlines()
    for i,l in enumerate(raw):
        if l.strip().startswith('Item '):
            nums=re.findall(r'\d+',l)
            vals=re.findall(r'\b[CE X]\b',raw[i+1])
            vals=[v for v in vals if v in 'CEX']
            assert len(nums)==len(vals)==20,(role,nums,vals)
            keys.update({int(n):v for n,v in zip(nums,vals)})
    assert len(keys)==120
    slug='inss-2016-'+('tecnico' if role=='tecnico' else 'analista-servico-social')
    title='INSS 2016 · '+('Técnico do Seguro Social' if role=='tecnico' else 'Analista do Seguro Social — Serviço Social')
    for q in questions:
        n=q['number']
        q['subject']=('Língua Portuguesa' if n<=15 else 'Conhecimentos Básicos' if n<=50 else 'Direito Previdenciário') if role=='tecnico' else ('Língua Portuguesa' if n<=14 else 'Conhecimentos Básicos' if n<=50 else 'Serviço Social')
        q['options']=['Certo','Errado']
        q['answer']={'C':'A','E':'B','X':'A/B/C/D/E'}[keys[n]]
        q['explanation']='Item anulado no gabarito oficial definitivo. Recebe +1, inclusive em branco.' if keys[n]=='X' else None
        assert q['text'] and not re.search(r'[\x00-\x08\x0b-\x1f�]',q['text']),q
    all_questions[slug]={'title':title,'questions':questions}
    meta[slug]={'url':sources[role], 'answerUrl':sources[role+'-gabarito'],
                'pages':{q['number']:q['page']for q in questions}}
    print(role,'120 itens; anulados:',[n for n,k in keys.items()if k=='X'])
    (D/(role+'-questions.json')).write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
    (D/(role+'-review.txt')).write_text('\n\n'.join(f"{q['number']} (p{q['page']}, c{q['column']}) CONTEXTO: {q['support']}\n{q['text']}"for q in questions),encoding='utf8')

def lit(s): return 'null' if s is None else "'"+s.replace("'","''")+"'"
sql=['-- INSS 15/05/2016: cadernos ALGA (Técnico) e LUA (Analista).',
     '-- A=Certo; B=Errado; A/B/C/D/E=anulado. Apenas dados; preserva IDs.',
     *['-- Fonte: '+u for u in sources.values()], 'begin;']
for slug,exam in all_questions.items():
    sql.append(f"insert into public.exams(slug,title,source,year) values ({lit(slug)},{lit(exam['title'])},'inss','2016') on conflict(slug) do update set title=excluded.title;")
    for q in exam['questions']:
        vals=[str(q['number'])]+[lit(q.get(k))for k in ['subject','text','support','support_image']]+[lit(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',lit(q['answer']),lit(q['explanation'])]
        sql.append('insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(vals)+' from public.exams where slug='+lit(slug)+' on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);')
sql.append('commit;')
Path('supabase/seed-inss-2016.sql').write_text('\n'.join(sql)+'\n',encoding='utf8')
Path('src/lib/inss2016Sources.js').write_text('// Generated by scripts/generate-inss-2016.py.\nexport default '+json.dumps(meta,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
