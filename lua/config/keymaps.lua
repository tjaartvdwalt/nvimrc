vim.keymap.set("n", "<C-u>", ":", {})
vim.keymap.set("i", "<C-u>", "<Esc>:", {})
-- keymap("n", "<C-c>", ":", {})
-- keymap("i", "<C-c>", "<Esc>:", {})

-- vim.keymap.set("n", "<C-l>", ":nohlsearch<cr><C-l>", { noremap = true })

-- wk.register({ t = { name = "Terminal" } }, { prefix = "<leader>" })
-- vim.keymap.set("n", "<leader>tt", ":FloatermToggle<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>tg", ":FloatermNew lazygit<CR>", { noremap = true })

local wk = require("which-key")
wk.register({ s = { name = "Spell" } }, { prefix = "<leader>" })
-- vim.keymap.set("n", "<leader>ss", ":set spell!<cr>", { noremap = true })

vim.keymap.set("n", "<leader>v", ":e ~/.config/nvim/<cr>", { noremap = true })

vim.keymap.set("n", "<Leader>a", ":ProjectDo GrepperRg -S<space>", { noremap = true })

vim.keymap.set("n", "<leader>gs", ":FzfLua git_stash<cr>", { noremap = true, desc = "Git Stash" })
vim.keymap.set("n", "<leader>gb", ":FzfLua git_branches<cr>", { noremap = true, desc = "Git Branches" })

vim.keymap.set("n", "_", '"_', { noremap = true, desc = "Black hole register" })
vim.keymap.set("v", "_", '"_', { noremap = true, desc = "Black hole register" })

-- vim.keymap.set("n", "<Leader>/g", ":GrepperRg -S<space>", { noremap = true })

-- vim.keymap.set("n", "<Leader>b", ":b#<cr>", { noremap = true })

-- vim.keymap.set("n", "s", "<Plug>Sneak_s", {})
-- vim.keymap.set("n", "S", "<Plug>Sneak_S", {})
-- vim.keymap.set("n", "f", "<Plug>Sneak_f", {})
-- vim.keymap.set("n", "F", "<Plug>Sneak_F", {})
-- vim.keymap.set("n", "t", "<Plug>Sneak_t", {})
-- vim.keymap.set("n", "T", "<Plug>Sneak_T", {})

-- user commands
-- vim.api.nvim_create_user_command("Momento", "lua require('memento').toggle()", {})
--
-- terminal
-- keymap("t", "<Esc>", "<C-\><C-n>", opts)
-- keymap("t", "<C-v><Esc>", "<Esc>", opts)

-- fzf
-- vim.keymap.set("n", "<leader>b", ":Buffers<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>w", ":Windows<cr>", { noremap = true })

-- vim.cmd(
--   "cnoreabbrev f lua vim.lsp.buf.format({async = true, timeout_ms = 5000, filter = function(filter_client) return filter_client.name == 'null-ls' end })"
-- )
vim.cmd("cnoreabbrev f lua vim.lsp.buf.format({ timeout_ms = 2000 })")
vim.cmd("cnoreabbrev g vertical rightbelow Git")
-- vim.cmd("cnoreabbrev gr Telescope gh")
vim.cmd("cnoreabbrev gs FzfLua git_stash")
vim.cmd("cnoreabbrev gb FzfLua git_branches")
vim.cmd("cnoreabbrev o only")
vim.cmd("cnoreabbrev bo BufOnly")
vim.cmd("cnoreabbrev cdc cd %:p:h")
vim.cmd("cnoreabbrev tn tabnew")

