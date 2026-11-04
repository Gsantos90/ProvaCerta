# E-mails de autenticação — Prova Certa

Modelos preparados para aplicação em Authentication → Email Templates no painel do Supabase.

| Modelo | Assunto | Conteúdo |
| --- | --- | --- |
| Reset password | Redefina sua senha — Prova Certa | `reset-password.html` |
| Confirm signup | Confirme seu e-mail — Prova Certa | `confirm-signup.html` |

Copie o HTML integral para o corpo do modelo correspondente e salve o assunto e o conteúdo. Preserve `{{ .ConfirmationURL }}` nos botões e nos links alternativos: o Supabase substitui a variável pelo endereço de verificação adequado a cada envio.

Os arquivos locais não alteram automaticamente a configuração do projeto hospedado. Os dois modelos foram aplicados e conferidos nas prévias do painel do projeto ProvaCerta em 03/11/2026. Não substitua o link de verificação pela URL inicial do site.

Na mesma data, o SMTP do Gmail foi habilitado com o remetente Prova Certa e a autenticação SMTP foi validada diretamente com o servidor. Nenhuma senha de app foi gravada nos arquivos do projeto. A entrega efetiva deve ser conferida no próximo cadastro ou pedido de recuperação feito pelo usuário.

Referência: https://supabase.com/docs/guides/auth/auth-email-templates
