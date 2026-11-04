// Sínteses editoriais conferidas nas referências de correção da COPESE/UFJF.
// Cada critério tem paráfrases próprias; combinações delas formam modelos de resposta.
const criteria = (label, pattern, phrases) => ({ label, pattern, phrases: phrases.split('|') })
const c = criteria
const entries = {}
function add(module, year, subject, number, field, reference, concepts, extra = {}) {
  entries[`${module}:${year}:${subject}:${number}/${field}`] = { reference, concepts, ...extra }
}
const p = (m,y,n,reference,concepts,extra) => add(m,y,'Língua Portuguesa',n,'resposta',reference,concepts,extra)
const g = (m,y,n,f,reference,concepts,extra) => add(m,y,'Geografia',n,f,reference,concepts,extra)

p('III',2025,1,'Uberização é a organização e o controle do trabalho por demanda, com produção just in time e informalização, sem garantias trabalhistas.',[
  c('Trabalho por demanda','sob demanda|just in time|acionad\\w*.{0,20}demanda','O trabalhador é acionado sob demanda.|O serviço segue a produção just in time.|As plataformas organizam trabalho sob demanda.'),
  c('Informalização e proteção','informaliz\\w*|(?:sem|ausencia|falta).{0,25}(?:direitos|protecao|garantias|respaldo)','Há informalização das relações de trabalho.|O trabalhador fica sem proteção trabalhista.|A ausência de garantias trabalhistas caracteriza a relação.'),
])
p('III',2025,2,'A citação de autoridade dá credibilidade e fundamentação ao argumento. O exemplo é a referência a Marx e O Capital ao explicar a fábrica sob encomenda e a produção just in time. A transcrição literal pedida deve ser conferida pelo estudante.',[
  c('Efeito de credibilidade','credibilidade|autoridade|fundament\\w*|legitim\\w*','A citação dá credibilidade ao argumento.|A autoridade citada fundamenta o posicionamento.|O recurso legitima a interpretação apresentada.'),
  c('Trecho e autor identificados','marx.{0,100}(?:capital|encomenda|just in time)|(?:capital|just in time).{0,100}marx','A entrevistada cita Marx em O Capital ao tratar da produção just in time.|O exemplo é Marx e a fábrica que funciona sob encomenda.|A referência a O Capital, de Marx, sustenta a explicação da produção sob demanda, just in time.'),
],{writingReview:true})
p('III',2025,3,'A entrevistada avalia negativamente a transferência do gerenciamento para o trabalhador: ele assume a organização, os riscos e as condições financeiras do trabalho, sendo reduzido à força de trabalho.',[
  c('Avaliação negativa','negativ\\w*|prejudicial|critic\\w*','A entrevistada avalia o processo negativamente.|A consequência é vista como prejudicial.|Sua posição é crítica a esse modelo.'),
  c('Transferência de gestão e riscos','(?:trabalhador|profissional).{0,90}(?:gerenc\\w*|organiz\\w*|risco\\w*|responsavel)|transferencia.{0,25}gerenciamento','O trabalhador assume o gerenciamento e os riscos de sua atividade.|O trabalhador assume a organização da vida profissional.|A transferência de gerenciamento torna o trabalhador responsável pelas condições financeiras.'),
])
p('III',2025,4,'A charge critica a exploração por aplicativos. A imagem do trabalhador exausto carregando cargas e o patrão, controlado por rédeas e pressionado a acelerar, sustenta essa crítica.',[
  c('Exploração do trabalho','explor\\w*.{0,40}(?:trabalh\\w*|aplicativ\\w*)|trabalh\\w*.{0,40}explor\\w*','A charge critica a exploração dos trabalhadores.|A exploração do trabalho por aplicativos é o alvo.|O trabalhador aparece submetido à exploração.'),
  c('Elementos visuais da charge','redea\\w*|patrao.{0,40}(?:carreg\\w*|carruagem|dinheiro)|(?:suado|descalco|exausto)|carreg\\w*.{0,35}patrao','As rédeas simbolizam o controle exercido pelo patrão.|O trabalhador suado e descalço revela o desgaste.|Carregar o patrão e as cargas indica a sobrecarga.'),
])
p('III',2025,5,'Modelo: Conforme o relato de Cíntia, Rita sofreu abusos no trabalho doméstico, incluindo corte forçado dos cabelos e proibições sobre aparência e uso de sandálias, para diferenciá-la da família empregadora. A síntese, a inserção do discurso alheio e a redação exigem revisão.',[
  c('Atribuição do relato','(?:segundo|conforme|de acordo com).{0,40}(?:cintia|relato|depoimento)|cintia.{0,30}(?:relata|afirma|conta)','Segundo Cíntia, sua tia sofreu abusos no trabalho doméstico.|Conforme o depoimento, Rita foi humilhada pelos empregadores.|Cíntia relata a violência sofrida pela tia.'),
  c('Exemplos de violência','cabel\\w*.{0,35}(?:cortad\\w*|forca)|cort\\w*.{0,30}cabel\\w*','Rita teve os cabelos cortados à força.|A patroa cortou o cabelo de Rita para controlar sua aparência.|O corte forçado do cabelo mostra a violência.'),
  c('Restrições de aparência','(?:proibid\\w*|proibicao|imped\\w*).{0,45}(?:sandalia\\w*|acessorio\\w*|aparencia)|(?:sandalia\\w*|acessorio\\w*).{0,30}proibid\\w*','Ela foi proibida de usar sandálias.|Também houve proibição de acessórios.|As restrições de aparência incluíam impedir o uso de sandálias.'),
],{writingReview:true})
g('III',2025,1,'a','A charge representa a ascensão da extrema-direita e as dificuldades enfrentadas por governos progressistas no contexto político apresentado pela prova.',[
  c('Ascensão da extrema-direita','(?:ascensao|avanco|crescimento|fortalecimento).{0,30}extrema direita|extrema direita.{0,30}(?:avanca|cresce)','A charge representa o avanço da extrema-direita.|Há crescimento da extrema-direita no mundo.|O fortalecimento da extrema-direita é o tema central.'),
  c('Pressão sobre progressistas','(?:dificult\\w*|pression\\w*|obstacul\\w*|enfrent\\w*).{0,45}(?:progressist\\w*|governo\\w*)|progressist\\w*.{0,40}dificuldad\\w*','Esse avanço pressiona governos progressistas.|Governos progressistas enfrentam dificuldades.|A nova correlação impõe obstáculos aos governos progressistas.'),
])
g('III',2025,1,'b','Exemplos de consequências: xenofobia, racismo, violência e armamentismo, enfraquecimento democrático e ameaça à liberdade de expressão. Cite duas consequências.',[
  c('Xenofobia','xenofob\\w*','Pode aumentar a xenofobia.|Há crescimento de atitudes xenófobas.|A xenofobia é uma consequência possível.'),
  c('Racismo','racismo|racista\\w*','O racismo pode se intensificar.|Crescem práticas racistas.|Há aumento do racismo.'),
  c('Democracia','(?:corrosao|enfraquec\\w*|ameac\\w*|erosao).{0,35}(?:democra\\w*|sistema democratico)','Há enfraquecimento da democracia.|Há erosão da democracia.|Surge ameaça ao sistema democrático.'),
  c('Liberdade de expressão','(?:ameac\\w*|restri\\w*|redu\\w*).{0,30}liberdade de expressao','Há ameaça à liberdade de expressão.|Há restrição à liberdade de expressão.|O processo ameaça a liberdade de expressão.'),
  c('Violência','(?:aument\\w*|escalada|mais).{0,25}violencia|armamentismo','Pode ocorrer escalada da violência.|O armamentismo é incentivado.|Há aumento da violência e da repressão.'),
],{minimum:2})
g('III',2025,2,'a','A estratégia é soft power, ou poder brando: influenciar e atrair outros países pela cultura, pelos valores e pelo estilo de vida, sem se basear em coerção militar.',[
  c('Nome da estratégia','soft power|poder brando','A estratégia é o soft power.|Trata-se do poder brando.|O país emprega soft power, também chamado poder brando.'),
  c('Influência cultural','(?:influenc\\w*|atra\\w*|inspir\\w*).{0,45}(?:cultura|cultural|valores|estilo de vida)|cultura.{0,45}(?:influenc\\w*|atra\\w*)','Ela influencia outros povos por meio da cultura.|Valores e cultura atraem cidadãos de outros países.|A influência cultural amplia a projeção internacional.'),
],{reject:['(?:soft power|poder brando).{0,30}(?:e a forca militar|consiste na invasao|usa coercao militar)']})
g('III',2025,2,'b','Exemplos: Japão com mangás e animes; Índia com Bollywood; Brasil com samba e futebol; Arábia Saudita com esportes e jogos. Cite dois países diferentes.',[
  c('Japão e cultura pop','japao.{0,45}(?:manga\\w*|anime\\w*)|(?:manga\\w*|anime\\w*).{0,45}japao','O Japão projeta sua cultura com mangás e animes.|Animes ampliam a influência do Japão.|O Japão usa a popularidade dos mangás.'),
  c('Índia e cinema','india.{0,45}(?:bollywood|cinema)|bollywood.{0,45}india','A Índia amplia sua influência com Bollywood.|O cinema de Bollywood divulga a cultura da Índia.|A Índia projeta seu cinema internacionalmente.'),
  c('Brasil e cultura','brasil.{0,45}(?:samba|futebol)|(?:samba|futebol).{0,45}brasil','O Brasil se projeta pelo samba e pelo futebol.|O samba divulga a cultura do Brasil.|O futebol contribui para a influência cultural do Brasil.'),
  c('Arábia Saudita e esportes','arabia saudita.{0,55}(?:esporte\\w*|futebol|golfe|games|jogos)','A Arábia Saudita investe em futebol e golfe.|A Arábia Saudita usa esportes para projeção externa.|A Arábia Saudita amplia a influência com games e esportes.'),
],{minimum:2})
g('III',2025,3,'a','A charge satiriza as tentativas de golpe no Brasil em 2023 e na Bolívia em 2024; a expressão usada alude ao fracasso de ambas.',[
  c('Brasil e Bolívia','brasil.{0,65}bolivia|bolivia.{0,65}brasil','São retratados golpes tentados no Brasil e na Bolívia.|A charge compara Brasil e Bolívia em tentativas golpistas.|Brasil e Bolívia são os países das tentativas de golpe.'),
  c('Fracasso dos golpes','fracass\\w*|(?:golpes?|tentativas?).{0,35}(?:falharam|frustrad\\w*|sem sucesso)','A palavra alude ao fracasso das tentativas.|Os golpes falharam e ficaram sem sucesso.|As tentativas foram frustradas, motivo da ironia.'),
])
g('III',2025,3,'b','Os tanques satirizam o apoio ou a participação militar nas tentativas de golpe.',[
  c('Tanques na sátira','tanque\\w*|blindad\\w*','Os tanques são o elemento visual da sátira.|Os blindados remetem às forças armadas.|A presença de tanques constrói a referência visual.'),
  c('Participação ou apoio militar','(?:apoio|participacao|envolvimento).{0,30}militar|militares.{0,35}(?:apoia\\w*|participa\\w*)','Eles representam a participação militar nas tentativas de golpe.|A imagem sugere apoio militar aos golpistas.|Os militares participaram ou apoiaram os movimentos representados.'),
])
g('III',2025,4,'a','Desfossilização é reduzir a participação e a dependência dos combustíveis fósseis na matriz energética.',[
  c('Redução da participação','redu\\w*|diminu\\w*|menor|substitu\\w*','O processo busca reduzir uma fonte na matriz energética.|Há diminuição de sua participação no consumo.|A mudança reduz a dependência energética dessa fonte.'),
  c('Fontes fósseis','fosseis|petroleo|carvao|gas natural','Essa fonte são os combustíveis fósseis.|O foco é diminuir petróleo, carvão e gás natural.|A referência é a energia de origem fóssil, incluindo combustíveis fósseis.'),
],{reject:['(?:aumentar|ampliar).{0,25}(?:uso|participacao).{0,25}fosseis']})
g('III',2025,4,'b','Exemplo: a mineração de lítio para baterias na América do Sul pode consumir água e afetar comunidades; parques eólicos no Nordeste também podem impor impactos territoriais a comunidades tradicionais.',[
  c('Mineração de lítio e impactos','litio.{0,100}(?:agua|comunidades|impact\\w*|perturb\\w*)','A mineração de lítio para baterias na América do Sul consome água e afeta comunidades.|Extrair lítio para carros elétricos causa impactos nas comunidades sul-americanas.|O lítio usado na transição provoca perturbações socioambientais na América do Sul.'),
  c('Parques eólicos e comunidades','(?:eolic\\w*).{0,100}(?:nordeste|comunidad\\w*).{0,65}(?:impact\\w*|afet\\w*|territor\\w*)','Parques eólicos no Nordeste podem afetar territórios de comunidades tradicionais.|A energia eólica no Nordeste impõe impactos às comunidades locais.|Empreendimentos eólicos atingem comunidades tradicionais e seus territórios.'),
],{minimum:1})

p('III',2026,1,'IA, estou preocupado com meu uso excessivo das redes sociais e tenho me sentido isolado e ansioso. Que profissionais posso procurar?',[
  c('Vocativo e primeira pessoa','(?:ia|inteligencia artificial|chatgpt|assistente).{0,65}(?:estou|tenho|sinto|meu|minha|eu)','IA, estou preocupado.|ChatGPT, tenho uma preocupação.|Assistente, eu preciso de ajuda.'),
  c('Contextualização do sofrimento e das telas','(?:redes sociais|celular|telas|midias sociais).{0,95}(?:isolad\\w*|ansios\\w*|ansiedade|tenso|sofrimento)|(?:isolad\\w*|ansios\\w*|ansiedade).{0,95}(?:redes sociais|celular|telas)','Uso redes sociais em excesso e me sinto isolado.|Meu uso de celular me deixa ansioso.|Passo muito tempo nas telas e sinto ansiedade.'),
  c('Pergunta por orientação','(?:quais|que|como|quem).{0,100}(?:procurar|ajuda|resolver|reduzir|melhorar|lidar)','Quais profissionais devo procurar?|Como posso procurar ajuda?|Que ajuda devo buscar para melhorar?'),
],{questionRequired:true,writingReview:true})
p('III',2026,2,'O post divulga a reportagem e chama a atenção ou desperta curiosidade para que o leitor acesse a matéria completa no site do jornal.',[
  c('Divulgação e atração','divulg\\w*|cham\\w*.{0,20}atencao|despert\\w*.{0,20}curiosidade','O post divulga a reportagem.|A postagem chama a atenção do público.|O recorte desperta curiosidade no leitor.'),
  c('Acesso à matéria completa','(?:acess\\w*|ler|leitura|visitar).{0,50}(?:complet\\w*|site|jornal)|materia completa','O objetivo é levar o público a acessar a matéria completa.|O leitor é convidado a visitar o site do jornal.|A publicação incentiva a leitura da reportagem completa.'),
])
p('III',2026,3,'O quadrão critica uma rotina dominada por informações trágicas, conteúdos digitais, relações vazias e interações com IA, associadas à solidão, ao esgotamento e à desconexão da realidade.',[
  c('Rotina digital e relações','(?:rotina|conteud\\w*|informac\\w*|interac\\w*).{0,70}(?:digital|violento\\w*|tragic\\w*|ia|vazi\\w*)','A rotina é dominada por conteúdos digitais e informações trágicas.|Interações com IA e relações vazias ocupam o cotidiano.|Os conteúdos violentos marcam a rotina digital.'),
  c('Solidão e esgotamento','solidao|esgotamento|desconexao|isolamento','Isso provoca solidão e esgotamento emocional.|O jovem vive desconexão com a realidade.|A experiência digital aparece associada ao isolamento.'),
],{writingReview:true})
p('III',2026,4,'A charge retoma a pose de O Pensador, de Rodin, colocando um robô em posição reflexiva. A intertextualidade questiona o pensamento e a consciência humanos e artificiais.',[
  c('O Pensador e a pose','(?:pensador|rodin).{0,75}(?:pose|posicao|postura|robo)|robo.{0,75}(?:pensador|rodin)','O robô reproduz a pose de O Pensador, de Rodin.|A postura do robô retoma O Pensador.|A charge coloca um robô na posição da escultura de Rodin.'),
  c('Reflexão sobre pensamento e IA','(?:pensamento|consciencia|reflexao).{0,60}(?:artificial|maquina\\w*|ia|humano)','A relação questiona a consciência das máquinas.|A imagem põe em debate o pensamento humano e artificial.|O diálogo visual provoca reflexão sobre inteligência artificial.'),
])
p('III',2026,5,'Uma contraposição possível é que o vínculo com IA idealize uma relação perfeita e reduza a tolerância às frustrações dos relacionamentos humanos. Outros argumentos pertinentes também podem ser defensáveis.',[
  c('Relação afetiva com IA','(?:relacionamento|namoro|vinculo|relacao afetiva).{0,45}(?:ia|inteligencia artificial)|(?:ia|inteligencia artificial).{0,45}(?:relacionamento|namoro)','O relacionamento com IA pode ser prejudicial.|O namoro com inteligência artificial envolve riscos.|Uma relação afetiva com IA exige cuidado.'),
  c('Problema argumentado','idealiz\\w*|(?:perfeit\\w*).{0,60}frustr\\w*|(?:dificult\\w*|redu\\w*).{0,40}(?:tolerancia|lidar).{0,25}frustr\\w*','A idealização de um parceiro perfeito dificulta lidar com frustrações.|Pode-se idealizar relações e perder tolerância às dificuldades humanas.|A expectativa de perfeição reduz a tolerância às frustrações reais.'),
],{writingReview:true})
g('III',2026,1,'a','Duas habilidades possíveis: flexibilidade, domínio digital, autogerenciamento, proatividade e multifuncionalidade.',[
  c('Flexibilidade','flexibilidade|adaptacao|adaptar','Exige-se flexibilidade.|É preciso adaptar-se a mudanças.|A adaptação constante é valorizada.'),
  c('Domínio digital','dominio.{0,20}(?:digital|tecnolog\\w*)|tecnologias digitais|ferramentas digitais','O domínio de tecnologias digitais é necessário.|É importante conhecer ferramentas digitais.|O trabalho requer domínio digital.'),
  c('Autogerenciamento','autogerenciamento|autogestao|planejar.{0,20}(?:rotina|metas)','Exige-se autogerenciamento.|É preciso planejar a própria rotina.|A autogestão é uma habilidade importante.'),
  c('Multifuncionalidade','multifuncional\\w*|diferentes tarefas|multiplas funcoes','A multifuncionalidade é exigida.|É preciso desempenhar diferentes tarefas.|O trabalhador assume múltiplas funções.'),
  c('Proatividade','proativ\\w*|iniciativa','A proatividade é valorizada.|Ter iniciativa é uma exigência.|Espera-se comportamento proativo.'),
],{minimum:2})
g('III',2026,1,'b','A uberização pode retirar proteção e direitos, transferir riscos ao trabalhador e gerar renda instável, longas jornadas, adoecimento e dificuldade de conciliar vida pessoal e trabalho.',[
  c('Desproteção','(?:sem|ausencia|falta|perda).{0,30}(?:direitos|protecao|garantias)|desprotecao','O trabalhador fica sem proteção social.|Há ausência de direitos trabalhistas.|A perda de garantias transfere riscos ao trabalhador.'),
  c('Efeito na vida e condições','instabilidade|inseguranca financeira|(?:longas|extensas|imprevisiveis).{0,15}jornadas|adoecimento|acidentes','A insegurança financeira exige jornadas longas.|A instabilidade da renda afeta a vida pessoal.|Longas jornadas elevam o risco de adoecimento e acidentes.'),
])
g('III',2026,2,'a','Ordem mundial é o arranjo de instituições, regras, acordos e relações de poder entre Estados em certo período. A referência identifica a ordem posterior à Guerra Fria como multipolar.',[
  c('Arranjo entre Estados','(?:instituic\\w*|regras|acordos|arranjo|relacoes de poder).{0,80}(?:estados|paises|nacoes)','A ordem mundial é um arranjo de regras e relações entre Estados.|Instituições e acordos organizam as relações entre países.|O conceito descreve as relações de poder entre Estados.'),
  c('Multipolaridade pós-Guerra Fria','multipolar\\w*','Após a Guerra Fria, a ordem é identificada como multipolar.|A nova configuração apresenta multipolaridade.|A referência caracteriza a Nova Ordem Mundial como multipolar.'),
],{reject:['nova ordem.{0,25}bipolar','apos.{0,25}guerra fria.{0,25}bipolar']})
g('III',2026,2,'b','Exemplos da referência: ataque dos EUA ao Irã sem autorização do Conselho de Segurança; guerras tarifárias e limitações da OMC; abandono de fóruns multilaterais; falta de representatividade do Conselho de Segurança. Cite dois fatos.',[
  c('EUA e Irã','(?:ataque|bombardeio).{0,60}ira.{0,80}(?:onu|conselho de seguranca)|eua.{0,35}ira.{0,60}(?:sem autorizacao|sem aval)','O ataque dos EUA ao Irã ocorreu sem aval do Conselho de Segurança da ONU.|O bombardeio ao Irã sem autorização da ONU mostra fragilidade institucional.|O ataque ao Irã ignorou o Conselho de Segurança.'),
  c('Tarifas e OMC','(?:tarif\\w*).{0,70}(?:omc|organizacao mundial do comercio)|omc.{0,70}tarif\\w*','As guerras tarifárias expõem limitações da OMC.|A OMC tem dificuldade para arbitrar as disputas tarifárias.|O conflito de tarifas revela a fragilidade da Organização Mundial do Comércio.'),
  c('Fóruns multilaterais','(?:abandon\\w*|afast\\w*|saida).{0,45}(?:foruns|multilatera\\w*|g7|g20)','O abandono de fóruns multilaterais enfraquece a cooperação.|A saída de líderes de fóruns como G7 e G20 expõe a crise.|O afastamento de instâncias multilaterais fragiliza os acordos.'),
  c('Representatividade da ONU','conselho de seguranca.{0,75}(?:represent\\w*|reforma|pos guerra)|onu.{0,60}(?:representatividade|legitimidade)','O Conselho de Segurança precisa de reforma em sua representatividade.|A ONU enfrenta uma crise de representatividade e precisa de reforma.|O Conselho de Segurança mantém uma composição ligada ao pós-guerra.'),
],{minimum:2})
g('III',2026,3,'a','A comparação associa guerras e expulsões de palestinos em 1948 e em 2025. O êxodo de 1948, a Nakba, é evocado pela violência e pelos deslocamentos em Gaza.',[
  c('Duas datas da comparação','1948.{0,75}2025|2025.{0,75}1948','A charge compara 1948 e 2025.|As datas representadas são 1948 e 2025.|Há aproximação entre os acontecimentos de 2025 e os de 1948.'),
  c('Expulsão e deslocamento palestino','(?:expuls\\w*|exodo|desloc\\w*|refugiad\\w*).{0,40}palestin\\w*|palestin\\w*.{0,40}(?:expuls\\w*|exodo|desloc\\w*)','Em ambos os contextos há expulsão de palestinos de suas terras.|O deslocamento forçado de palestinos aproxima as duas situações.|Os palestinos sofrem violência e êxodo, evocando a Nakba.'),
])
g('III',2026,3,'b','Nakba significa catástrofe e designa a expulsão e o êxodo forçado de palestinos em 1948, ligados à criação de Israel e à condição de refugiados.',[
  c('Significado do termo','catastrofe','Nakba significa catástrofe.|O termo é traduzido como a catástrofe.|A palavra designa uma catástrofe histórica.'),
  c('Êxodo palestino em 1948','(?:exodo|expuls\\w*|desloc\\w*).{0,70}(?:palestin\\w*|1948)|palestin\\w*.{0,55}(?:expuls\\w*|exodo|refugiad\\w*)','Refere-se ao êxodo forçado dos palestinos em 1948.|A expulsão palestina ocorreu no contexto da criação de Israel.|Os palestinos foram deslocados de suas terras e se tornaram refugiados.'),
])
g('III',2026,4,'a','Duas consequências possíveis incluem demanda por infraestrutura e serviços, xenofobia, redistribuição do trabalho informal, segregação, novas comunidades culturais, políticas de acolhimento e redes de solidariedade.',[
  c('Infraestrutura e serviços','(?:pressao|demanda).{0,40}(?:infraestrutura|servicos|acolhimento)','Há maior demanda por infraestrutura urbana.|A pressão sobre serviços aumenta nas cidades fronteiriças.|Há demanda por serviços de acolhimento nos municípios.'),
  c('Xenofobia','xenofob\\w*','Pode ocorrer aumento da xenofobia.|Há tensões sociais e atitudes xenófobas.|A xenofobia pode se intensificar.'),
  c('Trabalho informal','trabalho informal|informalidade|ocupacoes informais','O trabalho informal se redistribui.|Há inserção em ocupações informais.|A informalidade integra a dinâmica migratória.'),
  c('Segregação','segregacao|situacao de rua','Pode aumentar a segregação socioespacial.|Parte dos migrantes enfrenta situação de rua.|A segregação se intensifica nas periferias.'),
  c('Apoio e acolhimento','redes de solidariedade|politicas de acolhimento|apoio de ongs','Formam-se redes de solidariedade.|Há ampliação de políticas de acolhimento.|O apoio de ONGs e organismos internacionais pode crescer.'),
],{minimum:2})
g('III',2026,4,'b','Na Venezuela, crise econômica e política, inflação, escassez e violência atuam como expulsão. No Brasil, proximidade, condições relativamente melhores e acolhimento atuam como atração.',[
  c('Expulsão na Venezuela','venezuela.{0,100}(?:crise|inflacao|escassez|violencia|instabilidade)|(?:crise|escassez|inflacao).{0,70}venezuela','A crise econômica e política na Venezuela expulsa parte da população.|Escassez de alimentos e instabilidade na Venezuela motivam a saída.|A Venezuela enfrenta hiperinflação e violência que motivam a saída.'),
  c('Atração no Brasil','brasil.{0,100}(?:acolhimento|estabilidade|proximidade|melhores condicoes|protecao)|(?:acolhimento|proximidade|melhores condicoes).{0,65}brasil','O Brasil atrai pela proximidade e pelas políticas de acolhimento.|No Brasil, a relativa estabilidade oferece melhores condições.|A proteção a refugiados e a proximidade tornam o Brasil um destino.'),
])

p('III',2024,1,'Morte social é o apagamento das trajetórias e testemunhos das pessoas africanas escravizadas, reduzidas a números e estatísticas. Isso ajuda a explicar a ausência de Aca Inene nos registros da história brasileira.',[
  c('Apagamento das trajetórias','apag\\w*|invisibil\\w*|silenc\\w*','Morte social é o apagamento das trajetórias de pessoas escravizadas.|O conceito indica invisibilização das experiências individuais.|A expressão denuncia o silenciamento dos testemunhos.'),
  c('Redução a estatísticas e ausência histórica','(?:numeros|estatisticas).{0,90}(?:aca inene|histor\\w*)|aca inene.{0,70}(?:registro\\w*|histor\\w*)','A redução a números explica a ausência de Aca Inene na história.|As estatísticas escondem histórias como a de Aca Inene.|A trajetória de Aca Inene fica ausente dos registros históricos.'),
])
p('III',2024,2,'A recuperação dos registros de africanas escravizadas permite reconhecer suas lutas e resistências e compreender a história brasileira, enfrentando seu apagamento.',[
  c('Recuperação de registros e combate ao apagamento','(?:recuper\\w*|resgat\\w*|registro\\w*|apag\\w*).{0,70}(?:mulher\\w*|african\\w*|escraviz\\w*)','Recuperar registros de mulheres escravizadas combate seu apagamento.|O resgate de histórias de africanas escravizadas é necessário.|Os registros das mulheres africanas precisam ser recuperados.'),
  c('Lutas e compreensão histórica','(?:reconhec\\w*|compreend\\w*|entend\\w*).{0,70}(?:luta\\w*|resisten\\w*|historia)','Isso permite reconhecer as lutas e compreender a história brasileira.|O resgate ajuda a entender suas resistências.|Reconhecer suas lutas amplia a compreensão da história do Brasil.'),
])
p('III',2024,3,'Modelo: No entanto, o apagamento dos registros produz a falsa ideia de aceitação passiva da escravidão, ocultando a liderança, a luta e a resistência, especialmente das mulheres. A coesão, a adequação argumentativa e a norma-padrão também precisam ser revistas.',[
  c('Relação adversativa e apagamento','(?:no entanto|porem|contudo|todavia|entretanto).{0,80}(?:apag\\w*|ocult\\w*|silenc\\w*)','No entanto, o apagamento dos registros produz uma interpretação distorcida.|Porém, o silenciamento histórico sustenta uma leitura falsa.|Contudo, a ocultação dessas histórias distorce a interpretação.'),
  c('Falsa passividade e resistência','(?:falsa|erronea|equivocada).{0,50}(?:passiv\\w*|aceitacao).{0,100}(?:resisten\\w*|luta\\w*|lideranca)','A falsa ideia de passividade esconde as lutas e a resistência.|Uma leitura equivocada de aceitação passiva oculta a liderança feminina.|A falsa passividade atribuída aos escravizados apaga a resistência das mulheres.'),
],{writingReview:true})
p('III',2024,4,'Aquilombar significa unir, reunir e formar coletivos. O neologismo convoca à ação coletiva e à luta pela liberdade.',[
  c('Sentido de união','unir|reunir|uniao|coletiv\\w*','Aquilombar significa unir pessoas.|O termo propõe reunir e formar coletivos.|O neologismo remete à união coletiva.'),
  c('Convocação à ação libertária','(?:convoc\\w*|incit\\w*|incentiv\\w*|cham\\w*).{0,60}(?:liberdade|luta|acao)','O verbo convoca para a luta pela liberdade.|A palavra incita uma ação social libertária.|O poema incentiva ações de luta por liberdade.'),
])
p('III',2024,5,'Aquilombar é um verbo que convoca o leitor a agir; aquilombamento é um substantivo que nomeia e explica o processo ou resultado da formação de quilombos.',[
  c('Verbo e convocação','aquilombar.{0,65}(?:verbo|acao|convoc\\w*)','Aquilombar é verbo e convoca à ação.|Aquilombar convoca o leitor a uma ação.|Aquilombar é um verbo que propõe mudança de comportamento.'),
  c('Substantivo e nomeação','aquilombamento.{0,70}(?:substantivo|nome\\w*|processo|resultado)','Aquilombamento é substantivo que nomeia o processo.|O substantivo aquilombamento explica o resultado da formação de quilombos.|Aquilombamento nomeia a organização coletiva e seu resultado.'),
],{reject:['aquilombar e (?:um )?substantivo','aquilombamento e (?:um )?verbo']})
g('III',2024,1,'a','São possíveis motivos: demanda e lucro do petróleo, infraestrutura já consolidada e custo de adaptação, preço do barril, hábitos de consumo e custo das alternativas limpas. O enunciado pede três motivos.',[
  c('Demanda e lucro','(?:demanda|mercado|lucro).{0,45}petroleo|petroleo.{0,45}(?:demanda|mercado|lucro)','O petróleo ainda tem forte demanda e lucro.|O mercado de petróleo continua lucrativo.|A demanda por petróleo mantém o interesse das empresas.'),
  c('Infraestrutura','infraestrutura.{0,55}(?:consolidad\\w*|adapt\\w*|custo\\w*)|custo.{0,40}adaptacao','A infraestrutura consolidada exige custos de adaptação.|Mudar a infraestrutura petrolífera consolidada custa caro.|A infraestrutura exige custos de adaptação.'),
  c('Preço do petróleo','preco.{0,35}(?:barril|petroleo)','O preço do barril influencia os investimentos.|O preço baixo do petróleo reduz o incentivo à mudança.|A oscilação do preço do petróleo altera os investimentos.'),
  c('Hábitos de consumo','(?:habito\\w*|costume\\w*|preferencia).{0,45}(?:petroleo|veiculo\\w*|combust\\w*)','Há hábitos de consumo ligados a veículos a petróleo.|A preferência por veículos a combustão mantém a demanda.|Costumes dos consumidores favorecem o petróleo.'),
  c('Custo das alternativas','(?:custo\\w*|cara\\w*).{0,40}(?:limpa\\w*|renovave\\w*|alternativa\\w*)|energias limpas.{0,35}(?:caras|custo)','Os custos das alternativas limpas podem ser elevados.|As energias limpas podem ser caras na implantação.|Há custo de implantação de fontes renováveis.'),
],{minimum:3})
g('III',2024,1,'b','Países de maior renda têm maior responsabilidade histórica e capacidade financeira para a transição. Países pobres precisam priorizar necessidades sociais e têm menos recursos; empresas de países ricos também externalizam impactos.',[
  c('Responsabilidade histórica e econômica','(?:ricos|desenvolvidos|maior pib).{0,90}(?:responsabilidade|histor\\w*|emisso\\w*|recursos|capacidade)|responsabilidade historica','Países ricos têm responsabilidade histórica pelas emissões.|Os países desenvolvidos dispõem de maior capacidade financeira.|A responsabilidade histórica justifica cobrar mais dos países ricos.'),
  c('Limitações e prioridades dos pobres','(?:pobres|perifericos).{0,90}(?:pobreza|fome|escass\\w*|prioriz\\w*|necessidades sociais)','Países pobres precisam priorizar o combate à fome e à pobreza.|Os países pobres têm recursos escassos para a transição.|Os países pobres precisam priorizar necessidades sociais.'),
])
g('III',2024,2,'a','O turismo pode gerar emprego e renda, arrecadação municipal, infraestrutura e educação ambiental. Cite dois impactos positivos.',[
  c('Emprego e renda','emprego\\w*|renda','A atividade gera empregos locais.|O turismo aumenta a renda da população.|Novas oportunidades de emprego surgem.'),
  c('Receitas municipais','(?:arrecad\\w*|receita\\w*|recursos).{0,30}(?:munici\\w*|prefeitura)','Há aumento da arrecadação municipal.|O turismo gera receitas para o município.|Há mais recursos para a prefeitura.'),
  c('Infraestrutura','infraestrutura|saneamento|viaria|logistica','O setor estimula a infraestrutura local.|Há investimento em saneamento e estrutura viária.|A infraestrutura logística pode melhorar.'),
  c('Educação e conservação','educacao ambiental|protecao.{0,25}(?:areas|natureza)|conservacao ambiental','O turismo pode estimular educação ambiental.|A atividade pode apoiar a conservação ambiental.|Há incentivo à proteção de áreas naturais.'),
],{minimum:2})
g('III',2024,2,'b','Os conflitos podem decorrer da sobreposição de empreendimentos a áreas de uso tradicional e conservação, de modos de vida incompatíveis com a exploração comercial e da lentidão da demarcação frente ao licenciamento. Explique dois aspectos.',[
  c('Uso do território e recursos','(?:disputa\\w*|sobreposicao|conflito\\w*).{0,55}(?:territori\\w*|terra\\w*|recurso\\w*)','Há disputa pelo território e pelos recursos tradicionais.|A sobreposição do empreendimento a terras de uso indígena gera conflito.|As comunidades enfrentam conflitos pelo uso dos recursos do território.'),
  c('Modos de vida e exploração','(?:modo\\w* de vida|identidade|cultura).{0,70}(?:indigena|exploracao|turismo|comercial)|exploracao.{0,55}indigena','Os modos de vida indígenas conflitam com a exploração comercial.|A cultura indígena pode ser incompatível com a lógica do turismo comercial.|A identidade indígena é ameaçada pela exploração comercial do turismo.'),
  c('Demarcação e licenciamento','demarcacao.{0,70}(?:lent\\w*|licenciamento)|licenciamento.{0,70}demarcacao','A demarcação é lenta em comparação ao licenciamento.|O licenciamento avança antes da demarcação das terras.|A demarcação lenta facilita a sobreposição de interesses.'),
],{minimum:2})
g('III',2024,3,'a','A narrativa da subalternidade criminaliza periferias negras e as associa só a problemas. Duas contraposições são valorizar a cultura negra e reconhecer atividades econômicas, sociais e produção de conhecimento desses territórios.',[
  c('Criminalização','criminaliz\\w*|(?:perifer\\w*|negra).{0,55}(?:mazelas|problemas|subaltern\\w*)','A população negra periférica é criminalizada.|A periferia é retratada apenas por suas mazelas.|A população negra é associada à subalternidade e aos problemas sociais.'),
  c('Valorização cultural','(?:valoriz\\w*|reconhec\\w*).{0,35}cultura negra','É preciso valorizar a cultura negra.|Uma contraposição é reconhecer a cultura negra.|A valorização da cultura negra enfrenta essa narrativa.'),
  c('Economia e conhecimento','(?:reconhec\\w*|divulg\\w*|difund\\w*|valoriz\\w*).{0,70}(?:conhecimento|atividades economicas|producao cientifica)','Deve-se divulgar a produção de conhecimento das periferias.|É importante reconhecer as atividades econômicas e sociais desses territórios.|A valorização da produção científica africana contrapõe o apagamento.'),
])
g('III',2024,3,'b','A mudança do nome resgata a memória e a resistência negra, enfrenta o apagamento e reconhece a contribuição dessa população para o território e a identidade do Brasil.',[
  c('Memória e apagamento','(?:resgat\\w*|valoriz\\w*|preserv\\w*).{0,35}memoria|(?:combat\\w*|enfrent\\w*).{0,25}apagamento','A alteração resgata a memória negra.|O novo nome valoriza a memória da resistência.|A homenagem enfrenta o apagamento histórico.'),
  c('Formação territorial e identidade','(?:contribu\\w*|papel|formacao).{0,60}(?:territor\\w*|identidade|nacional)|identidade nacional','Reconhece a contribuição negra para a formação territorial brasileira.|Valoriza o papel negro na identidade nacional.|A identidade nacional incorpora essa memória.'),
])
g('III',2024,4,'a','Entre as funções do Reino Unido estão a participação no tráfico atlântico de escravizados, a Revolução Industrial e a colonização na América e na África. Cite duas.',[
  c('Tráfico de escravizados','trafico.{0,35}(?:negreiro|atlantico|escraviz\\w*)','O Reino Unido participou do tráfico atlântico de escravizados.|O tráfico negreiro integrou sua atuação.|A participação no tráfico de pessoas escravizadas foi uma função.'),
  c('Industrialização','revolucao industrial|industrializacao','O país protagonizou a Revolução Industrial.|A industrialização britânica reorganizou a produção.|A Revolução Industrial foi central nessa atuação.'),
  c('Colonização','coloniz\\w*|colonial\\w*','O Reino Unido colonizou territórios na América e na África.|A colonização forneceu recursos e mercados.|A expansão colonial integrou a organização da divisão do trabalho.'),
],{minimum:2})
g('III',2024,4,'b','O conflito é a Guerra de Biafra, ou Guerra Civil da Nigéria. Tensões identitárias e territoriais foram agravadas por fronteiras definidas pelo imperialismo britânico sem respeitar os povos locais.',[
  c('Nome do conflito','biafra|guerra civil.{0,15}nigeria','O conflito foi a Guerra de Biafra.|Trata-se da Guerra Civil da Nigéria.|A guerra Biafra–Nigéria é o conflito citado.'),
  c('Identidade e fronteiras coloniais','(?:britan\\w*|imperialismo|colonial\\w*).{0,85}(?:fronteir\\w*|identidade|povos)|fronteir\\w*.{0,85}(?:britan\\w*|identidade|povos)','O imperialismo britânico fixou fronteiras sem respeitar identidades locais.|As fronteiras coloniais reuniram povos com identidades distintas.|A Coroa Britânica delimitou fronteiras alheias à identidade da população.'),
])

p('I',2024,1,'O imperativo orienta e incita o leitor a agir contra o racismo, cumprindo a finalidade instrutiva de um manual.',[
  c('Orientação ao leitor','orient\\w*|instru\\w*|incit\\w*|convoc\\w*','O imperativo orienta o leitor.|Os comandos dão instruções ao leitor.|Os verbos convocam o público a agir.'),
  c('Ação antirracista','antirrac\\w*|combat\\w*.{0,35}racismo|enfrent\\w*.{0,35}racismo','O objetivo é combater o racismo.|O manual incentiva atitudes antirracistas.|As instruções propõem enfrentar o racismo.'),
],{reject:['imperativo.{0,30}(?:apenas descreve|nao orienta)']})
p('I',2024,2,'A charge ironiza a ideia de racismo reverso: o espelhamento inverte as posições das personagens, combinando linguagem verbal e visual.',[
  c('Crítica ao racismo reverso','(?:critic\\w*|iron\\w*|imposs\\w*|nega\\w*).{0,65}racismo reverso|racismo reverso.{0,50}(?:critic\\w*|iron\\w*|imposs\\w*)','A charge critica a ideia de racismo reverso.|O texto ironiza a noção de racismo reverso.|A cena aponta a impossibilidade do racismo reverso.'),
  c('Espelhamento e inversão visual','espelh\\w*|inver\\w*.{0,40}(?:posic\\w*|personage\\w*|imagem)','O espelhamento inverte as posições das personagens.|A imagem espelhada constrói a ironia com as palavras.|O recurso visual é a inversão das posições na cena.'),
])
g('I',2024,1,'a','Dois fatores possíveis são o calor, que resseca a vegetação e o solo, e secas mais prolongadas, que reduzem a umidade e favorecem a ignição. A referência também admite maior incidência de raios.',[
  c('Calor e ressecamento','(?:calor|temperatur\\w*).{0,65}(?:ressec\\w*|sec\\w*|inflam\\w*)','Temperaturas elevadas ressecam a vegetação e favorecem incêndios.|O calor deixa o solo e a vegetação mais secos.|A maior temperatura aumenta o ressecamento do material combustível.'),
  c('Seca e baixa umidade','seca\\w*.{0,55}(?:prolong\\w*|umidade|incend\\w*|queimada\\w*)|(?:menor|baixa|queda|reducao).{0,20}umidade','Secas prolongadas facilitam a ocorrência de queimadas.|A baixa umidade facilita a ignição.|Períodos de seca mais longos tornam os incêndios mais prováveis.'),
  c('Raios como ignição','raio\\w*.{0,50}(?:incend\\w*|ignicao|fogo|queimada\\w*)','Raios podem iniciar incêndios naturais.|Mais raios elevam as oportunidades de ignição.|Descargas de raios podem desencadear queimadas.'),
],{minimum:2,reject:['aquecimento.{0,25}(?:reduz|diminui).{0,20}incend']})
g('I',2024,1,'b','As queimadas liberam gases de efeito estufa e eliminam estoques de carbono da vegetação e do solo, reduzindo a capacidade de armazenamento e intensificando o aquecimento.',[
  c('Liberação de gases e retenção de calor','(?:liber\\w*|emit\\w*|emiss\\w*).{0,45}(?:gases|co2|carbonico|metano).{0,70}(?:estufa|calor|aquec\\w*)','As queimadas liberam gases de efeito estufa que retêm calor.|A emissão de CO2 e metano intensifica o aquecimento.|O fogo emite gases que reforçam o efeito estufa.'),
  c('Perda de estoque de carbono','(?:destro\\w*|elimin\\w*|redu\\w*|perda).{0,45}(?:esto\\w*|armazena\\w*|retencao|capt\\w*).{0,25}carbono|carbono.{0,40}(?:biomassa|solo)','A destruição da vegetação reduz o estoque de carbono.|Há perda de carbono armazenado na biomassa e no solo.|O fogo reduz o armazenamento de carbono pela vegetação.'),
])
g('I',2024,2,'a','Os aplicativos orientam a partir da localização e do deslocamento do usuário, com referências como direita e esquerda e um mapa que pode girar; não dependem de manter o norte fixo.',[
  c('Usuário como referência','(?:usuario|individuo|pessoa).{0,50}(?:centro|referencia|localiz|orient)|(?:centra\\w*|referencia).{0,35}(?:usuario|individuo|pessoa)','O usuário é o centro de referência do mapa.|A orientação é centrada na localização do indivíduo.|A referência principal é a posição da pessoa.'),
  c('Orientação dinâmica e relativa','direita.{0,35}esquerda|(?:mapa|rosa dos ventos).{0,30}(?:gira|dinamic)|(?:direcoes|orientacao).{0,35}(?:relativ|deslocamento)','As direções são dadas por direita e esquerda conforme o deslocamento.|O mapa gira de acordo com o movimento.|A orientação usa direções relativas ao deslocamento.'),
])
g('I',2024,2,'b','A escala permite medir distâncias e áreas reais, localizar-se e navegar com precisão e interpretar os fenômenos no recorte espacial representado.',[
  c('Medidas reais','(?:medir|calcular|mensurar|medicao).{0,35}(?:distanc\\w*|area\\w*)','A escala permite medir distâncias reais.|É possível calcular áreas e distâncias do terreno.|Ela permite mensurar as distâncias representadas.'),
  c('Localização e navegação','localiz\\w*|naveg\\w*','Ela auxilia a localização precisa.|A escala permite navegar corretamente.|Seu uso favorece a orientação e a navegação.'),
  c('Interpretação espacial','(?:interpret\\w*|analis\\w*).{0,45}(?:fenomen\\w*|dados|espac\\w*|recorte)','A escala ajuda a interpretar fenômenos espaciais.|Ela permite analisar dados no recorte territorial.|Seu uso melhora a interpretação do espaço representado.'),
],{minimum:2})

p('II',2024,1,'Carolina é inclassificável por sua personalidade e produção plurais e singulares: não cabe reduzi-la a um único rótulo ou característica.',[
  c('Pluralidade da escritora','plural\\w*|multipl\\w*|divers\\w*.{0,25}(?:qualidade\\w*|caracteristica\\w*|faceta\\w*)','Carolina reúne múltiplas qualidades.|Sua personalidade é plural.|A escritora apresenta diversas facetas.'),
  c('Impossibilidade de rótulo único','(?:nao|impossivel).{0,45}(?:resum\\w*|reduz\\w*|enquadr\\w*|rotul\\w*)|(?:alem|escapa).{0,30}(?:rotul\\w*|classifica\\w*)','Não se pode reduzi-la a um único rótulo.|Sua trajetória escapa às classificações fixas.|É impossível resumir a escritora em uma única característica.'),
])
p('II',2024,2,'A surpresa é injustificável porque a maioria da população brasileira é negra e deveria ser natural reconhecer escritores negros. O espanto revela racismo e tentativas históricas de embranquecimento.',[
  c('Representatividade negra e reconhecimento','(?:maioria|mais da metade|numero expressivo).{0,40}(?:negra|negros|populacao)|(?:negra|negros).{0,45}(?:maioria|mais da metade)','A maioria da população brasileira é negra, tornando natural o reconhecimento de autores negros.|A maioria da população é negra e deveria ter reconhecimento natural.|A maioria brasileira é negra e o espanto é injustificável.'),
  c('Racismo e embranquecimento','racismo|embranquec\\w*','A surpresa revela racismo.|O espanto expressa o racismo e o ideal de embranquecimento.|Essa reação resulta de tentativas de embranquecimento do país.'),
])
g('II',2024,1,'a','Bens industriais, nesse contexto, são máquinas e equipamentos usados pela própria indústria. Redução de sua produção e demanda dificulta ampliar a capacidade e o parque industrial.',[
  c('Máquinas e equipamentos produtivos','(?:maquina\\w*|equipamento\\w*).{0,55}(?:industria|producao|produzir)','Bens industriais são máquinas usadas na produção industrial.|São equipamentos destinados à produção industrial.|As máquinas que equipam a indústria são bens industriais.'),
  c('Efeito na capacidade industrial','(?:redu\\w*|queda|menor).{0,80}(?:dificult\\w*|limit\\w*|prejudic\\w*).{0,45}(?:capacidade|ampliacao|expansao|parque industrial)','A queda na produção desses bens limita a capacidade industrial.|A redução da demanda dificulta a expansão do parque industrial.|Menor produção de máquinas prejudica a ampliação da indústria.'),
])
g('II',2024,1,'b','A reprimarização das exportações contribui para a perda de dinamismo industrial. Selic elevada encarece crédito e empréstimos e desestimula investimento e produção.',[
  c('Reprimarização','reprimariz\\w*|primariz\\w*|(?:exportac\\w*|commodities).{0,40}(?:primari\\w*|desindustr\\w*)','A reprimarização das exportações enfraquece a indústria.|A pauta exportadora se reprimariza e perde dinamismo industrial.|A primarização da economia reduz o dinamismo da indústria.'),
  c('Juros e custo do crédito','(?:selic|juros).{0,65}(?:encarec\\w*|caro\\w*|cust\\w*).{0,25}(?:credito|emprestimo\\w*)','A Selic elevada encarece o crédito e desestimula investimentos.|Juros altos encarecem empréstimos e reduzem a produção.|A alta dos juros aumenta o custo do crédito para a indústria.'),
])
g('II',2024,2,'a','A agricultura familiar produz alimentos para o consumo cotidiano. Ampliar sua produção aumenta a oferta e pode reduzir preços, facilitando o acesso e o combate à fome.',[
  c('Oferta de alimentos','agricultura familiar.{0,70}(?:aliment\\w*|consumo)|(?:produz|oferta).{0,30}alimentos','A agricultura familiar produz alimentos do consumo cotidiano.|A produção familiar amplia a oferta de alimentos.|A agricultura familiar abastece a população com alimentos.'),
  c('Preço e acesso','(?:redu\\w*|menor|baix\\w*).{0,25}preco\\w*|(?:ampli\\w*|facilit\\w*|melhor\\w*).{0,30}acesso','A maior oferta pode reduzir os preços e combater a fome.|Preços mais baixos facilitam o acesso à alimentação.|A produção amplia o acesso aos alimentos e reduz a fome.'),
])
g('II',2024,2,'b','A divisão sexual do trabalho sobrecarrega mulheres com cuidados e alimentação. A população negra enfrenta desigualdades históricas, concentração fundiária e exclusão de empregos valorizados, ligadas à falta de reparação após a abolição.',[
  c('Desigualdade de gênero e cuidado','(?:divisao sexual|sobrecarga|mulheres).{0,90}(?:trabalho|cuidado|alimentacao|filhos)','A divisão sexual do trabalho sobrecarrega as mulheres com cuidados e alimentação.|As mulheres assumem trabalho de cuidado que agrava sua vulnerabilidade.|A sobrecarga das mulheres com filhos e alimentação expressa desigualdade de gênero.'),
  c('Herança racial e acesso a recursos','(?:negra|negros|racial|racismo).{0,100}(?:empreg\\w*|terra|reparacao|escravidao|abolicao)|(?:abolicao|reparacao|escravidao).{0,70}(?:negra|negros|racial)','A população negra sofre com a herança da escravidão e a falta de reparação.|A exclusão da população negra do acesso à terra e a empregos valorizados aumenta a fome.|A população negra enfrenta restrições ao acesso a empregos por causa do racismo.'),
])
p('II',2025,1,'Tiktokização é a pressão para divulgar trabalhos e construir visibilidade profissional nas redes sociais. Vídeos curtos e humor podem banalizar temas sérios, como os de saúde.',[
  c('Exposição profissional em redes','(?:profission\\w*|trabalho|profiss\\w*).{0,60}(?:redes sociais|tiktok|instagram)|redes sociais.{0,60}(?:profission\\w*|trabalho)','A tiktokização pressiona profissionais a divulgar o trabalho em redes sociais.|Profissionais precisam se expor no TikTok para promover o trabalho.|As redes sociais passam a ser vitrine profissional.'),
  c('Banalização dos temas','banaliz\\w*|(?:diminui\\w*|redu\\w*|perda).{0,25}seriedade|(?:humor|videos curtos).{0,50}(?:seri\\w*|saude|superficial\\w*)','Isso pode banalizar assuntos sérios.|Vídeos curtos e humor podem tornar temas de saúde superficiais.|Há perda de seriedade ao tratar determinados assuntos.'),
])
p('II',2025,2,'A avaliação é predominantemente negativa: 208 comentários negativos, contra apenas 11 positivos, indicam que mais pessoas se sentem prejudicadas pela tiktokização.',[
  c('Predomínio negativo','(?:maioria|predomin\\w*|mais).{0,40}(?:negativ\\w*|prejudic\\w*)','A maioria percebe a tiktokização negativamente.|Predominam comentários negativos sobre a tendência.|Mais pessoas relatam efeitos negativos.'),
  c('Dados comparativos','208.{0,45}11|duzentos e oito.{0,50}onze','Foram 208 comentários negativos e 11 positivos.|A comparação é de 208 avaliações negativas contra 11 positivas.|O levantamento mostra 208 negativos diante de apenas 11 positivos.'),
],{reject:['208.{0,12}positiv','11.{0,12}negativ']})
g('II',2025,1,'a','Racismo ambiental é a distribuição racialmente desigual dos benefícios e dos danos ambientais: grupos racializados suportam desproporcionalmente a degradação.',[
  c('Recorte racial','racial\\w*|racismo|populacao negra|grupos racializados','Há um recorte racial nos efeitos ambientais.|Grupos racializados são atingidos de forma diferenciada.|A população negra enfrenta exposição ambiental desigual.'),
  c('Desigualdade de danos ambientais','(?:desigual\\w*|desproporciona\\w*).{0,50}(?:dan\\w*|impact\\w*|degrad\\w*|ambient\\w*)|(?:dan\\w*|impact\\w*).{0,45}(?:desigual\\w*|desproporciona\\w*)','Os danos ambientais são distribuídos desigualmente.|Os danos ambientais são desproporcionais entre grupos.|Há desigualdade na distribuição dos impactos ambientais.'),
])
g('II',2025,1,'b','Medidas possíveis incluem participação das comunidades nas decisões, políticas públicas que enfrentem desigualdades e valorização dos conhecimentos tradicionais e da educação ambiental.',[
  c('Participação comunitária','particip\\w*.{0,55}(?:comunidad\\w*|deciso\\w*)|comunidad\\w*.{0,55}(?:decisao|decisoes|particip\\w*)','Garantir a participação das comunidades nas decisões.|As comunidades afetadas devem participar das decisões.|A participação das comunidades precisa orientar as decisões.'),
  c('Políticas contra desigualdades','politicas publicas.{0,60}(?:desigual\\w*|raciais|racismo)|(?:enfrent\\w*|redu\\w*).{0,35}desigual\\w*','Criar políticas públicas que enfrentem desigualdades raciais.|As políticas públicas precisam reduzir desigualdades sociais e raciais.|É necessário enfrentar as desigualdades com políticas públicas.'),
  c('Conhecimento tradicional','(?:valoriz\\w*|respeit\\w*|reconhec\\w*).{0,40}(?:conhecimento|saber\\w*).{0,25}tradiciona\\w*','Valorizar os conhecimentos tradicionais.|Respeitar os saberes tradicionais das comunidades.|Reconhecer o conhecimento tradicional nas ações ambientais.'),
],{minimum:2})
g('II',2025,2,'a','A partir dos anos 1970, atividades industriais se dispersaram para novos municípios e regiões além do núcleo do Sudeste, especialmente do eixo Rio–São Paulo.',[
  c('Dispersão industrial','(?:industr\\w*).{0,60}(?:dispers\\w*|desconcentr\\w*|desloc\\w*|interioriz\\w*)|(?:dispers\\w*|desconcentr\\w*).{0,40}industr\\w*','A indústria passou por dispersão territorial.|Houve desconcentração das atividades industriais.|A indústria se deslocou para novas áreas.'),
  c('Novos espaços além do eixo tradicional','(?:alem|fora|outras regioes).{0,65}(?:sudeste|rio|sao paulo)|novas regioes|novos municipios','A expansão alcançou áreas além do eixo Rio–São Paulo.|Outras regiões, fora do Sudeste, receberam atividades.|Novos municípios e novas regiões passaram a abrigar indústrias.'),
])
g('II',2025,2,'b','A desconcentração não foi completada: o número de empresas ainda revela forte concentração no Centro-Sul do Brasil.',[
  c('Processo incompleto','(?:nao|incomplet\\w*).{0,30}(?:complet\\w*|conclu\\w*|finaliz\\w*)|permanece incomplet\\w*|desconcentracao incompleta','A desconcentração não foi completada.|O processo não foi concluído.|A desconcentração permanece incompleta.'),
  c('Concentração no Centro-Sul','(?:concentr\\w*|predomin\\w*).{0,35}centro sul|centro sul.{0,40}concentr\\w*','As empresas ainda se concentram no Centro-Sul.|Há concentração industrial no Centro-Sul do país.|O Centro-Sul mantém a concentração das empresas industriais.'),
],{reject:['^(?:a desconcentracao|o processo) (?:foi|esta) (?:totalmente |plenamente )?(?:concluida|completada)']})
p('II',2026,1,'O uso excessivo de celular pode comprometer habilidades sociais e relações interpessoais e, em determinadas situações, contribuir para ansiedade e depressão.',[
  c('Relações e habilidades sociais','(?:prejudic\\w*|compromet\\w*|redu\\w*|dificult\\w*).{0,50}(?:habilidade\\w* sociais|relac\\w*|convivio|interacao)','O uso excessivo prejudica as relações interpessoais.|Pode comprometer habilidades sociais.|O celular em excesso dificulta o convívio social.'),
  c('Sofrimento emocional','ansiedade|depressao|sofrimento emocional','Pode contribuir para ansiedade.|Em alguns casos, favorece quadros de depressão.|O excesso pode ampliar o sofrimento emocional.'),
])
p('II',2026,2,'Exemplo: desative notificações, defina horários para redes sociais e evite o celular antes de dormir. Outras recomendações pertinentes são aceitas; o enunciado pede três orientações.',[
  c('Notificações','(?:desativ\\w*|retir\\w*|deslig\\w*|silenci\\w*).{0,20}notific\\w*','Desative as notificações.|Silencie as notificações do celular.|Desligue as notificações dos aplicativos.'),
  c('Limites de horário','(?:defin\\w*|estabele\\w*|marque|limit\\w*).{0,45}(?:horario\\w*|tempo).{0,35}(?:uso|redes|celular)|horario especifico','Defina horários para usar redes sociais.|Estabeleça limites de tempo de uso do celular.|Marque um horário específico para as redes sociais.'),
  c('Uso antes de dormir','(?:evit\\w*|nao use|pare de usar).{0,35}(?:celular|tela\\w*).{0,35}(?:dormir|noite|sono)','Evite usar o celular antes de dormir.|Não use telas à noite antes de dormir.|Pare de usar o celular perto da hora de dormir.'),
  c('Monitoramento','(?:monitor\\w*|cronomet\\w*|control\\w*).{0,45}(?:uso|tempo|celular)','Monitore o tempo de uso diário.|Controle o tempo gasto no celular.|Cronometre o uso do celular.'),
  c('Refeições sem celular','(?:evit\\w*|nao use|deixe).{0,45}(?:celular|telas).{0,35}refeic\\w*','Evite o celular durante as refeições.|Não use telas nas refeições.|Deixe o celular de lado nas refeições.'),
],{minimum:3})
g('II',2026,1,'a','Exemplos de interdependência: tecnologias e assistência técnica urbana utilizadas no campo; qualificação e empregos tecnológicos ligados ao agronegócio; integração financeira e abastecimento das cidades pela produção rural.',[
  c('Tecnologia e suporte urbano','(?:tecnolog\\w*|robo\\w*|drone\\w*|sensor\\w*).{0,65}(?:urban\\w*|cidade\\w*|suporte tecnico)','O campo usa tecnologias com suporte técnico das cidades.|Drones e sensores rurais dependem de serviços urbanos.|As tecnologias agrícolas integram o campo aos centros urbanos.'),
  c('Qualificação e empregos','(?:qualific\\w*|empreg\\w*).{0,60}(?:tecnolog\\w*|agronegocio|rura\\w*)','A qualificação tecnológica dos trabalhadores rurais cria novas conexões.|O agronegócio demanda empregos tecnológicos.|Novos empregos em tecnologia articulam o agronegócio e as cidades.'),
  c('Finanças','(?:agronegocio|campo).{0,55}(?:capitais|financ\\w*)|mercado de capitais','O agronegócio participa do mercado de capitais.|O campo se conecta às finanças urbanas.|O agronegócio tem integração financeira com as cidades.'),
  c('Abastecimento urbano','(?:cidade\\w*|urban\\w*).{0,55}(?:depend\\w*|abastec\\w*|aliment\\w*).{0,30}(?:rural|campo|agropecuaria)|abastecimento.{0,30}cidades','As cidades dependem da produção agropecuária para seu abastecimento.|O abastecimento das cidades vem do campo.|A alimentação urbana depende da produção rural.'),
],{minimum:2})
g('II',2026,1,'b','A modernização pode concentrar renda e excluir trabalhadores sem qualificação, estimulando êxodo e desigualdades urbanas. Desmatamento, poluição, degradação dos solos e pressão hídrica afetam sobretudo grupos vulneráveis.',[
  c('Desigualdade e exclusão social','concentr\\w*.{0,25}renda|exclusao|exodo rural|desigualdade\\w*.{0,25}(?:sociais|urbanas)','A modernização pode concentrar renda e ampliar desigualdades urbanas.|A exclusão dos trabalhadores sem qualificação favorece o êxodo rural.|O êxodo rural pode acentuar desigualdades sociais nas cidades.'),
  c('Danos ambientais e vulnerabilidade','desmat\\w*|polu\\w*|degrad\\w*.{0,20}solo|exaustao.{0,20}(?:agua|hidric\\w*)','A expansão agropecuária pode causar desmatamento.|A poluição e a degradação do solo atingem grupos vulneráveis.|Há poluição e exaustão dos recursos hídricos.'),
])
g('II',2026,2,'a','A IA amplia a automação e valoriza tecnologia e conhecimento concentrados nos países centrais; países periféricos frequentemente permanecem em atividades primárias ou montagem de baixo valor, com dependência tecnológica.',[
  c('Automação e concentração tecnológica','(?:ia|inteligencia artificial|automacao).{0,90}(?:centrais|centro|desenvolvidos)|(?:centrais|desenvolvidos).{0,70}(?:tecnolog\\w*|automacao)','A IA amplia a automação nos países centrais.|Países centrais concentram tecnologia e inovação.|A automação reforça o domínio tecnológico dos países centrais.'),
  c('Posição periférica','(?:periferic\\w*|periferia).{0,75}(?:materias primas|montagem|baixo valor|dependencia|extracao)','Países periféricos mantêm atividades de baixo valor agregado.|A periferia continua ligada à extração de matérias-primas.|Os países periféricos ficam dependentes da tecnologia externa e da montagem.'),
])
g('II',2026,2,'b','Impactos possíveis: desemprego estrutural, dependência tecnológica, enfraquecimento de pequenas indústrias, precarização do trabalho e vulnerabilidade social. São pedidos dois impactos.',[
  c('Desemprego estrutural','desemprego.{0,20}estrutural|substitu\\w*.{0,35}(?:trabalhador\\w*|mao de obra)','Há aumento do desemprego estrutural.|Máquinas substituem trabalhadores.|A substituição da mão de obra gera desemprego estrutural.'),
  c('Dependência tecnológica','dependencia.{0,20}tecnolog\\w*','A dependência tecnológica aumenta.|Amplia-se a dependência de tecnologia externa.|Os países ficam em dependência tecnológica.'),
  c('Pequenas indústrias','(?:enfraquec\\w*|marginaliz\\w*|prejudic\\w*).{0,35}(?:pequen\\w*|industr\\w* locais)','A automação pode enfraquecer pequenas indústrias locais.|A automação pode marginalizar pequenas empresas industriais.|A competição prejudica as indústrias locais.'),
  c('Precarização','precariz\\w*|informalidade|ocupacoes informais','Há precarização do trabalho.|A informalidade tende a aumentar.|O mercado se fragmenta em ocupações informais e empregos qualificados.'),
],{minimum:2})

p('I',2025,1,'As telas funcionam como uma babá que mantém as crianças quietas, mas às avessas porque a substituição do cuidado e da supervisão prejudica o desenvolvimento infantil.',[
  c('Telas no lugar do cuidado','(?:telas|eletronic\\w*).{0,65}(?:baba|quiet\\w*|cuidado|supervisao)|baba.{0,40}(?:telas|eletronic\\w*)','As telas substituem a babá para manter as crianças quietas.|Os eletrônicos ocupam o lugar do cuidado e da supervisão.|As telas funcionam como babá quando os pais deixam a criança entretida.'),
  c('Inversão prejudicial','(?:prejudic\\w*|dan\\w*|malefic\\w*|compromet\\w*).{0,35}(?:desenvolv\\w*|infancia|crianc\\w*)','Essa substituição prejudica o desenvolvimento infantil.|O efeito é danoso às crianças, por isso a inversão de sentido.|O uso como babá compromete o desenvolvimento da criança.'),
])
p('I',2025,2,'Na parentalidade distraída, os pais se ocupam excessivamente das próprias telas; na desassistida, a falta de rede de apoio leva ao uso das telas para entreter os filhos enquanto realizam outras tarefas.',[
  c('Causa da parentalidade distraída','distraid\\w*.{0,100}(?:pais|responsaveis).{0,50}(?:telas|celular|redes)|pais.{0,50}(?:telas|celular).{0,50}distraid','Na parentalidade distraída, os pais ficam ocupados com suas telas.|Na parentalidade distraída, os pais usam celular em excesso.|Na modalidade distraída, os pais se voltam às próprias redes sociais.'),
  c('Causa da parentalidade desassistida','desassistid\\w*.{0,90}(?:falta|ausencia|sem).{0,25}(?:apoio|rede)|(?:falta|ausencia).{0,20}(?:rede de apoio|apoio).{0,65}desassistid','Na desassistida, falta rede de apoio para o cuidado.|A parentalidade desassistida ocorre pela ausência de apoio aos responsáveis.|Na modalidade desassistida, as telas ajudam nas tarefas porque falta uma rede de apoio.'),
],{reject:['distraid\\w*.{0,12}(?:e causada pela falta de rede|decorre da falta de apoio)','desassistid\\w*.{0,15}(?:decorre apenas|e causada apenas).{0,25}(?:celular dos pais|uso dos pais)']})
g('I',2025,1,'a','Transição energética é a mudança da matriz para diminuir a participação dos combustíveis fósseis e ampliar fontes renováveis.',[
  c('Redução de fósseis','(?:redu\\w*|diminu\\w*|substitu\\w*|menor).{0,40}(?:fosseis|petroleo|carvao|gas natural)','A transição reduz o uso de combustíveis fósseis.|Busca-se diminuir a participação de petróleo e carvão.|A mudança substitui progressivamente fontes fósseis.'),
  c('Ampliação de renováveis','(?:ampli\\w*|aument\\w*|mais|adot\\w*|prioriz\\w*).{0,40}renovave\\w*','Ela amplia o uso de fontes renováveis.|A matriz passa a priorizar energias renováveis.|Há aumento da participação de fontes renováveis.'),
],{reject:['(?:aument\\w*|ampli\\w*).{0,20}(?:uso de )?(?:combustiveis )?fosseis','(?:redu\\w*|diminu\\w*).{0,20}(?:uso de )?(?:fontes )?renovaveis']})
g('I',2025,1,'b','A extração de lítio consome muita água e pode agravar a escassez hídrica do Jequitinhonha, além de causar degradação e impactos nas comunidades: benefícios globais da transição podem impor custos locais.',[
  c('Extração e água','(?:litio|extracao|minera\\w*).{0,70}(?:consum\\w*|usa|demanda).{0,25}agua','A extração do lítio demanda muita água.|A mineração de lítio demanda grandes volumes de água.|Extrair lítio usa água intensamente.'),
  c('Escassez local e contradição de escalas','(?:agrav\\w*|intensific\\w*|aument\\w*).{0,40}(?:escassez|falta de agua|problemas locais)|(?:global|transicao).{0,60}(?:custo\\w*|impact\\w*).{0,25}loca\\w*','Isso agrava a escassez de água na região.|Uma transição global pode impor custos locais.|A atividade intensifica a falta de água das comunidades locais.'),
])
g('I',2025,2,'a','A COP reúne países para negociar, implementar e acompanhar ações de enfrentamento das mudanças climáticas. Realizá-la na Amazônia evidencia a relevância das florestas e o protagonismo ambiental do Brasil.',[
  c('Objetivo climático da COP','(?:cop|conferencia|reuniao).{0,100}(?:clima|climatic\\w*|emiss\\w*|aquecimento)','A COP reúne países para enfrentar as mudanças climáticas.|A conferência negocia medidas para reduzir emissões.|A reunião busca conter o aquecimento global.'),
  c('Relevância do Brasil e da Amazônia','(?:brasil|amazonia).{0,70}(?:protagon\\w*|lider\\w*|florest\\w*|preserv\\w*|relevancia)|(?:lider\\w*|protagon\\w*).{0,35}brasil','A realização na Amazônia destaca o protagonismo ambiental do Brasil.|O Brasil reforça sua liderança na preservação das florestas.|A Amazônia evidencia a relevância da proteção florestal no debate.'),
])
g('I',2025,2,'b','Há contradição entre cobrar ações contra a crise climática e ampliar a exploração de petróleo, pois a continuidade dos fósseis mantém emissões e dificulta a transição energética.',[
  c('Discurso climático e petróleo','(?:cobr\\w*|defend\\w*|discurs\\w*).{0,50}(?:clim\\w*|ambient\\w*).{0,70}(?:petroleo|fosseis)|petroleo.{0,80}(?:contradi\\w*|discurso)','O governo cobra ação climática enquanto aposta em petróleo.|Há discurso ambiental acompanhado da ampliação do petróleo.|Defender o clima e ampliar os fósseis revela uma contradição.'),
  c('Efeito sobre emissões e transição','(?:mant\\w*|aument\\w*|ampli\\w*).{0,35}emiss\\w*|(?:adia|dificult\\w*|atras\\w*).{0,30}transicao','Essa exploração mantém as emissões de gases estufa.|Ampliar petróleo aumenta emissões.|O investimento fóssil dificulta a transição energética.'),
])

p('I',2026,1,'Vendas e marketing apresenta o maior crescimento: de 33% para 59%, aumento de 26 pontos percentuais. Administração de IA apresenta o menor: de 47% para 50%, aumento de 3 pontos percentuais.',[
  c('Maior crescimento e comparação numérica','(?:vendas.{0,15}marketing).{0,100}(?:26|vinte e seis).{0,25}(?:pontos? percentuais|p\\.?p\\.?)','Vendas e marketing teve o maior crescimento, de 26 pontos percentuais.|O maior aumento foi em vendas e marketing: 26 pontos percentuais.|Em vendas e marketing, a diferença foi de 26 pontos percentuais.'),
  c('Menor crescimento e comparação numérica','administracao.{0,10}(?:de )?ia.{0,100}(?:3|tres).{0,25}(?:pontos? percentuais|p\\.?p\\.?)','Administração de IA teve o menor crescimento, de 3 pontos percentuais.|O menor aumento ocorreu na administração de IA: 3 pontos percentuais.|Na administração de IA, a diferença foi de três pontos percentuais.'),
],{reject:['maior.{0,15}administracao','menor.{0,15}vendas','26\\s*%','3\\s*%']})
p('I',2026,2,'A imagem se relaciona aos custos elevados de implementação da IA e ao desemprego estrutural. A automação pode empobrecer trabalhadores e concentrar renda em outros grupos.',[
  c('Custos e desemprego estrutural','cust\\w*.{0,65}(?:desemprego|substituicao)|desemprego.{0,65}cust\\w*','A IA envolve custos elevados e pode gerar desemprego estrutural.|O desemprego estrutural e os altos custos são pontos negativos citados.|Os custos da automação se associam ao risco de desemprego.'),
  c('Desigualdade na renda','empobrec\\w*|concentr\\w*.{0,25}renda|desigualdade.{0,25}(?:renda|economica|social)','Parte da população pode empobrecer enquanto outra concentra renda.|A concentração de renda aumenta a desigualdade social.|A automação pode concentrar renda e empobrecer trabalhadores.'),
])
g('I',2026,1,'a','Desmatamento, combustíveis fósseis, poluição e urbanização elevam emissões de gases de efeito estufa e a temperatura global, intensificando extremos climáticos.',[
  c('Desmatamento e carbono','desmat\\w*.{0,80}(?:carbono|co2|gases|emiss\\w*|aquecimento)','O desmatamento libera carbono e intensifica o aquecimento.|O desmatamento aumenta as emissões de gases de efeito estufa.|O desmatamento reduz a retenção de carbono e agrava o aquecimento.'),
  c('Fósseis e emissão','(?:fosseis|petroleo|carvao).{0,75}(?:emiss\\w*|gases|co2|aquecimento)','A queima de combustíveis fósseis emite gases de efeito estufa.|O uso de petróleo aumenta as emissões de CO2.|A queima de carvão libera gases que intensificam o aquecimento.'),
  c('Urbanização e emissões','urbaniz\\w*.{0,75}(?:emiss\\w*|gases|co2|aquecimento)','A urbanização com alto consumo de combustíveis amplia as emissões.|A urbanização aumenta emissões e altera o equilíbrio climático.|A urbanização poluente contribui para o aquecimento global.'),
],{minimum:2})
g('I',2026,1,'b','Exemplos admitidos incluem queimadas e seca dos rios na Amazônia, incêndios no Pantanal, enchentes no Sul e em Pernambuco e aridificação de regiões do Nordeste. Cite a quantidade pedida no enunciado.',[
  c('Incêndios amazônicos','(?:queimada\\w*|incend\\w*).{0,25}amazonia','Ocorreram queimadas na Amazônia.|Os incêndios na Amazônia são um exemplo.|Houve intensificação de queimadas na Amazônia.'),
  c('Seca dos rios amazônicos','seca.{0,25}(?:rios.{0,15})?amazonia|rios.{0,25}amazonia.{0,25}seca','A seca dos rios na Amazônia é outro exemplo.|Os rios da Amazônia passaram por seca intensa.|Houve seca dos rios na Amazônia.'),
  c('Incêndios no Pantanal','(?:queimada\\w*|incend\\w*).{0,25}pantanal','Houve queimadas no Pantanal.|Os incêndios do Pantanal foram extremos.|As queimadas recordes atingiram o Pantanal.'),
  c('Enchentes regionais','(?:enchente\\w*|inunda\\w*).{0,30}(?:sul|pernambuco|rio grande)','As enchentes no Sul atingiram muitas cidades.|Houve inundações em Pernambuco.|Houve enchentes intensas no Rio Grande do Sul.'),
  c('Aridificação do Nordeste','(?:arid\\w*|semiarid\\w*).{0,35}nordeste|nordeste.{0,35}(?:arid\\w*|semiarid\\w*)','A aridificação avança em áreas do Nordeste.|O Nordeste tem áreas semiáridas em transição para condições áridas.|Há maior aridez em partes do Nordeste.'),
],{minimum:2})

export const pismHumanitiesReferences = entries
g('I',2026,2,'a','Impactos ambientais são alterações ou desequilíbrios no ambiente. O projeto flexibiliza o licenciamento por adesão e compromisso, baseado na declaração do empreendedor, facilitando empreendimentos potencialmente impactantes.',[
  c('Conceito de impacto','impact\\w*.{0,60}(?:alterac\\w*|desequilibr\\w*).{0,30}(?:ambiente|ambient\\w*)','Impactos são alterações no meio ambiente.|O impacto ambiental é um desequilíbrio ambiental.|Impactos ambientais correspondem a alterações do ambiente.'),
  c('Flexibilização e autodeclaração','(?:licenciamento|licenca).{0,100}(?:adesao|autodeclar\\w*|declaracao|flexibil\\w*)','O licenciamento por adesão usa a declaração do empreendedor e flexibiliza o controle.|A licença é flexibilizada por meio de autodeclaração.|O licenciamento por adesão e compromisso facilita a aprovação de empreendimentos.'),
])
g('I',2026,2,'b','Entre os riscos estão poluição dos rios, desmatamento, contaminação do solo, perda de biodiversidade e alterações climáticas.',[
  c('Poluição hídrica','polui\\w*.{0,20}(?:rios|agua)|contamina\\w*.{0,20}(?:rios|agua)','Pode aumentar a poluição dos rios.|Há risco de contaminação da água.|A poluição da água pode se agravar.'),
  c('Desmatamento','desmat\\w*','O desmatamento pode crescer.|Pode haver aumento do desmatamento.|A flexibilização favorece o desmatamento.'),
  c('Solo contaminado','contamina\\w*.{0,20}solo','Há risco de contaminação do solo.|Pode aumentar a contaminação do solo.|Pode ocorrer contaminação no solo.'),
  c('Biodiversidade','(?:perda|reducao|diminuicao).{0,20}biodiversidade','Pode ocorrer perda de biodiversidade.|Há risco de redução da biodiversidade.|A diminuição da biodiversidade é um impacto.'),
],{minimum:2})

// Formulações adicionais específicas para combinar dez modelos sem apenas reordenar frases.
const additionalPhrases = `
III:2025:Língua Portuguesa:1/resposta~A disponibilidade do profissional é mobilizada sob demanda pelas plataformas.
III:2025:Língua Portuguesa:2/resposta~A voz de autoridade oferece credibilidade à posição da entrevistada.
III:2025:Língua Portuguesa:3/resposta~Para a entrevistada, a mudança tem efeito negativo sobre o trabalhador.
III:2025:Língua Portuguesa:4/resposta~O desenho denuncia a exploração do trabalhador pelos aplicativos.
III:2025:Geografia:1/a~A ascensão da extrema-direita altera a correlação política representada.
III:2025:Geografia:2/a~O mecanismo geopolítico recebe o nome de poder brando ou soft power.
III:2025:Geografia:3/a~Brasil e Bolívia aparecem associados a investidas golpistas.
III:2025:Geografia:3/b~Os tanques de guerra funcionam como símbolos das forças armadas.
III:2025:Geografia:4/a~O objetivo é diminuir a dependência de determinadas fontes energéticas.
III:2026:Língua Portuguesa:2/resposta~O Instagram é empregado para divulgar o conteúdo jornalístico.
III:2026:Língua Portuguesa:3/resposta~A rotina digital traz informações trágicas e interações vazias.
III:2026:Língua Portuguesa:4/resposta~A charge retoma a posição reflexiva de O Pensador ao apresentar um robô.
III:2026:Língua Portuguesa:5/resposta~O namoro com IA pode trazer prejuízos à vida afetiva humana.
III:2026:Geografia:1/b~A ausência de proteção social é parte da precarização descrita.
III:2026:Geografia:2/a~Regras e instituições estruturam as relações de poder entre os Estados.
III:2026:Geografia:3/a~A aproximação entre 1948 e 2025 associa episódios históricos distintos.
III:2026:Geografia:3/b~A designação Nakba expressa a ideia de catástrofe para os palestinos.
III:2026:Geografia:4/b~A Venezuela vive crise política, inflação e falta de produtos essenciais.
III:2024:Língua Portuguesa:1/resposta~Há apagamento dos testemunhos das pessoas africanas escravizadas.
III:2024:Língua Portuguesa:2/resposta~Resgatar a trajetória de africanas escravizadas enfrenta a invisibilidade histórica.
III:2024:Língua Portuguesa:3/resposta~Entretanto, o apagamento histórico favorece leituras distorcidas.
III:2024:Língua Portuguesa:4/resposta~A palavra expressa a união de pessoas para formar coletivos.
III:2024:Língua Portuguesa:5/resposta~Aquilombar, como verbo, solicita uma ação transformadora do leitor.
III:2024:Geografia:1/b~Os países de maior PIB possuem mais recursos para apoiar a transição.
III:2024:Geografia:3/b~O nome da praça permite preservar a memória da população negra.
III:2024:Geografia:4/b~A referência histórica é o conflito de Biafra na Nigéria.
I:2024:Língua Portuguesa:1/resposta~O emprego do imperativo fornece instruções práticas ao público.
I:2024:Língua Portuguesa:2/resposta~A crítica da charge recai sobre a ideia de racismo reverso.
I:2024:Geografia:1/b~Incêndios emitem gases que ampliam o efeito estufa e o aquecimento.
I:2024:Geografia:2/a~O indivíduo constitui o centro de orientação do aplicativo.
II:2024:Língua Portuguesa:1/resposta~A trajetória reúne múltiplas características e experiências singulares.
II:2024:Língua Portuguesa:2/resposta~Mais da metade dos brasileiros pertence à população negra, o que torna o espanto injustificável.
II:2024:Geografia:1/a~São máquinas e equipamentos empregados no processo de produção.
II:2024:Geografia:1/b~A reprimarização da balança comercial reduz o peso relativo da indústria.
II:2024:Geografia:2/a~O aumento da agricultura familiar amplia a produção de alimentos básicos.
II:2024:Geografia:2/b~A divisão sexual das responsabilidades de cuidado sobrecarrega as mulheres.
II:2025:Língua Portuguesa:1/resposta~A promoção profissional passa a depender de visibilidade em redes sociais.
II:2025:Língua Portuguesa:2/resposta~A análise revela uma avaliação predominantemente negativa da tendência.
II:2025:Geografia:1/a~O racismo determina diferenças de exposição e proteção entre grupos.
II:2025:Geografia:2/a~A dispersão da indústria redistribui atividades pelo território.
II:2025:Geografia:2/b~A redistribuição industrial não foi finalizada.
II:2026:Língua Portuguesa:1/resposta~O uso excessivo pode reduzir as habilidades sociais e prejudicar relações.
II:2026:Geografia:1/b~A concentração de renda no campo repercute nas desigualdades urbanas.
II:2026:Geografia:2/a~Nos países centrais, a tecnologia permite aprofundar a automação.
I:2025:Língua Portuguesa:1/resposta~Equipamentos eletrônicos substituem o cuidado da babá ao entreter os filhos.
I:2025:Língua Portuguesa:2/resposta~A parentalidade distraída aparece quando os pais priorizam as próprias telas.
I:2025:Geografia:1/a~A nova matriz pretende reduzir a dependência dos combustíveis fósseis.
I:2025:Geografia:1/b~A mineração do lítio usa grandes quantidades de água na extração.
I:2025:Geografia:2/a~A conferência procura atualizar os compromissos dos países com o clima.
I:2025:Geografia:2/b~O discurso de proteção climática contrasta com investimentos em petróleo.
I:2026:Língua Portuguesa:1/resposta~Em vendas e marketing, o avanço de 33% para 59% equivale a 26 pontos percentuais.
I:2026:Língua Portuguesa:2/resposta~Os altos custos de implementação da IA acompanham o risco de desemprego estrutural.
I:2026:Geografia:2/a~Impactos ambientais são desequilíbrios provocados no ambiente.
`
for (const line of additionalPhrases.trim().split('\n')) {
  const [key, phrase] = line.split('~')
  entries[key].concepts[0].phrases.push(phrase)
}
