vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  require 'illuminate'.on_attach(client)
end

local servers = { 'bashls', 'cssls', 'dockerls', 'gopls', 'html', 'jsonls', 'lemminx', 'ltex', 'pylsp', 'sourcekit', 'sqls', 'sumneko_lua', 'texlab', 'tsserver', 'vimls', 'yamlls' }




for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

require('lspconfig')['solargraph'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    solargraph = {
      diagnostics = true,
      formatting = true
    }
  }
}

require('lspconfig').volar.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

-- -- local on_attach = function(client)
-- --   capabilities = pcall(require, "cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- -- end

-- require('lspconfig').pylsp.setup{
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- lsp.cssls.setup{
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- lsp.dockerls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.gopls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.html.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.jsonls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.lemminx.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.ltex.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.pylsp.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- -- lsp.sorbet.setup{}

-- lsp.sourcekit.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.sqls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.sumneko_lua.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.texlab.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- -- lsp.tailwindcss.setup{on_attach = on_attach}

-- lsp.tsserver.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- lsp.vimls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

-- -- lsp.vuels.setup{on_attach = on_attach}

-- lsp.yamlls.setup{
--   on_attach = on_attach,
--    capabilities = capabilities
-- }

