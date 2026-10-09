# Login opcional do ProvaCerta

O código usa Supabase Auth com e-mail e senha. Cadastro e confirmação de e-mail estão habilitados no projeto `tzwrgkxjdxkgcennjgwx`. A tabela `exam_attempts` já foi aplicada ao banco e tem políticas de acesso exclusivas para o dono da tentativa. Nenhuma chave administrativa é usada no navegador.

## Opções disponíveis para o estudante

| Opção | Onde encontrar | Funcionamento |
| --- | --- | --- |
| Entrar | Círculo no canto superior direito, ao lado do tema | Abre o formulário de e-mail e senha. |
| Criar conta | Formulário de entrada | Exige e-mail, senha de pelo menos oito caracteres e repetição da senha; a confirmação é enviada por e-mail. |
| Esqueci minha senha | Formulário de entrada | Solicita um link para escolher a nova senha. |
| Meu progresso | Menu do círculo após entrar | Abre histórico e caderno de erros. |
| Minha conta | Menu do círculo ou aba da área de estudo | Mostra o e-mail da conta e permite solicitar o link para alterar a senha. |
| Sair | Menu do círculo após entrar | Encerra o acesso à conta na interface; o site continua disponível para estudar como visitante. |

Ao entrar, o círculo mostra as duas primeiras letras do e-mail. Durante a
prova e a revisão, o círculo e a navegação superior ficam ocultos. O controle
de tema permanece disponível, e os formulários e a área da conta seguem o
modo claro/escuro.

Provas, simulados personalizados, redação, nota e revisão permanecem disponíveis
sem conta. O login acrescenta histórico privado e consulta dos resultados em
outros dispositivos; as redações continuam salvas localmente no navegador.

## Onde os dados ficam

| Informação | Local | Acesso |
| --- | --- | --- |
| Conta, e-mail e autenticação | `auth.users`, gerenciada pelo Supabase Auth | Consultar no painel em **Authentication → Users**; o aplicativo usa a API do Auth. |
| Resultado concluído | `public.exam_attempts` | Apenas a conta identificada em `user_id`, protegida por RLS. |
| Questões do caderno de erros | Coluna `mistakes` de `public.exam_attempts` | Mesmo acesso privado do resultado. |
| Último resultado do visitante que escolheu guardar | `localStorage`, chave `provacerta-pending-result` | Temporário no navegador; removido após o salvamento. |

Nos cards do catálogo e nas provas em destaque, a conta conectada vê **Você já
fez esta prova**, o nome e a pontuação da última tentativa daquela origem e
**Ver meu histórico**. A coluna `exam_source` identifica a origem dos novos
resultados. A atualização [update-study-history-exam-source.sql](update-study-history-exam-source.sql)
já foi aplicada ao ProvaCerta; registros anteriores são reconhecidos pelo título
quando possível. O catálogo consulta somente identificação e pontuação,
sem carregar `mistakes`. Visitantes continuam escolhendo provas normalmente.

As senhas são protegidas por hash pelo Supabase Auth, sem armazenamento em texto
aberto nas tabelas públicas. `user_id` referencia o `id` de `auth.users`. A
tabela legada `public.attempts` permanece no schema, mas não é usada pela nova
área de progresso e não recebe importação automática para `exam_attempts`.

Cada resultado registra título, datas de início/conclusão, modo com ou sem
limite de tempo, total de questões, acertos, erros, brancos, anuladas e pontuação.
`mistakes` guarda somente as questões erradas, incluindo materiais de apoio,
alternativas, resposta marcada, gabarito, explicação e referência oficial,
quando presentes. Assim, a revisão preserva o conteúdo da tentativa mesmo
se a questão original for alterada depois.

O arquivo [setup-study-history.sql](setup-study-history.sql) cria a tabela,
as validações, o índice e as políticas. Para outro projeto Supabase, execute-o
no SQL Editor depois de preparar o banco de provas. No ProvaCerta, essa etapa
já foi aplicada. O cliente autenticado pode ler, inserir e excluir somente
registros próprios; a interface atual não oferece exclusão de tentativas.
Não há permissão de atualização de resultados para o cliente público.

## Configuração no painel antes da publicação

Em [Authentication → URL Configuration](https://supabase.com/dashboard/project/tzwrgkxjdxkgcennjgwx/auth/url-configuration):

- **Site URL:** `https://prova-certa-dusky.vercel.app/`
- **Redirect URLs:** adicionar `https://prova-certa-dusky.vercel.app/`, `http://localhost:5173/` e `http://127.0.0.1:5173/`.
- Preservar as URLs já usadas por outras integrações. Não liberar todos os domínios com um curinga global.

O aplicativo envia o endereço atual como destino dos e-mails de confirmação e recuperação. Mantenha os templates padrão com `{{ .ConfirmationURL }}` ou confira se templates personalizados usam o destino autorizado. A confirmação cria uma sessão; o link de recuperação abre o formulário de nova senha.

Em Authentication → Emails → SMTP Settings, configurar **SMTP próprio** para enviar e-mails aos alunos. O envio padrão do Supabase atende somente endereços da equipe do projeto e possui limites restritos; não serve para cadastros públicos. Não desative a confirmação de e-mail para contornar essa limitação. Preencha credenciais SMTP somente no painel do Supabase, nunca no código ou no chat. [Documentação oficial](https://supabase.com/docs/guides/auth/auth-smtp).

A criação da tabela não configura os destinos dos links nem o serviço SMTP.
Essas etapas precisam ser conferidas no painel de autenticação. O envio real
de confirmação/recuperação ainda não foi testado; os testes locais simulam o
cliente de autenticação sem enviar e-mails.

Na Vercel, manter `VITE_SUPABASE_URL` e `VITE_SUPABASE_PUBLISHABLE_KEY` no ambiente do projeto e publicar o código atualizado. Essas duas variáveis já eram usadas para carregar provas. Não adicionar chave `service_role`.

## Comportamento

- Provas, simulados, redação, pontuação e revisão continuam públicos.
- O círculo ao lado do tema abre entrada, cadastro e recuperação. Durante prova/revisão ele fica oculto junto com a navegação.
- Quem conclui uma prova com conta tem a tentativa salva automaticamente. O identificador único evita duplicações ao abrir a revisão e voltar.
- No resultado do visitante, entrar mantém a prova na tela. Ao escolher guardar o resultado, a última tentativa fica temporariamente no navegador para sobreviver à confirmação por e-mail em outra aba. Após salvar, ela é removida. Ela é vinculada à primeira conta que entra e não é transferida para outra conta.
- O histórico e o caderno de erros paginam 20 tentativas por página. O caderno contém somente respostas incorretas, preservando enunciado, apoio, figuras, alternativas, gabarito e explicação existentes no momento da tentativa. Questões em branco/anuladas aparecem nos totais do histórico.
- INSS mantém pontuação líquida: acerto +1, erro −1, anulada +1, branco 0.
- Não há importação retroativa de tentativas anteriores à implementação, login Google ou sincronização de redações nesta versão.

## Como consultar o progresso

1. Entre pelo círculo no topo e faça uma prova ou um simulado.
2. Ao concluir, aguarde **Resultado salvo no seu histórico**. Se houver falha,
   use **Tentar novamente** antes de sair da tela.
3. Abra o menu da conta e escolha **Meu progresso**.
4. Na aba **Histórico**, consulte datas, pontuação e contagens.
5. Na aba **Caderno de erros**, expanda a questão para revisar a resposta marcada
   e o gabarito. Use **Anterior** e **Próxima** para consultar outras páginas.

Se a prova foi feita sem conta, clique em **Entre ou crie uma conta** no
resultado. Essa escolha preserva a última tentativa neste navegador para o
salvamento após a entrada ou a confirmação do cadastro. A preservação depende
do armazenamento local disponível: limpar os dados do navegador antes de
salvar remove essa cópia. A primeira conta que entra fica vinculada à tentativa;
se o salvamento falhar, entrar em outra conta não transfere o resultado.

## Validação

`node scripts/verify-study-account.mjs` cobre acesso sem conta, navegação oculta durante provas, preservação das questões, contagens, pontuação negativa do INSS, proteção ao trocar contas, repetição segura do salvamento e falhas de conexão.

Os testes do banco foram executados em transação revertida: leitura própria permitida; leitura, gravação e exclusão entre contas bloqueadas; leitura por visitante bloqueada. O verificador de segurança do Supabase não apontou avisos.

Na conferência de 8 de outubro de 2026, após adicionar a origem do resultado,
o verificador não apontou problemas nas políticas do histórico. Ele sinalizou
a proteção de senhas vazadas desativada no Supabase Auth. A configuração de
Auth não foi alterada nessa atualização do catálogo; consulte a
[orientação oficial sobre proteção de senhas](https://supabase.com/docs/guides/auth/password-security#password-strength-and-leaked-password-protection).

Após configurar os URLs/SMTP e publicar, testar com um e-mail seu: cadastro → confirmação → prova → histórico → caderno de erros → sair → recuperação → nova senha. Nenhum e-mail de teste foi enviado nesta implementação.
