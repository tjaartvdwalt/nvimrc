-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-u>", ":", {})
keymap("i", "<C-u>", "<Esc>:", {})
-- keymap("n", "<C-c>", ":", {})
-- keymap("i", "<C-c>", "<Esc>:", {})

keymap("n", "<C-l>", ":nohlsearch<cr><C-l>", { noremap = true } )

keymap("n", "<leader>v", ":e ~/.config/nvim/<cr>", { noremap = true })
keymap("n", "<leader>s", ":set spell!<cr>",{ noremap = true } )
keymap("n", "<leader>t", ":ToggleTerm<cr>",{ noremap = true } )
keymap("n", "<leader>g", ":vertical rightbelow Git<cr>",{ noremap = true } )
keymap("n", "<leader>f", ":Neoformat<cr>",{ noremap = true } )
keymap("n", "<Leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>",{ noremap = true, silent = true } )

keymap("n", "<Leader>a", ":ProjectDo GrepperRg -S<space>", { noremap = true })
keymap("n", "<Leader>/", ":GrepperRg -S<space>", { noremap = true })


keymap("n", "f", "<Plug>Sneak_f", {})
keymap("n", "F", "<Plug>Sneak_F", {})
keymap("n", "t", "<Plug>Sneak_t", {})
keymap("n", "T", "<Plug>Sneak_T", {})

-- terminal
-- keymap("t", "<Esc>", "<C-\><C-n>", opts)
-- keymap("t", "<C-v><Esc>", "<Esc>", opts)

-- fzf
keymap("n", "<leader>b", ":Buffers<cr>", { noremap = true })
keymap("n", "<leader>w", ":Windows<cr>", { noremap = true })

-- custom aliases
vim.cmd [[
function! SetupCommandAlias(input, output)
  exec 'cabbrev <expr> '.a:input
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
        \ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction

call SetupCommandAlias("f", "Neoformat")
call SetupCommandAlias("g", "vertical rightbelow Git")
call SetupCommandAlias("gh", "Telescope gh")
call SetupCommandAlias("gs", "Telescope git_stash")
call SetupCommandAlias("o", "only")
call SetupCommandAlias("bo", "BufOnly")
call SetupCommandAlias("cdc", "cd %:p:h")
call SetupCommandAlias("tn", "tabnew")
]]
