"""Apply reviewed transcriptions and generate the repeatable Correios SQL seed."""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / '.venv/enem-tools'))
import pymupdf as fitz
from importlib.util import spec_from_file_location, module_from_spec

spec = spec_from_file_location('extract', ROOT / 'scripts/import-correios-2011.py')
extract = module_from_spec(spec)
spec.loader.exec_module(extract)
BASE = extract.BASE
questions = {}
docs = {}
for role, label, filename in extract.EXAMS:
    questions[role] = json.loads((BASE / f'{role}-draft.json').read_text(encoding='utf-8'))
    docs[role] = fitz.open(BASE / filename)

a = questions['atendente-comercial']
c = questions['carteiro']
o = questions['operador-triagem']


def opts(bank, number, values):
    assert len(values) == 5
    bank[number-1]['options'] = values


def fill(bank, number, labels):
    q = bank[number-1]
    remaining = iter(labels)
    pattern = r'\b(botão|menu|ícone|ferramenta|teclar|botões)\s+(?=[,.;])'
    def replace(match):
        return match[1] + ' “' + next(remaining) + '”'
    q['options'] = [re.sub(pattern, replace, text) for text in q['options']]
    assert next(remaining, None) is None, (number, labels, q['options'])


def split_support(bank, number, anchor, share=()):
    q = bank[number-1]
    pos = q['text'].index(anchor)
    pattern = r'\s+'.join(re.escape(word) for word in anchor.split())
    raw_match = re.search(pattern, q['raw'])
    q['support'] = q['raw'][:raw_match.start()].strip() if raw_match else q['text'][:pos].strip()
    q['text'] = q['text'][pos:]
    for n in share:
        bank[n-1]['support'] = q['support']


# Inline toolbar/menu pictures are transcribed instead of leaving blank options.
fill(a, 2, ['Enter', 'Enter', 'Enter', '000', 'Enter'])
opts(a, 3, ['Revisão.', 'Inserir.', 'Fórmulas.', 'Dados.', 'Exibição.'])
opts(a, 4, [
    'A pasta correiosdocs está contida no disco C: do computador.',
    'Ao se clicar o botão de pesquisa (lupa), os ícones associados aos arquivos orçamento.xls e relatório.doc serão exibidos com tamanho maior que o exibido na janela.',
    'Ao se aplicar um clique duplo no ícone relatório.doc, será aberto o documento associado a esse ícone.',
    'O arquivo associado ao ícone orçamento.xls ocupa espaço de memória inferior a 8 mil bytes.',
    'Ao se clicar o ícone orçamento.xls e, a seguir, o botão Voltar, o referido ícone passará a ser exibido, na janela, acima do ícone relatório.doc.',
])
opts(a, 5, [
    'equação matemática, por meio do conjunto de botões WordArt.',
    'quebra de seção, por meio do conjunto de botões Páginas.',
    'imagem armazenada no computador, por meio do botão Imagem.',
    'texto com efeitos decorativos, como, por exemplo, “Periódico”, por meio do conjunto de botões Formas.',
    'nova página em branco, por meio do submenu Número de Página.',
])
a[8]['support'] = re.sub(r'mouse se encontrava sobre a guia\s*,', 'mouse se encontrava sobre a guia “Correios”,', a[8]['support'])
for n in [10, 11, 12]:
    a[n-1]['support'] = a[8]['support']
opts(a, 10, ['a guia Correios.', 'o botão Parar (X).', 'o campo de seta para baixo do botão Página.', 'o botão de feeds RSS.', 'o botão de visualização de guias (grade de quadrados).'])
opts(a, 11, ['Favoritos.', 'Ferramentas.', 'Arquivo.', 'Editar.', 'Exibir.'])
opts(a, 12, ['Editar.', 'Exibir.', 'Favoritos.', 'Ferramentas.', 'Arquivo.'])
opts(a, 15, [
    'Aplicar um clique duplo na palavra “Campanha”; teclar simultaneamente as teclas Ctrl e V; aplicar um clique no local onde se deseja copiar a palavra; clicar o botão Pincel de formatação.',
    'Aplicar um clique triplo na palavra “Campanha”; teclar simultaneamente as teclas Ctrl e C; aplicar um clique no local onde se deseja copiar a palavra; clicar o botão Pincel de formatação.',
    'Selecionar a palavra “Campanha”; teclar simultaneamente as teclas Ctrl e V; aplicar um clique no local onde se deseja copiar a palavra; clicar o botão Copiar.',
    'Selecionar a palavra “Campanha”; teclar simultaneamente as teclas Ctrl e X; aplicar um clique no local onde se deseja copiar a palavra; pressionar simultaneamente as teclas Ctrl e M.',
    'Selecionar a palavra “Campanha”; clicar o botão Copiar; aplicar um clique no local onde se deseja copiar a palavra; clicar o botão Colar.',
])
fill(a, 16, ['Minimizar', 'N (Negrito)', 'Novo documento', 'Desfazer', 'Mostrar/Ocultar ¶'])
fill(a, 17, ['Diminuir casas decimais', 'Enter', 'Fechar (X)', 'Classificar de A a Z'])
fill(a, 18, ['Abrir (pasta)', 'Imprimir', 'Apresentação de slides', 'Salvar (disquete)'])
a[17]['options'][2] = a[17]['options'][2].replace('O botão permite', 'O botão “Aumentar tamanho da fonte” permite')
fill(a, 19, ['Voltar', 'Recarregar', 'Ajuda', 'Arquivo', 'Página inicial'])
opts(a, 20, [
    'Para o envio do arquivo associado ao ícone texto.doc para a lixeira, é suficiente clicar esse ícone e, em seguida, o ícone Lixeira.',
    'Ao se clicar, com o botão direito do mouse, o ícone texto.doc, será aberta uma lista de opções, entre as quais, uma que permite abrir o arquivo associado ao ícone.',
    'Ao se clicar o ícone Mozilla Firefox e, em seguida, o botão Iniciar, o programa Mozilla Firefox será aberto.',
    'Para se proceder ao esvaziamento da lixeira do Windows, é suficiente clicar o ícone Lixeira.',
    'Ao se aplicar um clique sobre o ícone texto.doc, o arquivo associado a esse ícone será aberto.',
])
a[21]['text'] = 'Considerando que 7/40 e 13% dos livros didáticos sejam distribuídos, respectivamente, para as regiões Nordeste e Norte, então a quantidade, em milhões, de livros didáticos destinada a essas duas regiões pelos programas mencionados no texto é'
a[23]['text'] = 'Um cliente comprou, em uma agência dos Correios, selos comemorativos dos 150 anos do nascimento do padre Landell de Moura e dos 150 anos de fundação da Caixa Econômica Federal (CAIXA). Para o pagamento desses produtos, o cliente entregou certa quantia em reais e notou que 3/4 dessa quantia correspondiam ao custo dos selos comemorativos dos 150 anos do padre Landell de Moura e 1/5, ao custo dos selos comemorativos dos 150 anos da CAIXA. Nessa situação, com relação à quantia entregue para pagamento, o troco a que faz jus o cliente corresponde a'
a[40]['options'][4] = 'Cuidado: Cão raivoso?'
for n in [42, 43]:
    a[n-1]['support'] = 'Na figura, que é parte de uma página da Internet (www.correios.com.br), são mostrados dois serviços prestados pelos Correios.'
for n, anchor, share in [
    (21, 'Considerando que essa nova agência', ()),
    (51, 'A partir do que o texto informa', ()),
    (53, 'A palavra “Porque”', ()),
    (56, 'Considerando essa história em quadrinhos', ()),
    (57, 'Assinale a opção correta a respeito', ()),
    (60, 'Da leitura do texto', ()),
]:
    split_support(a, n, anchor, share)

# Songs retain short excerpts needed for this question and an official-booklet
# link, rather than reproducing the collected lyrics in the study database.
a[52]['support'] = 'Tocando em frente — Almir Sater e Renato Teixeira.\n\nResumo de apoio: o eu lírico relaciona sua serenidade atual a experiências anteriores de pressa e sofrimento. Os versos 2 e 4 explicam afirmações anteriores: “Porque já tive pressa” e “Porque já chorei demais”.\n\nConfira os demais versos no caderno oficial, página 11.'
for n in [54, 55]:
    a[n-1]['support'] = 'A Carta — Benil Santos e Raul Sampaio.\n\nResumo de apoio: o eu lírico escreve uma carta amorosa motivada pela saudade. Pede desculpas pelos erros da escrita, admite a possibilidade de estranhamento por parte de quem recebe a carta e lembra que o amor permite superar convenções.\n\nAs perguntas analisam complementos verbais, vocativos, relações entre orações, sentidos de advérbios e formas de tratamento. Para conferir a redação dos versos e sua numeração, abra o caderno oficial na página 11.'

c[25]['text'] = 'De acordo com as informações do texto, a espessura do iPad2, em relação à espessura do iPad lançado em 2010, foi reduzida em'
opts(c, 26, ['mais de 1/4 e menos de 1/3.', 'mais de 1/3 e menos de 1/2.', 'mais de 1/2.', 'menos de 1/5.', 'mais de 1/5 e menos de 1/4.'])
c[33]['text'] = 'Das correspondências que deveria entregar, o carteiro Carlos passou 7/10 delas para o carteiro Jorge; dessas, Jorge repassou 3/5 para o carteiro Marcos. Nesse caso, com relação à quantidade de correspondências que Carlos deveria entregar, a quantidade que coube a Marcos é igual a'
opts(c, 34, ['3/10.', '2/5.', '21/50.', '10/15.', '1/10.'])
for n, anchor, share in [
    (25, 'Com base nas informações do texto acima', ()),
    (46, 'Da leitura do texto acima', (47,)),
    (48, 'Assinale a opção correta de acordo', ()),
    (59, 'O efeito surpresa e de humor', ()),
    (60, 'No texto acima, a recepcionista', ()),
]:
    split_support(c, n, anchor, share)

o[4]['options'][4] = 'o mouse e o monitor LCD.'
for n in [6, 7]:
    o[n-1]['support'] = 'A figura mostra a janela de um aplicativo do Windows XP e serve de base para as questões 6 e 7.'
opts(o, 8, ['Impressoras e aparelhos de fax.', 'Opções de telefone e modem.', 'Adicionar hardware.', 'Adicionar ou remover programas.', 'Atualizações Automáticas.'])
fill(o, 10, ['Bordas', 'Mesclar células', 'Quebrar texto automaticamente'])
o[9]['options'][3] = o[9]['options'][3].replace('pelos ícones evidenciam', 'pelos ícones “Aumentar tamanho da fonte” e “Diminuir tamanho da fonte” evidenciam')
fill(o, 11, ['Alternar Linha/Coluna'])
o[10]['options'][1] = o[10]['options'][1].replace('A ferramenta possibilita', 'A ferramenta “Salvar como Modelo” possibilita')
opts(o, 13, [
    'Para se numerarem as linhas do parágrafo do documento em edição que contém o trecho selecionado, é suficiente pressionar simultaneamente e manter pressionadas as teclas Ctrl e A; clicar o botão Diminuir recuo e liberar finalmente as teclas pressionadas.',
    'Na situação considerada, ao se clicar o botão Sobrescrito (x²), o trecho selecionado ficará com a cor do texto alterada para vermelho.',
    'Na situação considerada, ao se clicar o botão N (Negrito), o trecho selecionado será alterado e aparecerá em itálico e sublinhado, ou seja, ficará da seguinte forma: Serviço internacional.',
    'Para se mudar o trecho selecionado de sua posição atual para uma nova posição no documento em edição, é correto realizar a seguinte sequência de ações: clicar o botão Recortar (tesoura), para recortar o trecho selecionado; posicionar o ponto de inserção no local para onde se deseja mover o trecho selecionado; clicar o botão Colar, em sua parte superior, para colar o texto na nova posição.',
    'Na situação mostrada, ao se clicar o botão Centralizar, o parágrafo do documento em edição que contém o trecho selecionado ficará alinhado tanto à direita, quanto à esquerda.',
])
o[13]['text'] = o[13]['text'].replace('o campo informa', 'o campo “17” (caixa de tamanho da fonte) informa')
o[14]['text'] = o[14]['text'].replace('o uso do botão permite', 'o uso do botão “Pincel de formatação” permite')
fill(o, 15, ['Cor de realce do texto (ab)', 'Sombreamento (balde de tinta)', 'Cor da fonte (A)'])
o[15]['text'] = o[15]['text'].replace('conjunto de botões .', 'conjunto de botões “Imprimir”.')
opts(o, 16, ['o botão Salvar (disquete).', 'o botão Office.', 'o menu Exibição.', 'o campo Área de Transferência.', 'o menu Início.'])
fill(o, 20, ['Parar (X)', 'Atualizar (setas)', 'Ferramentas', 'Pesquisar (lupa)'])
o[25]['text'] = 'Considere que, das correspondências que um carteiro deveria entregar em determinado dia, 5/8 foram entregues pela manhã, 1/5 à tarde e 14 ficaram para ser entregues no dia seguinte. Nessa situação, a quantidade de correspondências entregue pelo carteiro naquele dia foi igual a'
split_support(o, 31, 'Com base nesses dados')
o[30]['support'] = re.sub(r'\s*não\s+sim\s+12 cm\s+4 cm\s+x cm\s*$', '', o[30]['support']).strip()
o[38]['text'] = o[38]['text'][o[38]['text'].index('Sabendo-se'):].replace('90o', '90°')
for n, anchor in [(40, 'Com base nessa situação hipotética'), (41, 'Depreende-se das ideias do texto'),
                  (42, 'As vírgulas nas linhas'), (43, 'Emprega-se o sinal indicativo'),
                  (50, 'Assinale a opção em que o trecho')]:
    split_support(o, n, anchor)


def figure(role, number, page_no, boxes, suffix='support'):
    boxes = [fitz.Rect(box) for box in boxes if fitz.Rect(box).width >= 60 and fitz.Rect(box).height >= 30]
    if not boxes:
        return
    rect = boxes[0]
    for box in boxes[1:]:
        rect |= box
    out = ROOT / 'public/correios-2011'
    out.mkdir(exist_ok=True)
    name = f'{role}-q{number:02}-{suffix}.png'
    docs[role][page_no-1].get_pixmap(matrix=fitz.Matrix(2.5, 2.5), clip=rect).save(str(out / name))
    q = questions[role][number-1]
    path = '/correios-2011/' + name
    existing = q['support_image']
    if existing:
        paths = json.loads(existing) if existing.startswith('[') else [existing]
        if path not in paths:
            paths.append(path)
        q['support_image'] = json.dumps(paths, ensure_ascii=False)
    else:
        q['support_image'] = path


for role, bank in questions.items():
    for q in bank:
        if role == 'atendente-comercial' and q['number'] == 41:
            continue
        figure(role, q['number'], q['page'], q['images'])
        if q.get('shared', {}).get('images'):
            figure(role, q['number'], q['shared']['page'], q['shared']['images'], 'shared')

# Context pictures whose captions precede the next question marker.
for n in [15, 16]:
    a[n-1]['support'] = 'A figura mostra uma janela do Word 2003, com um documento em edição, e serve de base para as questões 15 e 16.'
    figure('atendente-comercial', n, 4, [[326.6, 70.3, 544.9, 236.5]])
for n in [42, 43]:
    figure('atendente-comercial', n, 9, [[46.1, 262.8, 273.6, 400.0]])
for n in [6, 7]:
    figure('operador-triagem', n, 2, [[315.1, 482.4, 556.6, 668.9]])
# Vector drawings: retain only the geometric figure, excluding stems/options.
figure('operador-triagem', 31, 8, [[69, 308, 258, 399]])
figure('operador-triagem', 39, 10, [[55, 240, 258, 429]])

FIELDS = ['slug', 'number', 'subject', 'text', 'support', 'support_image', 'options', 'answer', 'explanation']
all_records = []
page_maps = {}
for role, label, filename in extract.EXAMS:
    bank = questions[role]
    page_maps['correios-2011-' + role] = {'file': filename, 'pages': [q['page'] for q in bank]}
    for q in bank:
        if q['answer'] == 'ANULADA':
            q['answer'] = 'A/B/C/D/E'
        assert len(q['options']) == 5 and all(len(v) > 1 for v in q['options']), (role, q['number'])
        assert q['text'] and q['answer'] in ['A', 'B', 'C', 'D', 'E', 'A/B/C/D/E']
        q['text'] = q['text'].replace('deduz- se', 'deduz-se')
        all_records.append({k: q[k] for k in FIELDS})
(BASE / 'questions.json').write_text(json.dumps(all_records, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
(BASE / 'sources.json').write_text(json.dumps(page_maps, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
source_js = '// Official CESPE/UnB Type I booklets, mapped by original question number.\n'
source_js += 'const sources = ' + json.dumps(page_maps, ensure_ascii=False, indent=2) + '\n\n'
source_js += '''export function correiosOfficialSource(slug, number) {
  const source = sources[slug]
  const page = Number.isInteger(number) && number >= 1 ? source?.pages[number - 1] : null
  return page ? `https://cdn.cebraspe.org.br/concursos/CORREIOSAGENTE2011/arquivos/${source.file}#page=${page}` : null
}
'''
(ROOT / 'src/lib/correiosSources.js').write_text(source_js, encoding='utf-8')

def quote(value):
    return "'" + value.replace("'", "''") + "'"

sql = '-- Correios 2011: Tipo I, 3 provas de 60 questões, gabaritos definitivos CESPE/UnB.\n'
sql += '-- Fonte: https://cdn.cebraspe.org.br/concursos/CORREIOSAGENTE2011/\nBEGIN;\n'
sql += 'INSERT INTO public.exams (slug,title,source,year) VALUES\n'
sql += ',\n'.join('(' + ','.join(map(quote, ['correios-2011-' + role, 'Correios 2011 - Agente de Correios - ' + label, 'correios', '2011'])) + ')' for role, label, _ in extract.EXAMS)
sql += '\nON CONFLICT (slug) DO UPDATE SET title=excluded.title;\n'
sql += 'INSERT INTO public.questions (exam_id,number,subject,text,support,support_image,options,answer,explanation)\n'
sql += 'SELECT e.id,r.number,r.subject,r.text,r.support,r.support_image,r.options,r.answer,r.explanation\n'
sql += 'FROM jsonb_to_recordset($correios$' + json.dumps(all_records, ensure_ascii=False, separators=(',', ':')) + '$correios$::jsonb)\n'
sql += 'AS r(slug text,number integer,subject text,text text,support text,support_image text,options jsonb,answer text,explanation text)\n'
sql += 'JOIN public.exams e ON e.slug=r.slug\n'
sql += 'ON CONFLICT (exam_id,number) DO UPDATE SET subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,options=excluded.options,answer=excluded.answer,explanation=coalesce(nullif(questions.explanation,\'\'),excluded.explanation);\nCOMMIT;\n'
(ROOT / 'supabase/seed-correios-2011.sql').write_text(sql, encoding='utf-8')
print('Prepared', len(all_records), 'questions,', sum(bool(q['support_image']) for q in all_records), 'with supporting images.')
