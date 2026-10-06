import json, re, unicodedata
from pathlib import Path
import pypdfium2 as pdf
ROOT=Path(__file__).resolve().parents[1]
DATA=ROOT/'pdf-extracts/pism-ii-2025'

def clean(text):
    text=text.replace('\ufffe\r\n','').replace('\ufffe\n','').replace('\ufffe','')
    text=text.replace('\x1c','fi').replace('\x1d','fl').replace('\x10','"').replace('\x11','"').replace('\x16','-')
    text=text.replace('ı','i').replace('¸c','ç').replace('¸C','Ç')
    for accent,mark in [('´','\u0301'),('˜','\u0303'),('ˆ','\u0302'),('`','\u0300')]:
        text=re.sub(re.escape(accent)+r'\s*([a-zA-Z])',lambda m:unicodedata.normalize('NFC',m[1]+mark),text)
    text=re.sub(r'Pr.{0,6} Reitoria de Gradua[^\n]+\n|Coordena[^\n]+Processos Seletivos\n|Pism 2025[^\n]+\n|P.gina \d+ de \d+','',text)
    return text

if __name__=='__main__':
    for day in [1,2]:
        doc=pdf.PdfDocument(DATA/f'dia-{day}.pdf')
        text='\n'.join(clean(p.get_textpage().get_text_range()) for p in list(doc)[2:(13 if day==1 else 11)])
        text=text.replace('\r','')
        (DATA/f'limpo-dia-{day}.txt').write_text(text,encoding='utf-8')
        matches=list(re.finditer(r'Q(?:\u0301)?uestão (\d+)\.\s*\n',text,re.M))
        matches=list({int(m[1]):m for m in matches}.values())
        questions=[]
        for i,m in enumerate(matches):
            n=int(m[1]); block=text[m.end():matches[i+1].start() if i+1<len(matches) else len(text)]
            opts=list(re.finditer(r'\(([A-E])\)\s*',block))
            if [x[1] for x in opts]!=list('ABCDE'): raise ValueError((day,n,[x[1] for x in opts]))
            parts=[block[x.end():opts[j+1].start() if j<4 else len(block)] for j,x in enumerate(opts)]
            questions.append({'number':n,'text':re.sub(r'\s+',' ',block[:opts[0].start()]).strip(),'options':[re.sub(r'\s+',' ',p).strip() for p in parts]})
        assert [q['number'] for q in questions]==list(range(1,21))
        (DATA/f'questoes-dia-{day}.json').write_text(json.dumps(questions,ensure_ascii=False,indent=2),encoding='utf-8')
        print(f'Dia {day}: {len(questions)} questões extraídas; executar finalize-pism-ii-2025.py para revisão e SQL.')
