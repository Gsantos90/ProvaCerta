// Questões complementares: a primeira alternativa de cada linha é a correta.
// O comentário explica o conceito avaliado, independentemente da posição sorteada.
const rows = {
  cartografia: `
Em um mapa de escala 1:100.000, uma estrada retilínea mede 3 cm. Qual é seu comprimento real?|3 km|300 m|30 km|Cada centímetro corresponde a 1 km no terreno.
Qual escala permite representar com mais detalhes os quarteirões de um bairro?|1:5.000|1:50.000|1:500.000|A escala 1:5.000 é a maior das três e representa uma distância real menor por centímetro.
Que coordenada indica se um ponto está ao norte ou ao sul do Equador?|Latitude|Longitude|Altitude|Os paralelos indicam a latitude em relação à linha do Equador.
Um mapa será usado para comparar a área de continentes. Qual tipo de projeção é mais adequado?|Equivalente|Conforme|Equidistante a partir de um único ponto|A projeção equivalente preserva as proporções entre áreas.
Qual elemento explica o significado das cores em um mapa de vegetação?|Legenda|Escala numérica|Meridiano de referência|A legenda associa símbolos e cores às categorias representadas.
Qual linha corresponde à latitude 0°?|Equador|Greenwich|Trópico de Câncer|O Equador é a referência para medir latitudes.
Qual linha corresponde à longitude 0°?|Greenwich|Equador|Trópico de Capricórnio|O meridiano de Greenwich é a referência das longitudes.
Um ponto está a 20° S e 45° O. Em quais hemisférios está?|Sul e ocidental|Norte e ocidental|Sul e oriental|S indica sul e O indica oeste.
Que linhas ligam os dois polos?|Meridianos|Paralelos|Curvas de nível|Os meridianos seguem a direção norte–sul e convergem nos polos.
Qual é a faixa de valores absolutos da latitude?|0° a 90°|0° a 180°|0° a 360°|A distância angular vai do Equador até os polos.
Que projeção convém a um mapa que precisa preservar ângulos locais?|Conforme|Equivalente|Qualquer projeção cilíndrica|A conformidade preserva ângulos localmente.
Uma imagem do mapa é ampliada junto com sua escala gráfica. Qual escala continua utilizável?|A barra gráfica ampliada|Somente a razão numérica original|Nenhuma das duas|A barra aumenta na mesma proporção que o mapa.
Em 1:25.000, quanto representa 1 cm?|250 m|25 m|2.500 m|25.000 cm correspondem a 250 m.
Em 1:200.000, quanto representam 5 cm?|10 km|1 km|100 km|Cada centímetro equivale a 2 km.
Um trecho de 6 km mede 3 cm no mapa. Qual a escala?|1:200.000|1:20.000|1:2.000.000|600.000 cm divididos por 3 cm dão 200.000.
Em 1:10.000, quantos centímetros representam 500 m?|5 cm|0,5 cm|50 cm|500 m equivalem a 50.000 cm, que devem ser divididos por 10.000.
Um quadrado de 1 cm de lado aparece em um mapa 1:100.000. Que área ele representa?|1 km²|2 km²|100 km²|Cada lado representa 1 km, então a área é 1 km × 1 km.
Qual mapa tende a mostrar mais detalhes, mantido o tamanho da folha?|Um de 1:10.000|Um de 1:1.000.000|Um de 1:10.000.000|O menor denominador corresponde à maior escala.
Qual coordenada distingue dois pontos sobre o mesmo paralelo, em meridianos diferentes?|Longitude|Latitude|Altitude|Pontos no mesmo paralelo têm a mesma latitude.
Por que um mapa-múndi plano sempre apresenta algum tipo de distorção?|A superfície terrestre é curva|A legenda reduz as distâncias|A posição dos polos muda conforme a escala|Projetar uma superfície curva sobre um plano implica alterar alguma propriedade geométrica.
`,
  'populacao-migracoes': `
Uma região tem 240.000 habitantes e 3.000 km². Qual é sua densidade média?|80 hab/km²|8 hab/km²|800 hab/km²|A densidade média é 240.000 ÷ 3.000 = 80 hab/km².
Uma cidade recebe 700 moradores e perde 900 por mudança. Qual é seu saldo migratório?|−200 pessoas|+200 pessoas|+1.600 pessoas|Subtraia as saídas das entradas. O resultado é 700 − 900 = −200.
Com 1.200 nascimentos e 850 mortes em um ano, qual é o crescimento natural?|350 pessoas|2.050 pessoas|850 pessoas|O crescimento natural é a diferença entre nascimentos e mortes.
O que sugere uma pirâmide etária com a base mais estreita que as faixas adultas imediatamente acima?|Menos nascimentos recentes em relação às gerações adultas|Maior densidade em todos os bairros|Saldo migratório necessariamente positivo|A base representa os grupos mais jovens e sua largura indica seu peso na população.
Uma pessoa muda de Recife para Curitiba. Como o deslocamento é classificado para Curitiba?|Imigração interna|Emigração internacional|Deslocamento pendular|Para a cidade de destino, a mudança de residência conta como entrada dentro do mesmo país.
Dois municípios têm 60.000 habitantes. Qual tem maior densidade?|O de menor área|O de maior área|Ambos têm a mesma densidade|Com população igual, a divisão pela menor área dá o maior resultado.
Uma região tem densidade média de 12 hab/km². Isso garante que todos os quilômetros quadrados tenham 12 moradores?|Não, a ocupação pode variar|Sim, se a população total estiver correta|Sim, se a área for rural|A densidade média não descreve a distribuição local.
Qual faixa aparece na base da pirâmide etária?|Os mais jovens|Os mais idosos|A idade mediana|As faixas aparecem em ordem de idade, das mais jovens na base às mais velhas no topo.
Qual mudança pode elevar a participação dos idosos ao longo do tempo?|Queda persistente da fecundidade|Aumento permanente dos nascimentos|Saída seletiva de idosos|Menos nascimentos reduzem o peso relativo das gerações jovens.
O que mede a taxa bruta de natalidade?|Nascimentos por mil habitantes em um período|Filhos por mulher ao longo da vida|Imigrantes por mil habitantes|A taxa relaciona nascimentos e população total, geralmente em um ano.
Qual indicador estima o número médio de filhos por mulher sob as taxas observadas?|Taxa de fecundidade total|Taxa bruta de mortalidade|Densidade demográfica|A fecundidade total sintetiza as taxas por idade das mulheres.
Quando o crescimento natural é negativo?|Quando as mortes superam os nascimentos|Quando as saídas superam as entradas|Quando a densidade cai em um bairro|O crescimento natural considera apenas nascimentos e mortes.
Uma cidade ganha 300 pessoas pelo crescimento natural e perde 500 pelo saldo migratório. Qual a variação total?|−200 pessoas|+200 pessoas|+800 pessoas|A variação é a soma de +300 e −500.
Um município perde 40 pessoas no crescimento natural e ganha 100 por migração. Qual a variação?|+60 pessoas|−60 pessoas|+140 pessoas|Some −40 e +100.
Para a cidade de origem, como se classifica a saída de um morador que muda de residência?|Emigração|Imigração|Natalidade|Emigração designa a saída do território de referência.
Uma estudante viaja diariamente para outro município e volta para casa. Qual é o tipo de deslocamento?|Pendular|Emigração definitiva|Imigração internacional|O deslocamento é recorrente e ocorre sem mudança de residência.
Que dado mede a variação por migrações sem considerar nascimentos?|Saldo migratório|Crescimento natural|População absoluta|O saldo considera entradas e saídas.
Qual é a densidade de um município de 45.000 habitantes e 500 km²?|90 hab/km²|9 hab/km²|900 hab/km²|45.000 ÷ 500 = 90.
Duas cidades têm a mesma área. Qual delas é mais densamente povoada?|A que tem mais moradores|A que tem mais nascimentos por ano|A que tem maior saldo migratório|Para a mesma área, a densidade aumenta com a população total.
A população de uma cidade caiu apesar de haver mais nascimentos que mortes. O que pode explicar isso?|As saídas líquidas superaram o crescimento natural|A imigração superou a emigração|O crescimento natural foi negativo|Um saldo migratório negativo pode superar o crescimento natural positivo.
`,
  'relevo-hidrografia': `
O que separa duas bacias hidrográficas vizinhas?|Divisor de águas|Foz do rio principal|Leito de um afluente|O divisor é um limite do relevo que direciona o escoamento para lados diferentes.
Uma rocha se fragmenta no local, sem transporte dos fragmentos. Qual processo ocorreu?|Intemperismo|Erosão fluvial|Sedimentação|O intemperismo altera ou fragmenta a rocha onde ela se encontra.
Qual efeito tende a ocorrer quando o solo de uma área urbana é impermeabilizado?|O escoamento superficial aumenta|A infiltração aumenta|A chuva deixa de alcançar os córregos|A superfície impermeável dificulta a entrada de água no solo e favorece o escoamento.
Como se chama um curso de água que deságua em outro rio?|Afluente|Divisor de águas|Nascente|O afluente contribui com água para outro curso.
Um rio perde velocidade e deixa parte da areia no leito. Qual processo isso exemplifica?|Deposição|Intemperismo|Infiltração|Com menor capacidade de transporte, a corrente deposita parte dos sedimentos.
Qual informação as curvas de nível representam?|Altitude|Vazão|Tipo de vegetação|Cada curva liga pontos de mesma altitude.
Em um mapa com a mesma equidistância vertical, o que indicam curvas de nível muito próximas?|Encosta íngreme|Planície sem desníveis|Rio com grande vazão|Uma mesma variação de altitude ocorre em menor distância horizontal.
Em condições naturais, para onde escoa a água na superfície?|Para cotas mais baixas|Sempre para o norte|Sempre para a bacia de maior área|A gravidade conduz a água no sentido da descida.
Como se chama o trecho em que um rio deságua em outro corpo d’água?|Foz|Nascente|Divisor|A foz marca a saída do curso para outro rio, lago ou mar.
Em qual sentido se encontra um ponto a montante?|Na direção da nascente|Na direção da foz|Sempre no sentido leste|Montante indica a direção contrária à corrente.
Em qual sentido se encontra um ponto a jusante?|No sentido do escoamento|Na direção da nascente|No sentido contrário ao declive|Jusante é a direção em que a água segue para a saída.
Qual é o papel da mata ciliar nas margens de um rio?|Ajudar a estabilizar as margens e reter sedimentos|Impedir toda infiltração|Aumentar a velocidade da água em todas as situações|Raízes estabilizam o solo e a vegetação intercepta parte dos materiais.
Que medida favorece a infiltração em um estacionamento?|Pavimento permeável|Revestimento contínuo de concreto|Vedação de juntas e poros|Uma superfície permeável permite a passagem de parte da água.
Que processo pode levar à redução da profundidade de um reservatório?|Assoreamento|Intemperismo no local sem transporte|Evaporação sem deposição|O assoreamento é o acúmulo de sedimentos no leito.
O que favorece a erosão hídrica numa lavoura de encosta?|Solo exposto em período chuvoso|Cobertura permanente do solo|Cultivo em curvas de nível|A chuva atinge diretamente o solo exposto e o escoamento pode carregar partículas.
Qual exemplo representa intemperismo químico?|Dissolução de uma rocha calcária pela água|Transporte de areia por um rio|Acúmulo de lama na foz|A dissolução altera a rocha onde ela se encontra.
Por que um mesmo rio pode receber poluentes lançados longe de seu leito principal?|Afluentes e escoamento conectam áreas da bacia|A bacia sempre segue os limites de um município|Toda a água subterrânea escoa para o mar sem passar por rios|A rede de drenagem reúne água de diferentes partes da bacia.
Como a retirada de vegetação em uma encosta pode afetar o córrego abaixo?|Pode aumentar a chegada de sedimentos|Pode impedir o transporte de partículas|Pode deslocar o divisor sem alterar o relevo|A perda de cobertura favorece a erosão e o transporte de materiais pela água.
Que condição favorece a deposição de partículas carregadas por uma corrente?|Redução da velocidade do fluxo|Aumento da capacidade de transporte|Aumento do declive com maior velocidade|Fluxos mais lentos tendem a perder capacidade de transportar sedimentos.
Qual mapa ajuda a identificar divisores de águas?|Mapa topográfico com curvas de nível|Mapa de fusos horários|Mapa de idiomas|As curvas de nível mostram as elevações que separam as direções do escoamento.
`,
  'espaco-agrario': `
Uma área de 60 hectares produz 300 toneladas. Qual é a produtividade por hectare?|5 t/ha|50 t/ha|18.000 t/ha|Divida a produção pela área cultivada. São 300 ÷ 60 = 5 t/ha.
O que indica concentração fundiária?|Poucos estabelecimentos ocupam grande parte da área|Todos os estabelecimentos têm áreas semelhantes|Todas as lavouras produzem a mesma cultura|A concentração diz respeito à distribuição da área entre estabelecimentos.
A colheita passou de 200 para 300 toneladas e a área, de 40 para 60 hectares. O que ocorreu com a produtividade?|Permaneceu em 5 t/ha|Aumentou para 7,5 t/ha|Caiu para 3,3 t/ha|Os dois períodos têm a mesma razão entre produção e área.
Qual atividade integra a cadeia produtiva do café depois da colheita?|Torrefação e distribuição|Apenas a compra de sementes|Apenas a preparação do solo|Processamento e distribuição ligam o cultivo aos mercados consumidores.
Qual prática tende a reduzir a perda de solo em lavouras inclinadas?|Cultivo em curvas de nível|Sulcos no sentido da maior inclinação|Retirada de toda a cobertura do solo|As curvas de nível ajudam a desacelerar o escoamento ao cruzar o sentido da descida.
O que mede a produção agrícola de uma fazenda?|A quantidade total colhida|O rendimento por hectare|O número de propriedades vizinhas|Produção é o volume total obtido no período.
Com 25 hectares e produtividade de 4 t/ha, qual a produção?|100 t|29 t|6,25 t|Multiplique 25 hectares por 4 toneladas por hectare.
Uma fazenda colhe 360 t a 6 t/ha. Qual área foi cultivada?|60 ha|2.160 ha|6 ha|Divida 360 toneladas por 6 toneladas por hectare.
Duas propriedades produzem 200 t. Qual tem maior produtividade por hectare?|A que usa menor área|A que usa maior área|As duas sempre têm a mesma produtividade|Com produção igual, uma área menor indica maior produção por hectare.
A produção sobe de 100 t para 120 t com área constante. Em quanto cresce a produtividade?|20%|120%|2%|Com área constante, a produtividade cresce na mesma proporção que a produção.
Qual atividade fornece insumos para uma cadeia agrícola?|Produção de fertilizantes|Venda da colheita ao consumidor|Beneficiamento do grão colhido|Fertilizantes são insumos usados na etapa de cultivo.
Qual é a função do armazenamento de grãos na cadeia?|Conservar a colheita até o processamento ou a venda|Aumentar a área plantada|Substituir a etapa de colheita|O armazenamento conecta a colheita a etapas posteriores.
Por que o transporte influencia a localização da produção?|Afeta o custo para levar insumos e mercadorias|Determina sozinho a fertilidade do solo|Elimina a necessidade de armazenamento|Distâncias e infraestrutura interferem nos custos de circulação.
O que caracteriza uma monocultura em uma área cultivada?|Predomínio de uma única espécie cultivada|Alternância planejada de espécies ao longo do tempo|Cultivo simultâneo de várias espécies em proporções semelhantes|Monocultura descreve o predomínio de um cultivo.
O que é rotação de culturas?|Alternar cultivos na mesma área ao longo do tempo|Mudar os limites de cada propriedade|Plantar sempre a mesma espécie|A rotação organiza a sucessão de espécies em um mesmo terreno.
Que efeito a cobertura vegetal entre safras pode ter?|Proteger o solo do impacto das gotas de chuva|Aumentar a exposição direta do solo|Eliminar toda necessidade de manejo|A cobertura amortece o impacto da chuva e ajuda a reduzir a erosão.
Por que a expansão agrícola pode alterar habitats?|Pode substituir vegetação nativa por áreas de cultivo|Aumenta automaticamente a vegetação nativa|Reduz necessariamente a demanda por terra|A mudança de uso do solo pode transformar ou fragmentar habitats.
Qual dado ajuda a avaliar a distribuição fundiária?|Área ocupada por estabelecimentos de diferentes tamanhos|Preço médio do produto na feira|Temperatura média durante a colheita|A distribuição relaciona o tamanho dos estabelecimentos à área que ocupam.
A mecanização aumentou a colheita por hectare com a mesma área. Qual indicador aumentou?|Produtividade por área|Área cultivada|Concentração fundiária necessariamente|Mais produção na mesma área eleva o rendimento por hectare.
Qual medida distingue aumento de produtividade de simples expansão da lavoura?|Comparar as toneladas por hectare antes e depois|Comparar apenas a colheita total|Contar somente as culturas plantadas|A razão entre produção e área revela se houve ganho por hectare.
`,
  'grandes-navegacoes': `
Por que as especiarias atraíam comerciantes europeus?|Tinham alto valor comercial|Eram gratuitas em todos os portos|Só existiam em Portugal|O valor de produtos asiáticos estimulava a busca de lucros e de controle das rotas.
Qual condição favoreceu o pioneirismo português?|Articulação entre Coroa e negociantes|Ausência de experiência marítima|Isolamento de todos os mercados|Financiamento, experiência náutica e consolidação da monarquia atuaram em conjunto.
O que a bússola auxiliava a determinar?|A orientação da embarcação|A profundidade exata de qualquer oceano|O volume de especiarias|A bússola indica direções e integra o conjunto de instrumentos de navegação.
O astrolábio podia auxiliar na estimativa de qual coordenada?|Latitude|Longitude por cronômetro moderno|Altitude do fundo oceânico|A altura dos astros sobre o horizonte ajudava a estimar a latitude.
O que era a volta do mar?|Uso de ventos e correntes em trajetos pelo oceano|Obrigação de navegar sempre junto à costa|Viagem que dispensava conhecimentos náuticos|Afastar-se da costa podia permitir aproveitar ventos mais favoráveis ao retorno.
Qual rota Portugal buscou para chegar à Ásia?|Contornar a África|Atravessar o canal do Panamá no século XV|Cruzar a América por ferrovia|A exploração do litoral africano abriu o caminho marítimo pelo sul da África.
Onde Colombo chegou em 1492?|Caribe|Calicute|Japão|A expedição pretendia alcançar a Ásia pelo oeste, mas chegou às Américas.
Qual navegador chegou a Calicute em 1498?|Vasco da Gama|Cristóvão Colombo|Pedro Álvares Cabral em 1415|Vasco da Gama alcançou a Índia pela rota que contornava a África.
Qual foi o papel de Bartolomeu Dias em 1488?|Contornar o extremo sul africano|Conquistar o Império Asteca|Concluir a primeira circum-navegação|Sua viagem demonstrou a possibilidade de prosseguir do Atlântico ao Índico pelo sul da África.
Uma feitoria era principalmente um estabelecimento de quê?|Comércio e apoio às rotas|Representação eleita pelos povos colonizados|Produção industrial a vapor|Feitorias podiam ser fortificadas e apoiar negócios e controle de pontos estratégicos.
Quem concluiu o comando da primeira circum-navegação?|Juan Sebastián Elcano|Fernão de Magalhães, que sobreviveu a toda a viagem|Colombo em 1492|Magalhães iniciou a expedição, mas morreu durante o percurso; Elcano comandou seu trecho final.
Qual ano marca o Tratado de Tordesilhas?|1494|1415|1822|O tratado de 1494 estabeleceu uma linha de partilha entre as duas Coroas ibéricas.
A linha de Tordesilhas ficava a 370 léguas a oeste de qual referência?|Cabo Verde|Japão|Rio da Prata|Cabo Verde foi a referência usada na definição da linha do tratado.
O que exemplifica a troca colombiana?|Circulação de plantas, animais e doenças entre continentes|Intercâmbio restrito a moedas|Ausência de mudanças ambientais|O intercâmbio alterou alimentação, ecossistemas e dinâmicas populacionais.
Que fator contribuiu para a queda demográfica indígena após a conquista?|Epidemias e violência colonial|Fim de todas as doenças|Migração voluntária de toda a população à Europa|Doenças, guerras, deslocamentos e exploração do trabalho causaram perdas enormes.
Como interpretar a tomada de Constantinopla em relação à expansão?|Não interrompeu completamente o comércio oriental|Fechou todas as rotas sem exceção|Iniciou sozinha toda a navegação portuguesa|A expansão portuguesa já ocorria antes de 1453 e teve diversas causas.
O uso do termo descobrimento exige qual cuidado?|Reconhecer os povos que já habitavam as terras|Tratar as Américas como desabitadas|Negar a existência de sociedades indígenas|A perspectiva europeia da chegada não elimina as histórias dos habitantes anteriores.
`,
  'america-espanhola': `
Qual civilização tinha Tenochtitlán como centro político?|Mexica ou asteca|Inca|Romana|Tenochtitlán era o centro de um império mesoamericano baseado também em tributos.
Qual cidade era o principal centro político inca?|Cusco|Madri|Tenochtitlán|Cusco articulava o poder do império andino.
Quem liderou a expedição espanhola contra os mexicas?|Hernán Cortés|Francisco Pizarro|Simón Bolívar|Cortés explorou alianças e conflitos locais na conquista do México.
Quem liderou a conquista espanhola do centro do Império Inca?|Francisco Pizarro|Hernán Cortés|José de San Martín|Pizarro atuou nos Andes durante uma crise política interna inca.
Por que alianças indígenas foram importantes na conquista?|Grupos locais tinham interesses e conflitos próprios|Todos os indígenas apoiavam os espanhóis|Não existiam disputas políticas locais|A conquista envolveu agentes indígenas e alianças circunstanciais, além da força espanhola.
Qual foi um efeito das epidemias na conquista?|Enfraquecimento demográfico de populações indígenas|Imunidade imediata de todos os habitantes|Fim das guerras sem perdas|Doenças introduzidas contribuíram para a mortalidade e a desorganização social.
O que a encomienda concedia ao encomendero?|Direito de exigir tributos e trabalho sob obrigações coloniais|Propriedade automática de todo indígena|Mandato democrático universal|A instituição impunha exploração e era justificada por deveres de proteção e evangelização.
Qual atividade se destacou em Potosí?|Mineração de prata|Indústria automobilística|Cultivo exclusivo de café|A prata de Potosí foi central para a economia colonial e seus circuitos comerciais.
O que caracterizava a mita colonial?|Recrutamento compulsório de trabalho por turnos|Trabalho sempre voluntário e sem coerção|Voto indígena nos vice-reinos|A administração colonial adaptou uma instituição andina para explorar trabalho, sobretudo na mineração.
Qual função tinham os vice-reis?|Representar a autoridade da Coroa|Governar repúblicas independentes|Eliminar a fiscalização real|Os vice-reinos ajudavam a administrar territórios coloniais extensos.
Quem eram os criollos?|Descendentes de espanhóis nascidos na América|Todos os africanos escravizados|Funcionários nascidos exclusivamente na Espanha|A origem americana distinguia os criollos dos peninsulares na hierarquia colonial.
Quem eram os peninsulares na sociedade colonial?|Espanhóis nascidos na Península Ibérica|Somente indígenas dos Andes|Todos os mestiços americanos|Peninsulares tinham acesso privilegiado a diversos postos de administração.
O que eram cabildos?|Órgãos de administração local|Rotas marítimas asiáticas|Unidades de mineração|Os cabildos participavam do governo das cidades e expressavam interesses de elites locais.
Qual objetivo orientava o controle comercial metropolitano?|Canalizar a riqueza colonial para a Coroa e comerciantes autorizados|Garantir livre-comércio irrestrito|Encerrar qualquer transporte de metais|A metrópole regulava portos, rotas, tributos e agentes comerciais.
Qual dimensão acompanhou a conquista além da militar?|Evangelização e disputas culturais|Eliminação de toda religião europeia|Separação absoluta entre Igreja e colonização|A conversão religiosa foi parte do projeto colonial e encontrou negociações e resistências.
As resistências indígenas assumiram qual forma?|Revoltas, negociações e preservação de práticas|Somente aceitação passiva|Ausência de qualquer ação coletiva|Povos indígenas responderam de maneiras diversas à dominação colonial.
Por que não se deve explicar a conquista só pelas armas?|Epidemias, alianças e crises políticas também importaram|As armas nunca foram usadas|Os impérios não tinham organização política|A conquista resultou da combinação de condições militares, sociais e políticas.
`,
  'america-inglesa': `
Qual região abrigava as Treze Colônias inglesas?|Costa atlântica da América do Norte|Litoral do Pacífico sul-americano|Interior da Austrália|A colonização inglesa que originou os Estados Unidos se concentrou inicialmente no litoral atlântico norte-americano.
Qual assentamento inglês foi fundado na Virgínia em 1607?|Jamestown|Cusco|Quebec francês em 1607|Jamestown foi uma das primeiras povoações inglesas permanentes da região.
Qual cultivo teve destaque na Virgínia colonial?|Tabaco|Seringueira amazônica|Oliveira como monocultura dominante|A produção de tabaco foi importante para a economia de exportação da Virgínia.
Que perfil econômico predominou em muitas áreas da Nova Inglaterra?|Agricultura familiar, comércio e atividades marítimas|Somente mineração de prata|Monocultura tropical idêntica em toda a região|Condições locais favoreceram atividades diversificadas, sem eliminar desigualdades ou formas de coerção.
Que sistema marcou parte do sul colonial?|Grandes propriedades exportadoras com escravidão|Ausência de produção agrícola|Proibição de trabalho escravizado desde a fundação|Plantations se articularam a mercados atlânticos e ao tráfico de africanos escravizados.
O que era a servidão por contrato?|Trabalho por período determinado em troca de condições pactuadas|Escravidão necessariamente hereditária|Trabalho sempre sem dependência|Migrantes podiam trabalhar por anos para pagar a viagem, sob relações frequentemente duras.
Como a escravidão se diferenciava da servidão temporária?|Podia ser vitalícia e hereditária|Terminava sempre em um ano|Garantia igualdade jurídica aos escravizados|A escravidão racializada transformou pessoas e descendentes em propriedade segundo leis coloniais.
Que papel tiveram conflitos religiosos na migração?|Motivaram parte dos deslocamentos para as colônias|Explicaram sozinhos toda a colonização|Impediram a presença de protestantes|Religião se combinou a interesses econômicos, políticos e territoriais.
As colônias puritanas garantiam tolerância religiosa universal?|Não, também impunham normas e excluíam dissidentes|Sim, sem qualquer restrição|Não possuíam instituições religiosas|Buscar liberdade para um grupo não significava garanti-la a todos.
Qual era uma função das assembleias coloniais?|Participar do governo local|Assegurar voto de todos os habitantes|Abolir automaticamente a autoridade inglesa|A representação colonial coexistia com exclusões de mulheres, indígenas, escravizados e outros grupos.
O que regulavam os Atos de Navegação?|Comércio e transporte no império inglês|Somente pesca indígena|Eleição do presidente dos Estados Unidos|As leis buscavam favorecer a metrópole e seus agentes nos circuitos comerciais.
Que efeito a Guerra dos Sete Anos teve sobre a política britânica?|Incentivou maior cobrança e controle colonial|Eliminou as dívidas britânicas|Deu independência imediata às colônias|Custos da guerra ajudaram a motivar medidas fiscais que geraram conflitos.
Qual reivindicação aparece em sem representação não há tributação?|Consentimento político para a cobrança de impostos|Apoio a impostos sem debate|Fim de toda assembleia local|Colonos contestavam tributos impostos por um Parlamento no qual não tinham representantes próprios.
Em que ano foi proclamada a independência dos Estados Unidos?|1776|1492|1889|A Declaração de Independência foi aprovada em 1776, durante a guerra.
Que contradição acompanhou a independência?|Defesa da liberdade junto à permanência da escravidão|Abolição imediata em todo o território|Igualdade política imediata de todos|Princípios de liberdade coexistiram com exclusões e exploração.
A expansão colonial sobre terras indígenas produziu o quê?|Conflitos, expulsões e resistências|Apenas acordos entre partes com poder igual|Ausência de mudanças territoriais|A ocupação europeia restringiu territórios e afetou modos de vida indígenas.
Por que evitar a divisão rígida entre colônias de povoamento e exploração?|Todas integravam relações econômicas e formas de exploração|O norte não fazia comércio|O sul não tinha moradores permanentes|A distinção simplifica realidades regionais diversas e interligadas ao Atlântico.
`,
  'sociedades-africanas': `
O que as rotas transaarianas conectavam?|Regiões ao sul do Saara e o norte africano|Somente ilhas do Pacífico|Exclusivamente cidades americanas|Rotas pelo deserto articulavam mercados e sociedades africanas.
Quais produtos foram importantes no comércio transaariano?|Ouro e sal|Petróleo e automóveis medievais|Somente trigo europeu|O ouro do oeste africano e o sal do deserto integravam circuitos de longa distância.
Qual império se associa a Mansa Musa?|Mali|Romano|Asteca|Mansa Musa governou o Mali e sua peregrinação tornou conhecida sua riqueza.
Que atividade destacou cidades como Tombuctu?|Comércio e estudo islâmico|Indústria aeronáutica medieval|Isolamento de todas as rotas|Tombuctu integrou redes mercantis e de produção e circulação de conhecimento.
Qual cidade foi importante no Império Songhai?|Gao|Lisboa|Atenas|Gao foi um centro político e comercial do Songhai.
Como o islamismo se difundiu em partes da África?|Por comércio, redes de estudiosos e processos políticos|Por um único evento simultâneo em todo o continente|Sem qualquer contato entre sociedades|A difusão foi gradual, regionalmente variada e articulada a diferentes agentes.
O que caracterizava as cidades suaílis?|Conexões comerciais no oceano Índico|Ausência de contatos marítimos|Localização exclusiva no Saara|Cidades da costa oriental africana articulavam redes com mercadores de outras regiões do Índico.
A cultura suaíli resultou de quê?|Processos africanos e contatos culturais no Índico|Substituição completa de toda cultura africana|Uma origem europeia moderna exclusiva|Língua e cultura suaílis expressam formação histórica africana e intercâmbios.
O Grande Zimbábue se destaca por quais vestígios?|Construções de pedra|Pirâmides maias|Fábricas a vapor medievais|As construções evidenciam organização política e técnicas de sociedades da África austral.
Qual afirmação reconhece a diversidade política africana?|Havia reinos, impérios e outras formas de organização|Todo o continente formava um único Estado|Nenhuma sociedade tinha autoridades|As organizações políticas variavam no tempo e entre regiões.
O Reino do Congo mantinha relações com qual potência a partir do fim do século XV?|Portugal|Japão exclusivamente|Estados Unidos já independente|Contatos envolveram diplomacia, cristianização, comércio e conflitos.
Que cuidado exige o estudo da tradição oral?|Analisar contexto, transmissão e finalidade|Descartá-la como incapaz de transmitir história|Aceitá-la sem qualquer análise|Fontes orais, como escritas e materiais, exigem procedimentos críticos.
Quais evidências podem contribuir para estudar sociedades africanas?|Arqueologia, fontes orais e registros escritos|Somente relatos de conquistadores|Apenas documentos europeus do século XX|Fontes variadas permitem confrontar perspectivas e ampliar o conhecimento histórico.
Por que distinguir escravidões africanas do tráfico atlântico?|Escala, relações jurídicas e contextos variaram|Todas foram sempre idênticas|O tráfico atlântico não envolveu violência|É preciso examinar mudanças históricas sem minimizar a violência de nenhuma forma de escravização.
Qual impacto o tráfico atlântico teve em várias regiões?|Violência, deslocamentos e transformações políticas|Igualdade social automática|Desaparecimento de todo comércio|A demanda externa por cativos afetou conflitos, economias e populações.
Como os africanos escravizados atuaram nas Américas?|Preservaram e recriaram práticas e formas de resistência|Perderam toda capacidade de agir|Não influenciaram culturas americanas|A violência não eliminou a agência histórica nem a produção cultural dos escravizados.
Por que não tratar África como um país?|O continente reúne sociedades e trajetórias diversas|Todas as sociedades falam a mesma língua|Existe uma única história política africana|Diversidade regional e temporal é indispensável à análise histórica.
`,
  'africa-antiga': `
Em qual continente se localiza o Egito antigo?|África|Europa|América|O Egito se desenvolveu no nordeste africano, conectado a outras regiões.
Qual rio foi central para Egito e Núbia?|Nilo|Amazonas|Danúbio|O vale do Nilo abrigou sociedades com interações econômicas e políticas.
Onde se localizava a Núbia em relação ao Egito?|Ao sul, no vale do Nilo|Na Península Ibérica|Na América Central|A Núbia compreendia áreas do atual sul do Egito e do Sudão.
Qual reino se associou a centros como Napata e Méroe?|Kush|Mali medieval|Império Inca|Napata e Méroe foram importantes centros políticos kushitas em momentos diferentes.
O que a dinastia kushita que governou o Egito evidencia?|Relações de poder também partiram do sul|Dominação egípcia sem qualquer mudança|Ausência de contatos entre os povos|A chamada XXV dinastia mostra a atuação política de governantes kushitas no Egito.
A produção de ferro costuma ser associada a qual centro kushita?|Méroe|Tenochtitlán|Versalhes|Méroe foi um centro importante de atividades produtivas, inclusive metalúrgicas.
Qual cidade do norte africano disputou poder com Roma?|Cartago|Cusco|Tombuctu no século III a.C.|Cartago foi uma potência mediterrânica sediada na atual Tunísia.
Como se chamam os conflitos entre Roma e Cartago?|Guerras Púnicas|Guerras Napoleônicas|Guerra dos Cem Anos|As Guerras Púnicas ocorreram entre os séculos III e II a.C.
Qual general cartaginês atravessou os Alpes em campanha contra Roma?|Aníbal|Júlio César|Alexandre de Mali|Aníbal conduziu uma ofensiva célebre durante a Segunda Guerra Púnica.
Qual reino se destacou no Chifre da África e no mar Vermelho?|Aksum|Asteca|Visigodo|Aksum articulou poder político e comércio em conexões com o mar Vermelho.
Que prática monetária demonstra a inserção comercial de Aksum?|Cunhagem de moedas|Uso exclusivo de cartões bancários|Proibição de trocas|Moedas aksumitas ajudam a estudar poder real e circulação comercial.
Qual religião foi adotada pela monarquia aksumita no século IV?|Cristianismo|Protestantismo luterano|Budismo zen estatal|A cristianização de Aksum é anterior à colonização europeia moderna.
Que rota foi importante para os contatos de Aksum?|Mar Vermelho e Índico|Canal do Panamá antigo|Somente Atlântico Sul|A localização favorecia intercâmbios entre África, Arábia e outras áreas.
Qual evidência material ajuda a estudar Kush?|Pirâmides e vestígios urbanos|Somente arranha-céus industriais|Exclusivamente jornais modernos|Monumentos, sepultamentos e cidades fornecem informações sobre organização social e política.
Mali e Songhai pertencem ao mesmo contexto principal de Cartago antiga?|Não, destacaram-se em períodos posteriores|Sim, foram províncias cartaginesas|Sim, não há diferenças cronológicas|Reunir sociedades africanas sem datas apaga diferenças históricas fundamentais.
Como entender influências entre Egito e Kush?|Como intercâmbios com apropriações locais|Como prova de ausência de cultura kushita|Como contato exclusivamente europeu|Sociedades adaptam práticas e produzem formas próprias nas relações com vizinhos.
Por que relativizar a periodização europeia ao estudar África?|Ela não descreve igualmente todas as trajetórias africanas|A África não possui cronologia|Todos os povos mudaram na mesma data|Antiguidade e Idade Média são categorias construídas a partir de determinadas experiências históricas.
`,
  'egito-antigo': `
Por que as cheias do Nilo eram importantes?|Favoreciam a fertilidade das áreas cultivadas|Tornavam toda agricultura impossível|Eliminavam a necessidade de trabalho|O aproveitamento das cheias exigia técnicas e organização do trabalho.
Qual era o papel do faraó?|Autoridade política ligada à ordem religiosa|Representante eleito por sufrágio universal|Comerciante sem funções de governo|O poder faraônico integrava administração, religião e comando político.
Como se chamavam importantes unidades regionais do Egito?|Nomos|Pólis gregas|Vice-reinos espanhóis|Nomos eram unidades territoriais com administração local.
Qual grupo dominava técnicas de escrita e registro?|Escribas|Servos medievais europeus|Cavaleiros feudais|Escribas atuavam em tributos, registros e administração.
Para que serviam muitos registros egípcios?|Administrar produção, tributos e bens|Garantir voto universal|Proibir qualquer comércio|A escrita possuía usos administrativos além dos religiosos e monumentais.
Qual suporte de escrita era produzido com uma planta do Nilo?|Papiro|Papel industrial de celulose moderno|Pergaminho de bronze|O papiro era preparado a partir de uma planta associada ao ambiente nilótico.
O que eram hieróglifos?|Sinais de um sistema de escrita|Moedas de ouro|Instrumentos de irrigação|A escrita hieroglífica combinava sinais de diferentes funções.
Qual crença ajuda a explicar a mumificação?|Continuidade da existência após a morte|Negação de toda vida após a morte|Obrigatoriedade de cremação universal|A preservação corporal integrava concepções religiosas e práticas funerárias.
O que o politeísmo egípcio significa?|Culto a diferentes divindades|Ausência de religião|Culto exclusivo a uma única divindade em toda a história|As práticas religiosas egípcias foram variadas e mudaram ao longo do tempo.
Qual divindade se associava ao mundo dos mortos e ao julgamento funerário?|Osíris|Zeus|Marte|Osíris ocupava papel central em concepções funerárias egípcias.
O que as pirâmides evidenciam além de crenças religiosas?|Mobilização de trabalho e recursos pelo Estado|Ausência de planejamento|Construção sem conhecimento técnico|Essas obras exigiam organização, abastecimento e conhecimentos especializados.
Quem compunha grande parte da base produtiva egípcia?|Camponeses|Somente sacerdotes|Exclusivamente soldados estrangeiros|A produção agrícola sustentava tributos e outros setores da sociedade.
Qual afirmação evita um estereótipo sobre as pirâmides?|Equipes organizadas de trabalhadores participaram das construções|Todas foram feitas apenas por escravizados estrangeiros|Ninguém trabalhava nessas obras|As evidências mostram formas variadas de mobilização e manutenção de trabalhadores.
O que períodos intermediários indicam?|Momentos de fragmentação ou reorganização do poder|Ausência total de história|Continuidade política sem mudanças|A história egípcia alternou centralização, disputas e transformações.
Qual período se associa à expansão militar egípcia na Núbia e no Levante?|Novo Império|Revolução Industrial|República Romana tardia|O Novo Império foi marcado por expansão territorial e relações intensas com outras regiões.
Como entender a relação entre Egito e outros povos?|Houve comércio, guerras e intercâmbios culturais|O Egito viveu sempre isolado|Nunca existiram contatos africanos|O Egito participou de redes africanas, mediterrânicas e asiáticas.
Qual fonte permite estudar a vida material egípcia?|Vestígios de moradias, objetos e sepultamentos|Somente filmes de ficção|Apenas lendas sem contexto|Arqueologia e documentos devem ser cruzados para investigar diferentes grupos sociais.
`,
  'antiguidade-classica': `
O que era uma pólis grega?|Comunidade política com centro urbano e território|Uma província brasileira|Um império grego único e permanente|As pólis tinham instituições e trajetórias próprias.
Qual grupo tinha participação política na democracia ateniense clássica?|Homens adultos reconhecidos como cidadãos|Todos os habitantes sem distinção|Somente reis hereditários|Mulheres, escravizados e estrangeiros residentes eram excluídos da cidadania política.
Como se realizava parte da participação democrática ateniense?|Diretamente em assembleias de cidadãos|Somente por presidentes eleitos|Exclusivamente por imperadores|A participação era direta, mas restrita ao corpo cívico.
Quem eram os metecos em Atenas?|Estrangeiros residentes|Todos os magistrados|Mulheres atenienses|Metecos podiam atuar na economia, mas não tinham a cidadania política ateniense.
Qual característica se associa à educação espartana dos cidadãos homens?|Formação militar e disciplina coletiva|Preparação exclusiva para navegação oceânica|Rejeição de todo treinamento físico|A organização espartana valorizava a preparação militar do grupo cidadão.
Quem eram os hilotas?|Populações submetidas a trabalho compulsório em Esparta|Reis de Atenas|Senadores romanos|O trabalho dos hilotas sustentava parte importante da sociedade espartana.
As Guerras Médicas envolveram principalmente quais adversários?|Pólis gregas e Império Persa|Roma e Cartago|Portugal e Espanha|Os conflitos contra os persas ocorreram no início do século V a.C.
A Guerra do Peloponeso opôs sobretudo quais alianças?|Atenas e Esparta com seus aliados|Roma e Egito moderno|Mali e Songhai|A disputa pela hegemonia grega desgastou as pólis no século V a.C.
O que se chama de helenismo?|Difusão e transformação da cultura grega em contatos com outros povos|Ausência de contato cultural|Cultura restrita à Atenas democrática|As conquistas de Alexandre ampliaram intercâmbios pelo Mediterrâneo oriental e pela Ásia.
Quem eram os patrícios na Roma republicana?|Integrantes de famílias aristocráticas tradicionais|Todos os escravizados|Somente estrangeiros sem direitos|A distinção entre patrícios e plebeus marcou conflitos políticos romanos.
Qual cargo surgiu ligado à defesa política da plebe?|Tribuno da plebe|Faraó|Estratego espartano hereditário|Tribunos podiam defender interesses plebeus e exercer poder de veto em determinadas condições.
Qual importância se associa à Lei das Doze Tábuas?|Registro escrito de normas jurídicas|Abolição imediata da escravidão|Criação do cristianismo|A fixação escrita de normas foi uma conquista nas disputas políticas da República.
Qual instituição tinha grande influência na República Romana?|Senado|Parlamento britânico|Cabildo colonial|O Senado reunia membros da elite e influenciava decisões políticas e administrativas.
Como a expansão romana afetou a escravidão?|Conquistas ampliaram a oferta de pessoas escravizadas|Eliminou todo trabalho escravo|Garantiu liberdade automática aos vencidos|Guerras e comércio alimentaram a exploração escravista romana.
Qual processo marcou a transição da República ao Império?|Concentração de poder após disputas e guerras civis|Voto universal de todos os habitantes|Fim do exército romano|Crises sociais e militares favoreceram a concentração de autoridade em governantes.
Qual sentido histórico tem a expressão pão e circo?|Distribuição de alimentos e espetáculos ligada à política urbana|Fim de todos os conflitos sociais|Igualdade econômica completa|Benefícios e espetáculos integravam relações entre governantes e população, sem explicar sozinhos a política romana.
Por que a queda de Roma no Ocidente não tem causa única?|Crises políticas, militares e econômicas se combinaram|Uma única batalha explica todo o processo|O Império permaneceu sem tensões internas|Transformações prolongadas e pressões diversas contribuíram para a fragmentação do poder ocidental.
`,
  'generos-textuais': `
Qual função destaca o emissor e seus sentimentos?|Emotiva|Referencial|Fática|A função emotiva enfatiza a subjetividade de quem enuncia.
Qual função destaca informações sobre o referente?|Referencial|Poética|Metalinguística|A função referencial focaliza a informação sobre o assunto.
Qual função testa ou mantém o canal de comunicação?|Fática|Emotiva|Referencial|Expressões como alô e está me ouvindo podem verificar o contato.
Qual função aparece quando a língua explica a própria língua?|Metalinguística|Fática|Conativa|Uma definição gramatical usa o código para explicar o próprio código.
Qual função enfatiza a construção da mensagem?|Poética|Referencial|Fática|Ritmo, sonoridade e organização expressiva podem destacar a forma da mensagem.
Qual sequência apresenta acontecimentos ao longo do tempo?|Narração|Descrição|Injunção|A narração articula ações e mudanças em uma sequência temporal.
Qual sequência caracteriza pessoas, objetos ou ambientes?|Descrição|Injunção|Argumentação|Descrever é apresentar características de um referente.
Qual sequência orienta uma ação por instruções?|Injunção|Narração|Descrição|Receitas e manuais podem utilizar sequências injuntivas.
Qual sequência defende uma posição com razões?|Argumentação|Descrição|Narração|Argumentar relaciona tese e justificativas para sustentar um ponto de vista.
Qual finalidade costuma predominar em uma notícia?|Informar sobre um acontecimento|Ensinar obrigatoriamente uma receita|Expressar apenas sentimentos privados|A notícia organiza informações de interesse público, embora suas escolhas também mereçam análise crítica.
Qual gênero costuma defender uma posição assinada sobre tema público?|Artigo de opinião|Receita culinária|Verbete de dicionário|O artigo de opinião explicita uma tese e apresenta argumentos.
Qual gênero costuma combinar instruções e lista de ingredientes?|Receita culinária|Editorial|Notícia policial|A receita orienta etapas para obter determinado resultado.
Um editorial normalmente expressa a posição de quem?|Do veículo de comunicação|De todo leitor individualmente|Somente de uma personagem fictícia|O editorial apresenta a posição institucional do veículo sobre um tema.
Uma crônica frequentemente parte de quê?|Situações do cotidiano|Resultados laboratoriais obrigatórios|Somente normas jurídicas|A crônica trabalha experiências cotidianas com diferentes recursos literários.
O público-alvo influencia qual aspecto de um texto?|Linguagem e estratégias de comunicação|Somente o número da página|Apenas o tamanho da assinatura|As escolhas textuais se relacionam aos destinatários e à finalidade.
Em um anúncio, verbos no imperativo podem buscar quê?|Orientar ou persuadir o destinatário|Apagar o interlocutor de toda comunicação|Garantir neutralidade científica|O imperativo pode convidar, aconselhar ou ordenar, conforme o contexto.
As funções da linguagem podem ocorrer juntas?|Sim, com possíveis diferenças de predominância|Não, cada texto tem obrigatoriamente uma única função|Somente em textos sem palavras|Um texto pode informar e persuadir, por exemplo, sem se limitar a uma função.
`,
  'variacao-linguistica': `
Diferenças linguísticas entre épocas exemplificam qual variação?|Histórica|Regional exclusivamente|Situacional exclusivamente|Mudanças ao longo do tempo constituem variação histórica ou diacrônica.
Diferenças ligadas a grupos sociais exemplificam qual variação?|Social|Histórica exclusivamente|Geográfica exclusivamente|A variação social se relaciona a redes e grupos de convivência.
A mudança de registro entre conversa e requerimento exemplifica qual variação?|Situacional|Apenas regional|Apenas histórica|A situação comunicativa influencia o grau de formalidade e outras escolhas.
Mandioca, aipim e macaxeira ilustram principalmente qual diferença?|Lexical regional|Ausência de regras|Incapacidade de nomear alimentos|Nomes diferentes para um mesmo referente podem refletir distribuição regional.
O que caracteriza o preconceito linguístico?|Desqualificar pessoas por sua variedade de língua|Analisar o contexto de uso|Ensinar novas formas de expressão|A discriminação confunde diferenças linguísticas com suposta inferioridade dos falantes.
Qual papel pode ter a norma-padrão?|Referência para determinados usos formais|Única forma linguística organizada|Prova de inteligência inata|A norma-padrão é uma referência convencional e não elimina outras variedades.
O ensino da norma-padrão deve permitir o quê?|Ampliar repertórios de uso|Apagar identidades culturais|Proibir toda fala familiar|Aprender usos formais amplia possibilidades de participação em diferentes contextos.
Gírias costumam se relacionar a quê?|Identificação e interação de grupos|Ausência de vocabulário|Erro que impede sempre a compreensão|Gírias podem marcar pertencimento e produzir efeitos de proximidade.
Marcas de oralidade em diálogo literário podem produzir qual efeito?|Caracterização de personagem e contexto|Prova de descuido em toda situação|Ausência de intenção expressiva|A escolha de formas orais pode ser um recurso de construção literária.
Sotaques representam diferenças principalmente em qual plano?|Pronúncia|Somente conteúdo político|Apenas tamanho das frases|Variações fonéticas fazem parte da diversidade da língua.
Uma mensagem informal é sempre inadequada?|Não, sua adequação depende do contexto|Sim, independentemente dos destinatários|Sim, porque não pode comunicar|Informalidade pode ser adequada em interações de proximidade.
O que deve orientar a análise de uma variedade em um texto?|Contexto e efeito de sentido|Suposta superioridade de uma região|Apenas preferência pessoal do leitor|A análise deve considerar quem fala, para quem, em que situação e com qual finalidade.
Formas linguísticas diferentes indicam necessariamente baixa escolaridade?|Não, diferenças têm múltiplas relações sociais e contextuais|Sim, sem exceção|Sim, inclusive toda diferença regional|Não se pode deduzir escolaridade ou capacidade intelectual por uma forma isolada.
O que é registro linguístico?|Modo de usar a língua conforme a situação|Uma língua sem gramática|Somente um sotaque regional|Registros podem variar em formalidade e outras escolhas segundo contexto e interlocutores.
Qual atitude favorece uma comunicação inclusiva?|Respeitar variedades e adequar a linguagem ao público|Ridicularizar sotaques|Impor linguagem inacessível em todo contexto|Respeito e adequação permitem ampliar o acesso sem desqualificar identidades.
Por que um falante pode mudar de registro?|Porque participa de situações e relações diferentes|Porque perdeu sua língua|Porque uma pessoa só pode ter uma forma de falar|O repertório de um falante inclui recursos usados conforme a interação.
Variação e mudança linguística são idênticas?|Não, formas podem coexistir sem que uma substitua a outra|Sim, toda variação elimina imediatamente a forma anterior|Sim, ambas impedem comunicação|Variação é coexistência de formas; mudança envolve transformações ao longo do tempo.
`,
  ecologia: `
O que inclui um ecossistema além da comunidade?|Fatores abióticos em interação|Somente predadores|Somente organismos da mesma espécie|Água, luz, solo e temperatura interagem com os componentes vivos.
Habitat corresponde a quê?|Local onde uma espécie vive|Somente seu nível trófico|Todos os seus genes|Habitat é o local de ocorrência; nicho inclui uso de recursos e relações.
O nicho ecológico envolve o quê?|Uso de recursos e relações com o ambiente|Somente a localização no mapa|Apenas o número de cromossomos|O nicho abrange aspectos funcionais e condições de existência da espécie.
Qual processo introduz carbono na matéria orgânica de produtores fotossintéticos?|Fotossíntese|Combustão|Evaporação|A fotossíntese incorpora carbono inorgânico em compostos orgânicos.
O que indicam as setas de uma cadeia alimentar?|Transferência do alimento para quem o consome|Ordem crescente de tamanho|Sempre o sentido do predador para a presa|As setas representam a direção da transferência de matéria e energia.
Qual pirâmide ecológica não se inverte?|Energia|Biomassa em todo ambiente|Número em todo ambiente|A energia disponível diminui nas transferências tróficas.
Qual papel têm decompositores?|Participar da reciclagem de nutrientes|Criar energia do nada|Atuar só sobre predadores|Decompositores transformam matéria orgânica proveniente de diferentes níveis.
O que é competição interespecífica?|Disputa de recursos entre espécies diferentes|Relação apenas entre indivíduos da mesma espécie|Benefício obrigatório para ambas as espécies|Interespecífica indica que a interação ocorre entre espécies distintas.
Qual relação beneficia o parasita e prejudica o hospedeiro?|Parasitismo|Mutualismo|Comensalismo estrito|O parasita obtém recursos do hospedeiro, causando prejuízo.
No mutualismo, qual é o efeito sobre os participantes?|Ambos se beneficiam|Ambos são necessariamente prejudicados|Um é sempre morto pelo outro|O benefício recíproco distingue o mutualismo de interações com prejuízo.
O que é capacidade de suporte?|Referência de população sustentada pelas condições ambientais|Número imutável em todo ambiente|Quantidade de espécies de todo o planeta|Recursos e condições podem mudar, alterando a população sustentável.
Qual processo torna o N₂ utilizável biologicamente por incorporação inicial?|Fixação do nitrogênio|Evaporação|Condensação|Microrganismos fixadores convertem N₂ em compostos nitrogenados assimiláveis em cadeias biológicas.
Bioacumulação é acúmulo de substância em quê?|Um organismo ao longo do tempo|Qualquer cadeia sem contato com contaminantes|Somente água destilada|A absorção pode superar a eliminação e elevar a concentração no organismo.
Biomagnificação corresponde a quê?|Aumento de concentração ao longo dos níveis tróficos|Aumento do tamanho físico dos predadores|Diluição obrigatória em cada nível|Certos contaminantes persistentes se concentram mais em níveis superiores.
Que efeito a fragmentação pode causar?|Isolamento de populações|Conexão automática de todos os habitats|Eliminação de efeitos de borda|Fragmentos podem reduzir deslocamento e fluxo gênico.
Qual medida pode melhorar conexão entre fragmentos?|Corredores ecológicos|Impermeabilização integral|Desmatamento das áreas vizinhas|Corredores podem favorecer deslocamento e conexão entre populações.
Produtores têm 5.000 kJ e a transferência é de 10%. Quanto chega aos consumidores primários?|500 kJ|5.000 kJ|50.000 kJ|Aplicando a eficiência dada: 5.000 × 0,10 = 500 kJ.
`,
  genetica: `
O que é um alelo?|Uma variante de um gene|Um organismo inteiro|Uma organela produtora de ATP|Alelos são versões de um gene em um determinado locus.
Um indivíduo com dois alelos A (AA) é classificado como quê?|Homozigoto|Heterozigoto|Hemizigoto obrigatoriamente|AA tem dois alelos iguais no locus considerado.
Um indivíduo com alelos A e a (Aa) é classificado como quê?|Heterozigoto|Homozigoto recessivo|Homozigoto dominante|Aa apresenta alelos diferentes no locus.
No modelo de dominância completa, qual genótipo expressa o caráter recessivo?|aa|AA|Aa|O fenótipo recessivo se manifesta em homozigose recessiva nesse modelo.
Em Aa × aa, qual a chance de descendente aa?|50%|25%|100%|Os gametas do primeiro são A ou a; os do segundo são a, produzindo Aa e aa em proporções iguais.
Em AA × aa, qual é o genótipo esperado dos descendentes?|Aa|AA|aa|Cada descendente recebe A de um genitor e a do outro.
Em Aa × Aa, qual a probabilidade de AA?|25%|50%|75%|Uma das quatro combinações equiprováveis é AA.
Que divisão produz gametas haploides no ciclo humano?|Meiose|Mitose|Fissão bacteriana|A meiose reduz o número cromossômico e contribui para a variabilidade.
O que ocorre no crossing-over?|Troca de segmentos entre cromátides homólogas|Duplicação de toda célula sem núcleo|Tradução de proteínas|A recombinação ocorre na prófase I da meiose e reorganiza combinações de alelos.
DNA contém qual açúcar?|Desoxirribose|Ribose|Glicose como açúcar estrutural do nucleotídeo|Nucleotídeos do DNA contêm desoxirribose.
Qual base aparece normalmente no RNA em lugar da timina?|Uracila|Adenina|Citosina|O RNA usa uracila, enquanto o DNA normalmente contém timina.
O que é transcrição?|Síntese de RNA usando DNA como molde|Síntese direta de lipídios|Duplicação de cromossomos na mitose|A informação de uma sequência de DNA é copiada para RNA.
Qual estrutura realiza a tradução?|Ribossomo|Lisossomo|Centríolo|O ribossomo lê o RNA mensageiro e participa da síntese proteica.
Qual condição permite aplicar a segregação independente de dois genes no modelo simples?|Genes em cromossomos diferentes ou sem ligação efetiva|Genes sempre totalmente ligados|Qualquer par sem analisar ligação|A ligação gênica pode alterar as proporções previstas pela segregação independente.
Um homem XY recebe seu cromossomo X de quem no modelo cromossômico usual?|Da mãe|Do pai|De ambos como um único cromossomo|No modelo usual, o óvulo fornece X e o espermatozoide fornece X ou Y.
Mutações são sempre prejudiciais?|Não, seus efeitos dependem da alteração e do contexto|Sim, sem exceção|Não, porque são sempre benéficas|Mutações podem ser neutras, prejudiciais ou vantajosas em determinados contextos.
Qual fator pode modificar o fenótipo sem alterar o genótipo?|Ambiente|Troca obrigatória de todos os alelos|Eliminação de todos os cromossomos|Nutrição e outras condições podem influenciar a expressão de características.
`,
  evolucao: `
Qual é a unidade que evolui no sentido de mudança de frequências alélicas?|População|Indivíduo por decisão consciente|Uma organela isolada|Frequências de variantes genéticas mudam entre gerações em populações.
Qual processo introduz novos alelos?|Mutação|Seleção sem variabilidade|Extinção de toda população|Alterações no DNA podem originar variantes hereditárias.
O que a recombinação produz principalmente?|Novas combinações de alelos|Sempre novos genes completos|Somente clones idênticos|A recombinação reorganiza variantes já existentes.
Fluxo gênico decorre de quê?|Movimento de alelos entre populações|Ausência completa de migração|Mudança deliberada do DNA pelo ambiente|Migração com reprodução pode transferir alelos entre populações.
O efeito fundador é um exemplo de qual processo?|Deriva genética|Uso e desuso dirigido|Herança de toda característica adquirida|Um pequeno grupo fundador pode ter frequências alélicas diferentes das da população original.
O que caracteriza um gargalo populacional?|Redução acentuada com possível perda aleatória de diversidade|Crescimento infinito de diversidade|Criação dirigida de alelos adaptativos|Poucos sobreviventes podem representar apenas parte da variação anterior.
Estruturas homólogas sugerem quê?|Ancestralidade comum|Função obrigatoriamente idêntica|Ausência de evolução|A origem evolutiva comum pode coexistir com funções atuais distintas.
Asas de aves e insetos, como órgãos de voo, exemplificam quê?|Analogia por convergência funcional|Mesma origem de todas as suas estruturas|Ausência de adaptação|Funções semelhantes podem surgir em linhagens com histórias estruturais diferentes.
O que um nó em uma árvore filogenética representa?|Ancestral comum das linhagens descendentes|Organismo necessariamente vivo hoje|Nível de perfeição|Nós representam relações de ancestralidade, não uma escala de progresso.
Qual condição é importante para especiação no conceito biológico de espécie?|Isolamento reprodutivo|Identidade visual de todos os organismos|Mudança consciente dos indivíduos|Barreiras reprodutivas reduzem troca de genes entre linhagens.
Na especiação alopátrica, que fator inicia frequentemente a separação?|Barreira geográfica|Acasalamento universal entre populações|Ausência de distância ou barreiras por definição|A separação espacial pode reduzir fluxo gênico e permitir divergência.
Antibióticos selecionam bactérias resistentes de que modo?|Favorecendo a sobrevivência e reprodução de variantes resistentes|Ensinando cada bactéria a resistir|Produzindo só mutações úteis por necessidade|A seleção altera frequências de variantes; não prevê necessidades futuras.
O uso e desuso é associado historicamente a quem?|Lamarck|Mendel como teoria evolutiva exclusiva|Watson como teoria de adaptação|Lamarck formulou uma explicação histórica distinta da seleção natural.
Qual é uma fonte de evidência evolutiva?|Fósseis e comparações genéticas|Apenas a vontade dos organismos|Somente tamanho corporal|Fontes independentes podem convergir sobre relações e mudanças evolutivas.
Uma característica vantajosa é sempre vantajosa em qualquer ambiente?|Não, depende das condições e dos custos envolvidos|Sim, por definição|Sim, se surgir em animal grande|O valor adaptativo depende do contexto ecológico e reprodutivo.
Seleção sexual se relaciona principalmente a quê?|Diferenças no sucesso de obtenção de parceiros ou fecundações|Escolha consciente dos genes pelos pais|Sobrevivência sem relação com reprodução|Características podem ser favorecidas pelo sucesso de acasalamento.
O que ocorre com a seleção natural sem variação hereditária para um caráter?|Ela não altera esse caráter por diferenças hereditárias inexistentes|Ela cria obrigatoriamente a variante necessária|Ela garante aumento de complexidade|A seleção depende de diferenças que influenciem o sucesso reprodutivo e possam ser transmitidas.
`,
  cinematica: `
Um corpo pode estar em repouso em um referencial e em movimento em outro?|Sim, movimento depende do referencial|Não, repouso é sempre absoluto|Somente se não houver tempo|A descrição da posição depende do sistema de referência adotado.
Uma volta completa termina no ponto inicial. Qual é o deslocamento?|Zero|Igual ao comprimento da pista|Sempre negativo|Deslocamento depende das posições final e inicial, que coincidem.
Um corredor percorre 400 m e volta ao início em 80 s. Qual a rapidez média?|5 m/s|0 m/s|80 m/s|Rapidez média é distância total dividida pelo tempo: 400/80.
No mesmo percurso fechado, a velocidade vetorial média é quanto?|Zero|5 m/s|400 m/s|O deslocamento total é zero, portanto sua razão pelo tempo também é zero.
Um móvel em MRU tem s₀ = 10 m e v = 3 m/s. Qual s após 5 s?|25 m|15 m|50 m|No MRU, s = s₀ + vt = 10 + 3 × 5.
Como converter 72 km/h para m/s?|Dividir por 3,6, obtendo 20 m/s|Multiplicar por 3,6, obtendo 259,2 m/s|Dividir por 72, obtendo 1 m/s|Como 1 km = 1.000 m e 1 h = 3.600 s, o fator é 1/3,6.
Um carro parte do repouso com aceleração 2 m/s² por 4 s. Qual v final?|8 m/s|2 m/s|16 m/s|v = v₀ + at = 0 + 2 × 4.
No mesmo movimento, qual o deslocamento em 4 s?|16 m|8 m|32 m|Δs = v₀t + at²/2 = 2 × 16/2.
O que representa a inclinação de um gráfico posição × tempo?|Velocidade|Massa|Energia potencial|A taxa de variação da posição com o tempo corresponde à velocidade.
O que representa a área algébrica sob um gráfico velocidade × tempo?|Deslocamento|Aceleração instantânea|Massa do móvel|A integral da velocidade ao longo do tempo fornece a variação de posição.
No gráfico velocidade × tempo, a inclinação representa quê?|Aceleração|Posição inicial obrigatoriamente|Distância total diretamente|A inclinação mede a variação da velocidade por unidade de tempo.
Velocidade negativa indica necessariamente que o corpo está freando?|Não, indica sentido oposto ao eixo positivo|Sim, sempre|Sim, se a massa for positiva|A redução da rapidez depende da relação entre velocidade e aceleração.
Velocidade e aceleração têm sinais opostos. O que ocorre com a rapidez nesse intervalo?|Diminui|Aumenta sempre|Permanece necessariamente constante|A aceleração atua no sentido contrário ao movimento, reduzindo o módulo da velocidade.
Sem resistência do ar, qual aceleração atua numa queda livre próxima à superfície?|Aceleração da gravidade|Zero durante toda a queda|Uma aceleração que depende apenas da massa|No modelo usual, todos os corpos no mesmo local têm aproximadamente a mesma aceleração gravitacional.
No ponto mais alto de um lançamento vertical, qual é a aceleração sem resistência do ar?|g para baixo|Zero|g para cima|A velocidade instantânea se anula no topo, mas a gravidade continua atuando.
Em movimento circular uniforme, o que muda no vetor velocidade?|A direção|Somente o módulo, que cresce|Nada, pois é um vetor constante|A rapidez é constante, mas a direção muda e existe aceleração centrípeta.
Qual expressão relaciona velocidade angular e linear no movimento circular?|v = ωr|v = ω/r|v = r/ω|A distância percorrida no arco se relaciona ao ângulo pelo raio.
`,
  'energia-mecanica': `
Qual é a energia cinética de 2 kg a 3 m/s?|9 J|6 J|18 J|Ec = mv²/2 = 2 × 9/2.
Uma massa de 2 kg sobe 5 m. Use g = 10 m/s². Qual aumento de energia potencial?|100 J|10 J|25 J|ΔEp = mgΔh = 2 × 10 × 5.
Uma força constante de 10 N atua por 3 m na mesma direção e sentido. Qual trabalho?|30 J|13 J|3 J|W = Fd cos 0° = 10 × 3.
Qual é o trabalho de uma força perpendicular ao deslocamento?|Zero|Igual ao módulo da força|Sempre máximo e positivo|W = Fd cos 90° e cos 90° = 0.
O trabalho da força resultante corresponde a qual variação?|Energia cinética|Massa|Temperatura obrigatoriamente|O teorema trabalho-energia relaciona W resultante a ΔEc.
Que energia se associa à deformação de uma mola ideal?|Potencial elástica|Nuclear|Somente cinética|Uma mola ideal armazena E = kx²/2.
Uma mola de k = 100 N/m é comprimida 0,2 m. Qual energia armazena?|2 J|20 J|200 J|E = 100 × 0,2²/2 = 2 J.
Dobrar a deformação de uma mola ideal multiplica a energia por quanto?|4|2|8|A energia potencial elástica é proporcional ao quadrado da deformação.
Em uma queda sem resistência, o que ocorre com a energia potencial perdida?|Transforma-se em energia cinética|Desaparece|Transforma-se em massa obrigatoriamente|No modelo conservativo, a energia mecânica permanece constante.
O atrito cinético geralmente produz qual transformação?|Energia mecânica em energia interna|Criação ilimitada de energia|Eliminação da energia total|A energia total se conserva, mas parte da energia mecânica se dissipa.
Um motor recebe 1.000 J e entrega 800 J úteis. Qual rendimento?|80%|20%|125%|η = energia útil/energia recebida = 800/1.000.
Uma máquina de 100 W opera por 5 s. Qual energia transfere?|500 J|20 J|105 J|E = PΔt = 100 × 5.
Uma lâmpada de 0,1 kW fica ligada por 2 h. Qual consumo?|0,2 kWh|2 kWh|20 kWh|O consumo em kWh é potência em kW multiplicada pelo tempo em horas.
Qual unidade do SI corresponde à potência?|Watt|Joule|Newton|Um watt equivale a um joule por segundo.
Qual unidade do SI corresponde ao trabalho?|Joule|Watt|Pascal|Trabalho e energia são medidos em joules.
Um objeto parte do repouso e recebe trabalho resultante de 50 J. Qual Ec final?|50 J|Zero|100 J|Pelo teorema trabalho-energia, a energia cinética aumenta 50 J.
Ao dobrar a massa mantendo a velocidade, como muda Ec?|Dobra|Quadruplica|Permanece igual|Ec = mv²/2 é diretamente proporcional à massa.
`,
  urbanizacao: `
O que é êxodo rural?|Deslocamento do campo para cidades|Movimento exclusivo entre países|Crescimento natural de florestas|O êxodo rural é um dos processos que podem alimentar a urbanização.
O que caracteriza uma metrópole?|Influência sobre outras cidades por funções e fluxos|Somente grande área territorial|Ausência de serviços especializados|A centralidade se relaciona a funções econômicas, políticas e de serviços.
O que é conurbação?|União física de manchas urbanas de municípios distintos|Separação obrigatória entre países|Diminuição de toda população urbana|A continuidade construída pode atravessar limites administrativos.
Uma região metropolitana depende apenas de continuidade física?|Não, integração funcional também importa|Sim, sempre e exclusivamente|Sim, sem qualquer relação de fluxos|Deslocamentos, serviços e atividades econômicas articulam os municípios.
O que são movimentos pendulares?|Deslocamentos regulares entre moradia e trabalho ou estudo|Mudanças permanentes de país|Viagens sem retorno por definição|O deslocamento cotidiano pode atravessar limites municipais.
O que é segregação socioespacial?|Distribuição desigual de grupos e condições no espaço|Igualdade de acesso a toda infraestrutura|Somente diferença de clima entre bairros|Renda, políticas e mercado imobiliário influenciam localização e acesso.
O que pode caracterizar gentrificação?|Valorização com substituição ou expulsão de moradores de menor renda|Melhoria sempre sem aumento de custos|Desaparecimento de todos os imóveis|A valorização pode elevar aluguéis e alterar quem consegue permanecer.
O que é rede urbana?|Conjunto de cidades articuladas por fluxos|Somente o mapa das ruas de um bairro|Apenas municípios de tamanho igual|Cidades se relacionam por pessoas, bens, serviços, capitais e informações.
O que expressa hierarquia urbana?|Diferenças de centralidade e alcance das cidades|Classificação moral dos moradores|Somente ordem alfabética|A oferta de funções e serviços organiza níveis de influência na rede.
O que contribui para ilhas de calor?|Impermeabilização, materiais e pouca vegetação|Apenas o movimento de rotação terrestre|Aumento obrigatório de matas|Materiais urbanos acumulam calor e a menor vegetação reduz resfriamento por evapotranspiração.
Qual efeito a impermeabilização pode ter sobre chuvas intensas?|Aumentar escoamento superficial|Garantir infiltração total|Eliminar enchentes em qualquer condição|Com menor infiltração, aumenta a água que escoa para a drenagem.
Qual medida pode favorecer infiltração e drenagem?|Áreas permeáveis e infraestrutura adequada|Asfaltar integralmente as margens dos rios|Eliminar toda vegetação|Drenagem e permeabilidade ajudam a lidar com água de chuva.
O que o déficit habitacional indica?|Necessidade de moradias adequadas segundo critérios adotados|Somente ausência de edifícios altos|Quantidade total de parques|O indicador pode envolver falta de unidades e condições de moradia inadequadas.
Moradia adequada depende apenas da existência de uma casa?|Não, serviços e localização também importam|Sim, independentemente de saneamento|Sim, mesmo sem acesso ou segurança|Infraestrutura, mobilidade e condições de ocupação integram a questão habitacional.
Qual relação existe entre mobilidade e desigualdade?|Tempo e custo de deslocamento afetam acesso a oportunidades|Transporte nunca altera acesso|Todos gastam o mesmo tempo|A localização e a oferta de transporte condicionam acesso a emprego, estudo e serviços.
O que pode melhorar a mobilidade coletiva?|Integração de transporte e planejamento urbano|Dependência exclusiva de automóveis|Eliminação de calçadas|Transporte coletivo integrado e modos ativos podem ampliar acessibilidade.
Urbanização e crescimento absoluto da população urbana são iguais?|Não, urbanização envolve a participação urbana no total|Sim, em qualquer caso|Sim, pois população rural nunca muda|A população urbana pode crescer sem aumento de sua proporção se o total crescer mais.
`,
  'clima-energia': `
O que define clima em relação ao tempo atmosférico?|Padrões e variabilidade de longo prazo|Condições de uma única tarde|Somente a chuva de um dia|O clima se analisa por séries de observações e padrões duradouros.
Qual fator geográfico influencia a temperatura por distância ao Equador?|Latitude|Longitude sozinha|Nome do município|A latitude se relaciona à distribuição da radiação solar.
Em geral, como a altitude influencia a temperatura na troposfera?|Temperaturas tendem a diminuir com a altitude|Temperaturas sempre aumentam sem limites|Não existe qualquer relação|A variação real depende das condições atmosféricas e pode incluir inversões.
Qual efeito a maritimidade costuma exercer?|Moderar amplitudes térmicas|Eliminar chuvas em todo litoral|Impedir ventos|A água aquece e esfria mais lentamente que muitas superfícies terrestres.
O que a continentalidade pode favorecer?|Maior amplitude térmica|Temperatura idêntica em todas as estações|Fim das massas de ar|Áreas distantes do mar tendem a ter menor moderação térmica marítima.
O que é uma massa de ar?|Grande porção de ar com características de temperatura e umidade|Um tipo de rocha|Qualquer nuvem isolada|Massas de ar transportam características das áreas onde se formam.
O que ocorre em uma frente atmosférica?|Contato entre massas de ar com características distintas|Encontro de placas tectônicas|Interrupção da rotação terrestre|Frentes podem provocar mudanças de tempo e precipitação.
O efeito estufa natural tem qual papel?|Contribuir para manter temperaturas adequadas à vida|Ser causado somente por fábricas|Impedir toda saída de energia|Gases atmosféricos absorvem e reemitem parte da radiação infravermelha.
O aquecimento global atual se relaciona principalmente a quê?|Intensificação do efeito estufa por atividades humanas|Fim de todos os gases atmosféricos|Apenas ao buraco na camada de ozônio|Emissões humanas elevam a concentração de gases de efeito estufa.
Qual é um combustível fóssil?|Carvão mineral|Luz solar|Vento|Carvão, petróleo e gás natural têm formação geológica e são fontes não renováveis em escala humana.
Qual fonte aproveita o movimento do ar?|Eólica|Nuclear|Geotérmica|Aerogeradores convertem energia do vento em eletricidade.
Painéis fotovoltaicos convertem diretamente o quê?|Radiação solar em eletricidade|Vento em petróleo|Urânio em biomassa|O efeito fotovoltaico permite gerar corrente elétrica a partir da luz.
Qual impacto pode acompanhar uma hidrelétrica?|Alagamento de áreas e deslocamento de comunidades|Ausência absoluta de efeitos sociais|Produção obrigatória de carvão|Barragens alteram rios, ecossistemas e ocupações humanas.
Qual desafio acompanha geração solar e eólica?|Variabilidade da disponibilidade do recurso|Consumo obrigatório de gasolina em cada painel|Impossibilidade de conexão à rede|Planejamento, armazenamento e complementaridade podem ajudar a equilibrar a oferta.
A energia nuclear usa principalmente qual processo nas usinas atuais?|Fissão|Fotossíntese|Combustão de madeira|A divisão de núcleos libera energia para gerar calor e eletricidade.
O que é eficiência energética?|Obter o mesmo serviço com menor consumo de energia|Consumir mais sem mudar o resultado|Eliminar qualquer transformação energética|Equipamentos e processos eficientes reduzem energia necessária por serviço.
Qual medida é de adaptação climática?|Preparar drenagem para eventos extremos|Somente reduzir emissões na fonte|Ignorar áreas de risco|Adaptação reduz vulnerabilidade aos efeitos do clima; mitigação enfrenta causas do aquecimento.
`,
  trigonometria: `
Em um triângulo retângulo, qual lado se opõe ao ângulo reto?|Hipotenusa|Cateto adjacente|Mediana obrigatoriamente|A hipotenusa é o maior lado e fica oposta ao ângulo de 90°.
Qual razão define seno em um triângulo retângulo?|Cateto oposto dividido pela hipotenusa|Cateto adjacente dividido pela hipotenusa|Hipotenusa dividida pelo cateto oposto|O cateto oposto é definido em relação ao ângulo de referência.
Qual razão define cosseno em um triângulo retângulo?|Cateto adjacente dividido pela hipotenusa|Cateto oposto dividido pelo adjacente|Hipotenusa dividida pelo cateto adjacente|O cosseno relaciona o cateto adjacente ao ângulo e a hipotenusa.
Qual razão define tangente em um triângulo retângulo?|Cateto oposto dividido pelo adjacente|Hipotenusa dividida pelo oposto|Cateto adjacente dividido pela hipotenusa|A tangente compara os dois catetos em relação ao ângulo escolhido.
Quanto vale sen 30°?|1/2|√3/2|1|O seno de 30° é uma razão notável igual a 0,5.
Quanto vale cos 60°?|1/2|√3|0|Os ângulos de 30° e 60° são complementares; cos 60° = sen 30°.
Quanto vale tg 45°?|1|0|√3|Em um triângulo retângulo isósceles, os catetos são iguais e sua razão é 1.
Quanto vale sen 90°?|1|0|−1|No ciclo trigonométrico, o ponto de 90° tem ordenada 1.
Quanto vale cos 180°?|−1|0|1|O ponto de 180° no ciclo tem abscissa −1.
Quanto vale 180° em radianos?|π|2π|π/2|Uma volta completa mede 360° ou 2π radianos.
Quanto vale 90° em radianos?|π/2|π|2π|90° é um quarto de volta, correspondente a π/2.
Qual é o sinal do seno no segundo quadrante?|Positivo|Negativo|Sempre zero|No segundo quadrante, a ordenada no ciclo é positiva.
Qual é o sinal do cosseno no terceiro quadrante?|Negativo|Positivo|Sempre zero|No terceiro quadrante, a abscissa no ciclo é negativa.
Uma escada de 10 m faz 30° com o chão. Qual altura alcança?|5 m|10 m|20 m|A altura é o cateto oposto: h = 10 sen 30° = 5 m.
Um poste projeta sombra de 4 m sob ângulo de elevação solar de 45°. Qual altura?|4 m|2 m|8 m|tg 45° = altura/sombra = 1, portanto a altura é 4 m.
Qual identidade é válida para todo ângulo real?|sen² x + cos² x = 1|sen x + cos x = 1|tg x = sen x para todo x|A identidade decorre da equação do círculo de raio unitário.
Em que situação tg x não está definida?|Quando cos x = 0|Quando sen x = 0|Quando cos x = 1|Como tg x = sen x/cos x, o denominador não pode ser zero.
`,
  logaritmos: `
O que significa log₂ 8 = 3?|2³ = 8|8³ = 2|3² = 8|O logaritmo é o expoente ao qual se eleva a base para obter o argumento.
Quanto vale log₂ 16?|4|8|2|Como 2⁴ = 16, o logaritmo é 4.
Quanto vale log₃ 27?|3|9|2|3³ = 27.
Quanto vale log₁₀ 1.000?|3|100|10|10³ = 1.000.
Quanto vale log₅ 1?|0|1|5|Toda base positiva permitida elevada a zero resulta em 1.
Quanto vale log₇ 7?|1|0|7|Uma base elevada a 1 é ela própria.
Quanto vale log₂ (1/8)?|−3|3|−8|2 elevado a −3 é 1/8.
Que condição o argumento de um logaritmo real deve cumprir?|Ser positivo|Ser diferente de 1 apenas|Ser negativo|Não há logaritmo real de zero ou de número negativo no modelo usual.
Qual base é permitida para um logaritmo real?|Positiva e diferente de 1|Igual a 1|Qualquer número negativo|A base precisa permitir uma exponencial real invertível.
Como se desenvolve log_b (xy), com argumentos positivos?|log_b x + log_b y|log_b x × log_b y|log_b x − log_b y|Logaritmo de produto é soma de logaritmos na mesma base.
Como se desenvolve log_b (x/y), com x e y positivos?|log_b x − log_b y|log_b x + log_b y|log_b x / log_b y|Divisão no argumento corresponde a subtração de logaritmos.
Quanto vale log₂ (8²)?|6|9|5|log₂ (8²) = 2 log₂ 8 = 2 × 3.
Qual fórmula realiza mudança de base?|log_b a = log_c a / log_c b|log_b a = log_c b / log_c a|log_b a = log_c a + log_c b|Usa-se a mesma base auxiliar no numerador e no denominador.
Se log₁₀ 2 ≈ 0,301, quanto vale log₁₀ 20?|1,301|0,602|3,01|20 = 2 × 10, logo log 20 = log 2 + 1.
log (x + y) é sempre igual a log x + log y?|Não, a propriedade da soma vale para produto no argumento|Sim, para quaisquer positivos|Sim, se a base for 10|Não existe uma propriedade geral que separe o logaritmo de uma soma dessa forma.
Qual é a solução de log₂ x = 5?|32|10|25|A forma exponencial equivalente é x = 2⁵.
Qual é o domínio de log₃ (x − 2)?|x > 2|x ≥ 2|Todo x real|O argumento exige x − 2 > 0.
`,
  inequacoes: `
Qual é a solução de x + 3 > 7?|x > 4|x > 10|x < 4|Subtrair 3 de ambos os membros preserva o sentido da desigualdade.
Qual é a solução de 2x ≤ 10?|x ≤ 5|x ≥ 5|x ≤ 20|Dividir por 2, que é positivo, mantém o sentido.
Qual é a solução de −2x > 6?|x < −3|x > −3|x < 3|Dividir por um número negativo inverte o sinal da desigualdade.
Qual é a solução de 3x − 1 ≥ 8?|x ≥ 3|x > 3|x ≤ 3|Somando 1 e dividindo por 3, obtém-se x ≥ 3.
Qual intervalo representa x > 2?|Aberto em 2 e ilimitado à direita|Fechado de 0 a 2|Todos os valores menores ou iguais a 2|O ponto 2 não pertence ao conjunto e os valores maiores pertencem.
O número 4 pertence à solução x < 4?|Não|Sim|Somente se x for inteiro|A desigualdade estrita exclui a igualdade.
O número 4 pertence à solução x ≤ 4?|Sim|Não|Somente se x for negativo|O símbolo ≤ inclui a igualdade.
Qual é a solução de x² < 9?|−3 < x < 3|x > 3 apenas|x < −3 apenas|O quadrado é menor que 9 entre as raízes de x² − 9.
Qual é a solução de x² ≥ 4?|x ≤ −2 ou x ≥ 2|−2 < x < 2|x ≥ 2 apenas|Fora do intervalo entre as raízes, x² − 4 é não negativo.
Qual é a solução de (x − 1)(x − 3) < 0?|1 < x < 3|x < 1 ou x > 3|Todo x real|O produto tem fatores de sinais opostos entre as duas raízes.
Qual valor deve ser excluído de (x + 1)/(x − 2)?|2|−1|0|O denominador não pode ser zero.
Pode-se multiplicar uma inequação por uma expressão de sinal desconhecido sem analisar casos?|Não|Sim, sempre|Sim, se houver fração|O sinal da expressão determina se a desigualdade deve ser invertida.
Qual é a solução de 1/x > 0?|x > 0|x < 0|x ≠ 0|O numerador é positivo, então a fração é positiva quando o denominador é positivo.
Qual é a solução da inequação módulo de x < 2?|−2 < x < 2|x < −2 ou x > 2|x > 2|Módulo é distância até zero; a distância deve ser menor que 2.
Qual é a solução da inequação módulo de x ≥ 3?|x ≤ −3 ou x ≥ 3|−3 ≤ x ≤ 3|Todo x real|São os números cuja distância até zero é pelo menos 3.
O que significa resolver simultaneamente x > 1 e x < 5?|Tomar a interseção: 1 < x < 5|Aceitar todos os reais|Somar os limites e usar x > 6|A conjunção e exige que ambas as condições sejam satisfeitas.
Qual é a solução de x + 1 > x + 2?|Conjunto vazio|Todos os reais|x > 1|Subtrair x resulta em 1 > 2, uma afirmação falsa para qualquer x.
`,
  'relacoes-trigonometricas': `
Se sen x = 3/5 e x está no primeiro quadrante, quanto vale cos x?|4/5|2/5|3/4|cos² x = 1 − 9/25 = 16/25; no primeiro quadrante o cosseno é positivo.
Se sen x = 3/5 e cos x = 4/5, quanto vale tg x?|3/4|4/3|12/25|tg x = sen x/cos x = (3/5)/(4/5).
Qual expressão equivale a 1 + tg² x, onde definida?|1/cos² x|sen² x|1 − cos² x|Dividir sen² x + cos² x = 1 por cos² x produz a relação.
Qual expressão equivale a sen 2x?|2 sen x cos x|sen² x|2 sen x|A fórmula do arco duplo decorre da adição de dois ângulos iguais.
Qual expressão equivale a cos 2x?|cos² x − sen² x|2 cos x|sen x + cos x|A fórmula do cosseno do arco duplo tem formas equivalentes como 2 cos² x − 1.
Quanto vale sen (−x)?|−sen x|sen x|cos x|O seno é uma função ímpar.
Quanto vale cos (−x)?|cos x|−cos x|sen x|O cosseno é uma função par.
Quanto vale sen (90° − x)?|cos x|−cos x|tg x|Seno e cosseno se relacionam por ângulos complementares.
Quanto vale cos (90° − x)?|sen x|−sen x|1/sen x|O cosseno de um ângulo é o seno de seu complemento.
Qual é o período fundamental de sen x em radianos?|2π|π|π/2|Os valores do seno se repetem após uma volta completa.
Qual é o período fundamental de tg x?|π|2π|4π|A tangente repete valores a cada meia-volta.
Qual é a lei dos senos para um triângulo?|a/sen A = b/sen B = c/sen C|a sen A = b sen B = c sen C|a + b = c|Cada lado é proporcional ao seno do ângulo oposto.
Qual expressão é a lei dos cossenos?|a² = b² + c² − 2bc cos A|a² = b² + c² + 2bc em todo caso|a = b + c|A é o ângulo entre os lados b e c e fica oposto ao lado a.
Com lados 3 e 4 formando 90°, qual é o terceiro lado?|5|7|1|A lei dos cossenos se reduz ao teorema de Pitágoras quando cos A = 0.
Qual é a área de um triângulo com lados 4 e 6 formando 30°?|6|12|24|A = ab sen C/2 = 4 × 6 × 0,5/2.
Se sen x = 1/2 e 0° ≤ x < 360°, quais são as soluções?|30° e 150°|30° apenas|150° e 330°|O seno é positivo nos dois primeiros quadrantes.
Pode-se cancelar sen x em uma equação sem verificar se ele é zero?|Não, isso pode perder soluções|Sim, em qualquer caso|Sim, porque seno nunca zera|Dividir por uma expressão exige que ela seja diferente de zero.
`,
  'areas-poligonos-triangulos': `
Um triângulo tem base 10 cm e altura 6 cm. Qual área?|30 cm²|60 cm²|16 cm²|A = bh/2 = 10 × 6/2.
Um retângulo mede 7 m por 4 m. Qual área?|28 m²|22 m²|11 m²|A área é o produto dos lados perpendiculares.
Um paralelogramo tem base 8 cm e altura 3 cm. Qual área?|24 cm²|12 cm²|11 cm²|A = base × altura perpendicular.
Um trapézio tem bases 8 e 4 cm e altura 5 cm. Qual área?|30 cm²|60 cm²|20 cm²|A = (B + b)h/2 = 12 × 5/2.
Um losango tem área 48 cm² e diagonal maior 12 cm. Qual é a outra diagonal?|8 cm|4 cm|16 cm|De A = Dd/2, resulta d = 2A/D = 96/12.
Um quadrado tem lado 9 cm. Qual área?|81 cm²|36 cm²|18 cm²|A área do quadrado é lado ao quadrado.
Qual é a soma dos ângulos internos de um pentágono?|540°|360°|720°|S = (n − 2) × 180° = 3 × 180°.
Qual é a soma dos ângulos internos de um hexágono?|720°|540°|900°|S = (6 − 2) × 180°.
Quantas diagonais tem um pentágono?|5|10|3|D = n(n − 3)/2 = 5 × 2/2.
Quantas diagonais tem um hexágono?|9|6|12|D = 6 × 3/2 = 9.
A altura usada no cálculo da área do triângulo deve ser como em relação à base?|Perpendicular|Sempre igual ao lado inclinado|Paralela|Altura é a distância perpendicular da reta da base ao vértice oposto.
Dois triângulos têm a mesma base e a mesma altura. Como são suas áreas?|Iguais|Sempre uma é o dobro|Dependem somente do perímetro|A = bh/2 depende dessas duas medidas.
Lados de figuras semelhantes dobram. O que ocorre com suas áreas?|Quadruplicam|Dobram|Permanecem iguais|A razão entre áreas é o quadrado da razão linear.
Um polígono regular tem perímetro 20 cm e apótema 3 cm. Qual área?|30 cm²|60 cm²|23 cm²|A = perímetro × apótema/2.
Um triângulo tem lados 3, 4 e 5 cm. Qual seu semiperímetro?|6 cm|12 cm|5 cm|O semiperímetro é metade da soma dos lados.
Qual é a área de um triângulo equilátero de lado 4 cm?|4√3 cm²|8√3 cm²|16√3 cm²|A = l²√3/4 = 16√3/4.
Quanto vale 1 m² em cm²?|10.000 cm²|100 cm²|1.000 cm²|A conversão linear de 100 é elevada ao quadrado para áreas.
`,
  'funcao-quadratica': `
Qual condição define f(x) = ax² + bx + c como quadrática?|a ≠ 0|a = 0|b ≠ 0 obrigatoriamente|Sem termo de segundo grau, a expressão não define uma função quadrática.
Se a > 0, a concavidade da parábola fica voltada para onde?|Para cima|Para baixo|Sempre para a esquerda|O sinal do coeficiente de x² determina a concavidade.
Se a < 0, o vértice representa qual extremo?|Máximo|Mínimo|Nenhum extremo|A parábola abre para baixo e o vértice é seu ponto mais alto.
Qual expressão define o discriminante?|b² − 4ac|b² + 4ac|−b/(2a)|O discriminante determina a quantidade de raízes reais.
Se Δ > 0, quantas raízes reais distintas existem?|Duas|Uma|Nenhuma|A raiz quadrada de Δ é positiva e produz dois valores distintos na fórmula.
Se Δ = 0, quantas raízes reais distintas existem?|Uma|Duas|Nenhuma|As duas expressões de Bhaskara coincidem.
Se Δ < 0, quantas raízes reais existem?|Nenhuma|Uma|Duas|Não há raiz quadrada real de um número negativo.
Qual é a abscissa do vértice?|−b/(2a)|b/(2a)|−c/a|O eixo de simetria da parábola passa por x = −b/(2a).
Quais são as raízes de x² − 5x + 6?|2 e 3|−2 e −3|1 e 6|A fatoração é (x − 2)(x − 3).
Quais são as raízes de x² − 9?|−3 e 3|0 e 9|3 e 9|x² = 9 admite os dois sinais da raiz.
Qual é o valor mínimo de (x − 2)² + 1?|1|2|0|O termo quadrado é não negativo e zera em x = 2.
Qual é o valor máximo de −x² + 4x?|4|2|8|O vértice tem x = 2 e f(2) = 4.
Em que ponto f(x) = x² + 2x + 3 corta o eixo vertical?|(0, 3)|(3, 0)|(0, 2)|No eixo vertical, x = 0, então f(0) = c.
Qual é a soma das raízes de ax² + bx + c, quando reais?|−b/a|c/a|b/a|As relações de Viète dão soma −b/a e produto c/a.
Qual é o produto das raízes de x² − 5x + 6?|6|5|−5|O produto é c/a = 6/1.
Para f(x) = x², em qual intervalo a função é decrescente?|x ≤ 0|x ≥ 0|Todos os reais|Ao avançar dos negativos até zero, os quadrados diminuem.
Uma equação quadrática tem raízes 1 e 4 e a = 1. Qual forma fatorada?|f(x) = (x − 1)(x − 4)|f(x) = (x + 1)(x + 4)|f(x) = x(x − 4)|Cada raiz zera seu respectivo fator.
`,
  'funcao-exponencial': `
Qual condição a base deve cumprir em f(x) = aˣ como exponencial usual?|a > 0 e a ≠ 1|a = 1|a < 0 para todo x real|A base positiva diferente de 1 define uma exponencial não constante em todo o domínio real.
Se a > 1, como se comporta aˣ?|Crescente|Decrescente|Constante|Aumentar o expoente aumenta o valor quando a base é maior que 1.
Se 0 < a < 1, como se comporta aˣ?|Decrescente|Crescente|Sempre negativa|Potências de base entre zero e um diminuem com o aumento do expoente.
Quanto vale 2⁰?|1|0|2|Toda base não nula elevada a zero vale 1.
Quanto vale 2⁻³?|1/8|−8|−6|Expoente negativo indica o inverso da potência positiva.
Qual é a solução de 2ˣ = 32?|5|16|4|32 = 2⁵.
Qual é a solução de 3ˣ = 1?|0|1|3|A potência resulta em 1 quando o expoente é zero.
Qual é a solução de 4ˣ = 2?|1/2|2|4|4^(1/2) é a raiz quadrada de 4.
Qual é o domínio de f(x) = 2ˣ?|Todos os reais|Somente positivos|Somente inteiros|A exponencial de base positiva está definida para expoentes reais.
Qual é a imagem de f(x) = 2ˣ?|Reais positivos|Todos os reais|Reais não positivos|A função nunca é zero ou negativa, embora possa se aproximar de zero.
Em qual ponto o gráfico de aˣ cruza o eixo vertical?|(0, 1)|(1, 0)|(0, 0)|a⁰ = 1 para qualquer base permitida.
Uma população passa de 200 para 1.600 e dobra por período. Quantos períodos transcorreram?|3|4|8|A razão 1.600/200 = 8 corresponde a 2³, portanto foram três períodos.
Uma substância de 80 g tem meia-vida de 2 h. Quanto resta após 4 h?|20 g|40 g|10 g|Quatro horas correspondem a duas meias-vidas: 80/2².
Um capital cresce 10% por período. Qual fator multiplicativo?|1,10|0,10|10|O valor original corresponde a 100%, somado a 10% de aumento.
Uma quantidade diminui 20% por período. Qual fator multiplicativo?|0,80|1,20|0,20|Após a redução, permanece 80% do valor anterior.
Qual fórmula modela juros compostos com taxa i por período?|M = C(1 + i)ᵗ|M = C + it|M = Ci/t|Cada período multiplica o montante anterior por 1 + i.
Se 2ˣ > 8, qual é a solução?|x > 3|x < 3|x = 3|Como a base 2 é maior que 1, a exponencial é crescente e preserva o sentido.
`,
  'funcao-logaritmica': `
Qual é o domínio de f(x) = log₂ x?|x > 0|x ≥ 0|Todos os reais|O argumento de um logaritmo real deve ser positivo.
Qual é a imagem de f(x) = log₂ x?|Todos os reais|Somente positivos|Somente inteiros|Expoentes reais de 2 correspondem a todos os valores possíveis da função logarítmica.
Se a > 1, f(x) = log_a x é como?|Crescente|Decrescente|Constante|A função logarítmica tem o mesmo sentido de monotonicidade de sua exponencial inversa.
Se 0 < a < 1, f(x) = log_a x é como?|Decrescente|Crescente|Sempre positiva|Bases entre zero e um produzem função logarítmica decrescente.
Em qual ponto log_a x cruza o eixo horizontal?|(1, 0)|(0, 1)|(0, 0)|log_a 1 = 0.
O gráfico de log₂ x cruza o eixo vertical?|Não, x = 0 está fora do domínio|Sim, em (0, 1)|Sim, em (0, 0)|O eixo vertical funciona como assíntota, sem pertencer ao gráfico.
Qual é a função inversa de f(x) = log₂ x?|g(x) = 2ˣ|g(x) = x²|g(x) = 1/x|Logaritmo e exponencial desfazem uma à outra nos domínios correspondentes.
Qual é o domínio de log₃ (x + 4)?|x > −4|x ≥ −4|x < −4|A condição é x + 4 > 0.
Qual é o domínio de log₅ (2 − x)?|x < 2|x > 2|x ≤ 2|O argumento 2 − x precisa ser estritamente positivo.
Qual é a raiz de f(x) = log₂ (x − 1)?|2|1|0|Para o logaritmo ser zero, o argumento deve ser 1: x − 1 = 1.
Quanto vale f(8) se f(x) = log₂ x?|3|4|16|2³ = 8.
Quanto vale f(1/4) se f(x) = log₂ x?|−2|2|−4|2⁻² = 1/4.
Qual transformação leva log₂ x a log₂ (x − 3)?|Translação de 3 unidades para a direita|Translação de 3 unidades para a esquerda|Reflexão no eixo horizontal|Substituir x por x − 3 desloca horizontalmente o gráfico para a direita.
Qual transformação leva log₂ x a log₂ x + 2?|Translação de 2 unidades para cima|Translação de 2 unidades para a direita|Mudança da base para 4|Somar uma constante fora do logaritmo desloca os valores da função verticalmente.
Qual é a solução de log₂ x > 3?|x > 8|x < 8|0 < x < 3|A base maior que 1 permite comparar com log₂ 8 = 3 sem inverter o sinal.
Qual é a solução de log_(1/2) x > 1?|0 < x < 1/2|x > 1/2|x < 0|A função é decrescente, por isso o sentido se inverte, mantendo o domínio positivo.
Uma escala logarítmica decimal aumenta uma unidade. Qual fator muda no valor representado?|10|1|2|Somar 1 ao logaritmo decimal corresponde a multiplicar o argumento por 10.
`,
  'tipos-de-oxidos': `
Qual composto é um óxido?|CaO|NaCl|H₂SO₄|Óxidos são compostos binários em que o oxigênio é o elemento mais eletronegativo.
Qual é a classificação usual de CaO?|Óxido básico|Óxido ácido|Peróxido|Óxido de cálcio reage com ácidos e pode formar uma base com água.
Qual é a classificação de CO₂?|Óxido ácido|Óxido básico|Peróxido|CO₂ reage com bases e pode formar ácido carbônico em água.
Qual é a classificação de Al₂O₃?|Óxido anfótero|Óxido neutro|Peróxido|Al₂O₃ pode reagir tanto com ácidos quanto com bases fortes.
Qual é a classificação usual de CO?|Óxido neutro|Óxido básico|Peróxido|CO não apresenta o comportamento ácido ou básico típico nessas classificações usuais.
Qual composto é um peróxido?|H₂O₂|H₂O|CO₂|No peróxido, o oxigênio tem número de oxidação −1.
Qual é o número de oxidação usual do oxigênio em CaO?|−2|−1|+2|Em óxidos comuns, o oxigênio apresenta NOX −2.
Qual é o NOX do enxofre em SO₃?|+6|+3|−6|Os três oxigênios somam −6, então o enxofre deve ter NOX +6 no composto neutro.
Que produto se forma em CaO + H₂O?|Ca(OH)₂|CaCl₂|CaCO₃|O óxido básico reage com água formando hidróxido de cálcio.
Que produtos resultam de CaO + 2 HCl?|CaCl₂ e H₂O|Ca e Cl₂|CaCO₃ e H₂|Óxido básico e ácido podem formar sal e água.
SO₃ com água forma principalmente qual ácido?|H₂SO₄|H₂S|HCl|SO₃ + H₂O → H₂SO₄.
Qual óxido contribui para chuva ácida ao formar ácidos na atmosfera?|SO₂|CO como único formador de ácido|N₂O como anidrido sulfúrico|Óxidos de enxofre podem originar ácidos após reações na atmosfera.
Por que OF₂ não é classificado como óxido usual?|O flúor é mais eletronegativo que o oxigênio|Não possui dois elementos|Contém um metal alcalino|OF₂ é um fluoreto de oxigênio, uma exceção importante na classificação.
Qual nome corresponde a CO₂?|Dióxido de carbono|Monóxido de carbono|Óxido de cálcio|O prefixo di indica dois átomos de oxigênio por carbono.
Qual fórmula corresponde ao óxido de ferro(II)?|FeO|Fe₂O₃|FeO₂|Um Fe²⁺ e um O²⁻ formam um composto eletricamente neutro.
Todo óxido metálico é exclusivamente básico?|Não, há óxidos anfóteros e outros comportamentos|Sim, sem exceção|Não, porque todos são neutros|A classificação depende do comportamento químico, não só da presença de metal.
`,
  'separacao-de-misturas': `
Que método pode separar areia de água?|Filtração|Destilação fracionada de gases|Fusão nuclear|Um filtro adequado retém o sólido insolúvel e deixa o líquido passar.
Que método aproveita a sedimentação de um sólido para retirar o líquido?|Decantação|Cromatografia|Sublimação|A diferença de densidade permite sedimentação e posterior retirada da fase superior.
Qual equipamento pode separar dois líquidos imiscíveis?|Funil de separação|Condensador sozinho|Balança|O funil permite retirar as fases por diferença de densidade.
Como separar água e óleo em escala de laboratório?|Decantação em funil de separação|Filtração comum obrigatoriamente|Peneiração|Água e óleo formam fases distintas, adequadas à decantação.
Qual método acelera a sedimentação por rotação?|Centrifugação|Evaporação|Destilação|A centrifugação intensifica a separação de componentes de densidades distintas.
Qual método separa limalha de ferro de areia?|Separação magnética|Dissolução em óleo|Destilação simples|O ferro é atraído por um ímã, ao contrário da areia comum.
Qual método pode separar sólidos de tamanhos diferentes?|Peneiração|Destilação|Condensação|A malha permite a passagem de partículas menores e retém as maiores.
Qual método permite recuperar água de uma solução salina?|Destilação simples|Somente filtração comum|Peneiração|A água vaporiza e depois condensa; o sal não volátil permanece no recipiente.
Qual método pode recuperar sal por retirada do solvente sem recuperar a água?|Evaporação|Filtração simples da solução|Imantação|A evaporação remove o solvente e deixa o soluto sólido.
Qual método é usual para separar líquidos miscíveis com volatilidades diferentes?|Destilação fracionada|Decantação direta de fases|Peneiração|A coluna promove etapas sucessivas de vaporização e condensação.
Que processo ocorre no condensador de uma destilação?|Vapor passa a líquido|Líquido passa a sólido necessariamente|Sal vira metal|O condensador retira calor do vapor, permitindo sua liquefação.
Qual método explora afinidades diferentes entre fases móvel e estacionária?|Cromatografia|Peneiração|Decantação|Componentes migram em velocidades diferentes conforme suas interações com as fases.
Como separar areia e sal usando água?|Dissolução seletiva, filtração e evaporação|Só peneirar qualquer mistura|Somente imantar|O sal dissolve; a areia é retida no filtro e o sal pode ser recuperado do filtrado.
O carvão ativado pode ajudar a remover substâncias por qual processo?|Adsorção|Fissão|Fusão do contaminante|Moléculas podem se fixar à superfície do material.
Filtração comum remove sal totalmente dissolvido em água?|Não|Sim, sempre|Somente se o filtro for de papel branco|Íons dissolvidos atravessam filtros comuns junto com a água.
Qual propriedade orienta a separação por destilação?|Diferença de volatilidade|Cor como único critério|Magnetismo obrigatório|A fase vapor se enriquece nos componentes mais voláteis.
`,
  'reacoes-quimicas': `
O que o balanceamento de uma equação deve conservar?|Número de átomos de cada elemento|Número de moléculas sempre igual|Volume de cada reagente|Átomos são reorganizados, não criados ou destruídos em uma reação química usual.
Como balancear H₂ + O₂ → H₂O com menores coeficientes inteiros?|2 H₂ + O₂ → 2 H₂O|H₂ + O₂ → H₂O|H₂ + 2 O₂ → H₂O|Há quatro hidrogênios e dois oxigênios em cada lado na equação balanceada.
Para balancear, pode-se mudar o índice interno de uma fórmula?|Não, isso muda a substância|Sim, livremente|Somente no produto|Ajustam-se coeficientes; índices fazem parte da identidade química.
Que tipo de reação é 2 H₂ + O₂ → 2 H₂O?|Síntese|Decomposição|Dupla troca|Dois reagentes originam um composto como produto.
Que tipo de reação é CaCO₃ → CaO + CO₂?|Decomposição|Síntese|Neutralização obrigatoriamente|Um composto origina substâncias mais simples.
Que tipo de reação é Zn + 2 HCl → ZnCl₂ + H₂?|Simples troca|Decomposição|Dupla troca sem oxirredução|O zinco desloca o hidrogênio e há transferência de elétrons.
O que ocorre em uma neutralização ácido-base usual?|Formação de sal e água|Formação obrigatória de metal puro|Desaparecimento dos átomos|H⁺ e OH⁻ podem formar água, acompanhados dos íons que compõem o sal.
Qual é uma evidência possível de formação de precipitado?|Aparecimento de sólido na mistura|Apenas mudança de formato do recipiente|Toda mudança de temperatura sem outras informações|Um sólido pouco solúvel pode se formar ao misturar soluções.
Mudança de cor sozinha prova qualquer reação química?|Não, deve ser interpretada com outras evidências|Sim, sem exceção|Não, porque reações nunca mudam cor|Misturas e efeitos físicos também podem alterar aparência.
Qual é a reação de combustão completa do carbono?|C + O₂ → CO₂|C + O₂ → H₂O|C → O₂|Com oxigênio suficiente, o carbono pode formar dióxido de carbono.
Na combustão completa de um hidrocarboneto, quais produtos se esperam?|CO₂ e H₂O|Apenas H₂|Somente carbono sólido|Carbono e hidrogênio se oxidam a dióxido de carbono e água.
Qual processo corresponde à oxidação?|Perda de elétrons|Ganho de elétrons|Ausência de mudança de NOX por definição|Na oxidação, o número de oxidação aumenta.
Qual processo corresponde à redução?|Ganho de elétrons|Perda de elétrons|Destruição de prótons|Na redução, o número de oxidação diminui.
Qual é o papel de um agente oxidante?|Receber elétrons e sofrer redução|Perder elétrons e oxidar-se|Não participar da reação|Ele causa a oxidação de outra espécie enquanto é reduzido.
Uma reação exotérmica faz o quê?|Libera calor para o ambiente|Absorve calor obrigatoriamente|Nunca troca energia|O sistema transfere energia ao meio na forma de calor.
Em sistema fechado, como se compara a massa total antes e depois da reação?|É conservada|Sempre aumenta|Sempre diminui|A conservação da massa exige considerar todos os reagentes e produtos do sistema.
`,
  hidretos: `
O que caracteriza um hidreto binário?|Hidrogênio combinado com outro elemento|Qualquer composto com oxigênio|Somente uma mistura de gases|Hidretos binários contêm hidrogênio e um segundo elemento.
Qual é o NOX do cálcio em CaH₂?|+2|−2|+1|Os dois hidrogênios têm NOX −1 cada, exigindo +2 para o cálcio.
Qual é a classificação usual de NaH?|Hidreto iônico|Óxido ácido|Sal sem hidrogênio|O sódio eletropositivo forma um hidreto salino com H⁻.
Qual é a fórmula do hidreto de cálcio?|CaH₂|Ca₂H|CaH₄|Ca²⁺ exige dois íons H⁻ para neutralidade elétrica.
Qual é a fórmula do hidreto de lítio?|LiH|LiH₂|Li₂H₃|Li⁺ e H⁻ se combinam na proporção 1:1.
Qual gás se libera na reação de NaH com água?|H₂|O₂|Cl₂|NaH + H₂O → NaOH + H₂.
Um mol de CaH₂ reage completamente com água em excesso. Quanto H₂ pode formar?|2 mol|1 mol|4 mol|CaH₂ + 2 H₂O → Ca(OH)₂ + 2 H₂ relaciona um mol do hidreto a dois mol de gás.
Qual é a classificação de muitos hidretos de ametais?|Covalentes|Iônicos obrigatoriamente|Metálicos obrigatoriamente|O compartilhamento de elétrons é comum em compostos como CH₄ e NH₃.
Qual é a fórmula da amônia?|NH₃|NH₄Cl|N₂H₄O|A amônia é um composto covalente de nitrogênio e hidrogênio.
Qual é a fórmula do metano?|CH₄|CO₂|C₂H₂|Metano tem um carbono ligado a quatro hidrogênios.
Qual é o NOX usual do hidrogênio em HCl?|+1|−1|0|O cloro é mais eletronegativo, de modo que o hidrogênio recebe NOX formal +1.
Por que o NOX do H em NaH difere do H em HCl?|A eletronegatividade relativa do parceiro muda|O hidrogênio deixa de ser elemento|Todo hidrogênio tem sempre o mesmo NOX|O parceiro mais eletronegativo recebe a atribuição formal dos elétrons da ligação.
H₂ puro é um hidreto binário?|Não, é uma substância simples|Sim, por ter dois átomos|Sim, por ser gás|Uma substância simples contém apenas um elemento químico.
Que tipo de elemento costuma formar hidretos metálicos ou intersticiais?|Metais de transição|Somente gases nobres|Somente halogênios|O hidrogênio pode ocupar espaços na estrutura de determinados metais.
Em um hidreto iônico, o íon H⁻ ganhou quantos elétrons em relação ao átomo neutro?|Um|Dois|Nenhum|O hidrogênio neutro tem um elétron; H⁻ possui dois.
Por que hidretos reativos devem ser protegidos da umidade?|Podem reagir com água liberando hidrogênio e calor|Porque água os transforma sempre em ouro|Porque deixam de conter átomos|A reatividade com água depende do composto e pode envolver liberação de gás inflamável.
`,
  'calculos-quimicos': `
Qual relação calcula quantidade de matéria a partir da massa?|n = m/M|n = mM|n = M/m|M é a massa molar; dividir gramas por gramas por mol fornece mol.
Qual massa de H₂O corresponde a 0,5 mol, com M = 18 g/mol?|9 g|18 g|36 g|m = nM = 0,5 × 18 = 9 g.
Qual é a massa de 3 mol de CO₂, com M = 44 g/mol?|132 g|47 g|14,7 g|m = nM = 3 × 44.
Quantas entidades há aproximadamente em 1 mol?|6,02 × 10²³|6,02 × 10⁻²³|1.000|A constante de Avogadro relaciona número de entidades à quantidade de matéria.
Quantas moléculas há aproximadamente em 2 mol?|1,204 × 10²⁴|3,01 × 10²³|12,04|N = nN_A = 2 × 6,02 × 10²³.
Qual é a massa molar de H₂O usando H = 1 e O = 16?|18 g/mol|17 g/mol|34 g/mol|A soma é 2 × 1 + 16.
Qual é a massa molar de CO₂ usando C = 12 e O = 16?|44 g/mol|28 g/mol|32 g/mol|A soma é 12 + 2 × 16.
Qual é a porcentagem em massa de 10 g de soluto em 100 g de solução?|10%|1%|100%|Porcentagem em massa = massa do soluto/massa da solução × 100.
Uma amostra de 80 g contém 60 g de substância pura. Qual é a pureza?|75%|25%|80%|Pureza = 60/80 × 100 = 75%.
Uma reação produziu 15 g de um máximo teórico de 20 g. Qual rendimento?|75%|25%|133%|Rendimento = quantidade obtida/quantidade teórica × 100.
Em 2 H₂ + O₂ → 2 H₂O, qual a razão molar H₂:O₂?|2:1|1:1|1:2|As proporções em mol são dadas pelos coeficientes da equação balanceada.
Com 4 mol de H₂ e O₂ em excesso, quantos mol de água se formam?|4 mol|2 mol|8 mol|A proporção H₂:H₂O é 2:2, ou 1:1.
O que é reagente limitante?|O que se esgota primeiro segundo a proporção da reação|O de maior massa sempre|O de maior volume sempre|A comparação deve usar as quantidades disponíveis e a estequiometria.
Que conversão transforma 500 mL em litros?|0,5 L|5 L|50 L|Mil mililitros correspondem a um litro.
Em CNTP definidas como 0 °C e 1 atm, qual volume aproximado de 1 mol de gás ideal?|22,4 L|1 L|44,8 L|O volume molar depende de temperatura e pressão; nessas condições é aproximadamente 22,4 L/mol.
A razão dos coeficientes estequiométricos fornece diretamente uma razão de massas?|Não, é preciso considerar massas molares|Sim, em qualquer reação|Sim, somente por serem inteiros|Coeficientes relacionam quantidades de matéria; massas também dependem de M.
`,
  fermentacao: `
Se todo NAD⁺ ficar reduzido sem regeneração, qual processo é prejudicado diretamente?|Oxidação de intermediários da glicólise|Fotólise de água na levedura|Duplicação do etanol|A glicólise depende de NAD⁺ como aceptor de elétrons em uma de suas etapas.
Uma via produz 4 ATP e consome 2 ATP por glicose. Qual saldo para 5 glicoses?|10 ATP|20 ATP|30 ATP|O saldo unitário é 4 − 2 = 2 ATP; para cinco glicoses, é 10 ATP.
Uma levedura sem mitocôndrias funcionais pode gerar algum ATP por glicólise?|Sim, porque a via é citosólica|Não, todo ATP exige mitocôndria|Somente se produzir cloroplastos|A glicólise pode gerar ATP fora da mitocôndria, com regeneração adequada de NAD⁺.
Quais são produtos típicos da fermentação alcoólica?|Etanol e CO₂|Lactato e O₂|Somente água|O piruvato é convertido em etanol com liberação de CO₂ e regeneração de NAD⁺.
Qual produto caracteriza a fermentação lática?|Lactato|Etanol obrigatoriamente|Oxigênio|A redução do piruvato a lactato regenera NAD⁺.
Qual gás contribui para o crescimento da massa de pão?|CO₂|O₂ produzido pela levedura|N₂ fabricado na fermentação|O CO₂ liberado por leveduras forma bolhas retidas na massa.
Quais organismos são muito usados na fermentação alcoólica?|Leveduras|Somente vírus|Apenas plantas adultas|Leveduras como Saccharomyces são usadas em panificação e bebidas.
O que ocorre com o NADH ao reduzir o piruvato a lactato?|É oxidado a NAD⁺|É convertido diretamente em DNA|Permanece sempre acumulado|A transferência de elétrons regenera o NAD⁺ necessário à glicólise.
Fermentação usa cadeia respiratória para regenerar NAD⁺?|Não|Sim, obrigatoriamente|Somente no núcleo|A regeneração ocorre por transferência de elétrons a moléculas orgânicas.
Qual é a fonte do ATP associado à fermentação na abordagem usual?|Fosforilação em nível de substrato na glicólise|Fotofosforilação|Ciclo de Calvin|A transferência direta de fosfato para ADP ocorre nas etapas da glicólise.
Por que a fermentação rende menos ATP que a respiração aeróbia?|A oxidação do substrato é incompleta|Não existe glicólise|Todo carbono vira CO₂ obrigatoriamente|Produtos orgânicos ainda retêm parte importante da energia química.
Na fabricação de iogurte, que transformação é importante?|Produção de ácido lático por bactérias|Produção de oxigênio por leveduras|Transformação de proteína em urânio|A acidificação participa da alteração de textura e sabor do leite.
Fermentação e respiração anaeróbia são sinônimos estritos?|Não, a respiração usa cadeia de transporte de elétrons|Sim, porque ambas sempre geram etanol|Sim, porque nenhuma envolve elétrons|Na respiração anaeróbia, o aceptor final da cadeia é diferente do oxigênio.
Uma célula fermenta 3 moléculas de glicose. Qual saldo usual de ATP da glicólise?|6 ATP|3 ATP|12 ATP líquidos|São dois ATP líquidos por glicose: 3 × 2.
O lactato deve ser tratado apenas como resíduo inútil?|Não, pode ser transportado e reutilizado metabolicamente|Sim, não tem qualquer destino metabólico|Sim, é sempre eliminado intacto imediatamente|Lactato pode servir de combustível e participar de vias como a gliconeogênese.
Fermentação alcoólica de 1 mol de glicose pode formar quantos mol de etanol no modelo ideal?|2 mol|1 mol|6 mol|A equação global é glicose → 2 etanol + 2 CO₂.
`,
  'respiracao-celular': `
Qual produto se forma quando o O₂ recebe elétrons e prótons no fim da cadeia?|Água|Glicose|Etanol|A redução do oxigênio no fim da cadeia respiratória produz água.
Onde ocorre a glicólise em células eucarióticas?|Citosol|Espaço intermembrana|Núcleo|A glicólise não ocorre dentro da mitocôndria.
Quantas voltas do ciclo de Krebs correspondem aos dois grupos acetil derivados de uma glicose?|Duas|Uma|Seis|Cada grupo acetil participa de uma volta; uma glicose fornece dois grupos acetil.
Onde se encontra a cadeia respiratória mitocondrial?|Membrana interna|Membrana nuclear|Parede celular|A membrana interna abriga os complexos de transporte de elétrons.
Qual molécula de dois carbonos entra no ciclo de Krebs unida à coenzima A?|Grupo acetil da acetil-CoA|Glicose intacta|Lactato intacto|A acetil-CoA fornece o grupo acetil que se combina ao oxaloacetato.
Na oxidação de piruvato, qual gás é liberado?|CO₂|O₂|N₂|A conversão a acetil-CoA inclui descarboxilação.
Qual função têm NADH e FADH₂?|Transportar elétrons para a cadeia|Armazenar informação genética|Construir a parede celular|Essas coenzimas reduzidas transferem elétrons derivados da oxidação de nutrientes.
O transporte de elétrons na mitocôndria bombeia prótons principalmente para onde?|Espaço intermembrana|Núcleo|Meio externo à célula obrigatoriamente|O bombeamento gera um gradiente através da membrana interna.
Qual enzima usa o retorno de prótons para sintetizar ATP?|ATP sintase|DNA polimerase|Amilase|O fluxo de prótons a favor do gradiente fornece energia à síntese de ATP.
Como se chama o acoplamento da síntese de ATP ao gradiente de prótons?|Quimiosmose|Osmose de proteínas|Fagocitose|A energia eletroquímica do gradiente é convertida em energia química no ATP.
Se prótons retornam sem passar pela ATP sintase, qual efeito um desacoplador pode produzir?|Menor produção de ATP e maior dissipação de energia em calor|Produção ilimitada de ATP|Duplicação obrigatória do DNA|Dissipar o gradiente reduz a energia disponível para síntese de ATP.
Quantos piruvatos resultam da glicólise de uma glicose?|Dois|Um|Seis|A molécula de seis carbonos é convertida em duas moléculas de três carbonos.
Sem oxigênio, qual etapa aeróbia é diretamente prejudicada pela falta do aceptor final?|Cadeia respiratória|Duplicação do DNA como etapa da respiração|Fotólise da água|A transferência final de elétrons para O₂ deixa de ocorrer.
Plantas também realizam respiração celular?|Sim|Não, apenas fotossíntese|Somente plantas sem folhas|Células vegetais usam respiração para obter ATP, inclusive na presença de luz.
O rendimento de ATP por glicose é rigorosamente igual em todas as células?|Não, depende de condições e mecanismos celulares|Sim, sempre exatamente 38|Sim, sempre exatamente 2 na respiração aeróbia|Custos de transporte, lançadeiras e desacoplamento afetam o rendimento.
Qual é o destino final do carbono da glicose na oxidação aeróbia completa?|CO₂|O₂|ATP como único produto de carbono|Os átomos de carbono são liberados por descarboxilações até a oxidação completa.
`,
  fotossintese: `
O uso de água com oxigênio marcado deve marcar qual produto da fotossíntese?|O₂ liberado|Somente o carbono da glicose|N₂ atmosférico|O oxigênio gasoso liberado provém da água, como mostram experimentos com marcadores.
Onde ocorrem as reações luminosas nos cloroplastos?|Membranas dos tilacoides|Matriz mitocondrial|Interior do núcleo|Fotossistemas e transportadores de elétrons estão nas membranas tilacoidais.
Qual molécula orgânica de três carbonos pode resultar do ciclo de Calvin e servir à síntese de açúcares?|Gliceraldeído-3-fosfato|Acetil-CoA de dois carbonos|CO₂ de um carbono|O ciclo produz trioses fosfato que participam da formação de outros compostos orgânicos.
Qual molécula fornece carbono para o ciclo de Calvin?|CO₂|O₂|N₂|A fixação incorpora carbono do dióxido de carbono em compostos orgânicos.
Quais moléculas das reações luminosas são usadas no ciclo de Calvin?|ATP e NADPH|Somente O₂|DNA e RNA|ATP fornece energia e NADPH fornece poder redutor.
Qual enzima catalisa a fixação inicial de CO₂ no ciclo de Calvin?|Rubisco|Amilase|Pepsina|A Rubisco catalisa a carboxilação da ribulose-1,5-bisfosfato.
Qual pigmento tem papel central nos centros de reação?|Clorofila a|Hemoglobina|Melanina|A clorofila a participa dos centros de reação dos fotossistemas.
Por que folhas muitas vezes parecem verdes?|Refletem e transmitem parte da luz verde|Absorvem exclusivamente luz verde|Não interagem com luz|Pigmentos absorvem mais intensamente determinadas faixas e deixam parte da luz verde retornar.
O ciclo de Calvin só acontece à noite?|Não, não depende diretamente da luz e usa produtos das reações luminosas|Sim, obrigatoriamente|Sim, porque luz destrói toda enzima|A expressão fase escura não significa funcionamento exclusivo na ausência de luz.
Que estruturas regulam trocas gasosas nas folhas?|Estômatos|Ribossomos|Centríolos|A abertura estomática influencia entrada de CO₂ e perda de água.
Fechamento estomático prolongado pode reduzir qual entrada?|CO₂|Luz por definição|Sais pelo xilema diretamente|Menor disponibilidade de CO₂ pode limitar a fixação de carbono.
O que pode ocorrer quando a Rubisco atua como oxigenase?|Fotorrespiração|Fixação de N₂|Fermentação alcoólica obrigatória|A reação com O₂ inicia uma via que consome recursos e pode liberar CO₂.
Plantas C4 concentram CO₂ principalmente por qual estratégia?|Separação espacial de etapas|Ausência de ciclo de Calvin|Uso de O₂ como fonte de carbono|Fixação inicial e ciclo de Calvin ocorrem em compartimentos celulares distintos na organização típica C4.
Plantas CAM reduzem perda de água por qual estratégia?|Abrir estômatos principalmente à noite|Eliminar a necessidade de CO₂|Fazer fotólise só em raízes|Há separação temporal entre captação inicial de CO₂ e seu uso no ciclo de Calvin.
O que significa um fator limitante da fotossíntese?|Recurso ou condição que restringe a taxa naquele contexto|Qualquer fator que sempre zera a taxa|Somente a cor da flor|Luz, CO₂, água e temperatura podem limitar o processo em condições diferentes.
Uma planta fixa 8 unidades de CO₂ e libera 3 no mesmo período. Qual é a fixação líquida?|5 unidades|11 unidades|3 unidades|O balanço líquido é a fixação fotossintética menos a liberação respiratória: 8 − 3.
`,
  'organelas-citoplasmaticas': `
Uma célula secreta muitas proteínas. Que estruturas se esperam especialmente desenvolvidas?|Retículo rugoso e complexo golgiense|Somente centríolos|Apenas peroxissomos|Síntese e encaminhamento de proteínas da via secretora dependem dessas estruturas.
Por que o retículo endoplasmático rugoso tem aparência rugosa?|Possui ribossomos associados|Contém grãos de areia|É formado por centríolos|Ribossomos em sua superfície participam da síntese de proteínas destinadas a certas rotas celulares.
Qual função se associa ao retículo endoplasmático liso?|Síntese de lipídios|Tradução em ribossomos aderidos|Armazenamento de cromossomos|O retículo liso participa do metabolismo de lipídios e de outras funções conforme a célula.
Qual diferença distingue retículo rugoso de liso?|Presença de ribossomos associados ao rugoso|Presença de DNA no rugoso e ausência no liso|Existência de membrana apenas no liso|Ambos são membranosos, mas ribossomos aderidos caracterizam o rugoso.
Qual organela contém enzimas de digestão intracelular?|Lisossomo|Ribossomo|Cloroplasto|Lisossomos atuam na degradação de materiais em meio ácido.
Qual organela participa da degradação de peróxido de hidrogênio?|Peroxissomo|Ribossomo|Centríolo|A catalase pode converter H₂O₂ em água e oxigênio nos peroxissomos.
Qual organela realiza grande parte da respiração aeróbia eucariótica?|Mitocôndria|Lisossomo|Golgi|Ciclo de Krebs e fosforilação oxidativa ocorrem na mitocôndria.
Qual organela realiza fotossíntese em plantas?|Cloroplasto|Centríolo|Lisossomo|Cloroplastos contêm pigmentos e sistemas para converter energia luminosa.
Qual estrutura organiza muitos microtúbulos em células animais?|Centrossomo|Parede celular|Vacúolo central|O centrossomo atua como centro organizador de microtúbulos.
Qual componente celular participa do transporte de vesículas e da forma da célula?|Citoesqueleto|Somente o glicocálix|Apenas o DNA extracelular|Microtúbulos, filamentos e proteínas motoras sustentam movimentos e organização celular.
Em muitas células vegetais, qual estrutura ajuda a manter o turgor?|Vacúolo central|Centríolo|Nucléolo|O conteúdo do vacúolo influencia a entrada de água e a pressão interna.
Qual sequência descreve uma rota comum de secreção proteica?|Retículo rugoso → Golgi → vesículas → membrana|Lisossomo → DNA → centríolo|Cloroplasto → parede → núcleo|Proteínas secretadas passam por síntese, processamento e tráfego vesicular.
O que é exocitose?|Fusão de vesícula com a membrana para liberar conteúdo|Entrada de partículas por pseudópodes|Duplicação de cromossomos|A fusão vesicular permite secreção e renovação de componentes da membrana.
O que é autofagia celular?|Degradação e reciclagem de componentes da própria célula|Destruição obrigatória de todo o organismo|Produção de glicose a partir de luz|Componentes celulares podem ser encaminhados à degradação lisossomal.
Que evidência apoia a origem endossimbiótica de mitocôndrias e cloroplastos?|DNA próprio e características semelhantes às bacterianas|Ausência de membranas|Produção exclusiva pelo Golgi|Dupla membrana, divisão e componentes genéticos apoiam a teoria.
Procariontes possuem ribossomos?|Sim, embora não tenham núcleo delimitado|Não, porque não sintetizam proteínas|Somente se tiverem mitocôndrias|Ribossomos não são organelas membranosas e também existem em procariontes.
`,
  'permeabilidade-celular': `
Qual modelo descreve a organização da membrana plasmática?|Mosaico fluido|Parede totalmente rígida de celulose em toda célula|Camada única de DNA|Lipídios e proteínas formam uma estrutura dinâmica e organizada.
Como se orientam fosfolipídios na bicamada?|Cabeças polares para meios aquosos e caudas apolares para dentro|Caudas para a água e cabeças isoladas no centro|Todas as moléculas no mesmo sentido|O caráter anfipático favorece a formação espontânea da bicamada.
O que é permeabilidade seletiva?|Passagem diferenciada de substâncias pela membrana|Passagem igual de qualquer substância|Bloqueio completo de água|Tamanho, polaridade e proteínas de transporte influenciam a passagem.
Difusão simples transporta soluto em qual direção líquida?|A favor do gradiente de concentração|Sempre contra o gradiente|Somente para fora da célula|O fluxo líquido tende da maior para a menor concentração.
A difusão simples exige gasto direto de ATP?|Não|Sim, sempre|Somente para gases|É um transporte passivo impulsionado pelo gradiente.
O que distingue a difusão facilitada?|Uso de proteínas de transporte sem gasto direto de ATP|Movimento obrigatório contra o gradiente|Transporte só por vesículas|Canais e transportadores permitem movimento passivo de substâncias.
O que é osmose?|Movimento de água através de membrana seletiva|Movimento de proteínas pelo núcleo|Transporte de areia por fagocitose|A água se desloca conforme diferenças de potencial hídrico e condições do sistema.
Por que hemácias podem sofrer lise em água muito hipotônica?|Entrada de água pode romper a membrana|Saída de água sempre endurece uma parede celular|Elas passam a fazer fotossíntese|Hemácias não possuem parede celular que contenha o aumento excessivo de volume.
Uma célula animal em meio hipertônico tende a fazer o quê?|Perder água|Ganhar água obrigatoriamente|Produzir parede de celulose|O meio externo mais concentrado em solutos efetivos favorece saída de água.
Em meio isotônico, o que acontece com os fluxos de água?|Continuam, sem fluxo líquido sustentado que altere o volume|Param todas as moléculas|Há entrada infinita de água|Equilíbrio dinâmico não significa ausência de movimento molecular.
Qual estrutura reduz o risco de lise osmótica em células vegetais?|Parede celular|Centríolo|Lisossomo|A parede resiste ao aumento de pressão provocado pela entrada de água.
O que é plasmólise?|Retração do conteúdo celular vegetal por perda de água|Duplicação do vacúolo|Síntese de parede bacteriana|Em meio hipertônico, o protoplasto pode se afastar da parede.
Qual processo pode mover soluto contra seu gradiente eletroquímico?|Transporte ativo|Difusão simples|Osmose de íons|O transporte ativo precisa de uma fonte de energia.
Por que a bomba de Na⁺/K⁺ é considerada eletrogênica?|Há saída líquida de uma carga positiva por ciclo|Transporta o mesmo número de cargas em cada sentido|Transporta apenas moléculas neutras|A saída de 3 Na⁺ e a entrada de 2 K⁺ resultam em uma carga positiva líquida para fora.
O que é fagocitose?|Englobamento de partículas grandes por vesículas|Difusão de oxigênio|Passagem de água por aquaporinas|A membrana envolve a partícula e forma um compartimento interno.
Aquaporinas facilitam a passagem de quê?|Água|Cromossomos|Partículas de areia|Essas proteínas formam canais especializados no transporte de água.
`,
  glicidios: `
Qual molécula é um monossacarídeo?|Glicose|Amido|Glicogênio|Monossacarídeos são unidades simples que não se hidrolisam em carboidratos menores.
Qual molécula é um dissacarídeo?|Sacarose|Glicose|Celulose|A sacarose resulta da união de glicose e frutose.
Quais monossacarídeos formam a lactose?|Glicose e galactose|Duas frutoses|Glicose e ribose|Lactose é o dissacarídeo encontrado no leite.
Qual ligação une monossacarídeos em carboidratos maiores?|Glicosídica|Peptídica|Fosfodiéster obrigatoriamente|Ligações glicosídicas conectam unidades de açúcares.
Que reação quebra uma ligação glicosídica usando água?|Hidrólise|Fusão nuclear|Oxidação de metal obrigatória|A água participa da quebra de ligações na digestão de carboidratos.
Qual polissacarídeo é reserva típica de plantas?|Amido|Glicogênio|Quitina|Amido armazena glicose em tecidos vegetais.
Em quais órgãos humanos há importantes reservas de glicogênio?|Fígado e músculos|Somente pulmões|Apenas esmalte dentário|Glicogênio hepático e muscular tem funções importantes no metabolismo energético.
Qual polissacarídeo tem função estrutural na parede vegetal?|Celulose|Glicogênio|Lactose|As fibras de celulose contribuem para a resistência da parede.
Qual polissacarídeo integra o exoesqueleto de artrópodes?|Quitina|Amido|Sacarose|Quitina é um polímero estrutural também presente em paredes de fungos.
Por que humanos não digerem celulose de modo significativo com suas próprias enzimas?|Não produzem celulase|Celulose não possui glicose|Celulose é uma proteína|As ligações da celulose exigem enzimas que humanos não sintetizam.
Quantos carbonos possui uma pentose como a ribose?|Cinco|Seis|Três|O prefixo pent indica cinco carbonos.
Qual é o açúcar do DNA?|Desoxirribose|Ribose|Lactose|O DNA usa uma pentose com um oxigênio a menos que a ribose.
A glicose e a frutose podem ser classificadas como quê pelo número de carbonos?|Hexoses|Pentoses|Trioses|Ambas possuem seis carbonos.
Qual enzima inicia a digestão de parte do amido na boca?|Amilase salivar|Pepsina|Lipase como enzima exclusiva|A amilase quebra determinadas ligações do amido.
A intolerância à lactose costuma envolver deficiência de qual enzima?|Lactase|Amilase|Celulase|Menor atividade de lactase dificulta a hidrólise da lactose no intestino delgado.
Uma função de carboidratos da superfície celular é qual?|Reconhecimento e interação entre células|Armazenar exclusivamente DNA nuclear|Substituir todas as proteínas|Glicoproteínas e glicolipídios participam de reconhecimento celular.
`,
  lipidios: `
Qual característica é comum a muitos lipídios?|Baixa solubilidade em água|Alta solubilidade de todos em água|Formação obrigatória de longas cadeias de aminoácidos|Predominam regiões apolares, embora alguns lipídios sejam anfipáticos.
Que tipo de ligação une ácidos graxos ao glicerol em triacilgliceróis?|Éster|Peptídica|Glicosídica|O grupo carboxila do ácido graxo reage com uma hidroxila do glicerol formando ligação éster.
Qual é uma função importante dos triacilgliceróis?|Reserva energética|Armazenamento da sequência genética|Tradução de proteínas|Gorduras são reservas concentradas de energia.
Que lipídios são componentes fundamentais das membranas?|Fosfolipídios|Somente triacilgliceróis|Somente ceras|O caráter anfipático permite formar bicamadas em meio aquoso.
Por que fosfolipídios formam bicamadas em água?|Caudas hidrofóbicas ficam protegidas no interior|Todas as partes são igualmente solúveis em água|Suas cabeças são compostas de DNA|A organização minimiza o contato das regiões apolares com a água.
O que caracteriza um ácido graxo saturado?|Ausência de ligações duplas entre carbonos da cadeia|Uma ligação dupla obrigatória|Ausência de carbono|A saturação se refere ao tipo de ligação na cadeia carbônica.
O que caracteriza um ácido graxo insaturado?|Uma ou mais ligações duplas na cadeia|Somente ligações simples entre carbonos|Ausência total de hidrogênio|As duplas ligações alteram a estrutura e as propriedades físicas.
Duplas ligações cis costumam produzir qual efeito na cadeia?|Dobras que dificultam empacotamento|Retidão obrigatória igual a toda cadeia saturada|Transformação em proteína|O menor empacotamento influencia fluidez e ponto de fusão.
Qual é uma função do colesterol em células animais?|Modular propriedades da membrana|Ser o principal açúcar do DNA|Formar parede de celulose|O colesterol interage com fosfolipídios e afeta fluidez e permeabilidade.
O colesterol pode ser precursor de quais moléculas?|Hormônios esteroides|Todos os aminoácidos diretamente|Celulose|Hormônios esteroides e outras moléculas derivam do colesterol.
Qual lipídio pode exercer impermeabilização em superfícies biológicas?|Ceras|Glicogênio|Amido|Ceras reduzem perda de água em superfícies de plantas e animais.
Que enzimas participam da digestão de gorduras?|Lipases|Amilases exclusivamente|DNA polimerases|Lipases hidrolisam ligações de lipídios, como triacilgliceróis.
Qual papel têm os sais biliares na digestão?|Emulsificar gorduras e facilitar a ação enzimática|Atuar como enzimas que cortam DNA|Produzir ATP diretamente|A emulsificação amplia a superfície de contato para lipases.
Ácidos graxos essenciais devem ser obtidos como?|Pela alimentação|Somente pela respiração|Apenas pela luz solar direta|São necessários e não são sintetizados em quantidade adequada pelo organismo.
Gorduras trans industriais se associam a qual alteração estrutural?|Configuração trans de ligações duplas|Transformação de toda gordura em açúcar|Ausência de carbono na cadeia|A configuração espacial das duplas ligações altera propriedades e efeitos metabólicos.
Qual vitamina é lipossolúvel?|Vitamina A|Vitamina C|Vitamina B1|Vitaminas A, D, E e K são lipossolúveis.
`,
  enzimas: `
Uma enzima altera a variação de energia livre global da reação?|Não|Sim, sempre a torna positiva|Sim, sempre a torna zero|Enzimas alteram a velocidade ao reduzir a barreira de ativação, sem mudar ΔG da reação.
Uma enzima muda a constante de equilíbrio?|Não|Sim, sempre aumenta|Sim, sempre reduz a zero|A catálise acelera aproximação do equilíbrio sem mudar sua posição.
Enzimas são consumidas estequiometricamente em cada ciclo catalítico?|Não, podem ser reutilizadas|Sim, sempre|Sim, viram todos os produtos|O catalisador participa do mecanismo e é regenerado ao final do ciclo.
O que é sítio ativo?|Região que interage com o substrato e participa da catálise|Todo o núcleo celular|Um tipo de cromossomo|A organização do sítio ativo contribui para reconhecimento e reação.
O ajuste induzido envolve qual fenômeno?|Mudança conformacional associada à interação com substrato|Rigidez absoluta da enzima|Troca obrigatória do gene em cada reação|A ligação pode reorganizar a enzima e favorecer a catálise.
Temperaturas muito elevadas podem reduzir atividade por quê?|Desnaturação da estrutura funcional|Aumento ilimitado obrigatório da velocidade|Criação de novos ribossomos|Alterações estruturais podem comprometer sítio ativo e estabilidade.
O pH pode afetar a atividade enzimática por quê?|Altera ionização de grupos importantes|Muda apenas a cor do frasco|Nunca interage com proteínas|Cargas e estrutura influenciam ligação e catálise.
Toda enzima é uma proteína?|Não, existem RNAs catalíticos|Sim, sem exceção|Não, porque todas são lipídios|Ribozimas são moléculas de RNA com atividade catalítica.
O que é um cofator inorgânico?|Componente auxiliar, como determinado íon metálico|Uma cadeia obrigatória de glicose|O produto final de toda reação|Algumas enzimas dependem de íons como Mg²⁺ ou Zn²⁺.
O que ocorre perto da saturação por substrato?|A velocidade se aproxima de Vmax|A enzima necessariamente deixa de existir|A velocidade cresce sem limite|A ocupação dos sítios limita aumentos adicionais para uma quantidade fixa de enzima.
No modelo Michaelis–Menten, o que representa Km?|Concentração de substrato em que v = Vmax/2|Velocidade máxima|Quantidade total de produto em qualquer tempo|Km tem unidade de concentração e é um parâmetro do modelo.
Se Vmax = 100 unidades e [S] = Km, qual é v?|50 unidades|100 unidades|25 unidades|A equação v = Vmax[S]/(Km + [S]) resulta em Vmax/2.
Na inibição competitiva reversível clássica, como fica Vmax?|Permanece igual|Sempre cai a zero|Sempre dobra|Muito substrato pode superar a competição relativa pelo sítio ativo.
Na inibição competitiva reversível clássica, como muda Km aparente?|Aumenta|Diminui sempre|Permanece necessariamente zero|É necessária maior concentração de substrato para atingir metade da mesma Vmax.
Na inibição não competitiva pura, como muda Vmax?|Diminui|Aumenta sempre|Não pode mudar|A fração funcional da capacidade catalítica diminui nesse modelo específico.
Dobrar a quantidade de enzima ativa, com substrato saturante, tende a fazer o quê com Vmax?|Dobrar|Reduzir pela metade|Manter obrigatoriamente igual|Mais enzima ativa fornece mais sítios catalíticos nas mesmas condições.
`,
}

export const expandedPractice = Object.fromEntries(Object.entries(rows).map(([topicId, content]) => [
  topicId,
  content.trim().split('\n').map(line => {
    const fields = line.split('|')
    if (fields.length !== 5 || fields.some(field => !field.trim())) {
      throw new Error(`Questão complementar inválida em ${topicId}`)
    }
    const [text, correct, wrong1, wrong2, explanation] = fields
    return [text, correct, wrong1, wrong2, explanation]
  }),
]))
