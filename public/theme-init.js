// Executado antes da página ser pintada para preservar o tema sem piscar.
(() => {
  let theme
  try { theme = localStorage.getItem('provacerta-theme') } catch {}
  if (theme !== 'dark' && theme !== 'light') theme = window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
  document.documentElement.dataset.theme = theme
  document.documentElement.style.colorScheme = theme
  document.querySelector('meta[name="theme-color"]').content = theme === 'dark' ? '#101725' : '#f7f9fc'
})()
