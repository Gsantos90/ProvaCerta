# UERJ — Exame discursivo de Biologia

Acesso: Todas as provas → UERJ → Escolher prova → Ano 2026, 2025 ou 2014 → Edição “Exame discursivo - Biologia” → Começar prova. Em 2025, a edição objetiva permanece disponível no mesmo seletor.

A discursiva usa os seletores existentes de ano e edição. O cadastro contém três provas completas de Biologia, com dez questões cada: 2014 (38 campos e 4 apoios), 2025 (30 campos e 7 apoios) e 2026 (26 campos e 6 apoios). São 30 questões, 94 campos e 17 apoios visuais. Cada questão oferece um link ao caderno oficial comentado, na página correspondente, antes da correção.

Fontes recentes: [UERJ 2025](https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/50.pdf), páginas físicas 2–11, e [UERJ 2026](https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/55.pdf), páginas físicas 3–12. Os PDFs locais mantêm a publicação completa e seus comentários. Os apoios são recortes das figuras, preservando legendas e atribuições quando presentes.

Os textos de contexto das questões 5/2025, 7/2026 e 9/2026 foram adaptados, mantendo os dados necessários e os pedidos de resposta. O conteúdo sobre medicamentos é tratado como contexto da prova, não como orientação clínica. Nas questões explicativas, a correção continua limitada às expressões cadastradas; ela não interpreta argumentações livres.

Origem: caderno comentado oficial disponível em https://www.revista.vestibular.uerj.br/arquivos/pdf/questao/19.pdf. As páginas 8 a 14 do PDF reúnem questões e comentários de Biologia. O arquivo local conserva a publicação original completa, incluindo outras disciplinas; os links de correção abrem a página correspondente. Os contextos jornalísticos das questões 3 e 8 foram resumidos, mantendo os pedidos e os dados necessários. O contexto sanitário da questão 8 corresponde ao enunciado histórico.

## Correção

Cada pedido corresponde a campos curtos com variantes editoriais baseadas no comentário oficial. Nos campos individuais comuns, a resposta completa exibida como referência também é aceita. A comparação normaliza acentos, espaços, caixa e pontuação final. Explicações com regras cadastradas também são avaliadas por grupos de conceitos obrigatórios, com sinônimos e flexões de palavras. Todos os grupos devem estar presentes; certas questões exigem ainda relações entre os conceitos. Não utiliza IA nem chama serviços externos para corrigir.

As regras ficam em src/lib/shortAnswerRules.js. Na questão 2/2026, por exemplo, as expressões “captura por felinos” e “predação pelos gatos” podem expressar o mesmo conceito. São exigidos também o roedor, o parasita e sua transmissão ou conclusão do ciclo. As regras desse item rejeitam negações, inversão da predação, explicações incompletas e simples listas de palavras. A detecção é limitada às regras cadastradas e não substitui a interpretação de textos por um professor.

Exceções: genótipos preservam maiúsculas e minúsculas, distinguindo Aa, AA e aa; listas de códons exigem o par inteiro e aceitam ordem diferente, com vírgula, barra, espaço ou “e”. Itens que pedem duas características diferentes não pontuam o mesmo conceito duas vezes.

Na questão 2, o comentário especifica nitrato, não amônio. Na questão 4, o padrão usado identifica fibras elásticas/músculo liso para artérias e contração de músculos esqueléticos/movimento respiratório para retorno venoso. Na questão 10, os pares restritos pelas mutações são CUU/CUC, AUU/AUC, GUU/GUC e UUU/UUC.

O resultado corresponde à fração de itens reconhecidos, com pesos iguais para o treino, e não à nota oficial. Uma resposta não reconhecida pode ser válida com outras palavras. O comentário e a referência de cada campo são exibidos após conferir.

## Navegação e retomada

A prova permite navegar por Anterior/Próxima ou pelos dez números. Durante a tentativa, não há botão de correção por questão, contagem de acertos ou contornos de resultado. Finalizar prova na última questão abre o resultado geral, incluindo os itens em branco. A partir dele, Revisar respostas ou os links das questões abrem a revisão, com a contagem de itens reconhecidos e as referências.

Na revisão, campos e referências têm contorno verde para itens reconhecidos e vermelho para itens não reconhecidos, repetidos ou em branco; rótulos em texto também identificam o resultado. Os campos ficam somente para leitura, mantendo o resultado da tentativa. Refazer prova limpa as respostas e inicia uma nova tentativa sem revelar a correção.

As respostas, a questão atual, o resultado e a tela de revisão persistem em sessionStorage. A propriedade submitted dos rascunhos antigos é preservada por compatibilidade, mas não revela correções antes de finalizar. Resultados ainda não são enviados ao histórico da conta.

## Cadastro e verificação

Questões: src/lib/uerj2014Biology.js, src/lib/uerjRecentBiology.js e src/lib/uerjDiscursive.js. Correção: src/lib/shortAnswers.js. Tela: src/UerjDiscursive.jsx. Extração dos apoios recentes: scripts/extract-uerj-recent-supports.py.

A questão isolada de 2015 da primeira versão permanece nos dados de desenvolvimento, mas não é oferecida como caderno completo no catálogo.

Verificação: node scripts/short-answers.test.mjs e npm run build. Os testes cobrem os três cadernos completos, respostas de referência integrais, paráfrases, negações e relações entre conceitos, arquivos de apoio, curvas de gráficos, genótipos, pares de códons, sinônimos e conceitos repetidos. A seleção integrada, navegação, correção e retomada foram conferidas no navegador local, incluindo a coexistência das edições objetiva e discursiva em 2025.
