"""Questões objetivas e redação da segunda fase; gabarito público oficial."""
PORTUGUESE = []
KEY = 'B B A E C C A B E E D D B C B'.split()
def p(n,title,text,options,support,page,highlights=None):
    PORTUGUESE.append(dict(id=f'ita-2026-2f-portugues-{n}',number=30+n,originalNumber=n,
        subject='Português',kind='objective',title=title,text=text,options=options,answer=KEY[n-1],
        supportKey=support,fields=[],highlights=highlights or [],
        examSource=f'/provas/ita/2026/segunda-fase/portugues.pdf#page={page}',
        source='/provas/ita/2026/segunda-fase/gabarito.pdf'))

p(1,'Prosa e liberdade de expressão','Segundo os argumentos desenvolvidos, o narrador',[
 'prefere a prosa ao verso como subterfúgio para sua incapacidade de escrever poemas.',
 'crê que as leis rítmicas, próprias dos versos, restringem a livre expressão do pensamento.',
 'julga que a prosa, ao prescindir de estrutura rítmica, compromete a manifestação das ideias.',
 'diz que o ritmo acidental do verso impede a prosa, assim como o da prosa afeta o verso.',
 'atesta que a prosa, ao valer-se de transposições, procura imitar outras formas de arte.'],'pessoa',2)
p(2,'Heterônimos de Fernando Pessoa','O livro do desassossego é assinado por Bernardo Soares, um dos heterônimos de Fernando Pessoa. Sobre tais heterônimos, assinale a alternativa CORRETA.',[
 'Heterônimos são assinaturas fictícias adotadas por Pessoa, que mantém sua personalidade ao escrever sob diferentes nomes.',
 'Alberto Caieiro é o poeta que, em busca da simplicidade, volta-se para a vida no campo.',
 'Ricardo Reis é o poeta das sensações, que representa o homem moderno ao tratar de temáticas futurísticas.',
 'Álvaro de Campos é o poeta neoclássico, que compõe versos eruditos que trazem referências mitológicas.',
 'Bernardo Soares é adepto a um estilo coloquial e explora de forma objetiva o real sentido da vida.'],'pessoa',3)
p(3,'Forma do poema','Uma característica do Parnasianismo evidenciada no poema é a',[
 'composição de versos decassílabos, distribuídos em dois quartetos e dois tercetos.',
 'valorização das figuras sonoras, principalmente as de construções paronomásticas.',
 'predileção pelo soneto, cujos versos alexandrinos denotam a estilística parnasiana.',
 'presença do pessimismo, ao sugerir que a forma como a ideia se desenvolveu provocou em si mesma danos irreversíveis.',
 'objetividade, evidente na inquietação do eu lírico ao tentar compreender de onde vem a ideia.'],'anjos',4)
p(4,'Análise sintática no poema',
 '''Dado o contexto do poema, avalie cada assertiva abaixo, se é V (verdadeira) ou F (falsa). Depois, assinale a sequência CORRETA.
( ) “tísica”, “mínima”, “raquítica” e “centrípeta” são adjetivos que desempenham a função de predicativo do sujeito.
( ) Em “a força centrípeta”, “força” é substantivo e atua como núcleo do sujeito.
( ) Em “que a constringe” e “que a amarra”, “a” é pronome pessoal e exerce a função de objeto direto.
( ) “executa” é um verbo regular, que é classificado como intransitivo.''',
 ['V, V, F, F','V, V, V, V','F, V, V, F','F, F, F, F','F, F, V, V'],'anjos',4)
p(5,'O prazer dos livros',
 '''Considere as assertivas referentes ao que se depreende do conteúdo do texto. Em seguida, assinale a alternativa CORRETA.
I. O amor pelo livro provoca efeitos nas dimensões emocional, intelectual e sensorial.
II. A relação com os livros revela-se inócua a ponto de suscitar o desejo de que outras pessoas desfrutem do prazer proporcionado pela leitura.
III. A utilidade do livro é inequívoca, porque assegura a perenidade do conhecimento.''',[
 'Todas as assertivas estão corretas.','Apenas a assertiva III está correta.','Apenas as assertivas I e III estão corretas.','Apenas a assertiva I está correta.','Apenas as assertivas II e III estão corretas.'],'mindlin',5)
p(6,'Derivação parassintética','O vocábulo destacado constitui exemplo de DERIVAÇÃO PARASSINTÉTICA em',[
 '“[...] que me tem acompanhado a vida inteira, e, acima disto, é incurável”.',
 '“[...] contato com o mundo exterior que abre, para o leitor, horizontes ilimitados”.',
 '“O livro informa, enriquece o espírito [...]”.','“[...] põe a imaginação em movimento [...]”.',
 '“Brincadeira à parte, creio que a utilidade do livro é indiscutível [...]”.'],'mindlin',6,
 ['incurável','ilimitados','enriquece','imaginação','indiscutível'])
p(7,'Sociedade e informação','A partir do trecho lido, é possível inferir que a sociedade descrita no romance valoriza PRINCIPALMENTE',[
 'a informação rápida e sucinta, ainda que de baixa qualidade ou criticidade, em detrimento de uma abordagem reflexiva.',
 'o conhecimento dos tabloides ao invés dos livros, desde que mantido o rigor da qualidade do que é consumido.',
 'a informação, antes veiculada em livros, agora adaptada e reduzida a colunas de dois minutos de leitura.',
 'o conhecimento, desde que abordado de forma sucinta e acessível a todas as pessoas.',
 'a informação rápida e sucinta, desde que gravada em dicionários ou verbetes para consultas.'],'bradbury',7)
p(8,'Recursos linguísticos e simplificação',
 '''Analise o excerto abaixo e julgue as assertivas quanto aos recursos linguísticos empregados no texto. Em seguida, assinale a alternativa CORRETA.
“Clique, Fotografe, Olhe, Observe, Filme, Aqui, Ali, Depressa, Passe, Suba, Desça, Entre, Saia, Por quê, Como, Quem, O quê?, Onde, Hein?, Ui! Bum! Tchan! Póin, Pim, Pam, Pum!”
I. O uso de sequência de verbos sem complemento contribui para dar o efeito de rapidez da mudança e simplificação que ocorreu com os produtos culturais.
II. O predomínio do imperativo faz alusão a uma sociedade que manipula seus cidadãos de forma imperceptível por meio de produtos culturais.
III. A gradação dos recursos linguísticos do trecho, que inicia com verbo e termina com onomatopeia, contribui para evidenciar o processo de simplificação dos produtos culturais.
IV. A anáfora do trecho, iniciada com verbos de comando e finalizada com onomatopeias, contribui para a crítica acerca do processo de simplificação dos produtos culturais.''',[
 'Apenas as assertivas I e II estão corretas.','Apenas as assertivas I, II e III estão corretas.',
 'Apenas as assertivas I, III e IV estão corretas.','Apenas as assertivas II, III e IV estão corretas.',
 'Todas as assertivas estão corretas.'],'bradbury',7)
p(9,'Voz verbal e agente da ação',
 '“— A escolaridade é abreviada, disciplina relaxada, as filosofias, as histórias e as línguas são abolidas, gramática e ortografia pouco a pouco negligenciadas e, por fim, quase totalmente ignoradas”. Acerca dos recursos linguísticos utilizados no trecho e dos seus efeitos de sentido, é CORRETO afirmar que predominam estruturas na voz',[
 'ativa, com sujeito indeterminado a fim de impessoalizar o responsável pela ação, parte da crítica presente no trecho.',
 'ativa, com a omissão do agente da passiva para impessoalizar o agente da ação; desse modo, sabe-se quais as ações tomadas, mas não por quem.',
 'passiva sintética, com a omissão da partícula “se”, o que confere ao texto um grau de parcialidade que permite não atribuir responsabilidade pelas ações.',
 'passiva analítica, com a omissão do sujeito, o que confere ao texto um grau de parcialidade em virtude de que não se sabe quem é responsável pela ação.',
 'passiva analítica, com a omissão do agente da passiva, o que confere ao texto a noção de que não há um único responsável visível pelas ações descritas.'],'bradbury',8)
p(10,'Comunicação afetiva','Sobre o processo comunicativo na sociedade da informação, é CORRETO inferir que',[
 'a comunicação afetiva, na sociedade de informação, prescinde de informações com maior potencial de estimular.',
 'a racionalidade discursiva sobrepuja a comunicação afetiva, por ser uma das características de comunicação da sociedade da informação.',
 'a comunicação afetiva e a racionalidade discursiva coadunam-se na propagação de fake news na sociedade da informação.',
 'a comunicação afetiva é prejudicial para a racionalidade discursiva, pois permite a propagação de saberes inerentes à sociedade de informação.',
 'a comunicação afetiva coíbe a racionalidade discursiva em virtude da velocidade da troca de informações que surge na sociedade da informação.'],'han',9)
p(11,'Função sintática',
 'Assinale a alternativa cujo sintagma grifado exerce a mesma função sintática que a oração sublinhada em “A guerra de memes indica que a comunicação digital privilegia cada vez mais o visual perante o textual”. Oração sublinhada: “que a comunicação digital privilegia cada vez mais o visual perante o textual”.',[
 '“Em uma comunicação afetiva, não prevalecem os melhores argumentos, [...]”.',
 '“A gente se deixa afetar por informações que se seguem umas às outras”.',
 '“Memes são vírus mediais [...]”.','“A coação da comunicação acelerada nos priva da racionalidade”.',
 '“...não temos tempo para a ação racional”.'],'han',9,
 ['os melhores argumentos','que se seguem umas às outras','vírus mediais','nos','para a ação racional'])
p(12,'Romantismo e naturalismo',
 '''Sobre o texto e as escolas literárias a que ele faz referência, avalie as seguintes assertivas. Em seguida, assinale a alternativa CORRETA.
I. O romantismo apresenta um olhar idealizado para as origens brasileiras, o que justificaria um olhar de heroísmo para o negro.
II. O naturalismo apresenta um olhar pautado no cientificismo, que animaliza tanto o ser humano quanto as relações humanas.
III. O texto estabelece uma relação entre naturalismo e romantismo, uma vez que o naturalismo, ao exagerar na descrição naturalista, aproxima-se da idealização romântica.
IV. O texto estabelece uma relação entre naturalismo e romantismo apenas se houver uma idealização exagerada do protagonista da narrativa, pautada em descrição minuciosa.''',[
 'Apenas I e II estão corretas.','Apenas I e III estão corretas.','Apenas I e IV estão corretas.',
 'Apenas II e III estão corretas.','Apenas II e IV estão corretas.'],'naturalismo',10)
p(13,'Bucolismo na pintura',
 'Assinale a alternativa que apresenta a imagem que se relaciona ADEQUADAMENTE com as características da escola literária descrita acima.',[
 'FRIEDRICH, Caspar David. Zwei Männer in Betrachtung des Mondes. Galerie Neue Meister, Dresden, Alemanha.',
 'BOUCHER, François. Landschaft mit Kirschpflückerin. Kenwood House, Londres.',
 'COURBET, Gustave. Bonjour Monsieur Courbet. Musée Fabre, Montpellier, França.',
 'BASTIEN-LEPAGE, Jules. Les foins. Musée d’Orsay, Paris, França.',
 'CHAVANNES, Pierre Puvis de. Le Rêve. Museu do Louvre, Paris, França.'],'bosi',10)
p(14,'Memória e lembrança','De acordo com as informações do texto, depreende-se que',[
 'as memórias se embaralham e se ordenam lado a lado em portadores de Alzheimer, assim as recentes são preservadas, e as antigas se perdem.',
 'a citação a Henri Bergson, que constitui um argumento de senso comum, comprova que a memória é um fenômeno elucidado.',
 'as lembranças podem não seguir uma ordem temporal, razão pela qual coexistem de forma desorganizada.',
 'a desorientação espaço-temporal não pode ser usada de forma segura na detecção de pacientes com Alzheimer.',
 'a mãe do narrador, ao chamar o neto de “filhinho”, sinaliza seu desejo de ter tido mais um filho.'],'paiva',14)
p(15,'Complemento nominal','Identifique a alternativa em que a expressão em destaque, retirada do texto, atua como COMPLEMENTO NOMINAL.',[
 '“[...] aparece alguém que nos livra do desconforto”.','“Um teste clínico simples para detectar a falta de memória [...]”.',
 '“Um truque da vida”.','“[...] não se lembra do que comeu no café da manhã”.','“[...] vê meu filho de um ano [...]”.'],'paiva',14,
 ['do desconforto','de memória','da vida','da manhã','de um ano'])

ESSAY = dict(id='ita-2026-2f-redacao',number=46,originalNumber=16,subject='Redação',kind='essay',
 title='O jovem engenheiro e o apodrecimento cerebral',
 text='''A expressão brain rot, escolhida como palavra do ano em 2024 pelo Dicionário de Oxford, passou a designar os impactos negativos, sobre o cérebro humano, do consumo excessivo de conteúdo superficial, especialmente entre os jovens. Em um cenário de revolução tecnológica e amplas possibilidades de inovação, espera-se que os futuros engenheiros assumam um papel ativo na preservação de uma mente saudável, voltada à valorização do conhecimento. A partir dos textos motivadores e de seus próprios conhecimentos, redija um texto dissertativo-argumentativo, em norma-padrão da língua portuguesa, sobre o tema: “A importância do comprometimento do jovem engenheiro com a prevenção do próprio apodrecimento cerebral”.
Instruções específicas:
1. Dê um título à dissertação.
2. O texto deve compreender o espaço de 25 a 35 linhas.
3. Não faça qualquer anotação na folha de redação.''',
 fields=[],supportKey='redacao',examSource='/provas/ita/2026/segunda-fase/portugues.pdf#page=15',
 rubric=['Desenvolver o tema com foco no comprometimento do jovem engenheiro e na prevenção do próprio apodrecimento cerebral.',
 'Defender uma tese com argumentos consistentes, relacionados aos textos motivadores e a conhecimentos próprios.',
 'Organizar introdução, desenvolvimento e conclusão com coerência e coesão.',
 'Usar a norma-padrão, dar título e planejar uma versão de 25 a 35 linhas no papel.',
 'Evitar cópia da coletânea e generalizações sem fundamentação. A contagem de linhas digitadas não equivale às linhas da folha oficial.'])
