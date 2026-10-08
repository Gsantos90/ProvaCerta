-- Fonte: https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos/2024

-- ENEM 2024 — aplicação regular, cadernos amarelos 2 e 5.

-- 181–185 armazenam espanhol (questões oficiais 1–5), sem somar ao total de 180.

begin;
do $$ begin
 if not exists (select 1 from public.exams where slug='enem-2024') then
  raise exception 'Cadastre o ENEM 2024 antes de executar esta importação.';
 end if;
end $$;

alter table public.questions drop constraint if exists questions_answer_check;

alter table public.questions add constraint questions_answer_check check (answer ~ '^[A-E](/[A-E])*$');

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,181,'Linguagens - Língua Espanhola','Questão 1 — leia o enunciado e as alternativas na imagem do caderno oficial.','A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.

Texto disponível para leitura:
QUESTÃO 01
Celerina Patricia Sánchez Santiago comentó que su 
acercamiento a la poesía fue por la escuela, con libros de texto 
en español. Descubrió el gusto por las letras pero notó que no 
había textos en la suya, así que, contra muchos comentarios 
negativos que recibió en ese momento, decidió emprender el 
camino de la escritura pero en mixteco. “Fue un proceso de 
años para notar que en mi lengua podía escribir poesía, 
porque me decían que mi lengua era tan pobre que no podía 
tener conceptos abstractos, era un reto pero yo sabía que 
sí era posible”.
Este proceso no sólo le ayudó a vivir la poesía en 
mixteco, sino a “ir descubriendo mi propia historia y la de mi 
pueblo”. Comentó que las lenguas habladas en el territorio 
nacional se encuentran en gran desventaja con el español. 
“El reconocimiento a la diversidad no se ha hecho y ha 
sido tratada de borrar. Este es un país con 68 lenguas 
y somos monolingües del español. Antes había nulo de 
reconocimiento de ser bilingüe, negabas que hablabas tu 
lengua, hasta le decían dialecto. Era parte del proceso fatal 
que nos llevó a no reconocernos en un país multilingüe. 
¿Si tenemos varias lenguas por qué no aprender?”.
Disponível em: www.fapcom.edu.br. Acesso em: 20 nov. 2021.
Em sua escrita poética, a poetisa mexicana Celerina 
Patricia Sánchez Santiago assume o desafio de
A destacar a importância da literatura na formação escolar.
B discutir a hegemonia da literatura escrita em espanhol.
C promover reflexões acerca de conceitos abstratos.
D representar a pluralidade linguística de seu país.
E narrar uma trajetória de autoconhecimento.','/enem-2024/q181.png','["destacar a importância da literatura na formação escolar.", "discutir a hegemonia da literatura escrita em espanhol.", "promover reflexões acerca de conceitos abstratos.", "representar a pluralidade linguística de seu país.", "narrar uma trajetória de autoconhecimento."]'::jsonb,'D','Gabarito oficial do ENEM 2024, caderno amarelo: alternativa D.' from public.exams where slug='enem-2024' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,182,'Linguagens - Língua Espanhola','Questão 2 — leia o enunciado e as alternativas na imagem do caderno oficial.','A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.

Texto disponível para leitura:
QUESTÃO 02
“Y si llueve, que llueva” es un refrán gallego. Para mí cobró 
sentido una noche de febrero, cuando vivía en el barrio de la 
Macarena de Sevilla con dos buenos amigos, gallegos también.
Mi compañero y yo nos decidimos a salir ese sábado 
de noche, pese a que había estado lloviendo algunas 
horas a lo largo del día. La idea era una locura, al parecer. 
Le propusimos salir “de parranda” con nosotros a una 
amiga andaluza, ésta respondió que no, nos dijo que no 
iba a salir un día de lluvia. Flipamos. Comentamos entre 
nosotros que si los gallegos no saliésemos de casa cuando 
llueve, en invierno saldríamos poco. Habríamos inventado 
el confinamiento hace mucho.
Los gallegos no dejamos de salir por la lluvia.
Disponível em: https://politicahora.es. Acesso em: 26 out. 2021.
O comportamento dos personagens narrado no texto 
destaca o(a)
A abandono da própria identidade.
B medo dos perigos durante a noite.
C influência do grupo na tomada de decisão.
D diferença cultural entre galegos e andaluzes.
E variação meteorológica entre Sevilha e Galiza.
EM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024
REDAÇÃO • 1º DIA • CADERNO 2 • AMARELO 3','/enem-2024/q182.png','["abandono da própria identidade.", "medo dos perigos durante a noite.", "influência do grupo na tomada de decisão.", "diferença cultural entre galegos e andaluzes.", "variação meteorológica entre Sevilha e Galiza.\r\nEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024\r\nREDAÇÃO • 1º DIA • CADERNO 2 • AMARELO 3"]'::jsonb,'D','Gabarito oficial do ENEM 2024, caderno amarelo: alternativa D.' from public.exams where slug='enem-2024' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,183,'Linguagens - Língua Espanhola','Questão 3 — leia o enunciado e as alternativas na imagem do caderno oficial.','A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.

Texto disponível para leitura:
QUESTÃO 03
Morir muy vivos
No todo es perder, es cierto. Si te esfuerzas mucho 
y bien, porque no viene de fábrica, ganas conocimiento 
del mundo y de ti mismo, empatía, sosiego y, en suma, 
algo que podríamos denominar sabiduría. Pero creo que 
para ello hay que mantenerse alerta y no darse nunca por 
vencido. Pero también es un tiempo para saldar cuentas. 
No creo que haya que dejarse llevar por el peso de los días 
como un leño podrido al que las olas arrojan finalmente 
a la playa. Uno siempre puede intentar sacarse alguna 
de las piedras que lleva a la espalda, decir las cosas que 
nunca se atrevió a decir, cumplir en la medida de lo posible 
los deseos arrumbados, rescatar algún sueño que quedó 
en la cuneta. No rendirse, esa es la clave. Y sobre todo 
decirse: ¿y por qué no? Porque la vejez no está reñida con 
la audacia. Debemos aspirar a morir muy vivos.
MONTERO, R. Disponível em: https://elpais.com.
 Acesso em: 4 dez. 2017.
Nesse texto, ao utilizar a expressão “morir muy vivos”, 
a escritora Rosa Montero evidencia a importância de se
A acumular sabedoria com o passar do tempo.
B observar o impacto dos anos sobre o corpo.
C rever os erros e os acertos de sua trajetória.
D desfrutar de todas as fases da vida.
E libertar das amarras sociais.','/enem-2024/q183.png','["acumular sabedoria com o passar do tempo.", "observar o impacto dos anos sobre o corpo.", "rever os erros e os acertos de sua trajetória.", "desfrutar de todas as fases da vida.", "libertar das amarras sociais."]'::jsonb,'D','Gabarito oficial do ENEM 2024, caderno amarelo: alternativa D.' from public.exams where slug='enem-2024' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,184,'Linguagens - Língua Espanhola','Questão 4 — leia o enunciado e as alternativas na imagem do caderno oficial.','A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.

Texto disponível para leitura:
QUESTÃO 04
Los últimos días del sitio de Tenochtitlán
Y todo esto pasó con nosotros.
Nosotros lo vimos,
nosotros lo admiramos.
Con esta lamentosa y triste suerte
nos vimos angustiados.
En los caminos yacen dardos rotos,
los cabellos están esparcidos.
Destechadas están las casas,
enrojecidos tienen sus muros.
Gusanos pululan por calles y plazas,
y en las paredes están salpicados los sesos.
Rojas están las aguas, están como teñidas,
y cuando la bebimos,
es como si bebiéramos agua de salitre.
Manuscrito anónimo de Tlatelolco, 1528. Disponível em: 
www.biblioweb.tic.unam.mx. Acesso em: 13 out. 2021 (fragmento).
Nesse poema, o eu lírico representa a voz de um 
sobrevivente asteca que testemunha a
A destruição da capital do Império Asteca pelos 
colonizadores espanhóis.
B degradação do meio ambiente no entorno da capital 
do Império Asteca.
C tristeza dos refugiados astecas ao deixarem a capital 
do Império rumo ao exílio.
D aflição dos astecas ao receberem os colonizadores 
espanhóis na capital do Império.
E resistência dos astecas às mudanças feitas pelos 
colonizadores espanhóis na capital do Império.
ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM20
4 LINGUAGENS, CÓDIGOS E SUAS TECNOLOG','/enem-2024/q184.png','["destruição da capital do Império Asteca pelos \r\ncolonizadores espanhóis.", "degradação do meio ambiente no entorno da capital \r\ndo Império Asteca.", "tristeza dos refugiados astecas ao deixarem a capital \r\ndo Império rumo ao exílio.", "aflição dos astecas ao receberem os colonizadores \r\nespanhóis na capital do Império.", "resistência dos astecas às mudanças feitas pelos \r\ncolonizadores espanhóis na capital do Império.\r\nENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM20\r\n4 LINGUAGENS, CÓDIGOS E SUAS TECNOLOG"]'::jsonb,'A','Gabarito oficial do ENEM 2024, caderno amarelo: alternativa A.' from public.exams where slug='enem-2024' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;

insert into public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation) select id,185,'Linguagens - Língua Espanhola','Questão 5 — leia o enunciado e as alternativas na imagem do caderno oficial.','A imagem preserva textos, fórmulas, gráficos e alternativas. Amplie para conferir os símbolos.

Texto disponível para leitura:
QUESTÃO 05
El vírus de la cancelación
¿De qué se trata este fenómeno? Se entiende por 
cultura de la cancelación a una práctica popular que consiste 
en “quitarle apoyo” especialmente a figuras públicas y 
compañías multinacionales después de que hayan hecho 
o dicho algo considerado objetable u ofensivo. Cuando 
alguien o algo está cancelado se descarta, se deja de ver, 
se deja de escuchar, se desclasifica, se aísla, se abandona, 
se niega, se deja de consumir hasta que eventualmente 
puede o no desaparecer. Es una estrategia muy extendida 
en la historia de las luchas anticoloniales, antiespecistas, 
sexodisidentes, feministas y, especialmente en nuestro 
país, también llevadas adelante por el movimiento de 
derechos humanos. Entonces, ¿dónde radica el problema? 
Se puede observar positivamente que hay un proceso cada 
vez más agudo de socialización de herramientas críticas 
para desmantelar formas de desigualdad incrustadas en 
los lazos sociales. Pero la popularización irrestricta y el uso 
amplificado de esta herramienta por fuera de sus contextos 
colectivos de emergencia han despertado efectos adversos 
en una sociedad atravesada por las pantallas como formas 
de encierro-consumo, la representación online como única 
esfera pública y un imperativo felicista cuya moral nos obliga 
a trabajar ansiosamente por una vida sin desacuerdos, sin 
errores y sin dolor, a como dé lugar.
Disponível em: www.revistaanfibia.com. 
Acesso em: 7 out. 2021 (adaptado).
Na argumentação apresentada sobre cultura do 
cancelamento, esse texto objetiva
A apresentar o conceito desse tipo de prática.
B mostrar a contrariedade das mídias com relação a 
essa atitude.
C criticar o impacto dessa cultura sobre a vida 
representada nas redes.
D evidenciar a democratização dessa prática na 
sociedade virtual.
E discorrer historicamente sobre a origem e as causas 
dessa cultura.
EM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024
AS E REDAÇÃO • 1º DIA • CADERNO 2 • AMARELO •','/enem-2024/q185.png','["apresentar o conceito desse tipo de prática.", "mostrar a contrariedade das mídias com relação a \r\nessa atitude.", "criticar o impacto dessa cultura sobre a vida \r\nrepresentada nas redes.", "evidenciar a democratização dessa prática na \r\nsociedade virtual.", "discorrer historicamente sobre a origem e as causas \r\ndessa cultura.\r\nEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024ENEM2024\r\nAS E REDAÇÃO • 1º DIA • CADERNO 2 • AMARELO •"]'::jsonb,'C','Gabarito oficial do ENEM 2024, caderno amarelo: alternativa C.' from public.exams where slug='enem-2024' on conflict (exam_id,number) do update set subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=excluded.explanation;

-- Preserva as resoluções existentes e corrige apenas a marcação de anuladas.
update public.questions q set answer='A/B/C/D/E'
from public.exams e where q.exam_id=e.id and e.slug='enem-2024'
and q.explanation ilike '%questão anulada%';
commit;
