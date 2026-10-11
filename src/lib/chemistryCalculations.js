// Modelos didáticos: massas molares aproximadas e volumes aditivos.
export function waterReaction(hydrogen, oxygen, yieldPercent = 100) {
  const extent = Math.min(hydrogen / 2, oxygen)
  return { extent, theoretical: extent * 2, actual: extent * 2 * yieldPercent / 100,
    hydrogenLeft: hydrogen - extent * 2, oxygenLeft: oxygen - extent,
    limiting: hydrogen / 2 === oxygen ? 'Proporção exata: ambos são consumidos' : hydrogen / 2 < oxygen ? 'H₂ é o reagente limitante' : 'O₂ é o reagente limitante' }
}
export function solutionModel(mass, volumeMl, molarMass, waterMl = 0) {
  const volume = (volumeMl + waterMl) / 1000
  return { volume, moles: mass / molarMass, massConcentration: mass / volume, molarity: mass / molarMass / volume }
}
