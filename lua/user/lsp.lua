vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = false,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>q", "<cmd>Trouble<CR>", opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  local bufopts = { noremap = true, silent = true }
  vim.keymap.set(bufnr, "n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set(bufnr, "n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set(bufnr, "n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set(bufnr, "n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set(bufnr, "n", "<c-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set(bufnr, "n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set(bufnr, "n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)

  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<c-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<c-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

  require("illuminate").on_attach(client)
  -- require("nvim-lightbulb").update_lightbulb()
end

-- Format using null-ls
local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers({
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup({})
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  ["sumneko_lua"] = function()
    require("lspconfig")["sumneko_lua"].setup({
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
        },
      },
    })
  end,
})

-- local servers = { 'bashls', 'cssls', 'dockerls', 'graphql', 'gopls', 'html', 'jsonls', 'lemminx', 'ltex', 'pyright', 'rome', 'sorbet', 'sourcekit', 'sqls', 'sumneko_lua', 'texlab', 'vimls', 'volar', 'yamlls' }

-- for _, lsp in pairs(servers) do
--   require('lspconfig')[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities
--   }
-- end

-- require('lspconfig')['solargraph'].setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     solargraph = {
--       diagnostics = true,
--       formatting = true
--     }
--   }
-- }

-- require('lspconfig').volar.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--     init_options = {
--     typescript = {
--       tsdk = '~/.local/share/nvim/lsp_servers/tsserver/node_modules/typescript/lib/'
--     }
--   }
-- }

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
