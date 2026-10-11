import assert from 'node:assert/strict'
import { examDraftKey, readExamDraft, writeExamDraft, validateExamDraft } from '../src/lib/examDraft.js'
import { remainingSeconds } from '../src/lib/examSession.js'

const entries = new Map()
const storage = { getItem: key => entries.get(key) || null, setItem: (key, value) => entries.set(key, value), removeItem: key => entries.delete(key) }
const draft = { version: 1, screen: 'exam', selectedExam: 'study', supabaseExamSlug: 'study', label: 'Estudo · Soluções', day: 'Prática por assunto', questions: [{ text: 'Concentração?', options: ['10 g/L', '20 g/L'], answer: 'A', supportImage: '/imagem.png' }, { text: 'Diluição?', options: ['Aumenta', 'Diminui'], answer: 'B' }], current: 1, answers: { 0: 'A' }, session: { id: 'session-1', startedAt: 1000, deadline: 61000, endedAt: null, ownerId: null } }
assert.equal(writeExamDraft(storage, draft), true)
assert.deepEqual(readExamDraft(storage), draft)
assert.equal(remainingSeconds(readExamDraft(storage).session.deadline, 31000), 30)
assert.equal(remainingSeconds(readExamDraft(storage).session.deadline, 62000), 0)
assert.equal(validateExamDraft({ ...draft, current: 2 }), null)
assert.equal(validateExamDraft({ ...draft, answers: { 0: 'E' } }), null)
assert.equal(validateExamDraft({ ...draft, questions: [] }), null)
assert.equal(validateExamDraft({ ...draft, version: 2 }), null)
storage.setItem(examDraftKey, '{invalid')
assert.equal(readExamDraft(storage), null)
writeExamDraft(storage, { ...draft, screen: 'result' })
assert.equal(readExamDraft(storage).screen, 'result')
writeExamDraft(storage, { ...draft, screen: 'home' })
assert.equal(readExamDraft(storage), null)
assert.equal(writeExamDraft({ setItem: () => { throw Error('quota') } }, draft), false)
assert.equal(readExamDraft({ getItem: () => { throw Error('blocked') } }), null)
console.log('Retomada, respostas, imagens, cronômetro, resultado, saída e armazenamento indisponível validados.')
