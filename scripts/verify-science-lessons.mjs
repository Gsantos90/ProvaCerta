import assert from 'node:assert/strict'
import { scienceLessons } from '../src/lib/scienceLessons.js'
import { studySummaries } from '../src/lib/studySummaries.js'
import { circuit, motion, energyFall, trophicLevels, crossGenotypes, selectionPath } from '../src/lib/scienceCalculations.js'

const near = (actual, expected) => assert.ok(Math.abs(actual - expected) < 1e-9, `${actual} ≠ ${expected}`)
const scienceTopics = studySummaries.filter(topic => ['Física', 'Biologia', 'Geografia'].includes(topic.subject))
assert.equal(scienceTopics.length, 9)
for (const topic of scienceTopics) {
  assert.ok(topic.scienceLesson, topic.id)
  assert.equal(topic.scienceLesson.sections.length, 5)
  assert.equal(topic.scienceLesson.examples.length, 2)
  assert.equal(topic.scienceLesson.challenges.length, 3)
  for (const section of topic.scienceLesson.sections) assert.ok(section.paragraphs.length >= 2 && section.formula)
  for (const question of topic.scienceLesson.challenges) assert.ok(question.options[question.answer] && question.explanation)
}
const series = circuit(12, 4, 8, false)
near(series.current, 1); near(series.u1 + series.u2, 12)
const parallel = circuit(12, 4, 8, true)
near(parallel.i1 + parallel.i2, parallel.current)
assert.ok(parallel.resistance < 4)
assert.deepEqual(motion(0, 2, 5), { velocity: 10, displacement: 25 })
assert.deepEqual(motion(4, -2, 4), { velocity: -4, displacement: 0 })
near(energyFall(2, 5, 0).speed, 10)
near(energyFall(10, 5, 0).speed, 10)
const energy = energyFall(2, 5, 0.25)
near(energy.kinetic + energy.lost, energy.initial)
near(energyFall(2, 5, 1).speed, 0)
assert.deepEqual(trophicLevels(10000, 10), [10000, 1000, 100.00000000000001, 10.000000000000002])
assert.deepEqual(crossGenotypes('Aa', 'Aa').counts, { AA: 0.25, Aa: 0.5, aa: 0.25 })
assert.deepEqual(crossGenotypes('AA', 'aa').counts, { AA: 0, Aa: 1, aa: 0 })
near(selectionPath(0.2, 2, 1)[1], 1/3)
assert.deepEqual(selectionPath(0, 2, 4), [0, 0, 0, 0, 0])
assert.deepEqual(selectionPath(1, 0.5, 2), [1, 1, 1])
assert.deepEqual(selectionPath(0.2, 1, 2), [0.2, 0.2, 0.2])
assert.equal(Object.keys(scienceLessons).length, 9)
console.log('9 aulas, 45 seções, 18 exemplos e 27 exercícios; modelos de circuitos, movimento, energia, ecologia, genética e seleção verificados.')
