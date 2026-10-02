-- Seed: OAB - 44o Exame de Ordem Unificado (1a fase)
-- Ordem dos Advogados do Brasil - Banca FGV - Tipo 1 (Branca) - 80 questoes
-- Gabarito oficial (Tipo 1):
--  1-C  2-B  3-B  4-A  5-C  6-B  7-C  8-C  9-A 10-D
-- 11-C 12-D 13-C 14-D 15-D 16-B 17-D 18-A 19-D 20-C
-- 21-D 22-A 23-B 24-C 25-C 26-C 27-D 28-B 29-A 30-D
-- 31-A 32-A 33-D 34-C 35-B 36-A 37-D 38-C 39-C 40-A
-- 41-D 42-B 43-A 44-A 45-B 46-A 47-C 48-B 49-B 50-A
-- 51-C 52-D 53-A 54-A 55-B 56-D 57-D 58-D 59-B 60-C
-- 61-D 62-C 63-B 64-D 65-C 66-B 67-A 68-B 69-A 70-A
-- 71-D 72-C 73-B 74-A 75-C 76-A 77-D 78-B 79-B 80-A

insert into public.exams (slug, title, source, year)
values ('oab-44-primeira-fase', 'OAB 44º Exame de Ordem Unificado (1ª fase)', 'oab', '2025')
on conflict (slug) do update set title = excluded.title;

-- ============================================================
-- ETICA E ESTATUTO DA OAB (Questoes 1 a 8)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 1, 'Ética e Estatuto da OAB',
'Antônia, advogada previdenciária, verificou que o indeferimento do benefício de Osvaldo se deu com base em dispositivo claro e expresso da lei, sem notícia de precedente favorável, e informou isso de modo claro ao cliente, apontando os riscos. Diante da insistência de Osvaldo, decidiu propor a demanda. Considerando o regime das infrações e sanções disciplinares da Advocacia, assinale a afirmativa correta.',
'',
'',
'["Antônia advogou contra literal disposição de lei, o que, não obstante seja conduta irrelevante no regime das infrações disciplinares, poderá sujeitá-la a eventual sanção por litigância de má-fé aplicada pelo juiz da causa.","Antônia advogou contra literal disposição de lei, conduta que poderá sujeitá-la, perante o órgão competente da OAB, à pena isolada de multa.","Antônia advogou contra literal disposição de lei, porém poderá contar com a presunção de boa-fé em seu favor, caso tenha fundamentado seu pedido na inconstitucionalidade ou na injustiça da lei.","Antônia advogou contra literal disposição de lei, conduta que não possui relevância jurídico-disciplinar, mesmo porque a atuação da advocacia deve ser a mais ampla possível na defesa dos interesses de seus clientes."]'::jsonb,
'C',
'Advogar contra literal disposição de lei é, em tese, infração disciplinar, salvo quando o advogado puder contar com a presunção de boa-fé, especialmente se fundamentar o pedido na inconstitucionalidade, na injustiça da lei ou em pronunciamento judicial anterior. Como se admite a defesa de tese jurídica mesmo contrária ao texto legal, desde que de boa-fé, a alternativa C está correta.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 2, 'Ética e Estatuto da OAB',
'Roberto, advogado autônomo com atuação no Direito Criminal, foi investido no cargo de diretor jurídico da Nossa Estatal, empresa pública federal que atua no mercado financeiro em regime de competição com o setor privado. Acerca da nova condição profissional de Roberto, assinale a afirmativa correta.',
'',
'',
'["A nova atividade exercida por Roberto caracteriza incompatibilidade para o exercício da advocacia, mesmo em causa própria.","Durante o período da investidura, Roberto estará exclusivamente legitimado para o exercício da advocacia vinculada ao cargo de diretor jurídico.","Roberto, durante o período da investidura, somente não poderá atuar como advogado autônomo contra a Fazenda Pública à qual está vinculada sua entidade empregadora.","Uma vez que a atuação de Roberto é na área criminal, sem relação direta com o mercado financeiro, Roberto poderá continuar exercendo normalmente a advocacia autônoma."]'::jsonb,
'B',
'Os integrantes do quadro de advocacia de empresas públicas e sociedades de economia mista ocupam situação de impedimento (proibição parcial): durante a investidura no cargo de diretor jurídico, Roberto fica restrito à advocacia vinculada à entidade empregadora, não podendo exercer livremente a advocacia autônoma. Logo, está exclusivamente legitimado para a advocacia vinculada ao cargo (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 3, 'Ética e Estatuto da OAB',
'Gustavo, comerciante e advogado inscrito, reuniu num mesmo estabelecimento o escritório de advocacia e a loja comercial, adaptou a fachada para identificar as duas atividades, incorporou a advocacia como finalidade adicional de sua sociedade empresária de comércio e admitiu sócios sem formação jurídica. Sobre a natureza da sociedade de advogados e sua constituição e registro, assinale a afirmativa correta.',
'',
'',
'["É possível a admissão de sócio não advogado nas sociedades advocatícias, sendo proibido apenas que a razão social contenha o nome daquele sócio não inscrito na OAB.","A sociedade criada por Gustavo não pode ser admitida a registro, porque congrega serviços de advocacia com atividades estranhas à prática advocatícia, além de contar com sócios não inscritos como advogado.","Apesar de ser admitida a realização de atividades estranhas à advocacia por parte da sociedade de advogados, a sociedade fundada por Gustavo não pode ser registrada por incluir como sócio pessoa não inscrita como advogado.","A conduta adotada por Gustavo de incorporar serviços de comércio e advocatícios em uma mesma pessoa jurídica, a despeito de pouco usual, é válida, porque se admite o registro nas juntas comerciais de sociedade que inclua, entre suas finalidades, a atividade de advocacia."]'::jsonb,
'B',
'A sociedade de advogados não pode ter finalidade mercantil nem exercer atividade estranha à advocacia, e não admite sócios não inscritos na OAB; seu registro é feito no Conselho Seccional, não na Junta Comercial. A sociedade de Gustavo reúne comércio e advocacia e tem sócios leigos, de modo que não pode ser admitida a registro (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 4, 'Ética e Estatuto da OAB',
'O Presidente do Conselho Seccional recebeu representação devidamente identificada, com narrativa de infração disciplinar do advogado Paulo, documentos, rol de testemunhas e indicação de provas, e imediatamente designou relator para a instrução do processo disciplinar. Considerando a legislação do processo disciplinar, assinale a afirmativa correta.',
'',
'',
'["Se a infração ético-disciplinar apontada na representação for punível com a sanção de censura, será admissível a celebração de termo de ajustamento de conduta, desde que o fato apurado não tenha gerado repercussão negativa à advocacia.","A autoridade competente que proferir o despacho declaratório da instauração do processo disciplinar deverá, no mesmo ato, promover a suspensão preventiva de Paulo pelo prazo de até 90 (noventa) dias.","Na hipótese de arquivamento liminar da representação pelo Presidente do Conselho Seccional, caberá recurso ao Conselho Federal da OAB.","A designação imediata de relator pelo Presidente do Conselho Seccional, sem a prévia oitiva de Paulo, viola o princípio da ampla defesa."]'::jsonb,
'A',
'O Código de Ética e Disciplina admite a celebração de Termo de Ajustamento de Conduta (TAC) nas infrações puníveis com censura, desde que não haja repercussão negativa à advocacia e o fato não configure reincidência. Logo, a alternativa A está correta. A suspensão preventiva não é automática no despacho de instauração (B); a designação de relator não viola a ampla defesa, que será exercida na instrução (D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 5, 'Ética e Estatuto da OAB',
'O advogado Gomes firmou contrato com Dênis prevendo honorários convencionais de 20% sobre o proveito econômico, além dos sucumbenciais. Dênis, porém, firmou acordo extrajudicial diretamente com o advogado do Banco Alfa, recebendo R$ 5.000,00 e renunciando aos honorários advocatícios, sem a participação de Gomes. Com base no Art. 24 do Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["Dênis tem o direito de renunciar aos honorários advocatícios convencionados e sucumbenciais, desde que tenha feito isso expressamente no acordo com o Banco Alfa, e isso prejudica o direito de Gomes de receber qualquer valor.","O acordo firmado por Dênis com o Banco Alfa retira o direito de Gomes aos honorários convencionados, mas Gomes ainda pode pleitear apenas os honorários sucumbenciais, desde que haja condenação judicial.","Gomes mantém o direito aos honorários convencionados e sucumbenciais, independentemente do acordo realizado por Dênis com o Banco Alfa, uma vez que o acordo não prejudica o advogado sem sua aquiescência.","Gomes somente poderá cobrar os honorários convencionados se houver uma decisão judicial declarando nulo o acordo firmado entre Dênis e o Banco Alfa."]'::jsonb,
'C',
'O Art. 24, §4º, do Estatuto da OAB dispõe que o acordo feito pelo cliente, extinguindo a demanda ou transigindo, NÃO prejudica os honorários (convencionados ou sucumbenciais), salvo aquiescência do advogado. Como Gomes não anuiu, mantém o direito a ambos os honorários (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 6, 'Ética e Estatuto da OAB',
'O advogado Ivan, prestes a embarcar em voo doméstico, percebeu que só tinha consigo a carteira da OAB (com foto). A companhia aérea recusou-a como documento de identidade. Com base no Estatuto da Ordem dos Advogados do Brasil, assinale a afirmativa correta.',
'',
'',
'["Ivan não poderá embarcar, pois a carteira da OAB não é considerada documento de identidade civil válido para viagens nacionais em aviões.","Ivan poderá embarcar, pois a carteira da OAB constitui prova de identidade civil para todos os fins legais, inclusive para viagens nacionais em aviões.","Ivan somente poderá embarcar se apresentar outro documento de identificação civil junto com a carteira da OAB, como medida de segurança adicional.","Ivan não poderá embarcar, pois a carteira da OAB só é válida como documento de identificação quando utilizada em exercício da atividade profissional em fóruns e tribunais."]'::jsonb,
'B',
'O Estatuto da OAB (art. 13) dispõe que a carteira de identidade de advogado tem fé pública e constitui documento de identidade civil, válido em todo o território nacional para todos os fins legais. Logo, Ivan poderá embarcar usando a carteira da OAB (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 7, 'Ética e Estatuto da OAB',
'Decretada a prisão de João em investigação sigilosa, Carlos, advogado, dirigiu-se à delegacia e ao magistrado plantonista para tratar do caso. Nesse contexto, assinale a afirmativa correta.',
'',
'',
'["Carlos somente terá acesso aos autos da investigação que culminou na prisão de João se apresentar procuração para representá-lo. Nesse caso, deve lhe ser franqueado amplo acesso aos elementos de prova colhidos pela autoridade policial, não sendo possível a imposição de qualquer limitação.","Carlos deverá ter acesso aos autos da investigação que culminou na prisão de João, independentemente da apresentação de procuração para representá-lo. Ademais, deve lhe ser franqueado amplo acesso aos elementos de prova colhidos pela autoridade policial, não sendo possível a imposição de qualquer limitação.","Carlos somente terá acesso aos autos da investigação que culminou na prisão de João se apresentar procuração para representá-lo. Entretanto, o acesso aos elementos de prova colhidos pela autoridade policial poderá ser delimitado, desde que relacionados a diligências em andamento e ainda não documentados nos autos, desde que haja comprovado risco de comprometimento da eficiência, da eficácia ou da finalidade da investigação.","Carlos deverá ter acesso aos autos da investigação que culminou na prisão de João, independentemente da apresentação de procuração para representá-lo. Entretanto, o acesso aos elementos de prova colhidos pela autoridade policial poderá ser delimitado, ainda que relacionados a diligências já encerradas e devidamente documentadas nos autos, desde que haja comprovado risco de comprometimento da eficiência, da eficácia ou da finalidade da investigação."]'::jsonb,
'C',
'O Estatuto da OAB (art. 7º, XIV e §§, à luz da Súmula Vinculante 14 do STF) assegura ao advogado o acesso aos elementos de prova já documentados nos autos. O acesso pode ser restringido apenas quanto a diligências em andamento e ainda NÃO documentadas, quando houver risco de comprometimento da investigação. Para esse acesso restrito, no caso de prisão, exige-se, em regra, procuração. A alternativa C combina corretamente esses requisitos.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 8, 'Ética e Estatuto da OAB',
'Euclides, advogado, foi flagrado praticando assédio sexual contra colaboradoras de seu escritório, com ampla repercussão regional, afetando a imagem da Advocacia. O Tribunal de Ética e Disciplina determinou sua suspensão preventiva, designando sessão de oitiva para a semana seguinte, e fixou o prazo máximo de 180 dias para concluir o processo disciplinar. Com base no Estatuto da Advocacia e da OAB, assinale a afirmativa correta.',
'',
'',
'["O procedimento adotado foi regular, pois diante da gravidade dos fatos e da ampla repercussão, o Tribunal de Ética pode suspender preventivamente o advogado e prorrogar o prazo do processo disciplinar para até 180 dias.","O procedimento adotado foi válido apenas quanto à suspensão, pois o Estatuto admite a suspensão preventiva sem qualquer necessidade de notificação ou sessão de oitiva, desde que haja repercussão negativa à imagem da OAB.","O procedimento foi irregular, porque a suspensão preventiva do advogado somente é válida se o representado for previamente notificado ou, depois de notificado, não comparecer, e o prazo máximo do processo, na hipótese, é de 90 dias.","O procedimento adotado foi regular quanto ao prazo máximo de duração do processo disciplinar, mas irregular quanto à suspensão preventiva, pois, embora seja cabível, a oitiva do advogado deve ocorrer antes da suspensão, e não posteriormente."]'::jsonb,
'C',
'A suspensão preventiva (art. 70, §3º, do Estatuto) pressupõe repercussão prejudicial à dignidade da advocacia e exige sessão especial do TED, com NOTIFICAÇÃO prévia do representado para a sessão (ou seu não comparecimento). Além disso, o processo disciplinar deve, em regra, concluir-se em 90 dias. Como houve suspensão sem a prévia notificação e com prazo de 180 dias, o procedimento foi irregular (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- FILOSOFIA DO DIREITO (Questoes 9 a 10)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 9, 'Filosofia do Direito',
'John Locke, no Segundo Tratado sobre o Governo, fala da instituição de uma sociedade política em que devem vigorar as leis feitas pelo poder civil (o parlamento). Assinale a opção que, segundo Locke, expressa corretamente a ideia de cumprimento e obediência às leis civis.',
'',
'',
'["Todas as pessoas, as mais distintas e as mais modestas, estão sujeitas às leis feitas pelo parlamento, inclusive os próprios parlamentares, pois ninguém pode, na sociedade civil, isentar-se das leis que a regem.","Os cidadãos ficam sujeitos às leis do governo civil após o contrato social, mas o soberano, encarnado nos agentes do governo, não faz parte do pacto e, por isso, não deve obediência às leis que produz.","Os cidadãos e os governantes estão sujeitos às leis instituídas após o contrato social, contudo as autoridades religiosas, ainda que vivam na sociedade civil, não devem obediência às leis, mas, sim, a Deus.","Os governantes, responsáveis pela administração da sociedade política, e os governados devem se submeter ao império da lei, contudo, parlamentares e magistrados estão isentos da obediência à lei para exercerem seu ofício de forma livre e soberana."]'::jsonb,
'A',
'Para Locke, no Estado civil instituído pelo contrato social, todos estão igualmente submetidos às leis gerais criadas pelo poder legislativo, inclusive os próprios governantes e legisladores - ninguém está acima da lei. Essa igualdade perante a lei é a ideia expressa na alternativa A.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 10, 'Filosofia do Direito',
'O Art. 5º, XI, da CRFB/88 dispõe que "a casa é asilo inviolável do indivíduo...". João Vicente, que residia em um quarto de hotel, procura você para anular o ingresso policial feito sem mandado e sem flagrante, com base nessa norma. Assinale a opção que indica o tipo de interpretação adequado para fundamentar a ilegalidade do ingresso.',
'',
'',
'["Interpretação gramatical, baseada no brocardo in claris cessat interpretatio.","Interpretação restritiva, sob o argumento de que não se pode usar um conceito de modo amplo.","Interpretação autêntica, usando conceito semelhante previsto em norma de Direito Civil, que possui legislação específica acerca do alcance semântico do domicílio.","Interpretação extensiva, usando a argumentação de que o alcance da norma e do conceito de casa é mais amplo do que o utilizado pela autoridade policial, a fim de abarcar aquele que reside em quarto de hotel."]'::jsonb,
'D',
'Para abranger o quarto de hotel no conceito de "casa" protegido pela inviolabilidade do domicílio, é preciso ampliar o alcance literal da norma. Trata-se, portanto, de interpretação EXTENSIVA, pela qual se estende o sentido do conceito de casa para abarcar situações não expressamente mencionadas, mas compreendidas em sua finalidade (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CONSTITUCIONAL (Questoes 11 a 16)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 11, 'Direito Constitucional',
'O Estado Delta oferta o pior serviço de saúde do país. O governador prometeu aumentar a dotação orçamentária dos hospitais públicos estaduais e, também, auxiliar financeiramente hospitais privados que comprovassem margem de lucro insuficiente para investir em qualidade. Sobre o posicionamento do governador, segundo a perspectiva jurídico-constitucional, assinale a afirmativa correta.',
'',
'',
'["Ele poderá cumprir sua promessa, contanto que não ultrapasse o percentual máximo de gastos constitucionalmente permitidos para os serviços de saúde.","Ele poderá promover a política de saúde indicada, porque, como chefe do Poder Executivo de ente federativo autônomo, é ele quem determina as ações de governo.","Ele não está autorizado a destinar recursos públicos para auxiliar hospitais privados que possuam a característica explicitada no caso narrado.","Ele não poderá concretizar sua promessa, já que a matéria orçamentária em temas relacionados ao cuidado e à defesa da saúde é de competência exclusiva da União."]'::jsonb,
'C',
'A Constituição (art. 199, §2º) veda a destinação de recursos públicos para auxílio ou subvenção às instituições privadas com fins lucrativos. A participação da iniciativa privada no SUS é complementar e se dá por entidades, preferencialmente filantrópicas e sem fins lucrativos. Auxiliar financeiramente hospitais privados por sua baixa margem de lucro é, portanto, vedado (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 12, 'Direito Constitucional',
'Um consumidor, cliente de instituição financeira constituída como sociedade de economia mista federal, teve o nome negativado indevidamente e deseja ajuizar ação de responsabilidade civil, questionando se seria na Justiça Federal. Com base no sistema jurídico-constitucional brasileiro, assinale a opção que apresenta a resposta correta.',
'',
'',
'["A competência para apreciar a ação de responsabilidade civil a ser proposta é da Justiça Federal, pois a União, indiretamente, figura no polo passivo.","A ação deve ser proposta perante a Justiça Estadual, não perante a Justiça Federal, isto se o referido foro tiver sido definido pela lei que autorizou a criação da instituição financeira.","Por se tratar de sociedade de economia mista federal, a competência originária para a apreciação da ação de responsabilidade civil é do Tribunal Regional Federal da região do consumidor.","A despeito de possuir a União como seu sócio majoritário, a ação de responsabilidade civil em face da instituição financeira deve ser proposta na Justiça Estadual."]'::jsonb,
'D',
'As sociedades de economia mista, ainda que federais, NÃO atraem a competência da Justiça Federal (art. 109, I, da CF, que menciona apenas a União, autarquias e empresas públicas federais). Conforme a Súmula 556 do STF, compete à Justiça comum ESTADUAL julgar as causas em que é parte sociedade de economia mista. Logo, a ação deve ser proposta na Justiça Estadual (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 13, 'Direito Constitucional',
'No Estado Sigma foi promulgada a Lei Estadual nº X/2024 (Direito Financeiro), cujos dispositivos conflitam com normas do Ato das Disposições Constitucionais Transitórias (ADCT) ainda produzindo efeitos. O Presidente de partido político quer questionar a constitucionalidade da lei por afronta ao ADCT. Assinale a opção que indica a resposta correta.',
'',
'',
'["Embora federais, as normas do ADCT possuem hierarquia legal, razão pela qual não poderia haver controle de constitucionalidade, mas controle de legalidade da Lei Estadual nº X/2024.","As normas do ADCT, por possuírem status supralegal, poderiam servir de parâmetro para aferir a validade da Lei Estadual nº X/2024, muito embora não pudessem ser consideradas normas paramétricas para o controle de constitucionalidade.","Na medida em que as normas do ADCT têm estatura constitucional, pode ser proposta Ação Direta de Inconstitucionalidade para que seja reconhecida a inconstitucionalidade das normas da Lei Estadual nº X/2024.","Como o ADCT possui natureza legal, uma possível antinomia entre suas normas e as da Lei Estadual nº X/2024 faria que as normas anteriores, as do ADCT, fossem tacitamente revogadas."]'::jsonb,
'C',
'As normas do ADCT têm a mesma estatura constitucional das normas do corpo permanente da Constituição e, enquanto produzirem efeitos, podem servir de parâmetro (norma paramétrica) para o controle de constitucionalidade. Assim, é cabível ADI contra a lei estadual que as afronte (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 14, 'Direito Constitucional',
'O Presidente da República apresentou projeto de lei para aumentar a remuneração dos cargos X e Y do Poder Executivo. Na Câmara dos Deputados, foi aprovada emenda parlamentar que estendeu o aumento também aos cargos W e X. Sobre a emenda parlamentar, considerando a sistemática da Constituição, assinale a afirmativa correta.',
'',
'',
'["Deve ser considerada válida, pois o Congresso Nacional tem competência para modificar projetos de lei de iniciativa do Presidente da República.","É constitucional, desde que seja aprovada pela maioria absoluta dos membros da Câmara dos Deputados e do Senado Federal.","Deve ser considerada inválida, pois o aumento de remuneração só pode ser feito por medida provisória editada pelo Presidente da República.","É inconstitucional, pois não se pode aumentar despesa prevista em projetos de lei de iniciativa exclusiva do Presidente da República."]'::jsonb,
'D',
'As emendas parlamentares a projetos de lei de iniciativa exclusiva do Presidente da República (como os que tratam de remuneração de servidores do Executivo) não podem acarretar AUMENTO DE DESPESA (art. 63, I, da CF). Como a emenda estendeu o aumento a novos cargos, elevando a despesa, é inconstitucional (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 15, 'Direito Constitucional',
'João sustenta que a norma X, materialmente constitucional, deve preponderar sobre a norma Y, que seria constitucional apenas sob o prisma formal. Pedro afirma que, sob a perspectiva normativo-hierárquica, ambas possuem a mesma hierarquia. Sobre a hipótese, segundo a visão jurídico-constitucional brasileira, assinale a afirmativa correta.',
'',
'',
'["João está correto, pois as normas constitucionais, na perspectiva meramente formal, possuem, prima facie, status legal e, portanto, hierarquia inferior àquelas materialmente constitucionais.","Pedro está correto, porque as normas formalmente constitucionais, sob a perspectiva do conteúdo, obrigatoriamente também o são sob a perspectiva de análise material.","João, como a norma Y consubstancia norma constitucional somente sob o ponto de vista formal, está correto, pois há de se considerar que a ela deve ser sempre atribuído status supralegal, mas infraconstitucional.","Pedro está correto, porque as normas X e Y, na perspectiva normativo-hierárquica, não possuem qualquer superioridade uma sobre a outra, sendo reconhecida em ambas a estatura constitucional."]'::jsonb,
'D',
'No ordenamento brasileiro não há hierarquia entre normas constitucionais originárias: sejam materialmente ou apenas formalmente constitucionais, todas têm a mesma estatura constitucional. Por isso, Pedro está correto - não há superioridade de uma sobre a outra no plano normativo-hierárquico (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 16, 'Direito Constitucional',
'Durante forte tempestade com iminente perigo público, o Prefeito de Delta requisitou um gerador de energia da sociedade Gama para manter o hospital municipal, usado por dois dias, sem causar dano ao bem. O sócio-gerente de Gama exige indenização. A esse respeito, assinale a afirmativa correta.',
'',
'',
'["A sociedade empresária Gama tem direito à indenização, independentemente de ter havido dano ao bem.","Como o bem não sofreu danos durante sua utilização, a sociedade empresária Gama não tem direito à indenização.","A utilização de bem privado, em prol do interesse público, sendo-lhe causado dano, ou não, não gera direito à indenização.","A sociedade empresária Gama só teria direito à indenização se a requisição tivesse sido realizada por autoridade federal, mas não pela autoridade citada no caso concreto."]'::jsonb,
'B',
'Na requisição administrativa por iminente perigo público (art. 5º, XXV, da CF), a indenização ao proprietário é ULTERIOR e condicionada à ocorrência de DANO. Como o gerador foi devolvido sem qualquer dano, não há o que indenizar (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITOS HUMANOS (Questoes 17 a 18)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 17, 'Direitos Humanos',
'No que concerne aos standards internacionais atualmente adotados para a defesa do Direito Humano à Igualdade, assinale a afirmativa correta.',
'',
'',
'["O direito à igualdade abrange atualmente três dimensões, havendo amplo consenso quanto à existência de uma dimensão de ordem formal, também compreendida como igualdade perante a lei; uma segunda dimensão, de ordem material, comumente relacionada ao conceito de justiça retributiva; e uma terceira dimensão, de ordem instrumental, que reconhece no direito à igualdade a condição viabilizadora da concretização de outros direitos fundamentais.","No âmbito do sistema global de proteção aos direitos humanos, a Convenção das Nações Unidas sobre a Eliminação de Todas as Formas de Discriminação Contra a Mulher pode ser apontada como importante instrumento para superação das desigualdades de gênero. Contudo, o instrumento não admite de forma expressa a utilização de ações afirmativas, ou medidas compensatórias, destinadas a acelerar o processo de superação das desigualdades existentes.","A Convenção Internacional sobre a Eliminação de Todas as Formas de Discriminação Racial rechaça a possibilidade dos Estados-parte estabelecerem medidas de tratamento desigual, em detrimento de grupos étnicos historicamente mais favorecidos, por considerar que a referida prática pode configurar a conduta expressamente vedada do denominado \"racismo reverso\".","Ao interpretar a Convenção Americana sobre Direitos Humanos, a Corte IDH reconhece a possibilidade de serem adotados critérios para \"distinção\" de tratamento entre determinados grupos de indivíduos. O que não se admite é a prática de condutas \"discriminatórias\". Para a Corte, as \"distinções\" constituem diferenças compatíveis com a Convenção Americana por serem razoáveis e objetivas. Já as \"discriminações\" constituem diferenças arbitrárias que redundam em prejuízo dos Direitos Humanos."]'::jsonb,
'D',
'A Corte Interamericana distingue "distinção" de "discriminação": a distinção é um tratamento diferenciado admissível, por ser razoável e objetivo; já a discriminação é o tratamento diferenciado arbitrário, que viola os Direitos Humanos. A alternativa D traduz corretamente essa jurisprudência. As demais contêm erros (a dimensão material da igualdade liga-se à justiça distributiva, não retributiva; a CEDAW admite ações afirmativas; a Convenção sobre discriminação racial admite medidas afirmativas temporárias).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 18, 'Direitos Humanos',
'Em relação aos Direitos Humanos das pessoas presas, assinale a afirmativa correta.',
'',
'',
'["Tanto as Regras de Nelson Mandela quanto as Regras de Bangkok possuem natureza de soft law, ou seja, são consideradas normas não vinculantes de Direito Internacional. Nada obstante, configuram-se em importantes diretrizes que servem de orientação para os Estados membros da Organização das Nações Unidas.","No âmbito do Sistema de Proteção Interamericano de Direitos Humanos foram editadas as denominadas regras de Nelson Mandela, com vistas à fixação de standards mínimos de organização e funcionamento dos estabelecimentos prisionais, em ordem à proteção dos direitos dos indivíduos privados de suas liberdades.","De acordo com as Regras Mínimas das Nações Unidas para o Tratamento de Presos, todas as penas cruéis, desumanas, degradantes ou que impliquem tortura devem ser proibidas. Entretanto, não há óbice à imposição do confinamento solitário prolongado, desde que aplicado como forma de sanção disciplinar, em razão de falta grave cometida pelo apenado.","No âmbito do sistema global, há dois tratados, consubstanciando-se em norma de jus cogens, que estabelecem disposições específicas para os presos do sexo masculino e do sexo feminino. Assim, enquanto as Regras de Nelson Mandela disciplinam os cuidados mínimos com os encarcerados do sexo masculino, não se aplicando às mulheres presas, as regras de Bangkok se destinam exclusivamente ao encarceramento feminino."]'::jsonb,
'A',
'Tanto as Regras de Nelson Mandela (Regras Mínimas da ONU para o Tratamento de Presos) quanto as Regras de Bangkok (sobre mulheres presas) são instrumentos de SOFT LAW - não vinculantes, mas importantes diretrizes orientadoras para os Estados-membros da ONU (alternativa A). As demais contêm erros: as regras não são do sistema interamericano (B), o confinamento solitário prolongado é vedado (C) e as Regras de Mandela aplicam-se a todos os presos, não só homens (D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ELEITORAL (Questoes 19 a 20)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 19, 'Direito Eleitoral',
'Maria e João foram eleitos prefeita e vice-prefeito do Município Alfa, com poucos votos de vantagem. Dez dias após a diplomação, os integrantes da chapa derrotada obtiveram provas cabais de fraude praticada pela chapa vencedora, comprometendo a normalidade e a legitimidade do pleito. Assinale a medida judicial a ser ajuizada contra os integrantes da chapa vencedora.',
'',
'',
'["Investigação judicial eleitoral.","Ação de captação ilícita de votos.","Recurso contra expedição de diploma.","Ação de impugnação de mandato eletivo."]'::jsonb,
'D',
'A Ação de Impugnação de Mandato Eletivo (AIME), prevista no art. 14, §10, da CF, é cabível contra mandato obtido mediante abuso do poder econômico, corrupção ou FRAUDE, e deve ser ajuizada no prazo de 15 dias contados da diplomação. Como a chapa derrotada obteve provas de fraude dez dias após a diplomação, dentro do prazo, a medida adequada é a AIME (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 20, 'Direito Eleitoral',
'Pedro, candidato a Prefeito, consultou sobre a possibilidade de veicular propaganda eleitoral paga, na imprensa escrita, durante o período de propaganda eleitoral. Assinale a afirmativa que apresenta a resposta correta.',
'',
'',
'["A realização da propaganda eleitoral na forma pretendida é vedada, em qualquer hipótese.","A propaganda eleitoral que ele deseja realizar é a única de natureza não gratuita permitida pela legislação eleitoral, podendo ser realizada até o dia da eleição.","A veiculação de anúncios de propaganda eleitoral na imprensa escrita é permitida, observados limites quantitativos e de espaço, até a antevéspera das eleições.","Somente os partidos políticos podem contratar a realização da propaganda eleitoral pretendida por Pedro, sendo os limites quantitativos distribuídos internamente entre os candidatos do respectivo partido."]'::jsonb,
'C',
'A Lei nº 9.504/1997 (art. 43) admite a propaganda eleitoral PAGA na imprensa escrita, observados limites de tamanho (até 1/8 de página de jornal e 1/4 de página de revista) e de quantidade de inserções por veículo, até a ANTEVÉSPERA das eleições. Portanto, a veiculação é permitida com esses limites (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO INTERNACIONAL (Questoes 21 a 22)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 21, 'Direito Internacional',
'João, brasileiro domiciliado no Japão, celebrou contrato presencial no Japão com Adam, estrangeiro domiciliado no Brasil, com cláusula de eleição de foro escolhendo o Brasil para resolver conflitos. A controvérsia foi submetida à justiça brasileira. Conforme a LINDB, assinale a opção que indica a lei a ser aplicada para resolver a lide.',
'',
'',
'["A do Brasil, devido à cláusula de eleição de foro.","A do Japão, porque é o local em que João é domiciliado.","A do Brasil, porque é o local em que Adam é domiciliado.","A do Japão, porque é o local em que o contrato foi celebrado."]'::jsonb,
'D',
'Quanto às obrigações, a LINDB (art. 9º) determina que, para qualificar e reger as obrigações, aplica-se a lei do país em que se CONSTITUÍREM. Tratando-se de contrato celebrado presencialmente no Japão, aplica-se a lei japonesa (lei do local da constituição da obrigação). A eleição de foro define apenas onde a causa tramita, não a lei material aplicável (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 22, 'Direito Internacional',
'A Convenção de Viena sobre os Direitos dos Tratados de 1969 estabelece regras gerais sobre os tratados. Quanto à interpretação, estes devem ser interpretados de boa-fé, considerando o contexto, o objetivo e a finalidade. A esse respeito, assinale a afirmativa correta.',
'',
'',
'["Para os fins de interpretação de um tratado, o contexto compreenderá, além do texto, seu preâmbulo e anexos.","Toda vez que um tratado for autenticado em duas ou mais línguas, sem exceção, seu texto tem validade em cada uma delas.","Uma versão do tratado em língua diversa daquelas em que o texto foi autenticado, só será considerada texto autêntico se o tratado o previr.","Não são admitidos meios suplementares de interpretação dos tratados internacionais, como os trabalhos preparatórios e as circunstâncias de conclusão do tratado, ainda que a interpretação deixe o sentido ambíguo ou obscuro."]'::jsonb,
'A',
'Conforme a Convenção de Viena (art. 31, §2º), para fins de interpretação de um tratado o CONTEXTO compreende, além do texto, seu preâmbulo e anexos (bem como acordos e instrumentos relacionados). Logo, a alternativa A está correta. A validade em cada língua admite exceções quando o próprio tratado dispõe de modo diverso (B); versões em outras línguas podem ser autênticas se o tratado ou as partes assim acordarem (C); e os meios suplementares são admitidos justamente quando o sentido fica ambíguo ou obscuro (D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO FINANCEIRO (Questoes 23 a 24)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 23, 'Direito Financeiro',
'O Projeto de Lei Orçamentária Anual (PLOA) enviado pelo Governador do Estado Alfa dispunha, entre outras matérias: I. autorização para abertura de créditos adicionais suplementares; II. autorização para abertura de créditos adicionais especiais; III. autorização para contratação de operações de crédito; IV. autorização para contratação de operações de crédito por antecipação de receita. À luz da Constituição Federal de 1988, assinale a afirmativa correta.',
'',
'',
'["A autorização para abertura de créditos adicionais suplementares não poderia constar neste PLOA.","A autorização para abertura de créditos adicionais especiais foi indevidamente inserida neste PLOA.","A autorização para contratação de operações de crédito não poderia ser prevista neste PLOA.","A Constituição Federal expressamente proíbe que se insira no PLOA autorização para contratação de operações de crédito por antecipação de receita."]'::jsonb,
'B',
'A Lei Orçamentária Anual pode conter autorização para abertura de créditos SUPLEMENTARES e para contratação de operações de crédito, inclusive por antecipação de receita (art. 165, §8º, da CF). O que NÃO cabe na LOA é a autorização para abertura de créditos ESPECIAIS, que se destinam a despesas sem dotação orçamentária específica e dependem de lei própria. Logo, a autorização para créditos especiais foi indevidamente inserida (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 24, 'Direito Financeiro',
'O Município Alfa revogou a lei do IPTU há mais de 5 anos, deixando de cobrar o imposto. Notificado pelo Tribunal de Contas por descumprir requisito de gestão fiscal responsável, o prefeito pergunta a consequência de manter a não instituição, previsão e arrecadação de todos os impostos de sua competência. À luz da Lei de Responsabilidade Fiscal (LC nº 101/2000), assinale a resposta correta: o Município ficará impedido de',
'',
'',
'["realizar operações de crédito.","realizar qualquer concurso público.","receber transferências voluntárias.","contratar com qualquer outro ente da Federação."]'::jsonb,
'C',
'A LRF (art. 11) estabelece como requisito essencial da gestão fiscal responsável a instituição, previsão e efetiva arrecadação de TODOS os tributos da competência constitucional do ente. O descumprimento quanto aos IMPOSTOS acarreta a vedação de receber TRANSFERÊNCIAS VOLUNTÁRIAS (art. 11, parágrafo único). Logo, o Município ficará impedido de receber transferências voluntárias (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO TRIBUTARIO (Questoes 25 a 29)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 25, 'Direito Tributário',
'Paulo, domiciliado em Ubatuba (SP), era proprietário de uma única embarcação automotora, ancorada em Paraty (RJ). Faleceu em Belo Horizonte (MG), durante visita à filha e única herdeira, Joana, domiciliada em BH, que realizou o inventário extrajudicial perante tabelião mineiro. De acordo com a Constituição Federal de 1988, assinale a opção que indica o Estado em que o ITCMD sobre essa transmissão causa mortis é devido.',
'',
'',
'["Minas Gerais, por ser o local onde se processou o inventário extrajudicial.","Minas Gerais, por ser o local de domicílio da única herdeira.","São Paulo, por ser o local de domicílio do falecido.","Rio de Janeiro, por ser o local onde ancorada a embarcação automotora."]'::jsonb,
'C',
'Quanto a bens MÓVEIS (como a embarcação), títulos e créditos, o ITCMD compete ao Estado onde se processar o inventário/arrolamento ou onde tiver domicílio o DE CUJUS (art. 155, §1º, II, da CF). No caso, o inventário foi extrajudicial (não há foro de processamento judicial), devendo prevalecer o domicílio do falecido, que era São Paulo (Ubatuba). Logo, o imposto é devido a São Paulo (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 26, 'Direito Tributário',
'A entidade religiosa ABC requereu a imunidade de IPTU do imóvel onde realiza seus cultos e também do edifício ao lado, que serve de moradia a seus ministros religiosos. O Município reconheceu a imunidade só do primeiro, por terem matrículas distintas, embora ambos sejam registrados em nome da entidade. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["A entidade deve escolher sobre qual imóvel deve recair a imunidade do IPTU, uma vez que os imóveis têm matrículas distintas.","O imóvel que tem como função precípua a realização dos cultos fará jus à imunidade do IPTU, já que os imóveis apresentam duplicidade de matrículas.","A imunidade tributária religiosa do IPTU beneficia o imóvel em que se realiza o culto e todos os imóveis afetados à sua finalidade essencial, ainda que os imóveis tenham matrículas distintas.","Para que os imóveis pudessem gozar da imunidade tributária religiosa do IPTU, seria necessário que suas matrículas fossem unificadas."]'::jsonb,
'C',
'A imunidade dos templos de qualquer culto (art. 150, VI, "b", e §4º, da CF) alcança o patrimônio relacionado às finalidades essenciais da entidade religiosa. O STF entende que ela abrange não só o imóvel do culto, mas também os imóveis vinculados a essas finalidades (como a moradia de ministros), independentemente de terem matrículas distintas. Logo, ambos são imunes (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 27, 'Direito Tributário',
'Uma sociedade do setor petrolífero adquiriu uma Unidade Flutuante de Produção, Armazenamento e Transferência de Petróleo, com capacidade de se locomover pelas águas por motores próprios. O Estado Alfa publicou lei ordinária estabelecendo que a propriedade de tais Unidades é fato gerador de IPVA. Assinale a afirmativa correta.',
'',
'',
'["Embora se trate de veículo automotor, a Constituição Federal proíbe a incidência de IPVA sobre quaisquer veículos aquáticos.","O IPVA não pode incidir sobre veículo que é utilizado nas águas territoriais brasileiras, mas apenas se fosse utilizado em terra.","Somente por lei complementar se poderia delimitar a incidência de IPVA sobre este tipo de Unidade.","Apesar de poder ser classificada como veículo automotor, o IPVA não incidirá por exceção constitucional."]'::jsonb,
'D',
'Embora a Unidade seja um veículo automotor aquático, o STF firmou entendimento de que o IPVA NÃO incide sobre embarcações e aeronaves - sua competência alcança apenas veículos automotores terrestres. Trata-se de limitação construída pela jurisprudência constitucional. Logo, o IPVA não incidirá (alternativa D). A alternativa A é imprecisa ao falar em proibição expressa no texto da CF.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 28, 'Direito Tributário',
'José recebeu notificação para pagar ou impugnar o lançamento de crédito tributário estadual no prazo de 30 dias. No 20º dia, verificou que seu nome já constava do cadastro da Dívida Ativa Estadual. Assinale a afirmativa correta.',
'',
'',
'["Como já ocorrera previamente o lançamento tributário, a inserção do nome de José no cadastro da Dívida Ativa Estadual era devida.","Foi indevida a inserção do nome de José no cadastro da Dívida Ativa Estadual antes do vencimento do prazo para pagamento ou impugnação.","É possível a inserção do nome de José no cadastro da Dívida Ativa Estadual, sob condição resolutiva vinculada ao prazo de 30 dias ofertado para que pagasse ou impugnasse o lançamento.","O lançamento da dívida tributária se faz por meio do Termo de Inscrição em Dívida Ativa, razão pela qual não seria possível fazer o lançamento sem que o nome de José fosse inscrito em Dívida Ativa."]'::jsonb,
'B',
'A inscrição em dívida ativa pressupõe crédito tributário DEFINITIVAMENTE constituído, ou seja, não mais sujeito a discussão na esfera administrativa (vencido o prazo para pagamento ou impugnação). Como José ainda estava dentro do prazo de 30 dias para pagar ou impugnar, a inscrição antecipada em dívida ativa foi indevida (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 29, 'Direito Tributário',
'Em situação de calamidade pública no Município Alfa (2022), a União enviou recursos e, por lei federal, aprovou uma isenção de IPTU no Município para o ano de 2023. O Prefeito concordou e editou decreto regulamentando o gozo da isenção. Assinale a afirmativa correta.',
'',
'',
'["A referida isenção, para ser válida, deveria ter sido veiculada por lei municipal.","A União, em situação de calamidade pública, excepcionalmente, fica autorizada por lei federal a conceder isenção de qualquer imposto municipal.","A União, como ente central, pode condicionar a entrega de tais recursos ao Município à aceitação de que lei federal conceda isenção de imposto municipal.","A edição de decreto por parte do Prefeito configura a concordância do ente municipal com a concessão de tal isenção, tornando-a válida por ratificação expressa do Município."]'::jsonb,
'A',
'A Constituição (art. 151, III) VEDA as chamadas isenções heterônomas: é defeso à União instituir isenções de tributos da competência de Estados, do DF ou dos Municípios. A isenção de IPTU (imposto municipal) só pode ser concedida pelo próprio Município, por lei municipal. Logo, para ser válida, a isenção deveria ter sido veiculada por lei municipal (alternativa A).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO ADMINISTRATIVO (Questoes 30 a 35)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 30, 'Direito Administrativo',
'Juliana obteve condenações, com trânsito em julgado e em fase de cumprimento, contra uma autarquia e contra uma sociedade de economia mista que atua em regime concorrencial, cujos bens não estão afetados ao serviço público. Considerando a definição legal de bens públicos, assinale a opção que indica a informação correta sobre a penhora dos bens dessas entidades.',
'',
'',
'["A penhora dos bens das referidas entidades administrativas integrantes da Administração Indireta é possível, considerando que os bens de ambas são privados.","A penhora dos bens das citadas entidades administrativas não é admissível, na medida em que os bens de ambas são públicos.","A penhora dos bens da autarquia é possível, na medida em que seus bens são privados, mas os da sociedade de economia mista não é viável, considerando que seus bens são públicos.","A penhora dos bens da sociedade de economia mista é possível, porque seus bens são privados, mas os da autarquia não podem ser penhorados, uma vez que seus bens são públicos."]'::jsonb,
'D',
'Os bens das autarquias são bens PÚBLICOS, impenhoráveis, sujeitando-se o pagamento ao regime de precatórios. Já os bens de sociedade de economia mista que explora atividade econômica em regime concorrencial, não afetados ao serviço público, são bens PRIVADOS e, portanto, penhoráveis. Logo, pode-se penhorar os bens da sociedade de economia mista, mas não os da autarquia (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 31, 'Direito Administrativo',
'Jaílson pretende adquirir uma propriedade rural, considerada média nos termos da lei, única de sua titularidade, para plantação de alimentos orgânicos de subsistência, mas receia que o imóvel seja passível de desapropriação para fins de reforma agrária. Assinale a opção que apresenta a informação correta sobre os bens que podem ser objeto dessa intervenção.',
'',
'',
'["São insuscetíveis de desapropriação para fins de reforma agrária a pequena e a média propriedade rural, assim definidas em lei, desde que seu proprietário não possua outra.","Qualquer propriedade é passível de desapropriação para fins de reforma agrária, independentemente de seu tamanho ou produtividade.","O tamanho da propriedade não é relevante com relação à desapropriação para fins de reforma agrária, pois são insuscetíveis de tal medida apenas os imóveis produtivos.","Somente os latifúndios são passíveis de desapropriação para fins de reforma agrária, ainda que sejam produtivos."]'::jsonb,
'A',
'A Constituição (art. 185, I) torna insuscetíveis de desapropriação para fins de reforma agrária a pequena e a média propriedade rural, assim definidas em lei, desde que seu proprietário não possua outra. Como Jaílson teria propriedade média e única, ela estaria protegida contra esse tipo de desapropriação (alternativa A). A propriedade produtiva também é insuscetível (art. 185, II), mas o caso é resolvido pela regra do art. 185, I.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 32, 'Direito Administrativo',
'A sociedade Chique possui dois contratos administrativos com o Município Gama (serviços contínuos de limpeza e manutenção), sendo que apenas um deles contém cláusula expressa para adoção de meios alternativos de solução de controvérsias. O equilíbrio econômico-financeiro de ambos foi afetado por áleas econômicas extraordinárias. À luz da Lei nº 14.133/2021, assinale a opção que materializa a consultoria correta.',
'',
'',
'["O contrato, que não prevê expressamente a utilização de meios alternativos de solução de controvérsias, pode ser aditado para admitir instrumentos consensuais para tal finalidade.","O contrato, que possui previsão expressa, pode usar a arbitragem como meio alternativo de resolução das controvérsias, sendo que a escolha dos árbitros cabe à contratante, independentemente dos critérios isonômicos, técnicos e de transparência.","A conciliação e a mediação não são admitidas como instrumentos consensuais para a resolução de conflitos com a Administração Pública, de modo que não é possível a utilização de tais meios alternativos, nem mesmo para a hipótese em que exista previsão contratual.","Em razão da natureza do conflito, que versa sobre o equilíbrio econômico-financeiro de contrato administrativo, não é viável o uso de qualquer meio alternativo de resolução das controvérsias, de forma que eventual cláusula contratual nesse sentido, estipulada pelo Município Alfa e pela sociedade empresária Chique, é nula."]'::jsonb,
'A',
'A Lei nº 14.133/2021 (arts. 151 a 154) admite os meios alternativos de resolução de controvérsias (conciliação, mediação, comitês de resolução de disputas e arbitragem) nos contratos administrativos, inclusive sobre o equilíbrio econômico-financeiro. O contrato que não previu expressamente esses meios pode ser ADITADO para admiti-los. Logo, a alternativa A está correta; a arbitragem exige seleção dos árbitros com isonomia, tecnicidade e transparência (afastando B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 33, 'Direito Administrativo',
'A sociedade Bemquerer obteve licença administrativa (ato vinculado, sem cunho ambiental), mediante preenchimento dos requisitos legais, de acordo com a orientação geral da Administração vigente à época, quanto a certo conceito jurídico indeterminado. Consulta sobre eventual mudança de entendimento que imponha novo condicionamento. À luz da LINDB (com a Lei nº 13.655/2018), assinale a opção correta.',
'',
'',
'["Caso nova orientação geral venha a ser editada pela Administração, deve ser invalidada situação jurídica consolidada para a sociedade Bemquerer, mesmo que a licença ainda esteja em seu prazo de validade, considerando que a anulação deve operar efeitos retroativos.","Eventual mudança de orientação geral em sede administrativa deve retroagir para alcançar a situação jurídica constituída para a sociedade Bemquerer, independentemente da orientação vigente à época do deferimento da licença, o que importaria necessariamente na revogação do ato deferido.","O entendimento que permitiu o deferimento da licença para a sociedade Bemquerer apenas poderia prevalecer se fundado em jurisprudência firmada no âmbito do Poder Judiciário, considerando que as diretrizes estabelecidas em sede administrativa não podem ser consideradas orientações gerais.","A decisão administrativa que venha a estabelecer nova orientação que preveja novo condicionamento do Direito, deverá prever regime de transição para que a sociedade Bemquerer possa cumprir tal condicionamento ulterior de modo proporcional, equânime e eficiente e sem prejuízo aos interesses gerais."]'::jsonb,
'D',
'A LINDB (art. 23, incluído pela Lei nº 13.655/2018) determina que, quando nova interpretação ou orientação impuser novo dever ou condicionamento de direito, deve ser previsto REGIME DE TRANSIÇÃO para que o atingido possa cumpri-lo de modo proporcional, equânime e eficiente, sem prejuízo aos interesses gerais. Logo, a alternativa D está correta. A nova orientação não retroage para invalidar situações consolidadas de boa-fé (art. 24).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 34, 'Direito Administrativo',
'Em dezembro de 2024, Lucas, servidor celetista de empresa pública XYZ, permitiu, culposamente, que Matheus utilizasse veículos da estatal para serviços particulares, sem relação com a empresa. O MP deflagrou inquérito civil. Considerando a Lei nº 8.429/1992 (com a Lei nº 14.230/2021), assinale a afirmativa correta.',
'',
'',
'["Ele responderá por ato de improbidade administrativa, desde que se comprove a perda patrimonial efetiva em detrimento da empresa pública XYZ.","Ele não está sujeito aos regramentos da Lei de Improbidade Administrativa, por não se enquadrar como um servidor público estatutário.","Ele não poderá ser responsabilizado por ato de improbidade administrativa, já que não agiu de forma dolosa.","Ele será responsabilizado pela prática de ato de improbidade administrativa que importa enriquecimento ilícito."]'::jsonb,
'C',
'Após a Lei nº 14.230/2021, só há ato de improbidade administrativa na modalidade DOLOSA - a conduta meramente culposa deixou de configurar improbidade. Como Lucas agiu culposamente, não poderá ser responsabilizado por improbidade administrativa (alternativa C). O vínculo celetista com empresa pública não o exclui, em tese, do alcance da lei (afastando B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 35, 'Direito Ambiental',
'A sociedade Empreendedorix deseja construir um grande shopping center em área urbana do Município Delta, atividade que exige Estudo de Impacto Ambiental (EIA). O Município tem lei que exige, ainda, Estudo Prévio de Impacto de Vizinhança (EIV) para obtenção das licenças. Considerando os fatos, assinale a afirmativa correta.',
'',
'',
'["O EIV, diferentemente do EIA, não pode ser enquadrado como instrumento da Política Nacional do Meio Ambiente.","A realização do EIV não substitui a elaboração e a aprovação do EIA, requeridas nos termos da legislação ambiental.","O EIV será executado de forma a contemplar seus efeitos positivos, mas não precisa apontar os efeitos negativos do empreendimento, diante de seus objetivos legítimos.","Independentemente de previsão na lei municipal, o EIV seria necessário, considerando o grande empreendimento a ser realizado pela sociedade Empreendedorix."]'::jsonb,
'B',
'O Estudo de Impacto de Vizinhança (EIV), previsto no Estatuto da Cidade, NÃO substitui o Estudo de Impacto Ambiental (EIA) exigido pela legislação ambiental: são instrumentos distintos e complementares (art. 38 do Estatuto da Cidade). Logo, a elaboração do EIV não dispensa o EIA (alternativa B). O EIV deve contemplar tanto efeitos positivos quanto negativos (afastando C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 36, 'Direito Ambiental',
'A sociedade Aurora, por decisão de seus representantes legais, poluiu um rio em benefício próprio, conduta que ocasionou severos danos ambientais e caracteriza, ao mesmo tempo, ilícito penal, civil e administrativo. Considerando as normas de responsabilização da pessoa jurídica em matéria ambiental, assinale a afirmativa correta.',
'',
'',
'["A sociedade Aurora deve ser responsabilizada administrativa, civil e penalmente pela aludida conduta, nos termos da legislação de regência.","Eventual responsabilização penal da sociedade Aurora afasta a possibilidade de que ela seja responsabilizada nas esferas civil e administrativa.","Para que possa responder na esfera administrativa, é imprescindível a condenação penal da sociedade Aurora, o que não ocorre para fins de responsabilização civil.","Por se tratar de pessoa jurídica, a sociedade Aurora não pode ser responsabilizada na esfera penal, de modo que a sua responsabilização fica restrita às esferas civil e administrativa."]'::jsonb,
'A',
'A Constituição (art. 225, §3º) e a Lei nº 9.605/1998 admitem a responsabilização da pessoa jurídica nas três esferas - penal, civil e administrativa - de forma independente e cumulativa pelos danos ambientais. Logo, a sociedade Aurora pode responder nas três esferas simultaneamente (alternativa A). As esferas são independentes entre si (afastando B, C e D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO CIVIL (Questoes 37 a 42)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 37, 'Direito Civil',
'Gabriel e Vitória, pais de Ana (9) e Clara (7), faleceram em acidente aéreo. Os parentes mais próximos são os tios Rafael (42, irmão de Gabriel) e Júlia (38, irmã de Vitória). Em testamento, os pais nomearam como tutor das meninas Lucas, primo de Gabriel. Segundo o ordenamento jurídico brasileiro, assinale a afirmativa correta.',
'',
'',
'["Júlia deverá exercer a tutela das meninas, por estar no mesmo grau de parentesco que Rafael, e por ser mais nova que ele, além de ser parente mais próxima que Lucas.","Rafael deverá exercer a tutela das meninas, por estar no mesmo grau de parentesco que Júlia, e por ser mais velho que ela, além de ser parente mais próximo que Lucas.","Lucas não poderá exercer a tutela, porque somente os colaterais até o terceiro grau podem ser tutores.","Lucas deverá exercer a tutela, por ter sido nomeado pelos pais das meninas em testamento."]'::jsonb,
'D',
'A tutela TESTAMENTÁRIA, nomeada pelos pais em conjunto no exercício do poder familiar, tem prevalência sobre a tutela legítima (parentes). O art. 1.729 do Código Civil assegura aos pais o direito de nomear tutor por testamento ou documento autêntico. Logo, deve prevalecer a nomeação de Lucas (alternativa D), ainda que ele não seja o parente mais próximo.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 38, 'Direito Civil',
'A sociedade Calçados Novos Ltda., controladora de dados pessoais de clientes, tem dados cujo término do tratamento já ocorreu, mas pretende manter as informações históricas para fins exclusivamente estatísticos, sem identificar pessoalmente os titulares. Considerando o interesse do cliente (LGPD), assinale a afirmativa correta.',
'',
'',
'["A controladora é obrigada a eliminar os dados pessoais dos clientes cujo término do tratamento já ocorreu, em qualquer hipótese.","A controladora pode conservar os dados cujo término do tratamento já ocorreu, desde que ainda seja possível tratar os dados conforme a finalidade específica.","A controladora pode conservar os dados cujo término do tratamento já ocorreu, para seu uso exclusivo, vedado o acesso por terceiro, e desde que anonimizados os dados.","A controladora é obrigada a eliminar os dados pessoais dos clientes cujo término do tratamento já ocorreu, desde que desnecessários ao alcance da finalidade específica almejada."]'::jsonb,
'C',
'A LGPD (art. 16) determina a eliminação dos dados após o término do tratamento, mas RESSALVA hipóteses de conservação, entre elas o uso exclusivo do controlador para fins estatísticos, vedado o acesso por terceiro, DESDE QUE os dados sejam ANONIMIZADOS (art. 16, IV). Como a empresa quer manter dados históricos para estatística sem identificar os titulares, pode conservá-los anonimizados, vedado o acesso de terceiros (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 39, 'Direito Civil',
'Cláudia, devedora executada, para evitar a penhora do carro, celebrou contrato de compra e venda do veículo com Eduardo, amigo fraterno, indicando data anterior às dívidas. Combinaram que o contrato não produziria efeito algum - não houve pagamento do preço nem transferência da propriedade. Sobre o contrato celebrado, assinale a afirmativa correta.',
'',
'',
'["É anulável.","É válido, mas ineficaz.","É nulo, sem possibilidade de aproveitamento.","Pode ser convalidado, bastando que se desconsidere a data indicada e se considere a data em que ele efetivamente foi celebrado."]'::jsonb,
'C',
'Trata-se de SIMULAÇÃO (art. 167 do Código Civil): as partes celebraram negócio aparente, que não desejavam produzir efeitos, com data falsa, para prejudicar credores. O negócio jurídico simulado é NULO (não apenas anulável), não se admitindo convalidação. Logo, o contrato é nulo, sem possibilidade de aproveitamento (alternativa C). Observação: o CC permite aproveitar o que se dissimulou, se válido, mas no caso não há negócio dissimulado válido.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 40, 'Direito Civil',
'Do testamento de Natália constou: "lego o apartamento X para meus filhos Henrique e Carolina, os quais serão individualmente substituídos, se não puderem aceitar, pelo meu filho Carlos." Após a abertura, Henrique renunciou à sucessão testamentária, satisfazendo-se com a legítima. Assinale a opção que apresenta a orientação correta sobre a transmissão do apartamento X.',
'',
'',
'["Caberá à Carolina e a Carlos, por força da substituição prevista.","Ficará integralmente com Carolina, por conta do direito de acrescer.","Será dividido entre Henrique e Carolina, pois a renúncia não pode ser parcial.","Deverá ser integralmente entregue a Carlos, em razão da disposição conjuntiva."]'::jsonb,
'A',
'A testadora previu SUBSTITUIÇÃO: se um dos legatários (Henrique ou Carolina) não puder ou não quiser aceitar, será substituído por Carlos. Com a renúncia de Henrique, sua parte não acresce automaticamente a Carolina, mas passa ao substituto designado (Carlos). Assim, o apartamento caberá a Carolina (sua metade) e a Carlos (a metade de Henrique), por força da substituição prevista (alternativa A).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 41, 'Direito Civil',
'Beatriz nasceu duzentos e cinquenta dias após a morte do pai, Bernardo, com quem sua mãe, Gabriela, era casada há 2 anos. Ao registrar Beatriz, Leonardo, irmão de Bernardo, disse que não aceitaria o registro como filha de Bernardo sem exame de DNA. Assinale a afirmativa correta.',
'',
'',
'["Gabriela precisa realizar o exame de DNA para que possa registrar Beatriz, uma vez que é direito da família do falecido questionar a paternidade a este atribuída após a sua morte.","Gabriela precisa realizar o exame de DNA para que possa registrar Beatriz, uma vez que, nos termos do Código Civil, a paternidade não é presumida após a dissolução do vínculo conjugal.","Gabriela não precisa realizar o exame de DNA para que possa registrar Beatriz, uma vez que a criança nasceu após a morte de Bernardo e o direito para contestação da paternidade é personalíssimo.","Gabriela não precisa realizar o exame de DNA para que possa registrar Beatriz, uma vez que, nos termos do Código Civil, presumem-se concebidos na constância do casamento os filhos nascidos nos trezentos dias subsequentes à dissolução da sociedade conjugal por morte."]'::jsonb,
'D',
'O art. 1.597, II, do Código Civil presume concebidos na constância do casamento os filhos nascidos nos TREZENTOS dias subsequentes à dissolução da sociedade conjugal, inclusive por morte. Como Beatriz nasceu 250 dias após o falecimento de Bernardo (dentro dos 300 dias), aplica-se a presunção de paternidade, sem necessidade de exame de DNA para o registro (alternativa D).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 42, 'Direito Civil',
'Carlos é titular de direito real de laje (parte superior de uma edificação urbana). Uma empresa de internet negocia com o proprietário da construção-base a instalação de cabos de fibra ótica no subsolo da construção. A instalação não interfere no direito real de Carlos nem afeta o uso do bem. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["Carlos tem o direito de impedir a instalação dos cabos de fibra ótica, pois a utilização do subsolo da construção-base requer sua autorização expressa como titular do direito real de laje.","A empresa de internet pode instalar os cabos de fibra ótica no subsolo da construção-base sem a autorização de Carlos, pois a instalação não interfere em seu direito real de laje.","Carlos deve ser compensado financeiramente pela empresa de internet antes da instalação dos cabos no subsolo da construção-base, devido à titularidade de seu direito real de laje.","A instalação dos cabos de fibra ótica pela empresa de internet é ilegal e pode ser contestada por Carlos judicialmente, já que ele possui um direito real sobre a construção e não autorizou o uso do subsolo."]'::jsonb,
'B',
'O direito real de laje recai sobre unidade autônoma distinta (a parte sobreposta), sem conferir ao seu titular direitos sobre as demais partes da construção-base (art. 1.510-A do CC). A instalação no subsolo da construção-base, que não interfere no direito real de laje de Carlos nem no uso de sua unidade, independe de autorização dele. Logo, a empresa pode instalar os cabos sem autorização de Carlos (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- ESTATUTO DA CRIANCA E DO ADOLESCENTE (Questoes 43 a 44)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 43, 'Estatuto da Criança e do Adolescente',
'João, 17 anos, foi representado por ato infracional análogo a roubo (abordou transeuntes simulando estar armado e subtraiu celulares e carteiras). O Juízo da Infância julgou procedente o pedido e fixou medida socioeducativa de internação. O advogado deseja apelar. Com base no ECA, assinale a afirmativa correta.',
'',
'',
'["O sistema recursal adotado é o do Código de Processo Civil, sendo certo que o prazo será de 10 (dez) dias.","O sistema recursal adotado é o do Código de Processo Penal, sendo certo que o prazo será de 10 (dez) dias.","O sistema recursal adotado é o do Código de Processo Civil, sendo certo que o prazo será de 15 (quinze) dias.","O sistema recursal adotado é o do Código de Processo Penal, sendo certo que o prazo será de 5 (cinco) dias e, após isso, haverá o prazo de 8 (oito) dias para oferecimento das razões."]'::jsonb,
'A',
'O ECA (art. 198) adota o sistema recursal do CÓDIGO DE PROCESSO CIVIL, com adaptações. Entre as adaptações, os prazos recursais são UNIFORMIZADOS em 10 dias (art. 198, II). Assim, a apelação segue o sistema do CPC, mas com prazo de 10 dias (alternativa A).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 44, 'Estatuto da Criança e do Adolescente',
'Ricardo (13) é filho de Vanda, não registrado pelo pai biológico, criado desde cedo por João (50), marido de Vanda, como pai e filho. João ajuizou ação de adoção, com anuência de Vanda e Ricardo, reiterando a inequívoca vontade de adotar. Dois meses após a distribuição, João faleceu de ataque cardíaco. De acordo com o ECA, assinale a orientação correta.',
'',
'',
'["O processo de adoção deve prosseguir, mesmo com a morte de João. Nesse caso, se a sentença julgar procedente o pedido, seus efeitos retroagirão à data do óbito.","A adoção é direito personalíssimo. Logo, falecendo o autor do pedido, o único caminho jurídico é a extinção do processo.","A adoção só pode seguir se os herdeiros biológicos de João anuírem, já que possuem interesse direto na herança do finado.","O processo de adoção pode seguir, mesmo com a morte de João. Nessa hipótese, caso julgado procedente o pedido, os efeitos se produzem a partir do trânsito em julgado da sentença constitutiva."]'::jsonb,
'A',
'O ECA (art. 42, §6º) admite a ADOÇÃO PÓSTUMA quando o adotante, após manifestar inequívoca vontade de adotar, vem a falecer no curso do processo. Nesse caso, a sentença, se procedente, produz efeitos RETROATIVOS à data do óbito do adotante. Como João manifestou a vontade inequívoca e faleceu no curso da ação, o processo prossegue e a sentença retroagirá à data do óbito (alternativa A).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO DO CONSUMIDOR (Questoes 45 a 46)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 45, 'Direito do Consumidor',
'Joana, aposentada, contratou diversos empréstimos (cartões, lojas e consignados) em razão de grave problema de saúde e não consegue mais pagar as parcelas, que superam sua aposentadoria e comprometem despesas básicas. Com base no Código de Defesa do Consumidor, assinale a opção que apresenta o parecer correto.',
'',
'',
'["Joana pode requerer judicialmente a renegociação das dívidas contraídas para consumo pessoal, mas não dos empréstimos financeiros.","Joana pode requerer judicialmente a renegociação de suas dívidas, preservando o mínimo existencial, e buscar um plano de pagamento compatível com sua renda.","O deferimento do pedido judicial de renegociação das dívidas dependerá de Joana provar que as obrigações foram contraídas em razão do seu grave problema de saúde.","Joana é responsável por suas dívidas, inexistindo possibilidade de renegociação judicial, pois as obrigações contratuais devem ser cumpridas independentemente das dificuldades financeiras."]'::jsonb,
'B',
'A Lei do Superendividamento (Lei nº 14.181/2021), que alterou o CDC, assegura ao consumidor superendividado de boa-fé o direito à repactuação de dívidas em juízo, com plano de pagamento compatível com sua renda e PRESERVAÇÃO DO MÍNIMO EXISTENCIAL. Logo, Joana pode requerer judicialmente a renegociação, preservando o mínimo existencial (alternativa B).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 46, 'Direito do Consumidor',
'A sociedade VittaBem Alimentos Ltda. lançou sucos "sem conservantes", mas o Ministério da Saúde constatou substâncias artificiais acima do permitido pela Anvisa, com risco à saúde. Uma associação de defesa do consumidor ajuizou ação civil pública pedindo a retirada dos produtos e danos morais coletivos. A empresa alegou inaplicabilidade do CDC e ausência de dano individual. Com base no CDC, assinale a afirmativa correta.',
'',
'',
'["A coletividade de pessoas, ainda que indetermináveis, equipara-se a consumidor, podendo ser tutelada judicialmente por meio de Ação Civil Pública.","A Ação Civil Pública é incabível, pois somente o consumidor individual e identificado possui legitimidade para pleitear indenização por danos oriundos da relação de consumo.","O conceito de consumidor por equiparação exige que a coletividade seja determinada e tenha comprovadamente adquirido o produto para ser considerada consumidora.","Apenas os consumidores que efetivamente adquiriram e consumiram o produto possuem legitimidade para buscar reparação por danos, ainda que representados por associação."]'::jsonb,
'A',
'O CDC (art. 2º, parágrafo único) equipara a consumidor a coletividade de pessoas, ainda que INDETERMINÁVEIS, que haja intervindo nas relações de consumo. A tutela de interesses difusos e coletivos (como danos morais coletivos) é cabível por ação civil pública, ajuizada por legitimados como as associações. Logo, a alternativa A está correta.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

-- ============================================================
-- DIREITO EMPRESARIAL (Questoes 47 a 50)
-- ============================================================

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 47, 'Direito Empresarial',
'No contrato de sociedade em conta de participação firmado entre o sócio ostensivo e quatro sócios participantes não há cláusula dispondo sobre a admissão de novos sócios. Diante da omissão, assinale a afirmativa correta.',
'',
'',
'["É defeso ao sócio ostensivo admitir novo sócio sem o consentimento expresso ou tácito dos demais sócios, sendo tácito o consentimento se eles não se opuserem nos trinta dias seguintes ao ingresso do novo sócio.","O sócio ostensivo pode admitir novo sócio com ou sem o consentimento dos demais sócios em razão de sua responsabilidade ilimitada e pessoal pelo exercício da atividade constitutiva do objeto social.","É defeso ao sócio ostensivo admitir novo sócio sem o consentimento expresso dos demais sócios.","O sócio ostensivo pode admitir novo sócio com o consentimento da maioria dos demais sócios; havendo empate, cabe a ele o voto de qualidade."]'::jsonb,
'C',
'O Código Civil (art. 995) dispõe que, salvo estipulação em contrário, o sócio ostensivo NÃO pode admitir novo sócio sem o consentimento EXPRESSO dos demais. Diante da omissão do contrato, prevalece a regra legal: é defeso admitir novo sócio sem o consentimento expresso dos demais sócios (alternativa C).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 48, 'Direito Empresarial',
'Santa Aceguá, administradora e sócia da Mercearia Cerro Branco Ltda., consulta sobre os efeitos que a falência de um de seus devedores, o empresário Júlio Cidreira, terá em relação ao seu crédito. Assinale a opção que apresenta a orientação correta.',
'',
'',
'["A falência opera a novação dos créditos quirografários existentes na data da decretação, que serão pagos até o limite de 25% (vinte e cinco por cento) de seu valor, exceto se o ativo apurado for superior para garantir o pagamento integral a outras classes de credores.","A falência produz o vencimento antecipado das dívidas do falido, com o abatimento proporcional dos juros, e converte todos os créditos em moeda estrangeira para a moeda do País, pelo câmbio do dia da decisão judicial.","A falência determina a suspensão da prescrição a partir da data da decretação a falência, sendo retomado o curso do prazo a partir da data do trânsito em julgado da sentença de encerramento.","A falência acarreta a suspensão das execuções pelo prazo de 180 (cento e oitenta) dias, contado da data da decretação, prorrogável uma única vez por igual prazo."]'::jsonb,
'B',
'A Lei nº 11.101/2005 (art. 77) estabelece que a decretação da falência determina o VENCIMENTO ANTECIPADO das dívidas do devedor e dos sócios ilimitada e solidariamente responsáveis, com o abatimento proporcional dos juros, e converte todos os créditos em moeda estrangeira para a moeda nacional pelo câmbio do dia da decisão judicial. Logo, a alternativa B está correta.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 49, 'Direito Empresarial',
'Francisco Morato tem domicílio em Cidade Ocidental/GO e pretende ser empresário individual em Brasília/DF, com planos de abrir filiais em Unaí/MG e Natividade/TO. Conforme o Código Civil, Francisco deverá realizar sua inscrição como empresário na Junta Comercial do',
'',
'',
'["Estado de Goiás, tendo como referência a cidade do seu domicílo, Cidade Ocidental, e, com relação às filiais, nas Juntas Comerciais dos Estados de Minas Gerais e do Tocantins, sem necessidade de averbação da constituição das filiais na Junta Comercial do Estado de Goiás.","Distrito Federal, tendo como referência a sede da sociedade empresária, Brasília, e, com relação às filiais, nas Juntas Comerciais dos Estados de Minas Gerais e do Tocantins, com averbação da constituição das filiais na Junta Comercial do Distrito Federal.","Estado de Goiás, tendo como referência a cidade do seu domicílo, Cidade Ocidental, e, com relação às filiais, na mesma Junta Comercial, por ser o lugar do seu domicílio.","Distrito Federal, tendo como referência a sede da sociedade empresária, Brasília, e, com relação às filiais, na mesma Junta Comercial por ser o lugar da sede."]'::jsonb,
'B',
'A inscrição do empresário se faz na Junta Comercial da respectiva SEDE (local do estabelecimento principal/exercício da atividade), que é Brasília/DF - e não o domicílio pessoal. Quanto às filiais em outra unidade federativa, inscrevem-se nas Juntas dos respectivos Estados (MG e TO), com averbação na Junta da sede (DF), nos termos do art. 969 do Código Civil. Logo, a alternativa B está correta.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 50, 'Direito Empresarial',
'Nísia Parnamirim realizou sua inscrição como microempreendedora individual (MEI) e consultou sobre o tratamento que lhe é dispensado pela Lei Complementar nº 123/2006 (Lei do Simples Nacional). Assinale a opção que apresenta a resposta correta.',
'',
'',
'["Nísia Parnamirim poderá utilizar sua residência como sede do estabelecimento, quando não for indispensável a existência de local próprio para o exercício da atividade.","Nísia Parnamirim poderá manter sua condição de microempreendedora individual desde que a receita bruta auferida no ano-calendário anterior seja de até R$ 60.000,00 (sessenta mil reais).","Caso Nísia Parnamirim queira alienar seu estabelecimento, a eficácia do ato em relação a terceiros depende da averbação do contrato no Registro Público de Empresas Mercantis e de sua publicação na imprensa oficial.","A comprovação da receita bruta anual por parte de Nísia Parnamirim será feita mediante escrituração do Livro Caixa e apresentação do registro de vendas ou de prestação de serviços."]'::jsonb,
'A',
'A LC nº 123/2006 (art. 18-A, §19) assegura ao microempreendedor individual e à microempresa a possibilidade de utilizar a própria RESIDÊNCIA como sede do estabelecimento, quando não for indispensável a existência de local próprio para o exercício da atividade. Logo, a alternativa A está correta. O limite de receita do MEI é superior a R$ 60.000,00 (afastando B), e a comprovação de receita é feita de forma simplificada.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 51, 'Direito Processual Civil',
'Ricardo ajuizou execução de título extrajudicial em face de Isabela, que opôs embargos à execução. Julgados improcedentes os embargos, Isabela interpôs apelação. O relator, monocraticamente, negou provimento ao recurso. Inconformada, Isabela pretende impugnar essa decisão. Assinale a opção que indica o recurso cabível.',
'',
'',
'["Recurso especial, dirigido ao Superior Tribunal de Justiça.","Embargos de declaração, por ser a decisão omissa quanto ao mérito.","Agravo interno, a ser julgado pelo órgão colegiado competente.","Recurso extraordinário, dirigido ao Supremo Tribunal Federal."]'::jsonb,
'C',
'Da decisão monocrática do relator que nega provimento a recurso cabe agravo interno, no prazo de 15 dias, dirigido ao órgão colegiado competente do tribunal (art. 1.021 do CPC). É o recurso adequado para levar a matéria decidida singularmente à apreciação do colegiado da Câmara.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 52, 'Direito Processual Civil',
'João, advogado, atuou em regime de plantão judiciário e protocolou pedido de tutela antecipada em caráter antecedente em favor de Thiago, mas sem procuração nos autos. Posteriormente, a irmã de Thiago, também advogada, apresentou procuração com poderes gerais para o foro em favor de João. Com base nas regras sobre poderes conferidos ao advogado, assinale a afirmativa correta.',
'',
'',
'["A procuração geral para o foro autoriza João a receber citação em nome de Thiago, independentemente de cláusula específica.","A procuração geral para o foro habilita João a confessar e a reconhecer a procedência do pedido, por serem atos ordinários do processo.","A procuração conferida por terceiro, ainda que advogada, é nula, pois somente a própria parte pode outorgar poderes ao advogado.","A procuração geral para o foro habilita João à prática de todos os atos do processo, exceto receber citação, confessar, reconhecer a procedência do pedido, transigir, desistir, renunciar ao direito, firmar compromisso e receber e dar quitação, que exigem poderes específicos."]'::jsonb,
'D',
'Nos termos do art. 105 do CPC, a procuração geral para o foro habilita o advogado a praticar todos os atos do processo, salvo os que exigem poderes especiais: receber citação, confessar, reconhecer a procedência do pedido, transigir, desistir, renunciar ao direito sobre o qual se funda a ação, receber, dar quitação, firmar compromisso e assinar declaração de hipossuficiência econômica.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 53, 'Direito Processual Civil',
'Murilo promoveu execução de título extrajudicial em face de Marília. Pretendendo a penhora de valores depositados em contas bancárias da executada, requereu ao juízo a adoção de medida eletrônica para constrição desses ativos financeiros. Sobre o procedimento, assinale a afirmativa correta.',
'',
'',
'["A penhora de dinheiro em depósito ou em aplicação financeira pode ser realizada por meio eletrônico, com indisponibilidade dos ativos, sem dar ciência prévia do ato à executada.","A constrição eletrônica de ativos financeiros exige a prévia intimação da executada para que, querendo, se manifeste sobre a medida, sob pena de nulidade.","A penhora de ativos financeiros por meio eletrônico somente é admitida após o esgotamento de todas as demais formas de penhora previstas em lei.","A medida é vedada no processo de execução de título extrajudicial, sendo cabível apenas na fase de cumprimento de sentença."]'::jsonb,
'A',
'Nos termos do art. 854 do CPC, para possibilitar a penhora de dinheiro em depósito ou aplicação financeira, o juiz, a requerimento do exequente, sem dar ciência prévia do ato ao executado, determinará às instituições financeiras, por meio eletrônico, que tornem indisponíveis ativos financeiros em nome do executado. O contraditório é diferido, exercido somente após a efetivação da constrição.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 54, 'Direito Processual Civil',
'Juliana ajuizou ação de divórcio cumulada com guarda de seu filho, de 6 anos de idade, em face de André. Considerando as regras sobre publicidade dos atos processuais, assinale a afirmativa correta.',
'',
'',
'["O processo tramitará em segredo de justiça, por versar sobre casamento, divórcio e guarda de criança.","O processo será público, pois o segredo de justiça somente se aplica a processos criminais.","O segredo de justiça depende de requerimento expresso das partes, não podendo ser determinado de ofício pelo juiz.","O processo será público, mas as audiências serão realizadas a portas fechadas, mantida a publicidade dos autos."]'::jsonb,
'A',
'Nos termos do art. 189, II, do CPC, tramitam em segredo de justiça os processos que versem sobre casamento, separação de corpos, divórcio, união estável, filiação, alimentos e guarda de crianças e adolescentes. Trata-se de determinação legal, independentemente de requerimento das partes.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 55, 'Direito Processual Civil',
'Débora, servidora pública municipal, obteve sentença transitada em julgado condenando a Fazenda Pública Municipal ao pagamento de quantia certa. Pretende dar início ao cumprimento de sentença. Assinale a opção que indica o procedimento correto.',
'',
'',
'["Deve propor ação autônoma de execução, instruída com o título judicial, citando-se o Município para pagar em 3 dias.","Deve requerer o cumprimento de sentença mediante petição com demonstrativo discriminado e atualizado do crédito, intimando-se o Município para, querendo, impugnar nos próprios autos no prazo de 30 dias.","Deve aguardar a inscrição do crédito em precatório, independentemente de qualquer requerimento, pois o pagamento ocorrerá automaticamente.","Deve requerer a penhora de bens do Município até o limite do crédito, por se tratar de obrigação de pagar quantia certa."]'::jsonb,
'B',
'No cumprimento de sentença que impõe à Fazenda Pública o dever de pagar quantia certa, o exequente apresenta petição com demonstrativo discriminado e atualizado do crédito (art. 534 do CPC) e a Fazenda é intimada para, querendo, impugnar a execução nos próprios autos, no prazo de 30 dias (art. 535 do CPC). Não há penhora de bens públicos, e o pagamento se dá por precatório ou RPV após o trânsito.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 56, 'Direito Processual Civil',
'Pedro ajuizou ação de consignação em pagamento de aluguéis em face de Ana, que havia recusado o recebimento dos valores. Regularmente citada, Ana não contestou a demanda. Diante da revelia, assinale a afirmativa correta.',
'',
'',
'["O processo deve ser extinto sem resolução do mérito, por falta de interesse processual, uma vez que Ana não resistiu à pretensão.","O juiz deve designar audiência de conciliação, por se tratar de direito disponível, antes de proferir sentença.","O juiz deve converter o procedimento em cobrança, condenando Ana a pagar os aluguéis a Pedro.","O pedido deve ser julgado procedente, declarando-se extinta a obrigação, e Ana será condenada ao pagamento das custas e dos honorários advocatícios."]'::jsonb,
'D',
'Na ação de consignação em pagamento, não oferecida a contestação e ocorrendo os efeitos da revelia, o juiz julga procedente o pedido, declara extinta a obrigação e condena o réu ao pagamento das custas e honorários advocatícios (art. 546 do CPC). O depósito liberatório extingue a dívida.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 57, 'Direito Penal',
'Matheus, aproveitando-se da aglomeração em um transporte coletivo, passou a acariciar as nádegas de Laís, sem a sua anuência, com o objetivo de satisfazer sua própria lascívia, sem emprego de violência ou grave ameaça e sem a intenção de ter conjunção carnal. Assinale a opção que indica o crime praticado por Matheus.',
'',
'',
'["Estupro.","Assédio sexual.","Ato obsceno.","Importunação sexual."]'::jsonb,
'D',
'A conduta de praticar contra alguém e sem a sua anuência ato libidinoso com o objetivo de satisfazer a própria lascívia ou a de terceiro, sem violência ou grave ameaça, configura o crime de importunação sexual (art. 215-A do Código Penal), incluído pela Lei nº 13.718/2018.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 58, 'Direito Penal',
'Saulo foi chamado de "burro" e "idiota", em momentos distintos, por João, Paulo e Sérgio. Saulo ofereceu queixa-crime em face dos três. Antes da sentença, Saulo e Sérgio se reconciliaram, tendo Saulo expressamente perdoado apenas Sérgio, nada manifestando em relação a João e Paulo. Sobre a situação narrada, assinale a afirmativa correta.',
'',
'',
'["O perdão concedido a Sérgio não produz qualquer efeito em relação a João e Paulo, prosseguindo a ação penal quanto a estes.","O perdão é causa de extinção da punibilidade apenas se aceito pelo querelado, de modo que, não havendo manifestação de João e Paulo, a ação prossegue quanto a todos.","A ação penal deve prosseguir quanto a Sérgio, pois o perdão extrajudicial não produz efeitos na ação penal privada.","O perdão concedido a um dos querelados a todos aproveita, de modo que, aceito o perdão, a punibilidade se estende também a João e Paulo, salvo recusa."]'::jsonb,
'D',
'Na ação penal privada, o perdão concedido a um dos querelados aproveita a todos (art. 51 do CPP), sem que produza, todavia, efeito em relação ao que o recusar. Assim, o perdão oferecido a Sérgio estende-se a João e Paulo, extinguindo a punibilidade quanto a eles, salvo se houver recusa expressa.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 59, 'Direito Penal',
'Thiago, com 21 anos de idade, praticou um furto em concurso com Vinicius, de 17 anos. Thiago somente tomou conhecimento da menoridade de Vinicius após a prática do crime. Vinicius, antes do fato, já havia sido apreendido pela prática de atos infracionais. Sobre a eventual configuração do crime de corrupção de menores, assinale a afirmativa correta.',
'',
'',
'["Configura-se o crime de corrupção de menores, por se tratar de delito de perigo que independe da efetiva corrupção do adolescente.","Não se configura o crime de corrupção de menores, pois Thiago, por erro de tipo quanto à idade de Vinicius, não tinha conhecimento de que atuava com um menor de 18 anos, devendo responder apenas pelo furto qualificado.","Configura-se o crime de corrupção de menores, pois Thiago deveria ter se certificado da idade do comparsa.","Não se configura o crime de corrupção de menores, pois Vinicius já havia sido anteriormente apreendido, o que descaracteriza a corrupção."]'::jsonb,
'B',
'O crime de corrupção de menores (art. 244-B do ECA) exige dolo, isto é, o conhecimento de que o comparsa é menor de 18 anos. Como Thiago desconhecia a menoridade de Vinicius ao tempo do fato, há erro de tipo quanto a elementar (art. 20 do CP), que exclui o dolo e afasta a tipicidade da corrupção de menores. Thiago responde pelo furto praticado em concurso (furto qualificado).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 60, 'Direito Penal',
'Marisa, após o falecimento de sua mãe, continuou a sacar os valores da pensão por morte dela nos meses de janeiro a março de 2023, apropriando-se indevidamente das quantias. Em outubro de 2023, antes do recebimento da denúncia, Marisa, por ato voluntário, pagou integralmente o débito de forma parcelada, quitando-o em janeiro de 2024. A denúncia foi recebida em fevereiro de 2024. Sobre o instituto aplicável, assinale a afirmativa correta.',
'',
'',
'["Trata-se de arrependimento eficaz, pois Marisa impediu a produção do resultado após iniciada a execução.","Trata-se de desistência voluntária, pois Marisa deixou de prosseguir na execução do crime por ato voluntário.","Trata-se de arrependimento posterior, causa de diminuição de pena, pois houve reparação do dano, por ato voluntário, antes do recebimento da denúncia.","Trata-se de causa extintiva da punibilidade, pois o pagamento integral do débito, mesmo após o recebimento da denúncia, extingue a punibilidade."]'::jsonb,
'C',
'A reparação do dano ou a restituição da coisa, por ato voluntário do agente, até o recebimento da denúncia ou queixa, nos crimes cometidos sem violência ou grave ameaça à pessoa, configura arrependimento posterior (art. 16 do CP), causa de diminuição de pena de um a dois terços. O crime já se consumara, afastando desistência voluntária e arrependimento eficaz.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 61, 'Direito Penal',
'Pierre, de nacionalidade estrangeira, estando em território brasileiro, matou Bruna, brasileira, e, em seguida, fugiu do país. Considerando as regras de aplicação da lei penal no espaço, assinale a afirmativa correta.',
'',
'',
'["A lei penal brasileira não se aplica, pois o autor do crime é estrangeiro.","A lei penal brasileira somente se aplica se a conduta também for crime no país de origem de Pierre.","A lei penal brasileira somente se aplica se Pierre for extraditado e julgado no Brasil, com autorização do país estrangeiro.","A lei penal brasileira é aplicável ao fato, por força do princípio da territorialidade, uma vez que o crime foi cometido em território nacional, independentemente da nacionalidade do agente."]'::jsonb,
'D',
'Pelo princípio da territorialidade (art. 5º do CP), aplica-se a lei brasileira, sem prejuízo de convenções, tratados e regras de direito internacional, ao crime cometido no território nacional. A nacionalidade do agente é irrelevante, não se exigindo que a conduta seja crime no país de origem.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 62, 'Direito Penal',
'Hermes, com 65 anos de idade, disparou arma de fogo atingindo o pescoço de Aquiles, pessoa sexagenária, com a intenção de matá-lo. Hermes dispunha de 18 munições e poderia prosseguir nos disparos, mas, voluntariamente, cessou a agressão e prestou socorro à vítima. Aquiles, submetido a cirurgia, correu risco de vida, mas sobreviveu, sem sequelas, recuperando-se em cerca de uma semana. Sobre a responsabilização penal de Hermes, assinale a afirmativa correta.',
'',
'',
'["Hermes responde por tentativa de homicídio, pois iniciou a execução do crime que não se consumou por circunstâncias alheias à sua vontade.","Hermes responde por homicídio consumado, pois a vítima correu risco de vida.","Em razão da desistência voluntária, Hermes responde apenas pelos atos já praticados, isto é, por lesão corporal de natureza grave, em razão do perigo de vida gerado à vítima.","Hermes não responde por crime algum, pois a desistência voluntária, aliada à ausência de sequelas, exclui a tipicidade da conduta."]'::jsonb,
'C',
'Houve desistência voluntária (art. 15 do CP): o agente, podendo prosseguir, voluntariamente cessou a execução. Nesse caso, não responde pela tentativa de homicídio, mas apenas pelos atos já praticados. O disparo no pescoço gerou perigo de vida à vítima, caracterizando lesão corporal de natureza grave (art. 129, § 1º, II, do CP).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 63, 'Direito Processual Penal',
'Augusto ofereceu queixa-crime em face de Breno pela prática do crime de injúria. O juiz, ao receber os autos, rejeitou a queixa-crime. Inconformado, Augusto pretende impugnar a decisão. Assinale a opção que indica o recurso cabível.',
'',
'',
'["Recurso em sentido estrito.","Apelação.","Agravo em execução.","Carta testemunhável."]'::jsonb,
'B',
'Da decisão que rejeita a queixa-crime ou a denúncia cabe recurso em sentido estrito, nos termos do art. 581, I, do CPP. Entretanto, conforme o gabarito oficial, o recurso indicado para a hipótese é a apelação (art. 593 do CPP), adotada como resposta correta pela banca para a impugnação da decisão que rejeitou a queixa-crime de injúria.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 64, 'Direito Processual Penal',
'Cauã agrediu fisicamente Mayara, sua companheira, com quem mantém relação íntima de afeto, causando-lhe lesão corporal de natureza leve. Ambos são indígenas integrados. Sobre a natureza da ação penal e a competência, assinale a afirmativa correta.',
'',
'',
'["A ação penal é pública condicionada à representação da ofendida, por se tratar de lesão corporal leve.","A ação penal é privada, cabendo exclusivamente à ofendida o oferecimento de queixa-crime.","A ação penal é pública condicionada, e a competência é do Juizado Especial Criminal, por se tratar de infração de menor potencial ofensivo.","A ação penal é pública incondicionada, e a competência é do Juizado de Violência Doméstica e Familiar contra a Mulher ou, na sua ausência, da vara criminal."]'::jsonb,
'D',
'Nos casos de violência doméstica e familiar contra a mulher, a ação penal relativa ao crime de lesão corporal, ainda que leve, é pública incondicionada (Súmula 542 do STJ), não se aplicando a Lei nº 9.099/95 (art. 41 da Lei Maria da Penha). A competência é dos Juizados de Violência Doméstica e Familiar contra a Mulher ou, na ausência destes, das varas criminais.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 65, 'Direito Processual Penal',
'Peterson teve decretada contra si prisão temporária pelo prazo de 30 dias, em razão da suposta prática do crime de homicídio culposo na direção de veículo automotor (Art. 302 do Código de Trânsito Brasileiro). Como advogado(a) de Peterson, assinale a providência correta.',
'',
'',
'["Aguardar o decurso do prazo da prisão temporária, pois a medida foi legalmente decretada.","Requerer a conversão da prisão temporária em prisão preventiva, por ser mais benéfica.","Requerer o relaxamento imediato da prisão, pois o crime imputado não está entre aqueles que autorizam a decretação de prisão temporária.","Requerer a prorrogação do prazo da prisão temporária para a conclusão das investigações."]'::jsonb,
'C',
'A prisão temporária somente é cabível nos crimes expressamente arrolados no art. 1º, III, da Lei nº 7.960/89. O homicídio culposo na direção de veículo automotor (art. 302 do CTB) não consta desse rol taxativo. Decretada a prisão fora das hipóteses legais, trata-se de prisão ilegal, cabendo o pedido de relaxamento imediato (art. 5º, LXV, da CF).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 66, 'Direito Processual Penal',
'André foi denunciado pela prática do crime de furto qualificado pelo rompimento de obstáculo. O rompimento do obstáculo deixou vestígios. Entretanto, não foi realizado exame pericial, nem supletivamente foi admitida prova testemunhal, não havendo justificativa para a ausência do exame. Como advogado(a) de André, assinale a tese defensiva correta.',
'',
'',
'["Requerer a absolvição, uma vez que a ausência de perícia acarreta a nulidade de todo o processo.","Requerer o afastamento da qualificadora do rompimento de obstáculo, por ausência de exame de corpo de delito, desclassificando a conduta para furto simples.","Requerer a extinção da punibilidade, pois o furto qualificado exige, obrigatoriamente, a prisão em flagrante.","Nada requerer quanto à qualificadora, pois a confissão supre a ausência de perícia."]'::jsonb,
'B',
'Quando a infração deixa vestígios, é indispensável o exame de corpo de delito, direto ou indireto, não podendo supri-lo a confissão do acusado (art. 158 do CPP). A ausência injustificada de perícia para comprovar o rompimento do obstáculo impede o reconhecimento da qualificadora, impondo o seu afastamento e a desclassificação para furto simples.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 67, 'Direito Processual Penal',
'Samuel responde a processo pela prática de furto. O juiz titular da vara conduziu toda a instrução criminal, colhendo a prova oral em audiência. Posteriormente, afastou-se por 2 dias para participar de um curso de aperfeiçoamento, período em que o juiz substituto proferiu a sentença condenatória. Como advogado(a) de Samuel, assinale a tese correta.',
'',
'',
'["Nada há a arguir, pois o juiz substituto possui plena competência para sentenciar em caso de afastamento do titular.","Deve-se arguir a violação ao princípio da identidade física do juiz, por ter a sentença sido proferida por juiz que não concluiu a instrução, configurando nulidade.","Deve-se requerer a absolvição sumária, pois o afastamento do juiz titular acarreta a extinção da punibilidade.","Deve-se requerer a suspensão do processo até o retorno do juiz titular, sob pena de nulidade absoluta e insanável."]'::jsonb,
'A',
'Embora o art. 399, § 2º, do CPP consagre o princípio da identidade física do juiz, a jurisprudência admite, por aplicação subsidiária das regras processuais civis, que, nas hipóteses de afastamento, convocação, licença ou outro motivo legítimo, o juiz substituto profira a sentença. Conforme o gabarito oficial, a providência correta é não arguir nulidade, pois o juiz substituto tem competência para sentenciar diante do afastamento do titular.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 68, 'Direito Processual Penal',
'Flávio foi preso em flagrante pela suposta prática do crime de roubo. Uma testemunha de defesa afirma que, no momento do crime, Flávio estava trabalhando na loja situada em frente ao local dos fatos, estabelecimento que possui câmeras de segurança cujas imagens poderiam comprovar o álibi. Como advogado(a) de Flávio, assinale a providência mais adequada.',
'',
'',
'["Requerer o arquivamento do inquérito, pois a palavra da testemunha de defesa é suficiente para afastar a autoria.","Requerer a realização de diligências, com a expedição de ofício à loja para que forneça as imagens das câmeras de segurança referentes ao dia e horário dos fatos.","Requerer a nulidade da prisão em flagrante, por ausência de materialidade delitiva.","Requerer a conversão do flagrante em prisão domiciliar, até a obtenção das imagens."]'::jsonb,
'B',
'A providência mais adequada é requerer a realização de diligências probatórias (art. 14 do CPP), com a expedição de ofício ao estabelecimento para que forneça as imagens de segurança do dia e horário dos fatos, prova apta a comprovar o álibi e demonstrar que Flávio não estava no local do crime.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 69, 'Direito Previdenciário',
'Manoel, mecânico, sofreu acidente e passou a receber benefício por incapacidade temporária por cerca de 2 anos. Encaminhado à reabilitação profissional, necessita de prótese e de sessões de fisioterapia, bem como de deslocamento para o centro de reabilitação. Sobre o programa de reabilitação profissional, assinale a afirmativa correta.',
'',
'',
'["A reabilitação profissional abrange o fornecimento de aparelho de prótese, órtese e instrumentos de auxílio, bem como o transporte do acidentado do trabalho, quando necessário.","A reabilitação profissional não inclui o fornecimento de prótese, por se tratar de atribuição exclusiva do Sistema Único de Saúde.","A reabilitação profissional é facultativa e depende do pagamento de contribuição adicional pelo segurado.","A reabilitação profissional não compreende o custeio de transporte, cabendo ao segurado arcar com os seus deslocamentos."]'::jsonb,
'A',
'A assistência (re)educativa e de (re)adaptação profissional compreende, nos termos da legislação previdenciária, o fornecimento de aparelho de prótese, órtese e instrumentos de auxílio para locomoção, bem como o transporte do acidentado do trabalho, quando necessário (art. 89 e seguintes da Lei nº 8.213/91 e art. 137 do Decreto nº 3.048/99).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 70, 'Direito Previdenciário',
'Humberto Alves, eletricista, trabalha por conta própria, prestando serviços a diversas pessoas físicas, sem vínculo empregatício e sem relação de emprego permanente com qualquer delas. Sobre o seu enquadramento perante o Regime Geral de Previdência Social (RGPS), assinale a afirmativa correta.',
'',
'',
'["Humberto é segurado obrigatório do RGPS, na qualidade de contribuinte individual.","Humberto é segurado facultativo do RGPS, pois não possui vínculo empregatício.","Humberto é segurado obrigatório do RGPS, na qualidade de empregado.","Humberto não pode se filiar ao RGPS, por não possuir empregador."]'::jsonb,
'A',
'Aquele que presta serviço de natureza urbana ou rural, em caráter eventual, a uma ou mais empresas, sem relação de emprego, bem como quem trabalha por conta própria, é segurado obrigatório do RGPS na condição de contribuinte individual (art. 11, V, da Lei nº 8.213/91). O eletricista autônomo que presta serviços a pessoas físicas enquadra-se nessa categoria.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 71, 'Direito do Trabalho',
'Guilherme, engenheiro, não gozou integralmente seus 30 dias de férias nos últimos 4 anos e, em 2024, pretende fracionar o período de férias a que tem direito. Sobre o fracionamento das férias, assinale a afirmativa correta.',
'',
'',
'["O fracionamento das férias é vedado, devendo o período de 30 dias ser concedido de uma só vez.","As férias somente podem ser fracionadas em 2 períodos, nenhum deles inferior a 10 dias.","O fracionamento das férias depende exclusivamente da vontade do empregador, independentemente da concordância do empregado.","Havendo concordância do empregado, as férias poderão ser usufruídas em até 3 períodos, sendo que um deles não poderá ser inferior a 14 dias corridos e os demais não poderão ser inferiores a 5 dias corridos, cada um."]'::jsonb,
'D',
'Nos termos do art. 134, § 1º, da CLT, desde que haja concordância do empregado, as férias poderão ser usufruídas em até 3 períodos, sendo que um deles não poderá ser inferior a 14 dias corridos e os demais não poderão ser inferiores a 5 dias corridos, cada um.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 72, 'Direito do Trabalho',
'Pedro é caixa de uma instituição bancária, com jornada contratual das 10h às 16h, com 15 minutos de intervalo. Na prática, porém, passou a trabalhar das 10h às 18h, sem a ampliação do intervalo. Sobre a situação, assinale a afirmativa correta.',
'',
'',
'["Pedro não tem direito a qualquer verba, pois o intervalo de 15 minutos é compatível com a jornada praticada.","Pedro tem direito apenas às horas extras excedentes à 6ª hora diária, nada sendo devido quanto ao intervalo.","Pedro tem direito a receber, de natureza indenizatória, o período de 45 minutos de intervalo não concedido, com acréscimo de 50% sobre o valor da remuneração da hora normal de trabalho.","Pedro tem direito à conversão do contrato em jornada de 8 horas, com o intervalo mínimo de 1 hora, sem qualquer indenização."]'::jsonb,
'C',
'A jornada superior a 6 horas exige intervalo mínimo de 1 hora (art. 71 da CLT). Como a jornada passou a exceder 6 horas sem a ampliação do intervalo de 15 para 60 minutos, a não concessão (total ou parcial) do intervalo intrajornada implica o pagamento, de natureza indenizatória, apenas do período suprimido (45 minutos), com acréscimo de 50% sobre o valor da hora normal (art. 71, § 4º, da CLT).'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 73, 'Direito do Trabalho',
'Eduarda, empregada, sofreu aborto espontâneo, não criminoso, na 6ª semana de gestação, devidamente comprovado por atestado médico. Sobre os seus direitos, assinale a afirmativa correta.',
'',
'',
'["Eduarda terá direito à licença-maternidade de 120 dias, independentemente do tempo de gestação.","Em caso de aborto não criminoso, comprovado por atestado médico, a empregada terá direito a um repouso remunerado de 2 semanas.","Eduarda não terá direito a qualquer afastamento remunerado, pois o aborto ocorreu antes da 20ª semana de gestação.","Eduarda terá direito a um repouso remunerado de 4 semanas, com garantia de estabilidade provisória."]'::jsonb,
'B',
'Nos termos do art. 395 da CLT, em caso de aborto não criminoso, comprovado por atestado médico oficial, a mulher terá direito a um repouso remunerado de 2 semanas, ficando-lhe assegurado o direito de retornar à função que ocupava antes de seu afastamento.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 74, 'Direito do Trabalho',
'Giovana encontra-se afastada do trabalho, recebendo auxílio por incapacidade temporária (auxílio-doença), há 6 anos. Ela procura um(a) advogado(a) para reivindicar horas extras supostamente devidas e não pagas, relativas ao mês imediatamente anterior ao início do benefício. Sobre a orientação a ser dada, assinale a afirmativa correta.',
'',
'',
'["É aconselhável o imediato ajuizamento da reclamação, pois, enquanto o contrato de trabalho estiver suspenso em razão do benefício por incapacidade, não corre o prazo prescricional quanto às parcelas anteriores ao afastamento.","É desaconselhável o ajuizamento, pois, apesar da suspensão do contrato de trabalho, a prescrição continua a correr e, decorridos mais de 5 anos, estará consumada a prescrição quanto às parcelas pretendidas.","É irrelevante o ajuizamento, pois as horas extras são imprescritíveis.","É aconselhável aguardar a cessação do benefício para somente então ajuizar a ação, pois somente após o retorno ao trabalho é que surge o interesse de agir."]'::jsonb,
'A',
'Conforme o gabarito oficial, enquanto perdura a suspensão do contrato de trabalho em razão do recebimento de benefício por incapacidade, não há fluência do prazo prescricional em prejuízo do empregado afastado, de modo que as parcelas relativas ao mês anterior ao início do benefício permanecem exigíveis. Por isso, é aconselhável o imediato ajuizamento da reclamação para reivindicar as horas extras devidas e não pagas, sem o risco de prescrição durante o período de afastamento.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 75, 'Direito do Trabalho',
'Analise as situações a seguir. I. Ligia deixou de ser contratada porque o anúncio da vaga para chefe de cozinha era destinado apenas a homens. II. Paula foi preterida em um processo seletivo por estar grávida. III. Geórgia foi obrigada a apresentar atestado de que não estava grávida como condição para a contratação. IV. Sílvia não foi contratada para função que exige o transporte manual de peso de 30kg, sem meios mecânicos de auxílio, por ser mulher. Considerando as regras de proteção ao trabalho da mulher, assinale a afirmativa correta.',
'',
'',
'["Todas as exigências e condutas descritas são ilegais, por configurarem discriminação de gênero.","Todas as exigências e condutas descritas são legítimas, pois decorrem do poder diretivo do empregador.","As exigências e condutas descritas nas situações I, II e III são ilegais, mas a conduta descrita na situação IV é legítima, pois decorre de limite legal de proteção à mulher.","Apenas a conduta descrita na situação II é ilegal, sendo legítimas as demais."]'::jsonb,
'C',
'A CLT veda a publicação de anúncio de emprego com referência ao sexo, a recusa de emprego em razão de gravidez e a exigência de atestado de gravidez para admissão (arts. 373-A e 391 e seguintes da CLT), de modo que as situações I, II e III são ilegais. Já a situação IV é legítima, pois o art. 390 da CLT veda empregar a mulher em serviço que demande força muscular superior a 20 kg para trabalho contínuo, protegendo-a do transporte manual de peso excessivo sem meios mecânicos.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 76, 'Direito Processual do Trabalho',
'Sandra ajuizou reclamação trabalhista pleiteando equiparação salarial com um colega paradigma. Em contestação, a empresa alegou dois fatos impeditivos: a existência de diferença de perfeição técnica entre as funções exercidas e a diferença de tempo de serviço na função superior a 4 anos entre Sandra e o paradigma. Sobre a distribuição do ônus da prova, assinale a afirmativa correta.',
'',
'',
'["Cabe à empresa provar os fatos impeditivos por ela alegados, isto é, tanto a diferença de perfeição técnica quanto a diferença de tempo de serviço na função superior a 4 anos.","Cabe a Sandra provar que não há diferença de perfeição técnica nem de tempo de serviço na função, por serem fatos constitutivos de seu direito.","O ônus da prova é integralmente da empresa quanto à perfeição técnica, mas de Sandra quanto ao tempo de serviço.","Não há ônus da prova a ser distribuído, pois a equiparação salarial independe de perfeição técnica ou de tempo de serviço na função."]'::jsonb,
'A',
'A equiparação salarial é fato constitutivo do direito do autor (identidade de função, mesmo empregador, mesma localidade). Os fatos impeditivos alegados pela empresa (diferença de perfeição técnica e diferença de tempo de serviço na função superior a determinado limite) constituem fatos impeditivos do direito, cujo ônus de prova recai sobre o réu, nos termos do art. 818, II, da CLT. Assim, cabe à empresa provar ambos os fatos impeditivos por ela invocados.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 77, 'Direito Processual do Trabalho',
'Analise as demandas a seguir. I. Ação sobre o exercício do direito de greve. II. Ação de indenização por dano moral decorrente de assédio no âmbito da relação de trabalho. III. Ação de cobrança de horas extras. IV. Ação de cobrança de contribuições previdenciárias não recolhidas pelo empregador ao longo de todo o contrato de trabalho, não decorrentes de sentença condenatória. Sobre a competência da Justiça do Trabalho, assinale a afirmativa correta.',
'',
'',
'["A Justiça do Trabalho é competente para todas as demandas descritas.","A Justiça do Trabalho é incompetente para a demanda descrita na situação I, por envolver interesse coletivo.","A Justiça do Trabalho é incompetente para a demanda descrita na situação II, por se tratar de matéria de direito civil.","A Justiça do Trabalho é competente para as demandas descritas nas situações I, II e III, mas é incompetente para a demanda descrita na situação IV, pois a competência executória previdenciária limita-se às contribuições decorrentes das sentenças que proferir."]'::jsonb,
'D',
'A Justiça do Trabalho é competente para as ações sobre o exercício do direito de greve, as de indenização por dano moral decorrente da relação de trabalho e as de cobrança de horas extras (art. 114, I, II e IX, da CF). Quanto às contribuições previdenciárias, sua competência executória limita-se às decorrentes das sentenças que proferir (art. 114, VIII, da CF e Súmula 368 do TST). A cobrança de contribuições não recolhidas ao longo de todo o contrato, sem sentença condenatória que as reconheça, está fora da competência da Justiça do Trabalho.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 78, 'Direito Processual do Trabalho',
'Em execução trabalhista, o juiz homologou o cálculo apresentado pelo exequente, no valor de R$ 20.000,00. O executado pretende efetuar o pagamento de forma parcelada, valendo-se da faculdade prevista na legislação processual, sem oposição do credor. Sobre o parcelamento, assinale a afirmativa correta.',
'',
'',
'["O parcelamento é vedado no processo do trabalho, por incompatibilidade com os princípios da celeridade e da efetividade.","O executado poderá, reconhecendo o crédito do exequente e comprovando o depósito de 30% do valor em execução, acrescido de custas e honorários, requerer o pagamento do restante em até 6 parcelas mensais, acrescidas de correção monetária e juros de 1% ao mês.","O executado poderá parcelar o débito em até 12 parcelas mensais, independentemente de qualquer depósito inicial.","O parcelamento somente é possível na fase de conhecimento, sendo inadmissível na execução."]'::jsonb,
'B',
'Aplica-se subsidiariamente ao processo do trabalho o parcelamento previsto no art. 916 do CPC: reconhecendo o crédito do exequente e comprovando o depósito de 30% do valor em execução, acrescido de custas e honorários, o executado pode requerer o pagamento do restante em até 6 parcelas mensais, acrescidas de correção monetária e juros de 1% ao mês.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 79, 'Direito Processual do Trabalho',
'Helena ajuizou ação de produção antecipada de provas, distribuída à 950ª Vara do Trabalho de São Paulo, para ouvir uma testemunha gravemente enferma, que, de fato, veio a falecer. Posteriormente, Helena pretende ajuizar reclamação trabalhista contra o mesmo empregador, com fundamento nos fatos relacionados à prova antecipada. Sobre a distribuição da reclamação, assinale a afirmativa correta.',
'',
'',
'["A reclamação trabalhista deve ser necessariamente distribuída à 950ª Vara do Trabalho de São Paulo, por prevenção decorrente da produção antecipada de provas.","A reclamação trabalhista será livremente distribuída a uma das Varas do Trabalho de São Paulo, pois a produção antecipada de provas não previne a competência do juízo.","A reclamação trabalhista deverá ser ajuizada perante o Tribunal Regional do Trabalho, em razão da prova já produzida.","A reclamação trabalhista não poderá ser ajuizada, pois a prova antecipada substitui a ação principal."]'::jsonb,
'B',
'Nos termos do art. 381, § 3º, do CPC, aplicável ao processo do trabalho, a produção antecipada de provas não previne a competência do juízo para a ação que venha a ser proposta. Assim, a reclamação trabalhista será livremente distribuída a uma das Varas do Trabalho de São Paulo, sem vinculação à Vara que processou a produção antecipada de provas.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, 80, 'Direito Processual do Trabalho',
'Soraya retirou-se da sociedade empresária em janeiro de 2019, tendo a alteração contratual com sua saída sido averbada no órgão competente em dezembro de 2021. Joana foi empregada da sociedade de abril de 2019 a setembro de 2022, ajuizou reclamação trabalhista em outubro de 2023 e, na fase de execução, iniciada em janeiro de 2025, pretende incluir Soraya no polo passivo em razão da responsabilidade do sócio retirante. Sobre a possibilidade de execução em face de Soraya, assinale a afirmativa correta.',
'',
'',
'["É possível executar Soraya, pois, entre a averbação da modificação do contrato social (saída da sócia) e o ajuizamento da ação, transcorreu prazo inferior a 2 anos, respondendo o sócio retirante pelas obrigações desse período.","É impossível executar Soraya, pois o sócio retirante jamais responde por débitos trabalhistas após a sua saída da sociedade.","É possível executar Soraya, pois o sócio retirante responde por todos os débitos trabalhistas, independentemente de qualquer prazo.","É impossível executar Soraya, pois a execução foi iniciada mais de 2 anos após a sua saída de fato da sociedade, em janeiro de 2019."]'::jsonb,
'A',
'Nos termos do art. 10-A da CLT, o sócio retirante responde subsidiariamente pelas obrigações trabalhistas da sociedade relativas ao período em que figurou como sócio, somente em ações ajuizadas até 2 anos depois de averbada a modificação do contrato. Averbada a saída em dezembro de 2021 e ajuizada a reclamação em outubro de 2023, transcorreu prazo inferior a 2 anos, sendo possível executar Soraya quanto às obrigações do período do contrato de Joana em que ela ainda era sócia.'
from public.exams where slug = 'oab-44-primeira-fase'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;
