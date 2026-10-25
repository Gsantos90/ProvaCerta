"""Revisão editorial de 25/10/2026, baseada nos cadernos amarelos do Inep.

Requer PyMuPDF. Usa a cópia anterior em pdf-extracts/enem-review-2026-10-25.
Gera somente correções selecionadas, sem alterar IDs, alternativas ou gabaritos.
Os recortes são coordenadas do MediaBox, em pontos PDF; não usar o CropBox.
"""
import json
import re
from pathlib import Path
import fitz

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / 'pdf-extracts/enem-review-2026-10-25'
PDFS = ROOT / 'pdf-extracts/enem-migration'
data = json.loads((AUDIT / 'database-before.json').read_text(encoding='utf-8'))
lookup = {(int(e['slug'][-4:]), q['number']): q for e in data for q in e['questions']}

# Trocas conferidas na fonte. Não aplicar divisão automática de palavras:
# "Indefinido", "delas", "causada" e "levamos" são palavras válidas.
text_fixes = [
    (2022, 9, 'text', 'Odiscurso', 'O discurso'),
    (2022, 24, 'text', 'Otexto', 'O texto'),
    (2022, 73, 'support', 'sementeEm', 'semente\nEm'),
    (2022, 73, 'support', 'pãoAgradeça', 'pão\nAgradeça'),
    (2022, 171, 'support', 'daAssociação', 'da Associação'),
    (2023, 4, 'support', 'chestsWe', 'chests\nWe'),
    (2023, 4, 'support', 'tomorrowWe', 'tomorrow\nWe'),
    (2023, 13, 'support', 'ouviulá', 'ouviu lá'),
    (2023, 39, 'support', 'vouPor', 'vou\nPor'),
    (2023, 142, 'support', 'uminstrumento', 'um instrumento'),
    (2023, 151, 'text', 'Onúmero', 'O número'),
    (2024, 4, 'text', 'escritoraAlice', 'escritora Alice'),
    (2024, 31, 'text', 'Otexto', 'O texto'),
    (2024, 33, 'text', 'Orecurso', 'O recurso'),
    (2024, 42, 'text', 'Oconjunto', 'O conjunto'),
    (2024, 85, 'text', 'Otexto', 'O texto'),
]

# Cada item preserva a composição necessária para interpretar a questão.
# Painéis separados quando há texto intermediário ou alternativas em outra coluna.
crops = {
    (2022, 16): [(1, 9, [31, 87, 536, 346])],
    (2022, 50): [(1, 21, [289, 396, 536, 655])],
    (2022, 67): [(1, 26, [31, 84, 279, 270])],
    (2022, 75): [(1, 28, [31, 84, 279, 335])],
    (2022, 95): [(2, 3, [31, 480, 279, 566]), (2, 3, [31, 640, 279, 724])],
    (2022, 102): [(2, 5, [31, 157, 536, 432])],
    (2022, 108): [(2, 7, [31, 201, 279, 383]), (2, 7, [31, 530, 279, 704]), (2, 7, [289, 73, 536, 720])],
    (2022, 110): [(2, 8, [31, 568, 536, 650])],
    (2022, 112): [(2, 9, [31, 544, 279, 649])],
    (2022, 113): [(2, 9, [289, 215, 536, 465])],
    (2022, 119): [(2, 12, [31, 109, 279, 213]), (2, 12, [31, 399, 250, 715])],
    (2022, 132): [(2, 15, [289, 239, 536, 416]), (2, 15, [289, 481, 536, 628])],
    (2022, 162): [(2, 24, [289, 230, 536, 326]), (2, 24, [360, 432, 448, 522])],
    (2022, 164): [(2, 26, [31, 150, 279, 358])],
    (2022, 177): [(2, 30, [31, 587, 536, 621])],
    (2022, 180): [(2, 31, [289, 519, 536, 655])],
    (2022, 183): [(1, 4, [31, 94, 279, 492])],
    (2023, 3): [(1, 2, [289, 307, 536, 506])],
    (2023, 102): [(2, 5, [289, 393, 536, 579])],
    (2023, 122): [(2, 11, [31, 558, 500, 655])],
    (2023, 159): [(2, 24, [40, 516, 268, 687])],
    (2023, 162): [(2, 25, [31, 393, 279, 591])],
    (2023, 177): [(2, 30, [31, 114, 536, 276])],
    (2025, 31): [(1, 14, [65, 130, 315, 412])],
    (2025, 106): [(2, 6, [360, 533, 537, 643])],
}

changes = {}
def change(year, number, field, value, reason):
    key = (year, number)
    row = lookup[key]
    item = changes.setdefault(key, {'slug': f'enem-{year}', 'number': number, 'id': row['id'], 'before': {}, 'after': {}, 'reasons': []})
    item['before'].setdefault(field, row.get(field))
    item['after'][field] = value
    item['reasons'].append(reason)

for year, number, field, old, new in text_fixes:
    current = changes.get((year, number), {}).get('after', {}).get(field, lookup[year, number][field])
    assert old in current, (year, number, old)
    change(year, number, field, current.replace(old, new), f'Espaçamento/quebra de verso: {old}')

documents = {}
for (year, number), panels in crops.items():
    asset = ROOT / f'public/enem-{year}'
    asset.mkdir(exist_ok=True)
    paths = []
    for index, (day, pn, bbox) in enumerate(panels, 1):
        doc = documents.setdefault((year, day), fitz.open(PDFS / f'{year}-dia-{day}.pdf'))
        page = doc[pn-1]
        page.set_cropbox(page.mediabox)
        rect = fitz.Rect(bbox)
        assert page.rect.contains(rect), (year, number, bbox)
        path = asset / f'q{number:03}-review-20261025-{index}.png'
        page.get_pixmap(matrix=fitz.Matrix(2.5, 2.5), clip=rect, alpha=False).save(path)
        paths.append('/' + path.relative_to(ROOT / 'public').as_posix())
    change(year, number, 'support_image', ','.join(paths), 'Recorte completo refeito no caderno oficial: figuras e legendas preservadas.')

# O infográfico original já reúne ilustrações e as três colunas de texto.
# Não repetir sua transcrição como um bloco visual separado.
change(2022, 16, 'support', '', 'Infográfico único completo com o texto original integrado.')

# URLs antigas de 2024 tinham vírgula/quebra de linha sem arquivo no final.
for row in next(e for e in data if e['slug'] == 'enem-2024')['questions']:
    original = row['support_image']
    if original:
        parts = [part.strip() for part in original.split(',') if part.strip()]
        parts = ['/' + part if not part.startswith(('http://', 'https://', '/')) and (ROOT / 'public' / part).is_file() else part for part in parts]
        cleaned = ','.join(parts)
        if cleaned != original:
            change(2024, row['number'], 'support_image', cleaned, 'Normaliza separadores e caminho local das imagens.')

patches = list(changes.values())
(AUDIT / 'corrections.json').write_text(json.dumps(patches, ensure_ascii=False, indent=2), encoding='utf-8')

# Guardas permitem reexecução, mas impedem sobrescrever uma edição concorrente.
payload = json.dumps(patches, ensure_ascii=False)
sql = """-- Revisão ENEM 25/10/2026. Apenas texto, apoio e referências de imagens.
-- IDs, números, alternativas, gabaritos e explicações permanecem intactos.
-- Os arquivos PNG citados devem ser publicados junto com esta atualização.
begin;
do $review$
declare item jsonb; current_row public.questions%rowtype; expected_exam uuid;
begin
  for item in select value from jsonb_array_elements($enem_review$PAYLOAD$enem_review$::jsonb) loop
    select id into expected_exam from public.exams where slug = item->>'slug';
    select * into current_row from public.questions
      where id = (item->>'id')::uuid and exam_id = expected_exam and number = (item->>'number')::int for update;
    if not found then raise exception 'Questão não encontrada: %/%', item->>'slug', item->>'number'; end if;
    if exists (select 1 from jsonb_each(item->'before') old
      where to_jsonb(current_row)->old.key is distinct from old.value
        and to_jsonb(current_row)->old.key is distinct from item->'after'->old.key)
      then raise exception 'Conteúdo alterado após a revisão: %/%', item->>'slug', item->>'number'; end if;
    update public.questions set
      text = case when item->'after' ? 'text' then item->'after'->>'text' else text end,
      support = case when item->'after' ? 'support' then item->'after'->>'support' else support end,
      support_image = case when item->'after' ? 'support_image' then item->'after'->>'support_image' else support_image end
      where id = current_row.id;
  end loop;
end $review$;
commit;
""".replace('PAYLOAD', payload)
(ROOT / 'supabase/update-enem-review-2026-10-25.sql').write_text(sql, encoding='utf-8')

# Mantém os fixtures locais e os dois pacotes históricos de reimportação coerentes.
for year in [2022, 2023, 2025]:
    fixture = PDFS / f'{year}-questions.json'
    rows = json.loads(fixture.read_text(encoding='utf-8'))
    for row in rows:
        # O banco lido no início é a autoridade para correções anteriores.
        # Não reintroduzir os recortes antigos de 2022/109 nem os textos
        # anteriores de 2025/135-137 ao regenerar os pacotes.
        baseline = lookup[year, row['number']]
        for field in ['text', 'support', 'support_image']:
            row[field] = baseline.get(field) or ''
        patch = changes.get((year, row['number']))
        if patch:
            row.update(patch['after'])
    fixture.write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding='utf-8')
for name in ['import-enem-2022-2023-2025.sql', 'update-enem-content-2022-2023-2025.sql']:
    path = ROOT / 'supabase' / name
    text = path.read_text(encoding='utf-8')
    if '$enem_json$' not in text:
        continue
    pieces = text.split('$enem_json$')
    rows = json.loads(pieces[1])
    for row in rows:
        baseline = lookup[int(row['slug'][-4:]), row['number']]
        for field in ['text', 'support', 'support_image']:
            row[field] = baseline.get(field) or ''
        patch = changes.get((int(row['slug'][-4:]), row['number']))
        if patch:
            row.update(patch['after'])
    pieces[1] = json.dumps(rows, ensure_ascii=False)
    path.write_text('$enem_json$'.join(pieces), encoding='utf-8')

print(f'{len(patches)} questões com ajustes; {len(text_fixes)} correções textuais; {len(crops)} questões com recortes refeitos.')
