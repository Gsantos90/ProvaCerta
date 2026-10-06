import json,re,sys
from pathlib import Path
import pdfplumber,pypdfium2 as pdfium
sys.stdout.reconfigure(encoding='utf-8')
D=Path('pdf-extracts/inss-2022'); out={}; sources=json.loads((D/'fontes.json').read_text())
for part,start,end in [('basicos',1,50),('especificos',51,120)]:
 expected=start; current=None; body=[]; context=[]; changing=True
 with pdfplumber.open(D/(part+'.pdf')) as doc:
  for pi,p in enumerate(doc.pages):
   for a,b in [(0,p.width/2),(p.width/2,p.width)]:
    margin=28.3 if a==0 else 303.4
    for l in p.crop((a,45,b,p.height-30)).extract_text_lines():
     t=l['text'].strip(); x=l['x0']; y=l['top']
     if part=='basicos' and pi==0 and a==0:continue
     if part=='basicos' and pi==2 and a==0 and 370<y<512:continue
     if t.startswith(('--','OVAS','TOS B','OS ES','Espaço livre')):continue
     m=re.match(r'^(\d{1,3})\s+(.*)',t)
     if m and int(m[1])==expected:
      if current is not None:out[current]['text']=' '.join(body).replace('- ','-')
      current=expected;expected+=1;body=[m[2]]
      out[current]={'number':current,'support':' '.join(context),'page':pi+1,'part':part}
      changing=False
     elif current is not None and not changing and x>=margin+12 and not (part=='basicos' and pi==2 and a==0 and y>=630) and not t.startswith(('Ao realizar um levantamento','P: Nos processos')) and not (part=='especificos' and current==90 and t.startswith('Determinada região')):
      body.append(t)
     else:
      if not changing:context=[];changing=True
      context.append(t)
  if current is not None:out[current]['text']=' '.join(body).replace('- ','-')
 assert expected==end+1,(part,expected)
keys={}
for part in ['basicos','especificos']:
 lines=(D/('gabarito-'+part+'.txt')).read_text(encoding='utf-8').splitlines()
 for i,l in enumerate(lines):
  if l.startswith('Item '):
   for n,k in zip(l.split()[1:],lines[i+1].split()[1:]):
    if int(n):keys[int(n)]=k
assert len(keys)==120
summary='Texto CB1A1 — Economia do cuidado, de Christina Queiroz (Pesquisa FAPESP, janeiro de 2021). Resumo para estudo: o envelhecimento e a maior participação feminina no mercado de trabalho ampliam a demanda por cuidados. Há atividades diretas e indiretas, remuneradas ou gratuitas. O cuidado envolve vínculos afetivos, mas também constitui trabalho essencial a qualquer pessoa que se torne dependente. Sua distribuição é desigual, recaindo sobretudo nas mulheres. Em países do hemisfério norte, a crise estimula serviços privados e políticas públicas. Na América Latina, as famílias, principalmente as mulheres, assumem a maior parte dos cuidados; quem pode pagar recorre ao mercado. Para analisar vocabulário, coesão, concordância e pontuação, leia os parágrafos originais na página 1 do caderno oficial; este resumo não substitui o texto original.'
# Esses contextos incluem figuras ou parágrafos que a geometria do PDF separa do enunciado.
for n in range(1,15):out[n]['support']=summary+'\n\n'+out[n]['support']
for n in [41,42]:out[n]['support']='A figura mostra a página pública do INSS no navegador, com cadeado e prefixo https:// na barra de endereço e um aviso sobre o uso e gerenciamento de cookies.';out[n]['support_image']='/inss-2022/cookies.png'
out[43]['support']='A planilha da figura contém células do MS Excel 365. Todas as células mostradas foram selecionadas; acionou-se Remover Duplicadas, selecionaram-se todas as colunas na caixa de diálogo e confirmou-se em OK. Julgue a afirmação considerando a planilha.';out[43]['support_image']='/inss-2022/planilha.png'
for n in [46,47]:out[n]['support']='Um técnico levantou os atendimentos da semana anterior: 75% dos segurados receberam atendimento remoto (telefone, aplicativo ou Internet) e 35% receberam atendimento presencial. Algumas demandas começaram remotamente e precisaram ser concluídas presencialmente. Julgue o item considerando esses dados.'
for n in [48,49,50]:out[n]['support']='Proposição P: Nos processos de justificações administrativas, quando o segurado apresentar testemunhas com valor de prova, a agência fornecerá um servidor exclusivo para o atendimento. Julgue o item a partir dessa proposição.'
for n in range(91,96):out[n]['support']='Em uma região, vigora o defeso de camarão e lagosta fixado pelo IBAMA. Considere os segurados:\nI — Manoel: pescador artesanal de camarão.\nII — José: pescador artesanal de crustáceo e músico empregado.\nIII — Flávio: pescador profissional de tainha.\nIV — Maria: pescadora artesanal e beneficiária de pensão por morte.\nJulgue a afirmação durante esse período.'
questions=[]
for n,q in sorted(out.items()):
 q['subject']='Língua Portuguesa' if n<=14 else 'Ética no Serviço Público' if n<=20 else 'Direito Constitucional' if n<=30 else 'Direito Administrativo' if n<=40 else 'Informática' if n<=45 else 'Raciocínio Lógico' if n<=50 else 'Assistência Social' if 100<=n<=105 else 'Direito Previdenciário'
 q['options']=['Certo','Errado'];q['answer']={'C':'A','E':'B','X':'A/B/C/D/E'}[keys[n]]
 q['explanation']='Item anulado no gabarito oficial definitivo do Cebraspe. Recebe um ponto independentemente da resposta marcada, inclusive em branco.' if keys[n]=='X' else None
 q['sourceUrl']=sources[q['part']+'.pdf']+'#page='+str(q['page'])
 assert q['text'] and '(cid:' not in q['text'] and q['text'].endswith('.'),(n,q['text'])
 questions.append(q)
(D/'questions.json').write_text(json.dumps(questions,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
# Recortes das figuras originais, em resolução legível.
assets=Path('public/inss-2022');assets.mkdir(exist_ok=True)
pdf=pdfium.PdfDocument(str(D/'basicos.pdf'));page=pdf[2];image=page.render(scale=3).to_pil()
for name,box in [('cookies',(27,380,291,504)),('planilha',(28,635,150,714))]:
 image.crop(tuple(round(x*3) for x in box)).save(assets/(name+'.png'))
assets_meta={str(q['number']):{'part':q['part'],'page':q['page']} for q in questions}
Path('src/lib/inssSources.js').write_text('// Cadernos 01 e gabaritos definitivos da aplicação de 27/11/2022.\nconst sources = '+json.dumps({k:sources[k+'.pdf'] for k in ['basicos','especificos']},ensure_ascii=False,indent=2)+'\nconst pages = '+json.dumps(assets_meta,ensure_ascii=False)+'\n\nexport function inssOfficialSource(slug, number) {\n  if (slug !== "inss-2022-tecnico") return undefined\n  const question = pages[number]\n  return question ? `${sources[question.part]}#page=${question.page}` : undefined\n}\n',encoding='utf-8')
def literal(s):return 'null' if s is None else "'"+s.replace("'","''")+"'"
lines=['-- INSS 2022 — Técnico do Seguro Social, aplicação de 27/11/2022, cadernos 01.','-- 50 itens básicos + 70 específicos. Não inclui a reaplicação de Guarulhos.','-- A = Certo; B = Errado; A/B/C/D/E = anulado (ponto automático).','-- Texto CB1A1 resumido; texto integral acessível pelo link do caderno oficial.','-- Execute o arquivo inteiro. Reexecutável; preserva IDs e as demais provas.']
lines += ['-- Fonte: '+url for url in sources.values()]
lines+=['begin;','alter table public.questions add column if not exists explanation text;','alter table public.questions drop constraint if exists questions_answer_check;',"alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');","insert into public.exams (slug,title,source,year) values ('inss-2022-tecnico','INSS 2022 · Técnico do Seguro Social','inss','2022') on conflict (slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;"]
for q in questions:
 vals=[str(q['number'])]+[literal(q.get(k)) for k in ['subject','text','support','support_image']]+[literal(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',literal(q['answer']),literal(q['explanation'])]
 lines+=['insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)',"select id, "+', '.join(vals)+" from public.exams where slug='inss-2022-tecnico'",'on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(excluded.explanation,public.questions.explanation);']
lines+=['commit;']
Path('supabase/seed-inss-2022-tecnico.sql').write_text('\n\n'.join(lines)+'\n',encoding='utf-8')
print('Gerados',len(questions),'itens. Anulados:',[n for n,k in keys.items() if k=='X'])
for q in questions:print(q['number'],q['text'])