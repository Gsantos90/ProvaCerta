# Atualizações de 25/10/2026

## Conteúdo e experiência

- Catálogo: Faculdades públicas, Concursos e OAB iniciam recolhidos, com seta e abertura pelo cabeçalho.
- Provas: botão flutuante e duas ferramentas independentes, Calculadora e Anotações, em janelas arrastáveis. Círculos `#273753`, alinhados pelo centro; nomes visíveis no hover ou foco.
- História: sete aulas detalhadas novas, com cronologia, aprofundamento, referências e 21 questões autorais locais.
- Matemática: oito aulas novas, com 24 exemplos resolvidos, oito explorações interativas e 24 questões autorais locais.
- Podcasts: três novos episódios em Grandes Navegações, América espanhola e América inglesa, usando o player atual.
- O catálogo de resumos passa a 46 entradas, em oito matérias; 41 assuntos estão disponíveis para prática. São oito episódios de podcast.

## Documentação e manutenção

- [Resumos, aulas e podcasts](resumos-e-podcasts.md): catálogo, ordem de integração, formatos, IDs, gabaritos, prática local/remota e inclusão de áudio.
- [Ferramentas das provas](ferramentas-provas.md): comportamento, armazenamento, movimentação e limites da calculadora.
- README atualizado para o fluxo atual e com índice de documentação temática.
- `scripts/verify-study-expansion.mjs`: checagem local das quinze aulas, gabaritos, renderização inicial das novas explorações, vínculos de áudio e operações da calculadora.

## Recursos já disponíveis com guias próprios

Estes recursos anteriores continuam no projeto e devem ser considerados junto das inclusões:

- [Planejamento](planejamento-estudos.md): atividades manuais e automáticas, conclusão, anotações e materiais.
- [Destrinchando o conteúdo](destrinchando-conteudo.md): 135 questões objetivas de Matemática, Física e Química das edições oficiais PISM 2024–2026, módulos I, II e III, com resolução aberta e figuras.
- [Provas militares](military-exams.md), [CBMERJ](cbmerj-provas.md), [EFOMM](efomm.md), [ITA primeira fase](ita-2026.md) e [segunda fase](ita-2026-segunda-fase.md).
- [UERJ objetiva](uerj-2026-objetiva.md) e [discursivas](uerj-discursivas.md).

## Publicação

O build deve incluir os três áudios e os demais arquivos estáticos referenciados pelo conteúdo. A atualização de código não aplica seeds nem migrações e não altera o banco remoto. Envio para `main` e publicação na hospedagem são etapas distintas; confirme o resultado do deploy no provedor antes de tratar uma mudança como disponível em produção.
