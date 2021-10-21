vim.cmd("call minpac#add('hrsh7th/nvim-cmp')")
vim.cmd("call minpac#add('hrsh7th/cmp-buffer')")
vim.cmd("call minpac#add('quangnguyen30192/cmp-nvim-ultisnips')")

vim.o.completeopt = "menuone,noselect"

local cmp = require'cmp'

  cmp.setup({
  completion = {
    autocomplete = false
  },
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true
    }),
  },
  sources = {
    { name = 'nvim_lsp' },

    { name = 'ultisnips' },

    { name = 'buffer' },
  }
})

