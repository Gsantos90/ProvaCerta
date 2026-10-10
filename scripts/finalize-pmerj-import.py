"""Validate archival data and generate the unchanged exam picker configuration."""
import json
import importlib.util
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / 'pdf-extracts/pmerj-ate-2020'
exams = json.loads((BASE / 'importacao.json').read_text(encoding='utf-8'))
exams += json.loads((BASE / 'general-importacao.json').read_text(encoding='utf-8'))
exams = list({exam['slug']: exam for exam in exams}.values())
spec = importlib.util.spec_from_file_location('archive_import', ROOT / 'scripts/import-pmerj-archives.py')
common = importlib.util.module_from_spec(spec)
spec.loader.exec_module(common)
for exam in exams:
    mapping = (['Língua Portuguesa'] * 2 + ['História', 'Geografia', 'Direitos Humanos', 'Sociologia', 'Informática', 'Legislação de Trânsito'] if exam['slug'] == 'pmerj-2010-soldado'
               else ['Língua Portuguesa'] * 2 + ['Sociologia', 'Geografia', 'História', 'Legislação de Trânsito', 'Informática', 'Direitos Humanos'] if exam['slug'] == 'pmerj-2014-soldado' else None)
    if mapping:
        for q in exam['questions']:
            q['subject'] = mapping[(q['number'] - 1) // 5]
    for q in exam['questions']:
        for i, option in enumerate(q['options']):
            corrected = re.sub(r'\s+P[áa](?:g\.?)?\s+\d+\s*$', '', option)
            q['options'][i] = corrected
            if corrected != option:
                q['explanation'] = q['explanation'].replace(option, corrected)
common.export(exams, json.loads((BASE / 'pendencias.json').read_text(encoding='utf-8')) + json.loads((BASE / 'general-pendencias.json').read_text(encoding='utf-8')))
roles = {'Soldado': {'label': 'Soldado Policial Militar', 'years': [{'value': '2024', 'slug': 'pmerj-2024-soldado'}]}}
sources = {}
manifest = []
for exam in exams:
    questions = exam['questions']
    assert [q['number'] for q in questions] == list(range(1, len(questions) + 1))
    for q in questions:
        assert q['explanation'] and len(q['options']) in (4, 5)
        assert q['answer'] == 'A/B/C/D/E' or q['answer'] in 'ABCDE'[:len(q['options'])]
        for image in json.loads(q['support_image'] or '[]'):
            assert (ROOT / 'public' / image.lstrip('/')).is_file(), image
    role = roles.setdefault(exam['role'], {'label': exam['role'], 'years': []})
    role['years'].append({'value': exam['year'], 'slug': exam['slug']})
    sources[exam['slug']] = {'url': exam['files'][0], 'pages': {str(q['number']): q['regions'][0]['page'] for q in questions}}
    manifest.append({k: exam[k] for k in ('slug', 'role', 'title', 'year', 'files')} | {'question_count': len(questions), 'explanations': 'Published answer key comments; not official worked solutions.'})
for role in roles.values():
    role['years'].sort(key=lambda y: y['value'], reverse=True)
out = ROOT / 'src/lib/pmerjExams.js'
out.write_text('export const pmerjRolesConfig = ' + json.dumps(roles, ensure_ascii=False, indent=2) + '\n\nconst sources = ' + json.dumps(sources, ensure_ascii=False) + '\n\nexport function pmerjOfficialSource(slug, number) {\n  const source = sources[slug]\n  return source ? `${source.url}#page=${source.pages[number] || 1}` : null\n}\n', encoding='utf-8')
(ROOT / 'docs').mkdir(exist_ok=True)
(ROOT / 'docs/pmerj-arquivos.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2), encoding='utf-8')
main = ROOT / 'src/main.jsx'
text = main.read_text(encoding='utf-8')
if 'const pmerjRolesConfig = {' in text:
    start = text.index('const pmerjRolesConfig = {')
    end = text.index('// Concurso dos Correios', start)
    text = text[:start] + text[end:]
if "from './lib/pmerjExams'" not in text:
    text = "import { pmerjRolesConfig, pmerjOfficialSource } from './lib/pmerjExams'\n" + text
text = text.replace('sourceUrl: correiosOfficialSource(supabaseSlug, question.number)', 'sourceUrl: pmerjOfficialSource(supabaseSlug, question.number) || correiosOfficialSource(supabaseSlug, question.number)')
text = text.replace('sourceUrl: correiosOfficialSource(exams.find', 'sourceUrl: pmerjOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || correiosOfficialSource(exams.find')
if 'catalog={Object.values(pmerjRolesConfig)' not in text:
    text = text.replace('roles={pmerjRolesConfig}', 'roles={pmerjRolesConfig}\n      catalog={Object.values(pmerjRolesConfig).flatMap((item) => item.years)}')
main.write_text(text, encoding='utf-8')
print(f'{len(exams)} exams, {sum(len(e["questions"]) for e in exams)} questions, {len(roles)} roles. Assets and explanations validated.')
