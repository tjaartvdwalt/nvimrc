--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-u>", ":", {})
vim.keymap.set("i", "<C-u>", "<Esc>:", {})
-- keymap("n", "<C-c>", ":", {})
-- keymap("i", "<C-c>", "<Esc>:", {})

vim.keymap.set("n", "<C-l>", ":nohlsearch<cr><C-l>", { noremap = true })

vim.keymap.set("n", "<leader>v", ":e ~/.config/nvim/<cr>", { noremap = true })
vim.keymap.set("n", "<leader>s", ":set spell!<cr>", { noremap = true })
vim.keymap.set("n", "<leader>t", ":FloatermToggle<cr>", { noremap = true })
-- keymap("n", "<leader>g", ":vertical rightbelow Git<cr>",{ noremap = true } )
vim.keymap.set("n", "<leader>g", ":FloatermNew lazygit<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>a", ":ProjectDo GrepperRg -S<space>", { noremap = true })
vim.keymap.set("n", "<Leader>/", ":GrepperRg -S<space>", { noremap = true })

vim.keymap.set("n", "<Leader>gb", ":Gitsigns toggle_current_line_blame<cr>", { noremap = true })

vim.keymap.set("n", "s", "<Plug>Sneak_s", {})
vim.keymap.set("n", "S", "<Plug>Sneak_S", {})
vim.keymap.set("n", "f", "<Plug>Sneak_f", {})
vim.keymap.set("n", "F", "<Plug>Sneak_F", {})
vim.keymap.set("n", "t", "<Plug>Sneak_t", {})
vim.keymap.set("n", "T", "<Plug>Sneak_T", {})

-- user commands
vim.api.nvim_create_user_command("Momento", "lua require('memento').toggle()", {})
--
-- terminal
-- keymap("t", "<Esc>", "<C-\><C-n>", opts)
-- keymap("t", "<C-v><Esc>", "<Esc>", opts)

-- fzf
vim.keymap.set("n", "<leader>b", ":Buffers<cr>", { noremap = true })
vim.keymap.set("n", "<leader>w", ":Windows<cr>", { noremap = true })

vim.cmd("cnoreabbrev f lua vim.lsp.buf.format()")
vim.cmd("cnoreabbrev g vertical rightbelow Git")
vim.cmd("cnoreabbrev gh Telescope gh")
vim.cmd("cnoreabbrev gs Telescope git_stash")
vim.cmd("cnoreabbrev o only")
vim.cmd("cnoreabbrev bo BufOnly")
vim.cmd("cnoreabbrev cdc cd %:p:h")
vim.cmd("cnoreabbrev tn tabnew")
