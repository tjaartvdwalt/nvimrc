vim.cmd("call minpac#add('nvim-treesitter/nvim-treesitter')")
vim.cmd("call minpac#add('andymass/vim-matchup')")
vim.cmd("call minpac#add('JoosepAlviste/nvim-ts-context-commentstring')")

vim.cmd('packadd nvim-treesitter')
-- call minpac#add('andymass/vim-matchup')

require "nvim-treesitter.configs".setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },              -- list of language that will be disabled
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = { "vue" },              -- optional, list of language that will be disabled
  },
  context_commentstring = {
    enable = true
  }
}
