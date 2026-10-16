"""Enunciados oficiais transcritos; referências editoriais de treino, não espelho da banca."""
QUESTIONS = []

def field(id, label, reference, accepted, **extra):
    return dict(id=id, label=label, reference=reference, accepted=accepted, **extra)

def number(id, label, reference, value, units=None, tolerance=0.00001, aliases=None):
    return field(id, label, reference, aliases or [str(value)], numeric=dict(value=value, tolerance=tolerance, units=units or ['']))

def math(id, label, reference, variants, **extra):
    return field(id, label, reference, variants, math=True, **extra)

def words(id, label, reference, variants, groups, **extra):
    return field(id, label, reference, variants, keywordRule=dict(groups=groups, **extra))

def q(subject, n, title, text, fields, **extra):
    kind={'Matemática':'matematica','Química':'quimica','Física':'fisica'}[subject]
    page=n+(2 if kind=='quimica' else 1)
    QUESTIONS.append(dict(id=f'ita-2026-2f-{kind}-{n}', subject=subject, originalNumber=n,
        number=len(QUESTIONS)+1, title=title, text=text, fields=fields, kind='written',
        examSource=f'/provas/ita/2026/segunda-fase/{kind}.pdf#page={page}',
        source=f'https://etaparesolve.etapa.com.br/ita/2026/{dict(matematica=708,quimica=709,fisica=710)[kind]}/12/0', **extra))

q('Matemática',1,'Pontos inteiros no octaedro',
  'Considere um octaedro regular, centrado na origem, com três vértices em (5, 0, 0), (0, 5, 0) e (0, 0, 5). Quantos pontos, no interior e na superfície desse sólido, possuem todas as coordenadas inteiras?',
  [number('pontos','Quantidade de pontos','231 pontos: contar os ternos inteiros com |x| + |y| + |z| ≤ 5.',231,['','pontos'])])
q('Matemática',2,'Potência de uma matriz',
  'Considere A = [1 1 2; 0 1 1; 0 0 1], com ponto e vírgula separando linhas. Determine o menor n ∈ ℕ tal que a entrada na primeira linha e na terceira coluna de Aⁿ seja maior que 119.',
  [number('n','Menor n','n = 15, pois a entrada é n(n + 3)/2; para n = 14 ela vale 119.',15)])
q('Matemática',3,'Área do paralelogramo',
  'As diagonais do paralelogramo ABCD estão contidas nas retas r: 2y − x = 2 e s: x + 2y = 8. As retas r e s se encontram no ponto X. Sabendo que C = (8, 5) e que a equação da circunferência inscrita no triângulo ABX é (x − 1/2)² + (y − 5/2)² = 5/4, determine a área de ABCD.',
  [number('area','Área de ABCD','30 unidades de área. A = (−2, 0), X = (3, 5/2) e B = (0, 4).',30,['','u²','unidades de área'])])
q('Matemática',4,'Anéis concêntricos',
  'Um alvo é pintado em uma parede, composto de um círculo central e uma sequência de anéis concêntricos de cores alternadas entre vermelho e branco. O círculo central, pintado de vermelho, tem raio α unidades. Cada círculo subsequente tem raio uma unidade maior que o anterior: α + 1, depois α + 2 e assim por diante. Determine a área total em vermelho em função de α, sabendo que o alvo tem 33 círculos.',
  [math('area','Área vermelha em função de α','π(α² + 32α + 528). Somam-se o disco central e os 16 anéis vermelhos.',
        ['π(α²+32α+528)','pi*(alpha^2+32*alpha+528)','πα²+32πα+528π','π(528+32α+α²)'])])
q('Matemática',5,'Esferas e tetraedro regular',
  'Quatro esferas idênticas, dispostas tangentes duas a duas, estão simultaneamente inscritas em uma única esfera maior, de modo que os centros das esferas menores formam um tetraedro regular. Calcule a razão entre o volume da esfera maior e a soma dos volumes das quatro esferas menores.',
  [math('razao','Razão dos volumes','(22 + 9√6)/16 = (2 + √6)³/32.',
        ['(22+9√6)/16','(9sqrt(6)+22)/16','(2+√6)^3/32','(1+√6/2)^3/4'])])
q('Matemática',6,'Matrizes e condição das colunas',
  '''Dados os números reais α₁, α₂, …, αₙ₋₁, defina as matrizes A = (aᵢⱼ) e B = (bᵢⱼ), ambas de ordem n × n, por
aᵢⱼ = 0 se j ≥ i; aᵢⱼ = αⱼ^(i−j−1) se j < i.
bᵢⱼ = 1 se j ≥ i; bᵢⱼ = 0 se j < i.
Suponha que a soma dos elementos da coluna j da matriz AB seja igual a n − j.
a) Determine o determinante de AB.
b) Determine o traço de AB em função de n.
c) Supondo que n = 5, determine todos os possíveis valores de α₁, α₂, α₃, α₄ ∈ ℝ.''',
  [field('analise','Resolução e análise da condição do enunciado',
    'A condição impressa é incompatível: as duas últimas colunas de AB são iguais, mas suas somas deveriam ser 1 e 0. Não há matrizes que satisfaçam todas as hipóteses para n ≥ 2. Estruturalmente, det(AB) = 0, pois A é triangular com diagonal nula. Os demais pedidos sob a hipótese conjunta precisam de revisão humana. Esta observação editorial não afirma anulação oficial.',[],manual=True)],
  reviewNote='O enunciado público contém uma condição incompatível. Este item fica fora da pontuação automática e tem referência para conferência manual.')
q('Matemática',7,'Raízes de um polinômio',
  'Seja p(x) um polinômio de grau quatro com coeficientes reais. A soma das raízes de p(x) é 3/2, e o seu produto é −5/2. Determine todas as raízes de p(x) em ℂ, sabendo que o resto da divisão de p(x) por x³ − x + 4 é igual a 9x² − 4x + 7.',
  [math('raizes','As quatro raízes, em qualquer ordem','−1; 1/2; 1 + 2i; 1 − 2i.',
        ['-1;1/2;1+2i;1-2i'], answerList=['-1','1/2','1+2i','1-2i'])])
q('Matemática',8,'Sequências crescentes',
  'Quantas sequências estritamente crescentes de três números naturais é possível construir de forma que a soma dos três números é igual a 100?',
  [number('quantidade','Número de sequências','784 sequências, considerando ℕ = {1, 2, 3, …}, como nas convenções do caderno.',784,['','sequências'])])
q('Matemática',9,'Tangentes à hipérbole',
  '''Seja H a hipérbole com focos A = (−6, 0), B = (6, 0) e excentricidade 3.
a) Determine as equações de todas as retas que passam por C = (0, −8) e são tangentes a H.
b) Para cada reta do item anterior, determine os pontos de tangência.''',
  [math('retas','a) Equações das duas retas, separadas por ponto e vírgula','y = 2√6 x − 8 e y = −2√6 x − 8.',
        ['y=2√6x-8;y=-2√6x-8'],answerList=['y=2√6x-8','y=-2√6x-8']),
   math('pontos','b) Pontos de tangência, separados por ponto e vírgula','(√6, 4) e (−√6, 4).',
        ['(√6,4);(-√6,4)'],answerList=['(√6,4)','(-√6,4)'])])
q('Matemática',10,'Interseção de circunferências',
  '''Os pontos A e B definem um segmento com m(AB) = 6(1 + √3) cm. Os pontos C e D estão no segmento AB. A circunferência de centro em C e passando por A e a circunferência de centro em D e passando por B se encontram nos pontos P e Q, que satisfazem m(AP) = m(PQ), m(BP) = m(AP)√(2 + √3).
a) Determine o raio de cada circunferência.
b) Determine a área da região comum ao interior das duas circunferências.''',
  [math('raioC','a) Raio da circunferência de centro C (cm)','2√3 cm.',['2√3','sqrt(12)','2sqrt(3)']),
   number('raioD','a) Raio da circunferência de centro D (cm)','6 cm.',6,['','cm']),
   math('area','b) Área comum (cm²)','10π − 12√3 cm².',['10π-12√3','2(5π-6√3)','10*pi-12*sqrt(3)'])])

q('Química',1,'Neutralização e hidrólise',
  '''Considere as seguintes soluções aquosas, a 25 °C e 1 atm:
Solução 1: formada por um ácido monoprótico fraco (Kₐ = 10⁻¹²).
Solução 2: formada pela transferência de 4 mL da Solução 1 para um balão volumétrico de 20 mL, que em seguida foi completado com água e homogeneizado.
Solução 3: formada por uma base monoprótica forte.
Em um procedimento experimental, 2 mL da Solução 2 reagiram com 38 mL da Solução 3, atingindo-se o ponto de equivalência. Sabendo-se que o pH da mistura final é igual a 12, determine o valor numérico da concentração
a) do ácido na Solução 2;
b) do ácido na Solução 1;
c) da base na Solução 3.''',
  [number('a','a) Concentração na solução 2 (mol/L)','0,4 mol/L.',.4,['','mol/L','mol·L⁻¹']),
   number('b','b) Concentração na solução 1 (mol/L)','2 mol/L.',2,['','mol/L','mol·L⁻¹']),
   number('c','c) Concentração na solução 3 (mol/L)','0,4/19 ≈ 0,02105 mol/L.',.4/19,['','mol/L','mol·L⁻¹'],tolerance=.0001)])
q('Química',2,'Cinética do peróxido de hidrogênio',
  '''A decomposição do peróxido de hidrogênio (H₂O₂) ocorre segundo esta equação: 2H₂O₂(aq) → 2H₂O(l) + O₂(g). Em um experimento, 100 mL de uma solução 0,5 mol·L⁻¹ de H₂O₂ decompõem-se na presença de um catalisador. Sabendo que a constante de velocidade é 0,0693 min⁻¹, calcule os seguintes valores numéricos:
a) Volume de O₂(g) produzido a 25 °C e 1 atm, ao término da reação.
b) Concentração de H₂O₂ restante em 5 minutos.''',
  [number('a','a) Volume de oxigênio (L)','Aproximadamente 0,61 L.',.612,['','L'],tolerance=.004),
   number('b','b) Concentração em 5 minutos (mol/L)','0,3535 ≈ 0,354 mol/L.',.3535,['','mol/L','mol·L⁻¹'],tolerance=.001)])
q('Química',3,'Início da precipitação',
  '''Uma solução aquosa a 100 °C recebe energia na forma de calor a partir de uma fonte com potência igual a 540 cal·s⁻¹. A solução possui um volume inicial de 1 L e contém 2·10⁻³ mol de uma substância A⁺ e 1·10⁻³ mol de uma substância B⁻. Essas substâncias podem formar um sólido de acordo com a reação A⁺(aq) + B⁻(aq) ⇌ AB(s).
Considerações: i) as substâncias A e B têm volume desprezível na solução; ii) a ebulição ocorre nas condições padrão; iii) efeitos coligativos são desprezíveis; e iv) toda a energia é utilizada para a ebulição da água.
Forneça os seguintes valores numéricos:
a) tempo esperado, em segundos, para que o sólido comece a ser formado na solução;
b) concentrações de A⁺ e B⁻ quando o volume da solução se reduz à metade do valor correspondente ao do início da precipitação.
Dados: Kps(AB) = 1·10⁻⁵; ΔH°(ebulição)(H₂O) = 540 cal·g⁻¹; massa específica da água ρ = 1 g·mL⁻¹.''',
  [number('a','a) Tempo (s)','Aproximadamente 552–553 s; volume inicial de precipitação 1/√5 L.',552.8,['','s','segundos'],tolerance=1.2),
   number('bA','b) [A⁺] (mol/L)','Aproximadamente 6,09·10⁻³ mol/L.',.00609,['','mol/L','mol·L⁻¹'],tolerance=.00004),
   number('bB','b) [B⁻] (mol/L)','Aproximadamente 1,64·10⁻³ mol/L (1,63·10⁻³ com as aproximações fornecidas).',.001635,['','mol/L','mol·L⁻¹'],tolerance=.00003)])
q('Química',4,'Composição e termogravimetria',
  '''Considere o sólido BGN com composição em porcentagem molar de 60SiO₂–36CaO–4Nb₂O₅. A fonte de nióbio empregada no preparo do BGN é o oxalato amoniacal de nióbio hidratado (NH₄[NbO(C₂O₄)₂]·nH₂O). Para determinar o teor de nióbio presente no oxalato amoniacal de nióbio hidratado, foi empregada a termogravimetria em atmosfera oxidante, a qual apresentou uma massa residual de 28,5% após aquecimento a 1000 °C. Esse resíduo foi caracterizado como pentóxido de nióbio.
a) Apresente o valor numérico da massa necessária do oxalato amoniacal de nióbio hidratado para o preparo de 10 gramas de BGN.
b) Determine o valor do “n” no NH₄[NbO(C₂O₄)₂]·nH₂O.''',
  [number('a','a) Massa do composto hidratado (g)','Aproximadamente 5,58 g.',5.58,['','g','gramas'],tolerance=.025),
   number('b','b) Número de moléculas de hidratação n','n ≈ 9.',9)])
q('Química',5,'Estruturas e propriedades moleculares',
  '''Considere os elementos com as seguintes configurações eletrônicas:
A = 1s¹; Z = [He] 2s² 2p¹; X = [He] 2s² 2p²; G = [He] 2s² 2p³;
R = [He] 2s² 2p⁴; Y = [He] 2s² 2p⁵; Q = [Ne] 3s² 3p⁴.
Identifique os átomos e faça o que se pede:
a) Quantos arranjos atômicos são possíveis formar para o ânion (−1), com a composição de 1X, 1G e 1Q?
b) Indique a fórmula molecular de uma molécula com geometria trigonal planar e uma pirâmide trigonal com os átomos descritos acima.
c) O composto formado por 6X, 5A e 1Y reage com HNO₃ (concentrado), H₂SO₄ a 25 °C. Considerando essa reação, desenhe a(s) estrutura(s) molecular(es) do(s) produto(s) principal(is) formado(s).
d) Dadas as moléculas compostas por (i) 2A e 1R; (ii) 2A e 1Q e (iii) 1X, 4A e 1R, coloque-as em ordem crescente de ponto de ebulição.''',
  [number('a','a) Número de arranjos','3 arranjos de conectividade: SCN, SNC e CSN (sem identificar arranjo com estabilidade).',3,['','arranjos']),
   field('plana','b) Exemplo trigonal planar','BF₃; BH₃ monomérico também tem geometria trigonal planar.',['BF3','BF₃','BH3','BH₃','trifluoreto de boro','borano']),
   field('piramide','b) Exemplo pirâmide trigonal','NH₃ ou NF₃, formadas por elementos fornecidos.',['NH3','NH₃','NF3','NF₃','amônia','trifluoreto de nitrogênio']),
   words('orto','c) Primeiro produto (nome ou fórmula estrutural condensada)','1-fluoro-2-nitrobenzeno, ou orto-nitrofluorobenzeno.',
     ['1-fluoro-2-nitrobenzeno','orto-nitrofluorobenzeno','o-nitrofluorobenzeno','2-nitrofluorobenzeno','o-FC6H4NO2'],[['orto|2|o'],['fluor\\w*|fc6h4no2'],['nitro\\w*|no2']]),
   words('para','c) Segundo produto (nome ou fórmula estrutural condensada)','1-fluoro-4-nitrobenzeno, ou para-nitrofluorobenzeno.',
     ['1-fluoro-4-nitrobenzeno','para-nitrofluorobenzeno','p-nitrofluorobenzeno','4-nitrofluorobenzeno','p-FC6H4NO2'],[['para|4|p'],['fluor\\w*|fc6h4no2'],['nitro\\w*|no2']]),
   math('d','d) Ordem crescente de ebulição','H₂S < CH₃OH < H₂O.',['H2S<CH3OH<H2O','ii<iii<i','(ii)<(iii)<(i)','sulfeto de hidrogênio < metanol < água'])])
q('Química',6,'Equilíbrio ácido-base do propino',
  '''Considere as reações e os dados abaixo:
Reação 1. CH₃C≡CH + H₂O ⇌ CH₃C≡C⁻ + H₃O⁺
Reação 2. CH₃C≡CH + NH₃ ⇌ CH₃C≡C⁻ + NH₄⁺
Reação 3. CH₃C≡CH + NaNH₂ ⇌ CH₃C≡CNa + NH₃
Dados: pKₐ[propino] = 25,00; pKᵦ[H₂O] = 15,70; pKᵦ[amônia] = 4,75; pKᵦ[NH₂⁻] = −22,00.
Determine os valores numéricos de pKₐ e pKᵦ para as demais espécies e utilize esses valores para indicar se o equilíbrio de cada uma das reações abaixo favorece ou não a formação dos produtos.
a) Reação 1.
b) Reação 2.
c) Reação 3.''',
  [number('pkb','pKᵦ do ânion propineto','−11, usando pKₐ + pKᵦ = 14.',-11),
   number('pkaH','pKₐ de H₃O⁺, utilizando o dado do enunciado','−1,70. O dado pKᵦ[H₂O] = 15,70 é controverso; o valor decorre formalmente do dado fornecido.',-1.7),
   number('pkaNH4','pKₐ de NH₄⁺','9,25.',9.25),number('pkaNH3','pKₐ de NH₃','36.',36),
   field('a','a) Lado favorecido','Reagentes; não favorece produtos.',['reagentes','favorece os reagentes','não favorece os produtos','não','esquerda']),
   field('b','b) Lado favorecido','Reagentes; não favorece produtos.',['reagentes','favorece os reagentes','não favorece os produtos','não','esquerda']),
   field('c','c) Lado favorecido','Produtos.',['produtos','favorece os produtos','sim','direita'])])
q('Química',7,'Produção fotoeletroquímica de hidrogênio',
  '''Uma célula fotoeletroquímica utiliza um semicondutor sensível à luz como eletrodo fotoativo, capaz de promover a decomposição da água pela energia luminosa, gerando hidrogênio (H₂) no cátodo e oxigênio (O₂) no ânodo:
2H₂O(l) → 2H₂(g) + O₂(g), ΔH° = +572 kJ·mol⁻¹.
O semicondutor absorve luz com comprimento de onda máximo de 450 nm. A energia dessa luz é utilizada para excitar elétrons e iniciar a reação de oxirredução da água. Suponha que cada fóton absorvido gere um elétron.
a) Escreva as semirreações que ocorrem no cátodo e no ânodo durante a decomposição da água.
b) Sabendo que o semicondutor absorve luz com comprimento de onda igual a 450 nm, determine o valor numérico da energia fornecida pela luz no processo fotoeletroquímico para gerar 1 mol de H₂ pela decomposição da água.
c) Suponha que a célula receba uma potência luminosa de 10 W·m⁻² durante 1 hora, com fótons de 450 nm incidindo em uma área de 0,2 m². Determine o valor numérico da quantidade máxima de H₂, em mols, que poderia ser gerada nesse tempo, assumindo eficiência quântica de 100%.
d) Sabendo que o tanque de um carro movido a hidrogênio armazena 5,65 kg de H₂ comprimido a 700 bar, determine o valor numérico da energia mínima necessária para gerar essa quantidade de gás pela fotodecomposição da água, utilizando o semicondutor. Despreze os efeitos da alta pressão.
e) Determine o valor numérico do comprimento de onda máximo, em nm, que um semicondutor deveria absorver para que, de forma hipotética, a energia da luz incidente seja suficiente para gerar 5,65 kg de H₂, igualando a energia liberada na combustão dessa mesma quantidade de gás. Considere que não há perdas energéticas no processo e que existe uma proporção 1:1 entre elétrons e fótons.''',
  [math('catodo','a) Semirreação catódica','2H₂O + 2e⁻ → H₂ + 2OH⁻, ou 2H⁺ + 2e⁻ → H₂ em meio ácido.',
     ['2H2O+2e-→H2+2OH-','2H++2e-→H2','4H++4e-→2H2']),
   math('anodo','a) Semirreação anódica','2H₂O → 4H⁺ + O₂ + 4e⁻ (ou 4OH⁻ → O₂ + 2H₂O + 4e⁻).',
     ['2H2O→4H++O2+4e-','2H2O→O2+4H++4e-','4OH-→O2+2H2O+4e-']),
   number('b','b) Energia para 1 mol de H₂ (kJ)','Aproximadamente 532 kJ por mol de H₂.',532,['','kJ','kJ/mol','kJ·mol⁻¹'],tolerance=2),
   number('c','c) Quantidade de H₂ (mol)','Aproximadamente 0,0135 mol.',.0135,['','mol','mols'],tolerance=.0001),
   number('d','d) Energia (GJ)','Aproximadamente 1,49–1,50 GJ, conforme arredondamento da massa molar.',1.495,['','GJ'],tolerance=.015),
   number('e','e) Comprimento de onda máximo (nm)','Aproximadamente 837 nm.',837,['','nm'],tolerance=2)])
q('Química',8,'Motor-foguete e refrigeração',
  '''Considere um motor-foguete hipotético que utiliza metano criogênico e oxigênio gasoso, funcionando em regime permanente. Nesse motor, uma pequena porcentagem do combustível é injetada (vaporizada) com o oxidante em uma pré-câmara de combustão na qual os gases de combustão (mistura rica em oxigênio) acionam uma turbobomba que pressuriza o combustível a ser queimado na câmara principal, junto com os gases de combustão da pré-câmara.
São fornecidos os seguintes requisitos para esse sistema.
I. O calor gerado na câmara de combustão deve ser de 12 MJ. A combustão é completa e gera apenas produtos gasosos.
II. A tubeira (região de exaustão dos gases) absorve 0,25% do calor gerado na câmara de combustão. Esse calor deve ser trocado com CH₄(l), que serve também como fluido de refrigeração, sendo que esse material pode ser aquecido até uma temperatura de 188 K antes de ser injetado, na forma gasosa, na câmara de combustão. Desconsidere o custo de energia na transição de fase do metano, que pode ser realizada por meio da mudança de pressão durante a injeção na câmara principal.
III. A turbobomba opera com uma eficiência de 30%, ou seja, do calor gerado na pré-câmara de combustão, 30% se tornam energia útil para a pressurização do metano. Também considere que, para cada grama de metano a ser pressurizado, a turbobomba precisa gerar 40 J de energia.
São fornecidas as entalpias de formação em kJ·mol⁻¹: CH₄(g) = −75, O₂(g) = 0, CO₂(g) = −393 e H₂O(l) = −286, além da entalpia de vaporização da água = 45 kJ·mol⁻¹. Também são dados o calor específico e a temperatura inicial do metano: 5/3 J·g⁻¹·K⁻¹ e 98 K, respectivamente. Considere que os dados termodinâmicos independem da temperatura e pressão.
a) Escreva a equação química balanceada da reação de combustão do metano e calcule a entalpia da combustão, conforme o requisito I.
b) Calcule as massas necessárias, em g, de combustível e oxidante para atender ao requisito I, considerando a reação balanceada do item “a”.
c) Calcule a massa de CH₄(g), em g, que deve ser injetada na pré-câmara de combustão.
d) Calcule a massa mínima de CH₄(l), em g, necessária para resfriar a tubeira, conforme II.''',
  [math('reacao','a) Reação balanceada, com produtos gasosos','CH₄(g) + 2O₂(g) → CO₂(g) + 2H₂O(g).',['CH4(g)+2O2(g)→CO2(g)+2H2O(g)','CH4+2O2→CO2+2H2O']),
   number('entalpia','a) Entalpia (kJ/mol)','−800 kJ/mol.',-800,['','kJ/mol','kJ·mol⁻¹']),
   number('combustivel','b) Massa de CH₄ (g)','Aproximadamente 240 g (240,6 g com massas molares mais precisas).',240.3,['','g'],tolerance=.8),
   number('oxidante','b) Massa de O₂ (g)','960 g.',960,['','g']),
   number('c','c) Metano na pré-câmara (g)','Aproximadamente 0,64 g.',.64,['','g'],tolerance=.005),
   number('d','d) Metano para resfriamento (g)','200 g.',200,['','g'])])
q('Química',9,'Migração iônica e eletrólise',
  '''O seguinte experimento foi realizado para analisar alguns conceitos de eletrólise: uma solução aquosa de sulfato de cobre (azul) e uma solução aquosa de dicromato de potássio (alaranjada) foram misturadas em concentrações equimolares, resultando em uma solução de coloração marrom. Essa mistura foi colocada em uma célula eletrolítica em forma de U que foi, então, cuidadosamente preenchida de ambos os lados com uma solução de ácido sulfúrico diluído (incolor). Duas placas de platina (Pt₁ e Pt₂) foram imersas na solução, uma em cada braço do tubo em U, e conectadas aos polos (P₁ e P₂) de uma fonte externa, conforme mostra o esquema da figura (A). A figura (B) indica as frações de coloração da solução na célula, após um certo período de eletrólise da solução.
a) Liste todas as espécies iônicas presentes no meio.
b) Explique de forma sucinta por que surgem as camadas de solução de cor azul e alaranjada, observadas na figura (B), após a eletrólise.
c) Indique qual placa de platina (Pt₁ ou Pt₂) atua como ânodo e como cátodo e escreva as respectivas semirreações que ocorrem preferencialmente nesses eletrodos.
d) Indique qual dos polos da fonte (P₁ ou P₂) é positivo, qual é negativo e qual a direção da corrente elétrica.''',
  [field('ions','a) Lista de íons, incluindo espécies minoritárias','Principais: Cu²⁺, SO₄²⁻, K⁺, Cr₂O₇²⁻ e H⁺. Minoritários: OH⁻, HSO₄⁻ e CrO₄²⁻, pelos equilíbrios da solução. Conferir a lista e os equilíbrios manualmente.',[],manual=True),
   words('migracao','b) Explicação da separação de cores','Cu²⁺ (azul) migra para o cátodo negativo; Cr₂O₇²⁻ (alaranjado) migra para o ânodo positivo por ação do campo elétrico.',
     ['Os cátions de cobre azuis migram para o cátodo negativo e os ânions dicromato alaranjados para o ânodo positivo.'],
     [['cu2|cobre|cation\\w*'],['catod\\w*|negativ\\w*'],['dicromato|cr2o7|anion\\w*'],['anod\\w*|positiv\\w*'],['migr\\w*|atra\\w*|desloc\\w*|campo eletrico']],
     reject=['cobre.{0,25}anodo','dicromato.{0,25}catodo'],
     relations=['(?:cobre|cu2|cation\\w*).{0,70}(?:migr\\w*|atra\\w*|desloc\\w*).{0,60}(?:catod\\w*|negativ\\w*)',
                '(?:dicromato|cr2o7|anion\\w*).{0,80}(?:anod\\w*|positiv\\w*)']),
   field('catodo','c) Placa catódica','Pt₁ é o cátodo.',['Pt1','Pt₁','placa 1','platina 1']),
   field('anodo','c) Placa anódica','Pt₂ é o ânodo.',['Pt2','Pt₂','placa 2','platina 2']),
   math('red','c) Semirreação no cátodo','2H⁺ + 2e⁻ → H₂; os eletrodos estão inicialmente na solução ácida incolor.',['2H++2e-→H2']),
   math('ox','c) Semirreação no ânodo','2H₂O → 4H⁺ + O₂ + 4e⁻.',['2H2O→4H++O2+4e-','2H2O→O2+4H++4e-']),
   field('positivo','d) Polo positivo','P₂.',['P2','P₂','polo 2']),field('negativo','d) Polo negativo','P₁.',['P1','P₁','polo 1']),
   field('corrente','d) Direção da corrente e trecho do circuito considerado','Na solução, corrente convencional de P₂/ânodo para P₁/cátodo; pela fonte, de P₁ para P₂. A direção depende do trecho indicado. Conferência manual evita confundir corrente com fluxo de elétrons.',[],manual=True)])
q('Química',10,'Decaimentos nucleares',
  '''Um elemento J possui massa atômica igual a 238 e número atômico 92. J sofre decaimentos de partículas alfa e forma o elemento A com número de massa X e número de prótons Z. Considerações: i) o elemento A é isóbaro de E; ii) E é isótono de G; iii) G pode ser formado pelo decaimento de uma partícula beta (e⁻) do elemento Q, que possui massa 232 e número atômico 89; e iv) o elemento E apresenta 84 prótons.
Com base nessas informações, determine:
a) X.
b) Z.
c) número de partículas alfa emitidas por J.''',
  [number('X','a) Número de massa X','226.',226),number('Z','b) Número de prótons Z','86.',86),number('alfa','c) Partículas alfa','3 partículas alfa.',3,['','partículas alfa','alfa'])])

q('Física',1,'Aderência do trem em curvas',
  '''Um trem de massa M desloca-se a uma velocidade constante v sobre trilhos horizontais. Para garantir a aderência em curvas, as rodas do trem possuem formato de tronco de cone regular com ângulo θ com a horizontal, conforme se observa na figura. Considerando que o raio de curvatura é muito maior que as dimensões do trem e que o eixo das rodas permanece na horizontal, calcule o raio de curvatura mínimo para que nenhuma das rodas perca o contato com o trilho nas seguintes situações:
a) quando o coeficiente de atrito estático entre as rodas e o trilho é μ;
b) quando o atrito é desprezível;
c) quando o coeficiente de atrito estático é μ e as rodas são cilíndricas.''',
  [math('a','a) Raio mínimo','(v²/g)(cos θ − μ sen θ)/(sen θ + μ cos θ), no regime em que a expressão tem sentido físico.',
    ['(v²/g)(cosθ-μsenθ)/(senθ+μcosθ)','v²(cosθ-μsinθ)/(g(sinθ+μcosθ))','v²/(g(tanθ+μ)/(1-μtanθ))']),
   math('b','b) Raio sem atrito','v²/(g tan θ).',['v²/(gtanθ)','v^2/(g*tan(theta))','v²cosθ/(gsenθ)']),
   math('c','c) Raio com rodas cilíndricas','v²/(μg).',['v²/(μg)','v^2/(mu*g)','v²/(gμ)'])])
q('Física',2,'Barra em plano inclinado',
  '''Uma barra rígida, homogênea e uniforme, de massa M e comprimento L, possui dois apoios fixos, A e B, que estão em contato com um plano inclinado que forma um ângulo θ com a horizontal. Os pontos de contato com o plano inclinado estão localizados a uma distância d de cada extremidade da barra, conforme ilustrado na figura. Um objeto de massa m está preso à barra a uma distância a da extremidade inferior. Para manter o equilíbrio, um contrapeso de massa m_c é acoplado a uma distância b da extremidade superior da barra. Admita que os apoios sofrem forças de atrito estático.
Considerando que a barra permanece em repouso, faça o que se pede nos itens a seguir, expressando as respostas em termos dos parâmetros dados (M, m, m_c, L, d, a, b, g, θ).
a) Determine o valor das forças normais exercidas sobre os apoios A e B.
b) Calcule a força de atrito em cada apoio, que impeça o deslizamento da barra ao longo do plano.''',
  [math('normalA','a) Normal no apoio A','N_A = g cos θ [M/2 + (m(L−a−d) + m_c(b−d))/(L−2d)].',
    ['gcosθ(M/2+(m(L-a-d)+m_c(b-d))/(L-2d))','g*cos(theta)*(M/2+(m*(L-a-d)+m_c*(b-d))/(L-2*d))']),
   math('normalB','a) Normal no apoio B','N_B = g cos θ [M/2 + (m(a−d) + m_c(L−b−d))/(L−2d)].',
    ['gcosθ(M/2+(m(a-d)+m_c(L-b-d))/(L-2d))','g*cos(theta)*(M/2+(m*(a-d)+m_c*(L-b-d))/(L-2*d))']),
   field('atrito','b) Atritos e hipóteses utilizadas','O equilíbrio exige f_A + f_B = (M + m + m_c)g sen θ. A distribuição individual não é determinada unicamente sem outra condição. Admitindo forças de contato com mesma inclinação, obtém-se f_A = N_A tan θ e f_B = N_B tan θ. Explicite essa hipótese na resolução.',[],manual=True)],
   reviewNote='A distribuição individual dos atritos depende de hipótese adicional; esse pedido é conferido manualmente.')
q('Física',3,'Reação radial no pivô',
  '''Uma haste fina e homogênea de comprimento total L e massa M está presa a um pivô fixo, localizado a uma distância a de uma das extremidades, conforme a figura. A haste pode girar livremente em um plano vertical sob a ação da gravidade. Em determinado instante, ela gira com velocidade angular ω em torno do pivô, formando um ângulo θ com a vertical.
Dadas as considerações, calcule:
a) a componente radial da força de reação exercida pelo pivô sobre a haste nesse instante, em função de M, L, a, θ, ω e g;
b) o ângulo θ para que a componente radial da força de reação se anule, em função de M, L, a, ω e g.''',
  [math('a','a) Componente radial (sentido para o pivô positivo)','F_r = Mg cos θ + Mω²(L/2 − a).',
    ['Mgcosθ+Mω²(L/2-a)','M(gcosθ+ω²(L/2-a))','M*g*cos(theta)+M*omega^2*(L/2-a)']),
   math('b','b) Ângulo, no intervalo [0, π]','θ = arccos[−ω²(L/2 − a)/g], quando o argumento está em [−1, 1].',
    ['arccos(-ω²(L/2-a)/g)','acos(-omega^2*(L/2-a)/g)','π-arccos(ω²(L/2-a)/g)'])])
q('Física',4,'Fragmentação e energia gravitacional',
  '''Considere um objeto de massa m que descreve uma trajetória elíptica sob a influência de uma estrela de massa M (M ≫ m). Devido a instabilidades internas, ele se separa em duas partes de massas m₁ e m₂, com m₁ = 4m₂. Em um determinado instante, as posições das massas m₁ e m₂ são, respectivamente, dadas por P₁ = (3a/4, b/4) e P₂ = (a, y₂), em que a é o semieixo maior, b é o semieixo menor e os focos da elipse descrita originalmente por m estão no eixo x.
Considerando que a origem do sistema de coordenadas coincide com o centro da elipse, determine:
a) y₂;
b) a menor energia potencial gravitacional possível do sistema nesse instante.''',
  [math('a','a) Dois valores de y₂, separados por ponto e vírgula','y₂ = 2b ou y₂ = −4b, na aproximação de centro de massa na órbita original.',
    ['2b;-4b'],answerList=['2b','-4b']),
   field('b','b) Energia mínima e aproximações usadas','Defina c = √(a²−b²), r₁ = √((3a/4−c)²+(b/4)²) e r₂ = √((a−c)²+4b²). Escolhendo y₂ = 2b e a estrela no foco (c,0), E ≈ −(GMm/5)(4/r₁+1/r₂), desprezando a interação entre fragmentos de ordem m². A aproximação orbital e a expressão equivalente devem ser conferidas manualmente.',[],manual=True)])
q('Física',5,'Máquina térmica com viga de cobre',
  '''Uma viga fina, cilíndrica, incompressível, maciça de cobre (massa molar M_Cu), de massa m, comprimento L e coeficiente de expansão térmica linear α, está posicionada verticalmente sobre o piso de um recipiente que contém um banho de água (calor específico c_H₂O e densidade ρ_H₂O) com volume V, inicialmente à temperatura ambiente de 20 °C. Sobre a extremidade superior da viga, é colocada uma massa M₁, que exerce uma força compressiva ao longo de seu eixo. Uma fonte de calor é então acionada, fornecendo energia ao banho até que sua temperatura atinja 90 °C. Nesse momento, a fonte de calor é desligada, e a massa M₁ é imediatamente substituída por uma massa menor, M₂. Com a fonte desligada e a massa reduzida, o sistema esfria e retorna à temperatura ambiente de 20 °C. Assim que essa temperatura é atingida, a massa M₁ é recolocada sobre a viga, e a fonte de calor é religada, reiniciando-se o ciclo. Admita que não há troca de calor de M₁ ou M₂ com o sistema.
Considerando válida a lei de Dulong-Petit: c_v = 3R (calor específico molar) para sólidos cristalinos, em que R é a constante universal dos gases, determine
a) o trabalho total realizado em um ciclo;
b) a eficiência da máquina térmica descrita.''',
  [math('a','a) Trabalho líquido no ciclo','70(M₁ − M₂)gLα.',
    ['70(M1-M2)gLα','70*g*L*alpha*(M_1-M_2)','(M1-M2)gLα(90-20)']),
   field('b','b) Eficiência e balanço de calor','Usar η = W_líquido/Q_quente. Incluindo a elevação do centro de massa da viga: η = (M₁−M₂)gLα/[ρ_H₂OVc_H₂O + 3mR/M_Cu + (M₁+m/2)gLα]. A contabilidade de energia e a aproximação adotada precisam de conferência manual. Usar apenas M₁ no numerador corresponderia ao trabalho de expansão, não ao trabalho líquido do ciclo.',[],manual=True)])
q('Física',6,'Luneta astronômica',
  '''Uma luneta astronômica é composta por duas lentes delgadas dispostas em um tubo: uma lente objetiva de distância focal f₁ = +80 cm; e uma lente ocular de distância focal f₂ = +5,0 cm.
Sabendo que, nesse equipamento, as imagens dos objetos celestes observadas são formadas a longas distâncias do observador, faça o que se pede nos itens a seguir.
a) Calcule o comprimento L do tubo que separa as lentes.
b) Calcule o aumento angular G da luneta para objetos a longas distâncias e indique a orientação da imagem.
c) Descreva a posição e o tipo de imagem conjugada pela luneta de um objeto localizado a 40 cm da lente objetiva. A imagem final é maior ou menor que o objeto?''',
  [number('a','a) Comprimento do tubo (cm)','85 cm.',85,['','cm']),number('b','b) Módulo do aumento angular','16.',16,['','vezes']),
   field('orientacao','b) Orientação da imagem','Invertida.',['invertida','imagem invertida','inversa']),
   number('posicao','c) Distância da imagem final à ocular (cm)','165/32 = 5,15625 cm após a ocular.',5.15625,['','cm'],tolerance=.01),
   field('tipo','c) Natureza da imagem final','Real.',['real','imagem real']),
   field('sentido','c) Orientação final','Invertida.',['invertida','imagem invertida']),
   words('tamanho','c) Comparação do tamanho com o objeto','16 vezes menor; aumento linear −1/16.',
     ['16 vezes menor','1/16 do tamanho','reduzida 16 vezes','aumento -1/16'],[['16'],['menor|reduz\\w*|1/16|-1/16']])])
q('Física',7,'Polarizadores em sequência',
  '''Um feixe cilíndrico e homogêneo de luz laser de intensidade I₀ incide sobre um sistema de N + 1 polarizadores dispostos em sequência. O eixo de polarização de cada polarizador forma um ângulo β com o eixo de polarização do polarizador anterior, de modo que φ = Nβ é o ângulo entre o eixo de polarização do último polarizador e o do primeiro. O laser possui polarização paralela ao eixo do primeiro polarizador e, devido a reflexões e absorções, sua intensidade após a passagem por cada polarizador é igual a uma fração x daquela que seria obtida em um caso ideal.
Considerando P a potência registrada por um analisador após o feixe atravessar todo o sistema, determine, em termos de I₀, φ, x, N e P,
a) a intensidade do feixe após passar pelo sistema;
b) o raio do feixe.''',
  [math('a','a) Intensidade final','I = I₀ x^(N+1) [cos(φ/N)]^(2N).',
    ['I0*x^(N+1)*cos(φ/N)^(2N)','I₀x^(N+1)(cos(φ/N))^(2N)','I0*x^(N+1)*(cos(phi/N))^(2*N)']),
   math('b','b) Raio do feixe','r = √[P/(πI₀x^(N+1)[cos(φ/N)]^(2N))].',
    ['sqrt(P/(πI0*x^(N+1)*cos(φ/N)^(2N)))','√(P/(πI₀x^(N+1)(cos(φ/N))^(2N)))','sqrt(P/(pi*I0*x^(N+1)*(cos(phi/N))^(2*N)))'])])
q('Física',8,'Carregamento indutivo',
  '''Um celular de massa 100 g e calor específico médio de 2,0 J/(g·°C), com bateria de 2 Ah de capacidade de carga e tensão de 5,0 V, é carregado completamente em 20 min por um carregador indutivo dotado de um solenoide de 20 espiras por centímetro, seção transversal circular de raio 0,5 cm e comprimento 2 cm. O celular possui um solenoide idêntico que se acopla perfeitamente ao solenoide do carregador durante o carregamento. O carregamento é realizado por ciclos, em cada qual a bobina do carregador é percorrida por uma corrente elétrica que varia linearmente entre 0 e 14 A em um período de tempo Δt, o que induz uma f.e.m. de módulo igual à tensão da bateria na bobina do celular, permanecendo constante durante todo o processo de carregamento. O processo de carregamento foi responsável pelo aumento da temperatura média do aparelho de 20 °C para 50 °C.
Considerando que a bateria estava totalmente descarregada no início do processo, determine
a) o mínimo valor possível da potência média, em watts, fornecida pelo carregador;
b) o máximo valor possível de Δt em segundos.''',
  [number('a','a) Potência mínima (W)','35 W.',35,['','W','watts']),
   field('b','b) Intervalo máximo Δt (s)','2,24π²·10⁻⁶ s ≈ 2,21·10⁻⁵ s.',
    ['2,24π²·10⁻⁶ s','2.24*pi^2*10^-6','2,24*pi^2*10^-6'],math=True,numeric=dict(value=2.21079e-5,tolerance=3e-7,units=['','s','segundos']))])
q('Física',9,'Grade de difração',
  '''Uma grade de difração está posicionada horizontalmente a 20 cm acima do solo, na qual incide luz solar perpendicularmente. No solo, a projeção do primeiro máximo de difração do laranja (600 nm) ocorre a 20 cm do ponto central.
Dadas as considerações, determine
a) a distância entre as ranhuras da grade de difração;
b) a distância do primeiro máximo de difração do violeta (400 nm) até o ponto central.''',
  [field('a','a) Distância entre ranhuras (nm)','600√2 nm ≈ 848,5 nm.',
     ['600√2','600sqrt(2)','600√2 nm'],math=True,numeric=dict(value=848.528,tolerance=1,units=['','nm'])),
   number('b','b) Distância do máximo violeta (cm)','40/√14 cm ≈ 10,69 cm.',10.69,['','cm'],tolerance=.04)])
q('Física',10,'Sinal luminoso e relatividade',
  '''Considere uma missão espacial cujo objetivo é coletar dados do sistema planetário da estrela Sirius, localizada a 8,6 anos-luz do nosso sistema Solar. Para tal, duas espaçonaves são lançadas da Terra de forma que atingem as fronteiras do sistema Solar ao mesmo instante t₀, para um observador na Terra, em trajetórias paralelas e velocidades constantes, v₁ = 0,8c e v₂ = 0,6c, em que c é a velocidade da luz. Assim que chega ao sistema planetário de Sirius, a espaçonave 1 emite um sinal para a espaçonave 2.
Dadas as considerações, determine
a) o tempo transcorrido na Terra, desde o instante t₀ até que a espaçonave 2 receba o sinal emitido pela espaçonave 1;
b) o tempo transcorrido para os astronautas da espaçonave 2, desde o instante t₀ até que recebam o sinal emitido pela espaçonave 1.''',
  [number('a','a) Tempo na Terra (anos)','12,09375 anos ≈ 12,1 anos.',12.09375,['','anos'],tolerance=.015),
   number('b','b) Tempo próprio da espaçonave 2 (anos)','9,675 anos ≈ 9,7 anos.',9.675,['','anos'],tolerance=.035)])
