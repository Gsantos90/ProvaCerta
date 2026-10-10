"""Download discovered public PMERJ booklets and matching official answer keys."""
import json
import sys
import urllib.request
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT / 'pdf-extracts/pmerj-ate-2020'
FILES = {
    'oficial2019': ['https://arquivos.qconcursos.com/prova/arquivo_prova/60243/ibade-2019-pm-rj-aspirante-da-policia-militar-prova.pdf', 'https://arquivos.qconcursos.com/prova/arquivo_gabarito/60243/ibade-2019-pm-rj-aspirante-da-policia-militar-gabarito.pdf'],
    'oficial2017': ['https://arquivos.qconcursos.com/prova/arquivo_prova/52755/ibade-2017-pm-rj-aspirante-da-policia-militar-prova.pdf', 'https://arquivos.qconcursos.com/prova/arquivo_gabarito/52755/ibade-2017-pm-rj-aspirante-da-policia-militar-gabarito.pdf'],
    'enfermagem2010': ['https://arquivos.qconcursos.com/prova/arquivo_prova/8558/crsp-pmrj-2010-pm-rj-1-tenente-enfermagem-geral-prova.pdf', 'https://arquivos.qconcursos.com/prova/arquivo_gabarito/8558/crsp-pmrj-2010-pm-rj-1-tenente-enfermagem-geral-gabarito.pdf'],
    'soldado2010': ['https://arquivos.qconcursos.com/prova/arquivo_prova/31964/crsp-pmrj-2010-pm-rj-soldado-da-policia-militar-prova.pdf', 'https://arquivos.qconcursos.com/prova/arquivo_gabarito/31964/crsp-pmrj-2010-pm-rj-soldado-da-policia-militar-gabarito.pdf'],
    'soldado2014-azul': ['https://kserna.com.br/wp-content/uploads/2026/08/prova-cfsd-pmerj-2014-azul.pdf', 'https://kserna.com.br/wp-content/uploads/2026/08/gabarito-cfsd-pmerj-2014-definitivo.pdf'],
}
FILES.pop('soldado2014-azul')  # This mirror denied download; use the accessible archive.
ARCHIVES = {
    49472: 'exatus-2014-pm-rj-soldado-da-policia-militar',
    39534: 'exatus-2014-pm-rj-aspirante-da-policia-militar',
    49471: 'crsp-pmrj-2009-pm-rj-soldado-da-policia-militar',
    30966: 'ibfc-2012-pm-rj-aspirante-da-policia-militar-ingles',
    30967: 'ibfc-2012-pm-rj-aspirante-da-policia-militar-frances',
    30968: 'ibfc-2012-pm-rj-aspirante-da-policia-militar-espanhol',
}
HEALTH = {
    8906: 'odontologia-protese-dental', 8907: 'psicologia', 8908: 'medico-psiquiatria',
    8909: 'medico-radiologia', 8910: 'medico-reumatologia', 8911: 'assistente-social',
    8912: 'enfermagem-terapia-intensiva-de-adulto', 8913: 'enfermagem-terapia-intensiva-neonatal',
    8914: 'medico-urologia', 8915: 'veterinaria-caninos', 8916: 'veterinaria-equinos', 8917: 'pedagogia',
    8545: 'medico-anestesiologia', 8546: 'medico-cardiologia', 8547: 'medico-cirurgia-de-cabeca-e-pescoco',
    8548: 'medico-cirurgia-geral', 8549: 'medico-cirurgia-pediatrica', 8550: 'medico-cirurgia-plastica',
    8551: 'medico-cirurgia-toracica', 8552: 'medico-cirurgia-vascular', 8553: 'medico-clinica-medica-emergencia',
    8554: 'medico-dermatologia', 8555: 'medico-endocrinologia', 8556: 'odontologia-endodontia',
    8557: 'medico-endoscopia-digestiva', 8559: 'farmacia-bioquimica', 8560: 'farmacia-hospitalar',
    8561: 'farmacia-industrial', 8562: 'medico-fisiatria', 8563: 'fisioterapia-cardiopulmonar',
    8564: 'fisioterapia-neurologica', 8565: 'fisioterapia-pediatrica-neonatal',
    8566: 'fisioterapia-traumato-ortopedia', 8567: 'fonoaudiologia', 8568: 'medico-gastroenterologia',
    8569: 'medico-ginecologia', 8570: 'medico-hematologia', 8571: 'medico-hemodinamica',
    8572: 'medico-hemoterapia', 8573: 'medico-infectologia', 8574: 'medico-mastologia',
    8575: 'medico-nefrologia', 8576: 'medico-neurocirurgia', 8577: 'medico-neurologia',
    8578: 'medico-neurologia-pediatrica', 8579: 'nutricionista', 8580: 'medico-obstetricia',
    8581: 'odontologia-clinica-geral', 8582: 'medico-oftalmologia', 8583: 'medico-oncologia-clinica',
    8584: 'odontologia-ortodontia', 8585: 'medico-ortopedia', 8586: 'medico-otorrinolaringologia',
    8587: 'medico-patologia-clinica', 8588: 'medico-pediatria', 8589: 'medico-pneumologia',
}
ARCHIVES.update({number: 'crsp-pmrj-2010-pm-rj-1-tenente-' + role for number, role in HEALTH.items()})
for number, remote in ARCHIVES.items():
    key = 'archive-' + str(number)
    FILES[key] = [f'https://arquivos.qconcursos.com/prova/arquivo_{kind}/{number}/{remote}-{suffix}.pdf' for kind, suffix in [('prova', 'prova'), ('gabarito', 'gabarito')]]

def download(item):
    name, url = item
    path = DEST / name
    if not path.exists():
        request = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        try:
            data = urllib.request.urlopen(request, timeout=30).read()
        except (OSError, urllib.error.URLError) as error:
            print('UNAVAILABLE', name, str(error), flush=True)
            return
        if not data.startswith(b'%PDF'):
            raise ValueError(f'{name}: expected PDF')
        path.write_bytes(data)
    print(name, path.stat().st_size, flush=True)

if __name__ == '__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    DEST.mkdir(parents=True, exist_ok=True)
    (DEST / 'fontes.json').write_text(json.dumps(FILES, ensure_ascii=False, indent=2), encoding='utf-8')
    tasks = [(key + ('-gab' if i else '') + '.pdf', url) for key, urls in FILES.items() for i, url in enumerate(urls)]
    with ThreadPoolExecutor(max_workers=4) as executor:
        list(executor.map(download, tasks))
