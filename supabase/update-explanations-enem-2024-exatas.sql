-- Explicações próprias das questões de Matemática do ENEM 2024.
-- Uso: execute após o seed-enem-2024.sql no SQL Editor do Supabase.
-- Não altera enunciado, alternativas ou gabarito; atualiza apenas explanation.

begin;

update public.questions q set explanation =
'A média é a soma dos tempos dividida pela quantidade de contratos: (36 + 17 + 27 + 13 + 13 + 13) / 6 = 119 / 6 = 19,8 minutos, aproximadamente. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 136;

update public.questions q set explanation =
'A área de um setor circular é (alfa/360) vezes pi vezes R². Usando pi = 3, as áreas dos cinco sensores são 50, 121, 48, 128 e 75 m², respectivamente. O menor sensor que cobre pelo menos 70 m² é o tipo 5. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 137;

update public.questions q set explanation =
'O valor fixo é pago uma única vez e os demais custos dependem do tempo e da distância. Portanto, V = 2,00 + 0,26T + 1,40D. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 138;

update public.questions q set explanation =
'As colunas ficam alinhadas ao longo dos 3 m, ou 300 cm. Para n colunas de raio r, é necessário respeitar 2rn + 15(n + 1) <= 300. Calculando o maior n possível em cada loja, os custos mínimos são: I, R$ 660; II, R$ 560; III, R$ 525; IV, R$ 540; V, R$ 600. O menor custo é o da loja III. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 139;

update public.questions q set explanation =
'Na escala 1:200, cada comprimento é reduzido 200 vezes e cada área é reduzida 200² = 40.000 vezes. A área da maquete é 1672/40.000 m² = 0,0418 m². Como 1 m² = 10.000 cm², a área é 418 cm². Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 140;

update public.questions q set explanation =
'O saldo é exportação menos importação. Assim, S1 = 14,5 - 10 = 4,5; S2 = 11,2 - 11,5 = -0,3; e S3 = 17,1 - 14,8 = 2,3. Do maior para o menor: S1, S3 e S2. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 141;

update public.questions q set explanation =
'Para transformar uma taxa percentual em número decimal, divide-se por 100: 135,25% = 135,25/100 = 1,3525. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 142;

update public.questions q set explanation =
'O custo total é 2 vezes 20L + 2 vezes 15C, portanto 40L + 30C <= 6000. No limite do orçamento, C = 200 - (4/3)L. A área A = LC fica máxima no vértice dessa função, quando L = 75 e C = 100. Logo, o maior lado mede 100 m. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 143;

update public.questions q set explanation =
'As representações equivalentes a 4,5 são 4 inteiros e 1/2, 18/4 e 4,5. Elas aparecem nas posições 2, 4 e 5. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 144;

update public.questions q set explanation =
'No instante inicial, T(0) = a + 80 = 100, então a = 20. O gráfico indica que, em 10 minutos, a temperatura é 60 graus: 60 = 20 + 80b^10, logo b^10 = 1/2 e b = (1/2)^(1/10). Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 145;

update public.questions q set explanation =
'O volume do cilindro é pi vezes r² vezes h = 3 vezes 3² vezes 15 = 405 cm³. A nova embalagem deve ter 80% desse volume: 0,8 vezes 405 = 324 cm³. Portanto, a aresta a satisfaz a³ = 324 = 27 vezes 12, logo a = 3 vezes a raiz cúbica de 12. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 146;

update public.questions q set explanation =
'A quantidade de figuras dobra a cada etapa. Como a primeira etapa tem 3 figuras, a vigésima etapa tem 3 vezes 2 elevado a 19, pois são 19 duplicações após a primeira etapa. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 147;

update public.questions q set explanation =
'O faturamento dos ingressos após o aumento das meias-entradas é 450 vezes 65 + 50 vezes 130 = R$ 35.750. Como o custo foi R$ 34.350, o lucro dos ingressos é R$ 1.400. Para chegar a R$ 17.000, bebidas e petiscos precisam gerar R$ 15.600 de lucro. Com lucro de 60% sobre o custo, o custo total será 15.600/0,6 = R$ 26.000. Dividindo pelas 500 pessoas, o gasto médio é R$ 52,00. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 148;

update public.questions q set explanation =
'Ao girar um trapézio retângulo em torno do lado que funciona como eixo, os segmentos perpendiculares ao eixo geram círculos cujos raios variam linearmente. Como as bases têm medidas diferentes, o sólido possui duas bases circulares de raios distintos: é um tronco de cone. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 149;

update public.questions q set explanation =
'A área original era 110 vezes 75 = 8250 m². A nova área é 105 vezes 68 = 7140 m². A redução foi 8250 - 7140 = 1110 m². Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 150;

update public.questions q set explanation =
'Na loja I, o enfeite custa 2 vezes 3 + 1 vez 1 = R$ 7. Na loja II, custa 2 vezes 2 + 1 vez 4 = R$ 8. Portanto, a compra deve ser feita na loja I, pelo valor de R$ 7. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 151;

update public.questions q set explanation =
'João acertou 75% de 200, isto é, 150 questões. Felipe acertou 30% menos: 150 vezes 0,7 = 105 questões, ou 52,5%. Pela tabela, 75% corresponde a muito bom e 52,5% corresponde a regular. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 152;

update public.questions q set explanation =
'Para grandeza 1 igual a 1, a grandeza 2 vale 1,5 e, no segundo gráfico, a grandeza 3 vale 2,5. Para grandeza 1 igual a 2, a grandeza 2 vale 3 e a grandeza 3 vale 1. Para grandeza 1 igual a 3, a grandeza 2 vale 3,5 e a grandeza 3 vale 2. O maior valor é 2,5. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 153;

update public.questions q set explanation =
'A hemácia mede 0,007 mm e o olho humano distingue objetos a partir de 0,1 mm. A ampliação total precisa satisfazer 0,007 vezes M >= 0,1, portanto M >= 14,28. A ocular amplia 10 vezes; combinada com a objetiva 1, resulta em 20 vezes, suficiente. As demais objetivas ampliam mais, mas não são a menor capacidade. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 154;

update public.questions q set explanation =
'Se S é a soma das quatro notas, a média correta é S/4 e a média errada é S/5. A diferença é S/4 - S/5 = S/20 = 1, então S = 20. A média correta é 20/4 = 5. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 155;

update public.questions q set explanation =
'Para os dois algarismos distintos, ha 5 escolhas para o primeiro e 4 para o segundo: 5 vezes 4 = 20. Entre as teclas permitidas ha 10 letras ao todo. Para tres letras diferentes, ha 10 vezes 9 vezes 8 = 720 sequencias. Logo, o total e 20 vezes 720 = 14.400. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 156;

update public.questions q set explanation =
'Com o defensivo A, seriam necessarios 40 litros, que custam R$ 168,00 e dao direito a mascara gratis. Com o tipo B, sao necessarios 50 litros, que custam R$ 150,00; somando a mascara, o total e R$ 162,50. Essa e a opcao mais barata. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 157;

update public.questions q set explanation =
'O valor atual e 10 + 5 vezes 25 = R$ 135,00. Mantendo esse total e aumentando a taxa para R$ 15, o valor das cinco porcoes deve ser R$ 120,00. Portanto, cada porcao custara 120/5 = R$ 24,00. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 158;

update public.questions q set explanation =
'A primeira piscina leva 2.500.000/6.000 minutos. A segunda deve ser preenchida em 1,2 vezes esse tempo. Assim, sua vazao e 2.750.000/(1,2 vezes 2.500.000/6.000) = 5.500 litros por minuto. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 159;

update public.questions q set explanation =
'O fluxo e diretamente proporcional a vazao, em mililitros por segundo, e inversamente proporcional a area, em centimetros quadrados. Logo, sua unidade e mL/(cm² vezes s). Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 160;

update public.questions q set explanation =
'O custo aumenta R$ 600 quando a producao passa de 30 para 50 mochilas, ou seja, R$ 30 por mochila. O custo fixo e R$ 150. Para 80 mochilas, o custo e 150 + 30 vezes 80 = R$ 2.550. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 161;

update public.questions q set explanation =
'Ordenando os valores, temos 46, 54, 60, 64, 64 e 66. Como ha seis valores, a mediana e a media dos dois centrais: (60 + 64)/2 = 62%. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 162;

update public.questions q set explanation =
'A quantia destinada aos engenheiros e 40% de R$ 71.250, ou R$ 28.500. As horas trabalhadas foram 22, 20 e 15, totalizando 57 horas. Cada hora vale R$ 500. Os pagamentos sao R$ 11.000, R$ 10.000 e R$ 7.500; a maior diferenca e R$ 3.500. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 163;

update public.questions q set explanation =
'Como a equipe tera cinco medicos e deve ter pelo menos tres cardiologistas, somam-se os casos com 3, 4 ou 5 cardiologistas: C(7,3) vezes C(6,2) + C(7,4) vezes C(6,1) + C(7,5) vezes C(6,0). Essa e a expressao da alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 164;

update public.questions q set explanation =
'Na primeira opcao, a altura e 20 cm e a circunferencia da base e 10 cm, entao o volume e 500/pi. Na segunda, a altura e 10 cm e a circunferencia e 20 cm, entao o volume e 1000/pi. A maior capacidade e 1000/pi cm³. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 165;

update public.questions q set explanation =
'A reta passa de 4 para 5 em tres anos, portanto cresce 1 milhao a cada tres anos. Como em 2020 a estimativa e 6 milhoes, em 2026 ela sera 8 milhoes. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 166;

update public.questions q set explanation =
'As quantidades por faixa sao: ate 25 anos, 16 + 30 + 80 = 126; entre 25 e 45 anos, 24 + 48 + 70 = 142; a partir de 45 anos, 40 + 42 + 50 = 132. A maior quantidade e 142, na faixa entre 25 e 45 anos. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 167;

update public.questions q set explanation =
'A varanda tem area 5 vezes 6 = 30 m². As pedras quadradas ocupam 10 m², restando 20 m². Cada pedra retangular ocupa 0,25 vezes 0,50 = 0,125 m², logo sao necessarias 160 pedras. Como cada caixa tem 30, devem ser compradas 6 caixas. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 168;

update public.questions q set explanation =
'Com perimetro k, o lado do triangulo e k/3 e sua area e k² vezes raiz de 3 dividido por 36. A area do quadrado e k²/16. No hexagono, o lado e k/6 e a area e k² vezes raiz de 3 dividido por 24. O coeficiente do hexagono e o maior, portanto essa e a forma escolhida. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 169;

update public.questions q set explanation =
'A velocidade relativa dos onibus e 250 + 150 = 400 m/min. Eles se encontram depois de 9000/400 = 22,5 minutos. O onibus A percorre 250 vezes 22,5 = 5625 m, ou 62,5% do percurso. Esse ponto esta no trecho da camera 4, entre 60% e 70%. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 170;

update public.questions q set explanation =
'Como uma tentativa frustrada e retirada, a probabilidade de errar a primeira tentativa e 24/25, a de errar a segunda e 23/24 e a de acertar a terceira e 1/23. Multiplicando: (24/25) vezes (23/24) vezes (1/23). Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 171;

update public.questions q set explanation =
'Como E2/E1 = 10, a diferença de magnitudes é (2/3) log(10) = 2/3. Portanto, M2 = 6,9 + 2/3 = 7,566..., que arredondado para uma casa decimal resulta em 7,6. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 172;

update public.questions q set explanation =
'O comprador pagou 35% de 420.000, isto é, R$ 147.000. A devolução corresponde a 75% desse valor: 0,75 vezes 147.000 = R$ 110.250. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 173;

update public.questions q set explanation =
'Se x for a redução, a nova probabilidade de encontrar um sinal vermelho é (15 - x)/60. Como os eventos são independentes, ((15 - x)/60)² = 0,04, então (15 - x)/60 = 0,2. Logo, 15 - x = 12 e x = 3 segundos. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 174;

update public.questions q set explanation =
'Se R tem área A e população N, dR = N/A. A região Q tem população N/2 e área 3A/4. Assim, dQ = (N/2)/(3A/4) = (2/3)(N/A) = 2/3 dR. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 175;

update public.questions q set explanation =
'A diferença é 4 inteiros e 5/6 menos 3 inteiros e 1/2 = 29/6 - 21/6 = 8/6 = 1,333... polegada. Com uma casa decimal, o resultado é 1,3. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 176;

update public.questions q set explanation =
'As parcelas aumentam com o tempo, então é melhor começar o financiamento o mais cedo possível. Começando em fevereiro, o mês de maio aparece como parcela gratuita já no quarto pagamento e se repete ao longo do contrato, incluindo o maior número de aniversários dentro das 100 parcelas. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 177;

update public.questions q set explanation =
'A escala é o comprimento do desenho dividido pelo comprimento real: 9/45 = 1/5. Portanto, a escala utilizada é 1 para 5. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 178;

update public.questions q set explanation =
'Os três postos formam um triangulo equilatero de lado 10 km, e o hospital esta no centro, a mesma distancia dos tres vertices. O raio da circunferencia circunscrita e 10 dividido por raiz de 3, aproximadamente 5,77 km, que esta entre 5 e 6 km. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 179;

update public.questions q set explanation =
'O primeiro compartimento recebe agua ate atingir metade da altura em 2 horas. A partir dai, a agua passa pelos anteparos e a maior altura permanece em H/2 enquanto os outros compartimentos sao preenchidos. Em t = 6 horas, os tres compartimentos atingem H/2; depois disso, o nivel sobe em todo o tanque ate H em t = 12 horas. Portanto, o grafico sobe de 0 a 3 ate t = 2, permanece em 3 ate t = 6 e sobe ate 6 em t = 12. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 180;

update public.questions q set explanation =
'Os raios X atravessam materiais de acordo com sua densidade. Os componentes densos do computador absorvem mais radiação e podem impedir a visualização dos objetos que ficam à frente ou atrás deles. Por isso o notebook é separado na esteira. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 95;

update public.questions q set explanation =
'O nitrito de sódio reage com o ácido clorídrico presente no suco gástrico, formando ácido nitroso, que pode reagir com aminas. Como o processo começa no estômago, a alternativa correta é E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 96;

update public.questions q set explanation =
'Para ser compreendida, a fala precisa atingir 45 + 5 = 50 decibéis. Pela curva fornecida, o nível de 50 decibéis ocorre a aproximadamente 3 metros do professor. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 99;

update public.questions q set explanation =
'O coletor aquece a água, que fica menos densa e sobe para a parte superior do reservatório. A água fria, mais densa, desce para o coletor. Esse transporte de calor ocorre por convecção. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 101;

update public.questions q set explanation =
'Na razão ar/combustível igual a 18, o gráfico indica emissão praticamente nula de CO e ainda uma concentração elevada de CO2, próxima da faixa superior da curva. Portanto, ocorre baixa emissão de CO e alta de CO2. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 104;

update public.questions q set explanation =
'Durante a colisao, a deformacao da crumple zone aumenta o tempo de interacao e absorve parte da energia cinetica do sistema. Com mais energia dissipada na deformacao, menos energia e transferida de forma brusca aos ocupantes. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 105;

update public.questions q set explanation =
'Somando a oxidacao do acetato com duas vezes a reducao do oxigenio, os eletrons e parte dos ions H+ se cancelam. A equacao global fica CH3COO- + H+ + 2 O2 -> 2 CO2 + 2 H2O. Essa e a alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 106;

update public.questions q set explanation =
'Na definicao atual, compostos organicos sao aqueles em que o carbono e o elemento central da estrutura. Essa classificacao nao depende de a substancia ser benefica, biodegradavel ou produzida sem agrotoxicos. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 107;

update public.questions q set explanation =
'Na aproximacao, o efeito Doppler aumenta a frequencia percebida quando a fonte se aproxima. O radar tambem recebe a onda refletida com frequencia maior que a emitida, portanto fr > f0. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 109;

update public.questions q set explanation =
'O arranjo dos dois espelhos faz os raios refletidos convergirem na abertura superior, formando uma imagem real. Como cada espelho tem profundidade de 3,8 cm, a distancia vertical entre o ponto objeto e o ponto imagem e 2 vezes 3,8 = 7,6 cm. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 110;

update public.questions q set explanation =
'Uma base de Bronsted-Lowry recebe protons. Na nimesulida, o grupo sulfonamida possui a ligacao N-H, cujo hidrogenio pode ser removido pela base, formando a especie ionica mais soluvel. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 111;

update public.questions q set explanation =
'O centro de massa esta deslocado para cima e para a direita do centro geometrico. Para corrigi-lo, a massa adicional deve ser colocada no lado oposto, abaixo e a esquerda, que corresponde ao ponto 3. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 113;

update public.questions q set explanation =
'No instante do contato, a força exercida pelo chão deve ser perpendicular à superfície de contato. Pela orientação do chão na figura, essa normal aponta para cima e para a direita, correspondendo ao primeiro vetor. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 122;

update public.questions q set explanation =
'A água da chuva e o grafeno ficam com cargas separadas na interface: os cátions permanecem na água e os elétrons se acumulam no grafeno. Essa separação de cargas cria uma diferença de potencial elétrico que pode gerar corrente. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 123;

update public.questions q set explanation =
'Em 2 litros ha 1,4 mg/mL vezes 2000 mL = 2800 mg, ou 2,8 g, de sodio. A massa correspondente de NaCl e 2,8 vezes (58,5/23) = aproximadamente 7,1 g. Como ha duas colheres pequenas, cada uma contem cerca de 3,6 g. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 114;

update public.questions q set explanation =
'As resistencias nominais sao R1 = 6²/9 = 4 ohms e R2 = 12²/18 = 8 ohms. Para as duas lampadas em serie funcionarem nas tensoes nominais, a corrente deve ser 1,5 A e a fonte precisa fornecer 18 V. O ponto B fornece a derivacao correspondente a 6 V para a primeira lampada. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 116;

update public.questions q set explanation =
'Dez mol de etanol correspondem a 460 g. Com densidade 0,78 g/mL, isso ocupa aproximadamente 0,59 L. Como 1 m³ de biogas substitui 0,59 L de etanol, sao necessarios 1 m³ de biogas. O metano representa 70%, ou 700 L, que correspondem a 700/22 = 31,8 mol. A massa e 31,8 vezes 16 = aproximadamente 510 g. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 117;

update public.questions q set explanation =
'A fitoextracao remove o poluente do solo, acumula-o na parte aerea da planta e permite retirar a biomassa contaminada. Dessa forma, o mercurio nao permanece disponivel para entrar na cadeia alimentar. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 118;

update public.questions q set explanation =
'A massa de aluminio reciclada e 0,974 vezes 4,0 vezes 10^5 = 3,896 vezes 10^5 toneladas. Como sao necessarias 5 toneladas de bauxita para produzir 1 tonelada de aluminio, a massa evitada de bauxita e 5 vezes esse valor = 1,948 vezes 10^6 toneladas. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 119;

update public.questions q set explanation =
'Nas arestas longas, a corrente de 30 m/min precisa ser compensada pela componente vertical da velocidade do nadador. A componente util e raiz de (50² - 30²) = 40 m/min, levando 20 min em cada trecho de 800 m. Nos trechos curtos, a velocidade resultante e 50 - 30 = 20 m/min, levando 20 min no trecho contra a corrente e 5 min no trecho a favor. O tempo total e 20 + 20 + 20 + 5 = 65 min. Alternativa B.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 120;

update public.questions q set explanation =
'O processo util ocorre durante a expansao adiabatica, quando o gas realiza trabalho sobre o piston e transforma parte da energia interna em trabalho mecanico. No quadro, essa e a etapa IV, representada pela alternativa 4, letra C. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 125;

update public.questions q set explanation =
'A fosforescencia ocorre quando eletrons absorvem energia, passam a estados excitados e depois retornam a niveis de menor energia, emitindo luz. Portanto, o fenomeno envolve transicoes eletronicas. Alternativa C.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 126;

update public.questions q set explanation =
'No interior de um condutor em equilibrio eletrostatico, o campo eletrico e nulo. As linhas de campo se desviam ao redor do cilindro metalico e nao atravessam seu interior. Alternativa E.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 128;

update public.questions q set explanation =
'O interior do iglu e mais quente que o ambiente externo. Assim, a agua precisa ser resfriada artificialmente para atingir a temperatura de solidificacao; a temperatura interna ultrapassa a temperatura em que a agua congelaria naturalmente. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 129;

update public.questions q set explanation =
'Os dois compostos apresentam o grupo COOH, caracteristico dos acidos carboxilicos. A presenca de outros grupos na estrutura nao muda essa funcao comum. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 130;

update public.questions q set explanation =
'O hidroxido de magnesio e pouco soluvel e se forma como solido, enquanto os ions permanecem na solucao. A separacao de um solido insolúvel de um liquido e feita por filtracao. Alternativa A.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 133;

update public.questions q set explanation =
'A desmineralizacao consome ions H+. O creme IV tem o menor pH, 6,9, portanto possui a maior concentracao de H+ e desloca mais o equilibrio para a dissolucao da hidroxiapatita. Alternativa D.'
from public.exams e where q.exam_id = e.id and e.slug = 'enem-2024' and q.number = 135;

commit;
