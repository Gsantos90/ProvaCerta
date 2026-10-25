"""Extract independent Type 1 keys from FGV definitive/rectified answer grid."""
import json
import re
from pathlib import Path

D = Path('pdf-extracts/inss-cnu-2025')
text = (D/'gabarito.txt').read_text(encoding='utf8')
keys = {}
for block in ['1','3','4','5']:
    heading = next(l for l in text.splitlines() if re.match(r'Bloco (?:Temático )?'+block+r' -',l.strip()) and 'TIPO 1' in l)
    section = text.split(heading,1)[1].split('Bloco ',1)[0]
    answers = []
    for line in section.splitlines():
        tokens = line.split()
        if tokens and all(token in ['A','B','C','D','E','*'] for token in tokens): answers.extend(tokens)
    assert len(answers) == 90, (block, len(answers))
    keys[block] = answers
(D/'keys.json').write_text(json.dumps(keys,indent=2)+'\n',encoding='utf8')
print('FGV: 4 gabaritos tipo 1, 90 respostas cada.')
