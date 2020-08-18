let b:ale_linters = ['eslint', 'prettier']
let b:neoformat_enabled_javascript = ['prettier']
set foldmethod=syntax

setlocal omnifunc=v:lua.vim.lsp.omnifunc
