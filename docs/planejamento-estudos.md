# Planejamento de estudos

Disponível em Estudar → Planejamento.

## Comportamento

- Cadastro manual de matérias livres, data, início/fim, tipo, anotações e links.
- Edição, exclusão com confirmação e checkbox de conclusão.
- Calendário semanal/mensal com navegação, botão Hoje e progresso do período.
- No celular, a semana vira uma lista de dias; o mês permite rolagem horizontal.
- Gerador para ENEM, PISM I/II/III, UERJ, USP/FUVEST, ITA, EFOMM, ESA (Área Geral), EsPCEx e CBMERJ (CFO RJ), período de até 366 dias, dias disponíveis, horário diário, duração dos blocos, pausas e matéria para reforço.
- Prévia antes da adição, preservação de atividades existentes e rejeição de conflitos.
- Rotação de matérias, estudo, questões e revisão; sem chamadas a APIs de IA.
- PISM I e II usam oito disciplinas; o módulo III inclui também Filosofia e Sociologia. Cada módulo tem focos iniciais próprios, extraídos dos eixos do programa disponibilizado para 2027; blocos de revisão retomam módulos anteriores. ENEM inclui as áreas do ensino médio e redação.
- Notas gerais e links de materiais, além das anotações por atividade.

## Limites desta versão

O gerador distribui matérias e, no PISM, um recorte inicial de eixos de cada módulo. Não é uma sequência exaustiva de todos os tópicos do edital. O aluno pode detalhar os tópicos e as leituras nas anotações. O link do programa oficial acompanha as atividades. Não há análise de incidência, desempenho individual ou seleção de edição anual. Um período curto pode não comportar todas as matérias e exibe esse aviso na prévia.

Fonte PISM: programa disponibilizado na página oficial do PISM 2027, consultado em 22/10/2026: https://www2.ufjf.br/copese/vestibular-pism-2/pism-2027/ . O PDF indicado nessa página é https://www2.ufjf.br/copese/wp-content/uploads/sites/42/2025/05/Conte%C3%BAdo-Program%C3%A1tico-PISM-UFJF.pdf . Os focos são uma síntese editorial para planejamento.

A persistência usa localStorage, separado por ID da conta existente ou visitante. Não há sincronização entre dispositivos. Dados do visitante não são migrados automaticamente para uma conta. Falhas de leitura preservam o conteúdo antigo até confirmação explícita de substituição; falhas de gravação são informadas e não simulam sucesso.

Nenhum banco ou ambiente publicado foi alterado.

## Validação

`npm ci` e `npm run build`.

`node scripts/verify-study-planner.mjs`: geração ENEM/PISM, duração, pausas, dias, conflitos, limites, datas, links seguros, validação do armazenamento e renderização React de uma atividade persistida.

O teste interativo em Chromium não pôde ser executado neste ambiente: não havia navegador instalado e o download retornou arquivos inválidos. Revisão visual e interação em navegador continuam pendentes.

## Aplicar o patch

Na raiz do repositório atualizado, execute:

```bash
git switch -c feat/planejamento-estudos
git apply --check planejamento-estudos.patch
git apply planejamento-estudos.patch
npm ci
node scripts/verify-study-planner.mjs
npm run build
```

Depois revise o fluxo em `npm run dev`, em Estudar → Planejamento. A alteração não exige variáveis de ambiente novas ou migração SQL.

As novas opções usam uma distribuição geral de disciplinas. Não há seleção de fase ou edição, nem promessa de cobertura integral de um edital; o aluno deve ajustar as atividades para a sua prova. A matéria de reforço é reiniciada ao mudar a prova ou módulo.
