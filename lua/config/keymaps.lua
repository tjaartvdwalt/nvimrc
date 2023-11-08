vim.keymap.set("n", "<C-u>", ":", {})
vim.keymap.set("i", "<C-u>", "<Esc>:", {})
-- keymap("n", "<C-c>", ":", {})
-- keymap("i", "<C-c>", "<Esc>:", {})

-- vim.keymap.set("n", "<C-l>", ":nohlsearch<cr><C-l>", { noremap = true })

-- wk.register({ t = { name = "Terminal" } }, { prefix = "<leader>" })
-- vim.keymap.set("n", "<leader>tt", ":FloatermToggle<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>tg", ":FloatermNew lazygit<CR>", { noremap = true })

-- local wk = require("which-key")
-- wk.register({ s = { name = "Spell" } }, { prefix = "<leader>" })
-- vim.keymap.set("n", "<leader>ss", ":set spell!<cr>", { noremap = true })

vim.keymap.set("n", "<leader>v", ":e ~/.config/nvim/<cr>", { noremap = true })

-- vim.keymap.set("n", "<Leader>a", ":ProjectDo GrepperRg -S<space>", { noremap = true })

vim.keymap.set("n", "_", '"_', { noremap = true, desc = "Black hole register" })
vim.keymap.set("v", "_", '"_', { noremap = true, desc = "Black hole register" })

-- -- Move to window using the <ctrl> hjkl keys
-- vim.keymap.del("n", "<C-h>")
-- vim.keymap.del("n", "<C-j>")
-- vim.keymap.del("n", "<C-k>")
-- vim.keymap.del("n", "<C-l>")
--
-- -- Resize window using <ctrl> arrow keys
-- vim.keymap.del("n", "<C-Up>")
-- vim.keymap.del("n", "<C-Down>")
-- vim.keymap.del("n", "<C-Left>")
-- vim.keymap.del("n", "<C-Right>")
--
-- -- Resize window using <ctrl> arrow keys
-- vim.keymap.set("n", "<C-Up>", ":lua require('tmux').move_top()<cr>",{ remap = true, desc = "Go to upper window", silent = true } )
-- vim.keymap.set("n", "<C-Down>", ":lua require('tmux').move_bottom()<cr>", { remap = true, desc = "Go to lower window", silent = true })
-- vim.keymap.set("n", "<C-Left>", ":lua require('tmux').move_left()<cr>", { remap = true, desc = "Go to left window", silent = true  })
-- vim.keymap.set("n", "<C-Right>", ":lua require('tmux').move_right()<cr>", { remap = true, desc = "Go to right window", silent = true  })
--
-- vim.keymap.set("n", "<M-Up>", ":lua require('tmux').resize_top()<cr>",{ remap = true, desc = "Increase window height", silent = true  } )
-- vim.keymap.set("n", "<M-Down>", ":lua require('tmux').resize_bottom()<cr>", { remap = true, desc = "Decrease window height", silent = true  })
-- vim.keymap.set("n", "<M-Left>", ":lua require('tmux').resize_left()<cr>", { remap = true, desc = "Decrease window width", silent = true  })
-- vim.keymap.set("n", "<M-Right>", ":lua require('tmux').resize_right()<cr>", { remap = true, desc = "Increase window width", silent = true  })

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

-- vim.cmd("cnoreabbrev f lua require('conform').format({ async = true, lsp_fallback = true })")
vim.cmd("cnoreabbrev f LazyFormat")
vim.cmd("cnoreabbrev g vertical rightbelow Git")
vim.cmd("cnoreabbrev o only")
vim.cmd("cnoreabbrev bo BufOnly")
vim.cmd("cnoreabbrev cdc cd %:p:h")
vim.cmd("cnoreabbrev tn tabnew")

