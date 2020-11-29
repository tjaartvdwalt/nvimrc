call minpac#add('nvim-treesitter/nvim-treesitter')

lua << EOF
vim.cmd('packadd nvim-treesitter')

require "nvim-treesitter.configs".setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "python" },  -- list of language that will be disabled
  },
}
EOF
