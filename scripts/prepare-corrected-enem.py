"""Reviewed content corrections and a transactional, repeatable Supabase query."""
import json
import re
from pathlib import Path
D=Path('pdf-extracts/enem-migration')

def tidy(s):
    s=s.replace('\uf02b','+').replace('\uf0de','→').replace('\uf072','').replace('\ufffc','')
    return re.sub(r'[\x00-\x08\x0b-\x1f]', '', s).strip()

def separate(row, command):
    old=row['text']
    if command in old and old!=command:
        before, after=old.split(command,1)
        if before.strip():
            row['support']+='\n\n'+before.strip()
        if after.strip() and len(after.strip())>30:
            row['support']+='\n\n'+after.strip()
    row['support']=row['support'].replace(command,'').strip()
    row['text']=command

all_rows=[]
for year in [2022,2023,2025]:
    rows=json.loads((D/f'{year}-structured-draft.json').read_text(encoding='utf-8'))
    audit={a['number']:a for a in json.loads((D/f'{year}-structure-audit.json').read_text(encoding='utf-8'))}
    dataset={}
    if year<2025:
        for d in map(json.loads,(D/f'{year}.jsonl').read_text(encoding='utf-8').splitlines()):
            dataset[' '.join(d['question'].replace('[[placeholder]]','').split())]=d
    for row in rows:
        a=audit[row['number']]
        if year<2025 and a.get('answer_matches') and row.get('dataset_question'):
            d=dataset.get(' '.join(row['dataset_question'].split()))
            if d is not None and (d['label']==row['answer'] or row['answer']=='A/B/C/D/E'):
                row['options']=d['alternatives']
            parts=[p.strip() for p in row['dataset_question'].replace('[[placeholder]]','').splitlines() if p.strip()]
            command=parts[-1]
            context='\n\n'.join(parts[:-1])
            citations=[p for p in a['body'] if re.search(r'Disponível|Acesso em|^[A-ZÁÉÍÓÚÇ]{3,},',p)]
            if context:
                row['support']=context
                for p in citations:
                    if p not in row['support'] and len(p)<650:
                        row['support']+='\n\n'+p
                row['text']=command
            else:
                separate(row,command)
        row['options']=[f'Figura {chr(65+i)} (ver imagens de apoio).' if '[[placeholder]]' in o or o.startswith('Figura ') else tidy(o) for i,o in enumerate(row['options'])]
    by={q['number']:q for q in rows}
    if year==2022:
        ds={d['id']:d for d in map(json.loads,(D/'2022.jsonl').read_text(encoding='utf-8').splitlines())}
        q=by[108];ps=[p for p in ds['questao_123']['question'].replace('[[placeholder]]','').splitlines() if p.strip()]
        q['support']='\n\n'.join(ps[:-1]);q['text']='O esquema que representa corretamente todas as forças que atuam sobre a muleta quando ela atinge o ângulo crítico é:'
        q['options']=[f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE']
        by[16]['support']='MANUAL DE ORIENTAÇÃO\nO primeiro guia prático da Sociedade Brasileira de Pediatria para ajudar pais e pediatras no desafio de educar nativos digitais.\n\nTRABALHO DE BASE\n\nAté 2 anos: A criança não deve ser exposta passivamente às telas — TV, tablet, celular etc. —, principalmente durante as refeições e até 2 horas antes de dormir.\n\nDe 2 a 5 anos: O tempo de exposição às telas deve ser limitado a 1 hora por dia. Crianças dessa faixa etária devem ser mais protegidas da violência virtual, pois não sabem separar fantasia de realidade.\n\nAté 10 anos: Devem ter acesso controlado a computadores e dispositivos móveis. Crianças de até 10 anos não devem usar TV ou computador no próprio quarto.\n\nDisponível em: https://tab.uol.com.br. Acesso em: 25 ago. 2017 (adaptado).'
        separate(by[158],'A planificação do cubo da Figura 2, conforme o tipo de planificação apresentada na Figura 1, é')
        by[135]['options']=['1','2','3','4','5']
        by[151]['options']=['1','2','3','4','5']
        by[168]['text']='Qual foi o número total de candidatos inscritos nesse processo seletivo?'
        by[168]['support']='Uma instituição de ensino superior ofereceu vagas em um processo seletivo de acesso a seus cursos. Finalizadas as inscrições, foi divulgada a relação do número de candidatos por vaga em cada um dos cursos oferecidos. Esses dados são apresentados no quadro.\n\nCurso — vagas oferecidas — candidatos por vaga:\nAdministração — 30 — 6\nCiências Contábeis — 40 — 6\nEngenharia Elétrica — 50 — 7\nHistória — 30 — 8\nLetras — 25 — 4\nPedagogia — 25 — 5'
        by[163]['support']='O professor de artes orientou seus estudantes a realizarem a seguinte sequência de atividades:\n\n• Dobrar uma folha de papel em formato quadrado duas vezes, em sequência, ao longo das linhas tracejadas, conforme ilustrado nas figuras 1 e 2, para obter o papel dobrado, conforme Figura 3.\n\n• Em seguida, no papel dobrado da Figura 3, considerar o ponto R, sobre o segmento OM, sendo M o ponto médio do lado do quadrado original, de modo que OR = (1/4) OM, traçar um arco de circunferência de raio medindo (1/2) OM com centro no ponto R, obtendo a Figura 4. Por último, recortar o papel ao longo do arco de circunferência e excluir a parte que contém o setor circular, obtendo o papel dobrado, conforme Figura 5.'
    if year==2023:
        by[97]['options']=['756.','533.','76.','53.','13.']
        by[102]['text']='Para essa academia, qual deve ser a razão M₂/M₁ informada aos usuários?'
        by[102]['options']=['1/4','1/2','1','2','4']
        separate(by[119],'Durante o processo de resfriamento, os valores de pressão em relação à temperatura (P × T) são representados pelo gráfico:')
        separate(by[129],'Qual foi o gráfico obtido pelo assistente de laboratório?')
        by[129]['support']=by[129]['support'].replace('Hg2(NO3)2 (aq) + 2 NaCl (aq) Hg2Cl2 (s)', 'Hg2(NO3)2 (aq) + 2 NaCl (aq) → Hg2Cl2 (s)')
        by[129]['support']+='\n\nMassa de NaCl adicionada: frasco I — 0,2 g; II — 0,4 g; III — 0,6 g; IV — 0,8 g; V — 1,0 g; VI — 1,2 g; VII — 1,4 g.'
        q=by[134];q['support']='Entre os medicamentos mais comuns consumidos para o alívio da dor está o ibuprofeno, um composto quiral com ação anti-inflamatória e efeito analgésico, que é comercializado como fármaco opticamente puro, ou seja, sem a mistura com outro isômero óptico. A fórmula estrutural plana do ibuprofeno é apresentada na figura.\n\nAlém do ibuprofeno, destacam-se também os princípios ativos a seguir, presentes em outros medicamentos para o alívio da dor: fenacetina, paracetamol, dipirona sódica, diclofenaco sódico e butilbrometo de escopolamina. Suas fórmulas estruturais estão nas imagens de apoio.'
        q['text']='O princípio ativo que apresenta o mesmo tipo de isomeria espacial que o ibuprofeno é o(a)'
        by[152]['text']='O oitavo número pentagonal é'
        by[152]['support']='Os números figurados pentagonais provavelmente foram introduzidos pelos pitagóricos por volta do século V a.C. As figuras ilustram como obter os seis primeiros deles, sendo os demais obtidos seguindo o mesmo padrão geométrico.\n\nPrimeiros seis números pentagonais: 1, 5, 12, 22, 35 e 51.'
        by[152]['options']=['59.','83.','86.','89.','92.']
        by[172]['support']='Uma empresa de segurança domiciliar oferece o serviço de patrulha noturna, no qual vigilantes em motocicletas fazem o monitoramento periódico de residências. A empresa conta com uma base, de onde acompanha o trajeto realizado pelos vigilantes durante as patrulhas e orienta o deslocamento de equipes de reforço quando necessário. Numa patrulha rotineira, sem ocorrências, um vigilante conduziu sua motocicleta a uma velocidade constante durante todo o itinerário estabelecido, levando 30 minutos para conclusão. De acordo com os registros do GPS alocado na motocicleta, a distância da posição do vigilante à base, ao longo do tempo de realização do trajeto, é descrita pelo gráfico.'
        by[172]['text']='A vista superior da trajetória realizada pelo vigilante durante a patrulha registrada no gráfico é descrita pela representação'
    if year==2025:
        shared=by[6]['support'].replace('De próprio punho A escrita','De próprio punho\n\nA escrita')
        position=0
        for line_number in range(1,46):
            match=re.search(r'(?<!\w)'+str(line_number)+r'\s+',shared[position:])
            assert match is not None, ('Linha ausente no texto compartilhado',line_number)
            at=position+match.start()
            shared=shared[:at].rstrip()+'\n'+shared[at:]
            position=at+len(str(line_number))+1
        for n in range(6,11):
            by[n]['support']=shared
        q=by[25];q['support']='dezenove\n\nCada vez mais somos convocados para dentro das Redes.\nMas não levamos a nossa rede e penduramos no alpendre da casa de um amigo, não sentimos o cheiro da casa enquanto o café se derrama na xícara ou ouvimos o piar dos passarinhos ou a música da chuva.\nA Rede nos convoca e o que somos lá dentro é o que somos do lado de fora?\nHá um intervalo entre este eu dentro da tela e o outro que somos?\nA palavra rede é vasta.\n\nMURRAY, R.; KLIGERMAN, E. Teias de afeto e poesia. Disponível em: https://roseanamurray.com. Acesso em: 5 maio 2024.';q['support_image']=''
        by[27]['support']='Por que falar sobre violência contra mulheres na escola?\n\nA violência de gênero afeta a vida de meninas e meninos em vários aspectos e hoje é um dos grandes empecilhos para que vivam plenamente, com segurança e qualidade de vida.\n\nMaria da Penha vai à escola. #DESAFIOigualdade. Anuário Brasileiro de Segurança Pública 2019.\n\nDisponível em: www.tjdft.jus.br. Acesso em: 15 out. 2024 (adaptado).';by[27]['support_image']=''
        by[18]['support']='Carlos Pataxicoré, aos 36 anos, médico e o futuro todo pela frente.\nQuézia Silva, aos 29 anos, advogada e o futuro todo pela frente.\n\nEM UM MUNDO DE DIFERENÇAS, ENXERGUE A IGUALDADE.\n\nO Brasil tem 31 milhões de crianças negras e indígenas. A maioria sofre com discriminação racial, sem ter acesso à educação, à saúde e ao desenvolvimento. Ajude a mudar essa realidade. Contribua para uma infância sem racismo.\n\nParticipe desta campanha. Acesse: www.unicef.org.br.\n\nDisponível em: www.unicef.org.br. Acesso em: 15 jan. 2024 (adaptado).'
        by[23]['support']='Você entra Fernando. E sai Pessoa.\n\n26ª BIENAL INTERNACIONAL DO LIVRO DE SÃO PAULO\nTodo mundo sai melhor do que entrou.\n02 a 10 de julho\nNovo local: EXPO CENTER NORTE\n\nDisponível em: www.publishnews.com.br. Acesso em: 19 set. 2024.'
        by[28]['support']='GALILEU — A CIÊNCIA AJUDA VOCÊ A MUDAR O MUNDO\nEd. 371 — fevereiro de 2023\n\nVOCÊ (NÃO) ESTÁ SOZINHO\n\nNo Brasil, metade da população se sente solitária, e a mesma sensação cresce em outras partes do mundo. Por que devemos repensar nossas relações?\n\nDisponível em: https://revistagalileu.globo.com. Acesso em: 18 jun. 2024 (adaptado).'
        by[31]['support']='Doce mistura\n\nA canjica — creme amarelo à base de milho — é prova da diversidade do Brasil, pelas variações em seu nome de batismo. Servido polvilhado com canela, o doce confunde: o que lá no norte é “canjica”, lá no sul é “curau”. Os nomes se invertem quando o doce muda. O creme branco com os grãos inteiros de milho, no sul, é “canjica” e, no norte, “curau”.\n\nNomes regionais do creme amarelo:\n• Curau (MG, SP, MT e GO);\n• Corá, piruruca, pururuca ou jimbelê (MG);\n• Canjiquinha (RJ);\n• Coral e papa de milho (RJ, MG);\n• Canjica de milho verde (BA).\n\nRevista Língua Portuguesa, n. 31, maio 2008 (adaptado).'
        separate(by[103],'O comportamento da força de atrito entre a caixa e o chão no plano inclinado é representado em:')
        by[115]['support']='O nível sonoro, em decibel (dB), é calculado pela expressão:\n\nn = 10 log10(I/I0).\n\nUma conversa normal entre duas pessoas gera sons de níveis sonoros entre 50 e 60 dB, enquanto pessoas gritando podem gerar sons de níveis superiores a 100 dB. Supondo que, no centro de um estádio de futebol, foram realizadas medidas para avaliar o ruído médio de uma pessoa gritando a palavra “gol” em diferentes posições das arquibancadas. O valor médio obtido, considerando um grande número de medidas, foi de 100 dB. Com esse dado, estimou-se o ruído sonoro produzido por 10 000 pessoas, distribuídas aleatoriamente nas arquibancadas, enquanto gritavam simultaneamente a palavra “gol”.'
        by[144]['text']='A figura que apresenta as projeções ortogonais desse cubo sobre os três planos coordenados, após efetuar as movimentações descritas, é'
        by[144]['support']='Em um jogo de computador, um cubo se encontra inicialmente posicionado conforme indicado na figura.\n\nCada deslocamento efetuado por esse cubo se dá sempre em uma das direções definidas pelos três eixos coordenados. Ao se movimentar a partir da posição inicial, esse cubo se aproximou 3 unidades do plano yz, se afastou 5 unidades do plano xz e se aproximou 4 unidades do plano xy.'
        by[145]['options']=['30/90','36/100','40/100','40/90','46/90']
        by[154]['options']=['1/2','1/10','1/16','1/24','1/256']
        by[159]['options']=['D = 2,5 + tg[30(T − (5 − 2π)/2)]','D = 4 + tg[30(T + 5/2)]','D = 4 + tg[2,5(T + (5 + 2π)/2)]','D = 30 + tg[(1/2)(T − 5)]','D = 30 + tg[(1/2)(T − 5/2)]']
        by[164]['options']=['T = 1,59 + F','F = 1,59 + T','T/F = 1,59','F/T = 1,59','F · T = 1,59']
        by[167]['support']='A produtividade de soja em uma área cultivada é a média da quantidade de sacas de 50 quilogramas que são produzidas por hectare. O quadro apresenta a área cultivada e a produtividade de soja em certa propriedade, ao longo de cinco safras, com períodos de um ano, de 2011 a 2016.\n\nSafra 11-12: área cultivada 200 hectares; produtividade 40 sacas de 50 kg por hectare.\nSafra 12-13: área cultivada 220 hectares; produtividade 30 sacas de 50 kg por hectare.\nSafra 13-14: área cultivada 250 hectares; produtividade 45 sacas de 50 kg por hectare.\nSafra 14-15: área cultivada 250 hectares; produtividade 45 sacas de 50 kg por hectare.\nSafra 15-16: área cultivada 200 hectares; produtividade 50 sacas de 50 kg por hectare.'
        by[169]['options']=['Artur, com probabilidade de 2/3','João, com probabilidade de 4/9','Artur, com probabilidade de 91/216','João, com probabilidade de 91/216','Artur, com probabilidade de 125/216']
        by[170]['options']=['cd/m²','m²/cd','cd/m','m/cd','m/cd²']
        separate(by[171],'Ao final da rodada n, qual é a expressão algébrica que representa o número de moedas do jogador na posição 1?')
        by[176]['options']=['10^0,5','10^8','(10^2,5)/84','(10^2,5)/99','25 × 10^−2']
        for n in [101,102,103,113,125,129,144,167]:
            by[n]['options']=[f'Figura {l} (ver imagens de apoio).' for l in 'ABCDE']
    rows.sort(key=lambda q:q['number'])
    for q in rows:
        for field in ['text','support']:
            q[field]=tidy(q[field])
        q['options']=[tidy(o) for o in q['options']]
        q['graphical_options']=any(o.startswith('Figura ') for o in q['options'])
        assert q['text'] and len(q['options'])==5 and all(q['options']), (year,q['number'])
        assert not any('[[placeholder]]' in q[k] for k in ['text','support'])
        assert 'leia o enunciado' not in q['text']
        all_rows.append(dict(slug=f'enem-{year}',**{k:q[k] for k in ['number','subject','text','support','support_image','options','answer','explanation']}))
    (D/f'{year}-questions.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
    print(year,len(rows),'questões; imagens de apoio:',sum(bool(q['support_image']) for q in rows))

def query(rows):
    years=sorted({int(q['slug'].split('-')[1]) for q in rows})
    header="-- Conteúdo conferido nos cadernos amarelos oficiais do Inep.\n-- Preserva IDs e explicações existentes; não altera schema nem permissões.\nbegin;\n"
    exams="insert into public.exams (slug,title,source,year) values "+','.join(f"('enem-{y}','ENEM {y} - Prova Objetiva','enem','{y}')" for y in years)+" on conflict (slug) do update set title=excluded.title,source=excluded.source,year=excluded.year;\n"
    data=json.dumps(rows,ensure_ascii=False,separators=(',',':'))
    assert '$enem_json$' not in data
    insert="""do $verified_update$
declare affected integer;
begin
 insert into public.questions as existing (exam_id,number,subject,text,support,support_image,options,answer,explanation)
 select e.id,r.number,r.subject,r.text,r.support,nullif(r.support_image,''),r.options,r.answer,r.explanation
 from jsonb_to_recordset($enem_json$"""+data+"""$enem_json$::jsonb) as r(slug text,number integer,subject text,text text,support text,support_image text,options jsonb,answer text,explanation text)
 join public.exams e on e.slug=r.slug
 on conflict (exam_id,number) do update set
 subject=excluded.subject,text=excluded.text,support=excluded.support,support_image=excluded.support_image,
 options=excluded.options,answer=excluded.answer,
 explanation=coalesce(nullif(existing.explanation,''),excluded.explanation);
 get diagnostics affected=row_count;
 if affected <> """+str(len(rows))+""" then
  raise exception 'Atualização incompleta: % questões',affected;
 end if;
end $verified_update$;
commit;
"""
    return header+exams+insert

Path('supabase/update-enem-content-2022-2023-2025.sql').write_text(query(all_rows),encoding='utf-8')
for year in [2022,2023,2025]:
    Path(f'supabase/seed-enem-{year}.sql').write_text(query([q for q in all_rows if q['slug']==f'enem-{year}']),encoding='utf-8')
# The primary import now has the same reviewed content, without touching 2024.
Path('supabase/import-enem-2022-2023-2025.sql').write_text(query(all_rows),encoding='utf-8')
print('Query reexecutável gerada: 555 questões; ENEM 2024 não alterado.')
