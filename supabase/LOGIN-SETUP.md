# Login opcional do ProvaCerta

O código usa Supabase Auth com e-mail e senha. Cadastro e confirmação de e-mail estão habilitados no projeto `tzwrgkxjdxkgcennjgwx`. A tabela `exam_attempts` já foi aplicada ao banco e tem políticas de acesso exclusivas para o dono da tentativa. Nenhuma chave administrativa é usada no navegador.

## Configuração no painel antes da publicação

Em [Authentication → URL Configuration](https://supabase.com/dashboard/project/tzwrgkxjdxkgcennjgwx/auth/url-configuration):

- **Site URL:** `https://prova-certa-dusky.vercel.app/`
- **Redirect URLs:** adicionar `https://prova-certa-dusky.vercel.app/`, `http://localhost:5173/` e `http://127.0.0.1:5173/`.
- Preservar as URLs já usadas por outras integrações. Não liberar todos os domínios com um curinga global.

O aplicativo envia o endereço atual como destino dos e-mails de confirmação e recuperação. Mantenha os templates padrão com `{{ .ConfirmationURL }}` ou confira se templates personalizados usam o destino autorizado. A confirmação cria uma sessão; o link de recuperação abre o formulário de nova senha.

Em Authentication → Emails → SMTP Settings, configurar **SMTP próprio** para enviar e-mails aos alunos. O envio padrão do Supabase atende somente endereços da equipe do projeto e possui limites restritos; não serve para cadastros públicos. Não desative a confirmação de e-mail para contornar essa limitação. Preencha credenciais SMTP somente no painel do Supabase, nunca no código ou no chat. [Documentação oficial](https://supabase.com/docs/guides/auth/auth-smtp).

Essas configurações do serviço de autenticação não são acessíveis pelo conector Supabase disponível nesta conversa. Ainda precisam ser conferidas no painel; o envio real de confirmação/recuperação não foi testado.

Na Vercel, manter `VITE_SUPABASE_URL` e `VITE_SUPABASE_PUBLISHABLE_KEY` no ambiente do projeto e publicar o código atualizado. Essas duas variáveis já eram usadas para carregar provas. Não adicionar chave `service_role`.

## Comportamento

- Provas, simulados, redação, pontuação e revisão continuam públicos.
- O círculo ao lado do tema abre entrada, cadastro e recuperação. Durante prova/revisão ele fica oculto junto com a navegação.
- Quem conclui uma prova com conta tem a tentativa salva automaticamente. O identificador único evita duplicações ao abrir a revisão e voltar.
- No resultado do visitante, entrar mantém a prova na tela. Ao escolher guardar o resultado, a última tentativa fica temporariamente no navegador para sobreviver à confirmação por e-mail em outra aba. Após salvar, ela é removida. Ela é vinculada à primeira conta que entra e não é transferida para outra conta.
- O histórico e o caderno de erros paginam 20 tentativas por página. O caderno contém somente respostas incorretas, preservando enunciado, apoio, figuras, alternativas, gabarito e explicação existentes no momento da tentativa. Questões em branco/anuladas aparecem nos totais do histórico.
- INSS mantém pontuação líquida: acerto +1, erro −1, anulada +1, branco 0.
- Não há importação retroativa de tentativas anteriores à implementação, login Google ou sincronização de redações nesta versão.

## Validação

`node scripts/verify-study-account.mjs` cobre acesso sem conta, navegação oculta durante provas, preservação das questões, contagens, pontuação negativa do INSS, proteção ao trocar contas, repetição segura do salvamento e falhas de conexão.

Os testes do banco foram executados em transação revertida: leitura própria permitida; leitura, gravação e exclusão entre contas bloqueadas; leitura por visitante bloqueada. O verificador de segurança do Supabase não apontou avisos.

Após configurar os URLs/SMTP e publicar, testar com um e-mail seu: cadastro → confirmação → prova → histórico → caderno de erros → sair → recuperação → nova senha. Nenhum e-mail de teste foi enviado nesta implementação.
