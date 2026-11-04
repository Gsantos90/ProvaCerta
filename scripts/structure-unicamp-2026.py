"""Prepare the 2026 Q/X presentation from the committed exam seed and official PDF.

This does not write to the database. Question IDs, scoring and answer keys remain
owned by the existing exam loader. Only this booklet's presentation is replaced.
Requires Pillow, pdfplumber and pypdfium2.
"""
import json, re, unicodedata
from pathlib import Path
from PIL import Image
import pdfplumber
import pypdfium2 as pdfium

ROOT = Path(__file__).resolve().parents[1]
def fields(text):
    result=[];start=0;quoted=False;i=0
    while i<len(text):
        if text[i]=="'":
            if quoted and i+1<len(text) and text[i+1]=="'":i+=2;continue
            quoted=not quoted
        if text[i]==',' and not quoted:result.append(text[start:i]);start=i+1
        i+=1
    result.append(text[start:])
    assert not quoted
    return [None if v=='null' else v.removesuffix('::jsonb')[1:-1].replace("''", "'") if v.startswith("'") else int(v) for v in result]

raw={}
for line in (ROOT/'supabase/seed-unicamp-2024-2026.sql').read_text(encoding='utf8').splitlines():
    match=re.search(r"select id,(.*) from public.exams where slug='unicamp-2026-fase1'",line)
    if match:
        n,subject,text,support,media,options,answer,explanation=fields(match[1])
        raw[n]=dict(text=text,options=json.loads(options),media=json.loads(media))
assert sorted(raw)==list(range(1,73))
def clean(text):
    text=unicodedata.normalize('NFC',text).replace('ﬁ','fi').replace('ﬂ','fl').replace('ﬀ','ff').replace('\u00ad','')
    text=re.sub(r'(?<=\w)-\s+(?=\w)','',text)
    return text.strip()

rows={n:dict(number=n,text=clean(q['text']),support=None,supportImage=[],options=[clean(o)for o in q['options']],originalImages=[],structuredContent=True,structuredContentVersion=1)for n,q in raw.items()}
def split(n,marker,prefix=None):
    source=clean(raw[n]['text']);pos=source.rfind(marker)
    assert pos>=0,(n,marker)
    rows[n]['text']=source[pos:]
    rows[n]['support']=clean(source[:pos] if prefix is None else prefix)
def put(n,text=None,support=None,options=None):
    if text is not None:rows[n]['text']=text
    rows[n]['support']=support
    if options is not None:rows[n]['options']=options
def before(n,marker):return clean(raw[n]['text'].split(marker)[0])

split(1,'O texto 1 causou indignação')
rows[1]['support']='''Texto 1
‘I’m Still Here’ star Fernanda Torres pulls off Golden Globes’ biggest upset
The Brazilian performer won the female actor in a motion picture, drama category, besting bigger stars such as Angelina Jolie, Nicole Kidman and Pamela Anderson.
(Disponível em https://www.latimes.com/entertainment-arts/awards/story/2025-01-05/fernanda-torres-golden-globes-2025-im-still-here. Acesso em 22/05/2025.)

Texto 2
UPSET
1. noun [C] — an outcome that goes against what was considered to be the most likely result.
2. adjective — unhappy, worried, angry, or disappointed because something unpleasant has happened.
(Adaptado de https://www.collinsdictionary.com/dictionary/english/upset. Acesso em 22/05/2025.)'''
split(2,'Assinale a alternativa que apresenta os quadros')
rows[2]['support']=before(2,'Observe três quadros extraídos do filme.')+'\n\nObserve os quadros A, B e C na imagem de apoio.\n(Imagens e texto adaptados de https://www.youtube.com/watch?v=mtXCWXkgCFg. Acesso em 01/05/2025.)'
put(3,text='A tirinha, em seu sentido geral, faz uma crítica à')
split(4,'Segundo o texto,')
split(5,'De acordo com o texto 3,')
rows[5]['support']=re.sub(r'Texto 2 .*? Texto 3','\n\nTexto 2: obra de arte na imagem de apoio.\n\nTexto 3',rows[5]['support'])
split(6,'De acordo com o resumo,')
split(7,'Assinale a alternativa correta em relação ao posicionamento')
rows[7]['support']=rows[7]['support'].replace('fed- eral','federal')
put(8,text='As afirmativas corretas são:',support=before(8,'As afirmativas corretas são:'),options=['1 e 2.','1 e 4.','2 e 3.','3 e 4.'])
common_battery=clean(raw[9]['text'].split('Uma bateria inicialmente')[0]).removeprefix('Texto para as questões 9, 10 e 11. ')
put(9,text='Uma bateria inicialmente carregada fornece uma corrente constante de i = 4 000 mA durante o tempo Δt = 1 hora, ficando descarregada no final desse processo. A carga elétrica Q que circula por essa bateria nesse intervalo de tempo é',support=common_battery,options=['4 C.','4 000 C.','14 400 C.','14 400 000 C.'])
put(10,text='De forma simplificada, o comportamento de uma bateria pode ser modelado com uma fonte ideal de diferença de potencial elétrico Uᵦ em série com um resistor de resistência Rᵦ. Dessa maneira, o dispositivo que é alimentado pela bateria pode, muitas vezes, ser representado por um resistor de resistência R.\n\nNa situação exemplificada na figura, a diferença de potencial registrada pelo voltímetro é',support=common_battery,options=['0,6 V.','3,0 V.','3,6 V.','4,3 V.'])
put(11,text='Outra bateria totalmente carregada armazena uma energia Eᵦ = 15 Wh. Devemos elevar uma massa m = 45 kg até a altura y, em relação ao solo, para que a variação da energia potencial gravitacional Eₚ desse sistema mecânico seja igual à energia armazenada nessa bateria. A altura y deve ser\n\nDado: g = 10 m/s².',support=common_battery,options=['0,03 m.','3 m.','120 m.','1 200 m.'])
common_motorcycle=clean(raw[13]['text'].split('Qual é o gráfico')[0]).removeprefix('Texto para as questões 13 e 14. ')
put(13,text='Qual é o gráfico que representa a posição s(t) do motociclista em função do tempo t?',support=common_motorcycle,options=['Gráfico A.','Gráfico B.','Gráfico C.','Gráfico D.'])
put(14,text='A massa do conjunto motociclista + motocicleta é dada por m = 180 kg. Para o trecho entre os tempos t = 30 s e t = 50 s, em que o movimento tem desaceleração constante, é correto afirmar que o módulo da força resultante que age nesse conjunto é igual a',support=common_motorcycle,options=['36 N.','90 N.','324 N.','1 800 N.'])
split(15,'A partir do texto,')
split(16,'Em relação à localização',before(16,'Localização dos países'))
split(17,'A partir da leitura do mapa',before(17,'África e as suas zonas'))
split(18,'A partir da leitura do mapa',before(18,'Países drenados'))
put(19,text='A partir dessas informações, assinale a alternativa que apresenta corretamente as disputas e as alianças do Irã com grupos étnicos, militares e religiosos dentro dos países indicados no mapa.',support=before(19,'Localização dos países'),options=[
 'Disputas: com a minoria sunita do islamismo (Iraque) e com o Estado Islâmico (Síria). Alianças: com os Houthis (Iêmen) e com o Hezbollah (Líbano).',
 'Disputas: com os Houthis (Iêmen) e com o Estado Islâmico (Síria). Alianças: com a minoria sunita do islamismo (Iraque) e com o Hezbollah (Líbano).',
 'Disputas: com a minoria sunita do islamismo (Iraque) e com o Hezbollah (Líbano). Alianças: com os Houthis (Iêmen) e com o Estado Islâmico (Síria).',
 'Disputas: com os Houthis (Iêmen) e com o Hezbollah (Líbano). Alianças: com a minoria sunita do islamismo (Iraque) e com o Estado Islâmico (Síria).'])
split(20,'Considerando o texto e o mapa',before(20,'Circuitos produtivos'))
split(21,'Com base no gráfico anterior',before(21,'Assalariados externos'))
split(22,'A partir dos textos,')
rows[22]['support']=re.sub(r'Texto 1 .*? A imagem acima reproduz','Texto 1\nA imagem de apoio reproduz',rows[22]['support'])
for n,marker in [(23,'A partir da leitura dos textos'),(24,'A partir da leitura dos textos'),(25,'Considerando o texto assinale'),(26,'Considerando os textos,'),(27,'Considerando os textos,'),(28,'Com base no excerto,'),(29,'A partir da imagem e do texto,'),(30,'Mariano Moreno,'),(31,'Sobre a repercussão internacional'),(32,'Comparando as expectativas')]:split(n,marker)
put(33,text='Sobre as criações de Zuzu Angel para a produção das peças e organização do desfile, é correto afirmar que a',support='''As imagens fazem parte da coleção International Dateline Collection III, exposta em um desfile internacional organizado pela estilista brasileira Zuzu Angel, em Nova Iorque, no dia 13 de setembro de 1971.

Legenda 1: Vestido de noiva idealizado por Zuzu Angel.
Legenda 2: Desenho de quepe militar nas cores verde oliva, amarela, azulão-verde; com aba na cor verde direcionada para a direita. Possui inscrição do número “32” a lápis e à caneta, bem como o texto “verde oliva, amarelo, azulão-verde” e a palavra “azulão” registrados à caneta. Desenho utilizado em bordado de vestido.
Legenda 3: Desenho de canhão nas cores vermelha, amarela e azul. Possui bandeira na cor verde e bola na cor preta. Apresenta inscrição a lápis com o número “23” e assinatura “Carlos L” à caneta. Desenho utilizado em bordado de vestido.
(Imagens disponíveis em https://www.zuzuangel.com.br. Acesso em 01/08/2025.)''',options=[
 'utilização de um vestido de noiva, decorado com símbolos militares e desenhos infantis, amenizava a percepção internacional dos anos de chumbo do Brasil pós-AI5.',
 'escolha por desenhos infantis, associados aos motivos militares, expressa uma denúncia do desaparecimento de presos políticos.',
 'banalização de elementos militares, em um desfile de moda, mostra uma alienação de parte da classe artística brasileira diante do regime militar.',
 'opção pelos motivos militares remonta à valorização do nacionalismo e à adesão da estilista à política externa do Regime Militar.'])
put(34,text='Considerando o texto e o mapa, assinale a alternativa correta.',support='''Nas concepções de cidadania e nacionalidade em vigor a partir do século XIX, a filiação formal a um país é geralmente adquirida no nascimento, seja pelo jus soli (direito de solo) ou pelo jus sanguinis (direito de sangue). O jus soli atribui a nacionalidade com base no nascimento no território de um país; o jus sanguinis atribui às crianças a nacionalidade de seus pais. A dicotomia soli/sanguinis foi uma invenção do século XIX. Os impérios europeus do Antigo Regime atribuíam a pertença à comunidade com base em um ou outro princípio único de direito natural.
(Adaptado de PERL-ROSENTHAL, N. E.; ERMAN, S. Inventing Birthright: The Nineteenth-Century Fabrication of Jus Soli and Jus Sanguinis. Law and History Review 42, n. 3, p. 421–48, 2024.)''',options=[
 'Filhos de estrangeiros nascidos em países europeus adquiriam a nacionalidade e a cidadania ao nascer, após o fim das revoluções burguesas.',
 'As ex-colônias europeias nas Américas eram importantes destinos de imigrantes, o que influenciou suas definições de cidadania e nacionalidade.',
 'Regimes populistas proibiram que os nascidos nos novos países reivindicassem cidadania europeia, após as independências americanas.',
 'O jus sanguinis era utilizado nas colônias como um instrumento de controle pela Europa para dificultar o acesso à cidadania dos povos nativos.'])
split(35,'Considerando as informações apresentadas,',before(35,'350 Controle'))
split(36,'Considerando as informações apresentadas')
split(37,'Considerando as informações apresentadas,',before(37,'350 kg'))
split(38,'Assinale a alternativa que identifica',before(38,' II III'))
rows[38]['text']='Assinale a alternativa que identifica corretamente os eventos I, II, III e IV.'
rows[38]['options']=['I: mitose; II: meiose; III: plasmogamia; IV: meiose.','I: meiose; II: meiose; III: cariogamia; IV: mitose.','I: mitose; II: mitose; III: plasmogamia; IV: meiose.','I: meiose; II: mitose; III: cariogamia; IV: mitose.']
split(39,'A partir dessas informações,',before(39,'25 I II'))
put(40,text='A informação da placa está',support='Considere a placa de aviso encontrada em uma reserva ecológica.\n(Adaptado de https://pt.dreamstime.com. Acesso em 31/03/2025.)')
split(41,'Considerando essas informações')
split(42,'Considerando o gráfico anterior,',before(42,'Distribuição dos cardeais'))
put(44,text='A figura mostra um trecho do gráfico de f(g(x)), em que f(x) = x³ + 2x² + ax − 1, g(x) = 3 − x e a é uma constante real.\n\nQual é o valor da constante a?',options=['−2.','−3.','−4.','−5.'])
put(45,text='Sobre dois polinômios p(x) e q(x) de coeficientes reais sabe-se que:\n• p(x) + q(x) tem grau igual a 3.\n• p(x) · q(x) tem grau igual a 8.\n\nÉ correto afirmar que o grau de p(x) − q(x) é igual a',options=['5.','4.','3.','2.'])
put(46,text='A reta de equação y = ax + b faz um ângulo de 30 graus com o eixo y, conforme ilustrado na figura, e sua distância até a origem é √3.\n\nO valor de ab é')
split(47,'A partir desses dados,')
rows[47]['support']=re.sub(r'200 milhas.*?\(Texto e mapas adaptados','(Texto e mapas adaptados',rows[47]['support'])
split(48,'A equação da parábola')
rows[48]['support']=before(48,'Figura 1')
rows[48]['options']=[o.replace('x2','x²')for o in rows[48]['options']]
put(50,text='A figura mostra um quadrado ABCD de lado medindo x. O ponto médio do lado AB está representado por M. Os pontos P e Q, pertencentes ao lado CD, são tais que PD = QC. O ângulo PMQ, representado por θ na figura, é tal que cos(θ) = 2/3.\n\nA área do triângulo PMQ é',options=['√5·x²/5.','√3·x²/2.','√2·x²/2.','√3·x²/4.'])
put(53,text='Na figura, ABCD é um quadrado com lado medindo 6, e P, Q, R e S são pontos sobre os lados desse quadrado, em que AS = BQ = 2, PB = 3 e DR = 1.\n\nO valor da área sombreada é igual a')
split(54,'Considerando que consoantes mudas')
split(55,'Sobre a diferença que o texto estabelece')
split(56,'Considerando esse texto,')
rows[55]['support']=rows[55]['support'].removeprefix('Texto para as questões 55 e 56. ')
rows[56]['support']=rows[56]['support'].removeprefix('Texto para as questões 55 e 56. ')
put(57,text='Nesse texto, observamos ocorrências de “que” com diferentes valores, entre eles o',support='''O texto é um trabalho da artista Santarosa Barreto apresentado na exposição Histórias das mulheres: artistas depois de 2000, realizada no MASP em 2019.

LUTE A LUTA COMO VOCÊ ACHA QUE DEVE LUTAR E NÃO COMO EXIGEM QUE VOCÊ LUTE QUE VÃO DIZER QUE VOCÊ NÃO SABE O QUE É UMA LUTA QUE VÃO DIZER QUE VOCÊ NÃO TEM FORÇA PRA LUTAR QUE VÃO DIZER QUE É ELES QUE SABEM LUTAR QUE VÃO DIZER QUE ELES LUTAM HÁ MAIS TEMPO QUE VOCÊ LUTA QUE VÃO DIZER QUE É MELHOR VOCÊ DESISTIR DA LUTA QUE VÃO DIZER QUE NÃO É ASSIM QUE SE LUTA QUE VÃO DIZER QUE VOCÊ NÃO SABE LUTAR QUE VÃO DIZER QUE VOCÊ NUNCA LUTOU QUE VÃO DIZER QUE VOCÊ NÃO ESTÁ LUTANDO A MESMA LUTA QUE ELES ESTÃO LUTANDO OS SUPOSTOS DONOS DA LUTA.

(BARRETO, S. A luta. Ikrek Edições, 2019, reimpressão 2024.)''')
split(58,'Considerando as informações do texto 1,')
rows[58]['support']=rows[58]['support'].split('Texto 2')[0]+'\n\nTexto 2: meme na imagem de apoio.'
split(59,'Considerando as imagens do texto 1')
split(60,'Em relação às reflexões de Ailton Krenak,')
split(61,'É correto afirmar que a ode mínima')
split(63,'Leia a citação')
rows[63]['text'],rows[63]['support']=raw[63]['text'].split('Foi então que vi',1)
rows[63]['support']='Foi então que vi'+rows[63]['support']
split(64,'No enredo de Casa Velha,')
put(65,text='Leia os versos da canção e assinale a alternativa correta.',support=raw[65]['text'].removeprefix('Leia os versos da canção abaixo e assinale a alternativa correta. '))
split(66,'Com base nas informações do enunciado,',before(66,'Ilustrações dos domínios'))
split(67,'Com base nas informações do enunciado e do infográfico')
split(68,'Características como massa e volume',before(68,'Energia Densidade'))
split(69,'Considerando as informações do gráfico,',before(69,'3,0 2,4')+'\n\nDado parcial: massa molar K₄Ti(O₂)₄ = 332,3 g/mol.\n(Adaptado de BACH, K. et al. ChemRxiv, DOI: 10.26434/chemrxiv-2024-xb06z-v2. Acesso em 09/10/2025.)')
split(70,'Nesse processo de fabricação,',before(70,'NaCl (saturado)'))
split(71,'Considerando que água e etanol',before(71,'Massa Específica Teor'))
split(72,'Considerando apenas essas informações,',before(72,'2025.) 159661'))

# Preserve verse lines from the original column rather than flattening poems.
with pdfplumber.open(ROOT/'public/provas/unicamp/2026-fase1.pdf') as document:
    for n, page_index, side, start, end in [
        (60,21,'right','“O Homem; as Viagens','(ANDRADE,'),
        (61,22,'left','Aos óculos','(PAES,'),
        (65,23,'left','ALVORADA','(CARTOLA.')]:
        page=document.pages[page_index]
        bounds=(page.width/2,0,page.width,page.height) if side=='right' else (0,0,page.width/2,page.height)
        text=page.crop(bounds).extract_text()
        poem=text[text.index(start):text.index(end)].strip()
        support=rows[n]['support']
        rows[n]['support']=support[:support.index(start)]+poem+'\n\n'+support[support.index(end):]
# Source notes are not part of answer choices.
rows[62]['support']='(ADICHIE, C. N. No seu pescoço. Tradução: Júlia Romeu. São Paulo: Companhia das Letras, 2017.)'
rows[62]['options'][3]=rows[62]['options'][3].split(' (ADICHIE,')[0]
rows[32]['text']=rows[32]['text'].replace('Comério','Comércio')
for n in [67,69,72]:
    for field in ['text','support']:
        if rows[n][field]:
            for a,b in [('CO3−2','CO₃²⁻'),('CaCO3','CaCO₃'),('CO2','CO₂'),('K4Ti(O2)4','K₄Ti(O₂)₄'),('LiAlSi2O6','LiAlSi₂O₆')]:rows[n][field]=rows[n][field].replace(a,b)
    rows[n]['options']=[o.replace('CO3−2','CO₃²⁻').replace('CaCO3','CaCO₃').replace('CO2','CO₂')for o in rows[n]['options']]
rows[47]['options']=[o.replace('km2','km²')for o in rows[47]['options']]

# Readable paragraphs, numbering and mathematical superscripts. These changes
# correct presentation artifacts; no answers or explanations are changed.
for row in rows.values():
    for field in ['text','support']:
        if row[field]:
            text=clean(row[field])
            text=re.sub(r'(?<!\n)\s+(Texto [123])\s+',r'\n\n\1\n',text)
            text=re.sub(r'\s+([1-4]\))\s+',r'\n\n\1 ',text) if row['number']==8 else text
            text=text.replace(' • ', '\n\n• ')
            text=text.replace('m/s2','m/s²').replace('km2','km²').replace('ar condicionado','ar-condicionado')
            row[field]=text
    assert len(row['options'])==4 and all('conforme o caderno'not in o for o in row['options']),row['number']
    assert row['text'].strip() and not re.search(r'\b[a-d]\)\s',row['text']),row['number']

# Figure extraction is configured separately and reviewed against the caderno.
figures=json.loads((ROOT/'scripts/fixtures/unicamp-2026-figures.json').read_text(encoding='utf8'))
pdf=pdfium.PdfDocument(str(ROOT/'public/provas/unicamp/2026-fase1.pdf'))
for spec in figures:
    if 'existing' in spec:
        rows[spec['question']]['supportImage'].append(spec['existing']);continue
    if 'page' in spec:
        im=pdf[spec['page']-1].render(scale=2.5).to_pil()
        box=tuple(round(v*2.5) for v in spec['box'])
    else:
        sources=spec['source'] if isinstance(spec['source'],list) else [spec['source']]
        parts=[Image.open(ROOT/('public'+path)).convert('RGB')for path in sources]
        im=Image.new('RGB',(max(part.width for part in parts),sum(part.height for part in parts)),'white');offset=0
        for part in parts:im.paste(part,(0,offset));offset+=part.height
        box=tuple(round(v*im.width/spec['referenceWidth']) for v in spec['box'])
    assert 0<=box[0]<box[2]<=im.width and 0<=box[1]<box[3]<=im.height,spec
    target=ROOT/('public'+spec['output']);target.parent.mkdir(parents=True,exist_ok=True)
    im.crop(box).save(target,optimize=True)
    rows[spec['question']]['supportImage'].append(spec['output'])

# Keep graphical alternatives as native vector drawings in the answer buttons,
# never as an image containing the four choices. Béziers come from the PDF.
with pdfplumber.open(ROOT/'public/provas/unicamp/2026-fase1.pdf')as document:
    curves=document.pages[5].curves
    curves=sorted(curves,key=lambda c:(int(c['x0']>300),c['top']))
    graphs=[]
    for curve in curves:
        origin_x=curve['x0'];base_y=curve['bottom'];span_x=curve['x1']-origin_x;span_y=102.5
        def point(p):return [round(45+(p[0]-origin_x)/span_x*270,4),round(205-(base_y-p[1])/span_y*180,4)]
        commands=[];current=None
        for command in curve['path']:
            kind=command[0];points=list(command[1:])
            if kind=='v':kind='c';points=[current]+points
            if kind=='y':kind='c';points=points+[points[-1]]
            commands.append(kind.upper()+' '+' '.join(str(v) for p in points for v in point(p)))
            current=points[-1]
        graphs.append(dict(path=' '.join(commands)))
    assert len(graphs)==4
    rows[13]['optionGraphs']=graphs

output=ROOT/'src/lib/unicamp2026Presentation.json'
output.write_text(json.dumps(list(rows.values()),ensure_ascii=False,indent=2)+'\n',encoding='utf8')
print('72 questions separated into statement, support text, figures and four alternatives.')
