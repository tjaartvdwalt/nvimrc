vim.cmd("call minpac#add('nvim-lua/plenary.nvim')")
vim.cmd("call minpac#add('nvim-telescope/telescope.nvim')")
vim.cmd("call minpac#add('nvim-telescope/telescope-github.nvim')")
vim.cmd("call minpac#add('nvim-telescope/telescope-project.nvim')")

vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', {noremap = true})

require'telescope'.load_extension('project')
vim.api.nvim_set_keymap('n','<leader>p', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})

require("telescope").setup {
  defaults = {},
  pickers = {
    buffers = {
      sort_lastused = false,
    },
  },
  extensions = {}
}
