// Material autoral de matemática: exemplos didáticos, não ofertas financeiras.
export const percentageLesson = {
  goal: 'Entender o significado de porcentagem, reconhecer a base de cálculo e resolver problemas de parte e total, descontos, reajustes, taxas sucessivas e interpretação de dados. Comece pelo conceito, acompanhe as contas e teste suas escolhas no explorador.',
  sections: [
    {
      title: 'Porcentagem: uma comparação a cada 100',
      paragraphs: [
        'Porcentagem é uma maneira de comparar uma parte com um total usando 100 como referência. O símbolo % significa “por cento”. Assim, 25% significa 25 de cada 100 partes iguais. Imagine uma grade com 100 quadradinhos: pintar 25 representa 25% da grade.',
        'O total real não precisa ser 100. Se uma turma tem 40 alunos, 25% dessa turma são 10 alunos: a mesma proporção de um quarto. O número 100 está na forma de expressar a comparação; 40 é o total da situação.',
        'O primeiro hábito é perguntar: porcentagem de quê? Esse valor de referência é a base de cálculo e corresponde a 100%. Em uma promoção, costuma ser o preço antes do desconto. Em uma pesquisa, pode ser o total de entrevistados ou somente um grupo mencionado no enunciado.',
      ],
      formula: '25% = 25/100 = 0,25 = 1/4. A base da comparação representa 100%.',
    },
    {
      title: 'Transforme porcentagens, frações e decimais',
      paragraphs: [
        'Para transformar porcentagem em número decimal, divida por 100: 8% = 0,08; 12,5% = 0,125; 150% = 1,5. Para transformar decimal em porcentagem, multiplique por 100: 0,4 = 40%; 0,025 = 2,5%; 1,2 = 120%.',
        'Uma fração vira porcentagem quando dividimos o numerador pelo denominador e multiplicamos o resultado por 100. Por exemplo: 3/4 = 0,75 = 75%. As equivalências 1/2 = 50%, 1/4 = 25%, 1/5 = 20%, 1/10 = 10% e 1/8 = 12,5% ajudam no cálculo mental.',
        'Uma taxa maior que 100% é possível: 150% de uma quantidade corresponde a uma vez e meia essa quantidade. Já 0,5% é meio por cento, isto é, 0,005 da base. Atenção: 0,5 e 0,5% são números diferentes — o primeiro equivale a 50%.',
      ],
      formula: 'p% = p ÷ 100. Fração a/b em porcentagem: (a ÷ b) × 100%, com b ≠ 0.',
    },
    {
      title: 'Calcule uma parte quando você conhece o total',
      paragraphs: [
        'Se você conhece a base e a taxa, multiplique o total pela taxa na forma decimal. Para calcular 15% de 240, escreva 240 × 0,15 = 36. Você também pode fazer 240 × 15 ÷ 100; os dois caminhos são equivalentes.',
        'O cálculo mental permite conferir: 10% de 240 são 24, e 5% são a metade disso, 12. Portanto, 15% são 24 + 12 = 36. Outros atalhos úteis: 1% é dividir por 100; 50% é dividir por 2; 25% é dividir por 4; 20% é dividir por 5.',
        'Estime antes de calcular. Como 15% é menor que 50%, 15% de 240 deve ser menor que 120. Uma resposta de 360 indica um erro de escala. Escreva a unidade no final: 36 alunos, R$ 36 ou 36 litros, conforme o problema.',
      ],
      formula: 'Parte = total × p/100. Exemplo: 15% de 240 = 240 × 0,15 = 36.',
    },
    {
      title: 'Descubra a taxa ou encontre o total',
      paragraphs: [
        'Para descobrir qual porcentagem uma parte representa, divida a parte pelo total e multiplique por 100. Se um aluno acertou 42 questões de uma prova com 60, seu aproveitamento foi 42 ÷ 60 × 100 = 70%. A ordem da divisão importa: a parte fica no numerador.',
        'Se você conhece a parte e a taxa, mas não conhece o total, faça a operação inversa: divida a parte pela taxa decimal. Se 18 alunos correspondem a 30% de uma turma, o total é 18 ÷ 0,30 = 60 alunos. A conferência é 30% de 60 = 18.',
        'Organize os dados em três perguntas: qual é a parte? Qual é o total? Qual é a taxa? Identificar a incógnita evita usar a mesma conta em todo problema. A taxa em uma divisão precisa estar em decimal: dividir por 30 não equivale a dividir por 30%.',
      ],
      formula: 'Taxa (%) = parte ÷ total × 100, total ≠ 0. Total = parte ÷ (p/100), p ≠ 0.',
    },
    {
      title: 'Aumentos e descontos: use o fator multiplicativo',
      paragraphs: [
        'Um aumento de 20% mantém os 100% iniciais e acrescenta 20%: o valor final corresponde a 120% do original. Por isso, multiplique por 1,20. Um desconto de 20% deixa 80% do preço: multiplique por 0,80.',
        'Um produto de R$ 250 com 12% de desconto tem desconto de 250 × 0,12 = R$ 30 e preço final de R$ 220. Diretamente: 250 × 0,88 = R$ 220. Diferencie o valor do desconto do preço depois do desconto; a pergunta pode pedir qualquer um deles.',
        'O fator deve fazer sentido: um aumento positivo gera um fator maior que 1; um desconto entre 0% e 100% gera um fator entre 0 e 1. Um desconto de 100% zera o preço. Aumentar 100% significa dobrar o valor.',
      ],
      formula: 'Aumento: final = inicial × (1 + p/100). Desconto: final = inicial × (1 − p/100).',
    },
    {
      title: 'Variação percentual e valor original',
      paragraphs: [
        'Para medir uma variação, compare a diferença com o valor inicial. Se um preço vai de R$ 80 para R$ 100, a diferença é R$ 20; a taxa é 20 ÷ 80 × 100 = 25%. Se vai de R$ 100 para R$ 80, a queda é de 20%. As diferenças em reais são iguais, mas as bases são diferentes.',
        'Para recuperar o preço original, divida pelo fator aplicado. Se um produto custa R$ 180 após um desconto de 25%, esse preço corresponde a 75% do original: 180 ÷ 0,75 = R$ 240. Somar 25% a R$ 180 daria R$ 225 e não recuperaria o preço inicial.',
        'A variação relativa em relação a uma base zero não pode ser calculada por essa fórmula, pois exigiria divisão por zero. Nesse caso, informe a mudança absoluta ou siga outra definição explicitada pelo enunciado.',
      ],
      formula: 'Variação (%) = (final − inicial) ÷ inicial × 100. Original = final ÷ fator, se o fator não for zero.',
    },
    {
      title: 'Reajustes sucessivos: cada etapa muda a base',
      paragraphs: [
        'Em operações sucessivas, a segunda taxa costuma incidir sobre o resultado da primeira. Dois descontos de 10% em R$ 200 resultam em 200 × 0,90 × 0,90 = R$ 162. O desconto total é de R$ 38, ou 19% do preço inicial; não é de 20%.',
        'Um aumento de 10% seguido de uma redução de 10% não devolve o valor original. Começando em R$ 100: 100 × 1,10 = R$ 110; depois, 110 × 0,90 = R$ 99. A mudança acumulada é uma queda de 1%.',
        'Multiplique os fatores e só então interprete a taxa acumulada. Aumentos de 20% e 30% dão 1,20 × 1,30 = 1,56, ou aumento de 56%. Se as taxas forem explicitamente calculadas sobre a mesma base original, a situação será diferente: leia a condição antes de montar a conta.',
      ],
      formula: 'Fator acumulado = fator 1 × fator 2 × … . Taxa acumulada (%) = (fator acumulado − 1) × 100.',
    },
    {
      title: 'Porcentagem de porcentagem e mudança de grupo',
      paragraphs: [
        'Quando o enunciado fala em uma parte de outra parte, multiplique as proporções. Em uma escola com 500 alunos, 40% praticam esporte. Desses esportistas, 30% jogam vôlei. O primeiro grupo tem 500 × 0,40 = 200 alunos, e o grupo do vôlei tem 200 × 0,30 = 60.',
        'Os 30% têm como base os esportistas, não a escola inteira. Em relação à escola, os jogadores de vôlei representam 0,40 × 0,30 = 0,12 = 12%. Marcar 30% como resposta para o total da escola troca a base de referência.',
        'Faça a leitura das expressões “desses”, “entre os participantes” e “do restante”. Se 20% de uma quantidade foi usado, o restante é 80%. Usar 25% desse restante corresponde a 0,25 × 0,80 = 20% da quantidade inicial.',
      ],
      formula: 'p% de q% do total = (p/100) × (q/100) × total.',
    },
    {
      title: 'Porcentagem e pontos percentuais',
      paragraphs: [
        'Pontos percentuais medem a diferença direta entre duas taxas percentuais. Se a participação de um grupo passa de 20% para 30%, a diferença é 30 − 20 = 10 pontos percentuais, abreviados como 10 p.p.',
        'O crescimento relativo dessa participação é de 50%, porque a diferença de 10 é metade da taxa inicial de 20. Portanto, a mesma mudança pode ser descrita como aumento de 10 p.p. ou crescimento de 50% da taxa. As duas descrições respondem a perguntas diferentes.',
        'Percentual de participação não é quantidade absoluta. Se 20 de 100 alunos fazem uma atividade e, depois, 18 de 60 fazem a mesma atividade, a participação sobe de 20% para 30%, mesmo com redução do número de participantes de 20 para 18.',
      ],
      formula: 'Diferença em p.p. = taxa final − taxa inicial. Crescimento relativo = diferença ÷ taxa inicial × 100%.',
    },
    {
      title: 'Compare grupos e interprete gráficos',
      paragraphs: [
        'Leia título, legenda, período, unidade e universo pesquisado antes de usar os números. “40% dos entrevistados” e “40% dos que responderam sim” não têm necessariamente a mesma base. Em gráficos de setores com categorias exclusivas e que cobrem todo o grupo, os percentuais somam 100%; pequenos desvios podem ocorrer por arredondamento.',
        'Não tire a média simples de percentuais de grupos com tamanhos diferentes. Uma turma de 20 alunos tem 50% de aprovação: 10 aprovados. Outra de 80 alunos tem 75%: 60 aprovados. Juntas, são 70 aprovados de 100 alunos, ou 70%, e não a média simples de 62,5%.',
        'Em pesquisas com múltiplas respostas, uma pessoa pode entrar em mais de uma categoria e a soma dos percentuais pode ultrapassar 100%. Confira se as categorias se sobrepõem. Quando houver valores aproximados, mantenha mais casas decimais durante o cálculo e arredonde apenas no resultado.',
      ],
      formula: 'Taxa conjunta (%) = soma das partes ÷ soma dos totais × 100. Em um setor circular: ângulo = percentual × 360° ÷ 100.',
    },
    {
      title: 'Juros simples e compostos em problemas de prova',
      paragraphs: [
        'Capital é o valor inicial; juros são o acréscimo; montante é capital mais juros. A taxa deve estar em decimal e seu período precisa combinar com o tempo. Uma taxa mensal exige tempo em meses. Estes são modelos matemáticos; custos adicionais só entram se o enunciado os informar.',
        'Nos juros simples, cada período acrescenta juros calculados sobre o capital inicial. Para R$ 1.000 a 2% ao mês durante 3 meses, os juros são 1.000 × 0,02 × 3 = R$ 60. O montante é R$ 1.060.',
        'Nos juros compostos, cada período incide sobre o montante anterior. Com os mesmos valores, o montante é 1.000 × 1,02³ = R$ 1.061,208, aproximadamente R$ 1.061,21. O expoente representa a repetição do fator. Uma taxa de 2% ao mês, nesse modelo, equivale a (1,02¹² − 1) × 100 ≈ 26,82% ao ano, e não 24%.',
      ],
      formula: 'Simples: J = C × i × t; M = C + J. Compostos: M = C × (1 + i)ᵗ; J = M − C.',
    },
    {
      title: 'Lucro, margem e o roteiro para resolver questões',
      paragraphs: [
        'Se um produto custa R$ 80 e é vendido por R$ 100, o lucro bruto nesse modelo é R$ 20, antes de outras despesas. Em relação ao custo, isso representa 20 ÷ 80 × 100 = 25%. Em relação ao preço de venda, representa 20 ÷ 100 × 100 = 20%. O enunciado deve indicar sobre qual valor a taxa é calculada.',
        'Roteiro de resolução: primeiro identifique o que a questão pede; depois anote a base que vale 100%; transforme a taxa em decimal; escolha entre parte, taxa, total ou fator; faça as operações e confira o resultado. Se houver etapas, atualize a base em cada uma.',
        'Antes de marcar a alternativa, releia se foi pedido o acréscimo ou o valor final, uma diferença em pontos percentuais ou uma variação relativa. Confira unidades e ordem de grandeza. Sempre que possível, substitua o resultado no problema original: a conta inversa deve reproduzir os dados fornecidos.',
      ],
      formula: 'Percentual sobre o custo = lucro ÷ custo × 100. Margem sobre a venda = lucro ÷ preço de venda × 100.',
    },
  ],
  examples: [
    { title: 'Parte do total: uma prova com 80 questões', problem: 'Gabriela acertou 75% de uma prova de 80 questões. Quantas acertou e quantas errou, sem deixar questões em branco?', steps: ['A base é 80 questões, que corresponde a 100%.', 'Converta a taxa: 75% = 0,75.', 'Acertos: 80 × 0,75 = 60. Erros: 80 − 60 = 20.', 'Conferência: 60 ÷ 80 = 0,75 = 75%.'], answer: '60 acertos e 20 erros.' },
    { title: 'Taxa desconhecida: aproveitamento', problem: 'Um candidato acertou 36 das 48 questões. Qual foi seu percentual de acertos?', steps: ['A parte é 36; a base é 48.', 'Divida: 36 ÷ 48 = 0,75.', 'Multiplique por 100: 0,75 × 100 = 75.'], answer: 'O aproveitamento foi de 75%.' },
    { title: 'Total desconhecido: tamanho da turma', problem: 'Os 24 alunos que entregaram um trabalho representam 60% da turma. Quantos alunos há ao todo?', steps: ['O total é desconhecido: 0,60 × total = 24.', 'Divida por 0,60: total = 24 ÷ 0,60 = 40.', 'Confira: 60% de 40 = 24.'], answer: 'A turma tem 40 alunos.' },
    { title: 'Desconto: separe economia e preço final', problem: 'Um livro custa R$ 120 e recebe desconto de 15%. Quanto se economiza e quanto se paga?', steps: ['10% de R$ 120 são R$ 12; 5% são R$ 6.', 'O desconto é R$ 12 + R$ 6 = R$ 18.', 'Preço final: R$ 120 − R$ 18 = R$ 102.', 'Pelo fator: 120 × 0,85 = 102.'], answer: 'Economia de R$ 18; pagamento de R$ 102.' },
    { title: 'Preço anterior à promoção', problem: 'Após um desconto de 20%, um tênis passou a custar R$ 240. Qual era o preço antes do desconto?', steps: ['O valor pago representa 80% do preço original.', 'Monte: 0,80 × original = 240.', 'Original = 240 ÷ 0,80 = 300.', 'Confira: 20% de R$ 300 são R$ 60; 300 − 60 = 240.'], answer: 'O preço original era R$ 300.' },
    { title: 'Dois descontos seguidos', problem: 'Um produto de R$ 400 recebe desconto de 20% e, sobre o preço já reduzido, mais 10%. Qual é o preço final e o desconto equivalente?', steps: ['Primeiro desconto: 400 × 0,80 = R$ 320.', 'Segundo desconto: 320 × 0,90 = R$ 288.', 'Economia total: 400 − 288 = R$ 112.', 'Taxa equivalente: 112 ÷ 400 × 100 = 28%.'], answer: 'Preço final de R$ 288 e desconto total de 28%.' },
    { title: 'Recuperar uma queda exige outra taxa', problem: 'Um valor de R$ 200 caiu 20%. Qual aumento é necessário para voltar aos R$ 200?', steps: ['Após a queda: 200 × 0,80 = R$ 160.', 'É necessário aumentar R$ 40 sobre a nova base de R$ 160.', 'Taxa: 40 ÷ 160 × 100 = 25%.', 'Confira: 160 × 1,25 = 200.'], answer: 'É necessário um aumento de 25%.' },
    { title: 'Variação de uma taxa', problem: 'A aprovação passou de 40% para 50%. Qual a diferença em pontos percentuais e o crescimento relativo da taxa?', steps: ['Diferença direta: 50 − 40 = 10 pontos percentuais.', 'A base para o crescimento relativo é a taxa inicial de 40%.', 'Crescimento relativo: (50 − 40) ÷ 40 × 100 = 25%.'], answer: 'Aumento de 10 p.p., equivalente a um crescimento relativo de 25% da taxa.' },
  ],
  mistakes: [
    'Esquecer a base: escreva ao lado de cada taxa o grupo ou o valor que corresponde a 100%.',
    'Usar 15 no lugar de 0,15: divida a taxa percentual por 100 antes de multiplicar.',
    'Responder com o desconto quando foi pedido o preço final: nomeie as duas quantidades.',
    'Somar taxas sucessivas sobre bases diferentes: multiplique os fatores de cada etapa.',
    'Tentar desfazer um desconto com um aumento da mesma taxa: divida pelo fator original.',
    'Confundir pontos percentuais com variação relativa: diferença direta e diferença dividida pela base respondem a perguntas distintas.',
    'Tirar a média simples de taxas de grupos desiguais: calcule as partes e os totais ou use os pesos dos grupos.',
    'Arredondar cedo demais: mantenha precisão nas etapas e arredonde no final, conforme a pergunta.',
  ],
  challenges: [
    { text: 'Qual número decimal equivale a 2,5%?', options: ['0,25', '0,025', '2,5'], answer: 1, explanation: 'Divida por 100: 2,5 ÷ 100 = 0,025. O número 0,25 equivale a 25%.' },
    { text: 'Quanto é 35% de 200?', options: ['35', '70', '130'], answer: 1, explanation: '200 × 0,35 = 70. Mentalmente: 30% são 60, e 5% são 10; a soma é 70.' },
    { text: '18 acertos em 24 questões representam:', options: ['60%', '72%', '75%'], answer: 2, explanation: '18 ÷ 24 = 0,75. Multiplicando por 100, temos 75%.' },
    { text: 'Se 45 pessoas correspondem a 30% de um grupo, o grupo tem:', options: ['150 pessoas', '135 pessoas', '75 pessoas'], answer: 0, explanation: 'O total é 45 ÷ 0,30 = 150. Confira: 150 × 0,30 = 45.' },
    { text: 'Um produto de R$ 300 recebe 12% de desconto. Qual é o preço final?', options: ['R$ 36', 'R$ 264', 'R$ 288'], answer: 1, explanation: 'O desconto é 300 × 0,12 = R$ 36. O preço final é 300 − 36 = R$ 264.' },
    { text: 'Após aumento de 25%, um valor chegou a R$ 500. Qual era o valor inicial?', options: ['R$ 375', 'R$ 400', 'R$ 475'], answer: 1, explanation: 'O fator é 1,25. Assim, inicial = 500 ÷ 1,25 = R$ 400.' },
    { text: 'Dois aumentos sucessivos de 10% equivalem a um aumento de:', options: ['20%', '21%', '22%'], answer: 1, explanation: '1,10 × 1,10 = 1,21. O fator final corresponde a 121% do original: aumento de 21%.' },
    { text: 'Uma taxa passou de 25% para 30%. O aumento foi de:', options: ['5 p.p. e 20% de crescimento relativo', '5 p.p. e 5% de crescimento relativo', '20 p.p. e 5% de crescimento relativo'], answer: 0, explanation: 'A diferença é 30 − 25 = 5 p.p. O crescimento relativo é 5 ÷ 25 × 100 = 20%.' },
    { text: '40% dos alunos praticam esporte. Desses, 25% nadam. Qual porcentagem de todos os alunos pratica natação nesse grupo?', options: ['10%', '25%', '65%'], answer: 0, explanation: 'São 25% de 40%: 0,25 × 0,40 = 0,10 = 10% do total.' },
    { text: 'Um grupo de 10 alunos tem 80% de aprovação; outro de 30 tem 40%. Qual é a aprovação conjunta?', options: ['60%', '50%', '40%'], answer: 1, explanation: 'Há 8 aprovados no primeiro grupo e 12 no segundo: 20 em 40 alunos. Portanto, 20 ÷ 40 = 50%.' },
    { text: 'R$ 1.000 a juros simples de 2% ao mês durante 4 meses geram qual montante?', options: ['R$ 80', 'R$ 1.080', 'R$ 1.082,43'], answer: 1, explanation: 'Juros = 1.000 × 0,02 × 4 = R$ 80. Montante = 1.000 + 80 = R$ 1.080. A terceira opção corresponde ao modelo composto, com arredondamento.' },
    { text: 'Um item custa R$ 60 e é vendido por R$ 75. O lucro em relação ao custo é:', options: ['20%', '25%', '15%'], answer: 1, explanation: 'Lucro = 75 − 60 = R$ 15. A base pedida é o custo: 15 ÷ 60 × 100 = 25%. Em relação à venda, seriam 20%.' },
  ],
}
