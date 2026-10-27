"""Build reviewable UERJ EQ2 data and an insert-only seed. Never upsert existing rows."""
from pathlib import Path
from pypdf import PdfReader
import pdfplumber,json,re,sys
sys.stdout.reconfigure(encoding='utf8')
D=Path('pdf-extracts/uerj-2026-eq2');out=Path('public/uerj-2026-eq2');out.mkdir(exist_ok=True)
qs=json.loads((D/'questions-raw.json').read_text(encoding='utf8'))
raw=json.loads((D/'pages.json').read_text(encoding='utf8'))
keys=json.loads((D/'pages-gabarito.json').read_text(encoding='utf8'))
letter_rows=[line.strip().split() for line in '\n'.join(keys).splitlines() if re.fullmatch(r'[ABCD](?:\s+[ABCD])+',line.strip())]
assert [len(x) for x in letter_rows]==[22,15,7,12,14]
answers=letter_rows[0]+letter_rows[1][10:15]+letter_rows[2]+letter_rows[3]+letter_rows[4]
assert len(answers)==60
fix_options={5:['5,0 × 10¹⁸','4,0 × 10¹⁸','3,0 × 10¹⁹','2,0 × 10¹⁹'],17:['liberalidade','ambiguidade','excentricidade','superficialidade'],29:['f(x) = x² − 1','f(x) = x² + 1','f(x) = −x² − 1','f(x) = −x² + 1'],31:['√7/4','1/4','−√7/4','−1/4'],32:['27/10','25/7','13/10','11/7'],34:['3/4','1/4','3/5','2/5'],39:['2,5 × 10⁻⁵','4,1 × 10⁻⁵','6,3 × 10⁻⁵','8,0 × 10⁻⁵'],46:['10³','10⁴','10⁵','10⁶'],59:['Gráfico A — ver apoio oficial','Gráfico B — ver apoio oficial','Gráfico C — ver apoio oficial','Gráfico D — ver apoio oficial']}
fix_text={
5:'Fractais são um tipo de forma geométrica encontrada nos cristais de gelo que compõem os flocos de neve. Admita que um fractal apresente massa igual a 9,0 × 10⁻⁴ g e que seja formado apenas por moléculas de água. Nesse fractal, o número de moléculas de água é igual a:',
6:'O chamado conjunto de Cantor, formado pelos infinitos pontos que são os extremos de segmentos de retas, gera uma curva que é um fractal. Esse conjunto é resultante da remoção, infinitas vezes, do terço central de segmentos de reta. No apoio oficial, apresentam-se os quatro primeiros passos da obtenção desses pontos. No passo 6 desse exemplo, a quantidade de pontos que são os extremos dos segmentos formados é:',
8:'Observe no apoio o quadro “O confuso mundo do esporte internacional nas Ilhas Britânicas”. No texto base, menciona-se a formação do Estado-nação. As imagens são exemplares para compreender que Estado e nação são conceitos distintos e polissêmicos e indicam a existência de Estados plurinacionais. As unidades espaciais disputam competições esportivas com diferentes configurações, ora reunidas, ora separadas. A “confusão” referida no título está vinculada ao fato de as imagens englobarem, simultaneamente, as seguintes unidades espaciais:',
28:'Observe no gráfico do apoio a distribuição de frequências das notas de matemática de 20 alunos de uma turma. A média aritmética das notas de matemática de todos os alunos dessa turma é:',
29:'A parábola representada no apoio intersecta os eixos coordenados nos pontos A (1, 0), B (−1, 0) e C (0, −1). Essa parábola é o gráfico da função quadrática f definida pela seguinte sentença:',
31:'Considere o seno e o cosseno de um ângulo α do segundo quadrante do círculo trigonométrico representado no apoio. Se sen α = 3/4, o valor de cos α é:',
32:'Observe no apoio o retângulo PQRS com lados PQ = 8 cm e PS = 3 cm. O ponto T é a interseção do lado RS com o segmento PU, sendo TS = 5 cm. O ponto U, que define o triângulo RUT, pertence à reta QR. A área do triângulo RUT, em cm², é igual a:',
33:'O tetraedro ABCD tem altura AD e base ABC inscrita em um círculo de diâmetro AB, conforme mostra a ilustração do apoio. Todo triângulo inscrito em um círculo que tem um dos lados igual ao diâmetro é retângulo. Considere que AC = 6 cm, BC = 8 cm e BD = 10√2. O volume desse tetraedro, em cm³, é igual a:',
35:'Em um experimento, verificou-se a relação entre a tensão, em volts, e a corrente elétrica, em ampères, nos resistores R₁ e R₂. Observe o gráfico no apoio. A resistência, em ohms, equivalente da associação em série de R₁ e R₂ é igual a:',
41:'Os recipientes W, X, Y e Z, de capacidades térmicas desprezíveis, possuem o mesmo volume de um mesmo líquido nas temperaturas de 20 °C, 55 °C, 75 °C e 90 °C, respectivamente. Admita que o conteúdo dos quatro recipientes seja misturado, sem perda de calor, em um único recipiente termicamente isolado. A temperatura de equilíbrio térmico dessa mistura, em °C, é igual a:',
42:'Na tabela do apoio estão apresentadas as fórmulas estruturais de quatro compostos com propriedades antioxidantes que correspondem à vitamina E: I, alfatocoferol; II, betatocoferol; III, gamatocoferol; IV, deltatocoferol. Analisando as fórmulas estruturais, verifica-se isomeria plana entre os seguintes tocoferóis:',
45:'A fórmula molecular C₂₂H₃₀Cl₂N₁₀ corresponde ao digliconato de clorexidina, substância antisséptica descrita no enunciado. Considere um medicamento que consiste em uma solução alcoólica na concentração de 5 g/L dessa substância. Nesse medicamento, a concentração em quantidade de matéria de digliconato de clorexidina, em mol/L, é aproximadamente de:',
46:'Em fevereiro de 2023, um terremoto ocorrido na península de Anatólia sacudiu a fronteira entre Síria e Turquia. Admita as energias liberadas: terremoto, 7,9 × 10¹⁵ J; bomba atômica de Hiroshima, 2,0 × 10¹² J. A ordem de grandeza da razão entre as energias liberadas pelo terremoto e pela bomba corresponde a:',
47:'Observe os quadrinhos no apoio oficial. A partir de seu conteúdo, identifica-se uma contradição entre os seguintes aspectos relativos à sociedade estadunidense:',
49:'Observe no apoio o mapa “As mais baixas temperaturas já registradas em graus Celsius”. A intensidade das baixas temperaturas, verificada no hemisfério Norte em comparação com o Sul, é explicada, principalmente, pelo seguinte fator climático:',
53:'Observe no apoio o mapa de novos projetos de fabricação de microchips nos Estados Unidos, com investimentos superiores a US$ 1 bilhão em fevereiro de 2024. O governo federal estadunidense vem estimulando a recente mudança no padrão locacional de fabricação dos microchips para seu setor de informática. Essa política territorial busca, prioritariamente, atingir o seguinte objetivo estratégico:',
54:'Observe os quadrinhos da cartunista Laerte no apoio. Neles, tematiza-se uma das contradições das relações de trabalho em sociedades capitalistas contemporâneas. Essa contradição é estabelecida entre os seguintes processos:',
56:'Observe o gráfico “Pessoas indígenas por situação de domicílios” no apoio. A divulgação dos resultados do Censo Demográfico 2022 pelo IBGE tem revelado mudanças importantes na composição e distribuição da população brasileira na década de 2020. As mudanças indicadas no gráfico, para os residentes em áreas urbanas, são justificadas, diretamente, pelo seguinte fator:',
59:'Observe no apoio o mapa “Projeção da variação absoluta da população total em idade de trabalho — 2023–2050 (em milhões)” e as quatro curvas de crescimento populacional. Considerando os quantitativos apresentados, a curva correspondente ao país com maior decréscimo absoluto da população total em idade de trabalho é:',
}
base=re.sub(r'^Texto Base\n.*?\n3\n','',raw[2],flags=re.S).split('\n5 ')[0].strip()
english=re.sub(r'^Linguagens  Inglês\n.*?\n16\n','',raw[15],flags=re.S).split('\n5 ')[0].strip()
shared18='Frequentemente, em seus versos, Seixas falava de estrelas, flores e brisas, de que tirava imagens para exprimir a graça da mulher e as emoções do amor. Pura imitação: como em geral os poetas da civilização, ele não recebia da realidade essas impressões, e sim de uma variada leitura. Originais somente são aqueles engenhos que se infundem na natureza, musa inexaurível porque é divina. Para isso, é preciso ou nascer nas idades primitivas ou desprezar a sociedade e refugiar-se na solidão.'
records=[];source_pages={}
with pdfplumber.open('public/provas/uerj/2026-eq2.pdf') as pdf:
 for page_no in sorted(set(q['page'] for q in qs)):
  page=pdf.pages[page_no-1]
  labels=sorted([w for w in page.extract_words(extra_attrs=['size']) if w['x0']<80 and w['size']>17 and re.fullmatch(r'\d{2}',w['text'])],key=lambda w:w['top'])
  by_num={int(w['text']):(j,w) for j,w in enumerate(labels)}
  for q in [q for q in qs if q['page']==page_no]:
   n=q['number'];j,label=by_num[n]
   top=max(40,label['top']-32);bottom=labels[j+1]['top']-34 if j+1<len(labels) else page.height-30
   if not (out/f'q{n}.png').exists():page.crop((27,top,555,bottom)).to_image(resolution=145).save(out/f'q{n}.png')
  if page_no in [10,22,24]:page.to_image(resolution=145).save(out/f'apoio-p{page_no}.png')
 for page_no in [3,16,39]:pdf.pages[page_no-1].to_image(resolution=145).save(out/f'apoio-p{page_no}.png')
for q in qs:
 n=q['number'];text=fix_text.get(n,q['text']);options=fix_options.get(n,q['options'])
 text=text.replace('Administratitvo','Administrativo').replace('Cade − C onselho','Cade − Conselho')
 for before,after in {'ser vindo':'servindo','f ront':'front','Pró- Vacina':'Pró-Vacina','O L emos':'O Lemos','conser vam':'conservam','C omo':'Como','IB GE':'IBGE','S eria':'Seria','Eg un-Eg un':'Egun-Egun','baixos- relevos':'baixos-relevos'}.items():text=text.replace(before,after)
 if n==50:text='Observe os quadrinhos de Jacques Tardi no apoio. O livro Era a guerra de trincheiras é uma história em quadrinhos sobre a Primeira Guerra Mundial (1914-1918), baseada em testemunhos de sobreviventes. De acordo com o fragmento reproduzido, a abordagem do autor sobre o cotidiano desse conflito explicitou, principalmente, uma conjuntura de:'
 if n==52:text=text.replace('Manchete de A Manhã, 25 de novembro de 1935 de Caçadores, sediado na Vila Militar cafehistoria.com.br de Socorro','de Caçadores, sediado na Vila Militar de Socorro')
 options=[v.replace('existence .','existence.') for v in options]
 assets=[f'/uerj-2026-eq2/q{n}.png'];support='Enunciado e alternativas originais no apoio oficial. Clique na imagem para ampliar.'
 if n<=8:assets.insert(0,'/uerj-2026-eq2/apoio-p3.png');support=base
 elif 9<=n<=22:support='As questões 9 a 22 referem-se ao romance Senhora, de José de Alencar, publicado pela primeira vez em 1875.'
 if n in [18,19]:support+='\n\n'+shared18;assets.insert(0,'/uerj-2026-eq2/apoio-p10.png')
 if 23<=n<=27:support=english;assets.insert(0,'/uerj-2026-eq2/apoio-p16.png')
 if n in [38,39]:support='Estudo da concentração de glicose no sangue após consumo de sacarose ou palatinose. A palatinose apresenta digestão e absorção mais lentas.';assets.insert(0,'/uerj-2026-eq2/apoio-p22.png')
 if n in [43,44]:support='Gráficos de volume e densidade da água em função da temperatura, ilustrando a dilatação anômala da água.';assets.insert(0,'/uerj-2026-eq2/apoio-p24.png')
 if n in [5,37,45]:assets.append('/uerj-2026-eq2/apoio-p39.png')
 subject={1:'Física',2:'Biologia',3:'Filosofia',4:'Língua Portuguesa',5:'Química',6:'Matemática',7:'História',8:'Geografia',35:'Física',36:'Biologia',37:'Química',38:'Biologia',39:'Química',40:'Biologia',41:'Física',42:'Química',43:'Física',44:'Física',45:'Química',46:'Física'}.get(n,'Língua Portuguesa' if n<=22 else 'Inglês' if n<=27 else 'Matemática' if n<=34 else 'Geografia' if n in [49,51,53,55,56,57,59] else 'História')
 records.append({'number':n,'subject':subject,'text':text,'support':support,'support_image':json.dumps(assets,ensure_ascii=False),'options':options,'answer':answers[n-1],'explanation':None})
 source_pages[n]=q['page']
assert all('/g' not in q['text']+''.join(q['options']) for q in records)
assert all(len(q['options'])==4 for q in records)
(D/'questions-reviewed.json').write_text(json.dumps(records,ensure_ascii=False,indent=2),encoding='utf8')
Path('src/lib/uerjObjectiveSources.js').write_text('const pages = '+json.dumps(source_pages,indent=2)+'\n\nexport function uerjObjectiveSource(slug, number) {\n  return slug === "uerj-2026-eq2" ? `/provas/uerj/2026-eq2.pdf#page=${pages[number] || 1}` : null\n}\n',encoding='utf8')
def lit(v):return 'null' if v is None else "'"+str(v).replace("'","''")+"'"
values=[]
for q in records:
 values.append('('+','.join([str(q['number']),lit(q['subject']),lit(q['text']),lit(q['support']),lit(q['support_image']),lit(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',lit(q['answer']),'null'])+')')
seed="""-- Insert-only: never updates or deletes existing exams or questions.
-- UERJ 2026, 2º Exame de Qualificação, 31/08/2025, Inglês.
begin;
do $guard$ begin
 if exists (select 1 from public.exams where slug='uerj-2026-eq2') then
  raise exception 'UERJ 2026 EQ2 already exists: no changes applied';
 end if;
end $guard$;
insert into public.exams(slug,title,source,year) values
 ('uerj-2026-eq2','UERJ 2026 · 2º Exame de Qualificação · Inglês','uerj','2026');
insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation)
select e.id,v.* from public.exams e cross join (values
"""+',\n'.join(values)+"\n) as v(number,subject,text,support,support_image,options,answer,explanation) where e.slug='uerj-2026-eq2';\ncommit;\n"
# NULL in a VALUES column can infer text; the explanation column itself is text.
Path('supabase/seed-uerj-2026-eq2.sql').write_text(seed,encoding='utf8')
print('60 questões preparadas; 66 apoios originais; seed somente INSERT, com bloqueio se a prova já existir.')
