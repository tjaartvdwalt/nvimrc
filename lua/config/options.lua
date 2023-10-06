-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.encoding = "UTF-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.foldenable = false
vim.opt.nu = true
vim.opt.hidden = false
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.confirm = false

vim.opt.omnifunc = "syntaxcomplete#Complete"

vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.spellfile = "~/.config/nvim/spell/en.utf-8.add"
vim.opt.spell = true
vim.opt.expandtab = false
vim.opt.tags = "tags;/"
vim.opt.wildmode = "longest:list,full"
vim.opt.title = true
vim.opt.titlelen = 33

vim.opt.termguicolors = true
vim.opt.updatetime = 750

-- vim.opt.ch=0
vim.api.nvim_set_option("clipboard","unnamed,unnamedplus") 

vim.api.nvim_set_option("background","dark") 

-- Show only 1 status line
vim.cmd([[ set laststatus=3 ]])

vim.g["netrw_keepdir"] = 0
-- "prevent nested instances

-- if has('nvim') && executable('nvr')
--  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
-- endif

-- let mapleader = " "

-- syntax enable
-- filetype plugin on

-- vim.g['netrw_list_hide'] = '\(^\|\s\s\)\zs\.\S\+'
vim.g["netrw_sort_options"] = "i"

-- -- Copy visual selection into system clipboard
-- -- https://github.com/neovim/neovim/issues/2325
-- -- vim.cmd("set mouse=a")
-- vim.keymap.set("v", "<LeftRelease>", '"*ygv<CR>', {})
