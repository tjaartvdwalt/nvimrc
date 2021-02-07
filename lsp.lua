vim.cmd("call minpac#add('nvim/nvim-lsp')")
vim.cmd("call minpac#add('nvim/nvim-lspconfig')")
vim.cmd("call minpac#add('nvim-lua/completion-nvim')")


vim.cmd('packadd! nvim-lsp')
vim.cmd('packadd! nvim-lspconfig')
vim.cmd('packadd! completion-nvim')

vim.cmd('set completeopt=menuone,noinsert,noselect')

vim.g['completion_enable_auto_popup'] = 1
vim.g['completion_enable_snippet'] = 'UltiSnips'
vim.g['completion_enable_auto_signature'] = 1

vim.api.nvim_set_keymap('n', '[w', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {})
vim.api.nvim_set_keymap('n', ']w', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {})

vim.api.nvim_set_keymap('n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
vim.api.nvim_set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
vim.api.nvim_set_keymap('n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', {})
vim.api.nvim_set_keymap('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', {})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})

vim.api.nvim_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', {})
vim.api.nvim_set_keymap('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', {})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)

local lsp = require 'lspconfig'

local on_attach = function(client)
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


