# Catálogo recolhível e ferramentas das provas

Atualizado em 25/10/2026.

## Categorias do catálogo

Em `src/main.jsx`, Faculdades públicas (`faculdades`), Concursos (`concursos`) e Exame da Ordem (`oab`) usam `details` e `summary`. Iniciam fechadas; clicar no cabeçalho abre ou fecha os cards. O controle também funciona pelo teclado, com foco visível.

O cabeçalho mostra título, descrição e seta. Não exibe “Expandir provas” nem “Recolher provas”. A seta gira quando a seção está aberta. As categorias alternam independentemente; não há persistência explícita do estado de abertura. As demais categorias mantêm o comportamento anterior.

O filtro de matéria/origem e a busca continuam filtrando o catálogo. A busca não força abertura das categorias. A escolha de uma prova continua sendo feita pelo diálogo existente de `ExamPicker.jsx`. Estilos específicos estão em `src/examPicker.css`.

## Ferramentas flutuantes

`src/ExamTools.jsx` cria um portal em `document.body`. Os elementos são fixos e ficam sobre a página, sem reservar espaço nem deslocar o layout da prova. `src/examTools.css` contém estilos isolados.

- Botão principal no canto inferior direito; os dois menores ficam centralizados acima dele.
- Todos os círculos têm fundo `#273753` e ícones claros.
- Os nomes **Ferramentas de ajuda**, **Calculadora** e **Anotações** aparecem ao passar o mouse ou focar pelo teclado.
- As duas janelas podem permanecer abertas ao mesmo tempo, com fechamento independente.
- Arraste cada janela pelo cabeçalho; eventos de ponteiro atendem mouse e toque.
- A movimentação limita a janela à tela; redimensionar a janela do navegador reajusta posições arrastadas.
- Fechar o menu principal não fecha as ferramentas já abertas.
- `Escape` dentro de uma ferramenta a fecha, e o foco volta ao botão principal.
- Não há fundo modal bloqueando a prova, nem pausa do cronômetro ao abrir as ferramentas.

Integração atual: provas objetivas, simulados e prática por assunto na tela comum de prova; revisão; discursivas UERJ e ITA; prática de redação. Não aparece no catálogo, no planejamento nem na preparação anterior ao início da prova.

## Anotações

Cada alteração é gravada imediatamente em `localStorage`. A chave é:

```text
provacerta:notes:<ID da conta ou visitor>:<examKey>
```

Na prova comum, `examKey` combina origem selecionada, título/edição e dia. Na discursiva UERJ inclui o ano; ITA e redação usam chaves próprias da área. Não há uma nota por questão nem por tentativa: a mesma chave recupera a nota em uma nova tentativa. Na revisão da mesma prova, a chave é preservada.

Fechar a janela, fechar o menu ou recarregar a página não remove uma nota salva. As notas são locais a esse navegador; não são sincronizadas entre dispositivos, enviadas ao banco ou migradas do visitante para uma conta. Limpar os dados do navegador pode removê-las. Falhas de gravação exibem uma mensagem para manter a janela aberta e copiar o texto.

## Calculadora

O estado é atualizado pela função pura `calculatorStep` em `src/lib/calculator.js`. Oferece soma, subtração, multiplicação, divisão, decimal, percentual, troca de sinal, apagar dígito e limpar. O percentual divide o valor exibido por 100; não implementa automaticamente a convenção de percentual contextual de todas as calculadoras comerciais.

O cálculo é sequencial, sem precedência de expressões: `2 + 3 × 4 =` resulta em 20. Não há parênteses, avaliação de código nem uso de `eval`. Divisão por zero apresenta `Erro`. A próxima entrada numérica permite recomeçar. Resultados são arredondados a 12 algarismos significativos para apresentação.

A calculadora aceita teclas numéricas e operadores quando o foco está em seus controles. Isso evita capturar a digitação nas notas ou nas respostas da prova. O visor usa vírgula; os cálculos usam números JavaScript. A calculadora permanece em memória ao fechar e reabrir o painel, mas reinicia se o componente inteiro for desmontado ou a página recarregada.

## Limites e QA

As posições das janelas não são persistidas após fechar e reabrir o painel. No celular, duas janelas podem se sobrepor inicialmente; o usuário pode arrastá-las ou fechar uma delas. As ferramentas são auxiliares de estudo e não têm bloqueio automático por regras de uma prova oficial.

Verifique no navegador: abrir ambos os painéis, arrastar até as bordas, continuar respondendo, manter o cronômetro correndo, fechar/reabrir, recarregar para recuperar notas, alternar conta, usar tema escuro, testar toque e teclado. O build e testes locais não substituem essa verificação interativa.
