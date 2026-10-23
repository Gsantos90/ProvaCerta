import { walkthroughSolutions as pilot } from './walkthroughPilotSolutions.js'
import expanded from './walkthroughExpandedSolutions.json' with { type: 'json' }

export const walkthroughSolutions = {
  ...expanded,
  ...Object.fromEntries(Object.entries(pilot).map(([id, solution]) => ['pism-2026-i-' + id, solution])),
}
