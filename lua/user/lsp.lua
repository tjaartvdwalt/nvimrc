require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

-- local function setup_servers()
--   require'lspinstall'.setup()
--   local servers = require'lspinstall'.installed_servers()
--   for _, server in pairs(servers) do
--     require'lspconfig'[server].setup{}
--   end
-- end

-- setup_servers()

-- -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require'lspinstall'.post_install_hook = function ()
--   setup_servers() -- reload installed servers
--   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end

-- vim.cmd('packadd! nvim-lspconfig')

vim.cmd('set completeopt=menuone,noselect')

vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {})
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {})
vim.api.nvim_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', {})

vim.api.nvim_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
vim.api.nvim_set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', 'gt', ':Trouble<CR>', {})
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

local lsp = require("lspconfig")

local on_attach = function(client)
  capabilities = pcall(require, "cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
end

lsp.bashls.setup{on_attach = on_attach}

lsp.cssls.setup{on_attach = on_attach}

lsp.dockerls.setup{on_attach = on_attach}

lsp.gopls.setup{on_attach = on_attach}

lsp.html.setup{on_attach = on_attach}

lsp.jsonls.setup{on_attach = on_attach}

lsp.lemminx.setup{on_attach = on_attach}

lsp.ltex.setup{on_attach = on_attach}

lsp.pylsp.setup{on_attach = on_attach}

lsp.solargraph.setup{
  on_attach = on_attach,
  -- settings = {
  --   solargraph = {
  --     diagnostics = true,
  --     formatting = true
  --   }
  -- }
}

-- lsp.sorbet.setup{}

lsp.sourcekit.setup{on_attach = on_attach}

lsp.sqls.setup{on_attach = on_attach}

lsp.sumneko_lua.setup{on_attach = on_attach}

lsp.texlab.setup{on_attach = on_attach}

-- lsp.tailwindcss.setup{on_attach = on_attach}

lsp.tsserver.setup{on_attach = on_attach}

lsp.vimls.setup{on_attach = on_attach}

-- lsp.vuels.setup{on_attach = on_attach}

lsp.volar.setup{
  -- on_attach = on_attach,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

lsp.yamlls.setup{on_attach = on_attach}

