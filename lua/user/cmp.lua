vim.o.completeopt = "menuone,noselect"
local cmp = require("cmp")
  cmp.setup({
  completion = {
    autocomplete = true
  },
  -- snippet = {
  --   expand = function(args)
  --     require'luasnip'.lsp_expand(args.body)
  --   end
  -- },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true
    }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      end
    end, { "i", "s" }),
  },
  sources = {
    { name = 'nvim_lsp' },

    { name = 'luanips' },

    { name = 'buffer' },
  }
})

