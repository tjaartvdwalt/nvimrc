return {

  -- {
  --   "folke/which-key.nvim",
  --   config = function()
  --     vim.o.timeout = true
  --     vim.o.timeoutlen = 500
  --     require("which-key").setup({
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     })
  --   end,
  -- },
	{"direnv/direnv.vim"},
  { "tpope/vim-bundler" },

  { "tpope/vim-dispatch" },
  { "tpope/vim-endwise" },
  { "tpope/vim-eunuch" },
  { "tpope/vim-fugitive" },
  -- { "junegunn/gv.vim" },
  { "tpope/vim-heroku" },
  { "tpope/vim-obsession" },
  { "tpope/vim-projectionist" },
  { "tpope/vim-repeat" },
  { "tpope/vim-rails" },
  { "tpope/vim-rake" },

  { "tpope/vim-rhubarb" },
  { "tpope/vim-sensible" },
  { "tpope/vim-sleuth" },
  { "tpope/vim-speeddating" },
  -- { "tpope/vim-surround" },
  -- { "tpope/vim-unimpaired" },
  -- { "tpope/vim-vinegar" },

  -- { "junegunn/fzf" },
  -- {
  --   "junegunn/fzf.vim",
  --   config = function()
  --     vim.g["fzf_preview_window"] = ""
  --   end,
  -- },
  -- { "mhinz/vim-grepper" },
  -- {
  --   {
  --     "voldikss/vim-floaterm",
  --     config = function()
  --       vim.g["floaterm_width"] = 0.99
  --       vim.g["floaterm_height"] = 0.99
  --
  --       local wk = require("which-key")
  --       wk.register({ t = { name = "Terminal" } }, { prefix = "<leader>" })
  --     end,
  --     keys = {
  --
  --       { "<leader>tt", ":FloatermToggle<cr>", { noremap = true } },
  --       { "<leader>tg", ":FloatermNew lazygit<CR>", { noremap = true } },
  --     },
  --   },
  -- },
}
