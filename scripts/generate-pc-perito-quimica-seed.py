import json
import re
from pathlib import Path

SOURCE = Path('pdf-extracts/pc-rj-2022-perito-quimica.txt')
OUTPUT = Path('supabase/seed-pc-rj-2022-perito-quimica.sql')
SLUG = 'pc-rj-2022-perito-quimica'
TITLE = 'Polícia Civil RJ 2022 - Perito Criminal - Química'
# Gabarito oficial Tipo 1, transcrito por blocos para facilitar auditoria.
ANSWERS = [
    'A', 'C', 'B', 'A', 'B', 'C', 'B', 'B', 'B', 'C',
    'A', 'B', 'E', 'C', 'A', 'C', 'C', 'B', 'D', 'A',
    'E', 'D', 'A', 'E', 'C', 'E', 'A', 'B', 'E', 'C',
    'D', 'D', 'C', 'D', 'C', 'C', 'C', 'D', 'D', 'C',
    'C', 'B', 'D', 'C', 'D', 'D', 'D', 'C', 'D', 'A',
    'C', 'E', 'A', 'D', 'B', 'A', 'E', 'C', 'D', 'C',
    'B', 'E', 'D', 'B', 'C', 'A', 'E', 'D', 'E', 'C',
    'B', 'C', 'B', 'C', 'C', 'C', 'A', 'E', 'D', 'B',
    'D', 'A', 'E', 'A', 'D', 'A', 'C', 'B', 'E', 'E',
    'C', 'A', 'B', 'E', 'D', 'C', 'A', 'D', 'E', 'C',
]


def clean(value):
    value = value.replace('\u0000', '').replace('\ufb01', 'fi').replace('\ufb02', 'fl')
    value = value.replace('\\n', ' ')
    value = re.sub(r'Polícia Civil do Estado do Rio de Janeiro\s+FGV Conhecimento', ' ', value, flags=re.I)
    value = re.sub(r'Perito Criminal\s*-\s*Química.*?Página\s+\d+', ' ', value, flags=re.I)
    value = re.sub(r'\s+', ' ', value)
    return value.strip()


def sql_string(value):
    return "'" + value.replace("'", "''") + "'"


raw = SOURCE.read_text(encoding='utf-8')
markers = list(re.finditer(r'(?m)^\s*(\d{1,3})\s*$', raw))
markers = [marker for marker in markers if 1 <= int(marker.group(1)) <= 100]
if len(markers) != 100 or [int(marker.group(1)) for marker in markers] != list(range(1, 101)):
    raise SystemExit(f'Numeração inesperada: {len(markers)} marcadores')

questions = []
for index, marker in enumerate(markers):
    number = int(marker.group(1))
    end = markers[index + 1].start() if index + 1 < len(markers) else len(raw)
    body = raw[marker.end():end]
    option_markers = list(re.finditer(r'(?m)^\s*\(([A-E])\)\s*', body))
    if len(option_markers) != 5:
        raise SystemExit(f'Questão {number}: esperadas 5 alternativas, encontradas {len(option_markers)}')
    text = clean(body[:option_markers[0].start()])
    options = []
    for option_index, option_marker in enumerate(option_markers):
        option_end = option_markers[option_index + 1].start() if option_index + 1 < len(option_markers) else len(body)
        options.append(clean(body[option_marker.end():option_end]))
    questions.append((number, text, options))

if len(ANSWERS) != 100:
    raise SystemExit(f'Gabarito incompleto: {len(ANSWERS)} respostas')

subjects = {
    **{number: 'Língua Portuguesa' for number in range(1, 31)},
    **{number: 'Conhecimentos Específicos' for number in range(31, 81)},
    **{number: 'Noções de Direito' for number in range(81, 101)},
}

lines = [
    '-- Seed: Polícia Civil RJ 2022 - Perito Criminal - Química',
    '-- Banca FGV Conhecimento - Prova Escrita Objetiva - Nível Superior - Tipo 1 (Branca) - Tarde',
    '-- Gerado a partir de pdf-extracts/pc-rj-2022-perito-quimica.txt',
    '-- Gabarito oficial Tipo 1 fornecido para este caderno.',
    '',
    'insert into public.exams (slug, title, source, year)',
    f'values ({sql_string(SLUG)}, {sql_string(TITLE)}, \'pc\', \'2022\')',
    'on conflict (slug) do update set title = excluded.title;',
    '',
]

for number, text, options in questions:
    options_json = json.dumps(options, ensure_ascii=False, separators=(',', ':'))
    lines.extend([
        'insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)',
        f'select id, {number}, {sql_string(subjects[number])},',
        sql_string(text) + ", '', '', " + sql_string(options_json) + '::jsonb,',
        sql_string(ANSWERS[number - 1]) + ", ''",
        f"from public.exams where slug = {sql_string(SLUG)}",
        'on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;',
        '',
    ])

OUTPUT.write_text('\n'.join(lines), encoding='utf-8')
print(f'OK: {len(questions)} questoes, {sum(len(options) for _, _, options in questions)} alternativas -> {OUTPUT}')
