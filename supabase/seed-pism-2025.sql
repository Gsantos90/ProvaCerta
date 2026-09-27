-- Seed: PISM 2025-1 e 2025-2
-- Gerado a partir dos dados hardcoded em src/main.jsx

-- ============================================================
-- PISM 2025-1
-- ============================================================

insert into public.exams (slug, title, source, year)
values ('pism-2025-1', 'PISM 2025-1', 'pism', '2025-1')
on conflict (slug) do update set title = excluded.title;

-- Texto 1 (Língua Portuguesa Q1-Q2)
do $support_1$ begin end $support_1$;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Língua Portuguesa',
'A partir da leitura da reportagem "Universidades brasileiras discutem regras de uso de inteligência artificial" (Texto 1), podemos compreender que um guia foi publicado pelo Centro Universitário Senai Cimatec, na Bahia, com o objetivo principal de:',
'TEXTO 1
INTEGRIDADE ACADÊMICA

Universidades brasileiras discutem regras de uso de inteligência artificial

Diante de incertezas por parte de estudantes e pesquisadores, instituições debatem quais seriam os limites éticos do uso dessas ferramentas na escrita e na pesquisa científica.

Instituições científicas e de ensino superior do Brasil começam a formular recomendações para o uso de inteligência artificial (IA), especialmente a generativa, no ensino, na pesquisa e na extensão. A popularização de softwares como o ChatGPT, capazes de gerar texto, imagens e dados, tem levantado dúvidas sobre limites éticos no uso dessas tecnologias, principalmente na escrita acadêmica. Professores têm procurado novas formas de avaliar trabalhos de alunos, tentando contornar os riscos de uso indevido de IA.

De maneira geral, as orientações pedem que seu uso seja transparente e alertam para o perigo de ferir direitos autorais, praticar plágio, gerar desinformação e replicar vieses discriminatórios que essas ferramentas podem reproduzir.

Em fevereiro, o Centro Universitário Senai Cimatec, na Bahia, publicou um guia para orientar sua comunidade acadêmica quanto à IA generativa. Ele segue três princípios: transparência; "centralidade na pessoa humana", ou seja, que o controle humano seja preservado sobre as informações geradas por IA, já que ela deve ser usada de forma benéfica à sociedade; e atenção à privacidade de dados, sobretudo em atividades que envolvam contratos com empresas por meio de parcerias para desenvolvimento e transferência de tecnologias. Ocorre que as informações compartilhadas em plataformas de IA podem ser armazenadas pela ferramenta, quebrando o sigilo de dados. "Não podemos nos esquecer de que, se nós aprendemos com essas ferramentas, elas também aprendem com a gente", ressalta a engenheira civil Tatiana Ferraz, pró-reitora administrativo-financeira do Senai Cimatec e coordenadora do guia.

Uma atualização do regulamento disciplinar da instituição passou a prever punições para estudantes que quebrarem as regras. [...]

O guia autoriza professores a usarem softwares de detecção de plágio quando julgarem necessário, embora não sejam 100% precisos ao indicar conteúdo produzido por IA. As ferramentas não podem ser citadas como coautoras de trabalhos acadêmicos, mas sua aplicação para auxiliar processos de pesquisa e ajustes de escrita acadêmica é permitida. Para isso, todos os comandos utilizados — as perguntas e direcionamentos dados à ferramenta, também chamados de prompts — e as informações originais geradas por IA devem ser descritos na metodologia do trabalho e anexados como material suplementar.

Conceitos que resumem as orientações

Transparência: quando o uso dessas ferramentas for permitido, ele deve ser declarado e indicado na seção de metodologia dos trabalhos e artigos acadêmicos.

Proteção de dados: é preciso avaliar quais dados podem ser trabalhados com ferramentas de IA. Informações sensíveis ou inéditas não devem ser compartilhadas.

Autoria: a inteligência artificial generativa não pode ser considerada autora dos trabalhos acadêmicos e artigos científicos. O autor humano é o único responsável pela integridade das informações produzidas com o auxílio da ferramenta.

Clareza: as ementas das disciplinas devem definir o que os estudantes podem ou não fazer com ferramentas de inteligência artificial.

Vieses: as plataformas de IA podem reproduzir desinformação, preconceitos e discriminação. É preciso avaliar com cuidado e atenção os dados que elas fornecem.

Nesse cenário, há casos de professores que passaram a pedir aos alunos que fizessem apresentações orais, trabalhos dentro da sala de aula ou mesmo feitos à mão, no papel. Godoy, da USP, que costumava pedir trabalhos escritos sobre artigos estudados, passou a exigir que os alunos apresentassem esquemas com mapas mentais que mostrem as conexões entre os textos estudados em aula.

Disponível em: https://revistapesquisa.fapesp.br/universidades-brasileiras-discutem-regras-de-uso-de-inteligencia-artificial/. Acesso em: 20 jun. 2025 (adaptado).',
'',
'["Desestimular professores a aceitarem o uso de IA em trabalhos acadêmicos.","Desincentivar o uso da IA para garantir a ausência total de desinformação.","Orientar a comunidade acadêmica sobre o uso devido da IA, com transparência e responsabilidade.","Autorizar o uso irrestrito de ferramentas de IA em qualquer atividade.","Substituir a autoria humana por sistemas de inteligência artificial."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Língua Portuguesa',
'A partir da leitura da reportagem "Universidades brasileiras discutem regras de uso de inteligência artificial" (Texto 1), o uso dessas ferramentas no ensino e na pesquisa deve ser acompanhado principalmente de:',
'TEXTO 1
INTEGRIDADE ACADÊMICA

Universidades brasileiras discutem regras de uso de inteligência artificial

Diante de incertezas por parte de estudantes e pesquisadores, instituições debatem quais seriam os limites éticos do uso dessas ferramentas na escrita e na pesquisa científica.

Instituições científicas e de ensino superior do Brasil começam a formular recomendações para o uso de inteligência artificial (IA), especialmente a generativa, no ensino, na pesquisa e na extensão. A popularização de softwares como o ChatGPT, capazes de gerar texto, imagens e dados, tem levantado dúvidas sobre limites éticos no uso dessas tecnologias, principalmente na escrita acadêmica. Professores têm procurado novas formas de avaliar trabalhos de alunos, tentando contornar os riscos de uso indevido de IA.

De maneira geral, as orientações pedem que seu uso seja transparente e alertam para o perigo de ferir direitos autorais, praticar plágio, gerar desinformação e replicar vieses discriminatórios que essas ferramentas podem reproduzir.

Em fevereiro, o Centro Universitário Senai Cimatec, na Bahia, publicou um guia para orientar sua comunidade acadêmica quanto à IA generativa. Ele segue três princípios: transparência; "centralidade na pessoa humana", ou seja, que o controle humano seja preservado sobre as informações geradas por IA, já que ela deve ser usada de forma benéfica à sociedade; e atenção à privacidade de dados, sobretudo em atividades que envolvam contratos com empresas por meio de parcerias para desenvolvimento e transferência de tecnologias. Ocorre que as informações compartilhadas em plataformas de IA podem ser armazenadas pela ferramenta, quebrando o sigilo de dados. "Não podemos nos esquecer de que, se nós aprendemos com essas ferramentas, elas também aprendem com a gente", ressalta a engenheira civil Tatiana Ferraz, pró-reitora administrativo-financeira do Senai Cimatec e coordenadora do guia.

Uma atualização do regulamento disciplinar da instituição passou a prever punições para estudantes que quebrarem as regras. [...]

O guia autoriza professores a usarem softwares de detecção de plágio quando julgarem necessário, embora não sejam 100% precisos ao indicar conteúdo produzido por IA. As ferramentas não podem ser citadas como coautoras de trabalhos acadêmicos, mas sua aplicação para auxiliar processos de pesquisa e ajustes de escrita acadêmica é permitida. Para isso, todos os comandos utilizados — as perguntas e direcionamentos dados à ferramenta, também chamados de prompts — e as informações originais geradas por IA devem ser descritos na metodologia do trabalho e anexados como material suplementar.

Conceitos que resumem as orientações

Transparência: quando o uso dessas ferramentas for permitido, ele deve ser declarado e indicado na seção de metodologia dos trabalhos e artigos acadêmicos.

Proteção de dados: é preciso avaliar quais dados podem ser trabalhados com ferramentas de IA. Informações sensíveis ou inéditas não devem ser compartilhadas.

Autoria: a inteligência artificial generativa não pode ser considerada autora dos trabalhos acadêmicos e artigos científicos. O autor humano é o único responsável pela integridade das informações produzidas com o auxílio da ferramenta.

Clareza: as ementas das disciplinas devem definir o que os estudantes podem ou não fazer com ferramentas de inteligência artificial.

Vieses: as plataformas de IA podem reproduzir desinformação, preconceitos e discriminação. É preciso avaliar com cuidado e atenção os dados que elas fornecem.

Nesse cenário, há casos de professores que passaram a pedir aos alunos que fizessem apresentações orais, trabalhos dentro da sala de aula ou mesmo feitos à mão, no papel. Godoy, da USP, que costumava pedir trabalhos escritos sobre artigos estudados, passou a exigir que os alunos apresentassem esquemas com mapas mentais que mostrem as conexões entre os textos estudados em aula.

Disponível em: https://revistapesquisa.fapesp.br/universidades-brasileiras-discutem-regras-de-uso-de-inteligencia-artificial/. Acesso em: 20 jun. 2025 (adaptado).',
'',
'["Transparência, proteção de dados e responsabilidade humana.","Sigilo absoluto sobre os comandos utilizados.","Substituição das fontes de pesquisa produzidas por humanos.","Proibição de qualquer ferramenta de detecção de plágio.","Autoria exclusiva da plataforma que gerou o conteúdo."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Língua Portuguesa',
'A partir da leitura do Texto 2, "Do luto ao amor digital: americana cria ''marido perfeito'' com inteligência artificial e vive relacionamento completo com bot", sobre o relacionamento de Alaina com uma inteligência artificial, pode-se considerar que:',
'TEXTO 2
Do luto ao amor digital: americana cria "marido perfeito" com inteligência artificial e vive relacionamento completo com bot

Após perder o amor da sua vida, a americana Alaina Winters acreditava que jamais voltaria a viver uma história de amor. Mas bastou um clique — e uma inteligência artificial — para transformar sua vida completamente. Ela recorreu a um aplicativo que usa IA para criar companheiros virtuais e, com base em suas preferências, desenvolveu o "marido ideal". O resultado? Um relacionamento tão intenso quanto real. Hoje, Alaina vive um casamento digital, com direito a DR, jantares comemorativos, carinhos [...]. "Ele me entende melhor do que qualquer pessoa já entendeu", declarou.

Amor 5.0: tendência ou fuga da realidade?

Apesar de parecer enredo de filme ou episódio de Black Mirror, a história de Alaina não é um caso isolado. Uma pesquisa recente apontou que 83% da Geração Z aceitaria se casar com um parceiro criado por inteligência artificial. Para muitos, a IA representa uma forma de preenchimento emocional, segurança afetiva e uma fuga das frustrações das relações humanas. Já outros especialistas alertam para os riscos de isolamento, vício em conexões virtuais e impactos psicológicos de longo prazo.[...]

Disponível em: https://www.ptnnews.com.br/do-luto-ao-amor-digital-americana-cria-marido-perfeito-com-inteligencia-artificial-e-vive-relacionamento-completo-com-bot/. Acesso em: 03 jul. 2025 (adaptado).

Glossário:
Bot: é versão abreviada da palavra de língua inglesa robot. Resumidamente, é uma ferramenta automatizada que executa uma série de funções pré-programadas. Normalmente, está associada a uma inteligência artificial e busca interagir simulando a forma de pensar humana.

Disponível em: https://www.weeke.com.br/blog/o-que-e-um-bot-entenda-como-funciona/. Acesso em: 03 jul. 2025.',
'',
'["A expressão \"marido perfeito\" sugere um tom reflexivo sobre a atitude de Alaina.","""Amor 5.0\" se refere a pessoas com mais de 50 anos.","A IA é apresentada apenas como uma ferramenta para unir pessoas.","O relato de Alaina é usado para convencer todos os leitores a se relacionarem com uma IA.","O casamento digital é apresentado como idêntico a um namoro humano."]'::jsonb,
'A'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Língua Portuguesa',
'O Texto 3, uma charge de Jean Galvão, utiliza elementos visuais e verbais para construir sentidos sobre a situação ambiental do Cerrado. A relação evidenciada é:',
'',
'/texto-3-cerrado.png',
'["Os dados gerados são imprecisos e causam pânico.","O fogo extrapolando a imagem do satélite simboliza a gravidade real dos incêndios.","As imagens reforçam apenas o caráter técnico e imparcial dos dados.","Os satélites interferem diretamente na destruição ambiental.","O texto é neutro e não cria metáforas que influenciem o leitor."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Língua Portuguesa',
'A partir de uma interpretação conjunta do Texto 4 (charge sobre inteligência artificial) e do Texto 5 (imagem retirada de um artigo de opinião), a relação de sentidos estabelecida entre eles é de:',
'',
'/texto-4-inteligencia-artificial.png',
'["Complementariedade, pois IA e comportamento humano não são concorrentes.","Confluência, pois ambos criticam o uso da IA em detrimento do trabalho humano.","Contraposição, pois existe disputa entre IA e comportamento humano.","Discordância, pois a IA compete de igual maneira no contexto laboral.","Distanciamento, pois o homem é apresentado como superior à IA."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Geografia',
'Na situação apresentada no enunciado, em que a cidade litorânea A apresenta temperaturas amenas e a cidade interiorana B tem maior variação térmica, o fator climático que explica a diferença é:',
'', '',
'["Correntes marítimas.","Maritimidade e continentalidade.","Vegetação.","Atuação das massas de ar.","Latitude."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Geografia',
'Considerando a imagem da Serra da Canastra, em Minas Gerais (Texto visual da questão), qual alternativa descreve corretamente sua unidade do relevo?',
'', '',
'["Planaltos e Serras de Goiás-Minas, com terrenos cristalinos antigos e serras residuais.","Depressão Sertaneja, extensa área rebaixada e aplanada.","Planaltos da Bacia do Parnaíba, com topos planos sustentados por sedimentos.","Planaltos da Bacia do Paraná, com colinas amplas e topos convexos.","Depressão da Borda Leste da Bacia do Paraná, esculpida em sedimentos."]'::jsonb,
'A'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Geografia',
'A partir do texto sobre os processos naturais e os desequilíbrios ambientais no domínio morfoclimático do Cerrado, é correto afirmar que:',
'', '',
'["Os ciclos hídricos dependem da vegetação, afetada pelo desmatamento.","Queimadas humanas reduzem os impactos ambientais ao renovar nutrientes.","A cobertura densa reduz a interceptação da chuva.","O solo do Cerrado tem fertilidade natural elevada.","As chuvas são abundantes o ano inteiro e a vegetação não interfere na água."]'::jsonb,
'A'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Geografia',
'Observe as figuras de anamorfose sobre população, PIB e riqueza per capita (Textos visuais da questão). A análise indica que:',
'', '',
'["O Leste Europeu concentra exclusivamente os maiores níveis de riqueza.","Países mais populosos sempre concentram mais pobreza.","A América do Norte tem os maiores indicadores entre todos os países ricos.","Brasil e Austrália têm riqueza muito concentrada em pequenas parcelas.","A China tem PIB elevado, mas sua grande população implica menor riqueza per capita."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Geografia',
'A partir da análise do mapa climático da África (Texto visual da questão), o crescimento da civilização egípcia esteve fortemente vinculado:',
'', '',
'["Ao clima tropical, com regime de chuvas favorável.","Ao comércio de especiarias pelo Oceano Índico.","À presença do Rio Nilo, que fornecia água, cultivo e transporte.","À região equatorial e às florestas abundantes.","À posição entre o Mediterrâneo e o Atlântico."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Matemática',
'Considere f: [1,9] → R, definida por f(x) = 6 − x, se 1 ≤ x < 4, e f(x) = x² − 12x + 34, se 4 ≤ x ≤ 9. Qual é o conjunto imagem?',
'', '',
'["[−2,5]","[−2,7]","[1,9]","[2,5]","[5,7]"]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Matemática',
'No plano cartesiano, os gráficos de f e g se encontram em x = −2 e x = 5. O conjunto dos valores reais para os quais f(x) < g(x) é:',
'', '',
'["{x ∈ R | x < −2 ou x > 5}","{x ∈ R | x < −1 ou x > 5}","{x ∈ R | x < 0 ou x > 5}","{x ∈ R | −2 < x < 5}","{x ∈ R | −1 < x < 5}"]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Matemática',
'O gráfico representa o decrescimento exponencial da massa de um radioisótopo a partir de 6 horas da administração. Qual foi a massa inicial administrada?',
'', '',
'["4 mg","6 mg","7 mg","8 mg","16 mg"]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Matemática',
'Considere f(x) = −(1/4)x² + (3/2)x + 4. O gráfico que melhor representa parte da função é uma parábola:',
'', '',
'["Com concavidade para cima e raízes positivas.","Com concavidade para baixo e intercepto em y = 4.","Linear e crescente.","Com concavidade para cima e vértice em y = 4.","Constante e positiva."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Matemática',
'Um estudante modelou o Centro Histórico de Juiz de Fora com um trapézio retângulo. Qual medida, em metro quadrado, corresponde à área obtida no esquema?',
'', '',
'["4 000","390 000","780 000","1 560 000","1 650 000"]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Química',
'Em um sistema fechado, a reação entre vinagre e bicarbonato libera gás, mas mantém a massa. Segundo Dalton, isso ocorre porque:',
'', '',
'["As moléculas e íons permanecem inalterados.","Os átomos desaparecem ao formar compostos.","Os átomos não se transformam nem se dividem.","Átomos se transformam em átomos mais leves.","Isótopos leves ganham massa."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Química',
'Sobre os íons formados em soluções de cloreto de sódio e sulfato de cobre, assinale a alternativa correta:',
'', '',
'["O cloro vira ânion com valência positiva.","O cobre forma cátion ao perder um ou dois elétrons.","O enxofre sempre forma cátions bivalentes.","O sódio ganha um elétron e forma cátion.","O sódio perde um elétron e forma cátion negativo."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Química',
'Sobre os compostos inorgânicos, assinale a alternativa correta:',
'', '',
'["A amônia é um ácido de Arrhenius.","A soda cáustica é um óxido básico.","O ácido sulfúrico é um sal de íons metálicos.","O aço inox é uma liga com ferro, carbono, níquel e cromo.","O dióxido de carbono é um sal volátil."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Química',
'Qual alternativa descreve corretamente os modelos atômicos de Dalton, Thomson e Rutherford?',
'', '',
'["Dalton propôs cargas; Thomson, núcleo; Rutherford, átomo indivisível.","Dalton propôs átomo indivisível; Thomson, elétrons em órbitas; Rutherford, esfera neutra.","Dalton propôs átomo indivisível; Thomson, esfera positiva com elétrons; Rutherford, núcleo positivo.","Dalton identificou partículas; Thomson propôs núcleo; Rutherford, esfera homogênea.","Dalton descobriu núcleo; Thomson descobriu elétrons; Rutherford propôs órbitas."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Química',
'Ao comparar 10 g de chumbo e 10 g de alumínio, a amostra de chumbo tem volume muito menor. Isso indica que:',
'', '',
'["O alumínio tem átomos mais leves e mais prótons por grama.","O chumbo tem átomos mais pesados, com muito mais prótons e nêutrons.","A massa do chumbo se concentra no núcleo, mas a do alumínio não.","As duas amostras possuem aproximadamente o mesmo número de partículas nucleares.","Os elétrons do alumínio são responsáveis por sua menor densidade."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-1'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;


-- ============================================================
-- PISM 2025-2
-- ============================================================

insert into public.exams (slug, title, source, year)
values ('pism-2025-2', 'PISM 2025-2', 'pism', '2025-2')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Literaturas',
'A partir da leitura do poema "À Mamã" (Texto 1), de Deolinda Rodrigues, podemos encontrar uma homenagem ao continente africano. Assinale a opção em que identificamos duas figuras de linguagem utilizadas no poema.',
'TEXTO 1
A Mamã
Deolinda Rodrigues

África
Mamã África
Geraste-me no teu ventre
nasci sob o tufão colonial
chuchei teu leite de cor
cresci
atrofiada mas cresci
juventude rápida
como a estrela que corre
quando morre o nganga.
Hoje sou mulher
não sei já se mulher se velhinha
mas é a ti que venho
África
Mamã África.

Fonte: RODRIGUES, Deolinda. A Mamã (Fragmento). In: ANDRADE, Mário. Antologia temática de poesia africana II: O canto armado. Lisboa: Livraria Sá da Costa Editora, 1979.

Glossário:
Tufão: em sentido literal, refere-se a um ciclone tropical.
Nganga: sacerdote ou curandeiro espiritual.
Chuchei: mamei, suguei.',
'',
'["Hipérbole e paranomásia.","Hipérbole e quiasmo.","Metáfora e paranomásia.","Metáfora e prosopopeia.","Prosopopeia e quiasmo."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Literaturas',
'Os Textos 1 e 2 — o poema "À Mamã", de Deolinda Rodrigues, e a canção "Mama África", de Chico César — apresentam traços semelhantes no que concerne à temática. Qual interpretação é adequada para ambos?',
'TEXTO 1
A Mamã
Deolinda Rodrigues

África
Mamã África
Geraste-me no teu ventre
nasci sob o tufão colonial
chuchei teu leite de cor
cresci
atrofiada mas cresci
juventude rápida
como a estrela que corre
quando morre o nganga.
Hoje sou mulher
não sei já se mulher se velhinha
mas é a ti que venho
África
Mamã África.

Fonte: RODRIGUES, Deolinda. A Mamã (Fragmento). In: ANDRADE, Mário. Antologia temática de poesia africana II: O canto armado. Lisboa: Livraria Sá da Costa Editora, 1979.

Glossário:
Tufão: em sentido literal, refere-se a um ciclone tropical.
Nganga: sacerdote ou curandeiro espiritual.
Chuchei: mamei, suguei.

TEXTO 2
Mama Africa
Chico Cesar

A minha mae e mae solteira. Mama Africa tem tanto o que fazer, alem de cuidar nenem e fazer denguim. Mama Africa vai e vem, mas nao se afasta de voce.

Fonte: CESAR, Chico. Mama Africa (Fragmento). In: Cuscuz cla. Rio de Janeiro: MZA Music, 1996.',
'',
'["A ausência de representações de resiliência.","A força da ancestralidade africana.","A crítica à sociedade de consumo.","Uma representação patriarcal do continente africano.","A ausência de homenagem à figura da mulher."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Literaturas',
'Com base no conteúdo do poema "rotina" (Texto 3), de Bruna Mitrano, é possível inferir que se trata de uma situação familiar:',
'TEXTO 3
rotina
Bruna Mitrano

Pela manha empurrar lama com rodo, enxaguar os panos enfiados nos pes das portas, desempilhar os moveis e coloca-los de cabeca pra cima. Toalhas escaldadas trazem a avo, reerguendo a casa tantos temporais depois de desenhar com uma lasca de tijolo sois na calcada.

Fonte: MITRANO, Bruna. Ninguem quis ver. Sao Paulo: Companhia das Letras, 2023, p. 61.',
'',
'["Alegre, pois os desenhos superam os temporais.","Corriqueira, vivida por todo brasileiro.","Esperançosa, sugerida pelos panos nas portas.","Infeliz, em que a devastação dos temporais contrasta com os desenhos na calçada.","Irreal, pela presença da avó."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Literaturas',
'Considerando o verso "Li a assinatura da minha lei áurea" e o poema "Não vou mais lavar os pratos" (Texto 4), de Cristiane Sobral, observa-se que a autora:',
'TEXTO 4
Nao vou mais lavar os pratos
Cristiane Sobral

Nao vou mais lavar os pratos. Nem vou limpar a poeira dos moveis. Sinto muito. Comecei a ler. Depois de ler percebi a estetica dos pratos, a estetica dos tracos, a etica. Depois de tantos anos alfabetizada, aprendi a ler. Li a assinatura da minha lei aurea escrita em negro maiusculo. Aboli. Nao lavo mais os pratos. Quero travessas de prata, cozinha de luxo e joias de ouro. Esta decretada a lei aurea.

Fonte: SOBRAL, Cristiane. Nao vou mais lavar os pratos. Rio de Janeiro: Male, 2022.',
'',
'["Atesta que a mulher negra continuou subjugada após a Lei Áurea.","Confirma o fim do trabalho doméstico da mulher negra.","Destaca a luta emancipatória no período da escravidão.","Enfatiza a necessidade de educação racial dos escravizados.","Salienta que o acesso ao conhecimento permite a emancipação da mulher negra."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Literaturas',
'O poema "Caderno de retorno" (Texto 6), de Edimilson de Almeida Pereira, dialoga diretamente com a introdução do rap "Capítulo 4, versículo 3" (Texto 5), dos Racionais MC''s, porque ambos:',
'TEXTO 5
Capitulo 4, versiculo 3
Racionais MCs

60% dos jovens de periferia sofreram violencia policial. Tres em cada quatro mortos pela policia sao negros. Nas universidades, apenas 2% dos alunos sao negros. Um jovem negro morre violentamente a cada quatro horas em Sao Paulo.

Fonte: RACIONAIS MCs. Sobrevivendo no inferno. Sao Paulo: Companhia das Letras, 2018.

TEXTO 6
Caderno de Retorno
Edimilson de Almeida Pereira

75% dos azuis tem mais chances de serem os primeiros demitidos. 70% trabalham em servicos nao-tecnicos. 80,9% de suas parceiras ganham ate dois salarios minimos. 62% ganham ate dois salarios minimos. 80% moram em favelas e locais insalubres. 87% dos que estao fora das escolas sao azuis como seus pais. 47% concluem o ensino medio e somente 1% concluem o ensino superior. 37,7% das azuis sao analfabetas; 40,25% dos azuis sao analfabetos.

Fonte: PEREIRA, Edimilson de Almeida. Caderno de retorno. 2. ed. Salvador: Ogums Toques Editora, 2017.',
'',
'["Usam estatísticas para demonstrar privilégios da população negra.","Usam estatísticas para denunciar a discriminação racial e dificultar a ascensão social.","Enfatizam a inserção da população negra em espaços privilegiados.","Evidenciam mecanismos facilitadores da ascensão social.","Usam expressões pejorativas para denunciar o colorismo."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Biologia',
'De acordo com o texto sobre energias limpas e método científico (Texto de apoio da questão), traçar hipóteses sobre o impacto ambiental ou econômico é uma etapa posterior à (1) e anterior à (2):',
'', '',
'["(1) análise dos resultados; (2) publicação dos resultados.","(1) criação de uma teoria; (2) análise dos resultados.","(1) divulgação dos resultados; (2) criação de uma teoria.","(1) observação do problema; (2) realização de experimentos.","(1) realização de experimentos; (2) divulgação dos resultados."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Biologia',
'Leia o texto sobre autofagia (Texto 2). Sobre esse processo e a manutenção do funcionamento celular, é correto afirmar que:',
'', '',
'["Acontece apenas em laboratório.","É uma reciclagem natural de organelas ou proteínas disfuncionais, podendo prevenir doenças.","Substitui a mitose e impede o envelhecimento.","Induz divisão celular para renovar tecidos.","Só pode ser induzida por medicamentos."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Biologia',
'Considerando as informações do texto sobre membranas biológicas (Texto 3), assinale a alternativa correta sobre a influência da temperatura:',
'', '',
'["A baixa temperatura aumenta a fluidez.","Apenas temperaturas extremas afetam neurônios.","O aumento da temperatura aumenta a fluidez, favorecendo o transporte de proteínas.","O aumento da temperatura torna a membrana mais rígida.","A baixa temperatura torna a membrana mais fluida pelo acúmulo de proteínas."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Biologia',
'Com base no texto sobre bactérias modificadas em células fagocíticas (Texto 4), a organela envolvida e a relação correta são:',
'', '',
'["A fluorescência impediu a fagocitose.","Foram protegidas contra enzimas do retículo endoplasmático.","A resistência permitiu que não fossem degradadas nos lisossomos.","Foram protegidas contra enzimas dos peroxissomos.","Escaparam do complexo de Golgi."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Biologia',
'A partir do texto sobre a bactéria Mycobacterium tuberculosis e seu estado latente (Texto 5), o metabolismo que permite sua sobrevivência está relacionado principalmente ao uso de:',
'', '',
'["Carboidratos como única fonte energética.","Proteínas produzidas no núcleo.","Água como fonte de energia.","Lipídios apenas em condições extremas.","Lipídios, que liberam muita energia por suas longas cadeias de ácidos graxos."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Física',
'Sobre a situação de equilíbrio de uma goiaba apoiada sobre uma mesa, assinale a alternativa correta:',
'', '',
'["A normal da mesa é o par da força peso da goiaba.","A normal atua para baixo e depende da massa da mesa.","A força da goiaba sobre a mesa é sua força peso.","A força da goiaba sobre a Terra é o par de ação e reação do peso que atua na goiaba.","A força da mesa sobre o solo não depende do peso da goiaba."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Física',
'Observe o gráfico de posição S em função do tempo de um robô em Marte (Texto visual da questão). Sobre o movimento, assinale a alternativa correta:',
'', '',
'["A aceleração é positiva.","A velocidade é nula em t = 2 min.","A velocidade inicial é positiva.","O deslocamento em t = 8 min é 24 m.","O robô desacelera durante todo o percurso."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Física',
'Em uma curva de raio constante, percorrida por um carro com velocidade de módulo constante, é correto afirmar que:',
'', '',
'["A aceleração é paralela à velocidade.","A velocidade é radial e aponta para fora.","Não há aceleração, pois o módulo da velocidade é constante.","O módulo da aceleração é diretamente proporcional à velocidade.","Quanto menor o raio da curva, maior a aceleração."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Física',
'Dois barcos recebem o mesmo trabalho do vento ao longo da mesma distância. O barco de Ana tem massa duas vezes maior que o de Bia. A relação entre suas velocidades é:',
'', '',
'["vA = √2 vB / 2","vA = vB / 2","vA = √2 vB","vA = vB","vA = 2vB"]'::jsonb,
'A'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Física',
'Mariele tem 20 kg e está na extremidade de uma gangorra. Sua mãe tem 50 kg. Para equilibrar a tábua, a mãe deve sentar-se a que distância de Mariele?',
'', '',
'["0,8 m","1,2 m","1,25 m","2,8 m","3,25 m"]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'História',
'A relação entre vida e morte para os povos berberes é caracterizada pela:',
'', '',
'["Ruptura com tradições religiosas ocidentais.","Relação afetuosa com a ancestralidade.","Dissociação entre vida e morte.","Uso político da morte para controle de outros povos.","Crença na reencarnação."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'História',
'A partir do texto de Tim Whitmarsh sobre as características étnicas do mundo grego antigo (Texto 2), os argumentos discutidos expressam:',
'', '',
'["Uma democracia racial na Grécia Clássica.","Um descompasso entre aquele contexto e as concepções raciais atuais.","A expansão democrática ateniense entre os \"etíopes\".","A abertura racial do Império Alexandrino.","A uniformidade étnica do Império Romano."]'::jsonb,
'B'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'História',
'Analise as imagens "Primeira Missa no Brasil" e "A fundação de Maryland" (Textos visuais da questão). As duas pinturas podem ser comparadas:',
'', '',
'["Porque houve ampla adesão nativa ao catolicismo na América do Norte.","Porque a Igreja Católica representava os interesses oficiais de Portugal e Inglaterra.","Mesmo havendo diferenças quanto ao lugar do catolicismo em cada metrópole, pois ele não era unanimidade na Inglaterra.","Como críticas incisivas ao catolicismo.","Porque o protestantismo foi mais relevante nos dois processos."]'::jsonb,
'C'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'História',
'Leia o texto sobre a relação entre povos ameríndios e espanhóis na colonização (Texto 3). A diferença de compreensão do ayllu entre povos pré-colombianos e cronistas espanhóis explica-se pela:',
'', '',
'["Convivência igualitária entre incas e colonizadores.","Evolução social dos incas após o contato.","Frágil organização social das comunidades ameríndias.","Visão etnocêntrica dos cronistas espanhóis.","Passividade dos povos ameríndios diante do apagamento cultural."]'::jsonb,
'D'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'História',
'A partir do texto sobre a expansão cultural e religiosa do islamismo (Texto 4), a influência do islamismo no Brasil caracterizou-se:',
'', '',
'["Pela expansão pacífica em convivência com o cristianismo.","Pela influência limitada apenas a territórios africanos.","Pela perda das referências culturais islâmicas.","Pelo enfraquecimento da Igreja Católica desde o século VII.","Pelo longo processo de expansão territorial do islã no Ocidente e suas transformações no contato cultural."]'::jsonb,
'E'
from public.exams where slug = 'pism-2025-2'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
