"""Preserve all five option graphs, including vector curves absent from raster extraction."""
from pathlib import Path
import pypdfium2 as pdfium

ROOT = Path(__file__).resolve().parents[1]
# Coordinates relative to the PDF crop box, matching PDFium's rendered page.
OPTION_PANELS = (
    ('q101-support-2-1.png', (291, 106, 538, 359)),  # A and B
    ('q101-support-2-2.png', (291, 360, 538, 739)),  # C, D and E
)
PAGE_PANELS = {
    4: OPTION_PANELS,
    5: (
        ('q103-support-1-1.png', (285, 231, 540, 434)),  # A, B
        ('q103-support-1-2.png', (285, 435, 540, 637)),  # C, D
        ('q103-support-1-3.png', (285, 638, 540, 739)),  # E
    ),
    9: (
        ('q113-support-1-1.png', (21, 289, 164, 365)),
        ('q113-support-1-2.png', (21, 380, 164, 457)),
        ('q113-support-1-3.png', (21, 470, 164, 549)),
        ('q113-support-1-4.png', (21, 562, 164, 640)),
        ('q113-support-1-5.png', (21, 653, 164, 731)),
    ),
    12: (
        ('q125-support-1-1.png', (358, 197, 478, 244)),
        ('q125-support-1-2.png', (290, 347, 410, 504)),  # A, B
        ('q125-support-1-3.png', (290, 505, 410, 664)),  # C, D
        ('q125-support-1-4.png', (290, 665, 410, 741)),  # E
    ),
    18: (
        ('q144-support-1-1.png', (198, 108, 380, 259)),  # Initial cube
        ('q144-support-1-2.png', (28, 333, 205, 733)),  # A, B, C
        ('q144-support-2-1.png', (289, 333, 469, 600)),  # D, E
    ),
}

def repair():
    pdf = pdfium.PdfDocument(ROOT / 'pdf-extracts/enem-migration/2025-dia-2.pdf')
    for page_number, panels in PAGE_PANELS.items():
        page = pdf[page_number - 1]
        image = page.render(scale=2).to_pil()
        for filename, bbox in panels:
            image.crop(tuple(coordinate * 2 for coordinate in bbox)).save(ROOT / 'public/enem-2025' / filename)
        page.close()
    pdf.close()

if __name__ == '__main__':
    repair()
    print('ENEM 2025: gráficos completos nas questões 101, 103, 113, 125 e 144.')
