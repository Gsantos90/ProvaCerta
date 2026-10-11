"""Editorial corrections to source extraction, plus reproducible data-only SQL updates."""
import json,re,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];D=ROOT/'pdf-extracts/pism-revisao'
sys.stdout.reconfigure(encoding='utf-8')
data=json.loads((D/'questions.json').read_text(encoding='utf-8'));before=json.loads((D/'database-before.json').read_text(encoding='utf-8'));media=json.loads((D/'media.json').read_text(encoding='utf-8'))
original={(e['slug'],q['number']):q for e in before for q in e['questions']}
def q(slug,n):return data[slug][n-1]
def plain(s):
 s=re.sub(r'([A-Za-zÀ-ÿ])-\s+([A-Za-zÀ-ÿ])',r'\1\2',s)
 s=s.replace('(cid:176)','°').replace('(cid:214)','×').replace('̸=','≠')
 s=re.sub(r'(?<=\d),\s+(?=\d)',',',s)
 return s.strip()
invalid=[]
for slug,qs in data.items():
 for item in qs:
  old=original[slug,item['number']]
  item['text']=plain(item['text'])
  item['options']=[plain(o) for o in item['options']]
  # Fractions, exponents and diagram alternatives require mathematical transcription,
  # previously checked against the answer key, rather than PDF reading order.
  if item['subject'].startswith('Mat') or item['subject'] in ('Química','Física') or any('(cid:' in o for o in item['options']):item['options']=[plain(o) for o in old['options']]
  if item['subject']=='Matématica':item['subject']='Matemática'
  item['options']=[re.split(r'(?i)Pró Reitoria|Coordenação Geral|Pism 20',o)[0].strip().rstrip('’').strip() for o in item['options']]
  item['support_image']='\n'.join(media[slug][str(item['number'])]) or None
  if item['support']:
   item['support']=plain('\n'.join(l for l in item['support'].splitlines() if not re.match(r'(?i)^(?:QUESTÕES OBJETIVAS|Objetivas|Questões de|(?:LÍNGUA PORTUGUESA|PORTUGUÊS|LITERATURAS?)(?: - Objetivas)?\s*$)',l)))
  # Keep numerical typography readable in extracted prose.
  item['text']=re.sub(r'\bx2\b','x²',item['text'])
  item.pop('official_text',None);item.pop('official_options',None)

q('pism-2023-1',12)['text']='Considere os números m, n e p representados, respectivamente, pelos pontos M, N e P na reta real abaixo. O número m · n − p pertence ao intervalo'
q('pism-2023-1',12)['explanation']='Gabarito oficial: A. Na reta, m e n são negativos, com módulos menores que 1, enquanto p está próximo de 2. Pela posição dos pontos, m · n é um número positivo pequeno; ao subtrair p, o resultado fica abaixo de −1. Portanto, m · n − p pertence a ]−∞, −1[.'
q('pism-2023-1',13)['text']=original['pism-2023-1',13]['text']
for n in (14,15):q('pism-2023-1',n)['text']=original['pism-2023-1',n]['text']
q('pism-2023-2',15)['text']=q('pism-2023-2',15)['text'].replace('(cid:19)(cid:20)','F')
for item in data['pism-2023-2'][10:15]:item['support']='Considere g = 10 m/s².'
q('pism-2024-1',11)['text']='Fixe os seguintes números reais: a = π, b = 3 e c = 3,2. Assinale a alternativa que representa a ordenação dos números a, b e c na reta real.'
q('pism-2024-1',11)['options']=['a < b < c','b < a < c','b < c < a','a = b < c','b < a = c']
q('pism-2024-1',12)['text']='Considere a função quadrática f(x) = x² + 2x − 24. Defina r₁ pela maior raiz de f(x) e r₂ pela menor raiz de f(x). Quanto vale a razão r₁/r₂?'
q('pism-2024-1',13)['text']='Considere um triângulo retângulo com hipotenusa medindo √58 e catetos medindo x − 2 e x + 2, sendo x um número real. O seno do menor ângulo desse triângulo é'
q('pism-2024-1',14)['text']='Considere a função exponencial f(x) = 2ˣ. Seja a um número real. Então, a expressão f(a) · [f(a + 2) + 4] / [4 · f(a + 2) · (f(a) + 1)] é igual a'
q('pism-2024-1',15)['options'][4]='8 m²'
q('pism-2025-1',11)['text']='Considere a função f: [1, 9] → R, definida por f(x) = 6 − x, se 1 ≤ x < 4; e f(x) = x² − 12x + 34, se 4 ≤ x ≤ 9. Qual é o conjunto imagem da função f?'
q('pism-2025-1',14)['text']='Considere a função f: R → R definida por f(x) = −(1/4)x² + (3/2)x + 4. O plano cartesiano que contém a melhor representação de parte do gráfico da função f é'
q('pism-2025-1',14)['options']=[f'Gráfico {letter}.' for letter in 'ABCDE']
q('pism-2025-1',14)['explanation']='Gabarito oficial: A. O coeficiente de x² é negativo, então a parábola tem concavidade para baixo. Ela passa por (0, 4), tem raízes −2 e 8 e vértice em (3, 25/4). Essas características aparecem no gráfico A do apoio.'
q('pism-ii-2024-dia-1',11)['text']=q('pism-ii-2024-dia-1',11)['text'].replace('(cid:2)','A').replace('(cid:3)','B')
q('pism-ii-2024-dia-1',14)['text']='Considere α um ângulo do segundo quadrante no ciclo trigonométrico com sen α = 3/4. O valor de tg α é igual a'
q('pism-ii-2026-dia-1',12)['text']=re.sub(r'\(cid:\d+\)','',q('pism-ii-2026-dia-1',12)['text']).strip()
q('pism-ii-2026-dia-1',12)['text']=q('pism-ii-2026-dia-1',12)['text'].removesuffix(' π')
q('pism-ii-2025-dia-1',15)['text']='O gráfico de colunas de apoio apresenta a distribuição das quantidades de cartões amarelos e cartões vermelhos que os jogadores de um time de futebol receberam nas primeiras dez rodadas de um campeonato. Represente por M₁ a média de cartões amarelos recebidos pelos jogadores desse time, por rodada desse campeonato, e por M₂ e M₃, respectivamente, a mediana e a moda da distribuição das quantidades de cartões amarelos recebidos pelos jogadores desse time nas dez primeiras rodadas desse campeonato. Ordenando M₁, M₂ e M₃ obtém-se'
q('pism-iii-2024-dia-1',16)['text']='Considere os polinômios p(x) = x² + x − 6 e q(x) = x² + x/2 − 1/2. Considere ainda o polinômio r(x) = p(x) · q(x). A soma dos coeficientes de r(x) é igual a C e o produto das raízes de r(x) é igual a P. O valor de C + P é'
q('pism-iii-2024-dia-1',17)['text']='Seja a > 3 um número real. Considere o sistema linear −x + y = a e −2x + y = 3. Seja P(x, y) o ponto no plano cartesiano cujas coordenadas são a solução do sistema. O ponto P pertence'
q('pism-iii-2024-dia-1',19)['text']='Considere o segmento de reta de A(1, 3) até B(7, 12). Nesse segmento, são marcados dois pontos C e D, de forma que as distâncias entre A e C, entre C e D e entre D e B são todas iguais. As coordenadas desses pontos C e D são, respectivamente,'
q('pism-iii-2024-dia-2',4)['text']=re.sub(r'\(cid:1\)1 − \(cid:4\)\(cid:5\)/\(cid:7\)\(cid:5\)','√(1 − v²/c²)',q('pism-iii-2024-dia-2',4)['text'])
q('pism-iii-2025-dia-1',19)['text']=q('pism-iii-2025-dia-1',19)['text'].replace('(cid:26)','')
q('pism-iii-2025-dia-1',18)['text']=q('pism-iii-2025-dia-1',18)['text'].replace('x3','x³')
q('pism-iii-2025-dia-1',20)['text']=original['pism-iii-2025-dia-1',20]['text']
q('pism-iii-2026-dia-1',18)['text']='Considere os números x, y e z definidos por x = 2^(3 + log₂ 5), y = 3^(2 − log₃ 5) e z = 6^[(log₉ 4) · (log₆ 3)]. O valor de x · y · z é'
for n in (16,20):q('pism-iii-2026-dia-1',n)['text']=q('pism-iii-2026-dia-1',n)['text'].removesuffix(' 1')
q('pism-iii-2025-dia-2',10)['text']='Foram realizados três experimentos para o estudo da velocidade de reação entre o óxido nítrico (NO) e o gás hidrogênio (H₂), formando gás nitrogênio (N₂) e água, na temperatura de 1000 K, conforme a equação: 2 NO(g) + 2 H₂(g) → N₂(g) + 2 H₂O(g). Os resultados dos experimentos estão descritos na tabela de apoio. Assinale a alternativa que representa a lei de velocidade (v) para essa reação de acordo com os experimentos.'
q('pism-iii-2025-dia-2',10)['options']=original['pism-iii-2025-dia-2',10]['options']
q('pism-2025-2',14)['text']='Ana e Bia fazem uma corrida de barquinhos de vela. O barco de Ana possui massa duas vezes maior que a do barco de Bia, mas eles foram construídos de modo que o vento realiza a mesma força de impulsão sobre as duas velas e, consequentemente, o mesmo trabalho ao longo de uma distância d. Desprezando as forças de atrito, qual a relação entre as velocidades dos barcos de Ana (vₐ) e de Bia (vᵦ) quando eles cruzam a linha de chegada?'
q('pism-ii-2024-dia-2',14)['text']=q('pism-ii-2024-dia-2',14)['text'].replace('n , n e n respectivamente','nₐ, nₙ e n꜀, respectivamente').replace('na casca. A N C','na casca.')
q('pism-ii-2025-dia-2',11)['text']=q('pism-ii-2025-dia-2',11)['text'].replace('g/cm3e','g/cm³ e').replace('105 N/m2','10⁵ N/m²')
q('pism-ii-2025-dia-2',12)['text']=q('pism-ii-2025-dia-2',12)['text'].replace('diâmetro do orifício','área do orifício').replace('mm2e','mm² e').replace('cm2é','cm² é')
q('pism-iii-2025-dia-2',1)['text']=q('pism-iii-2025-dia-2',1)['text'].replace('(I (T))','(Iᵣₐ𝒹(T))').replace('tempera- rad tura','temperatura').replace('temperarad tura','temperatura').replace('I (T) = ϵσT4. rad','Iᵣₐ𝒹(T) = εσT⁴.').replace('Wm−2K−4','W·m⁻²·K⁻⁴')
q('pism-iii-2025-dia-2',5)['text']=q('pism-iii-2025-dia-2',5)['text'].replace('R = 1 kΩ, R = 2 kΩ e 1 2 R = 3 kΩ','R₁ = 1 kΩ, R₂ = 2 kΩ e R₃ = 3 kΩ').replace('que fornece o 3 valor','que fornece o valor')

# Preserve full contextual prose while transcribing chemical indices and equations.
CHEM_REPLACEMENTS={
 ('pism-2024-1',20):[('nitrogênio (N ). É 2','nitrogênio (N₂). É'),('N gasoso 2','N₂ gasoso'),('moléculas de N nos diferentes estados 2','moléculas de N₂ nos diferentes estados')],
 ('pism-ii-2024-dia-1',18):[('10 kg de gás O , o segundo 10 kg de gás H e o terceiro 10 kg de gás CO. 2 2','10 kg de gás O₂, o segundo 10 kg de gás H₂ e o terceiro 10 kg de gás CO.')],
 ('pism-ii-2024-dia-1',19):[('sp2','sp²')],
 ('pism-ii-2024-dia-1',20):[('CH (g) + Cl (g) luz ou CH Cl (g) + HCl (g) 4 2 aquecimento 3','CH₄(g) + Cl₂(g) → CH₃Cl(g) + HCl(g), sob luz ou aquecimento.')],
 ('pism-ii-2025-dia-1',16):[('Fe O (s). A equação química, não 2 3','Fe₂O₃(s). A equação química, não'),('Fe(s) + NaCℓO(aq) ⇌ Fe O (s) + NaCℓ(aq) 2 3','Fe(s) + NaClO(aq) ⇌ Fe₂O₃(s) + NaCl(aq)'),('480 g de Fe O ? 2 3','480 g de Fe₂O₃?')],
 ('pism-ii-2025-dia-1',17):[('(KNO ) em 3','(KNO₃) em')],
 ('pism-ii-2025-dia-1',18):[('HCℓ, CaF , 2 CH Br, I , e NaCℓO. 3 2','HCl, CaF₂, CH₃Br, I₂ e NaClO.')],
 ('pism-ii-2025-dia-1',20):[('moléculas de O . 2','moléculas de O₂.'),('moléculas de H O. 2','moléculas de H₂O.'),('moléculas de O e H O. 2 2','moléculas de O₂ e H₂O.')],
 ('pism-ii-2026-dia-1',17):[('massa do 12C','massa do ¹²C'),('1 mol de Aℓ O possui, aproximadamente 2 3','1 mol de Al₂O₃ possui, aproximadamente')],
 ('pism-ii-2026-dia-1',18):[('(NaHCO ) com 3','(NaHCO₃) com'),('(C H O ). A reação libera gás carbônico 6 8 7 (CO ),','(C₆H₈O₇). A reação libera gás carbônico (CO₂),'),('3 NaHCO (s) + C H O (aq) → 3 6 8 7 3 CO (g) + 3 H O (ℓ) + Na C H O (aq) 2 2 3 6 5 7','3 NaHCO₃(s) + C₆H₈O₇(aq) → 3 CO₂(g) + 3 H₂O(ℓ) + Na₃C₆H₅O₇(aq)'),('NaHCO = 84 g/mol; Massa molar do CO = 3 2 44 g/mol','NaHCO₃ = 84 g/mol; massa molar do CO₂ = 44 g/mol')],
 ('pism-ii-2026-dia-1',19):[('(C H O) a partir da sacarose 2 6 (C H O )','(C₂H₆O) a partir da sacarose (C₁₂H₂₂O₁₁)'),('C H O (aq) + H O (ℓ) → 12 22 11 2 C H O (aq) + CO (g) 2 6 2','C₁₂H₂₂O₁₁(aq) + H₂O(ℓ) → C₂H₆O(aq) + CO₂(g)'),('6,0 x 1023','6,0 × 10²³'),('1 mol de C H O produzirá 12 22 11','1 mol de C₁₂H₂₂O₁₁ produzirá')],
 ('pism-ii-2026-dia-1',20):[('(CH ) é uma 4','(CH₄) é uma'),('CH (g) + 2 O (g) → CO (g) + 2 H O (g) 4 2 2 2','CH₄(g) + 2 O₂(g) → CO₂(g) + 2 H₂O(g)')],
 ('pism-iii-2024-dia-2',6):[('NaCl ⇌ Na+ + Cl- (s) (aq) (aq)','NaCl(s) ⇌ Na⁺(aq) + Cl⁻(aq)')],
 ('pism-iii-2024-dia-2',7):[('(CH O) e são considerados nossos combustíveis biológicos, por disponibilizarem grandes quantidades de energia 2 n','(CH₂O)ₙ e são considerados nossos combustíveis biológicos, por disponibilizarem grandes quantidades de energia')],
 ('pism-iii-2024-dia-2',9):[('(C -C ) possui de cinco a doze 5 12','(C₅–C₁₂) possui de cinco a doze'),('(gás liquefeito de petróleo, C -C ), o 1 4 querosene (C -C ), o óleo diesel (C C ) e o óleo lubrificante (C -C ). A separação desses compostos se dá por 10 16 14- 20 20 50','(gás liquefeito de petróleo, C₁–C₄), o querosene (C₁₀–C₁₆), o óleo diesel (C₁₄–C₂₀) e o óleo lubrificante (C₂₀–C₅₀). A separação desses compostos se dá por')],
 ('pism-iii-2025-dia-2',6):[('CaC , o carbonato de cálcio (calcário) é de- 2 composto','CaC₂, o carbonato de cálcio (calcário) é decomposto'),('CaCO (s) → CaO(s) + CO (g) ∆H = +177,5 kJ/mol 3 2','CaCO₃(s) → CaO(s) + CO₂(g), ΔH = +177,5 kJ/mol'),('CaO(s) + 3C(grafita) → CaC (s) + CO(g) 2','CaO(s) + 3 C(grafita) → CaC₂(s) + CO(g)')],
 ('pism-iii-2025-dia-2',7):[('[Ca (PO ) (OH)] é uma substância 5 4 3','[Ca₅(PO₄)₃(OH)] é uma substância'),('Ca (PO ) OH(s) ⇌ 5Ca2+(aq) + 3PO3−(aq) + OH−(aq) 5 4 3 4','Ca₅(PO₄)₃OH(s) ⇌ 5 Ca²⁺(aq) + 3 PO₄³⁻(aq) + OH⁻(aq)')],
 ('pism-iii-2025-dia-2',8):[('(CH CH OH), popularmente 3 2','(CH₃CH₂OH), popularmente')],
 ('pism-iii-2026-dia-2',8):[('N (g) + 3 H (g) ⇌ 2 NH (g) ∆H < 0 2 2 3','N₂(g) + 3 H₂(g) ⇌ 2 NH₃(g), ΔH < 0')],
 ('pism-iii-2026-dia-2',9):[('BF e 3','BF₃ e')],
}
for key,replacements in CHEM_REPLACEMENTS.items():
 for source,replacement in replacements:q(*key)['text']=q(*key)['text'].replace(source,replacement)
q('pism-2024-2',17)['support']='Tabela de embarques de pessoas escravizadas para a América Espanhola, Caribe e América Portuguesa, de 1519 a 1700. Consulte os valores completos na tabela de apoio. Fonte: caderno oficial UFJF.'

# Restore the song excerpt embedded in an image-choice item and the reading prelude
# that follows it. These do not have ordinary PDF alternative text markers.
pages=json.loads((D/'pism-iii-2024-dia-1-pages.json').read_text(encoding='utf-8'))
poem='\n'.join(l['text'] for p in pages if p['page']==7 for l in p['lines'] if 95<l['top']<340)
q('pism-iii-2024-dia-1',5)['text']='Qual das charges a seguir relaciona-se diretamente com o posicionamento de Emicida no trecho da canção “Levanta e anda”, texto III, destacado no apoio?'
q('pism-iii-2024-dia-1',5)['support']+='\n\n'+poem
q('pism-iii-2024-dia-1',5)['options']=[f'Charge {letter}.' for letter in 'ABCDE']
sermon='\n'.join(l['text'] for p in pages if p['page']==8 for l in p['lines'] if l['top']<next(l['top'] for l in p['lines'] if l['text'].startswith('QUESTÃO 06')))
for item in data['pism-iii-2024-dia-1'][5:10]:item['support']=sermon+'\n\n'+(item['support'] or '')

layouts=json.loads((D/'poem-layouts.json').read_text(encoding='utf-8'))
POEMS=[('pism-2023-1','TEXTO III\\s+Dias de kizomba','Fonte: EVARISTO','TEXTO III\nDias de kizomba\nConceição Evaristo','dias'),('pism-2023-2','Texto I\\s+NINGUÉM','Fonte: CRAVEIRINHA','Texto I\nNINGUÉM\nJosé Craveirinha','ninguem'),('pism-2023-2','Texto III\\s+VOZES-MULHERES','Fonte: EVARISTO','Texto III\nVOZES-MULHERES\nConceição Evaristo','vozes'),('pism-2023-2','Texto IV\\s+Canção Noturna','Fonte: SOUSA','Texto IV\nCanção Noturna\nNoémia Sousa','cancao'),('pism-ii-2024-dia-2','Texto III\\s+PAPO RETO','Fonte: SOBRAL','Texto III\nPAPO RETO\nCristiane Sobral','papo'),('pism-iii-2024-dia-1','TEXTO III\\s+Ao mesmo assunto','Fonte: MATOS','TEXTO III\nAo mesmo assunto\nGregório de Matos','assunto')]
for slug,start,end,heading,key in POEMS:
 for item in data[slug]:
  if item['support']:item['support']=re.sub(start+r'.*?(?='+end+r')',lambda _:heading+'\n'+layouts[key]+'\n',item['support'],flags=re.I|re.S)

# Tables and figures stay in support_image, rather than being mixed into the stem.
TABLES=[('pism-2023-2',8,'Organela celular','Considerando as colunas'),('pism-ii-2024-dia-1',20,'Dados da questão:','Com base nas informações'),('pism-ii-2025-dia-1',13,'Mês Preço da saca','Representando'),('pism-ii-2026-dia-1',20,'Ligação D','Com base nos dados')]
for slug,n,start,end in TABLES:
 item=q(slug,n)
 if start in item['text'] and end in item['text']:
  a,b=item['text'].index(start),item['text'].index(end,item['text'].index(start))
  item['text']=item['text'][:a]+'Consulte a tabela no apoio. '+item['text'][b:]

# Keep passage-based interpretation items linked to the visual texts they compare.
def share(slug,targets,sources):
 paths=list(dict.fromkeys(path for n in sources for path in (q(slug,n)['support_image'] or '').splitlines() if path))
 for n in targets:q(slug,n)['support_image']='\n'.join(paths) or None
share('pism-2025-1',[5],[4,5])
share('pism-ii-2025-dia-1',[4,5],[4,5])
share('pism-iii-2026-dia-1',[4,5],[4])

for slug,qs in data.items():
 for item in qs:
  combined=item['text']+' '.join(item['options'])+(item['support'] or '')
  if re.search(r'\(cid:|[\x00-\x08\x0b\x0c\x0e-\x1f\ufffd]',combined):invalid.append((slug,item['number'],item['text'],item['support'],item['options']))
  assert len(item['options'])==5 and all(item['options']),(slug,item['number'],'alternatives')
  assert item['answer']==original[slug,item['number']]['answer']
  for path in (item['support_image'] or '').splitlines():assert (ROOT/'public'/path.lstrip('/')).is_file(),path
  paths=(item['support_image'] or '').splitlines()
  if len(paths)>1:item['support_image']=json.dumps(paths,ensure_ascii=False)
  item['text']=item['text'].strip()
if invalid:
 for row in invalid:print(row)
 raise ValueError('Review remaining invalid characters')
updates=[]
for e in before:
 payload=[{k:item[k] for k in ('id','number','subject','text','support','support_image','options','answer','explanation')} for item in data[e['slug']]]
 quoted=json.dumps(payload,ensure_ascii=False).replace("'","''")
 sql=f"with payload as (select * from jsonb_to_recordset('{quoted}'::jsonb) as x(id uuid, number integer, subject text, text text, support text, support_image text, options jsonb, answer text, explanation text)), changed as (update public.questions q set subject=p.subject, text=p.text, support=p.support, support_image=p.support_image, options=p.options, explanation=p.explanation from payload p where q.id=p.id and q.exam_id='{e['id']}'::uuid and q.number=p.number and q.answer=p.answer returning q.id) select count(*) as updated_questions from changed;"
 updates.append(dict(slug=e['slug'],query=sql))
(D/'questions-reviewed.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(D/'updates.json').write_text(json.dumps(updates,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(ROOT/'supabase/update-pism-complete-statements.sql').write_text('-- PISM: enunciados e apoios conferidos nos cadernos oficiais. IDs e gabaritos preservados.\nBEGIN;\n'+'\n'.join(u['query'] for u in updates)+'\nCOMMIT;\n',encoding='utf-8')
source_path=ROOT/'src/lib/pismSources.js';source=source_path.read_text(encoding='utf-8');start=source.index('{');end=source.index('\n\nexport')
metadata=json.loads(source[start:end].rstrip().removesuffix(';'))
for slug,items in data.items():metadata[slug]['pages']=[item['page'] for item in items]
source_path.write_text(source[:start]+json.dumps(metadata,ensure_ascii=False,indent=2)+source[end:],encoding='utf-8')
print('Reviewed 360 questions; source support images:',sum(bool(i['support_image']) for qs in data.values() for i in qs))
