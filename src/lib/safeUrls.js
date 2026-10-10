// Dados do banco e do armazenamento local não são URLs confiáveis por padrão.
export function safeWebUrl(value) {
  if (typeof value !== 'string' || /[\u0000-\u0020\u007f\\]/.test(value)) return null
  try {
    const url = new URL(value)
    if (!['https:', 'http:'].includes(url.protocol) || url.username || url.password) return null
    return value
  } catch {
    return null
  }
}

export function safeImageUrl(value) {
  if (typeof value !== 'string') return null
  // Caminhos locais não podem virar endereços externos com // ou barras invertidas.
  if (/^\/(?!\/)/.test(value) && !/[\u0000-\u0020\u007f\\]/.test(value)) return value
  return safeWebUrl(value)
}

export function supportImageUrls(value) {
  let images = value
  if (typeof images === 'string') {
    try { images = JSON.parse(images) } catch { images = images.split(',').map(url => url.trim()) }
  }
  if (!Array.isArray(images)) images = images ? [images] : []
  return images.map(safeImageUrl).filter(Boolean)
}
