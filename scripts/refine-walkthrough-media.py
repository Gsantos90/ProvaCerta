"""Extract reviewed figure-only regions for Destrinchando; keep exam originals intact.

Requires Pillow. Crop coordinates are recorded in the fixture in a reference-width
preview, so extraction preserves the source resolution rather than scaling it down.
"""
import json
from pathlib import Path
from PIL import Image, ImageChops

ROOT = Path(__file__).resolve().parents[1]
config = json.loads((ROOT / 'scripts/fixtures/walkthrough-support-media.json').read_text(encoding='utf8'))

for crop in config['crops']:
    with Image.open(ROOT / ('public' + crop['source'])) as source:
        im = source.convert('RGB')
        if crop.get('rotate'):
            im = im.rotate(crop['rotate'], expand=True)
        if crop.get('box'):
            scale = im.width / crop['referenceWidth']
            box = tuple(round(value * scale) for value in crop['box'])
            assert 0 <= box[0] < box[2] <= im.width and 0 <= box[1] < box[3] <= im.height, crop
            im = im.crop(box)
        if crop.get('trim'):
            ink = ImageChops.difference(im, Image.new('RGB', im.size, 'white')).convert('L').point(lambda value: 255 if value > 35 else 0)
            bounds = ink.getbbox()
            assert bounds, crop
            im = im.crop((max(0,bounds[0]-12),max(0,bounds[1]-12),min(im.width,bounds[2]+12),min(im.height,bounds[3]+12)))
        target = ROOT / ('public' + crop['output'])
        target.parent.mkdir(parents=True, exist_ok=True)
        im.save(target, optimize=True)

for filename in ['walkthroughQuestions.json', 'walkthroughInstitutionQuestions.json']:
    path = ROOT / 'src/lib' / filename
    questions = json.loads(path.read_text(encoding='utf8'))
    for question in questions:
        figures = []
        for image in question.get('supportImages', []):
            figures.extend(config['replacements'].get(image, [image]))
        question['supportImages'] = list(dict.fromkeys(figures))
    path.write_text(json.dumps(questions, ensure_ascii=False, indent=2) + '\n', encoding='utf8')

print(f"{len(config['crops'])} figure-only extracts prepared; {len(config['replacements'])} media references reviewed.")
