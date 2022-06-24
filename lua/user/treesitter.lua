require("nvim-treesitter.configs").setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
   ignore_install = { "phpdoc" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },              -- list of language that will be disabled
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "vue" },              -- optional, list of language that will be disabled
  },
  context_commentstring = {
    enable = true
  }
}
