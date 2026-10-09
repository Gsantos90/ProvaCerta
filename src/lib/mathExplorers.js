export function describeData(values) {
  const ordered = [...values].sort((a, b) => a - b)
  if (!ordered.length || ordered.some(value => !Number.isFinite(value))) return null
  const counts = new Map()
  for (const value of ordered) counts.set(value, (counts.get(value) || 0) + 1)
  const frequency = Math.max(...counts.values())
  const modes = frequency > 1 && (counts.size === 1 || new Set(counts.values()).size > 1) ? [...counts].filter(([, count]) => count === frequency).map(([value]) => value) : []
  const mid = Math.floor(ordered.length / 2)
  return { ordered, mean: ordered.reduce((sum, value) => sum + value, 0) / ordered.length, median: ordered.length % 2 ? ordered[mid] : (ordered[mid - 1] + ordered[mid]) / 2, modes, range: ordered.at(-1) - ordered[0] }
}
export function urnChances(blue, red, replacement) {
  const total = blue + red
  if (total < 2 && !replacement || total < 1) return null
  const secondTotal = replacement ? total : total - 1
  return { blueBlue: blue / total * (replacement ? blue : Math.max(0, blue - 1)) / secondTotal, redRed: red / total * (replacement ? red : Math.max(0, red - 1)) / secondTotal, secondBlue: (replacement ? blue : Math.max(0, blue - 1)) / secondTotal, secondRed: (replacement ? red : Math.max(0, red - 1)) / secondTotal }
}
export const evaluateFunction = (x, a, b, c, quadratic) => quadratic ? a * x * x + b * x + c : a * x + b
