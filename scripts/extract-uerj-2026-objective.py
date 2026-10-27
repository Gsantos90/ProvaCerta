"""Prepare UERJ 2026 EQ2 from the official original PDF and key (English)."""
import json,re,sys
from pathlib import Path
sys.stdout.reconfigure(encoding='utf8')
pages=json.loads(Path('pdf-extracts/uerj-2026-eq2/layout-pages.json').read_text(encoding='utf8'))
marker=re.compile(r'^\s*Q\s*U\s*E\s*S\s*T\s*[ÃA]\s*O\s*',re.M)
records=[];metadata={}
for page_no,text in enumerate(pages,1):
 if page_no<4 or page_no>36 or 12<=page_no<=15:continue
 matches=list(marker.finditer(text))
 prefix=text[:matches[0].start()] if matches else ''
 for j,m in enumerate(matches):
  block=text[m.end():matches[j+1].start() if j+1<len(matches) else len(text)]
  lines=block.splitlines()
  candidates=[(k,re.match(r'^\s*(\d{2})(?:\s|$)',line)) for k,line in enumerate(lines[:12])]
  k,nm=next((k,nm) for k,nm in candidates if nm)
  number=int(nm.group(1));lines[k]=lines[k][nm.end():]
  if lines and lines[-1].strip()==str(page_no):lines.pop()
  block='\n'.join(lines).strip()
  opts=list(re.finditer(r'^\s*\(([ABCD])\)',block,re.M))
  if number==59:opts=list(re.finditer(r'\(([ABCD])\)',block))
  if [o.group(1) for o in opts]!=list('ABCD'):raise ValueError((page_no,number,'options'))
  clean=lambda s:re.sub(r'\s+',' ',s).strip()
  options=[clean(block[o.end():opts[z+1].start() if z+1<len(opts) else len(block)]) for z,o in enumerate(opts)]
  body=clean(block[:opts[0].start()])
  records.append({'number':number,'page':page_no,'text':body,'options':options,'prefix':clean(prefix)})
records.sort(key=lambda q:q['number'])
assert [q['number'] for q in records]==list(range(1,61))
Path('pdf-extracts/uerj-2026-eq2/questions-raw.json').write_text(json.dumps(records,ensure_ascii=False,indent=2),encoding='utf8')
for q in records:print(q['number'],q['page'],q['text'][:100],q['options'])
