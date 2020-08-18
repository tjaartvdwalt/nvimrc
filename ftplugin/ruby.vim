let b:ale_linters = ['rubocop']
let b:neoformat_enabled_ruby = ['rubocop']

setlocal omnifunc=v:lua.vim.lsp.omnifunc

let b:rubycomplete_buffer_loading = 1
let b:rubycomplete_classes_in_global = 1
let b:rubycomplete_rails = 1
let b:rubycomplete_load_gemfile = 1
