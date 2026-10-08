import importlib.util,json,re
from pathlib import Path
sp=importlib.util.spec_from_file_location('enm',Path('scripts/import-enem-bank.py'))
m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m)
sources={};contents=[];manifest={}
for year in [2022,2023,2024,2025]:
 rows=json.loads((m.D/f'{year}-questions.json').read_text(encoding='utf-8'))
 assert len(rows)==(5 if year==2024 else 185)
 sources[str(year)]={str(q['number']):q['page'] for q in rows}
 manifest[str(year)]={'acervo':f'https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos/{year}','prova_1':f'https://download.inep.gov.br/enem/provas_e_gabaritos/{year}_PV_impresso_D1_CD2.pdf','prova_2':f'https://download.inep.gov.br/enem/provas_e_gabaritos/{year}_PV_impresso_D2_CD5.pdf','gabarito_1':f'https://download.inep.gov.br/enem/provas_e_gabaritos/{year}_GB_impresso_D1_CD2.pdf','gabarito_2':f'https://download.inep.gov.br/enem/provas_e_gabaritos/{year}_GB_impresso_D2_CD5.pdf'}
 content=m.seed(year,rows)
 if year==2024:
  check="""do $$ begin
 if not exists (select 1 from public.exams where slug='enem-2024') then
  raise exception 'Cadastre o ENEM 2024 antes de executar esta importação.';
 end if;
end $$;"""
  content=content.replace('begin;','begin;\n'+check)
  content=content.replace('commit;',"""-- Preserva as resoluções existentes e corrige apenas a marcação de anuladas.
update public.questions q set answer='A/B/C/D/E'
from public.exams e where q.exam_id=e.id and e.slug='enem-2024'
and q.explanation ilike '%questão anulada%';
commit;""")
 name=f'seed-enem-{year}.sql' if year!=2024 else 'update-enem-2024-espanhol.sql'
 Path('supabase',name).write_text(content,encoding='utf-8')
 contents.append(content.replace('begin;','').replace('commit;',''))
Path('supabase/import-enem-2022-2023-2025.sql').write_text('-- Execute o arquivo inteiro. Reexecutável, preserva IDs.\nbegin;\n'+'\n'.join(contents)+'\ncommit;\n',encoding='utf-8')
Path('src/lib/enemSources.js').write_text('export default '+json.dumps(sources,separators=(',',':'))+'\n',encoding='utf-8')
(m.D/'fontes.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2),encoding='utf-8')
print('Importação única: 560 questões; 2024 preservado; fontes e páginas cadastradas.')
