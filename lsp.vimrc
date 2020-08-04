call minpac#add('neovim/nvim-lsp')
call minpac#add('nvim-lua/diagnostic-nvim')

lua << EOF
vim.cmd('packadd nvim-lsp')
require'nvim_lsp'.cssls.setup{}
require'nvim_lsp'.html.setup{}
-- require'nvim_lsp'.jsonls.setup{on_attach=require'diagnostic'.on_attach}
-- require'nvim_lsp'.pyls.setup{on_attach=require'diagnostic'.on_attach}
-- require'nvim_lsp'.solargraph.setup{on_attach=require'diagnostic'.on_attach}
require'nvim_lsp'.tsserver.setup{}
-- require'nvim_lsp'.vimls.setup{on_attach=require'diagnostic'.on_attach}
require'nvim_lsp'.vuels.setup{}
-- require'nvim_lsp'.yamlls.setup{on_attach=require'diagnostic'.on_attach}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

