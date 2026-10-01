-- Seed: CNU 2024 - Bloco 8 (Nivel Intermediario) - TARDE
-- Concurso Publico Nacional Unificado - Edital no 08/2024, de 10 de janeiro de 2024 - Banca FGV/Cesgranrio
-- Prova 16 - Gabarito 1 - Provas Objetivas (45 questoes: Nocoes de Direito 1-15, Matematica 16-30, Realidade Brasileira 31-45)
-- Gabarito: 1-E,2-C,3-E,4-D,5-E,6-A,7-A,8-C,9-C,10-C,11-D,12-A,13-D,14-B,15-C,
--           16-E,17-B,18-E,19-C,20-A,21-D,22-B,23-A,24-B,25-A,26-D,27-D,28-A,29-A,30-D,
--           31-E,32-C,33-E,34-D,35-B,36-E,37-A,38-B,39-A,40-E,41-C,42-D,43-D,44-C,45-C
-- Observacao: as questoes de Matematica com figura (19, 21, 22, 27, 28) referenciam imagens em /public.
--             Exporte os recortes do PDF para public/ mantendo os nomes indicados em support_image.
--             As questoes de Matematica trazem explicacao (coluna explanation).

insert into public.exams (slug, title, source, year)
values ('cnu-2024-bloco8-tarde', 'CNU 2024 - Bloco 8 (Tarde) - Nível Intermediário', 'cnu', '2024')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- NOCOES DE DIREITO (Questoes 1 a 15)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Noções de Direito',
'O imprudente condutor do caminhão de uma empresa responsável pela coleta de lixo em vias públicas colidiu e causou danos ao veículo de um particular. A empresa alegou que estava desempenhando um serviço público insalubre e se recusou a ressarcir o motorista do veículo particular. Nessa situação, tendo em vista a responsabilidade civil da empresa,',
'',
'',
'["a insalubridade do serviço público prestado dispensa o ressarcimento de danos causados a terceiros.","a essencialidade do serviço público prestado dispensa o ressarcimento de danos causados a terceiros.","o ressarcimento de danos causados a terceiros por empresas prestadoras de serviços públicos depende de mútuo consentimento entre as partes.","o ressarcimento de danos causados a terceiros por empresas prestadoras de serviços públicos depende de autorização do Tribunal de Contas.","as pessoas jurídicas de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Noções de Direito',
'Uma autoridade pública agiu, no desempenho de suas atribuições, de forma ilegal e com abuso de poder ao autuar uma empresa para compeli-la ao pagamento de um tributo indevido. Qual medida judicial é constitucionalmente assegurada para proteger o direito líquido e certo da empresa ao não recolhimento?',
'',
'',
'["Apelação","Habeas corpus","Mandado de segurança","Embargos de declaração","Agravo de instrumento"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Noções de Direito',
'Um servidor público federal foi punido em um processo administrativo disciplinar com a pena de demissão, pela prática de corrupção. Posteriormente, ele foi absolvido na esfera penal, por insuficiência de provas, pelos mesmos fatos que ensejaram a punição no âmbito administrativo. Como fica a situação funcional do servidor?',
'',
'',
'["Ele terá direito à revisão do processo na esfera administrativa.","Ele terá direito a ser reintegrado.","Ele terá direito à aposentadoria proporcional.","Ele terá direito à indenização por danos materiais e morais.","Ele não terá direito à revisão do processo em razão do motivo da absolvição."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Noções de Direito',
'Ao analisar e deferir o pedido de licença para construção formulado por uma empresa, um servidor público praticou um ato ilegal. No âmbito da Administração Pública Federal, no que diz respeito à proteção dos direitos dos administradores e ao melhor cumprimento dos fins da administração, quando um ato praticado é ilegal, o(a)',
'',
'',
'["Tribunal de Contas pode revogar esse ato eivado de ilegalidade.","Poder Judiciário pode revogar esse ato ilegal.","Ministério Público deve pedir a revogação do ato ilegal perante o Poder Judiciário.","Administração Pública deve anular esse ato eivado de ilegalidade.","Administração Pública pode revogar esse ato ilegal."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Noções de Direito',
'Com o intuito de impressionar e favorecer a sua noiva, um servidor público integrante da banca de um concurso público revelou o teor e o gabarito de algumas questões desse concurso, do qual ela era candidata. Essa conduta',
'',
'',
'["não implica contrariedade aos princípios da administração pública.","deve ser submetida à análise do Tribunal de Contas.","constitui ato de improbidade administrativa, importando em enriquecimento ilícito.","constitui ato de improbidade administrativa que causa lesão ao erário.","constitui ato de improbidade administrativa que atenta contra os princípios da administração pública."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Noções de Direito',
'No livro "Torto Arado", de Itamar Vieira Junior, em sua orelha, lê-se: "...um dos grandes trunfos deste romance é a representação – com eloquência e humanidade – dos descendentes de escravizados africanos para os quais a Abolição significou muito pouco, visto que ainda sobrevivem em situação análoga à escravidão". Considerado o texto acima, a contemporaneidade brasileira e o conjunto de direitos contidos no Título dos direitos e garantias fundamentais da Constituição Federal de 1988, constata-se que',
'',
'',
'["ainda hoje há brasileiros descendentes de escravizados que não gozam do direito à liberdade e à dignidade preconizada no texto constitucional.","o direito à liberdade e à dignidade, hoje e sempre, foi amplo, geral e irrestrito.","a liberdade e a dignidade são direitos plenos e efetivos desde a promulgação da Lei Áurea.","ainda hoje não se pode reclamar o direito à liberdade e à dignidade.","no Brasil de hoje não se criminalizam práticas análogas à escravização."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Noções de Direito',
'No âmbito da Administração Pública, entende-se que ocorre o ato administrativo discricionário quando',
'',
'',
'["a Administração, diante do caso concreto, tem a possibilidade de apreciá-lo segundo critérios de oportunidade e conveniência e escolher uma dentre duas ou mais soluções, todas válidas para o direito.","os agentes públicos ou permissionários, diante do caso concreto, têm a possibilidade de apreciá-lo segundo critérios de oportunidade, diligência e eficiência e escolher várias dentre as soluções, todas válidas para o direito do consumidor.","os agentes públicos ou privados em nome da Administração, diante do caso concreto, têm a possibilidade de apreciá-lo segundo critérios de oportunidade e celeridade e escolher várias dentre as soluções, todas válidas para o direito tributário.","os agentes públicos ou concessionários, diante do caso concreto, têm a possibilidade de apreciá-lo segundo critérios de oportunidade e eficiência e escolher uma dentre as várias soluções, todas válidas para o direito privado.","os agentes públicos ou privados em nome da Administração, diante do caso concreto, têm a possibilidade de apreciá-lo segundo critérios de consciência, razoabilidade e pessoalidade e escolher várias dentre as soluções, todas válidas para o direito contratual."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Noções de Direito',
'Segundo o art. 37 da Constituição Federal de 1988, "A Administração Pública Direta e Indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios obedecerá aos princípios de legalidade, impessoalidade, moralidade, publicidade e eficiência". Além disso, deverá obedecer ao seguinte:',
'',
'',
'["os cargos, empregos e funções públicas são acessíveis aos brasileiros que preencham os requisitos estabelecidos em lei, assim como aos estrangeiros e imigrantes indocumentados, na forma da lei.","a investidura em cargo ou emprego público depende de aprovação prévia em concurso público de provas ou de provas e títulos, de acordo com a natureza e a complexidade do cargo ou emprego, na forma prevista em lei, sem quaisquer ressalvas quanto às nomeações para cargo em comissão declarado em lei de livre nomeação e exoneração.","o prazo de validade do concurso público será de até dois anos, prorrogável uma vez, por igual período.","durante o prazo improrrogável previsto no edital de convocação, aquele aprovado em concurso público de provas ou de provas e títulos será convocado sem qualquer prioridade sobre novos concursados cotistas para assumir cargo ou emprego, na carreira.","a lei reservará percentual dos cargos e empregos públicos para as pessoas portadoras de deficiência, sendo ato discricionário e desvinculado de lei os critérios de sua admissão."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Noções de Direito',
'Existem entes da Administração Direta e entes da Administração Indireta. Nesse sentido, verifica-se o seguinte:',
'',
'',
'["Ministérios e empresas públicas integram a Administração Direta.","Senado Federal e autarquias integram a Administração Indireta.","Tribunal de Contas e Supremo Tribunal Federal integram a Administração Direta.","Câmara dos Deputados e fundações públicas federais integram a Administração Direta.","Tribunal Superior do Trabalho e sociedade de economia mista integram a Administração Indireta."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Noções de Direito',
'A Educação Infantil representa prerrogativa constitucional inafastável, que assegura às crianças de zero a cinco anos de idade a primeira etapa do processo de educação básica, mediante o atendimento em creche e o acesso à pré-escola. Nesse contexto, a Educação Infantil é um direito que',
'',
'',
'["depende de instrução normativa do Poder Judiciário pela disponibilidade de recursos públicos.","é obrigação exclusiva do Poder Executivo.","é assegurado por normas constitucionais de eficácia plena e aplicabilidade direta e imediata.","não pode ser imposto pelo Poder Judiciário ao gestor público, por ofensa ao princípio da separação de poderes.","não representa um dever, mas uma meta e como tal pode não ser alcançada pela Administração Pública."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Noções de Direito',
'Um funcionário de um determinado Estado pretende realizar transposição da situação jurídica de empregado público da Companhia Estadual de Eletricidade, uma sociedade de economia mista, para os quadros funcionais da Administração direta desse Estado como servidor efetivo e estatutário. No Estado em que desempenha suas funções, há lei recém-editada que autoriza a transposição, desde que a opção seja exercida no prazo de 6 meses de sua edição. A pretensão descrita, à luz da Constituição Federal de 1988, é',
'',
'',
'["legal, válida e eficaz, se exercida dentro do prazo mencionado pela lei.","legal, porém só será eficaz se houver necessidade extraordinária do Estado na transposição.","ilegal, por causar desequilíbrio financeiro ao Estado, onerando os cofres públicos.","inconstitucional, por permitir a transposição sem a prévia realização de concurso público.","constitucional, porque seria admissível a transposição entre o trabalho executado e a função pública a realizar."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Noções de Direito',
'Os Conselhos Profissionais, enquanto autarquias corporativas criadas por lei com outorga para o exercício de atividade típica do Estado, constituem-se em espécie sui generis de pessoa jurídica de direito público não estatal, com maior grau de autonomia administrativa e financeira. Eles têm natureza peculiar que justifica o afastamento de algumas das regras, normalmente, impostas às pessoas jurídicas de direito público. No que diz respeito à legislação aplicável aos Conselhos Profissionais, certo é que a',
'',
'',
'["legislação permite que contratem pessoas sob o regime celetista.","contratação por pessoa jurídica de direito público será sempre realizada pelo regime estatutário.","autonomia e a independência relativas das quais usufruem são pertinentes ao conceito de Administração indireta.","tutela administrativa e a supervisão ministerial são imposições a que estão sujeitas.","remuneração dos seus servidores será sempre fixada pelo Poder Executivo."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Noções de Direito',
'Dentre os direitos e garantias fundamentais, há aquele de não produzir prova contra si mesmo. Esse direito admite restrição, desde que não seja afetado o núcleo essencial da garantia e a limitação decorra da ponderação com a efetivação de outros direitos constitucionais, respeitado o cânone da dignidade humana. Conclui-se, portanto, que o direito fundamental de não autoincriminar-se comporta a(o)',
'',
'',
'["valoração do investigado como se estivesse sendo objeto das provas.","possibilidade de não se manifestar, mas não de negar a prática da infração.","inviabilidade de se admitir a confissão como prova da autoria do delito.","informação ao preso sobre seus direitos, dentre os quais o de permanecer calado.","direito de se atribuir falsa identidade perante a autoridade policial."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Noções de Direito',
'Um servidor público vinculado ao Poder Judiciário do Estado W requereu o reconhecimento de atualização das verbas pertinentes ao seu cargo. Foi-lhe informado que não poderia ocorrer qualquer majoração, pois o total de sua remuneração não poderia superar o percebido pelo Chefe do Poder Executivo. Nos termos da Constituição Federal de 1988, a remuneração dos servidores públicos não poderá exceder o subsídio mensal do(s)',
'',
'',
'["Presidente da República","Ministros do Supremo Tribunal Federal","Integrantes do Senado Federal","Integrantes da Câmara dos Deputados","Integrantes do Tribunal de Contas da União"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Noções de Direito',
'Um cidadão mudou-se para o exterior, fixando seu domicílio em país integrante da comunidade europeia. Para exercer seus direitos políticos, requereu a naturalização, passando a ter duas nacionalidades, a originária, no caso, brasileira, e a derivada, do país onde exerce suas atividades. Nos termos da Constituição Federal de 1988, a aquisição de outra nacionalidade acarreta a',
'',
'',
'["suspensão da nacionalidade brasileira enquanto durar processo administrativo de aferição.","perda automática da nacionalidade brasileira.","perda da nacionalidade brasileira, caso haja pedido expresso nesse sentido.","manutenção da nacionalidade brasileira, caso haja decisão favorável do Ministério da Justiça.","manutenção da nacionalidade brasileira, caso a aquisição esteja condicionada ao exercício de direitos civis."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

-- ============================================================
-- MATEMATICA (Questoes 16 a 30) - com explicacao (explanation)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Matemática',
'Uma bomba com vazão de 2 litros de água por segundo consegue encher uma determinada piscina, inicialmente vazia, em 4h10min. Quantas toneladas mede a massa de água contida nessa piscina, quando cheia?',
'',
'',
'["2,5","3,0","15,0","25,0","30,0"]'::jsonb,
'E',
'4h10min = 4*3600 + 10*60 = 15000 s. Volume = 2 L/s * 15000 s = 30000 L. Como 1 L de água = 1 kg, a massa = 30000 kg = 30 toneladas. Alternativa E.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Matemática',
'Em uma loja, o preço de um determinado produto sofreu um desconto de 20% e passou a ser R$ 36,00. Mais tarde, no entanto, viu-se que tal desconto havia sido dado por engano e que o correto era que fosse dado um aumento de 20% no preço original do produto. Se o engano não tivesse ocorrido, então, após o aumento, o preço do produto, em reais, seria',
'',
'',
'["76,00","54,00","51,84","50,40","36,40"]'::jsonb,
'B',
'Preço com desconto: 0,8 * P = 36 => P = 45 (preço original). Com aumento de 20%: 45 * 1,2 = 54. Alternativa B.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Matemática',
'Um setor de uma empresa é formado por 11 funcionários, dos quais 4 são estagiários e 7 são efetivos. Um grupo de 5 funcionários foi formado a partir de um sorteio aleatório entre os funcionários desse setor. Qual é a probabilidade de o grupo formado possuir apenas um funcionário estagiário?',
'',
'',
'["1/4","1/5","4/11","1/22","10/33"]'::jsonb,
'E',
'Casos favoráveis: escolher 1 estagiário dentre 4 e 4 efetivos dentre 7 = C(4,1)*C(7,4) = 4*35 = 140. Total: C(11,5) = 462. Probabilidade = 140/462 = 10/33. Alternativa E.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Matemática',
'A Figura representa um círculo cujo centro é o ponto P. O retângulo PQRS é tal que o lado PS mede (5 raiz(3))/2 cm, o ponto R pertence à circunferência, e o ângulo PSQ mede 30°. O valor numérico da medida da área do círculo, em cm2, é igual a',
'',
'/cnu-2024-8-tarde-questao-19.png',
'["(25 raiz(3))/4","10π","25π","(75π)/4","36π"]'::jsonb,
'C',
'No retângulo PQRS, o ângulo PSQ = 30° e PS = (5 raiz(3))/2. No triângulo retângulo PQS (ângulo reto em P), tan(30°) = PQ/PS => PQ = PS * tan(30°) = (5 raiz(3))/2 * (1/raiz(3)) = 5/2. O raio do círculo é a diagonal PR = QS = raiz(PS^2 + PQ^2) = raiz(75/4 + 25/4) = raiz(100/4) = 5. Área = π r^2 = 25π. Alternativa C.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Matemática',
'Sejam {an} e {bn} duas sequências de números reais, tais que bn = 2^(an), para todo n natural. Sabe-se que {bn} é uma progressão geométrica cujo primeiro termo é 16 e cuja razão é 8. Necessariamente, a sequência numérica {an} é uma progressão',
'',
'',
'["aritmética, cujo primeiro termo é 4 e cuja razão é 3.","aritmética, cujo primeiro termo é 8 e cuja razão é 4.","aritmética, cujo primeiro termo é 16 e cuja razão é 8.","geométrica, cujo primeiro termo é 4 e cuja razão é 3.","geométrica, cujo primeiro termo é 8 e cuja razão é 4."]'::jsonb,
'A',
'b1 = 16 = 2^4 => a1 = 4. Como bn = 2^(an) e b(n+1)/bn = 8 = 2^3, então 2^(a(n+1) - an) = 2^3 => a(n+1) - an = 3 (constante). Logo {an} é uma PA de primeiro termo 4 e razão 3. Alternativa A.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Matemática',
'Uma pesquisa foi feita com os funcionários de uma empresa, acerca da quantidade de eletrodomésticos que cada um possui em sua casa. Os dados obtidos na pesquisa estão representados no histograma. A diferença entre a média aritmética e a mediana do número de eletrodomésticos presentes nas casas dos funcionários dessa empresa é',
'',
'/cnu-2024-8-tarde-questao-21.png',
'["4,0","3,5","0,5","0,1","0"]'::jsonb,
'D',
'Do histograma: 8 funcionários com 3, 13 com 4, 7 com 5 e 2 com 6 (total 30). Soma = 8*3 + 13*4 + 7*5 + 2*6 = 24 + 52 + 35 + 12 = 123. Média = 123/30 = 4,1. Mediana: valores nas posições 15 e 16 (30 dados); acumulado 8 (até 3) e 21 (até 4), logo as posições 15 e 16 valem 4 => mediana = 4. Diferença = 4,1 - 4 = 0,1. Alternativa D.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Matemática',
'Em uma fábrica, há dois tanques, um no formato de um cilindro circular reto, com raio de base medindo R e altura medindo 2y, e outro no formato de um cone circular reto, com raio de base medindo 2R e altura medindo y. Considere que esses dois tanques estejam inicialmente vazios e despreze a espessura de suas superfícies. Sabe-se que uma torneira, de vazão constante, levou 2 h 24 min para encher completamente o tanque cilíndrico. O tempo necessário e suficiente para que essa mesma torneira, com a mesma vazão, encha completamente o tanque cônico é de',
'',
'/cnu-2024-8-tarde-questao-22.png',
'["1 h 24 min","1 h 36 min","1 h 54 min","2 h 24 min","3 h 36 min"]'::jsonb,
'B',
'Volume do cilindro: V_cil = π R^2 (2y) = 2π R^2 y. Volume do cone: V_cone = (1/3) π (2R)^2 y = (4/3) π R^2 y. Razão V_cone/V_cil = (4/3)/2 = 2/3. Como a vazão é constante, o tempo é proporcional ao volume: t_cone = (2/3) * 2h24min. 2h24min = 144 min; (2/3)*144 = 96 min = 1 h 36 min. Alternativa B.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Matemática',
'Em um domingo decisivo de um campeonato de futebol, um canal de TV destinará um período da sua grade de programação à cobertura de três partidas, que ocorrerão em horários diferentes. As três coberturas terão a mesma duração, ocorrerão uma após a outra e totalizarão 7 horas e 5 minutos. Dessa forma, cada uma das três coberturas deverá durar P horas, Q minutos e R segundos, em que P, Q e R são números naturais, com Q < 60 e R < 60. Sendo assim, o valor de P + Q + R é igual a',
'',
'',
'["63","65","68","72","74"]'::jsonb,
'A',
'7 h 5 min = 7*3600 + 5*60 = 25500 s. Dividindo por 3: 25500/3 = 8500 s. 8500 s = 2 h (7200 s) + 1300 s = 2 h + 21 min (1260 s) + 40 s. Logo P = 2, Q = 21, R = 40 e P + Q + R = 63. Alternativa A.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Matemática',
'Em cada partida de futebol profissional, atuam exatamente dois árbitros assistentes, mais conhecidos como bandeirinhas. Em um torneio, ficou estabelecido que cada bandeirinha pode atuar em mais de uma partida, porém a mesma dupla de bandeirinhas não pode ser repetida, ou seja, a mesma dupla não pode atuar em mais de uma partida. Nessas condições, dispondo-se de apenas 8 bandeirinhas, o número máximo de partidas que podem ser realizadas é igual a',
'',
'',
'["16","28","36","56","64"]'::jsonb,
'B',
'O número de duplas distintas de bandeirinhas é a combinação de 8 tomados 2 a 2: C(8,2) = (8*7)/2 = 28. Como cada dupla só pode atuar uma vez, o máximo de partidas é 28. Alternativa B.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Matemática',
'Em dezembro de 2023, dois irmãos, P e R, decidem investir em dólares. Na ocasião, P possui 3000 dólares, e R, 4000 dólares. A cada mês e começando em janeiro de 2024, P acrescenta 100 dólares à sua quantia, e R acrescenta 60 dólares à sua. R fez a seguinte previsão: "Um dia o seu investimento será o dobro do meu." Supondo-se que os aportes mensais se mantenham e nenhuma retirada ocorra, a previsão de R',
'',
'',
'["nunca será realizada.","será realizada antes do ano 2034.","será realizada entre os anos 2034 e 2044.","será realizada entre os anos 2044 e 2054.","será realizada depois do ano 2054."]'::jsonb,
'A',
'Após n meses: P(n) = 3000 + 100n e R(n) = 4000 + 60n. Impor P = 2R: 3000 + 100n = 2(4000 + 60n) => 3000 + 100n = 8000 + 120n => -5000 = 20n => n = -250. Como n teria de ser negativo (passado), a igualdade nunca ocorrerá para n futuro. Alternativa A.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Matemática',
'Um pai deixou uma quantia em reais para dividir igualmente entre suas quatro filhas P, Q, R e S. A filha P chega, pega 1/4 da quantia deixada pelo pai e sai. Em seguida, Q chega e, acreditando ser a primeira, pega 1/4 da quantia que encontra e sai. Depois, R faz o mesmo, pegando 1/4 da quantia que encontra e saindo. Mais tarde, S chega e pega os 270 reais que encontra, não restando mais dinheiro. Dessa forma, quantos reais a filha Q pegou a mais do que a filha R?',
'',
'',
'["80","45","40","30","15"]'::jsonb,
'D',
'Seja T o total. P pega T/4, resta 3T/4. Q pega 1/4 disso = 3T/16, resta 9T/16. R pega 1/4 disso = 9T/64, resta 27T/64 = 270 => T = 640. Q pegou 3*640/16 = 120; R pegou 9*640/64 = 90. Diferença = 120 - 90 = 30. Alternativa D.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Matemática',
'Na Figura, representa-se a planificação de um dado cúbico, que será usado em um sorteio, que consiste em lançá-lo apenas três vezes. A pessoa que fará esses lançamentos ganhará um prêmio somente se, nesses três lançamentos, as faces SORTE e LANCE tiverem saído uma única vez em qualquer ordem. Considerando-se as seis faces do referido cubo equiprováveis, a probabilidade de essa pessoa ganhar o prêmio é igual a',
'',
'/cnu-2024-8-tarde-questao-27.png',
'["1/36","1/18","1/12","1/6","1/3"]'::jsonb,
'D',
'O cubo tem 6 faces: SORTE aparece em 2 faces (P(SORTE) = 2/6 = 1/3), LANCE em 1 face (P(LANCE) = 1/6) e as demais 3 faces (JO, GA, DOR) somam P(outra) = 3/6 = 1/2. Ganhar = sair exatamente uma SORTE, uma LANCE e uma "outra" nos três lançamentos, em qualquer ordem. Probabilidade = 3! * (1/3)*(1/6)*(1/2) = 6 * (1/36) = 1/6. Alternativa D.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Matemática',
'A Figura representa um tabuleiro com 25 casas. Cada uma das casas deverá conter um único número, de modo que em cada linha, em cada coluna e em cada uma das duas diagonais do tabuleiro sejam formadas progressões aritméticas. Três dessas casas já possuem seus números (9 na 1ª linha 1ª coluna; 50 na 2ª linha 3ª coluna; 85 na 5ª linha 4ª coluna). Nessas condições, o valor de N (3ª linha, 2ª coluna) é igual a',
'',
'/cnu-2024-8-tarde-questao-28.png',
'["44","25","33","52","66"]'::jsonb,
'A',
'A diagonal principal parte de 9 (posição 1,1). Usando as PAs das linhas/colunas e o dado 50 na posição (2,3) e 85 na posição (5,4), determina-se o passo das progressões e preenche-se o tabuleiro; a casa N (3,2) resulta 44. Alternativa A.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Matemática',
'Pelo Censo Demográfico 2022 do IBGE, a população residente no Brasil se distribui por cor ou raça: Branca 88.252.121; Preta 20.656.458; Amarela 850.130; Parda 92.083.286; Indígena 1.227.642; Total 203.069.637. Se a população de pessoas que se declararam pretas para esse censo é x% do total de residentes, então o valor de x é igual a',
'',
'',
'["10,17","1,017","0,1017","0,01017","0,001017"]'::jsonb,
'A',
'x% = (20.656.458 / 203.069.637) * 100 ≈ 0,10172 * 100 ≈ 10,17. Alternativa A.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Matemática',
'Um certo tipo de arroz integral orgânico contém 54 mg de magnésio em cada porção de 50 g. Quantos miligramas de magnésio estão contidos em 75 g desse arroz?',
'',
'',
'["50","54","75","81","100"]'::jsonb,
'D',
'Regra de três direta: 54 mg / 50 g = x / 75 g => x = 54 * 75 / 50 = 54 * 1,5 = 81 mg. Alternativa D.'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- REALIDADE BRASILEIRA (Questoes 31 a 45)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Realidade Brasileira',
'Em janeiro de 1931, Lamartine Babo lançou uma marchinha intitulada "Gê-gê", uma referência ao novo governante brasileiro, Getúlio Vargas, que assumiu o comando da república após a Revolução de 1930. O refrão da música soletrava as letras do nome do presidente e transmitia uma lúdica sensação de intimidade aos milhares de brasileiros que escutavam a canção. Essa sensação de intimidade da marchinha sintetiza o(a)',
'',
'',
'["característica centralizadora que marca a Era Vargas.","atuação de Vargas para ampliar benefícios trabalhistas.","governo provisório, fase de transição da Era Vargas.","qualidade conciliadora de Vargas, um de seus trunfos políticos.","imagem popular e de líder carismático construída por Getúlio."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Realidade Brasileira',
'Os últimos momentos do Governo de João Goulart foram precipitados pelos movimentos das tropas sob o comando do General Olímpio Mourão Filho, que, sediadas em Juiz de Fora, deslocaram-se em direção ao Rio de Janeiro, em 31 de março de 1964. A ruptura democrática aí deflagrada',
'',
'',
'["suspendeu imediatamente as atividades do poder legislativo por tempo indeterminado, concentrando no executivo as atribuições de formular e aprovar leis e decretos, permanecendo o Congresso Nacional fechado por todo o período entre os anos de 1964 e 1972.","significou o alinhamento do país com as diretrizes anticomunistas ocidentais que marcaram o período da guerra fria, fazendo frente à ameaça comunista que, no Brasil, era representada pela Ação de Libertação Nacional, grupo de guerrilha armada fundado por Carlos Marighella durante o governo de João Goulart.","marcou o início do período ditatorial civil-militar que duraria 21 anos, no qual foram suspensos diversos direitos, como o direito a realizar atividades ou manifestações de natureza política, o direito ao voto direto para presidente da república e a garantia de habeas corpus nos casos de crimes políticos contra a segurança nacional, a ordem econômica e social e a economia popular.","teve como objetivo garantir e viabilizar as reformas de base, em especial a reforma agrária, realizada mediante a desapropriação de grandes latifúndios sem a necessidade de indenizar o proprietário rural supostamente lesado com a perda da terra.","possibilitou a estabilidade e crescimento econômico, em especial entre 1972 e 1985, por meio do combate à inflação e aumento progressivo do Produto Interno Bruto (PIB), medidas que, a longo prazo, tiveram profundos efeitos na diminuição da desigualdade social no país."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Realidade Brasileira',
'A história dos negros no Brasil é marcada por episódios de conflito e manifestações de resistência. Considere o texto de apoio sobre o bloco Ilê Aiyê, que desfilou pela primeira vez no Carnaval de 1975 em Salvador. Ao longo de nossa história, a relação entre racismo e democracia no Brasil',
'Ilê desfilou pela primeira vez no Carnaval de 1975, causando espanto entre as elites da Bahia e um despertar para a pauta racial em uma das cidades mais negras do país. "Fomos escoltados pela polícia e fomos vaiados pela população, com alguns aplausos tímidos em meio às vaias. Fomos considerados negros rebeldes que estavam espalhando racismo na cidade", lembra Arany [Santana, 72, diretora licenciada do bloco]. [...] O jornal A Tarde publicou na época a nota "Bloco racista, nota destoante". Anos depois, o jornal se retratou.
PITOMBO, J. P. Ilê Aiyê, 50, afrontou ditadura com bloco-manifesto. Folha de São Paulo, 07 fev. 2024. Adaptado.',
'',
'["foi marcada pelo advento da República, em 1888, uma vez que, com ela, suprimiram-se, legalmente e de fato, as distinções entre todos os brasileiros, os quais, de súditos de uma monarquia, tornaram-se igualmente livres e iguais, a despeito de origem, gênero ou raça, como preconizava o ideário republicano.","implicou superação do racismo pelo estabelecimento da democracia, uma vez que, após a abolição do regime escravista no Brasil, em 1889, o surgimento de tal bloco \"Ilê\" e suas pautas raciais são, como indica a matéria do jornal A Tarde, um claro exemplo de sobrepujamento do racismo no país.","constituiu-se e ganhou novos contornos no contexto democrático da década de 1970, momento no qual o Brasil, influenciado pelos movimentos estudantis europeus e de defesa de direitos civis norte-americanos, assegurava os direitos políticos de livre manifestação e de liberdade de pensamento a seus cidadãos.","estabeleceu-se apenas a partir da Constituição de 1988, pois não é possível identificar, na História, nenhum outro momento de defesa dos direitos dos negros ou afirmação de sua identidade.","segue sendo, muitas vezes, desvirtuada pelo chamado \"mito da democracia racial\", equivocado discurso segundo o qual as oportunidades de acumulação de riqueza, de prestígio social e de poder estão igualmente acessíveis a todos."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Realidade Brasileira',
'Getúlio Vargas, figura de grande relevância para a história política brasileira, esteve no poder em dois importantes momentos: entre 1930 e 1945 e, em seguida, entre 1950 e 1954. Considerando esse amplo período e seus efeitos para estruturação dos direitos sociais e políticos em nosso país, Vargas',
'',
'',
'["contribuiu, de forma determinante, para a inserção do Brasil na economia mundial, em especial através da defesa da privatização e aquisição, pelo capital internacional, de importantes indústrias nacionais, como a Petrobrás e a Companhia Siderúrgica Nacional.","foi reconhecido como um grande defensor dos regimes democráticos, uma vez que ele chegou ao poder em 1930, em 1937 e em 1950 por via do voto universal.","foi um exemplo raro de liderança política unanimemente reconhecida pelos mais diversos setores do país, visto que foi capaz de apaziguar as disputas entre os trabalhistas do PTB e as elites conservadoras do país, representadas pela UDN.","dedicou-se em seu governo, em especial entre 1930 e 1945, ao desenvolvimento e implementação de uma legislação trabalhista no Brasil, o que resultou na Consolidação das Leis do Trabalho (CLT), em 1943.","articulou o apoio de diferentes estados brasileiros em nome de uma união nacional-desenvolvimentista, sendo São Paulo fundamental para a sustentação de seu governo nos primeiros anos da década de 1930."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Realidade Brasileira',
'Considere o texto de apoio sobre o Estado Democrático de Direito. Observada tal definição, reconhece-se que está inserida(o) no conceito de Estado Democrático de Direito a(o)',
'O Estado Democrático de Direito, com suas ideias de liberdade e responsabilidade, assim como a democracia são fruto de uma conquista diária e permanente, que pressupõe um diálogo constante, tolerância, compreensão das diferenças e cotejo pacífico de ideias distintas ou mesmo antagônicas. Em uma democracia, maiorias e minorias, como protagonistas relevantes do processo decisório, hão de conviver sob a égide dos mecanismos constitucionais destinados nas arenas políticas e sociais à promoção de um amplo debate com vista à formação de consensos, mantido sempre o respeito às diferenças e às regras do jogo.',
'',
'["possibilidade de exclusão de forças políticas que defendam ideologias autoritárias.","essencial laicidade do Estado, com a neutralidade confessional das instituições.","ênfase à proteção dos direitos e garantias fundamentais que só cedem espaço à proteção do interesse público.","livre manifestação do pensamento, permitida censura prévia para impedir conteúdos vinculados a maus-tratos a crianças.","respeito à separação absoluta dos Poderes da República, cada um com campo singular e específico de atuação."]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Realidade Brasileira',
'A independência do Brasil é muitas vezes compreendida como um processo complexo, que, por um lado, formaliza a autonomia e ruptura política em relação a Portugal e, por outro, possibilita a manutenção da escravidão, da monarquia e da presença da dinastia dos Bragança na América. Segundo a autora do texto de apoio, o processo de independência do Brasil',
'Com a aclamação do príncipe regente D. Pedro como imperador do Brasil, em 12 de outubro de 1822, começou a ser construída no imaginário político dos povos a ideia de um império autônomo em terras americanas. [...] Essa polarização que exprimia um difuso sentimento antilusitano e antibrasileiro em imagens e escritos dos dois povos terminava por demonstrar em que se constituiu, em parte, o processo de emancipação política do Brasil. [...] Mais difícil, porém, era a tarefa que restava, de construir e definir o Brasil: não mais como continuação de Portugal, mas dotado de identidade própria, que foi procurada pelo menos ao longo de todo o Oitocentos, em oposição ao ser português.
NEVES, L. M. P. B. Estado e política na independência. In: GRINBERG, K.; SALLES, R. (org.). O Brasil Imperial, 1808-1830. vol. I. Rio de Janeiro: Civilização Brasileira, 2009. p. 129-131. Adaptado.',
'',
'["está sintetizado no gesto da Proclamação da Independência, o chamado \"grito do Ipiranga\", de 07 de setembro de 1822.","ocorreu de forma pacífica e amigável, não se observando qualquer expressão de sentimento antilusitano na antiga colônia lusa na América.","representou o ápice da construção de uma ideia moderna de nação brasileira, difundida por todo o país desde as revoltas coloniais, como a Inconfidência Mineira, de 1789, por exemplo.","decorreu de uma negociação baseada na compreensão recíproca de que manutenção da unidade política entre Portugal e o Brasil ainda era possível.","deu início à tarefa de construir e definir a identidade do Brasil enquanto nação, de forma separada e, por muitas vezes, oposta a Portugal."]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Realidade Brasileira',
'Considere o texto de apoio (Agência Xinhua) sobre a cúpula do BRICS de 2023. Nos últimos anos, o Brasil tem sido um membro muito ativo dos BRICS, principal organização multilateral do chamado Sul Global. Com base nas informações da notícia citada, o chamado Sul Global se caracteriza por reunir nações',
'A cúpula do BRICS de 2023, realizada na África do Sul, admitiu seis países como membros plenos. Abraçando os novos membros – Argentina, Egito, Etiópia, Irã, Arábia Saudita e Emirados Árabes Unidos – o BRICS representará cerca de um terço do PIB global e metade da população mundial e das reservas de petróleo. Entre os países do Grupo dos 20, sete serão membros do BRICS, em igualdade com o Grupo dos Sete.
CÚPULA do BRICS: uma vitória para o Sul Global. Portal Xinhua. Acesso em: 5 mar. 2024. Adaptado.',
'',
'["emergentes e com passado de descolonização.","meridionais geograficamente e fortes economicamente.","subdesenvolvidas e com economia baseada no petróleo.","alinhadas com a China e integrando uma nova corrida armamentista.","exportadoras de commodities e dependentes do mundo industrializado."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Realidade Brasileira',
'A letra de apoio foi composta por Chico Science e a banda Nação Zumbi, para a canção "Manguetown". Considerando-se as condições típicas das grandes cidades brasileiras e, especificamente, dos mangues na grande Recife, a expressão Manguetown se refere à(ao)',
'To enfiado na lama / É um bairro sujo / Onde os urubus têm casas / E eu não tenho asas / Mas estou aqui em minha casa / Onde os urubus têm asas / Vou pintando, segurando a parede / No mangue do meu quintal Manguetown / Andando por entre os becos / Andando em coletivos / Ninguém foge ao cheiro sujo / Da lama da Manguetown [...]
MANGUETOWN. Intérpretes: Chico Science e Nação Zumbi. Compositores: A. Costa, F. França e L. Maia. Acesso em: 3 mar. 2024.',
'',
'["região urbana de descarte de lixos orgânicos","segregação das áreas de moradia da população pobre","estética da juventude sem uma referência espacial específica","ambiente de vida mais rural próximo à metrópole","ecossistema do estuário dos rios da cidade de Recife"]'::jsonb,
'B'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Realidade Brasileira',
'Considere o texto de apoio do portal do IPEA sobre distribuição de renda no Brasil. Considerando-se o legado histórico da segunda metade do século XX e os dados presentes no texto, nota-se que houve a',
'O Brasil é marcado por altos níveis de desigualdade. A pesquisa examinou o impacto das políticas públicas sociais no país, analisando o sistema tributário e os programas de transferência de renda e seus efeitos sobre a desigualdade e a pobreza durante as primeiras décadas do século XXI. O Brasil é conhecido por sua alta concentração de renda, onde o 1% mais rico da população detém 28,3% da renda total, tornando-o um dos países mais desiguais do mundo.
ESTUDOS revelam impacto da distribuição da renda no Brasil. Portal do IPEA, 4 ago. 2023. Acesso em: 2 mar. 2024.',
'',
'["manutenção das desigualdades sociais, apesar dos ciclos de desenvolvimento econômico.","implementação com eficiência de políticas anticíclicas e desenvolvimentistas nos anos 1990.","aplicação sistemática de medidas de privatização e desregulamentação na década de 1970.","extinção gradual dos institutos de seguridade social do país após a redemocratização.","vigência da estagnação e da hiperinflação na era do \"milagre econômico\"."]'::jsonb,
'A'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Realidade Brasileira',
'Considere o texto de apoio sobre a dinâmica da população brasileira. A dinâmica populacional mencionada decorre do seguinte fator demográfico:',
'O Brasil viu o crescimento populacional desacelerar. Dados do Censo 2022 revelam que a taxa de aumento anual da população caiu de 1,2%, entre 2000 e 2010, para 0,5% entre 2010 e 2022. Hoje são 203,1 milhões de habitantes no país, ou seja, em doze anos, o Brasil ganhou 12,3 milhões de pessoas, o equivalente a uma São Paulo. O Rio de Janeiro foi uma das nove capitais que viu diminuir o número de habitantes.
GORZIZA, A. et al. O Brasil na era do freio populacional. Revista Piauí, 2023. Acesso em: 30 jan. 2024. Adaptado.',
'',
'["aumento relativo da taxa de natalidade nas metrópoles","redução sistemática da expectativa de vida nas periferias","elevação regular da taxa de mortalidade nas áreas urbanas","incremento ininterrupto da migração do campo para a cidade","queda contínua da taxa de fecundidade no território nacional"]'::jsonb,
'E'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Realidade Brasileira',
'Considere o texto de apoio (Embrapa) sobre a ocupação do cerrado. Atualmente, a perda de biodiversidade das maiores extensões do cerrado decorre do seguinte fator:',
'A ocupação acelerada e desordenada do bioma Cerrado teve início com a construção de Brasília e a adoção de uma política de expansão agrícola baseada num modelo de exploração fundamentalmente extrativista e, por vezes, predatório. [...] Depois da Mata Atlântica, o Cerrado é o ecossistema brasileiro que mais sofreu com a ocupação humana. Estima-se que atualmente cerca de 37% da área do Cerrado já perderam sua vegetação natural.
VILELA, M. F. I. Interferências humanas no bioma Cerrado. Embrapa, 2021. Acesso em: 30 jan. 2024. Adaptado.',
'',
'["exploração de garimpos clandestinos de ouro","arrefecimento da monocultura intensiva de grãos","ocupação da pecuária extensiva de baixa tecnologia","loteamentos irregulares das aglomerações urbanas","expansão desordenada de unidades de conservação"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Realidade Brasileira',
'Considere o texto de apoio (Câmara dos Deputados) sobre a decisão do STF a respeito da tese do marco temporal das terras indígenas, julgada inconstitucional em 2023. Essa tese do marco temporal estabelece que a',
'No Brasil, em 2023, foi criado o Ministério dos Povos Indígenas e julgada, no STF, a tese do marco temporal. O marco é criticado por advogados especializados em direitos dos povos indígenas, pois, segundo eles, validaria invasões e violências cometidas contra indígenas antes da Constituição de 1988. Já ruralistas defendem que tal determinação serviria para resolver disputas por terra.
BRASIL. Câmara dos Deputados. Decisão do STF que derrubou marco temporal das terras indígenas gera repercussão na Câmara, 2023. Acesso em: 30 jan. 2024. Adaptado.',
'/cnu-2024-8-tarde-questao-42.png',
'["ocupação de terras indígenas por produtores rurais deve ser considerada inconstitucional.","indenização das terras indígenas ocupadas por produtores rurais deve ser de responsabilidade do governo federal.","fiscalização das terras indígenas demarcadas deve ser de responsabilidade exclusiva dos povos que historicamente as ocupam.","demarcação das terras indígenas deve respeitar a área ocupada pelos povos até a promulgação da Constituição Federal de 1988.","titularização das terras indígenas deve ocorrer imediatamente após o reconhecimento da constitucionalidade da ocupação."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Realidade Brasileira',
'Considere o comentário de apoio a respeito da aprovação da Lei de Terras em 1850. A análise feita pela reportagem sobre a Lei de Terras de 1850 tangencia uma característica brasileira praticamente inalterada nos últimos 200 anos de nossa história. Trata-se da',
'Documentos da época revelam como a composição do campo brasileiro foi planejada. Os próprios senadores e deputados eram, em grande parte, senhores de terras. O Visconde de Abrantes opinou: "O preço deve ser elevado para que qualquer proletário que só tenha a força do seu braço para trabalhar não se faça imediatamente proprietário comprando terras por vil preço. Ficando inibido de comprar terras, o trabalhador de necessidade tem de oferecer seu trabalho àquele que tiver capitais para as comprar e aproveitar."
HÁ 170 anos, Lei de Terras. Agência Senado. Acesso em: 5 mar. 2024. Adaptado.',
'',
'["intenção de realizar reforma agrária.","política de interiorização e integração nacional.","força dos sindicatos de trabalhadores rurais.","influência política do grande latifúndio.","proteção de territórios destinados aos povos originários."]'::jsonb,
'D'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Realidade Brasileira',
'Considere o texto de apoio sobre sustentabilidade ambiental (Agenda Nacional de Qualidade Ambiental Urbana). No contexto dessa Agenda Nacional, a linha referente a resíduos sólidos está diretamente associada a ações que',
'No Brasil, a Agenda Nacional de Qualidade Ambiental Urbana é uma estratégia definida com o objetivo de melhorar os indicadores da boa qualidade ambiental nas cidades. Após a consolidação de diversos diagnósticos, linhas de ação foram estabelecidas como metas iniciais desta Agenda Ambiental Urbana, dentre elas: Lixo no Mar, Resíduos Sólidos, Saneamento e Qualidade das Águas, e Áreas Contaminadas.
BRASIL. Ministério do Meio Ambiente. Agenda Nacional de Qualidade Ambiental Urbana. Acesso em: 30 jan. 2024. Adaptado.',
'',
'["evitem a evasão escolar de estudantes regulares da educação básica, como o Programa Pé-de-Meia.","promovam a proteção de nascentes e mananciais e o abrigo da fauna urbana, como o Programa Cidades+Verdes.","orientem a gestão ambiental com foco na disposição final ambientalmente adequada, como o Programa Lixão Zero.","garantam o ambiente atmosférico limpo nas cidades, como a Rede Nacional de Monitoramento da Qualidade do Ar.","viabilizem a transferência de renda para os segmentos mais pobres da população, como o Programa Bolsa Família."]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Realidade Brasileira',
'Entre 1817 e 1820, os naturalistas Johann von Spix e Carl Philip von Martius realizaram uma expedição científica ao Brasil, registrando algumas partituras musicais com canções brasileiras. A expedição foi finalizada pouco antes dos eventos determinantes para a Independência do Brasil, e a análise do texto de apoio aponta características constitutivas de nossa formação social. Nesse sentido, o texto aponta aspectos da cultura de época compatíveis com um(a)',
'Não havia na época local instituído para apresentações públicas de música de tradição oral. A poesia e a música populares eram percebidas pelos intelectuais como práticas coletivas e anônimas de propriedade do "povo", nasciam e cresciam tão naturalmente como uma planta ou uma árvore e eram apreciadas em praça pública ou nas ruas. Tal concepção fazia parte da mentalidade que predominava no final do século XVIII. Pensava-se que a autoria não era importante em se tratando de uma "arte popular", porque ela pertenceria a todo o "povo".
MERHY, S. As transcrições das canções populares em Viagem pelo Brasil de Spix e Martius. Revista Brasileira de Música. UFRJ, v. 23/2, 2010. p. 177.',
'',
'["ideário inspirado no liberalismo","domínio de valores decoloniais","sociedade estratificada socialmente","mentalidade marcada pela equidade","visão de mundo abolicionista"]'::jsonb,
'C'
from public.exams where slug = 'cnu-2024-bloco8-tarde'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
