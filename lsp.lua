vim.cmd("call minpac#add('nvim/nvim-lspconfig')")

vim.cmd("call minpac#add('kabouzeid/nvim-lspinstall')")

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

vim.cmd('packadd! nvim-lspconfig')

vim.cmd('set completeopt=menuone,noselect')

vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {})
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {})

vim.api.nvim_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
vim.api.nvim_set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', {})
vim.api.nvim_set_keymap('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', {})

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
end

lsp.css.setup{on_attach = on_attach}

lsp.dockerfile.setup{on_attach = on_attach}

-- lsp.gop.setup{on_attach = on_attach}

lsp.html.setup{on_attach = on_attach}

lsp.json.setup{on_attach = on_attach}

lsp.lua.setup{on_attach = on_attach}

lsp.python.setup{on_attach = on_attach}

lsp.ruby.setup{
  on_attach = on_attach,
  settings = {
    solargraph = {
      diagnostics = true,
      formatting = true
    }
  }
}

lsp.typescript.setup{on_attach = on_attach}

lsp.vim.setup{on_attach = on_attach}

lsp.vue.setup{on_attach = on_attach}

lsp.yaml.setup{on_attach = on_attach}

