import json,re,unicodedata,runpy
from pathlib import Path
import pypdfium2 as pdf
ROOT=Path.cwd(); clean=runpy.run_path(str(ROOT/'scripts/import-pism-ii-2025.py'))['clean']
urls={
'2024-1':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2023/12/PROVA-PISM-2024-DIA_1-M%C3%93DULO_I.pdf',
'2024-2':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2023/12/PROVA-PISM-2024-DIA_2-M%C3%93DULO_I.pdf',
'2025-1':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2024/12/Pism-1-Dia-1.pdf',
'2025-2':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2024/12/Pism-1-Dia-2.pdf',
'2026-1':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2025/12/Pism-1-dia-1.pdf',
'2026-2':'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2025/12/Pism-1-dia-2.pdf'}
metadata={}
for edition,url in urls.items():
    official_year,day=map(int,edition.split('-')); pages={}
    doc=pdf.PdfDocument(ROOT/f'pdf-extracts/pism-i-fontes/{edition}.pdf')
    for i,page in enumerate(doc):
        if i<2: continue
        raw=page.get_textpage().get_text_range()
        text=unicodedata.normalize('NFKD',raw+' '+clean(raw)).upper()
        text=''.join(c for c in text if not unicodedata.combining(c) and c not in '\u00b4\u02dc\u02c6')
        for m in re.finditer(r'QUESTAO\s+0?(\d{1,2})\b',text):
            n=int(m[1])
            if n in range(1,21): pages.setdefault(n,i+1)
    assert len(pages)==20,(edition,pages)
    metadata[f'pism-{official_year-1}-{day}']={'year':official_year,'day':day,'module':'I','url':url,'pages':[pages[n] for n in range(1,21)]}
for day,pages in {1:[4,5,5,6,7,8,8,9,9,10,10,11,11,11,12,12,12,13,13,13],2:[3,4,5,5,6,6,7,7,7,8,8,8,8,8,9,9,10,10,11,11]}.items():
    metadata[f'pism-ii-2025-dia-{day}']={'year':2025,'day':day,'module':'II','url':f'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2024/12/Pism-2-Dia-{day}.pdf','pages':pages}
catalog_2026 = ROOT/'pdf-extracts/pism-ii-2026/catalogo.json'
if catalog_2026.exists(): metadata.update(json.loads(catalog_2026.read_text(encoding='utf-8')))
catalog_additions = ROOT/'pdf-extracts/pism-expansao/catalogo-final.json'
if catalog_additions.exists(): metadata.update(json.loads(catalog_additions.read_text(encoding='utf-8')))
js='// Slugs legados preservados; anos e cadernos correspondem às edições oficiais UFJF.\nconst pismExams = '+json.dumps(metadata,ensure_ascii=False,indent=2)+'''

export function pismExamDetails(slug) {
  return pismExams[slug]
}

export function pismSelectionLabel(value) {
  const slug = /-iii?-/.test(value)
    ? `pism-${value.match(/-(iii?)-/)[1]}-${value.replace(/-iii?-/, '-dia-')}`
    : `pism-${value}`
  const exam = pismExamDetails(slug)
  return exam ? `${exam.year} · ${exam.day}º dia` : value
}

export function pismOfficialSource(slug, number) {
  const exam = pismExamDetails(slug)
  if (!exam) return undefined
  const page = exam.pages[number - 1]
  return `${exam.url}${page ? `#page=${page}` : ''}`
}
'''
(ROOT/'src/lib/pismSources.js').write_text(js,encoding='utf-8')
p=ROOT/'src/main.jsx'; s=p.read_text(encoding='utf-8')
s=s.replace("import { pismOfficialSource } from './lib/pismSources'", "import { pismOfficialSource, pismExamDetails, pismSelectionLabel } from './lib/pismSources'")
s=s.replace("  const examLabel = selectedExam?.startsWith('pism-ii-2025') ? `2025-${selectedExam.endsWith('dia-1') ? '1' : '2'}` :", "  const pismExam = pismExamDetails(supabaseExamSlug)\n  const examLabel = pismExam ? String(pismExam.year) :")
s=s.replace("examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'", "pismExam ? `${pismExam.day}º dia` : examLabel.endsWith('-1') ? 'Dia 1' : 'Dia 2'")
s=s.replace("${selectedExam?.startsWith('pism-ii-') ? 'II' : 'I'}", "${pismExam?.module || 'I'}")
s=s.replace("{item.startsWith('2025-ii-') ? `2025 · ${item.endsWith('-1') ? '1º' : '2º'} dia` : item}",'{pismSelectionLabel(item)}')
p.write_text(s,encoding='utf-8')
sql=['-- Corrige títulos e anos oficiais das provas PISM I. Slugs e IDs são preservados.','-- Legado 2023 = edição 2024; legado 2024 = edição 2025; legado 2025 = edição 2026.','begin;']
for slug,exam in metadata.items():
    if exam['module']!='I': continue
    title=f"PISM I {exam['year']} - {exam['day']}º dia"; year=f"{exam['year']}-{exam['day']}"
    sql.append(f"update public.exams set title = '{title}', year = '{year}' where slug = '{slug}';")
    oldyear=f"{exam['year']-1}-{exam['day']}"
    # Padroniza instalações futuras nos seeds e no schema sem alterar identificadores.
    files=['supabase/schema.sql','supabase/seed-pism-2023.sql','supabase/seed-pism-2023-2.sql','supabase/seed-pism-2024.sql','supabase/seed-pism-2025.sql']
    for filename in files:
        p=ROOT/filename; text=p.read_text(encoding='utf-8')
        pattern=re.escape(f"'{slug}', 'PISM {oldyear}', 'pism', '{oldyear}'")
        text=re.sub(pattern,f"'{slug}', '{title}', 'pism', '{year}'",text)
        p.write_text(text,encoding='utf-8')
sql+=['commit;',"select slug,title,year from public.exams where source='pism' order by title;"]
(ROOT/'supabase/update-pism-i-titles.sql').write_text('\n\n'.join(sql)+'\n',encoding='utf-8')
(ROOT/'pdf-extracts/pism-i-fontes/catalogo.json').write_text(json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(f'{len(metadata)} provas com links oficiais; 6 provas do módulo I com nomes corrigidos.')
