import fitz,re,sys
from pathlib import Path
sys.stdout.reconfigure(encoding='utf8');D=Path('pdf-extracts/national')
for name in ['578_PRF_ING_01.PDF','578_PRF_001_01.PDF','440_PRF_001_00_PAG_9.PDF','DPRF13_001_01.pdf','988_CPNUJE_CB5_01.PDF','988_CPNUJE_019_01.PDF','rfb2023-1.pdf','rfb2023-2.pdf','rfb2014-p1-prova.pdf','rfb2012-p1-prova.pdf','tse2012-prova.pdf','tse2007-prova.pdf']:
 d=fitz.open(D/name);found=[]
 for pi,p in enumerate(d):
  for b in p.get_text('dict')['blocks']:
   for l in b.get('lines',[]):
    x,y,x1,y1=l['bbox'];ss=l['spans'];t=''.join(s['text']for s in ss).strip();m=None
    if name.startswith(('578','440','DPRF','988')):
     first=ss[0];v=first['text'].strip()
     if re.fullmatch(r'\d{1,3}',v)and 7.8<=first['size']<=9.1 and any(abs(x-left)<2 for left in [28.3,303.4,304.4]):m=int(v)
    elif name.startswith('rfb2023'):
     if re.fullmatch(r'\d{1,3}',t)and any(abs(x-left)<1 for left in [42.6,311.69])and ss[0]['size']>=8:m=int(t)
    elif name.startswith('rfb20'):
     mm=re.match(r'^(\d{1,3})\s*[-–]',t)
     if mm and any(abs(x-left)<2 for left in [45.4,303.6]):m=int(mm[1])
    elif name.startswith('tse2012'):
     if re.fullmatch(r'\d{2,3}',t)and ss[0]['size']>11 and any(abs(x-left)<1 for left in [37.8,311.6]):m=int(t)
    else:
     mm=re.fullmatch(r'QUESTÃO\s+(\d+)',t)
     if mm:m=int(mm[1])
    if m is not None:found.append((pi,int(x>300),y,m))
 found.sort();ns=[x[3]for x in found];print(name,'COUNT',len(ns),'RANGE',min(ns)if ns else None,max(ns)if ns else None,'DUP',[n for n in sorted(set(ns))if ns.count(n)>1],'GAPS',[n for n in range(min(ns),max(ns)+1)if n not in ns]if ns else[])
 if name=='440_PRF_001_00_PAG_9.PDF':print(ns[:50])
