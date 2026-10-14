"""Extract only visual regions from the already rendered official PDF. No database writes."""
from pathlib import Path
from PIL import Image
import json

root=Path('public/uerj-2026-eq2')
# Coordinates in a 280 px wide preview, reviewed against the original caderno.
regions={
6:(70,41,240,96),8:(28,9,280,264),13:(30,0,125,115),
28:(85,28,224,99),29:(100,28,202,108),31:(95,20,200,110),
32:(90,35,218,106),33:(90,34,210,103),35:(90,32,218,108),
42:(43,30,272,192),47:(30,0,280,200),48:(85,0,245,132),
49:(30,0,280,210),50:(50,0,260,295),52:(140,0,280,95),
53:(30,0,280,175),54:(80,0,230,150),56:(80,0,220,80),
60:(70,0,235,120),
}
media={}
for n,box in regions.items():
 im=Image.open(root/f'q{n}.png');scale=im.width/280
 im.crop(tuple(round(v*scale) for v in box)).save(root/f'figura-q{n}.png')
 media[n]=[f'/uerj-2026-eq2/figura-q{n}.png']
for name,source,box,numbers in [
 ('glicemia','apoio-p22.png',(340,260,950,580),[38,39]),
 ('agua','apoio-p24.png',(250,230,1080,535),[43,44]),
 ('mapa-q59','q59.png',(190,35,1063,755),[59]),
 ('curvas-q59','q59.png',(110,855,1063,1250),[59]),
]:
 Image.open(root/source).crop(box).save(root/f'{name}.png')
 for n in numbers:media.setdefault(n,[]).append(f'/uerj-2026-eq2/{name}.png')
for n in [5,37,45]:media.setdefault(n,[]).append('/uerj-2026-eq2/apoio-p39.png')
Path('src/lib/uerjObjectiveMedia.js').write_text('''// Presentation only: preserves all original database records.
const figures = '''+json.dumps(media,indent=2)+'''

export function uerjObjectiveMedia(slug, number, support) {
  if (slug !== 'uerj-2026-eq2') return {}
  let text = support?.startsWith('Enunciado e alternativas originais no apoio oficial.') ? null : support
  const note = number === 19 ? 'Trecho sublinhado: “Pura imitação: como em geral os poetas da civilização, ele não recebia da realidade essas impressões, e sim de uma variada leitura.”' : number === 26 ? 'Palavras sublinhadas no enunciado: “as” em “as we live” e “as” em “seen as”.' : null
  if (note && !text?.includes(note)) text = [text, note].filter(Boolean).join('\\n\\n')
  return { support: text, supportImage: figures[number] || null }
}
''',encoding='utf8')
print('Visual regions extracted; database untouched.')
