"""Extract the illustrated supports from official UERJ commented cadernos."""
from pathlib import Path
import pdfplumber
regions={
 2025:{2:(3,(202,118,695,271)),3:(4,(252,110,489,294)),4:(5,(182,140,700,396)),5:(6,(138,244,669,432)),6:(7,(178,145,698,474)),7:(8,(130,138,700,363)),10:(11,(294,148,510,345))},
 2026:{1:(3,(126,144,700,436)),2:(4,(154,204,700,469)),3:(5,(212,165,700,374)),4:(6,(167,154,700,431)),5:(7,(201,149,700,375)),6:(8,(228,120,572,425))},
}
Path('public/uerj-discursivas').mkdir(exist_ok=True)
for year,items in regions.items():
 with pdfplumber.open(f'public/provas/uerj/{year}-discursivo-comentado.pdf') as pdf:
  for n,(page,bounds) in items.items():
   p=pdf.pages[page-1];x0,y0,x1,y1=bounds
   p.crop((x0*p.width/727,y0*p.height/975,x1*p.width/727,y1*p.height/975)).to_image(resolution=170).save(f'public/uerj-discursivas/{year}-biologia-q{n}.png')
print('13 apoios extraídos.')
