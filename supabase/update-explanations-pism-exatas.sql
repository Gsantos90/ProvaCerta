-- ============================================================
-- Explicacoes (explanation) das questoes OBJETIVAS de
-- Fisica, Quimica e Matematica das provas PISM
-- 2024-1, 2024-2, 2025-1 e 2025-2
-- ============================================================
-- Uso: rode este arquivo no SQL Editor do Supabase APOS os seeds.
-- Atualiza apenas a coluna explanation, casando por slug do exame + numero da questao.

-- Helper: cada UPDATE localiza o exam_id pelo slug e aplica pela questao (number).

-- ============================================================
-- PISM 2024-1  |  MATEMATICA (11 a 15)
-- ============================================================

update public.questions q set explanation =
'a = pi ~= 3,14 ; b = 3 ; c = 3,2. Ordenando do menor para o maior: 3 < 3,14 < 3,2, ou seja b < a < c. Alternativa B ("b a c").'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 11;

update public.questions q set explanation =
'f(x) = x^2 + 2x - 24. Raizes: x = (-2 +- raiz(4 + 96))/2 = (-2 +- 10)/2, logo x = 4 e x = -6. Maior raiz r1 = 4 e menor raiz r2 = -6. Razao r1/r2 = 4/(-6) = -2/3. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 12;

update public.questions q set explanation =
'Hipotenusa raiz(58) e catetos (x-2) e (x+2). Pitagoras: (x-2)^2 + (x+2)^2 = 58 => 2x^2 + 8 = 58 => x^2 = 25 => x = 5. Catetos: 3 e 7. O menor angulo se opoe ao menor cateto (3). sen = 3/raiz(58) = 3 raiz(58)/58. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 13;

update public.questions q set explanation =
'f(x) = 2^x. A expressao f(a)(f(a+2)+4) / [4 f(a+2)(f(a)+1)]. Com f(a) = 2^a e f(a+2) = 4*2^a: numerador = 2^a(4*2^a + 4) = 4*2^a(2^a + 1); denominador = 4*(4*2^a)(2^a + 1) = 16*2^a(2^a + 1). Razao = 4/16 = 1/4. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 14;

update public.questions q set explanation =
'Triangulo retangulo 6-8-10; area = (6*8)/2 = 24 m^2. O retangulo inscrito de area maxima com um lado sobre um lado do triangulo tem area igual a metade da area do triangulo: 24/2 = 12 m^2. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 15;

-- ============================================================
-- PISM 2024-1  |  QUIMICA (16 a 20)
-- ============================================================

update public.questions q set explanation =
'A reacao hipotetica mostra esferas macicas e indivisiveis que se mantem inalteradas entre reagentes e produtos, apenas rearranjando-se. Isso corresponde ao modelo de Dalton (atomo = esfera macica e indivisivel). Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 16;

update public.questions q set explanation =
'O metano (CH4) e um gas de efeito estufa: ao atingir a atmosfera contribui para o aquecimento global. As demais alternativas trazem erros conceituais (fonte exclusiva de CO2, CO2 tornando o solo mais fertil, etc.). Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 17;

update public.questions q set explanation =
'Transformacoes quimicas envolvem formacao/quebra de ligacoes e novas substancias. Destruicao da camada de ozonio (3) e queima de combustiveis fosseis (5) sao quimicas; chuva (1) e evaporacao (2) sao processos fisicos; o aquecimento global (4) e consequencia fisica. Logo, 3 e 5. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 18;

update public.questions q set explanation =
'No tratamento de agua, o sulfato de aluminio atua na coagulacao/floculacao, formando flocos que agregam as impurezas (que depois decantam). As demais descrevem etapas de forma incorreta. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 19;

update public.questions q set explanation =
'No estado gasoso as moleculas de N2 tem energia cinetica muito maior e interacoes intermoleculares minimas em relacao ao liquido. A mudanca de estado nao quebra a ligacao covalente N=N (apenas afasta/aproxima as moleculas). Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-1' and q.number = 20;

-- ============================================================
-- PISM 2024-2  |  FISICA (11 a 15)  [g = 10 m/s^2]
-- ============================================================

update public.questions q set explanation =
'Velocidade media = distancia total / tempo total. t1 = 200/100 = 2 h; t2 = 70/70 = 1 h. Vm = (200 + 70)/(2 + 1) = 270/3 = 90 km/h. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-2' and q.number = 11;

update public.questions q set explanation =
'Como em t = 0 os dois ciclistas estao lado a lado e o grafico mostra B com velocidade 4,0 m/s nesse instante, B passa por A a 4,0 m/s. As demais afirmativas contrariam os dados do grafico. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-2' and q.number = 12;

update public.questions q set explanation =
'Proximo a superficie da Terra, a aceleracao de um projetil e a gravidade: constante, de direcao vertical e sentido para baixo, inclusive no ponto mais alto (onde apenas a velocidade vertical se anula). Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-2' and q.number = 13;

update public.questions q set explanation =
'Queda de 5,0 m: v = raiz(2 g h) = raiz(2*10*5) = 10 m/s. Variacao de quantidade de movimento ao parar: dp = m v = 3,0*10 = 30 kg m/s. Forca media = dp/dt = 30/0,2 = 150 N. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-2' and q.number = 14;

update public.questions q set explanation =
'A bola quica e nao alcanca a altura original: parte da energia mecanica se dissipa (choque nao perfeitamente elastico), entao ela nao pode ultrapassar a altura inicial nem conservar toda a energia cinetica. A alternativa correta descreve corretamente a relacao de energia (D).'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2024-2' and q.number = 15;

-- ============================================================
-- PISM 2025-1  |  MATEMATICA (11 a 15)
-- ============================================================

update public.questions q set explanation =
'f em [1,4): f(x) = 6 - x, decrescente, com imagem (2, 5]. Em [4,9]: f(x) = x^2 - 12x + 34, vertice em x = 6 com f(6) = -2; f(4) = 2 e f(9) = 7, imagem [-2, 7]. Uniao das imagens = [-2, 7]. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 11;

update public.questions q set explanation =
'Os graficos se cruzam em x = -2 e x = 5. Onde f(x) < g(x) e o intervalo entre as intersecoes: -2 < x < 5. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 12;

update public.questions q set explanation =
'O grafico de decaimento exponencial da massa, extrapolado ate o instante da administracao, fornece a massa inicial. A leitura do valor no eixo corresponde a 7 mg. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 13;

update public.questions q set explanation =
'f(x) = -(1/4)x^2 + (3/2)x + 4. Coeficiente de x^2 negativo => concavidade para baixo; f(0) = 4 => intercepta o eixo y em 4. Portanto e uma parabola com concavidade para baixo e intercepto em y = 4. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 14;

update public.questions q set explanation =
'Modelando o Centro Historico como um trapezio retangulo, aplica-se area = ((B + b)/2) * h com as medidas do esquema, resultando em 780 000 m^2. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 15;

-- ============================================================
-- PISM 2025-1  |  QUIMICA (16 a 20)
-- ============================================================

update public.questions q set explanation =
'Em sistema fechado a massa se conserva (Lei de Lavoisier), o que Dalton explica porque os atomos nao se transformam nem se dividem: apenas se reagrupam. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 16;

update public.questions q set explanation =
'Na solucao de CuSO4, o cobre forma cation ao perder um ou dois eletrons (Cu+ ou Cu2+). O cloro forma anion (carga negativa), o enxofre no sulfato nao forma cation bivalente e o sodio perde eletron formando cation positivo. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 17;

update public.questions q set explanation =
'O aco inox e uma liga metalica que contem ferro, carbono, niquel e cromo. As demais alternativas classificam erroneamente amonia, soda caustica, acido sulfurico e CO2. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 18;

update public.questions q set explanation =
'Evolucao dos modelos: Dalton (atomo indivisivel, esfera macica); Thomson (esfera positiva com eletrons incrustados - "pudim de passas"); Rutherford (nucleo positivo com eletrons ao redor). Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 19;

update public.questions q set explanation =
'Mesma massa (10 g), mas o chumbo ocupa volume muito menor => maior densidade. Isso decorre de o atomo de chumbo ser bem mais pesado, com muito mais protons e neutrons (nucleo mais massivo). Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-1' and q.number = 20;

-- ============================================================
-- PISM 2025-2  |  FISICA (11 a 15)
-- ============================================================

update public.questions q set explanation =
'Pares de acao e reacao atuam em corpos diferentes. A forca que a goiaba faz sobre a Terra (atracao gravitacional) e a reacao do peso que a Terra faz sobre a goiaba. Peso e normal nao formam par (atuam no mesmo corpo). Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-2' and q.number = 11;

update public.questions q set explanation =
'No grafico S x t, a inclinacao inicial da curva e positiva, indicando velocidade inicial positiva. As demais afirmativas contrariam a leitura do grafico (aceleracao, velocidade nula, deslocamento). Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-2' and q.number = 12;

update public.questions q set explanation =
'Em movimento circular uniforme ha aceleracao centripeta a = v^2/r, dirigida ao centro. Com v constante, quanto menor o raio r maior a aceleracao. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-2' and q.number = 13;

update public.questions q set explanation =
'Mesmo trabalho => mesma energia cinetica: (1/2) mA vA^2 = (1/2) mB vB^2. Com mA = 2 mB: vA^2 = vB^2/2 => vA = vB/raiz(2) = (raiz(2)/2) vB. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-2' and q.number = 14;

update public.questions q set explanation =
'Equilibrio de torques em relacao ao apoio: 20 * dM = 50 * dmae. Com os dados do problema, a distancia da mae ate Mariele que equilibra a tabua resulta em 2,8 m. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'pism-2025-2' and q.number = 15;
