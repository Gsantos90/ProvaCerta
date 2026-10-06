# Conferencia editorial e geracao do SQL; executar apos import-pism-ii-2025.py.
import json,re,sys
from pathlib import Path
import pypdfium2 as pdf
ROOT=Path(__file__).resolve().parents[1]; DATA=ROOT/'pdf-extracts/pism-ii-2025'
sys.stdout.reconfigure(encoding='utf-8')
ANS={1:list('BACABBADAECEBDAEEAAD'),2:['E','B','D','B','B','B','B','B','E','D','A','A','E','C/E','B/C','B','C','D','E','A']}
assert len(ANS[1])==20
SUB={1:['Língua Portuguesa','Geografia','Matemática','Química'],2:['Literaturas','Biologia','Física','História']}
SOURCES={d:f'https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2024/12/Pism-2-Dia-{d}.pdf' for d in [1,2]}
CUTS=['Coordenação Geral de Processos Seletivos','Leia, além','Leia o Texto III','O texto a seguir','Os textos a seguir','TEXTO II','TEXTO III','TEXTO IV','TEXTO V','GEOGRAFIA- OBJETIVAS','MATEMATICA - OBJETIVAS','QUÍMICA - OBJETIVAS','Biologia - OBJETIVAS','FÍSICA - OBJETIVAS','HISTÓRIA - OBJETIVAS']
# Apenas figuras e dados necessários; sem reproduzir letras de músicas ou textos literários integrais.
CROPS={7:(7,.51,.30,.95,.53),8:(8,.085,.105,.515,.28),10:(9,.11,.24,.50,.60),11:(9,.59,.32,.95,.61),12:(10,.15,.285,.41,.43),14:(10,.57,.56,.84,.745),15:(11,.09,.23,.53,.405),17:(11,.53,.32,.92,.61),19:(12,.08,.48,.49,.59)}
SUPPORT1={
1:'Texto I: Projeto de Lei nº 2347/2022, do deputado José Nelto. O projeto propõe regulamentar a atividade de influenciador digital, descreve suas atribuições em artigos, prevê direitos e deveres e apresenta uma justificativa para a regulamentação.',
2:'Texto II: a modalidade expressa avaliações do falante sobre possibilidade ou necessidade. Verbos como poder, dever, ter que e precisar podem expressar essas avaliações. Consulte o Texto I no caderno oficial.',
3:'Texto III: notícia de Marina Teodoro, publicada em 16/09/2022, sobre a proposta de regulamentação dos influenciadores digitais. A questão pede identificar o trecho em que aparece uma avaliação da jornalista.',
4:'Texto I: projeto de lei. Texto III: notícia. Texto IV: postagem de @contente.vc que questiona a pressão para profissionais também produzirem conteúdo em redes sociais. O post solicita relatos dos seguidores e critica a sobrecarga desse trabalho adicional.',
5:'Comentários V a VIII da postagem de @contente.vc: consulte as imagens na página 5 do caderno oficial. A questão compara as estratégias usadas para defender pontos de vista sobre divulgação profissional em redes sociais.',
16:'Para esta reação, use as massas molares aproximadas: Fe = 56 g/mol; O = 16 g/mol. Logo, Fe₂O₃ = 160 g/mol. A tabela periódica está no final do caderno oficial.'}
SUPPORT2={
1:'Texto I: Melro, tradução de Blackbird feita por Carlos Drummond de Andrade. O poema associa a aprendizagem do voo e da visão à liberdade. Leia o texto integral na página 1 do caderno oficial.',
2:'Texto II: Um índio, de Caetano Veloso. Para a leitura literária da canção, consulte as páginas 1 e 2 do caderno oficial.',
3:'Texto III: Amor, de Clarice Lispector. Ana leva uma vida doméstica organizada. Durante uma viagem de bonde, ver um homem cego mascando chiclete provoca nela uma crise e altera sua percepção da realidade. O conto está nas páginas 2 e 3 do caderno oficial.',
4:'Texto IV: a epifania literária é uma revelação inesperada que muda a percepção da personagem a partir de uma situação cotidiana. No conto Amor, Ana vivencia essa mudança durante a viagem de bonde. Consulte os Textos III e IV na página 3 do caderno oficial.',
5:'Texto V: Simone de Beauvoir compara a repetição do trabalho doméstico ao suplício de Sísifo. Relacione essa reflexão à mudança de percepção de Ana no conto Amor. Os textos estão nas páginas 2 a 4 do caderno oficial.',
11:'Nas questões de Física, considere g = 10,0 m/s² e a pressão atmosférica na superfície igual a 1,0 atm.',
12:'Na prova, o enunciado usa a expressão diâmetro do orifício com unidade mm². Foi preservada a redação oficial; o valor de 1,0 mm² é usado como área no cálculo da continuidade.',
14:'Gabarito definitivo após recursos: as alternativas C e E são aceitas nesta questão.',
15:'Gabarito definitivo após recursos: as alternativas B e C são aceitas nesta questão.'}

def quote(v): return 'null' if v is None else "'"+str(v).replace("'","''")+"'"
allq=[]
for day in [1,2]:
    qs=json.loads((DATA/f'questoes-dia-{day}.json').read_text(encoding='utf-8'))
    for q in qs:
        n=q['number']; q['options'][4]=re.split('|'.join(map(re.escape,CUTS)),q['options'][4])[0].strip()
        q['text']=q['text'].replace('NAOñeutralidade','NÃO neutralidade').replace('suja fórmula','cuja fórmula')
        for k in ['text','options']:
            def norm(t):
                return t.replace('N aCℓ','NaCl').replace('HCℓ','HCl').replace('F e','Fe').replace('d́e','de').replace('d́ados','dados').replace('E possível','É possível').replace('\x15','-').replace('bene- ficiária','beneficiária').replace('cavalosmarinhos','cavalos-marinhos')
            q[k]=[norm(t) for t in q[k]] if k=='options' else norm(q[k])
        q['subject']=SUB[day][(n-1)//5]; q['answer']=ANS[day][n-1]; q['support_image']=None; q['support']=(SUPPORT1 if day==1 else SUPPORT2).get(n)
        q['explanation']=('Gabarito oficial após recursos: '+q['answer'].replace('/',' ou ')+'.') if '/' in q['answer'] else None
        if day==1 and n in CROPS:
            page,x0,y0,x1,y1=CROPS[n]; p=pdf.PdfDocument(DATA/'dia-1.pdf')[page]; w,h=p.get_size()
            im=p.render(scale=2).to_pil()
            if n in [12,14]:
                box={12:(108,213,223,306),14:(349,457,508,631)}[n]
            else:
                obj=list(p.get_objects(filter=[3]))[2 if n in [11,17] else 1]
                left,bottom,right,top=obj.get_bounds()
                box=(left,h-top,right,h-bottom)
            im.crop(tuple(round(v*2) for v in box)).save(ROOT/f'public/pism-ii-2025-dia-1-questao-{n}.png')
            q['support_image']=f'/pism-ii-2025-dia-1-questao-{n}.png'
        if day==1 and n==6:
            q['text']='Em Maceió, a extração de sal-gema provocou o afundamento do solo e a remoção de milhares de moradores. Esse desastre, assim como os rompimentos de barragens em Mariana e Brumadinho, relaciona-se à atividade mineral. Do ponto de vista econômico, esses desastres estão associados a qual processo?'
        if day==1 and n==7:
            q['text']='Entre 2010 e 2022, municípios brasileiros com 100 mil a 499 mil habitantes concentraram 67,5% do crescimento populacional do país. Observe o gráfico. O crescimento populacional das cidades médias no Brasil é explicado pela:'
        if day==1 and n==9:
            q['text']='O Censo 2022 registrou cerca de 11,4 milhões de domicílios vagos no Brasil, enquanto o déficit habitacional estimado para 2019 era de aproximadamente 5,9 milhões. Entre outros fatores, a coexistência de imóveis vazios e famílias sem habitação se deve:'
        if day==1 and n==12:
            q['text']=q['text'].replace('12 cm 10 cm ','').replace('0, 4 g/cm3','0,4 g/cm³')
        if day==1 and n==13:
            q['options']=['100 + 1000 cos((πx − π)/12)','1000 + 100 sen((πx − π)/6)','100 + 1000 cos((πx − π)/6)','1000 + 100 sen((πx − π)/12)','1000 + 100 cos((πx − π)/12)']
        if day==1 and n==14: q['text']=q['text'].replace('6 cm 8 cm ','')
        if day==1 and n==16:
            q['text']=q['text'].replace('Fe2O3','Fe₂O₃').replace('⇌','→')
        if day==2 and n==3:
            q['options']=[re.split(r', como (?:se observa|se lê)',o)[0].rstrip('.')+'.' for o in q['options']]
            q['support']+=' As alternativas foram adaptadas para não repetir os trechos do conto.'
        if day==2 and n==4:
            q['options']=['Ana grita e o condutor manda parar o bonde.','Ana percebe o homem cego mascando chiclete.','Os ovos se quebram e as gemas escorrem pela rede.','Ana se recosta no banco para buscar conforto.','Ana percebe o calor e os sons com maior intensidade.']
            q['support']+=' As alternativas descrevem as cenas, em vez de reproduzir o conto.'
        if day==2 and n==8:
            q['text']='Mudanças climáticas podem favorecer hospedeiros invertebrados e aumentar a ocorrência de doenças. Entre as doenças comuns em ecossistemas tropicais, quais são transmitidas por hospedeiros invertebrados, como artrópodes e moluscos?'
        if day==2 and n==11:
            q['text']='Considere g = 10,0 m/s², densidade da água do mar aproximadamente igual a 1,0 g/cm³ e pressão atmosférica igual a 1,0 × 10⁵ N/m². A profundidade no mar que corresponde a uma pressão total de 2,0 atm é de aproximadamente:'
        if day==2 and n==12: q['text']=q['text'].replace('mm2','mm²').replace('cm2','cm²')
        if day==2 and n==16:
            q['text']='Os textos de Paulina Chiziane e Ngugi wa Thiong’o denunciam o apagamento de línguas, crenças, memórias e identidades pelo colonialismo. Chiziane convoca ao reconhecimento das raízes; Thiong’o discute a destruição da confiança dos povos em sua própria cultura. Marque a alternativa correta sobre a relação dos textos com a dominação imperialista da África:'
        if day==2 and n==17:
            q['text']='Luís Gama, Adelina e Francisco José do Nascimento, conhecido como Dragão do Mar, atuaram de diferentes formas contra a escravidão: defesa jurídica, circulação de informações e recusa ao transporte de escravizados. Sobre essas personagens e sua relação com o fim da escravidão, é correto afirmar que:'
        if day==2 and n==18:
            q['text']='Em 1808, a família real portuguesa e sua corte transferiram-se para o Brasil, transportando pessoas e bens públicos e particulares. Sobre o significado desse evento para a história do Brasil, assinale a alternativa correta:'
        if day==2 and n==19:
            q['text']='Uma entrevista de Eurídice Figueiredo relaciona a violência da escravidão à violência racial atual. A imagem de apoio mostra manifestantes em Saint Louis, nos Estados Unidos, protestando contra a violência policial. Sobre esse tema, marque a alternativa correta:'
        if day==2 and n==20:
            q['text']='O romance A ilha sob o mar, de Isabel Allende, aborda a colonização e a escravidão no território do Haiti. O país tornou-se independente após um movimento revolucionário inserido no contexto internacional. Sobre o movimento de independência do Haiti, assinale a alternativa correta:'
        exp_path = DATA/'explanations.json'
        if exp_path.exists(): q['explanation'] = json.loads(exp_path.read_text(encoding='utf-8'))[str(day)][n-1]
        assert len(q['options'])==5 and all(q['options'])
        assert not re.search(r'[\x00-\x1f\ufffd]|[\u0300-\u036f]',q['text']+' '.join(q['options'])),(day,n)
    (DATA/f'questoes-dia-{day}.json').write_text(json.dumps(qs,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    allq.append(qs)
sql=['-- PISM II 2025 (2º ano) - 20 questões objetivas por dia.','-- Fontes oficiais UFJF/COPESE: '+SOURCES[1],'-- '+SOURCES[2],'-- Dia 1: gabarito de dezembro/2024. Dia 2: gabarito definitivo de janeiro/2025.','-- Textos de terceiros: sínteses e referências ao caderno; alternativas literárias 3 e 4 adaptadas.','-- Execute este arquivo completo no SQL Editor do Supabase. Reexecutável.','begin;','-- Amplia a validação do gabarito para aceitar alternativas após recursos, ex.: C/E.','alter table public.questions drop constraint if exists questions_answer_check;',"alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');"]
for day,qs in enumerate(allq,1):
    slug=f'pism-ii-2025-dia-{day}'; title=f'PISM II 2025 - {day}º dia'
    sql += [f"insert into public.exams (slug,title,source,year) values ({quote(slug)},{quote(title)},'pism',{quote('2025-'+str(day))}) on conflict (slug) do update set title=excluded.title, source=excluded.source, year=excluded.year;"]
    for q in qs:
        vals=[str(q['number'])]+[quote(q[k]) for k in ['subject','text','support','support_image']]+[quote(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',quote(q['answer']),quote(q['explanation'])]
        sql += ['insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)',f"select id, {', '.join(vals)} from public.exams where slug={quote(slug)}",'on conflict (exam_id,number) do update set subject=excluded.subject, text=excluded.text, support=excluded.support, support_image=excluded.support_image, options=excluded.options, answer=excluded.answer, explanation=excluded.explanation;']
sql += ['commit;',"select e.slug, count(q.id) as quantidade_questoes from public.exams e left join public.questions q on q.exam_id=e.id where e.slug in ('pism-ii-2025-dia-1','pism-ii-2025-dia-2') group by e.slug order by e.slug;"]
(ROOT/'supabase/seed-pism-ii-2025.sql').write_text('\n\n'.join(sql)+'\n',encoding='utf-8')
print('SQL gerado: 2 provas, 40 questões, 9 figuras; gabaritos C/E e B/C preservados.')
