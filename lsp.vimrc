call minpac#add('neovim/nvim-lsp')
call minpac#add('neovim/nvim-lspconfig')
call minpac#add('nvim-lua/completion-nvim')

nnoremap <silent> [w <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> ]w <cmd>lua vim.lsp.diagnostic.goto_next()<cr>

sign define LspDiagnosticsSignError text=>> texthl=LspDiagnosticsError linehl= numhl=
sign define LspDiagnosticsSignWarning text=-- texthl=LspDiagnosticsWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=!! texthl=LspDiagnosticsInformation linehl= numhl=
sign define LspDiagnosticsSignHint text=?? texthl=LspDiagnosticsHint linehl= numhl=

set completeopt=menuone,noinsert,noselect
let g:completion_enable_auto_popup = 1
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_enable_auto_signature = 1


lua << EOF
vim.cmd('packadd nvim-lsp')

local lsp = require 'lspconfig'
local nvim_command = vim.api.nvim_command

local on_attach = function(client)
  -- nvim_command("autocmd CursorHold <buffer> lua require'jumpLoc'.openLineDiagnostics()")
  require'completion'.on_attach()

end

-- sudo npm install -g vscode-css-languageserver-bin
lsp.cssls.setup{on_attach = on_attach}
-- sudo npm install -g dockerfile-language-server-nodejs
lsp.dockerls.setup{on_attach = on_attach}
lsp.gopls.setup{on_attach = on_attach}
-- sudo npm install -g vscode-html-languageserver-bin
lsp.html.setup{on_attach = on_attach}
-- sudo npm install -g vscode-json-languageserver
lsp.jsonls.setup{on_attach = on_attach}
lsp.pyls.setup{on_attach = on_attach}
-- gem install solargraph
lsp.solargraph.setup{
  on_attach = on_attach,
  settings = {
    solargraph = {
      diagnostics = true,
      formatting = true
    }
  }
}
-- sudo npm install -g typescript typescript-language-server
lsp.tsserver.setup{on_attach = on_attach}
-- sudo npm install -g vim-language-server
lsp.vimls.setup{on_attach = on_attach}
-- sudo npm install -g vls
lsp.vuels.setup{on_attach = on_attach}
-- sudo npm install -g yaml-language-server
lsp.yamlls.setup{on_attach = on_attach}
EOF

nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>

