"""Targeted scan corrections and explicit emphasis transcriptions."""
import re
def review(year,day,qs):
 def q(n):return qs[n-1]
 def text(n,s):q(n)['text']=s
 def opt(n,i,s):
  while len(q(n)['options'])<5:q(n)['options'].append('')
  q(n)['options'][i]=s
 def sub(n,a,b):q(n)['text']=q(n)['text'].replace(a,b)
 if day==1 and year==2025:
  sub(17,'The underlined words function, respectively, are','The underlined words function, respectively, are (underlined: employees; tight; good; well)')
  # The cartoon's preceding introduction belongs to question 18 only.
  for n in (1,2,3):q(n)['support']='Texto I — “Dance The Night”, de Dua Lipa. Consulte a letra no caderno oficial, página 1.'
  sub(4,'st. IV- I’ll be there ____________ May 21','IV- I’ll be there ____________ May 21st.')
  for item in qs:
   for field in ['text','support']:
    if field in item:item[field]=re.sub(r'\b10 PS-EFOMM 2025\b','',item[field]).strip()
 if day==2 and year==2025:
  q(4)['text']=q(4)['text'].split('( 48)')[0].strip().replace('m3','m³')
  for item in qs:
   for field in ['text']:
    item[field]=re.sub(r'\bx2\b','x²',item[field]);item[field]=re.sub(r'\by2\b','y²',item[field]);item[field]=re.sub(r'\bm3\b','m³',item[field]);item[field]=re.sub(r'\bcm2\b','cm²',item[field])
  sub(7,'f(x)=x3/2','f(x) = x^(3/2)')
  q(7)['text']=q(7)['text'].split('entre os pontos fornecidos.')[0]+'entre os pontos fornecidos.'
  q(8)['text']=q(8)['text'].split('Qual é o perímetro')[0]+'Qual é o perímetro do quadrilátero convexo PBRQ?'
  q(12)['text']=q(12)['text'].split('metros do topo?')[0]+'metros do topo?'
  sub(20,'125 245623 C (q)=q3− q2+(C +4714)q− ,onde q v 2 p 2','C_v(q) = q³ − (125/2)q² + (C_p + 4714)q − 245623/2, onde q')
  for a,b in {'P , do novo produto é u':'P_u, do novo produto é','(C ) corresponde ao valor p':'(C_p) corresponde ao valor','C é estimado pela função v':'C_v é estimado pela função','(C ) é composto pelo Custo t':'(C_t) é composto pelo Custo','(C ) e um Custo Fixo (C ) de v f':'(C_v) e um Custo Fixo (C_f) de','C (q)=C (q)+C . t v f':'C_t(q) = C_v(q) + C_f.','R(q)=q.P e o Lucro u':'R(q) = q · P_u e o Lucro','L(q)=R(q)−C (q). t':'L(q) = R(q) − C_t(q).','minimização de C , analise as afirmativas. p':'minimização de C_p, analise as afirmativas.','Para que C seja mínimo, as dimensões do novo p':'Para que C_p seja mínimo, as dimensões do novo','considerando ReC , a t':'considerando R e C_t, a'}.items():sub(20,a,b)
  sub(22,'T = 2T e que o módulo do calor B A','T_B = 2T_A e que o módulo do calor')
  sub(23,'v2 = γRT/M, em que M é a massa molar doRT/M, em que M é a massa molar do gás, R é a constante universal dos gases, γRT/M, em que M é a massa molar do é a razão C / C e T é a temperatura do gás, todos em unidades P V do SI.','v² = γRT/M, em que M é a massa molar do gás, R é a constante universal dos gases, γ é a razão C_P/C_V e T é a temperatura do gás, todos em unidades do SI.')
  for a,b in {'instante t , o gás está a uma temperatura T e forma-se 1 1':'instante t₁, o gás está a uma temperatura T₁ e forma-se','harmônico n . À medida que o gás troca calor com o 1':'harmônico n₁. À medida que o gás troca calor com o','instante posterior t uma outra onda 2,':'instante posterior t₂, uma outra onda','harmônico n é observada. 2':'harmônico n₂ é observada.','instantes t e t está 1 2':'instantes t₁ e t₂ está','que P e P são as 1 2':'que P₁ e P₂ são as','instantes t e t , respectivamente. 1 2':'instantes t₁ e t₂, respectivamente.','razão n /n . 2 1':'razão n₂/n₁.','entre os instantes t e 1 t :':'entre os instantes t₁ e t₂:'}.items():sub(23,a,b)
  text(25,'Duas ondas harmônicas transversais idênticas (mesma amplitude e mesma frequência) propagam-se num meio, em uma mesma direção e sentido. As perturbações y(x,t) provocadas pelas ondas no meio onde se propagam são representadas por funções do tipo y(x,t) = yₘₐₓ · sen(kx − ωt + ϕ), em que yₘₐₓ é a amplitude de deslocamento das partículas no meio, k é o número de onda, ω é a velocidade angular e ϕ é a constante de fase, todos em unidades do SI.\nSabe-se que no ponto x = 0, no instante t = 0, a perturbação devido à propagação da onda 1 (apenas) seria de 0,5yₘₐₓ, com partículas se deslocando no sentido positivo de y (v_y(x=0,t=0) > 0). No mesmo ponto e instante, a perturbação devido à onda 2 (apenas) seria de (√2/2)yₘₐₓ, com partículas também se deslocando no sentido positivo de y (v_y(x=0,t=0) > 0). Assinale a alternativa que corresponde ao módulo da amplitude de deslocamento das partículas do meio devido à superposição das ondas 1 e 2.\nDado: sen(a) + sen(b) = 2 sen((a+b)/2) cos((a−b)/2).')
  sub(26,'10-12','10⁻¹²');sub(26,'10-1','10⁻¹');sub(26,'10-3','10⁻³')
  for a,b in {'distância R de A':'distância R_A de','distância R , como mostra a figura abaixo.':'distância R_B, como mostra a figura abaixo.','O nível sonoro da B onda':'O nível sonoro da onda','R = 1,0 ∙R . B A':'R_B = 1,0 · R_A.','R = 5,0 ∙10⁻¹ R . B A':'R_B = 5,0 · 10⁻¹ R_A.','R = 2,5 ∙10⁻¹ R . B A':'R_B = 2,5 · 10⁻¹ R_A.','R = 1,0 ∙10⁻¹ R . B A':'R_B = 1,0 · 10⁻¹ R_A.','R = 1,0 ∙10⁻³ R . B A':'R_B = 1,0 · 10⁻³ R_A.','valor(es) de R , B':'valor(es) de R_B,','I = 10⁻¹² W/m² 0':'I₀ = 10⁻¹² W/m²'}.items():sub(26,a,b)
  sub(28,'período T que ele teria na 0','período T₀ que ele teria na');sub(28,'Ɵ « 1 rad. E Ɵ q','θ ≪ 1 rad.')
  sub(32,'temperatura θ - sua F','temperatura θ_F — sua');sub(32,'temperatura θ . Os 1','temperatura θ₁. Os');sub(32,'Figura A Figura B','')
  sub(29,'3,5×1011','3,5 × 10¹¹');sub(29,'7,0×106','7,0 × 10⁶')
  sub(35,'{0,d≤v t expressão T(d)= p , em que v é a T ,d>v t p 0 p','expressão T(d) = 0 se d ≤ v_p t; T(d) = T₀ se d > v_p t, em que v_p é a')
  sub(35,'-2 2.10 segundos','2 × 10⁻² segundos')
  sub(35,'tensão T é 0','tensão T₀ é')
  sub(36,'x = 0,5 m eq','x_eq = 0,5 m');sub(36,'x + A e x - A (onde A é a amplitude eq eq','x_eq + A e x_eq − A (onde A é a amplitude');sub(36,'Figura A Figura B','')
  sub(39,'oxigênio (O ) ou o gás hélio (He) – que sob certas 2','oxigênio (O₂) ou o gás hélio (He) — que sob certas')
 if day==2 and year==2026:
  text(20,'Uma escola está organizando um Conselho Escolar com os seguintes critérios: 3 professores, 2 estudantes e 1 responsável. Para tal, estão disponíveis: 6 professores (P₁ a P₆), 5 estudantes (E₁ a E₅) e 3 responsáveis (R₁ a R₃). Entretanto, existem duas restrições:\n– Se o professor P₁ for escolhido, o estudante E₁ não pode ser selecionado;\n– O responsável R₃ só pode participar se o professor P₆ também for escolhido.\nA quantidade de formas diferentes como esse conselho pode ser formado, respeitando as condições acima, é:')
  opt(20,4,'480')
  q(26)['text']=q(26)['text'].split('120 e')[0].strip()
  sub(4,'r: X= (l,2,-l)+t(2,-l,4), tER','r: X = (1,2,−1) + t(2,−1,4), t ∈ ℝ')
  sub(5,'5,6,7,9, 10, 1~ 12, 12, 14, 15','5, 6, 7, 9, 10, 10, 12, 12, 14, 15')
  sub(6,'chegaram à seguinte expressão:','chegaram à seguinte expressão: (2x − 3/x²)⁹.')
  text(17,'Uma escola com 120 alunos realizou uma pesquisa que informou sobre a prática de três esportes: Futebol, Basquete e Vôlei. Verificou-se que 65 alunos praticam Futebol, 50 praticam Basquete, 40 praticam Vôlei, 20 praticam Futebol e Basquete, 25 praticam Futebol e Vôlei, 15 praticam Basquete e Vôlei, 10 praticam os três esportes e 15 alunos não praticam nenhum esporte. Seja A a probabilidade de um aluno escolhido ao acaso praticar exatamente um dos esportes e B a probabilidade de um aluno escolhido ao acaso praticar pelo menos dois esportes, o resultado da expressão (A²/3) + 3B é aproximadamente:')
  # Formula text inside figures is supplied by the figure, not scrambled OCR labels.
  for n in (21,22,24,27,28,32,37,40):
   t=q(n)['text']
   t=re.sub(r'\bFigura [12]\b','',t)
   t=re.sub(r'\s+',' ',t).strip()
   q(n)['text']=t
  sub(24,'F=0,0lt2+0,2t','F = 0,01t² + 0,2t')
  sub(24,'0,4 x 10-3','0,4 × 10⁻³')
  sub(39,'vale 8','vale θ');sub(39,'Seja B wn ponto','Seja B um ponto')
  sub(40,'ângulo 0 com','ângulo θ com')
  text(28,'O ar contido no interior de um arranjo cilindro-pistão é considerado um gás ideal, e executa o ciclo descrito pelos processos reversíveis 1-2-3-4-5-1 em sistema fechado, conforme diagrama P × V (pressão × volume) mostrado abaixo.\nProcessos: 1-2 adiabático; 2-3 isovolumétrico; 3-4 isobárico; 4-5 adiabático; 5-1 isovolumétrico.\nSe m é a massa de ar contida no interior do cilindro e c_P e c_V são, respectivamente, os calores específicos a pressão e a volume constante durante todo o ciclo, analise as afirmativas abaixo.\nI. A eficiência termodinâmica (η) dessa máquina térmica é η = 1 − T_L/T_H, em que T_L é a temperatura mais baixa do ciclo e T_H é a temperatura mais elevada.\nII. O calor rejeitado pelo ar ocorre no processo 5-1, e o calor total recebido pelo sistema ocorre nos processos 2-3 e 3-4.\nIII. A variação de energia interna do ar no processo 3-4 é dada por mc_P(T₄ − T₃), em que T₄ é a temperatura no estado 4 e T₃ é a temperatura no estado 3.\nIV. O processo 4-5 é de expansão e o processo 1-2 é de compressão.\nAssinale a opção correta:')
  sub(37,'uma aluna da E~OMM utiliza uma chave de roda de massa desprez1ve1, composta por duas b ·1\' dr. arras c1 _m 1cas entrecruzadas, e uma corda ideal para cnar','Uma aluna da EFOMM utiliza uma chave de roda de massa desprezível, composta por duas barras cilíndricas entrecruzadas, e uma corda ideal para criar')
 if day==1 and year==2026:
  support1='Text I — Based on the text below, answer questions 1 and 2.\nMSC Antonia\nThe 304 meter long, 85760 dwt container ship MSC Antonia (IMO: 9398216) ran aground 1. ____ the Red Sea some 100 nautical miles 2. ____ Jeddah, Saudi Arabia. The boxship was headed 3. ____ Jeddah after making a stop 4. ____ Port Sudan when it ran aground. After the grounding, the vessel developed a small list 5. ____ port. The MSC Antonia was unable to free itself and requested assistance. Reports state several tugs were dispatched to help refloat the container ship.\nThe cause of the grounding is 6. ____ investigation. News reports suggest the MSC Antonia ran aground due to its GPS being jammed 7. ____ electronic interference in the area. The vessel owners have not disclosed or made comments about the incident. No details if any damage or pollution had been released from the incident.\n(Adapted from: https://Shipwrecklog.com/log)'
  q(1)['support']=support1;q(2)['support']=support1
  q(1)['options']=['1. on / 2. of / 3. to / 4. at / 5. to / 6. on / 7. with','1. in / 2. from / 3. for / 4. at / 5. to / 6. under / 7. by','1. in / 2. of / 3. to / 4. in / 5. at / 6. on / 7. with','1. on / 2. from / 3. for / 4. in / 5. at / 6. under / 7. by','1. in / 2. of / 3. for / 4. on / 5. to / 6. on / 7. with']
  q(6)['options']=['(I) and (V)','(II) and (III)','(II) and (IV)','(III) and (V)','(I) and (IV)']
  sub(6,'a melting of crews','a melting pot of crews')
  opt(4,2,'calm / glassy.')
  opt(12,2,'The theoretical underpinnings of research carried out by John Clauser, Alain Aspect and Anton Zeilinger were not established in the 21st century.')
  opt(14,2,'to express admiration and approval for something or someone.')
  sub(9,'Guard to a','Guard 1. ______ to a');sub(9,'fire 2. the','fire 2. ______, the');sub(9,'Liftboats 3. to remove','Liftboats 3. ______ to remove')
  text(16,'In “[…] people began to want more from their daily grinds”, what is the meaning of the expression in bold “daily grinds” in the previous passage taken from the text? Choose the correct option.')
  opt(16,2,'Day-to-day basic needs for food and shelter.')
  text(17,'What word could correctly replace “if” in “\"If people don’t have outside time to get those needs met elsewhere,\" says Bot, \"they need to get more out of work\"”, without changing the form and meaning of the sentence? Choose the correct option.')
  q(17)['options']=['Unless','Provided','Beyond','Whereas','Though']
  opt(19,4,'If you went to bed for an hour, you might feel better.')
  text(20,'Read the comic strip and mark the correct option.\nIn the comic strip above, the phrasal verb “run over” is equivalent in meaning to:')
  opt(20,0,'worn out.')
  q(22)['options']=[
   '“Fruta cítrica, suculenta e saborosa, ela começou sendo chupada às dúzias por este senhor, então um simples molecote de fazenda no interior da Califórnia.” (2º§)',
   '“[…] perfeição que, tornada realidade pela eficiência da indústria moderna, e possibilitada pelas virtudes alimentícias da própria fruta, levaram-no à prosperidade que ele, hoje, sem trocadilho, desfruta.” (4º§)',
   '“[…] quando lhe chamou a atenção a quantidade de casca de laranja que diariamente sua fábrica confiava à eficiência expedita dos lixeiros.” (7º§)',
   '“[…] (sabia, por experiência, que ao consumidor desagradavam as laranjas espremidas com casca) quando tal cisma se ligou à outra, relativa ao recipiente — e a ideia nasceu.” (7º§)',
   '“Deslumbrado com sua invenção, correu à repartição pública mais próxima e encaminhou um pedido de patente.” (9º§)']
  q(23)['options']=['“[…] apaixonou-se pela filha do dono da fazenda, meteu-se em peripécias amorosas […]” (2º§) — desilusões.','“[…] que já inspiraram dois filmes em Hollywood e que culminaram nas indefectíveis flores de laranjeiras […]” (2º§) — inofensivas.','“[…] caixinhas de papelão parafinado, sem tampa, mas tão-somente com um pequeno orifício obturado […]” (6º§) — recortado.','“[…] a quantidade de casca de laranja que diariamente sua fábrica confiava à eficiência expedita dos lixeiros.” (7º§) — frouxa.','“[…] inventando assim o melhor acondicionamento de seu produto que jamais tivera a ventura de imaginar.” (9º§) — sorte.']
  opt(24,3,'uma decisão irracional se sobrepõe a uma racional.')
  sub(25,'PQ.IS','pois')
  q(33)['options']=['“Pior foi a emenda que o soneto […]” (4º§).','“[…] e disposto a fazer chegar ao consumidor o suco da laranja com todo o cítrico frescor […]” (5º§).','“[…] para que o suco em conserva não adquirisse, com o correr do tempo, aquele sabor […]” (5º§).','“Experimentou então as caixinhas de papelão parafinado […]” (6º§).','“[…] destinada apenas a extrair o miolo da laranja através de um orifício, sem inutilizar-lhe a casca […]” (7º§).']
  opt(31,1,'Como o edital previu, a prova de português inclui sintaxe e interpretação.')
  opt(31,3,'Como vai você? Eu preciso saber da sua vida.')
  opt(37,2,'O sistema não só identifica erros, mas também sugere correções automaticamente.')
  opt(38,1,'o industrial americano conseguiu sucesso ao acondicionar o suco da laranja dentro de sua casca para vender no mercado.')
  q(39)['options']=['“Experimentou então as caixinhas de papelão parafinado, sem tampa, mas tão-somente com um pequeno orifício […]” (6º§) — substantivo, com um dígrafo.','“[…] verificou que a garrafa não era o recipiente ideal para o caldo assim obtido.” (4º§) — advérbio, com dois dígrafos.','“Fruta cítrica, suculenta e saborosa, ela começou sendo chupada […]” (2º§) — verbo, com dois dígrafos.','“[…] meteu-se em peripécias amorosas que já inspiraram dois filmes em Hollywood […]” (2º§) — pronome interrogativo, sem dígrafos.','“Para que a casca, assim transformada em recipiente, não murchasse […]” (8º§) — substantivo, com um dígrafo.']
  emphasis={21:'molecote',23:'peripécias; indefectíveis; obturado; expedita; ventura',25:'pois',26:'ia de encontro',29:'dizem',30:'cujo nome prefiro calar',31:'Como',33:'Pior; cítrico; correr; parafinado; miolo',34:'quando lhe chamou',36:'invencível',39:'papelão; assim; chupada; que; casca',40:'sem resultado'}
  for n,t in emphasis.items():q(n)['text']+=f'\nDestaque do original: {t}.'
  fixes={'Ied':'led','owrned':'owned','Galary':'Galaxy','Clear of':'clear of','theclean':'the clean','Imple':'people','expenences':'experiences','stuffisn\'tjust':"stuff isn’t just",'Thejourney':'The journey','Lcx)k':'Look','all ofphysics':'all of physics','in ajob':'in a job','begmning':'beginning','ftransactional':'“transactional','ex1Ected':'expected','esFEciaIIy':'especially','Iot':'lot','im1Y)rtant':'important','Fople':'people','valua by':'valued by','perip&ias':'peripécias','pr experiência':'por experiência','necessáno':'necessário','orificio':'orifício','Femando':'Fernando','pde':'pode','Imprópna':'imprópria','prtuguês':'português','rxlas':'pelas','(mrre':'ocorre','IMipécias':'peripécias','gue já':'que já'}
  for item in qs:
   for field in ['text','support']:
    if field in item:
     for a,b in fixes.items():item[field]=item[field].replace(a,b)
     for a,b in {"moon is not there when you are not at it":"moon is not there when you are not looking at it",'treated as philosophy at best and at worst':'treated as philosophy at best and pseudoscience at worst','identity has closely tied':'identity has become closely tied','People also most of their time at work':'People also spend most of their time at work','The majority of younger in particular, rqx)t-t':'The majority of younger people, in particular, report','e o dinheiro comprou':'e com o dinheiro comprou','valua by':'valued by','or something or':'or something or'}.items():item[field]=item[field].replace(a,b)
     item[field]=re.sub(r'\((\d)[0O][9S]\)?',lambda m:'('+m[1]+'º§)',item[field])
   item['options']=[opt.replace('What ','what ').replace('pssibly','possibly').replace('ratherstudy','rather study') for opt in item['options']]
