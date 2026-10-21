"""Final text pass: keep prose outside images and preserve complete chart labels."""
import importlib.util
import json
import re
from pathlib import Path
sp = importlib.util.spec_from_file_location('enm', Path('scripts/structure-enem-content.py'))
m = importlib.util.module_from_spec(sp)
sp.loader.exec_module(m)
f, D = m.fitz, m.D

def raw_lines(p):
    out = []
    labels = []
    for b in p.get_text('dict')['blocks']:
        if b['type'] != 0:
            continue
        for l in b['lines']:
            if abs(l['dir'][1]) > .1:
                continue
            spans = []
            for s in l['spans']:
                if 'Bundesbahn' in s['font'] and m.clean(s['text']) in list('ABCDE'):
                    labels.append(dict(letter=m.clean(s['text']), bbox=s['bbox']))
                elif s['size'] >= 5:
                    spans.append(s)
            if spans:
                bb = f.Rect(spans[0]['bbox'])
                for s in spans[1:]:
                    bb |= f.Rect(s['bbox'])
                out.append(dict(text=m.clean(''.join(s['text'] for s in spans)), bbox=list(bb), size=max(s['size'] for s in spans)))
    return out, labels

for year in [2022, 2023, 2025]:
    rows = json.loads((D/f'{year}-structured-draft.json').read_text(encoding='utf-8'))
    aa = {a['number']: a for a in json.loads((D/f'{year}-structure-audit.json').read_text(encoding='utf-8'))}
    cached = {q['number']: q for q in json.loads((D/f'{year}-regions.json').read_text(encoding='utf-8'))}
    docs = {d: f.open(D/f'{year}-dia-{d}.pdf') for d in [1, 2]}
    pc = {}
    for day, doc in docs.items():
        for p in doc:
            p.set_cropbox(p.mediabox)
            pc[day,p.number+1] = raw_lines(p)
    cont = {2022:[108], 2023:[153,172], 2025:[]}[year]
    for row in rows:
        n, day = row['number'], row['day']
        rs = [dict(r,bbox=list(r['bbox'])) for r in cached[n]['regions']]
        pn = rs[0]['page']
        same = [q for q in cached.values() if q['regions'][0]['page']==pn and (1 if q['number']<=90 or q['number']>=181 else 2)==day]
        full = all(q['regions'][0]['bbox'][0]+3<docs[day][pn-1].rect.width/2 for q in same)
        if full and not any(q['number'] in cont for q in same) and len(rs)==1:
            rs[0]['bbox'][2] = docs[day][pn-1].rect.width-28
        if n in cont:
            rs = rs[:1]+[dict(page=pn,bbox=[286.134,55,539.8,734])]
        body, opts, figs = [], {l:[] for l in 'ABCDE'}, []
        active = None
        for ri, r in enumerate(rs):
            p = docs[day][r['page']-1]
            box = f.Rect(r['bbox'])
            if year==2025 and box.x1>p.rect.width/2+30:
                box.x1 = p.rect.width-(57.5197 if r['page']%2==0 else 64.6063)+1
            elif year<2025:
                box.x1 += 1.6
            box.y1 = min(box.y1, p.rect.height-(73 if year==2025 else 45))
            ls, labels = pc[day,r['page']]
            ls = [l for l in ls if box.contains(f.Point((l['bbox'][0]+l['bbox'][2])/2, (l['bbox'][1]+l['bbox'][3])/2))]
            labels = {l['letter']:f.Rect(l['bbox']) for l in labels if m.inside(l['bbox'],box)}
            raster = [f.Rect(im['bbox']) for im in p.get_image_info() if im['bbox'][3]-im['bbox'][1]>12]
            local_figs = []
            for im in aa[n]['figures']:
                if im['page']!=r['page'] or not m.inside(im['bbox'],box,.5):
                    continue
                crop = f.Rect(im['bbox']) & box
                # Restore the actual image bounds if an annotation pass reached
                # surrounding prose. Do not cut text inside posters or cartoons.
                embedded = next((b for b in raster if m.inside(b,crop,.6) and b.get_area()>crop.get_area()*.5),None)
                if embedded is not None:
                    crop = embedded & box
                else:
                    for line in ls:
                        lb = f.Rect(line['bbox'])
                        prose = (line['size']>=9.4 and len(line['text'])>35) or bool(re.search('Disponível|Acesso em',line['text']))
                        if not prose or not (lb & crop).get_area():
                            continue
                        if lb.y0 < crop.y0+20 and lb.y1 < crop.y0+30:
                            crop.y0=max(crop.y0,lb.y1+.8)
                        elif lb.y0 > crop.y1-35:
                            crop.y1=min(crop.y1,lb.y0-.8)
                if crop.width>8 and crop.height>8:
                    path=Path(f'public/enem-{year}/q{n:03}-support-{ri+1}-{len(local_figs)+1}.png')
                    p.get_pixmap(matrix=f.Matrix(2,2),clip=crop,alpha=False).save(path)
                    local_figs.append(crop)
                    figs.append(dict(page=r['page'],bbox=list(crop),path='/'+path.as_posix().split('public/',1)[1]))
            meaningful = []
            for line in ls:
                t=line['text']
                if not t or re.search(r'QUEST[Ãã]O|Quest\s*ão|ENEM\s*20\d\d|CADERNO|AMARELO',t):
                    continue
                if any(m.inside(line['bbox'],im) for im in raster):
                    continue
                in_graph=any(m.inside(line['bbox'],im,.55) for im in local_figs)
                if in_graph and (len(t)<35 or line['size']<9.4) and not re.search('Disponível|Acesso em',t):
                    continue
                meaningful.append(line)
            meaningful.sort(key=lambda l:(round(l['bbox'][1]/3),l['bbox'][0]))
            start=min((l.y0 for l in labels.values()),default=box.y1)-14
            if active is None:
                body += [l for l in meaningful if l['bbox'][1]<start]
            for letter,lb in labels.items():
                active=letter
                end=min((o.y0-14 for o in labels.values() if abs(o.x0-lb.x0)<40 and o.y0>lb.y0+3),default=box.y1)
                opts[letter] += [l['text'] for l in meaningful if lb.y0-14<=l['bbox'][1]<end and l['bbox'][0]>=lb.x0+4]
        parts=m.paragraphs(body)
        row.update(text=parts[-1] if parts else '',support='\n\n'.join(parts[:-1]),support_image=','.join(im['path'] for im in figs),
                   options=[m.clean(' '.join(opts[l])) or f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE'],transcription='\n\n'.join(parts))
        aa[n].update(body=parts,figures=figs)
    if year<2025:
        m.match_dataset(year,rows,[aa[q['number']] for q in rows])
        for row in rows:
            a=aa[row['number']]
            if a.get('answer_matches') and 'dataset_question' in a:
                row['dataset_question']=a['dataset_question']
    else:
        shared='\n\n'.join(m.paragraphs(m.lines(docs[1][5],f.Rect(57,110,582,776))))
        for row in rows:
            if 6<=row['number']<=10:
                row['support']=shared
    (D/f'{year}-structured-draft.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
    (D/f'{year}-structure-audit.json').write_text(json.dumps(list(aa.values()),ensure_ascii=False,indent=2),encoding='utf-8')
    print(year,'textos preservados e figuras sem enunciados',flush=True)

# Some option charts combine raster and vector content. Keep their complete panels.
from fix_enem_2025_q101 import repair as repair_enem_2025_q101
repair_enem_2025_q101()
