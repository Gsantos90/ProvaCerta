# Revisão editorial e visual do ENEM — 25/10/2026

## Escopo e fontes

Leitura dos 740 registros atuais (185 em cada ano: 2022, 2023, 2024 e 2025), incluindo as cinco questões adicionais de espanhol. Varredura de palavras unidas por extração e inspeção visual das referências de imagem, comparando casos suspeitos com os cadernos amarelos oficiais disponíveis em `pdf-extracts/enem-migration/`.

As questões 1–180 de 2024 conservam a ordenação do conjunto já importado: não se deve supor que seu número coincida com o caderno amarelo. A conferência desse ano foi feita pelo conteúdo, sem renumerar nem trocar gabaritos. As imagens externas de 2024 foram obtidas para inspeção; os links funcionais foram preservados.

Acervo oficial: https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos . Os arquivos usados seguem `AAAA_PV_impresso_D1_CD2.pdf` e `AAAA_PV_impresso_D2_CD5.pdf` em `https://download.inep.gov.br/enem/provas_e_gabaritos/`.

## Correções

42 questões receberam ajustes selecionados. Não se trata de reescrita dos textos originais: grafias literárias, variações linguísticas, enunciados e alternativas permanecem fiéis à prova.

| Tipo | Alteração |
| --- | --- |
| Texto | 16 reparos de espaçamento/quebra de verso em 14 questões |
| Imagens | Novos recortes completos em 25 questões, incluindo legendas e composição de diagramas |
| Caminhos | Normalização de separadores e de um caminho local em três referências de imagens de 2024 |

Exemplos: `Odiscurso` → `O discurso` em 2022/9; `Otexto` → `O texto` em 2022/24; versos antes colados em 2022/73 e 2023/4; `Onúmero` → `O número` em 2023/151; `Oconjunto` → `O conjunto` em 2024/42.

### Recortes refeitos

- **2022:** 16, 50, 67, 75, 95, 102, 108, 110, 112, 113, 119, 132, 162, 164, 177, 180 e 183 (esta última é a questão oficial 3 de espanhol).
- **2023:** 3, 102, 122, 159, 162 e 177.
- **2025:** 31 e 106.

Na questão 16 de 2022, título, ilustrações, três colunas de orientações e fonte ficam juntos em uma única imagem. A transcrição visual separada foi retirada para evitar duplicação. Em outros casos, painéis distintos foram mantidos quando o texto intermediário ou as alternativas ocupam partes diferentes da página.

Entre os problemas corrigidos estão a ausência de partes dos gráficos em 2022/95, alternativas gráficas incompletas em 2022/108 e 119, reação química fragmentada em 2022/110, aparelho do tipo 2 ausente em 2023/102, cadeia de transportadores cortada em 2023/122 e nomes regionais omitidos no infográfico de 2025/31.

Os arquivos novos usam sufixo `review-20261025`, evitando reutilizar URLs com cache imutável de um ano configurado na hospedagem. A página e o layout da prova não foram modificados.

## Aplicação segura

`supabase/update-enem-review-2026-10-25.sql` é uma atualização de conteúdo, sem mudanças de schema. Atua somente em `text`, `support` e `support_image`, com ID, origem e número conferidos. Usa transação, bloqueio das linhas e comparação com os valores anteriores, aceitando também valores já corrigidos para permitir reexecução. Divergências interrompem a operação em vez de sobrescrever alterações concorrentes.

IDs, alternativas, numeração, gabaritos, explicações e histórico não são alterados. Os fixtures de 2022/2023/2025 e os dois pacotes antigos de importação também foram alinhados para evitar regressões numa recarga futura. Correções anteriores já presentes no banco, incluindo 2022/109 e 2025/135–137, foram preservadas nos fixtures.

Publique primeiro os PNGs e confira sua disponibilidade no site; depois aplique a query, para não deixar o banco apontando para arquivos ainda ausentes. Guardas de versão usam os valores do snapshot específico desta revisão; em outra base, revise os IDs e o conteúdo antes de executar.

## Reprodução e validação

- `scripts/review-enem-content.py`: recortes em 2,5× do MediaBox original, reparos selecionados e geração da query. Requer PyMuPDF, PDFs oficiais e o snapshot anterior em `pdf-extracts/enem-review-2026-10-25/database-before.json`.
- `node scripts/verify-enem-review.mjs`: confere os 42 ajustes, os arquivos PNG, a questão 16 unificada e os fixtures locais.
- `node scripts/verify-enem-review.mjs --database`: compara as 740 questões ao snapshot anterior e confirma a preservação de IDs, alternativas, gabaritos e explicações. Requer as variáveis públicas existentes e conexão de leitura.
- `node scripts/verify-enem-bank.mjs`: filtros, idiomas, gabaritos, imagens e renderização da prova.
- `npm run build`: compilação de produção.

Folhas de contato, páginas originais renderizadas, candidatos rejeitados e snapshot de segurança ficam em `pdf-extracts/enem-review-2026-10-25/`. Não aplique correções automáticas de separação de palavras sem conferir a fonte: candidatos como `Indefinido` → `Indefi nido` são artefatos da extração do próprio PDF e devem ser rejeitados.
