"""Editorial review and idempotent data-only import of official CBMERJ cadernos."""
import json,re,sys,unicodedata
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/cbmerj';sys.stdout.reconfigure(encoding='utf8')
data=json.loads((D/'questions-raw.json').read_text(encoding='utf8'));media=json.loads((D/'media.json').read_text(encoding='utf8'));inventory=json.loads((D/'media-inventory.json').read_text(encoding='utf8'))
entries_by_year={year:json.loads((D/f'{year}-entries.json').read_text(encoding='utf8')) for year in (2023,2024,2025,2026)}
def items(year,n):return [q for slug,qs in data.items() if f'-{year}-' in slug for q in qs if q['number']==n]
def edit(year,n,text=None,options=None,support=None):
 for q in items(year,n):
  if text is not None:q['text']=text
  if options is not None:q['options']=options
  if support is not None:q['support']=support
def replace(year,n,old,new):
 for q in items(year,n):
  q['text']=q['text'].replace(old,new);q['options']=[o.replace(old,new) for o in q['options']]
def tidy(s):
 s=unicodedata.normalize('NFKC',s) if False else s
 s=s.replace('\uf06c','l').replace('\uf0b0','°').replace('\uf0ae','→')
 s=re.sub(r'[\ue000-\uf8ff]','',s)
 s=re.sub(r'\s*TIPO BRANCA\s*[–-]\s*PÁGINA\s*\d+.*$','',s,flags=re.I)
 s=s.replace('RASCUNHO','').replace('Asem qualquer','A- sem qualquer').replace('120o','120°')
 s=re.sub(r'(?<=\d)oC','°C',s)
 return s.strip()
for slug,qs in data.items():
 year=int(slug.split('-')[1])
 for q in qs:
  q['text']=tidy(q['text']);q['options']=[tidy(o) for o in q['options']]
  if q['support']:q['support']=tidy(q['support'])
  paths=list(dict.fromkeys(media.get(f'{year}-{q["number"]}',[])))
  q['support_image']=json.dumps(paths,ensure_ascii=False) if len(paths)>1 else paths[0] if paths else None
  # Remove axis labels and diagram glyphs from the statement: the complete
  # figures remain in the dedicated support_image field.
  entries=entries_by_year[year]
  candidates=[e for e in entries if e['number']==q['number'] and e['page']==q['page']]
  if candidates:
   boxes=[i for i in inventory if i['year']==year and i['number']==q['number']]
   for x in candidates[0]['lines']:
    l=x['line']
    if any(i['page']==x['page'] and l['top']>=i['box'][1] and l['bottom']<=i['box'][3] and l['x0']>=i['box'][0] and l['x1']<=i['box'][2] for i in boxes):
     # Only remove the literal extracted line, not matching words in prose.
     raw=l['text'];q['text']='\n'.join(s for s in q['text'].splitlines() if s!=raw)

# Mathematical fractions, powers and structural formulas are transcribed from
# the visual PDF, instead of accepting flattened PDF reading order.
edit(2023,26,'Os elementos de cada linha e de cada coluna da matriz 5 × 5 apresentada no apoio formam progressões geométricas. O valor de N é:')
edit(2023,27,options=['−3.','−1.','−9/2.','9/2.','9.'])
edit(2023,29,options=['19/3.','21/5.','23/4.','25/3.','27/4.'])
edit(2023,30,options=['8/45.','1/10.','1/5.','4/25.','3/40.'])
edit(2023,38,options=['2R.','3R/4.','R.','2R/3.','R/2.'])
for q in items(2023,38):q['text']=q['text'].replace('∆𝑉\nocorrida, a razão permanece igual a\n∆𝐴','ocorrida, a razão ΔV/ΔA permanece igual a')
edit(2023,39,options=['V(I) = V(II) = V(III).','V(I) > V(II) = V(III).','V(I) < V(II) = V(III).','V(I) > V(II) > V(III).','V(I) < V(II) < V(III).'])
for q in items(2023,39):q['text']=re.sub(r'Se V.*?é correto afirmar que','Se V(I), V(II) e V(III) são, respectivamente, as velocidades com que (I), (II) e (III) chegam em B, é correto afirmar que',q['text'],flags=re.S)
replace(2023,40,'t e t foi de\n1 2','t₁ e t₂ foi de')
edit(2023,43,options=['cA = 4cB','cA = 2cB','cA = cB','cA = cB/2','cA = cB/4'])
replace(2023,43,'(c ) e (c )','(cA) e (cB)');replace(2023,43,'\nA B\n','\n')
edit(2023,49,'O carbono possui três isótopos naturais: ¹²₆C, ¹³₆C e ¹⁴₆C. As abundâncias dos isótopos ¹²₆C e ¹³₆C são, respectivamente, 98,9% e 1,1%, restando apenas traços do ¹⁴₆C. Sobre esses átomos, é correto afirmar que eles possuem:')
replace(2023,50,'C H O .\n2 2 4','C₂H₂O₄.')
edit(2023,54,options=['BF₃ e KCl','BeCl₂ e NO','SF₆ e CaCl₂','KBr e NaF','Cl₂ e SO₃'])
edit(2023,55,options=['Na₂O e MgO.','Al₂O₃ e Na₂O.','SiO₂ e Al₂O₃.','K₂O e Al₂O₃.','SiO₂ e CaO.'])
for a,b in [('SiO ,','SiO₂,'),('Na O','Na₂O'),('K O','K₂O'),('Al O','Al₂O₃')]:replace(2023,55,a,b)
for q in items(2023,55):q['text']=re.sub(r'\n(?:2|2 2|2 3)\n','\n',q['text'])
edit(2023,56,options=['Ca₃PO₄ e Ca₂SO₄.','Ca₃(PO₄)₂ e CaSO₄.','Ca(PO₄)₂ e CaSO₄.','Ca(PO₄)₃ e Ca(SO₄)₃.','Ca₂(PO₄)₃ e CaSO₄.'])
replace(2023,56,'H PO','H₃PO₄');replace(2023,56,'H SO','H₂SO₄')
for q in items(2023,56):q['text']=re.sub(r'\n(?:3 4|2 4)\n','\n',q['text'])
edit(2023,57,options=['NH₃','BaO','SO₃','CH₄','CO'])
for q in items(2023,58):q['text']=re.sub(r'\(KMnO.*?A soma','(KMnO₄) e sulfato ferroso (FeSO₄) em meio ácido:\na KMnO₄ + b FeSO₄ + c H₂SO₄ → d Fe₂(SO₄)₃ + e K₂SO₄ + f MnSO₄ + g H₂O\nA soma',q['text'],flags=re.S)
for q in items(2023,59):q['text']=re.sub(r'\(\(NH.*?As etapas','((NH₂)₂CO) passa por duas etapas principais:\n2 NH₃ + CO₂ → NH₂C(O)ONH₄\nNH₂C(O)ONH₄ → (NH₂)₂CO + H₂O\nAs etapas',q['text'],flags=re.S)
replace(2023,60,'hidrogênio (H )','hidrogênio (H₂)')
for q in items(2023,60):q['text']=re.sub(r'2 H \(g\).*?Nessa reação','2 H₂(g) + O₂(g) → 2 H₂O(g)\nNessa reação',q['text'],flags=re.S);q['text']=q['text'].replace('\n2\n','\n')

edit(2024,38,options=['−21/2.','21/2.','−11/2.','11/2.','7/2.'])
replace(2024,38,'\n−21','')
edit(2024,39,'Sobre dois números inteiros x e y, sabe-se que 2x + y > 10 e x − 6 ≤ 0. O valor mínimo de y é:')
edit(2024,40,'Em um triângulo retângulo cuja hipotenusa mede 39 cm, a tangente de um dos ângulos agudos é 5/12. A soma das medidas dos catetos desse triângulo é igual a:')
edit(2024,41,'Os números X, Y e Z são tais que X + X + X = 21, Y + Y + Y = 15 e X + X·Y = Z. O valor de Z é:')
edit(2024,46,'No plano cartesiano, o triângulo cujos vértices são (0,0), (a,b) e (c,d) tem área dada pelo valor absoluto de (ad − bc)/2. A área do triângulo cujos vértices são (0,0), (5,−1) e (8,6) é:')
edit(2024,47,'Considere a equação x² + 12/x = 19, com x ≠ 0. Uma das raízes dessa equação é:')
edit(2024,49,options=['1/3.','1/6.','1/9.','2/9.','1/12.'])
for q in items(2024,49):q['text']=re.sub(r'\n1$','',q['text'])
edit(2024,86,'Três esferas idênticas, muito leves, estão penduradas por fios isolantes no vácuo. Em um dado instante, a esfera A (QA = 10 μC) toca a esfera B (QB = −2 μC). Decorridos alguns instantes, elas são afastadas e faz-se com que a esfera B toque na esfera C (QC = 6 μC). Após os contatos descritos, as cargas das esferas A, B e C são, respectivamente:')
for n in (87,88):
 edit(2024,n,options=[f'Gráfico {a}, apresentado no apoio.' for a in 'ABCDE'])
edit(2024,88,'A figura mostra uma escada homogênea em repouso com uma das extremidades apoiada no solo e a outra em uma parede vertical. Considere: P, força peso; Fat(s), força de atrito entre a escada e o solo; Fat(p), força de atrito entre a escada e a parede; Ns, força normal ao solo; e Np, força normal à parede. O diagrama que melhor indica as forças que atuam sobre a escada é:')
edit(2024,90,options=['36.','6.','1.','1/6.','1/36.'])
edit(2024,82,options=['CaO e Al₂S₃','CaO e Al₂(SO₄)₃','Ca(OH)₂ e Al₂S₃','CaO e Al₂(SO₃)₃','Ca(OH)₂ e Al₂(SO₄)₃'])
edit(2024,77,options=['SiCl₄(g) + 2 H₂(g) + 2 CO₂(g) → SiO₂(s) + 4 HCl(g) + 2 CO(g)','SiO₂(s) + SiCl₄(g) + 2 H₂(g) → 2 Si(s) + 4 HCl(g) + O₂(g)','SiCl₄(g) + 2 H₂(g) + O₂(g) → SiO₂(s) + 4 HCl(g)','SiO₂(s) + 4 HCl(g) + 2 CO₂(g) → SiCl₄(g) + 2 H₂O(g) + 2 CO(g) + O₂(g)','SiO₂(s) + 4 HCl(g) + 2 CO(g) → SiCl₄(g) + 2 H₂(g) + 2 CO₂(g)'])
for a,b in [('SiO )','SiO₂)'),('SiCl )','SiCl₄)'),('H )','H₂)'),('CO )','CO₂)')]:replace(2024,77,a,b)
for q in items(2024,77):q['text']=re.sub(r'\n(?:2|4 2)\n','\n',q['text'])
replace(2024,83,'TQ .\n2','TQ₂.');replace(2024,83,'R T .\n2 3','R₂T₃.')
for q in items(2024,90):q['text']=re.sub(r'\n1$','',q['text'])
for q in items(2024,90):q['text']=re.sub(r'𝑃\nSendo assim.*?é igual a','Sendo assim, a razão P₂/P₁ entre as potências consumidas nas situações ilustradas na figura 2 (P₂) e na figura 1 (P₁) é igual a',q['text'],flags=re.S)

edit(2025,24,'Considere uma função de variável real definida por f(x) = 3 − 2 cos(x/2). O conjunto imagem dessa função é:')
replace(2025,26,'\n{\n','\n')
replace(2025,28,'• a equação da parábola é y = ;\n32','• a equação da parábola é y = x²/32;');replace(2025,28,'\nx²\n','\n')
edit(2025,29,options=['101/243','107/243','112/243','118/243'])
for q in items(2025,29):q['text']=q['text'].removesuffix('\n101')
edit(2025,30,'Sabe-se que a multiplicação de (1 + 2 + 2² + 2³ + ... + 2ᵐ) por (1 + 3 + 3² + 3³ + ... + 3ⁿ) possui (m + 1)·(n + 1) termos da forma 2ᵃ·3ᵇ, sendo a, b, m e n números naturais. Cada termo desse produto é um divisor natural do número 2ᵐ·3ⁿ. A soma de todos os divisores naturais de 2304 é:')
edit(2025,41,options=['Vetor A, apresentado no apoio.','Vetor B, apresentado no apoio.','Vetor C, apresentado no apoio.','Vetor D, apresentado no apoio.'])
replace(2025,44,'m/s2','m/s²');replace(2025,45,'N/m2','N/m²')
for q in items(2025,49):
 q['text']=re.sub(r'Nas\n1 2 3\nsimulações','Nas simulações',q['text']).replace('θ = –10 ºC, θ = 20 ºC e θ = 50 ºC','θ₁ = −10 °C, θ₂ = 20 °C e θ₃ = 50 °C')
 q['text']=re.sub(r'\n\(cid:31\)\nL\n4 cm','',q['text']);q['text']=re.sub(r'Após o equilíbrio.*?A relação','Após o equilíbrio térmico nas temperaturas θ₁, θ₂ e θ₃, foram medidos os respectivos períodos T₁, T₂ e T₃. A relação',q['text'],flags=re.S)
edit(2025,49,options=['T₁ = T₂ = T₃','T₁ > T₂ > T₃','T₁ < T₂ < T₃','T₁ > T₂ = T₃'])
for q in items(2025,50):q['text']=re.sub(r'v→ de módulo igual a 72 km/h.*?Observe a imagem:', 'v₁ de módulo igual a 72 km/h. Após realizar uma curva, esse caminhão atinge a velocidade v₂ de módulo igual a 54 km/h. Observe a imagem no apoio:',q['text'],flags=re.S);q['text']=re.sub(r'\nv→\n[12]','',q['text'])
edit(2025,53,options=['Al₂(SO₄)₃','Na₂CO₃','KNO₃','NaCl'])
replace(2025,53,'Al (SO ) , Na CO\n2 4 3 2 3\nKNO','Al₂(SO₄)₃, Na₂CO₃, KNO₃');replace(2025,53,'\n3\n','\n')
edit(2025,55,options=['(NH₄)₂H₂PO₄','(NH₄)₂HPO₄','NH₄HPO₄','NH₄H₂PO₄'])
replace(2025,56,'C H → C H + C H\n12 26 8 18 4 8','C₁₂H₂₆ → C₈H₁₈ + C₄H₈')
edit(2025,58,'Considere a reação de equilíbrio 2 SO₂(g) + O₂(g) ⇌ 2 SO₃(g) e os valores de Kc, determinados em função das concentrações molares, nas duas temperaturas apresentadas na tabela de apoio. A variação de entalpia durante a síntese de SO₃ é representada pelo seguinte gráfico:',[f'Gráfico {a}, apresentado no apoio.' for a in 'ABCD'])
for q in items(2025,59):q['text']=re.sub(r'\nI II III IV.*?A análise química','\nA análise química',q['text'],flags=re.S).replace('presença de H e','presença de H₂ e').replace('KMnO .\n4','KMnO₄.').replace('\n2\n','\n')

edit(2026,24,'Considere a função f: [0, 2π] → ℝ tal que f(x) = 6 cos(x/4 + π/4). O valor máximo de f é:')
replace(2026,23,'\n{\n','\n')
replace(2026,25,'x4 − 3x3 − 3x2','x⁴ − 3x³ − 3x²')
replace(2026,28,'25 × 33','2⁵ × 3³')
edit(2026,39,options=[f'Gráfico {a}, apresentado no apoio.' for a in 'ABCD'])
for q in items(2026,39):q['text']=q['text'].split('Infusão de PTH')[0].strip()
edit(2026,42,'De acordo com os postulados da teoria da relatividade especial, de Albert Einstein, dois observadores que possuem movimento relativo entre si observam intervalos de tempo diferentes. Considere um observador P, em repouso na Terra, e um observador N, deslocando-se em uma nave. A relação entre os intervalos de tempo marcados pelos dois observadores é Δt = Δt′/√(1 − v²/c²), sendo Δt o intervalo medido por P, Δt′ o intervalo medido por N, v a velocidade relativa entre os referenciais e c a velocidade da luz no vácuo. Sabe-se que Δt > Δt′. Admita que N realiza uma viagem com velocidade v = 0,75c, sendo Δt′ = 6,6 horas. Nessas condições, o intervalo de tempo Δt dessa viagem, em horas, medido por P, corresponde, aproximadamente, a:')
edit(2026,51,options=['C₄H₅N₄O₃','C₄H₆N₄O₃','C₅H₅N₄O₃','C₅H₆N₄O₃'])
edit(2026,53,options=['CaO','MgO','Na₂O','SiO₂'])
replace(2026,53,'Na O e SiO ,','Na₂O e SiO₂,');replace(2026,53,'\n2 2\n','\n')
replace(2026,55,'C H O.\n3 6','C₃H₆O.');replace(2026,55,'KMnO em meio ácido','KMnO₄ em meio ácido');replace(2026,55,'\n4\n','\n')
for q in items(2026,56):q['text']=re.sub(r'CO \(aq\).*?No organismo','CO₂(aq) + H₂O(l) ⇌ H₂CO₃(aq)\nH₂CO₃(aq) ⇌ H⁺(aq) + HCO₃⁻(aq)\nNo organismo',q['text'],flags=re.S)
for q in items(2026,58):q['text']=re.sub(r'2 ZnS.*?Admitindo','2 ZnS(s) + 3 O₂(g) → 2 ZnO(s) + 2 SO₂(g)\nZnO(s) + CO(g) → Zn(s) + CO₂(g)\nAdmitindo',q['text'],flags=re.S)
for q in items(2026,59):q['text']=re.sub(r'C H OH.*?Admita','C₂H₅OH(l) + 3 O₂(g) → 2 CO₂(g) + 3 H₂O(l)\nConsulte a tabela de entalpias de formação no apoio.\nAdmita',q['text'],flags=re.S)
edit(2026,61,options=[f'Diagrama {a}, apresentado no apoio.' for a in 'ABCD'])
edit(2026,70,'Consulte os mapas da taxa de fertilidade por país e região, referentes a 1950 e 2023, no apoio. De acordo com a análise desses mapas, as pirâmides etárias que representam o conjunto da população mundial em 1950 e em 2023 são, respectivamente:',[f'Par de pirâmides {a}, apresentado no apoio.' for a in 'ABCD'])

# Restore shared quantitative passages, which precede their numbered questions.
for year,numbers,page in [(2025,[41,42,43],19),(2025,[44,45],20),(2025,[54,55],24)]:
 layout=json.loads((D/f'{year}-layout.json').read_text(encoding='utf8'));p=next(p for p in layout if p['page']==page);top=min(m['top'] for m in p['marks'])
 lines=[l for l in sorted(p['lines'],key=lambda l:(l['top'],l['x0'])) if l['top']<top and l['top']>60]
 common='\n'.join(l['text'] for l in lines if not l['text'].startswith('CONSIDERE'))
 if page==19:common='Ao realizar um atendimento, uma ambulância do Corpo de Bombeiros precisou estacionar em uma ladeira, onde o atrito não é desprezível, mantendo-se em repouso, como ilustra a figura de apoio. A sirene dessa ambulância emite som com velocidade de 330 m/s, em uma frequência de 550 Hz, e seus dois faróis dianteiros, associados em paralelo, possuem cada um potência de 36 W e são alimentados por uma bateria de 12 V.'
 if page==20:common=common.replace('g = 10 m/s2, μ = 103 kg/m3 e 1 atm = 105 N/m2.\nágua','g = 10 m/s², μ(água) = 10³ kg/m³ e 1 atm = 10⁵ N/m².')
 if page==24:common=common.replace('H PO e NH OH.\n3 4 4','H₃PO₄ e NH₄OH.')
 for n in numbers:edit(year,n,support=common)

for year,n in [(2025,10),(2026,6)]:
 for q in items(year,n):
  first=items(year,1)[0]['support']
  if first and first not in (q['support'] or ''):q['support']=first+'\n\n'+(q['support'] or '')
for q in items(2023,90):q['options']=[o.split('Read the text')[0].strip() for o in q['options']]
for year,n,marker in [(2023,1,'Em todas as frases abaixo'),(2024,1,'A mensagem mais importante'),(2024,2,'Com essa frase'),(2024,18,'Assinale a afirmação'),(2024,20,'Sobre esse romance')]:
 for q in items(year,n):
  if marker in q['text']:
   cut=q['text'].index(marker);q['support']=q['text'][:cut].strip();q['text']=q['text'][cut:]
for q in items(2026,63):q['support']='Mapa: horário local em que o céu ficou escuro no Brasil no dia 21/12/2024, sem horário de verão. Fonte: Nexo Jornal. Consulte o mapa no apoio visual.'

# Show source underlining as visible brackets in ordinary text alternatives. This
# prevents a question referring to a highlighted pronoun from becoming ambiguous.
underlines=json.loads((D/'underlines.json').read_text(encoding='utf8'))
for slug,qs in data.items():
 year=int(slug.split('-')[1])
 for q in qs:
  if q['subject'] not in ['Língua Portuguesa','Inglês','Espanhol']:continue
  entry=next(e for e in entries_by_year[year] if e['number']==q['number'] and e['page']==q['page'])
  oi=None;marked=False
  for x in entry['lines']:
   l=x['line'];m=re.match(r'^\(([A-E])\)',l['text'])
   if m:oi='ABCDE'.index(m[1])
   rules=[r for r in underlines.get(f'{year}-{x["page"]}',[]) if r['x1']-r['x0']<260]
   for r in rules:
    chars=[c for c in l['chars'] if c['x0']>=r['x0']-.35 and c['x1']<=r['x1']+.35 and abs(c['bottom']-r['top'])<3]
    phrase=''.join(c['text'] for c in sorted(chars,key=lambda c:c['x0'])).strip().strip('.,;')
    if len(phrase)<2:continue
    pattern=''.join(re.escape(c)+r'\s*' for c in phrase).rstrip('*').removesuffix('\\s') if False else r'\s*'.join(re.escape(c) for c in phrase)
    if oi is not None and oi<len(q['options']):
     option=q['options'][oi]
     match=re.search(pattern,option)
     if match and not ('⟦' in option[:match.start()] and option[:match.start()].rfind('⟦')>option[:match.start()].rfind('⟧')):
      q['options'][oi]=option[:match.start()]+'⟦'+match.group()+'⟧'+option[match.end():];marked=True
  if marked:q['text']+='\nOs trechos entre ⟦ ⟧ estavam sublinhados no caderno original.'

# Reading passages move to support, while the actual question and its contextual
# instructions stay in text. This also retains all source references.
for slug,qs in data.items():
 year=int(slug.split('-')[1])
 for q in qs:
  if q['subject'] in ['História','Geografia','Sociologia','Filosofia']:
   lines=q['text'].splitlines()
   source=[]
   for i,l in enumerate(lines):
    if re.search(r'Adaptado de|Fonte:|Disponível em|^https?://',l):source.append(i)
    elif re.match(r'^\([A-ZÀ-Ü]{3,}',l) and re.search(r'(?:19|20)\d{2}',' '.join(lines[i:i+4])):
     end=next((j for j in range(i,min(len(lines),i+4)) if ')' in lines[j]),i)
     source.append(end)
   if source:
    cut=source[-1]+1
    # Citation may wrap across multiple lines before a blank or question sentence.
    while cut<len(lines) and (re.match(r'^(?:Rio de Janeiro:|São Paulo:|Janeiro|Paulo|vol\.|p\.|\d{4}|Jan\.|Estudos Históricos|[a-z-]+.*(?:/|\.pdf))',lines[cut]) or lines[cut].endswith(').')):cut+=1
    if cut<len(lines)-1:
     q['support']='\n'.join(lines[:cut]);q['text']='\n'.join(lines[cut:])
  # Any remaining invalid extraction glyph must be explicitly corrected, not hidden.
  q['text']=tidy(q['text']);q['options']=[tidy(o) for o in q['options']]

for q in items(2026,63):q['support']='Mapa: horário local em que o céu ficou escuro no Brasil no dia 21/12/2024, sem horário de verão. Fonte: Nexo Jornal. Consulte o mapa no apoio visual.'
for n,marker in [(97,'A respeito da sociologia'),(99,'Assinale a afirmativa'),(100,'O trecho descreve')]:
 for q in items(2023,n):
  cut=q['text'].index(marker);q['support']=q['text'][:cut].strip();q['text']=q['text'][cut:]
for q in items(2023,96):
 q['support']='Carta de Serviços ao Cidadão do Corpo de Bombeiros Militar do Estado do Rio de Janeiro. Fonte: https://www.cbmerj.rj.gov.br/images/2022/09/CartaServicosCidadao-CSC.pdf'
 q['text']=q['text'].removeprefix('dao-CSC.pdf\n')
for year,n,marker in [(2023,84,'A partir do trecho'),(2023,90,'A charge representa'),(2024,55,'O fragmento de texto'),(2024,61,'Sobre o tipo de incêndio'),(2024,62,'A diferença espacial'),(2024,64,'A estratégia empresarial'),(2024,65,'Agora avalie'),(2024,66,'A partir da análise'),(2025,73,'Embasado no raciocínio')]:
 for q in items(year,n):
  if marker in q['text']:
   cut=q['text'].index(marker)
   if cut:q['support']=((q['support'] or '')+'\n'+q['text'][:cut]).strip();q['text']=q['text'][cut:]

# Definitive answer keys are read independently of the question extraction.
keys={}
for year in (2023,2024,2025,2026):
 t=(D/f'{year}-gabarito.txt').read_text(encoding='utf8')
 if year<=2024:t=re.split(r'Tipo 2|PROVA TIPO 2',t,flags=re.I)[0]
 letters=[c for l in t.splitlines() if re.fullmatch(r'[A-E*](?:\s+[A-E*])+',l.strip()) for c in l.split()]
 assert len(letters)==(100 if year<=2024 else 90),(year,len(letters))
 keys[year]=letters
 for slug,qs in data.items():
  if f'-{year}-' not in slug:continue
  selected=letters if year<=2024 else letters[:10]+(letters[10:20] if slug.endswith('espanhol') else letters[20:30])+letters[30:]
  assert len(qs)==len(selected),(slug,len(qs))
  assert [q['number'] for q in qs]==list(range(1,len(qs)+1)),slug
  for q,a in zip(qs,selected):
   q['answer']='A/B/C/D/E' if a=='*' else a
   q['explanation']=f'Gabarito definitivo oficial do CBMERJ {year}: alternativa {a}.'
   assert len(q['options'])==(5 if year<=2024 else 4),(slug,q['number'],q['options'])
   assert all(o for o in q['options']),(slug,q['number'],'empty alternative')
   assert len(q['text'])>20,(slug,q['number'],'incomplete statement')
   combined=q['text']+' '.join(q['options'])+(q['support'] or '')
   assert not re.search(r'\(cid:|[\x00-\x08\x0b\x0c\x0e-\x1f\ufffd]',combined),(slug,q['number'],'unreviewed extraction glyph')

(D/'questions-reviewed.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
metadata={};updates=[]
def sqlstr(value):return 'NULL' if value is None else "'"+str(value).replace("'","''")+"'"
for slug,qs in data.items():
 year=int(slug.split('-')[1]);label=' · Espanhol' if slug.endswith('espanhol') else ' · Inglês'
 title=f'CBMERJ {year} · Curso de Formação de Oficiais'+label
 if year==2023:title+=' · Aplicada em 27/11/2022'
 metadata[slug]=dict(year=year,pages=[q['page'] for q in qs],pdf=f'/provas/cbmerj/{year}.pdf',title=title)
 sql=f"insert into public.exams(slug,title,source,year) values ({sqlstr(slug)},{sqlstr(title)},'cbmerj',{sqlstr(year)}) on conflict(slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;\n"
 for q in qs:
  vals=[sqlstr(q[k]) for k in ['number','subject','text','support','support_image']]+[sqlstr(json.dumps(q['options'],ensure_ascii=False))+'::jsonb',sqlstr(q['answer']),sqlstr(q['explanation'])]
  sql+='insert into public.questions(exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,'+','.join(vals)+f' from public.exams where slug={sqlstr(slug)} on conflict(exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;\n'
 updates.append(dict(slug=slug,query='begin;\n'+sql+f"select count(*) as questions from public.questions where exam_id=(select id from public.exams where slug={sqlstr(slug)});\ncommit;"))
(D/'updates.json').write_text(json.dumps(updates,ensure_ascii=False,indent=2),encoding='utf8')
(ROOT/'supabase/seed-cbmerj-2023-2026-cfo.sql').write_text('-- Cadernos e gabaritos oficiais; dados revisados, sem alterar outras provas.\nBEGIN;\n'+'\n'.join(u['query'].removeprefix('begin;\n').removesuffix('commit;') for u in updates)+'\nCOMMIT;\n',encoding='utf8')
(ROOT/'src/lib/bombeirosExams.js').write_text('export const bombeirosExams = '+json.dumps(metadata,ensure_ascii=False,indent=2)+'\n\nexport function bombeirosOfficialSource(slug, number) {\n  const exam=bombeirosExams[slug]\n  return exam ? `${exam.pdf}#page=${exam.pages[Number(number)-1] || 1}` : null\n}\n',encoding='utf8')
print('Prepared',len(data),'catalog choices;',sum(len(qs) for qs in data.values()),'questions')
