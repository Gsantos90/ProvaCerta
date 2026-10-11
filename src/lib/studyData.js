import { correiosOfficialSource } from './correiosSources.js'
import { enemOfficialSource } from './enemExams.js'
import { pismOfficialSource } from './pismSources.js'
import { inssOfficialSource } from './inssSources.js'
import { fuvestOfficialSource } from './fuvestSources.js'
import { militaryQuestionMedia, militaryOfficialSource } from './militaryExams.js'
import { previousAuthorRound, selectAuthorRound } from './authorPractice.js'

export async function loadAuthorQuestions(client, topic) {
  if (!client) throw new Error('Não foi possível conectar ao banco de questões.')
  const { data, error } = await client.from('study_author_questions')
    .select('id,authored_id,topic_id,number,subject,text,options,answer,explanation')
    .eq('topic_id', topic.id).order('number')
  if (error) throw new Error('Não foi possível carregar as questões autorais. Tente novamente.')
  const questions = (data || []).map(q => ({
    questionId: q.id, authoredId: q.authored_id, topicId: q.topic_id,
    number: q.number, subject: q.subject, text: q.text, options: q.options,
    answer: q.answer, explanation: q.explanation, origin: 'author',
    examSlug: `author:${topic.id}`, examTitle: `Questões autorais · ${topic.title}`, sourceUrl: null,
  }))
  return selectAuthorRound(questions, previousAuthorRound(topic.id))
}

export async function loadTopicQuestions(client, topic) {
  if (!client) throw new Error('Não foi possível conectar ao banco de questões.')
  const slugs = [...new Set(topic.questions.map(ref => ref.slug))]
  const { data: exams, error } = await client.from('exams').select('id,slug,title').in('slug', slugs)
  if (error) throw error
  if (exams.length !== slugs.length) throw new Error('Uma das provas deste assunto ainda não está disponível no banco.')
  const lists = await Promise.all(exams.map(async exam => {
    const refs = topic.questions.filter(ref => ref.slug === exam.slug)
    const { data, error: questionError } = await client.from('questions').select('id,number,subject,text,support,support_image,options,answer,explanation').eq('exam_id', exam.id).in('number', refs.map(ref => ref.number)).order('number')
    if (questionError) throw questionError
    if (data.length !== refs.length) throw new Error('Algumas questões deste assunto ainda não estão disponíveis. Tente novamente mais tarde.')
    return data.map(q => ({
      questionId: q.id, number: q.number, examSlug: exam.slug, examTitle: exam.title,
      subject: q.subject, text: q.text, support: q.support, ...militaryQuestionMedia(q.support_image),
      options: q.options, answer: q.answer, explanation: q.explanation,
      sourceUrl: militaryOfficialSource(exam.slug) || correiosOfficialSource(exam.slug, q.number) || enemOfficialSource(exam.slug, q.number) || pismOfficialSource(exam.slug, q.number) || inssOfficialSource(exam.slug, q.number) || fuvestOfficialSource(exam.slug, q.number),
    }))
  }))
  const questions = lists.flat()
  // Mantém a sequência da curadoria; novas rodadas podem embaralhar sem mudar o gabarito.
  return topic.questions.map(ref => questions.find(q => q.examSlug === ref.slug && q.number === ref.number))
}

export async function loadStudyReview(client, userId) {
  if (!client) throw new Error('Não foi possível conectar ao histórico.')
  // Escopo explícito para evitar transferir todo o histórico com textos e imagens.
  const { data, error } = await client.from('exam_attempts').select('id,user_id,exam_title,completed_at,mistakes')
    .eq('user_id', userId).order('completed_at', { ascending: false }).order('id').range(0, 99)
  if (error) throw error
  return data || []
}
