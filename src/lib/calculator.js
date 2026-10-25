export const initialCalculator = { display: '0', stored: null, operation: null, replace: true }

export function calculatorStep(state, key) {
  if (key === 'AC') return { ...initialCalculator }
  if (/^[0-9.]$/.test(key)) {
    const base = state.replace || state.display === 'Erro' ? '' : state.display
    if (key === '.' && base.includes('.')) return state
    const display = key === '.' && !base ? '0.' : base === '0' && key !== '.' ? key : base + key
    return display.length > 16 ? state : { ...state, display, replace: false }
  }
  if (key === '⌫') return { ...state, display: state.display.slice(0, -1) || '0', replace: false }
  const value = Number(state.display)
  if (!Number.isFinite(value)) return state
  if (key === '±' || key === '%') return { ...state, display: String(key === '%' ? value / 100 : -value) }
  if (!['+', '−', '×', '÷', '='].includes(key)) return state
  let result = value
  if (state.operation && state.stored !== null && !state.replace) {
    result = ({ '+': () => state.stored + value, '−': () => state.stored - value, '×': () => state.stored * value, '÷': () => value === 0 ? NaN : state.stored / value })[state.operation]()
  }
  if (!Number.isFinite(result)) return { ...initialCalculator, display: 'Erro' }
  return { display: String(Number(result.toPrecision(12))), stored: key === '=' ? null : result, operation: key === '=' ? null : key, replace: true }
}
