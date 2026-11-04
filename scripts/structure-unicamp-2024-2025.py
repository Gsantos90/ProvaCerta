"""Structure Unicamp 2024 Q/Y and 2025 Q/Z from committed seed/PDF assets.
Only presentation fields are emitted; database IDs, answer keys and scores stay intact.
Requires Pillow, pdfplumber and pypdfium2. Crop coordinates are reviewed against originals.
"""
import json,re,unicodedata
from pathlib import Path
from PIL import Image
import pdfplumber
ROOT=Path(__file__).resolve().parents[1]
def fields(text):
    result=[];start=0;quoted=False;i=0
    while i<len(text):
        if text[i]=="'":
            if quoted and i+1<len(text) and text[i+1]=="'":i+=2;continue
            quoted=not quoted
        if text[i]==',' and not quoted:result.append(text[start:i]);start=i+1
        i+=1
    result.append(text[start:]);assert not quoted
    return [None if v=='null' else v.removesuffix('::jsonb')[1:-1].replace("''", "'") if v.startswith("'") else int(v) for v in result]
def clean(text):
    text=unicodedata.normalize('NFC',text).replace('ﬁ','fi').replace('ﬂ','fl').replace('ﬀ','ff').replace('\u00ad','')
    text=re.sub(r'(?<=\w)-\s+(?=\w)','',text)
    for a,b in [('',''),('','≈'),('','ℤ'),('','ℕ'),('m/s2','m/s²'),('m2','m²'),('m3','m³'),('x2','x²'),('y2','y²'),('CO2','CO₂'),('O2','O₂')]:text=text.replace(a,b)
    return text.strip()
raw={2024:{},2025:{}}
for line in (ROOT/'supabase/seed-unicamp-2024-2026.sql').read_text(encoding='utf8').splitlines():
    m=re.search(r"select id,(.*) from public.exams where slug='unicamp-(2024|2025)-fase1'",line)
    if m:
        n,subject,text,support,media,options,answer,explanation=fields(m[1]);raw[int(m[2])][n]=dict(text=clean(text),options=[clean(o)for o in json.loads(options)],media=json.loads(media))
all_rows={};figures=[]
for year in [2024,2025]:
    bank=raw[year];assert sorted(bank)==list(range(1,73))
    rows={n:dict(number=n,text=q['text'],support=None,supportImage=[],options=q['options'].copy(),originalImages=[],structuredContent=True,structuredContentVersion=1)for n,q in bank.items()}
    def split(n,marker,prefix=None):
        text=bank[n]['text'];pos=text.rfind(marker);assert pos>=0,(year,n,marker)
        rows[n]['text']=text[pos:];rows[n]['support']=text[:pos] if prefix is None else prefix
    def before(n,marker):return bank[n]['text'].split(marker)[0]
    def put(n,text=None,support=None,options=None):
        if text is not None:rows[n]['text']=text
        rows[n]['support']=support
        if options is not None:rows[n]['options']=options
    def choices(n,values):
        rows[n]['text']=re.split(r'\ba\)\s',rows[n]['text'])[0].strip();rows[n]['options']=values
    def crop(n,w,box,suffix='figura',shared=None,option=None):
        media=bank[n]['media'];sources=list(dict.fromkeys(media.get('support',[])+media['original']))
        spec=dict(year=year,question=n,sources=sources,referenceWidth=w,box=box,output=f'/unicamp-{year}-apoios/q{n:02}-{suffix}.png')
        if option is not None:spec['option']=option
        if shared:spec['shared']=shared
        figures.append(spec)
    if year==2025:
        splits={1:'Tendo em vista seu conhecimento',2:'Tendo em vista seus conhecimentos',3:'Indique a principal região',4:'Os escudos cristalinos são formados',5:'Considerando os fenômenos',6:'No contexto dos eventos extremos',7:'Considerando o espaço marítimo',12:'Considerando que o coeficiente',15:'Depreende-se, da leitura',16:'No diálogo,',17:'Considerando as informações da figura',18:'De acordo com o texto 1',19:'O texto 2 toca',20:'No post,',21:'Qual alternativa expressa',22:'O diálogo anterior aparece',23:'Assinale a opção',24:'Assinale a alternativa que explicita',25:'Tendo em vista seus conhecimentos',26:'Tendo em vista seus conhecimentos',27:'Tendo em vista seus conhecimentos',28:'Essa pintura histórica',29:'Com base em seus conhecimentos',30:'Com base no excerto,',31:'Tendo em vista seus conhecimentos',32:'Considerando os textos 1 e 2',33:'De acordo com os textos 1 e 2',34:'Tendo em vista os textos 1 e 2',35:'Esse trabalho da artista',36:'A partir da forma',37:'Na tira de Wesley Samp',38:'Considerando o ponto de vista',39:'Na letra da música',40:'O “duplo sentido”',41:'A partir da leitura do trecho',42:'A partir dessa citação',43:'A partir da leitura dos trechos',44:'No conto “Além do ponto”',45:'No trecho,',46:'Nesta canção,',47:'Considerando o texto e o gráfico',59:'Partindo-se do pressuposto',60:'A partir dessas informações',61:'Em vista dessas informações',64:'Considerando que quanto menor',65:'Com base nos resultados',66:'Tendo em vista seus conhecimentos',68:'É correto afirmar que as setas',69:'Considerando uma espécie vegetal',70:'Assinale a alternativa correta.',71:'Sobre essa expedição',72:'Em vista das informações'}
        for n,m in splits.items():split(n,m)
        rows[1]['support']=before(1,'Relação entre escala')
        rows[3]['support']=bank[3]['text'][bank[3]['text'].index('Originário do continente'):bank[3]['text'].index('Indique a principal região')]
        for n in [5,6]:rows[n]['support']=rows[n]['support'].removeprefix('Leia o texto e observe a figura a seguir para responder às questões 5 e 6. ')
        put(8,text='Sendo, nos três trechos, o módulo da velocidade média do avião em relação ao vento |v(avião, vento)| = 750 km/h, podemos afirmar que',support=before(8,'vvento , solo A B C').replace('módulo = 250 km/h','módulo |v(vento, solo)| = 250 km/h'))
        for n,m in [(9,'Uma sonda descreve'),(10,'Ao longo da linha'),(13,'Operando em condições ótimas'),(14,'A área de um painel')]:split(n,m);rows[n]['support']=re.sub(r'^Texto comum às questões .*?\. ','',rows[n]['support'])
        rows[9]['text']=rows[9]['text'].replace('106 m','10⁶ m')
        put(10,text='Ao longo da linha que une o centro da Terra ao da Lua (figura A), há um ponto P para o qual as forças gravitacionais da Terra e da Lua, exercidas sobre uma sonda, têm módulos iguais e sentidos opostos. No ponto P, essas duas forças se cancelam.\n\nO gráfico da figura B representa a componente da aceleração resultante dessas forças ao longo da referida linha, sendo r a distância ao centro da Terra e d ≈ 380 000 km a distância Terra–Lua. Valores positivos de a indicam que o vetor aceleração aponta para a Lua; valores negativos indicam que aponta para a Terra.\n\nO ponto P fica aproximadamente a que distância do centro da Lua?',support=rows[9]['support'])
        rows[12]['support']=before(12,'2,0000');rows[12]['options']=['−1,0 × 10⁻⁷ °C⁻¹.','−5,0 × 10⁻⁶ °C⁻¹.','−2,5 × 10⁻⁴ °C⁻¹.','−4,0 × 10⁻² °C⁻¹.']
        rows[13]['text']=rows[13]['text'].split('painelpainel')[0]
        rows[16]['support']='Diálogo de um vídeo publicado no Instagram.\n(Adaptado de https://www.instagram.com/dhar.mann. Acesso em 12/04/2024.)'
        rows[17]['support']=before(17,'AMPLIFIED STEREOTYPES')
        rows[18]['support']=rows[18]['support'].removeprefix('Texto comum às questões 18 e 19. ')
        rows[19]['support']=rows[19]['support'].removeprefix('Texto comum às questões 18 e 19. ')
        rows[20]['support']=rows[20]['support'].replace('alokvmenon • Follow','ALOK (@alokvmenon)\n\n')
        rows[33]['support']=rows[33]['support'].replace('Texto 1','Texto 1: charge na imagem de apoio.',1)
        for n in [35,36]:rows[n]['support']=rows[n]['support'].removeprefix('Texto comum às questões 35 e 36. ')
        for n in [37,38]:rows[n]['support']=rows[n]['support'].removeprefix('Texto comum às questões 37 e 38. ')
        rows[40]['support']='''Lembro que antigamente o CELULAR. Era um telefone portátil, que permitia falar mesmo quando você não estava num lugar fixo. Foi uma coqueluche.

Sinto falta desse tempo, às vezes. Porque hoje existe um aparelho inspirado nele, parecido até com ele, mas que serve para tudo, até para tirar unha encravada rsrs – mas não para telefonar.

Ninguém mais liga! Ninguém liga para ninguém (sim, tem duplo sentido). O Zap substitui tudo isso.
(Postagem de Renato Janine Ribeiro em seu perfil no Facebook, publicada em 27/2/2024.)'''
        rows[47]['support']=before(47,'Alunos de baixo desempenho')
        put(48,text='Márcia vai sortear um número entre 1 e 2025. Qual a probabilidade de o número sorteado ser múltiplo de 3 ou de 7?',options=['868/2025.','289/2025.','675/2025.','951/2025.'])
        put(50,text='As funções trigonométricas cos(x) e sen(x) são muito estudadas no Ensino Médio. A exposição deste importante conteúdo costuma contar, nas aulas, com a apresentação de gráficos e tabelas que expõem em arcos – chamados “arcos notáveis”, como por exemplo π/3, π/4 e π/6 – os valores dessas funções.\n\nÉ possível, no entanto, calcular, em outros arcos, os valores destas funções, utilizando algumas identidades trigonométricas. Considerando a relação cos(x/2) = √((1 + cos(x))/2) e a identidade fundamental da trigonometria, é possível afirmar que o valor de sen(π/12) é',options=['√(2 − √3)/2.','√(2 + √3)/2.','√(3 − √3)/2.','√(3 + √3)/2.'])
        rows[51]['text']=re.sub(r' Abacaxi Laranja .*? Morango ','\n\n',rows[51]['text'])
        rows[54]['text']=rows[54]['text'].replace('x ∈ℤ','x ∈ ℤ')
        rows[55]['text']=re.sub(r' B• H G • • A C D E F ','\n\n',rows[55]['text'])
        rows[56]['text']=rows[56]['text'].replace('n∈ℕ','n ∈ ℕ')
        rows[58]['options']=['Gráfico A.','Gráfico B.','Gráfico C.','Gráfico D.']
        rows[60]['support']=before(60,'proteínas gorduras carboidratos')
        rows[64]['support']=before(64,'DMSO ligado à platina versus')
        rows[65]['support']=before(65,'Transflutrina (repelência)')
        rows[68]['support']=before(68,'I SARS-CoV-2 II')
        rows[69]['support']=rows[69]['support'].removesuffix(' I II III IV ');choices(69,['III e IV.','I e II.','II e III.','I e IV.'])
        rows[72]['support']=before(72,' A a A a B b B b')
        specs=[(1,404,[8,194,394,386]),(3,425,[5,38,416,380]),(4,419,[13,226,410,566]),(5,269,[4,205,263,556]),(7,392,[4,225,382,519]),(8,440,[6,258,432,419]),(10,351,[16,277,321,354]),(12,440,[24,165,384,425]),(13,440,[10,390,438,591]),(16,404,[10,103,393,586]),(17,352,[1,268,345,678]),(28,440,[6,40,432,365]),(29,433,[0,100,244,467]),(33,417,[67,34,409,287]),(35,422,[3,112,410,318]),(37,402,[6,23,392,525]),(47,440,[8,274,438,513]),(51,440,[95,186,331,403]),(53,440,[133,104,282,254]),(55,440,[31,124,387,303]),(59,440,[4,179,432,420]),(60,440,[5,265,429,323]),(64,372,[4,282,367,563]),(65,440,[6,249,429,508]),(66,440,[4,147,432,338]),(68,440,[8,228,428,509]),(69,440,[75,316,364,451]),(72,397,[48,192,332,530])]
        for n,w,b in specs:crop(n,w,b,shared={5:[6],35:[36],37:[38]}.get(n))
        crop(10,351,[10,475,315,709],'grafico')
    else:
        splits={1:'No texto, o verbo nevar',2:'Assinale a alternativa em que',3:'A partir do texto 1,',4:'Considerando a imagem',5:'Nesse trecho da canção',6:'Podemos afirmar que o uso',7:'Considerando os textos 1 e 2',8:'Assinale o trecho',9:'De acordo com o texto,',10:'Em seu relato de viagem',12:'Com base nessas duas citações',13:'Com base em seus conhecimentos',14:'Sobre as comunidades',15:'Tendo em vista seus conhecimentos',16:'Tendo em vista seus conhecimentos',17:'É correto afirmar que a fotografia',18:'A partir da leitura do texto',19:'Com propósitos diferentes',20:'De acordo com as informações do gráfico',21:'Com base nas informações da figura',23:'Para minimizar os problemas,',24:'De acordo com os autores',25:'Levando em conta essas informações',27:'Assinale a alternativa que faz',28:'A partir de seus conhecimentos',29:'O fenômeno descrito',30:'Tendo em vista seus conhecimentos',31:'Tendo em vista seus conhecimentos',32:'Os tremores de 1939',33:'Com base no excerto',34:'Logo ao reentrar',35:'Após viajar pela atmosfera',36:'O ar atmosférico',37:'A temperatura extremamente',39:'Em um estudo do comportamento',40:'Em um experimento destinado',42:'É correto afirmar que as estruturas',44:'Assinale a alternativa que descreve',45:'Com base em seus conhecimentos',46:'Considerando seus conhecimentos',47:'Assinale a alternativa que,',48:'Émile Durkheim',49:'De acordo com os textos 1 e 2',50:'A partir do texto,',51:'Escolha a alternativa que apresenta',52:'Considerando os excertos',53:'Escolha, dentre as alternativas',66:'Considere os dois textos',67:'Qual das imagens',68:'Qual seria o tópico',69:'O e-mail criado',70:'A análise do autor',71:'Para a autora dessa crítica',72:'Assinale a alternativa que preenche'}
        for n,m in splits.items():split(n,m)
        rows[2]['support']=rows[1]['support']
        rows[4]['support']=before(4,'Texto 1 em Acesso')+'\n\nTexto 1: anúncio da Fliportela.\nTexto 2: águia da Portela no desfile de 2017 (foto: Ricardo Moraes/Reuters).'
        rows[6]['support']='''je ne parle pas bien*
je ne parle pas bien
je ne parle pas bien
je ne parle pas bien

eu tenho uma língua solta
que não me deixa esquecer
que cada palavra minha
é resquício da colonização
cada verbo que aprendi conjugar
foi ensinado com a missão
de me afastar de quem veio antes
nossas escolas não nos ensinam
a dar voos
[...]
reinvenção
nossa revolução surge e urge
das nossas bocas
das falas aprendidas
que são ensinadas
e muitas não compreendidas
salve, a cada gíria
je ne parle pas bien
[...]
o que era pra ser arma de colonizador
está virando revide de ex colonizado
estamos aprendendo as suas línguas
e descolonizando os pensamento

(Fragmentos do poema Je ne parle pas bien, de Luz Ribeiro, publicado na Revista Opiniães: Revista dos alunos de Literatura Brasileira, n. 10, 2017.)
* Je ne parle pas bien, do francês, significa “Eu não falo direito”.'''
        original=bank[11]['text'];start=original.index('Relacione, ao poema');end=original.index('As estrelas');rows[11]['text']=original[start:end];rows[11]['support']=original[:start]+'\n\n'+original[end:]
        rows[17]['support']='Legenda: imagens de “mulheres de conforto”, em 1944, na Coreia do Sul.\nTermo usado para designar coreanas, filipinas e chinesas obrigadas a se prostituírem em bordéis usados por militares japoneses.\n(Foto, legenda e definição disponíveis em https://forbes.com.br/colunas/2017/07/imagens-raras-mostram-mulheres-de-conforto-da-2a-guerra-mundial/. Acesso em 25/05/2023.)'
        rows[19]['support']='''Imagem 1: postada em março de 2023 no Reddit, uma comunidade de fóruns, na página específica do Midjourney. Essa página reúne criações feitas na ferramenta de Inteligência Artificial, que permite criar imagens hiper-realistas a partir de uma descrição em texto. A imagem viralizou a partir do Twitter. O Papa nunca usou aquele casaco branco.
(Disponível em https://www.uol.com.br/tilt/noticias/redacao/2023/03/26/foto-do-papa-usando-casaco-estiloso-foi-criada-por-inteligencia-artificial.htm. Acesso em 04/05/2023.)

Imagem 2: tradução da legenda: “Eu apenas respiro por você. Um beijo, meu belo anjo!”
Panfleto anônimo produzido na França pré-revolucionária do final do século XVIII retratando a rainha Maria Antonieta em um romance com a sua amiga, a duquesa Yolande de Polignac.
(Biblioteca Nacional da França, RES 8-LB39-12153. Disponível em https://gallica.bnf.fr/ark:/12148/btv1b6942376r.item. Acesso em 04/05/2023.)'''
        for n in [20,21]:rows[n]['support']=rows[n]['support'].removeprefix('Texto comum às questões 20 e 21: ')
        rows[26]['text']=before(26,' Dados:');rows[26]['support']='Dados:\n(i) Escherichia coli; (ii) Staphylococcus aureus.\n● Curcumina livre.\n○ Curcumina combinada com octaarginina.';rows[26]['options']=['Gráficos A.','Gráficos B.','Gráficos C.','Gráficos D.']
        rows[33]['options'][3]=rows[33]['options'][3].split(' Use os valores')[0]
        for n in [34,35,36,37]:rows[n]['support']=rows[n]['support'].removeprefix('Texto comum às questões 34, 35, 36 e 37. ')+'\n\nUse os valores aproximados: g = 10 m/s² e π = 3.'
        rows[34]['text']=rows[34]['text'].replace('aceleração a 5, 0','aceleração a = −5,0')
        rows[35]['text']=rows[35]['text'].replace('v0','v₀')
        for n in [39,40]:rows[n]['support']=rows[n]['support'].removeprefix('Texto comum às questões 39 e 40. ')
        rows[40]['text']=rows[40]['text'].replace('elásti cas','elásticas')
        values={34:['1300 km.','1400 km.','1500 km.','4900 km.'],35:['−11,1 × 10¹⁰ J.','−3,60 × 10¹⁰ J.','−6,00 × 10⁶ J.','−3,00 × 10⁶ J.'],36:['1,38 × 10⁻³ m³.','9,00 × 10¹ m³.','7,20 × 10² m³.','2,88 × 10³ m³.'],37:['0,06 m.','16,7 m.','0,05 m.','20 m.'],38:['0,20 N.','2,0 N.','200 N.','2000 N.'],39:['14 Ω.','70 mΩ.','70 MΩ.','14 GΩ.'],40:['4,0 × 10⁻⁶ N/m.','6,0 × 10⁻⁶ N/m.','13,5 × 10⁻⁶ N/m.','20,25 × 10⁻⁶ N/m.'],54:['6 cm.','8 cm.','10 cm.','12 cm.'],56:['4.','5.','6.','7.'],57:['11/8.','13/8.','15/8.','17/8.'],58:['9,5 cm.','10,5 cm.','11,5 cm.','12,5 cm.'],59:['3.','5.','7.','9.'],60:['34.','36.','45.','47.'],61:['7/13.','5/13.','11/52.','7/52.'],62:['x < −2.','−2 < x < 0.','0 < x < 2.','x > 2.'],63:['18.','20.','22.','24.'],64:['1.','2.','3.','4.'],65:['√26.','√27.','√28.','√29.']}
        for n,v in values.items():choices(n,v)
        rows[49]['support']=rows[49]['support'].replace('Texto 1 Manifesto','Texto 1\n“ENQUANTO HOUVER RACISMO NÃO HAVERÁ DEMOCRACIA”\n\nManifesto')
        rows[66]['support']=rows[66]['support'].split('Texto 2')[0]+'\n\nTexto 2: cartaz na imagem de apoio.\n(Adaptado de https://www.toronto.ca/wp-content/uploads/2019/04/8f80-Anti-Black-Racism-Poster-1.pdf. Acesso em 27/05/2023.)'
        rows[67]['text']=rows[67]['text'].split(' a)')[0];rows[67]['options']=['Peça A.','Peça B.','Peça C.','Peça D.']
        specs=[(3,434,[6,415,424,551]),(4,361,[75,120,266,414]),(17,422,[12,43,365,282]),(19,315,[3,30,151,230]),(20,340,[26,303,309,532]),(21,290,[142,260,288,690]),(23,440,[67,219,372,443]),(24,440,[150,38,437,508]),(25,346,[34,220,299,632]),(29,388,[4,57,381,266]),(30,325,[3,190,320,547]),(32,428,[13,260,408,549]),(33,325,[9,126,314,495]),(37,440,[47,472,390,791]),(39,440,[48,383,379,630]),(40,440,[56,386,376,554]),(42,440,[8,106,429,367]),(44,440,[6,135,432,431]),(46,440,[55,122,376,350]),(47,440,[181,88,435,245]),(57,440,[3,131,432,267]),(63,440,[68,86,363,258]),(65,440,[140,69,396,221]),(66,440,[80,234,319,470])]
        for n,w,b in specs:crop(n,w,b)
        crop(4,361,[68,429,288,595],'aguia');crop(19,315,[171,30,307,230],'panfleto')
        for i,b in enumerate([[6,380,187,571],[6,607,187,795],[217,380,400,571],[217,607,400,795]]):crop(67,440,b,'peca-'+str(i+1),option=i)
        # These are the original graph-only bitmap objects, without choice labels.
        for i,b in enumerate([[31.1810913,368.5655982,286.2992096,469.9058234],[31.1810913,481.4254004,286.2992096,582.7656256],[31.1810913,594.7513739,286.2992096,696.0915991],[31.1810913,709.4931342,286.2992096,810.8333594]]):figures.append(dict(year=year,question=26,page=11,box=b,output=f'/unicamp-2024-apoios/q26-graficos-{i+1}.png',option=i))
    all_rows[year]=rows

# Preserve line breaks in verse directly from the relevant original column.
# Coordinates omit the rotated source credits, which remain in textual citations.
poems=[(2024,5,'Lendas de raças','(Pantanal,'),(2024,11,'As estrelas','(BILAC,'),(2025,19,'“Parable of the Talents”','(BUTLER,'),(2025,34,'"Sabe, no fundo','(Trecho da canção'),(2025,36,'Maria era uma boa moça','(Fragmento da canção'),(2025,46,'Todo mundo tem o direito','Nesta canção,')]
metadata_text=(ROOT/'src/lib/unicampSources.js').read_text(encoding='utf8');metadata=json.loads(metadata_text[metadata_text.index('{'):])
for year,n,start,end in poems:
    row=all_rows[year][n];source=row['support'];start_pos=source.find(start);end_pos=source.find(end,start_pos)
    if start_pos<0:continue
    page_number=metadata[f'unicamp-{year}-fase1']['pages'][str(n)]
    with pdfplumber.open(ROOT/f'public/provas/unicamp/{year}-fase1.pdf')as document:
        found=None
        for page in document.pages[max(0,page_number-3):page_number+1]:
            for bounds in [(28,48,291,812),(305,48,570,812)]:
                text=page.crop(bounds).extract_text() or ''
                # Compare normalized whitespace to handle headings split across lines.
                if start in text and end in text[text.index(start):]:found=text[text.index(start):text.index(end,text.index(start))].strip();break
            if found:break
        if found and end_pos>=0:row['support']=source[:start_pos]+found+'\n\n'+source[end_pos:]

# Formula exponents lost by the legacy PDF text layer.
for year, fixes in {2024:{37:[('×108','×10⁸')],39:[('10 –3','10⁻³'),('10 –12','10⁻¹²')],40:[('10 –6','10⁻⁶')]},2025:{12:[('ZnW2O8','ZnW₂O₈')]}}.items():
    for n,replacements in fixes.items():
        for field in ['text','support']:
            if all_rows[year][n][field]:
                for a,b in replacements:all_rows[year][n][field]=all_rows[year][n][field].replace(a,b)
for n in [38,39,40]:
    all_rows[2024][n]['support']=(all_rows[2024][n]['support'] or '')+'\n\nUse os valores aproximados: g = 10 m/s² e π = 3.'
poem="""“Parable of the Talents” (Octavia E. Butler)

“To survive,
Let the past
Teach you--
Past customs,
Struggles,
Leaders and thinkers.
Let
These
Help you.
Let them inspire you,
Warn you,
Give you strength.
But beware:
God is Change.

Past is past.
What was
Cannot
Come again.
To survive,
know the past.
Let it touch you.
Then let
The past Go.”

"""
support=all_rows[2025][19]['support'];start=support.index('“Parable of the Talents”');end=support.index('(BUTLER,',start)
all_rows[2025][19]['support']=support[:start]+poem+support[end:]

# Render only the reviewed figures; never reuse full-question screenshots.
import pypdfium2 as pdfium
pdfs={y:pdfium.PdfDocument(str(ROOT/f'public/provas/unicamp/{y}-fase1.pdf'))for y in all_rows}
for spec in figures:
    if 'page'in spec:
        scale=2.5;im=pdfs[spec['year']][spec['page']-1].render(scale=scale).to_pil();box=[round(v*scale)for v in spec['box']]
    else:
        parts=[Image.open(ROOT/('public'+p)).convert('RGB')for p in spec['sources']]
        im=Image.new('RGB',(max(p.width for p in parts),sum(p.height for p in parts)),'white');offset=0
        for part in parts:im.paste(part,(0,offset));offset+=part.height
        box=[round(v*im.width/spec['referenceWidth'])for v in spec['box']]
    assert 0<=box[0]<box[2]<=im.width and 0<=box[1]<box[3]<=im.height,spec
    target=ROOT/('public'+spec['output']);target.parent.mkdir(parents=True,exist_ok=True);im.crop(box).save(target,optimize=True)
    row=all_rows[spec['year']][spec['question']]
    if 'option'in spec:row.setdefault('optionImages',[None]*4)[spec['option']]=spec['output']
    else:
        row['supportImage'].append(spec['output'])
        for n in spec.get('shared',[]):all_rows[spec['year']][n]['supportImage'].append(spec['output'])
# Four graphical answer choices remain four independent native SVG graphs.
with pdfplumber.open(ROOT/'public/provas/unicamp/2025-fase1.pdf') as document:
    page=document.pages[18]
    vector_graphs=[]
    for box in [(325,187,542,331),(325,337,542,483),(325,492,542,638),(325,648,542,795)]:
        x0,top,x1,bottom=box;region=page.crop(box);paths=[];texts=[]
        def coord(p):return [round(p[0]-x0,3),round(p[1]-top,3)]
        for obj in region.curves:
            commands=[];current=None
            for item in obj['path']:
                kind=item[0];points=list(item[1:])
                if kind=='v':kind='c';points=[current]+points
                if kind=='y':kind='c';points=points+[points[-1]]
                commands.append(kind.upper()+' '+' '.join(str(v) for p in points for v in coord(p)));current=points[-1]
            paths.append(dict(d=' '.join(commands),width=obj.get('linewidth',0.6)))
        for obj in region.lines:
            paths.append(dict(d=f"M {obj['x0']-x0:.3f} {obj['top']-top:.3f} L {obj['x1']-x0:.3f} {obj['bottom']-top:.3f}",width=obj.get('linewidth',0.4)))
        for char in region.chars:
            if char['upright'] and char['text'].strip():texts.append(dict(x=round(char['x0']-x0,3),y=round(char['bottom']-top-char['size']*.18,3),size=round(char['size'],3),text=char['text']))
        assert paths and texts
        vector_graphs.append(dict(vector=True,width=x1-x0,height=bottom-top,paths=paths,texts=texts))
    all_rows[2025][58]['optionGraphs']=vector_graphs

for year,rows in all_rows.items():
    for row in rows.values():
        for field in ['text','support']:
            if row[field]:row[field]=clean(row[field]);row[field]=re.sub(r'(?<!\n) (Texto [12]|Excerto [12]) ',r'\n\n\1\n',row[field])
        row['options']=[clean(o)for o in row['options']]
        assert len(row['options'])==4 and not any('conforme o caderno'in o or 'conforme a figura'in o for o in row['options']),(year,row['number'])
        assert not re.search(r'\b[a-d]\)\s',row['text']),(year,row['number'],row['text'])
    (ROOT/f'src/lib/unicamp{year}Presentation.json').write_text(json.dumps(list(rows.values()),ensure_ascii=False,indent=2)+'\n',encoding='utf8')
(ROOT/'scripts/fixtures/unicamp-2024-2025-figures.json').write_text(json.dumps(figures,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
print('2024 and 2025: 144 structured questions with reviewed figure-only support.')
