import fs from 'node:fs'
const dir = 'pdf-extracts/pmsp/'
const decode = s => s.replace(/&#(\d+);/g,(_,n)=>String.fromCodePoint(+n)).replaceAll('&amp;','&')
const links = {}
for (const code of ['PMES2602','PMES2601','PMES2401','PMES2502']) {
  const response = await fetch(`https://documento.vunesp.com.br/projeto/${code}/documento/`)
  const html = await response.text()
  fs.writeFileSync(dir+code+'-docs.html',html)
  links[code] = [...html.matchAll(/<a[^>]+href=["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/g)]
    .map(([,url,text])=>({url:new URL(decode(url),'https://documento.vunesp.com.br').href,title:decode(text.replace(/<[^>]+>/g,'').trim())}))
    .filter(({title})=>/gabarito|caderno/i.test(title))
  console.log(code, JSON.stringify(links[code]))
}
fs.writeFileSync(dir+'document-links.json',JSON.stringify(links,null,2))
const downloads = {
  'soldado-2025-02-prova': {url:'https://conhecimento.fgv.br/sites/default/files/concursos/soldado-pm-de-2a-classe-cnm001-tipo-1_0.pdf'},
  'soldado-2025-02-gabarito': {url:'https://conhecimento.fgv.br/sites/default/files/concursos/doeco-04.321.25-gabarito-definitivo-ed.3.321.24.pdf'},
  'soldado-2025-11-prova': links.PMES2502.find(x=>/Caderno/.test(x.title)),
  'soldado-2025-11-gabarito': links.PMES2502.find(x=>/Definitivo/.test(x.title)),
  'oficial-2025-prova': {url:'https://conhecimento.fgv.br/sites/default/files/concursos/cabo-oficial-da-policia-militar-do-estado-de-sao-paulocnm001-tipo-1.pdf'},
  'oficial-2025-gabarito': {url:'https://conhecimento.fgv.br/sites/default/files/concursos/pmesp_aluno_gabarito_definitivo_v2_g46f64f31.pdf'},
  'oficial-2024-prova': {url:'https://arquivos.qconcursos.com/prova/arquivo_prova/128614/vunesp-2024-pm-sp-aluno-oficial-prova.pdf'},
  'oficial-2024-gabarito': {url:'https://arquivos.qconcursos.com/prova/arquivo_gabarito/128614/vunesp-2024-pm-sp-aluno-oficial-gabarito.pdf'},
  'oficial-2026-prova': links.PMES2602.find(x=>/Caderno.*Cadete/.test(x.title)),
  'oficial-2026-gabarito': links.PMES2602.find(x=>/Definitivo/.test(x.title)),
  'oficial-2026-imprensa': links.PMES2602.find(x=>/^Gabarito -/.test(x.title)),
  'soldado-2026-prova': links.PMES2601.find(x=>/Caderno/.test(x.title)),
  'soldado-2026-imprensa': links.PMES2601.find(x=>/^Gabarito -/.test(x.title)),
  'soldado-2026-recursos': links.PMES2601.find(x=>/recursos/.test(x.title)),
  'soldado-2025-11-imprensa': links.PMES2502.find(x=>/^Gabarito -/.test(x.title)),
}
for (const [name, item] of Object.entries(downloads)) {
  if (fs.existsSync(dir+name+'.pdf')) continue
  const r = await fetch(item.url)
  if (!r.ok) throw Error(`${name}: ${r.status}`)
  const data = Buffer.from(await r.arrayBuffer())
  if (data.subarray(0,4).toString() !== '%PDF') throw Error(`${name}: not PDF`)
  fs.writeFileSync(dir+name+'.pdf',data)
  console.log(name,data.length)
}
