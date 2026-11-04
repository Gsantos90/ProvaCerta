export const existingEmailMessage = 'Este e-mail já está cadastrado. Entre na sua conta ou use “Esqueci minha senha”.'

export function isExistingEmailSignup({ data, error } = {}) {
  if (error) {
    return ['user_already_exists', 'email_exists'].includes(error.code)
      || /^user already registered\.?$/i.test(error.message?.trim() || '')
  }
  // Com confirmação habilitada, uma conta já confirmada pode retornar
  // um usuário sem identidades em vez de um erro de cadastro duplicado.
  return !data?.session && Boolean(data?.user)
    && Array.isArray(data.user.identities) && data.user.identities.length === 0
}
