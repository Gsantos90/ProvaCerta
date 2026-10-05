-- Seed: Correios 2024 - Agente de Correios - Carteiro
-- Edital nº 270/2024 - Banca IBFC - Versão A - 50 questões
-- Gabarito preliminar informado pelo usuário:
-- Língua Portuguesa: 1-B,2-B,3-C,4-D,5-D,6-A,7-C,8-A,9-B,10-A,11-C,12-A,13-D,14-B,15-B
-- Matemática: 16-C,17-C,18-B,19-B,20-A,21-B,22-D,23-B,24-A,25-A
-- Noções de Informática: 26-B,27-D,28-B,29-A,30-C,31-B,32-B,33-C,34-D,35-B
-- Conhecimentos Gerais: 36-A,37-B,38-B,39-D,40-C,41-B,42-A,43-D,44-B,45-A
-- Código de Conduta Ética e Integridade: 46-D,47-A,48-B,49-C,50-A

insert into public.exams (slug, title, source, year)
values ('correios-2024-carteiro', 'Correios 2024 - Agente de Correios - Carteiro', 'correios', '2024')
on conflict (slug) do update set title = excluded.title;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 1, 'Língua Portuguesa',
'No primeiro parágrafo do texto, o narrador:',
'Amor com cabeça de oito

Seu Manéu era o carroceiro da nossa rua e também o único carroceiro que eu conhecia. Quando eu tinha oito, não entendia que quando um pai de família é carroceiro isso quer dizer que ele não tem muita escolha de sustento. Na minha cabeça de oito, ser carroceiro era algo incrível, uma profissão de controle, um ser dono de uma carruagem própria, mas é claro que eu também não pensava na malvadeza que era pro coitado do jumento, que puxava no espinhaço um monte de tijolo, de mudança, de terra, de qualquer coisa empilhada que obrigassem o jumento a puxar.

Feito um pai de família sem opção de sustento, o jumento era condenado a sustentar um peso que não era seu. Mas eu, com minha cabeça de oito, achava a carroça maravilhosa, rangendo rua acima e rua abaixo, contando histórias de onde vinha. [...]

(ARRAES, Jarid. Redemoinho em dia quente. 1ª ed. Rio de Janeiro: Alfaguara, 2019)',
'',
'["expressa uma preocupação bem maior com o jumento do que com os humanos.","aponta percepções distintas, em razão da idade, sobre uma mesma situação.","revela que todas as profissões são dignas embora algumas sejam desvalorizadas.","mostra que a situação de um carroceiro não se compara a de todos os demais."]'::jsonb,
'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 2, 'Língua Portuguesa',
'Um mesmo texto pode agregar diferentes sequências tipológicas. Nesse sentido, assinale a alternativa que apresenta como o primeiro período do texto deve ser entendido.', '', '',
'["Narrativa.","Descritiva.","Injuntiva.","Argumentativa."]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 3, 'Língua Portuguesa',
'O emprego do pronome possessivo, em “da nossa rua” (1º§), cumpre um efeito linguístico. Assinale a alternativa que apresenta este efeito.', '', '',
'["Reforça a ideia de propriedade individual e exclusiva.","Anula o sentido de posse e indefine o sujeito possuidor.","Inclui outros agentes possuidores, além do enunciador.","Confere valor genérico à rua, tornando-a imprecisa."]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 4, 'Língua Portuguesa',
'Em “é claro que eu também não pensava na malvadeza” (1º§), tem-se um período composto, em que a segunda oração exerce a função sintática de ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["predicativo.","objeto direto.","adjunto adnominal.","sujeito."]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 5, 'Língua Portuguesa',
'O vocábulo “família” (1º§) é acentuado pela mesma regra de acentuação de ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["também.","único.","incrível","própria."]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 6, 'Língua Portuguesa',
'No texto, vocábulos como “Manéu” e “malvadeza” revelam, em relação à língua, um registro ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["informal, mas também regional.","formal e bastante objetivo.","típico do discurso literário.","exclusivo do universo infantil."]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 7, 'Língua Portuguesa',
'O segundo parágrafo é introduzido por uma comparação entre o carroceiro e o jumento. Na relação entre as partes do texto, assinale a alternativa que apresenta o termo que explicita essa comparação.', '', '',
'["sem.","opção.","Feito.","seu."]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 8, 'Língua Portuguesa',
'A oração “Quando eu tinha oito,” (1º§) é seguida por uma vírgula. Esse sinal de pontuação tem o emprego justificado por ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["separar uma oração subordinada adverbial anteposta.","isolar uma oração subordinada adjetiva explicativa.","destacar uma oração subordinada reduzida.","indicar uma oração subordinada apositiva intercalada."]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 9, 'Língua Portuguesa',
'No fragmento “o jumento era condenado a sustentar um peso” (2º§), a preposição “a” não recebe o acento grave. Assinale a alternativa em que a reescritura dessa passagem torna a crase obrigatória.', '', '',
'["O jumento era condenado a sua sina.","O jumento era condenado aquela situação.","O jumento era condenado a crueldades.","O jumento era condenado a uma violência."]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 10, 'Língua Portuguesa',
'Ao afirmar que “ele não tem muita escolha de sustento” (1º§), assinale a alternativa que apresenta a percepção acerca da situação do carroceiro.', '', '',
'["Limitação.","Fraqueza.","Indecisão.","Imparcialidade."]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 11, 'Língua Portuguesa',
'No título do texto, tem-se a construção “com cabeça de oito”. Assinale a alternativa que apresenta o valor morfológico da construção mencionada.', '', '',
'["Substantivo.","Adverbial.","Adjetivo.","Preposicional."]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 12, 'Língua Portuguesa',
'No último período do texto, há duas ocorrências de verbos no gerúndio. Essa forma nominal expressa ações que ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["indicam continuidade.","já foram concluídas.","se referem só ao futuro.","ocorrem no presente."]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 13, 'Língua Portuguesa',
'Em “ele não tem muita escolha” (1º§), considere a concordância do vocábulo “muita” e, em seguida, assinale a alternativa que apresenta também um exemplo correto de concordância.', '', '',
'["Adquiriram bastante livros.","Saiu meia zangada.","Escreveu pouca linhas na carta.","Deixou-a muito nervosa."]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 14, 'Língua Portuguesa',
'Em “eu também não pensava na malvadeza” (1º§), o termo preposicionado ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["expressa circunstância adverbial.","complementa um verbo transitivo.","caracteriza um comportamento.","completa o sentido de um substantivo."]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 15, 'Língua Portuguesa',
'Sobre o pronome de tratamento presente em “Vossa Excelência deve apresentar o Relatório...”, assinale a alternativa correta.', '', '',
'["Deveria estar precedido de um artigo definido.","Se dirige a um interlocutor da mensagem.","Se refere a uma pessoa do sexo feminino.","Deveria concordar com a 2ª pessoa do singular."]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 16, 'Matemática',
'Considere que x e y são números inteiros positivos tais que 5x + 3y = 29. Assinale a alternativa que apresenta o valor máximo de y − x.', '', '',
'["5","6","7","8"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 17, 'Matemática',
'A razão entre a idade de Ana e a de Bruno é de 3 para 5. Se a soma das idades é 32 anos, assinale a alternativa que apresenta a idade de Bruno.', '', '',
'["12 anos","18 anos","20 anos","24 anos"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 18, 'Matemática',
'Um carteiro deve entregar encomendas em duas regiões. A quantidade de encomendas para a Região A e a Região B está na razão de 3 para 5. Se ao todo há 80 encomendas para serem entregues, assinale a alternativa que apresenta a quantidade destinada à Região A.', '', '',
'["24 encomendas","30 encomendas","36 encomendas","40 encomendas"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 19, 'Matemática',
'Um caminhão dos Correios percorre um trajeto entre duas cidades, mantendo uma proporção de 4 horas de viagem para cada 240 km percorridos. Se o trajeto total entre as duas cidades é de 360 km, assinale a alternativa que apresenta o tempo necessário para concluir a entrega, mantendo a mesma proporção.', '', '',
'["5 horas","6 horas","7 horas","8 horas"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 20, 'Matemática',
'Uma empresa de entregas dos Correios registra o lucro mensal L(x) (em milhares de reais) de acordo com o número x de pacotes entregues no mês. A função que descreve esse lucro é dada por L(x) = −2x² + 40x − 150. Assinale a alternativa que apresenta o número de pacotes entregues que maximiza o lucro.', '', '',
'["10","15","20","25"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 21, 'Matemática',
'O custo c(x) para enviar um pacote pelos Correios depende do número de quilômetros x percorridos e é dado pela função linear c(x) = 2x + 10, onde c(x) é o custo em reais e x é a distância percorrida em quilômetros. Se o custo para enviar um pacote for R$ 34,00, assinale a alternativa que apresenta a distância percorrida.', '', '',
'["10 km","12 km","78 km","88 km"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 22, 'Matemática',
'Em uma livraria, 35% dos livros são de ficção. Após uma promoção, 20% dos livros de ficção foram vendidos. Sabendo que 140 livros de ficção foram vendidos, a quantidade de livros que havia na livraria antes da promoção era de ______. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["3000","4000","1000","2000"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 23, 'Matemática',
'Três carteiros dos Correios precisam dividir igualmente um bônus de R$ 1.200,00 de acordo com a quantidade de entregas que cada um fez. O carteiro A fez 20 entregas, o carteiro B fez 30 entregas e o carteiro C fez 50 entregas. Assinale a alternativa que apresenta o valor que o carteiro B receberá.', '', '',
'["R$ 300,00","R$ 360,00","R$ 400,00","R$ 450,00"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 24, 'Matemática',
'Uma caixa com encomendas tem um volume de 0,75 metros cúbicos (m³). Para armazenar a caixa em um depósito que utiliza uma tabela de controle medida em litros, é necessário fazer a conversão de unidades. Assinale a alternativa que apresenta o volume desta caixa em litros.', '', '',
'["750 litros","7500 litros","75 litros","750.000 litros"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 25, 'Matemática',
'Um entregador de uma empresa de e-commerce precisa percorrer uma determinada rota diariamente. Após as primeiras entregas, ele já havia percorrido 2/5 da rota. No período da tarde, completou mais 1/3 do percurso total. Sabendo que ainda faltavam 4,8 km para finalizar sua jornada, assinale a alternativa que apresenta o tamanho total da rota em quilômetros.', '', '',
'["18 km","12 km","16 km","14 km"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 26, 'Noções de Informática',
'Assinale a alternativa que apresenta a maneira mais eficiente de selecionar todo o texto de um documento do Word sem usar o mouse.', '', '',
'["Pressionar Ctrl + E","Pressionar Ctrl + T","Pressionar Ctrl + A","Pressionar Ctrl + S"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 27, 'Noções de Informática',
'Se um usuário deseja copiar a formatação de um parágrafo e aplicá-la a outro parágrafo, assinale a alternativa que apresenta a ferramenta do Word que ele deve usar.', '', '',
'["Temas do Documento","Copiar e Colar","Estilos Rápidos","Pincel de Formatação"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 28, 'Noções de Informática',
'No Microsoft Word, assinale a alternativa que apresenta a finalidade do recurso “Controle de Alterações”.', '', '',
'["Permitir a edição colaborativa em tempo real","Rastrear e registrar todas as modificações feitas no documento","Proteger o documento contra cópia não autorizada","Converter o documento em formato PDF"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 29, 'Noções de Informática',
'Se a célula A1 contém o valor 10 e a célula A2 contém o valor 20, assinale a alternativa que apresenta o resultado da fórmula =A1+(A2*2).', '', '',
'["50","60","70","90"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 30, 'Noções de Informática',
'Assinale a alternativa que apresenta a função do campo “CCO” ao enviar um email.', '', '',
'["Permitir que o remetente copie o email para si mesmo automaticamente","Configurar uma resposta automática de ausência temporária","Enviar o email para destinatários ocultos sem que os demais destinatários saibam","Confirmar a entrega do email aos destinatários principais"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 31, 'Noções de Informática',
'Assinale a alternativa que apresenta a principal vantagem de utilizar a extensão .pdf em documentos oficiais em comparação com formatos proprietários como .docx.', '', '',
'["Menor tamanho de arquivo","Compatibilidade universal e preservação do layout independente do software utilizado","Capacidade de edição facilitada","Melhor integração com sistemas operacionais específicos"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 32, 'Noções de Informática',
'Assinale a alternativa que apresenta a funcionalidade que permite múltiplos apresentadores colaborarem em tempo real na criação de uma apresentação no Microsoft PowerPoint.', '', '',
'["Compartilhamento de Tela","Coautoria","Modo de Apresentação","Inserir Vídeos"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 33, 'Noções de Informática',
'Assinale a alternativa que apresenta o recurso que permite refinar os resultados de busca excluindo determinadas palavras.', '', '',
'["Operador OR","Operador AND","Operador NOT (-)","Aspas (\" \")"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 34, 'Noções de Informática',
'O Windows 10 está iniciando lentamente e programas demoram para abrir. A suspeita que muitos programas estão sendo executados em segundo plano sem necessidade. Assinale a alternativa que apresenta a ação mais apropriada para melhorar o desempenho do sistema nesse caso.', '', '',
'["Desinstalar programas essenciais do sistema operacional","Alterar o papel de parede para uma imagem de baixa resolução","Diminuir o volume dos alto-falantes para economizar recursos","Desativar programas desnecessários na inicialização usando o Gerenciador de Tarefas"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 35, 'Noções de Informática',
'Assinale a alternativa que apresenta a principal função de um programa antivírus em um computador.', '', '',
'["Melhorar a performance do sistema","Proteger contra malware, vírus e outras ameaças cibernéticas","Controlar o acesso à internet","Aumentar a velocidade de navegação"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 36, 'Conhecimentos Gerais',
'Um carteiro precisa realizar uma entrega em um determinado local. Devido a uma dificuldade em encontrar aquele endereço, ele empregou um aplicativo de localização para auxiliá-lo. Por meio do aplicativo, o carteiro visualizou a localização da residência e seguiu até ela, sendo que tal localização foi dada por meio de unidade em graus, minutos e segundos. Diante do exposto, assinale a alternativa que apresenta como o sistema de coordenadas visualizado pelo carteiro no aplicativo é conhecido.', '', '',
'["Sistema de Coordenadas Geográficas","Sistema Universal Transversal de Mercator (UTM)","Sistema de Coordenadas Métricas","Sistema Internacional de Mudança de Data"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 37, 'Conhecimentos Gerais',
'Um mapa da área urbana de um determinado município foi apresentado em um curso ministrado para carteiros dos Correios. O objetivo era que todos conhecessem melhor as características urbanas e a distribuição populacional naquela cidade. Sabendo que a população por setores censitários foi representada por meio de círculos proporcionais ao seu tamanho, assinale a alternativa que corresponde, respectivamente, ao modo de implantação e à variável visual utilizados no mapa temático.', '', '',
'["Zona; cor","Pontual; tamanho","Linear; forma","Tridimensional; granulação"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 38, 'Conhecimentos Gerais',
'Podemos optar pela construção de um mapa em que o fatiamento da série de dados da variável gera uma legenda de classes que contém valores de larguras (amplitudes) iguais. Assinale a alternativa que corresponde à técnica para definição de intervalos de dados para a legenda citada no texto.', '', '',
'["Quebras naturais","Intervalos iguais","Desvio padrão","Intervalos aleatórios"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 39, 'Conhecimentos Gerais',
'______ é o maior Bioma da América do Sul, sendo que abrange uma área de 8 milhões de km². Em torno de 5 milhões de km² está no Brasil, o que equivale a quase 59% da área total do país. Contém 1/5 da água doce disponível no mundo e abriga a mais extensa floresta tropical do mundo. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["Pampa","Cerrado","Pantanal","Amazônia"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 40, 'Conhecimentos Gerais',
'As transformações antrópicas na bacia são históricas e diversificadas devido à sua extensão (permeia estados como Minas Gerais, Bahia, Pernambuco, Sergipe e Alagoas), além de estar localizada em três biomas (Caatinga, Mata Atlântica e Cerrado) e ter uma diversidade socioeconômica. Assinale a alternativa correspondente à bacia hidrográfica (BH) citada no texto.', '', '',
'["BH Amazônica","BH do Rio Paraguai","BH do Rio São Francisco","BH do Rio Uruguai"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 41, 'Conhecimentos Gerais',
'Os estados com maior número de agências da Empresa Brasileira de Correios e Telégrafos são Minas Gerais e São Paulo. No que se refere à macrorregião brasileira em que os estados citados estão localizados, assinale a alternativa correta.', '', '',
'["Sul","Sudeste","Nordeste","Centro-Oeste"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 42, 'Conhecimentos Gerais',
'O Cerrado teve sua vegetação original suprimida principalmente na última metade de século XX na esteira do desenvolvimento da agricultura “moderna”, sustentada no discurso lançado com o(a) ______ e da produção de alimentos para uma população mundial crescente. Para isso, foi empregado um pacote tecnológico às condições do Cerrado, com uso de técnicas de correção do solo, utilização intensiva de agrotóxicos e mecanização. Assinale a alternativa que preencha corretamente a lacuna.', '', '',
'["Revolução Verde","Novo Código Florestal","Agenda 2030","Protocolo de Quito"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 43, 'Conhecimentos Gerais',
'O setor secundário (ou indústria em geral) compreende todas as atividades de transformação de bens e divide-se em três subsetores. No que se refere a atividades voltadas ao setor secundário da economia, assinale a alternativa incorreta.', '', '',
'["Construção civil","Produção de bebidas","Produção de vestimentas","Extrativismo vegetal"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 44, 'Conhecimentos Gerais',
'As Regiões Metropolitanas e as Aglomerações Urbanas são recortes instituídos por lei complementar estadual, de acordo com a determinação da Constituição Federal de 1988, visando integrar a organização, o planejamento e a execução de funções públicas de interesse comum (IBGE, 2024). No que se refere à maior Região Metropolitana (RM) brasileira em números populacionais, assinale a alternativa correta.', '', '',
'["RM de Porto Alegre","RM de São Paulo","RM de Salvador","RM do Recife"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 45, 'Conhecimentos Gerais',
'Analise as duas situações propostas. I. Um funcionário dos Correios mora na cidade X. Ele, porém, se desloca todos os dias para a cidade Y, município vizinho onde trabalha. II. Um candidato foi aprovado no concurso dos Correios e foi alocado no extremo norte da mesma cidade em que reside. Sua moradia encontra-se no extremo sul desta mesma cidade e todos os dias ele se desloca entre os dois extremos. Assinale a alternativa que apresenta, correta e respectivamente, os movimentos migratórios descritos nas duas situações.', '', '',
'["Pendular e intra-urbano","Êxodo urbano e pendular","Êxodo rural e transumância","Intra-urbano e êxodo urbano"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 46, 'Código de Conduta Ética e Integridade',
'De acordo com o Código de Conduta Ética e Integridade dos Correios, assinale a alternativa que apresenta o princípio ético que estabelece a objetividade e imparcialidade nas decisões, ações e no uso dos recursos da empresa, bem como a prevalência do interesse público sobre o particular.', '', '',
'["Dignidade humana e respeito às pessoas","Legalidade","Profissionalismo","Impessoalidade"]'::jsonb, 'D'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 47, 'Código de Conduta Ética e Integridade',
'Assinale a alternativa que apresenta o princípio ético prestigiado pelos Correios quando repudia toda forma de fraude e corrupção no exercício de sua atividade.', '', '',
'["Integridade","Legalidade","Sustentabilidade","Indisponibilidade"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 48, 'Código de Conduta Ética e Integridade',
'Assinale a alternativa que apresenta o compromisso que os Correios não possuem em relação aos seus clientes.', '', '',
'["Atender aos clientes com cortesia e respeito","Responder às solicitações de informações independentemente de prazo e objetividade","Garantir a satisfação dos clientes","Oferecer produtos e serviços com a qualidade contratada"]'::jsonb, 'B'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 49, 'Código de Conduta Ética e Integridade',
'Assinale a alternativa que apresenta o compromisso que o empregado não pode ter em relação aos Correios.', '', '',
'["Adotar boas práticas de mesa e telas limpas para que pessoas não autorizadas não tenham acesso a informações privilegiadas e dados pessoais de terceiros","Assegurar a utilização adequada das informações e dos recursos tecnológicos disponíveis","Apresentar-se ao trabalho vestido com roupas inadequadas ao exercício da função","Conhecer e cumprir o Código de Conduta Ética e Integridade da instituição"]'::jsonb, 'C'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;

insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer)
select id, 50, 'Código de Conduta Ética e Integridade',
'Assinale a alternativa que apresenta corretamente o órgão competente para gerir a aplicação, a atualização periódica, a disseminação e a divulgação do Código de Ética e Integridade dos Correios.', '', '',
'["Comissão de Ética, com apoio da Presidência e das Diretorias dos Correios","Comissão de Ética, sem apoio de qualquer outro órgão","Associação de interesse civil","Comitê de usuários"]'::jsonb, 'A'
from public.exams where slug = 'correios-2024-carteiro'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer;
