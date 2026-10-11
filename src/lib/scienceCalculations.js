export function circuit(voltage, r1, r2, parallel) {
  const resistance = parallel ? r1 * r2 / (r1 + r2) : r1 + r2
  const current = voltage / resistance
  return { resistance, current, i1: parallel ? voltage / r1 : current, i2: parallel ? voltage / r2 : current, u1: parallel ? voltage : current * r1, u2: parallel ? voltage : current * r2, power: voltage * current }
}
export function motion(v0, acceleration, time) {
  return { velocity: v0 + acceleration * time, displacement: v0 * time + acceleration * time ** 2 / 2 }
}
export function energyFall(mass, height, fractionLost) {
  const initial = mass * 10 * height
  const kinetic = initial * (1 - fractionLost)
  return { initial, kinetic, lost: initial - kinetic, speed: Math.sqrt(2 * kinetic / mass) }
}
export function trophicLevels(initial, efficiency) {
  return Array.from({ length: 4 }, (_, i) => initial * (efficiency / 100) ** i)
}
export function crossGenotypes(parent1, parent2) {
  const offspring = [...parent1].flatMap(a => [...parent2].map(b => [a, b].sort().join('')))
  const counts = Object.fromEntries(['AA', 'Aa', 'aa'].map(genotype => [genotype, offspring.filter(value => value === genotype).length / 4]))
  return { offspring, counts }
}
export function selectionPath(initialFrequency, relativeFitness, generations) {
  const path = [initialFrequency]
  for (let i = 0; i < generations; i++) {
    const p = path.at(-1)
    path.push(p * relativeFitness / (p * relativeFitness + 1 - p))
  }
  return path
}
