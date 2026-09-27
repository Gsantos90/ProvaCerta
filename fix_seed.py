import sys

file_path = r"c:\Users\Pcgamer\Desktop\Novo projeto IA\Projeto estudo\supabase\seed-pism-2024.sql"

with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

changes = []

fixes = [
    # pism-2024-1
    (
        'discurso direto, ao fazer a introducao de um pensamento',
        'discurso direto, ao fazer a introdução de um pensamento de preocupação da mãe com seu filho. Leia o post a seguir, Texto II, e relacione-o à letra de canção de Emicida para responder a"',
        'discurso direto, ao fazer a introdução de um pensamento de preocupação da mãe com seu filho."',
        "Q2 E 2024-1"
    ),
    (
        'sua estatura. Pro Reitoria',
        'no texto V, em "a D. da casa é uma dondoca mesquinha", o uso do diminutivo sugere que a doméstica não trata sua patroa com respeito por referir-se a ela diminuindo sua aparência física, isto é, sua estatura. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 1º Dia GEOGRAFIA OBJETIVAS"',
        'no texto V, em "a D. da casa é uma dondoca mesquinha", o uso do diminutivo sugere que a doméstica não trata sua patroa com respeito por referir-se a ela diminuindo sua aparência física, isto é, sua estatura."',
        "Q5 E 2024-1"
    ),
    (
        'para esta area. Pro Reitoria',
        'o Fenômeno El Niño provocou a diminuição das temperaturas no Centro-Sul do Brasil, atraindo a Massa Tropical Continental, quente e seca, para esta área. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 1º Dia Fonte: IBGE, 2024."',
        'o Fenômeno El Niño provocou a diminuição das temperaturas no Centro-Sul do Brasil, atraindo a Massa Tropical Continental, quente e seca, para esta área."',
        "Q6 E 2024-1"
    ),
    (
        'Cerrado. Pro Reitoria de Graduacao',
        'Chapadões Florestados, Caatinga e Cerrado. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 1º Dia MATEMáTICA OBJETIVAS"',
        'Chapadões Florestados, Caatinga e Cerrado."',
        "Q10 E 2024-1"
    ),
    # pism-2024-2
    (
        'BIOLOGIA OBJETIVAS"',
        'A "Escrevivência" se observa na representação do sofrimento de Ponciá Vicêncio que, ao mesmo tempo, vislumbra a possibilidade de uma nova forma de vida e existência. BIOLOGIA OBJETIVAS"',
        'A "Escrevivência" se observa na representação do sofrimento de Ponciá Vicêncio que, ao mesmo tempo, vislumbra a possibilidade de uma nova forma de vida e existência."',
        "Q5 E 2024-2"
    ),
    (
        'intracelulares. Pró Reitoria',
        'transportam as proteínas para os compartimentos intracelulares. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia"',
        'transportam as proteínas para os compartimentos intracelulares."',
        "Q6 E 2024-2"
    ),
    (
        'Miosina. Pró Reitoria',
        'Miosina. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia"',
        'Miosina."',
        "Q9 E 2024-2"
    ),
    (
        'Ribose. FíSICA',
        'Ribose. FíSICA OBJETIVAS Considere g = 10, 0m/s2"',
        'Ribose."',
        "Q10 E 2024-2"
    ),
    (
        't = 20 s Pró Reitoria',
        'O ciclista A alcança B em t = 20 s Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia"',
        'O ciclista A alcança B em t = 20 s."',
        "Q12 E 2024-2"
    ),
    (
        'HISTóRIA OBJETIVAS"',
        'a energia potencial gravitacional e a energia cinética da bola serão iguais na iminência de tocar o solo. HISTóRIA OBJETIVAS"',
        'a energia potencial gravitacional e a energia cinética da bola serão iguais na iminência de tocar o solo."',
        "Q15 E 2024-2"
    ),
    (
        'Observe a tabela abaixo para responder a"',
        'Mosteiros se tornaram os principais centros de educação na Alta Idade Média e espaços de produção de livros, material religioso-didático, com transcrição de manuscritos e traduções de obras da antiguidade. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia Observe a tabela abaixo para responder a"',
        'Mosteiros se tornaram os principais centros de educação na Alta Idade Média e espaços de produção de livros, material religioso-didático, com transcrição de manuscritos e traduções de obras da antiguidade."',
        "Q16 E 2024-2"
    ),
    (
        'atual. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia"',
        'O quilombismo é uma organização social de negros que nega a existência de relações racistas na sociedade atual. Pró Reitoria de Graduação Coordenação Geral de Processos Seletivos Pism 2025 Módulo 1 2º Dia"',
        'O quilombismo é uma organização social de negros que nega a existência de relações racistas na sociedade atual."',
        "Q18 E 2024-2"
    ),
]

for hint, old, new, label in fixes:
    if old in content:
        content = content.replace(old, new)
        changes.append("FIXED: " + label)
    else:
        changes.append("NOT FOUND: " + label + " (hint: " + hint + ")")

# Q3 E 2024-1: special case - multiline content via index search
marker_q3 = '"Na São Paulo das manhã que tem lá seus Vietnã". A seguir'
end_q3 = 'Leia-o com atenção para responder a"'
if marker_q3 in content and end_q3 in content:
    i = content.index(marker_q3)
    j = content.index(end_q3) + len(end_q3)
    full_old = content[i:j]
    content = content.replace(full_old, '"Na São Paulo das manhã que tem lá seus Vietnã".')
    changes.append('FIXED: Q3 E 2024-1')
else:
    changes.append('NOT FOUND: Q3 E 2024-1')

# Q15 E 2024-1: single quote issue in JSON
marker_q15_1 = "8 m2 ' Pró Reitoria"
if marker_q15_1 in content:
    i = content.index('"8 m2')
    j = content.index('prova."', i) + len('prova."')
    full_old = content[i:j]
    content = content.replace(full_old, '"8 m²"')
    changes.append('FIXED: Q15 E 2024-1')
else:
    changes.append('NOT FOUND: Q15 E 2024-1')

# Q1 E 2024-2: trailing TEXTO II
marker_q1_2 = 'restaurando seu estado de espírito inicial. TEXTO II'
if marker_q1_2 in content:
    i = content.index('A partir da última estrofe, embora o sujeito poético')
    j = content.index('Biscoito Fino, 2017. CD, (2:47)."') + len('Biscoito Fino, 2017. CD, (2:47)."')
    full_old = content[i:j]
    content = content.replace(full_old, 'A partir da última estrofe, embora o sujeito poético pareça denunciar a violência praticada no navio, há uma impressão de pacificação entre a multidão, restaurando seu estado de espírito inicial."')
    changes.append('FIXED: Q1 E 2024-2')
else:
    changes.append('NOT FOUND: Q1 E 2024-2')

# Q2 E 2024-2: trailing TEXTO III
marker_q2_2 = 'desigualdade social no Brasil. TEXTO III Luísa Mahin'
if marker_q2_2 in content:
    i = content.index('O poema de Castro Alves descreve os horrores')
    j = content.index('Fonte: ARRAES, Jarid. Heroínas negras brasileiras: em 15 cordéis. São Paulo: Pólen, 2017."') + len('Fonte: ARRAES, Jarid. Heroínas negras brasileiras: em 15 cordéis. São Paulo: Pólen, 2017."')
    full_old = content[i:j]
    content = content.replace(full_old, 'O poema de Castro Alves descreve os horrores praticados e sofridos em um navio negreiro, enquanto a canção de Chico Buarque limita-se a uma crítica direcionada apenas à desigualdade social no Brasil."')
    changes.append('FIXED: Q2 E 2024-2')
else:
    changes.append('NOT FOUND: Q2 E 2024-2')

# Q3 E 2024-2: trailing TEXTO IV
marker_q3_2 = 'Respeitando sua fama". TEXTO IV O Canto'
if marker_q3_2 in content:
    i = content.index('"Não há gente tão insana / Nem caravana do Arará / Não há, não há"')
    j = content.index('Pism 2025 Módulo 1 2º Dia"', i) + len('Pism 2025 Módulo 1 2º Dia"')
    full_old = content[i:j]
    content = content.replace(full_old, '"Não há gente tão insana / Nem caravana do Arará / Não há, não há"e "Poeta e abolicionista / \\"De imensurável chama / E por ele foi citada / Respeitando sua fama"."')
    changes.append('FIXED: Q3 E 2024-2')
else:
    changes.append('NOT FOUND: Q3 E 2024-2')

# Q4 E 2024-2: trailing TEXTO V
marker_q4_2 = 'mãeáfrica!" . TEXTO V Ponciá'
if marker_q4_2 in content:
    i = content.index('Sinestesia, como se lê em')
    j = content.index('Fonte: EVARISTO, Conceição. Ponciá Vicêncio. Belo Horizonte: Mazza, 2003, p. 33."') + len('Fonte: EVARISTO, Conceição. Ponciá Vicêncio. Belo Horizonte: Mazza, 2003, p. 33."')
    full_old = content[i:j]
    content = content.replace(full_old, 'Sinestesia, como se lê em: \\"Chorando de dor, ó mãe África!\\"."')
    changes.append('FIXED: Q4 E 2024-2')
else:
    changes.append('NOT FOUND: Q4 E 2024-2')

# Q20 E 2024-2: huge trailing text
marker_q20_2 = 'resistência em integrar os nativos. TEXTO I'
if marker_q20_2 in content:
    i = content.index('O projeto de escravização de africanos foi caracterizado')
    j = content.index('BIOLOGIA DISSERTATIVAS 1) O processo de divisão celular denominado mitose') + len('BIOLOGIA DISSERTATIVAS 1) O processo de divisão celular denominado mitose é responsável por diversos processos, tais como o desenvolvimento embrionário e a reposição celular em animais, o crescimento em plantas, entre outros. Sobre a mitose responda."')
    full_old = content[i:j]
    content = content.replace(full_old, 'O projeto de escravização de africanos foi caracterizado pela defesa da miscigenação entre negros e brancos e pela resistência em integrar os nativos."')
    changes.append('FIXED: Q20 E 2024-2')
else:
    changes.append('NOT FOUND: Q20 E 2024-2')

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)

for c in changes:
    print(c)
