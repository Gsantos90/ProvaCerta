import { createClient } from '@supabase/supabase-js'

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabasePublishableKey = import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY

export const isSupabaseConfigured = Boolean(supabaseUrl && supabasePublishableKey)
export const supabase = isSupabaseConfigured
  ? createClient(supabaseUrl, supabasePublishableKey)
  : null

// Antecipa a conexão (DNS + TLS) com o domínio do Supabase para acelerar a
// primeira requisição ao banco (ex.: abrir uma prova). Como o domínio do projeto
// só é conhecido em runtime (variável de ambiente), injetamos o <link> aqui.
if (isSupabaseConfigured && typeof document !== 'undefined') {
  try {
    const { origin } = new URL(supabaseUrl)
    for (const rel of ['preconnect', 'dns-prefetch']) {
      const link = document.createElement('link')
      link.rel = rel
      link.href = origin
      if (rel === 'preconnect') link.crossOrigin = 'anonymous'
      document.head.appendChild(link)
    }
  } catch {
    // URL inválida: ignora silenciosamente (não impacta o funcionamento).
  }
}
