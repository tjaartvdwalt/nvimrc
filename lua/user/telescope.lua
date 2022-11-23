vim.api.nvim_set_keymap("n", "<leader>f", ":Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  ":lua require'telescope'.extensions.project.project{}<CR>",
  { noremap = true, silent = true }
)

require("telescope").setup({
  defaults = {},
  pickers = {
    buffers = {
      sort_lastused = false,
    },
  },
  extensions = {},
})
