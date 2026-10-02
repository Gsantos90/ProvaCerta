// Gera supabase/seed-enem-2024.sql a partir do dataset maritaca-ai/enem (split 2024).
// Fonte baixada em pdf-extracts/enem-2024.jsonl (180 questoes).
// Mapeia: text = enunciado completo (sem o marcador [[placeholder]]);
//         support = descricao textual da imagem (acessibilidade);
//         support_image = URL raw da figura no GitHub (piresramon/gpt-4-enem);
//         options = array JSON de 5 alternativas; answer = gabarito (letra) ou 'ANULADA'.
import { readFileSync, writeFileSync } from 'node:fs'

const SLUG = 'enem-2024'
const TITLE = 'ENEM 2024 - Prova Objetiva'
const SRC = 'pdf-extracts/enem-2024.jsonl'
const OUT = 'supabase/seed-enem-2024.sql'

// Mapa de disciplina por numero da questao (estrutura oficial do ENEM).
function subjectFor(n) {
  if (n >= 1 && n <= 5) return 'Linguagens - Língua Estrangeira'
  if (n >= 6 && n <= 45) return 'Linguagens, Códigos e suas Tecnologias'
  if (n >= 46 && n <= 90) return 'Ciências Humanas e suas Tecnologias'
  if (n >= 91 && n <= 135) return 'Ciências da Natureza e suas Tecnologias'
  return 'Matemática e suas Tecnologias'
}

// Escapa aspas simples para string literal SQL (dobra a aspa).
const sql = (value) => String(value ?? '').replace(/'/g, "''")

const rows = readFileSync(SRC, 'utf8').split(/\r?\n/).filter(Boolean).map((l) => JSON.parse(l))

const header = `-- Seed: ENEM 2024 - Prova Objetiva (180 questoes)
-- Fonte: dataset maritaca-ai/enem (HuggingFace), split 2024 (2024.jsonl)
-- Figuras hospedadas em: github.com/piresramon/gpt-4-enem (data/figures/2024)
-- Gerado por scripts/generate-enem-2024-seed.mjs

insert into public.exams (slug, title, source, year)
values ('${SLUG}', '${sql(TITLE)}', 'enem', '2024')
on conflict (slug) do update set title = excluded.title;
`

const blocks = rows.map((r, i) => {
  const number = i + 1
  const subject = subjectFor(number)
  // texto: remove o marcador de imagem e espacos sobrando
  const text = r.question.replace(/\[\[placeholder\]\]/g, '').replace(/\n{3,}/g, '\n\n').trim()
  const support = Array.isArray(r.description) && r.description.length ? r.description.join('\n\n') : ''
  const supportImage = Array.isArray(r.figures) && r.figures.length ? r.figures.join(',') : ''
  const options = JSON.stringify(r.alternatives)
  // A coluna answer tem check in ('A','B','C','D','E'). Para a questao anulada,
  // o INEP considera correta qualquer alternativa; usamos 'A' (valida na constraint)
  // e sinalizamos a anulacao na explicacao.
  const anulada = r.label === 'Anulado'
  const answer = anulada ? 'A' : r.label
  const explanation = anulada
    ? 'Questão ANULADA pelo INEP no ENEM 2024. Não há alternativa correta única no gabarito oficial; qualquer resposta é considerada correta. (Marcação padrão: A.)'
    : `Gabarito oficial ENEM 2024: alternativa ${r.label}.`

  return `insert into public.questions (exam_id, number, subject, text, support, support_image, options, answer, explanation)
select id, ${number}, '${sql(subject)}',
'${sql(text)}',
'${sql(support)}',
'${sql(supportImage)}',
'${sql(options)}'::jsonb,
'${sql(answer)}',
'${sql(explanation)}'
from public.exams where slug = '${SLUG}'
on conflict (exam_id, number) do update set subject = excluded.subject, text = excluded.text, support = excluded.support, support_image = excluded.support_image, options = excluded.options, answer = excluded.answer, explanation = excluded.explanation;`
})

const content = header + '\n' + blocks.join('\n\n') + '\n'
writeFileSync(OUT, content, { encoding: 'utf8' })
console.log(`OK: ${rows.length} questoes -> ${OUT}`)
