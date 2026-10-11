import { useEffect, useState } from 'react'

const prefix = 'provacerta:page-state:v1:'
export function readPageState(storage, key, fallback, validate) {
  try {
    const raw = storage.getItem(prefix + key)
    if (raw !== null) {
      const value = JSON.parse(raw)
      if (validate(value)) return value
    }
  } catch { /* Armazenamento indisponível não impede navegar. */ }
  return fallback
}

export function usePageState(key, initial, validate) {
  const [value, setValue] = useState(() => {
    const fallback = typeof initial === 'function' ? initial() : initial
    const valid = validate || (item => Array.isArray(fallback) ? Array.isArray(item) && item.every(entry => typeof entry === 'string') : typeof item === typeof fallback)
    try { return readPageState(window.sessionStorage, key, fallback, valid) } catch { return fallback }
  })
  useEffect(() => {
    try { window.sessionStorage.setItem(prefix + key, JSON.stringify(value)) } catch { /* Mantém o estado em memória. */ }
  }, [key, value])
  return [value, setValue]
}
