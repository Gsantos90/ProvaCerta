"""Package native text, curated answer variants and figure-only media for ITA 2nd phase."""
import json, hashlib
from pathlib import Path
import pypdfium2 as pdfium
from ita_2026_second_content import QUESTIONS
from ita_2026_second_portuguese import PORTUGUESE, ESSAY
from ita_2026_content import CHEMISTRY_SUPPORT

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'public/provas/ita/2026/segunda-fase'
supports=json.loads((ROOT/'docs/ita-2026-2f-apoios.json').read_text(encoding='utf8'))
docs={}
def crop(kind,page,box,name):
    if kind not in docs: docs[kind]=pdfium.PdfDocument(str(OUT/f'{kind}.pdf'))
    picture=docs[kind][page-1].render(scale=2).to_pil().convert('RGB')
    picture.crop(box).save(OUT/name,optimize=True)
    return '/provas/ita/2026/segunda-fase/'+name

figures={
 ('Física',1):('fisica',2,[445,695,760,945],'Rodas cônicas do trem apoiadas nos trilhos e ângulo θ.'),
 ('Física',2):('fisica',3,[280,535,910,860],'Barra no plano inclinado, apoios A e B, massas e distâncias indicadas.'),
 ('Física',3):('fisica',4,[420,515,760,990],'Haste presa ao pivô, eixos x e y, distância a e ângulo θ.'),
 ('Química',8):('quimica',10,[267,375,925,685],'Motor-foguete com turbobomba, pré-câmara, câmara e tubeira.'),
 ('Química',9):('quimica',11,[247,495,945,925],'Célula eletrolítica em U antes e depois da eletrólise, com regiões azul e alaranjada.'),
}
math_support='Convenções: ℕ = {1, 2, 3, …}; ℝ é o conjunto dos reais; ℂ é o conjunto dos complexos. AB denota o segmento entre A e B; m(AB), seu comprimento. Em matrizes digitadas, ponto e vírgula separa as linhas.'
chem_support=CHEMISTRY_SUPPORT.split('Massas molares')[0].replace('0 °C e 1 atm','0 °C e 1 atm, equivalente a 22,4 L de gás ideal')
chem_support+='\nln 3 = 1,099; ln 5 = 1,609; log 2 = 0,301; e^(−0,3465) = 0,707; √3 = 1,73; √5 = 2,24.\n\nMassas molares — elemento (número atômico): g·mol⁻¹\n'
chem_support+='\n'.join(f'{s} ({z}): {m}' for s,z,m in [
 ('H',1,'1,01'),('B',5,'10,80'),('C',6,'12,01'),('N',7,'14,01'),('O',8,'16,00'),('F',9,'19,00'),
 ('Na',11,'22,99'),('Si',14,'28,09'),('S',16,'32,06'),('Cl',17,'35,45'),('K',19,'39,10'),
 ('Ca',20,'40,08'),('Cr',24,'52,00'),('Fe',26,'55,85'),('Ni',28,'58,69'),('Cu',29,'63,55'),
 ('Nb',41,'92,91'),('Ag',47,'107,87'),('Pt',78,'195,08'),('Au',79,'196,97'),('Hg',80,'200,59'),('Bi',83,'208,98')])
for question in QUESTIONS:
    question['support']=math_support if question['subject']=='Matemática' else chem_support if question['subject']=='Química' else 'Quando necessário: g = 10 m/s²; μ₀ = 4π·10⁻⁷ N·A⁻¹ (unidade impressa no caderno; dimensionalmente μ₀ se expressa em N·A⁻²).'
    data=figures.get((question['subject'],question['originalNumber']))
    if data:
        kind,page,box,alt=data
        question['image']=crop(kind,page,box,f'figura-{kind}-{question["originalNumber"]}.png')
        question['imageAlt']=alt
    question['referenceKind']='Referência editorial de treino; resolução consultada: Etapa. Não é espelho oficial de correção.'
for question in PORTUGUESE+[ESSAY]:
    question['support']=supports[question.pop('supportKey')]
    question['referenceKind']='Gabarito oficial do ITA.' if question['kind']=='objective' else 'Revisão orientada, sem nota automática.'
paintings=[(11,[280,119,828,558]),(11,[253,743,690,1364]),(12,[253,119,760,558]),(12,[247,711,780,1208]),(13,[241,119,775,548])]
PORTUGUESE[12]['optionImages']=[crop('portugues',page,box,f'portugues-13-{chr(65+i)}.png') for i,(page,box) in enumerate(paintings)]
questions=QUESTIONS+PORTUGUESE+[ESSAY]
assert len(questions)==46 and [q['number'] for q in questions]==list(range(1,47))
exam=dict(slug='ita-2026-fase-2',title='ITA 2026 · 2ª fase',contentVersion=1,questions=questions)
(OUT/'catalogo.json').write_text(json.dumps(exam,ensure_ascii=False,indent=2),encoding='utf8')
sources=dict(index='https://vestibular.ita.br/provas.htm',official={kind:f'https://vestibular.ita.br/provas/{kind}_2026_2f.pdf' for kind in ['matematica','quimica','fisica','portugues']},
 answerKey='https://vestibular.ita.br/provas/gabarito_2026_2f.pdf',solutions={kind:f'https://etaparesolve.etapa.com.br/ita/2026/{i}/12/0' for kind,i in [('matematica',708),('quimica',709),('fisica',710)]},
 sha256={f.name:hashlib.sha256(f.read_bytes()).hexdigest() for f in OUT.glob('*.pdf')})
(ROOT/'docs/ita-2026-2f-sources.json').write_text(json.dumps(sources,indent=2),encoding='utf8')
print(f'{len(questions)} questões: 30 dissertativas, 15 objetivas e redação; {sum(len(q["fields"]) for q in QUESTIONS)} campos de resposta.')
