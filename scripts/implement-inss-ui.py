from pathlib import Path
p=Path('src/main.jsx');s=p.read_text(encoding='utf-8')
def replace(a,b,count=1):
 global s
 assert a in s,a[:100]
 s=s.replace(a,b,count)
replace("import { isCorrectAnswer, isAnnulledAnswer } from './lib/examAnswers'", "import { isCorrectAnswer, isAnnulledAnswer } from './lib/examAnswers'\nimport { inssOfficialSource } from './lib/inssSources'\nimport { cebraspeScore, isBinaryQuestion, binaryAnswerLabel } from './lib/cebraspeScore'")
replace("      { id: 'caixa',", "      { id: 'inss', name: 'INSS', org: 'PREVIDÊNCIA SOCIAL', short: 'INSS', description: 'Concurso do Instituto Nacional do Seguro Social', available: true, color: 'sky', roles: ['Técnico do Seguro Social'] },\n      { id: 'caixa',")
replace("if (source === 'enem') return 'medio'", "if (source === 'enem' || source === 'inss') return 'medio'")
replace("  const [caixaRole,", "  const [inssLoading, setInssLoading] = useState(false)\n  const [inssError, setInssError] = useState('')\n  const [caixaRole,")
replace("  const examLabel = pismExam ?", "  const examLabel = selectedExam === 'inss' ? 'INSS 2022 · Técnico do Seguro Social' : pismExam ?")
replace("  const examDay = selectedExam === 'usp'", "  const examDay = selectedExam === 'inss' ? `Prova objetiva · ${activeQuestions.length} itens (Certo/Errado)` : selectedExam === 'usp'")
replace("  // Carrega as questões de uma prova cadastrada", "  const inssScore = useMemo(() => cebraspeScore(activeQuestions, answers), [activeQuestions, answers])\n\n  // Carrega as questões de uma prova cadastrada")
replace("sourceUrl: pismOfficialSource(supabaseSlug, question.number),", "sourceUrl: inssOfficialSource(supabaseSlug, question.number) || pismOfficialSource(supabaseSlug, question.number),")
replace("sourceUrl: pismOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number),", "sourceUrl: inssOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number) || pismOfficialSource(exams.find((exam) => exam.id === question.exam_id)?.slug, question.number),")
replace("  const currentCaixaYears", "  const startInssExam = async () => {\n    setInssLoading(true)\n    setInssError('')\n    try {\n      const questions = await loadSupabaseExam('inss-2022-tecnico')\n      setEnemQuestions(questions)\n      setSupabaseExamSlug('inss-2022-tecnico')\n      setSelectedExam('inss')\n      setCurrent(0)\n      setAnswers({})\n      setScreen('exam')\n      setMenuOpen(false)\n    } catch (error) {\n      setInssError(`Não foi possível carregar a prova. Execute seed-inss-2022-tecnico.sql no Supabase e tente novamente. ${error.message}`)\n    } finally {\n      setInssLoading(false)\n    }\n  }\n\n  const currentCaixaYears")
replace("  const caixaCard = (", "  const inssCard = <InssCard onStart={startInssExam} loading={inssLoading} error={inssError} />\n  const caixaCard = (")
replace("const featuredCards = { pism:", "const featuredCards = { inss: inssCard, pism:")
replace("    const percentage = Math.round((score / activeQuestions.length) * 100)", "    const isInss = selectedExam === 'inss'\n    const resultPoints = isInss ? inssScore.points : score\n    const percentage = activeQuestions.length ? Math.round((resultPoints / activeQuestions.length) * 100) : 0")
replace("`${percentage * 3.6}deg`", "`${Math.max(0, percentage) * 3.6}deg`")
replace("<strong>{score}<small>/{activeQuestions.length}</small></strong>", "<strong>{resultPoints}<small>/{activeQuestions.length}</small></strong>")
replace("<span>acertos</span>", "<span>{isInss ? 'pontos líquidos' : 'acertos'}</span>")
replace('            <div className="result-stats">', '''            {isInss && <p className="result-message">Acerto: +1 · Erro: −1 · Em branco: 0. {inssScore.annulled} itens anulados recebem +1 cada. Correção conforme o gabarito de 2022.</p>}
            <div className="result-stats">''')
replace('              <div><strong>{percentage}%</strong><span>Aproveitamento</span></div>', '              <div><strong>{isInss ? inssScore.correct : `${percentage}%`}</strong><span>{isInss ? "Acertos" : "Aproveitamento"}</span></div>')
replace('<strong>{activeQuestions.length - score}</strong><span>Para revisar</span>', '<strong>{isInss ? inssScore.wrong : activeQuestions.length - score}</strong><span>{isInss ? "Erros · revisar" : "Para revisar"}</span>')
replace('<div><strong>{activeQuestions.length}</strong><span>Questões</span></div>', '<div><strong>{isInss ? inssScore.blank : activeQuestions.length}</strong><span>{isInss ? "Em branco" : "Questões"}</span></div>')
replace("    const letters = ['A', 'B', 'C', 'D', 'E']", "    const letters = ['A', 'B', 'C', 'D', 'E']\n    const binary = isBinaryQuestion(question)")
# Inclui o cabeçalho INSS nos dois trechos que distinguem o PISM.
replace("selectedExam === 'pc' || selectedExam === 'pf' ? examLabel", "selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' ? examLabel")
replace("selectedExam === 'pc' || selectedExam === 'pf' ? examDay", "selectedExam === 'pc' || selectedExam === 'pf' || selectedExam === 'inss' ? examDay")
replace("`Alternativa ${letters[index]}. ${option}`", "binary ? option : `Alternativa ${letters[index]}. ${option}`")
replace('Abrir questão e textos no caderno oficial da UFJF ↗', "Abrir questão e textos no caderno oficial {question.sourceUrl.includes('cebraspe.org.br') ? 'do Cebraspe' : 'da UFJF'} ↗")
replace('<span className="option-letter">{letter}</span>', '<span className="option-letter">{binary ? (index === 0 ? "C" : "E") : letter}</span>')
replace('              <h1>{question.text}</h1>', '''              {selectedExam === 'inss' && <p className="official-source">Acerto: +1 · Erro: −1 · Em branco: 0 · Anulado: +1.</p>}
              <h1>{question.text}</h1>''')
replace("Como chegar na resposta correta (${question.answer})", "Como chegar na resposta correta (${binary ? binaryAnswerLabel(question.answer) : question.answer})")
replace("              {isReview && (question.sourceUrl", "              {!isReview && selectedExam === 'inss' && selected && <button type=\"button\" className=\"button secondary small\" onClick={() => setAnswers((old) => { const updated = { ...old }; delete updated[current]; return updated })}>Deixar em branco</button>}\n              {isReview && isAnnulledAnswer(question.answer) && <p className=\"official-source\">Questão anulada · ponto atribuído automaticamente.</p>}\n              {isReview && (question.sourceUrl")
start=s.index('function CaixaCard(');end=s.index('\nfunction PcCard(',start)
card=s[start:end].replace('function CaixaCard({ roles, role, onRoleChange, years, year, setYear, onStart, available, loading, error })', 'function InssCard({ onStart, loading, error })').replace('BANCÁRIO','PREVIDÊNCIA SOCIAL').replace('CAIXA','INSS').replace('Caixa Econômica Federal','INSS').replace('Concurso Técnico Bancário Novo','Técnico do Seguro Social · 120 itens')
a=card.index('        <div className="pism-controls">');b=card.index('        {error &&',a)
card=card[:a]+'''        <div className="pism-controls">
          <label>Ano da prova<span className="select-wrap"><select aria-label="Ano da prova do INSS" value="2022" disabled><option value="2022">2022</option></select><ChevronDown size={16} /></span></label>
          <label>Cargo<span className="select-wrap"><select aria-label="Cargo do INSS" value="tecnico" disabled><option value="tecnico">Técnico do Seguro Social</option></select><ChevronDown size={16} /></span></label>
        </div>
'''+card[b:]
card=card.replace("${available ? 'ready' : ''}", 'ready').replace("{available ? 'Disponível' : 'Em breve'}",'Disponível').replace("${available && !loading ? 'primary' : 'disabled'}", "${!loading ? 'primary' : 'disabled'}").replace('disabled={!available || loading}', 'disabled={loading}').replace("{loading ? 'Carregando questões.' : available ? 'Começar prova' : 'Em breve'} {available && !loading &&", "{loading ? 'Carregando questões…' : 'Começar prova'} {!loading &&")
s=s[:start]+card+'\n'+s[start:]
p.write_text(s,encoding='utf-8')
Path('src/lib/cebraspeScore.js').write_text('''import { isAnnulledAnswer, isCorrectAnswer } from './examAnswers.js'

export function isBinaryQuestion(question) {
  return question?.options?.length === 2 && question.options[0]?.trim().toLowerCase() === 'certo' && question.options[1]?.trim().toLowerCase() === 'errado'
}

// A/B continuam sendo os valores gravados; C/E são os rótulos da banca.
export function binaryAnswerLabel(answer) {
  return answer === 'A' ? 'Certo' : answer === 'B' ? 'Errado' : answer
}

export function cebraspeScore(questions, answers) {
  return questions.reduce((result, question, index) => {
    if (isAnnulledAnswer(question.answer)) {
      result.annulled += 1
      result.points += 1
    } else if (!answers[index]) {
      result.blank += 1
    } else if (isCorrectAnswer(answers[index], question.answer)) {
      result.correct += 1
      result.points += 1
    } else {
      result.wrong += 1
      result.points -= 1
    }
    return result
  }, { points: 0, correct: 0, wrong: 0, blank: 0, annulled: 0 })
}
''',encoding='utf-8')
print('Card INSS e correção implementados.')