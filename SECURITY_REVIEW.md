# Revisão de segurança — 9 de outubro de 2026

## Escopo e limitações

Revisão local do React/Vite, configuração de hospedagem, dependências npm e permissões do projeto Supabase. A análise do Strix está pendente: três consultas ao repositório retornaram solicitação de autenticação, mesmo após aceite. Nenhum scan foi iniciado e nenhum resultado é atribuído ao Strix.

Não houve publicação desta versão na Vercel. Os cabeçalhos de produção foram testados em uma compilação local servida com as mesmas regras. As permissões do banco já foram corrigidas e verificadas no projeto configurado.

## Correções e organização

- URLs de links e imagens recuperados do histórico passam por validação central em `src/lib/safeUrls.js`. Protocolos executáveis, endereços com credenciais, caracteres de controle e caminhos que viram URLs externas são rejeitados. Links HTTP/HTTPS e imagens locais válidas continuam funcionando.
- `vercel.json` passa a definir CSP, bloqueio de enquadramento em outros sites, `nosniff` e política de referência. A CSP permite scripts locais, fontes Google e conexão ao Supabase. Estilos inline são mantidos para preservar os componentes e diagramas existentes.
- A inicialização do tema foi movida para `public/theme-init.js`, com a mesma lógica e execução antes da pintura. Assim, não é necessário permitir scripts inline na CSP.
- Foram removidos privilégios de escrita e TRUNCATE para visitantes e usuários nas tabelas `exams`, `questions` e `essay_themes`. Antes, as policies de RLS já negavam a escrita; a mudança acrescenta uma segunda barreira de proteção sem modificar dados. Conteúdo autoral já tinha privilégios apenas de leitura. Histórico mantém seu acesso privado por proprietário.
- Dados malformados no campo `mistakes` deixam de quebrar a abertura do histórico.
- Quatorze componentes de provas foram extraídos de `src/main.jsx` para `src/ExamCards.jsx`, mantendo JSX, estilos, propriedades e callbacks.
- Dependências diretas foram fixadas nas versões já presentes no lockfile. Nenhum pacote foi atualizado nesta revisão.

## Validação realizada

- `npm audit --json`: zero vulnerabilidades conhecidas reportadas, incluindo dependências de desenvolvimento.
- `npm run build`: aprovado. Permanece o aviso preexistente de tamanho do pacote principal.
- `node scripts/verify-security.mjs`: URLs maliciosas rejeitadas, regras de cabeçalhos verificadas, lockfile consistente e HTML da página inicial idêntico ao commit `c666bdd`.
- Verificações de sessões, catálogo, conta/autenticação, resumos, redação, INSS, ENEM, FUVEST e prática autoral aprovadas.
- Banco: RLS ativo nas sete tabelas públicas; histórico restrito ao proprietário; leitura pública e rejeição de escrita verificadas pela API.
- Navegador na compilação com CSP: página inicial e abertura da prática com dez questões funcionaram sem avisos/erros capturados.

## Pendências

1. Reconectar o Strix para realizar a análise solicitada. Esta revisão manual não substitui esse scan.
2. O Security Advisor do Supabase sinaliza proteção contra senhas vazadas desativada. Não existe ferramenta conectada para alterar essa configuração. A opção depende de plano Pro ou superior: [documentação de proteção de senhas](https://supabase.com/docs/guides/auth/password-security#password-strength-and-leaked-password-protection). Ativação no painel em Authentication → Settings.
3. Aplicar os cabeçalhos em produção requer publicar a versão alterada do projeto.

Resultados sem falhas nesta revisão não são garantia de ausência de outras vulnerabilidades. Não foram realizados testes destrutivos, criação de contas reais ou tentativas de acessar dados de terceiros.
