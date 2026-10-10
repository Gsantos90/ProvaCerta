// Servidor local de conferência da compilação com os cabeçalhos de produção.
import { createServer } from 'node:http'
import { readFileSync, statSync } from 'node:fs'
import { resolve, sep, extname } from 'node:path'
const root = resolve('dist')
const headers = JSON.parse(readFileSync('vercel.json','utf8')).headers.find(rule => rule.source === '/(.*)').headers
const types = { '.html':'text/html; charset=utf-8','.js':'text/javascript; charset=utf-8','.css':'text/css; charset=utf-8','.png':'image/png','.jpg':'image/jpeg','.jpeg':'image/jpeg','.svg':'image/svg+xml','.webp':'image/webp','.m4a':'audio/mp4','.pdf':'application/pdf' }
createServer((request,response) => {
  for (const {key,value} of headers) response.setHeader(key,value)
  try {
    const pathname = decodeURIComponent(new URL(request.url,'http://127.0.0.1').pathname)
    const file = resolve(root, `.${pathname === '/' ? '/index.html' : pathname}`)
    if (!file.startsWith(root+sep)) { response.writeHead(403); response.end(); return }
    const selected = statSync(file).isDirectory() ? resolve(file,'index.html') : file
    response.setHeader('Content-Type',types[extname(selected)] || 'application/octet-stream')
    response.end(readFileSync(selected))
  } catch { response.writeHead(404); response.end('Not found') }
}).listen(5174,'127.0.0.1',() => console.log('Conferência com cabeçalhos de produção: http://127.0.0.1:5174/'))
