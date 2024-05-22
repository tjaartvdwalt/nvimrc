-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.confirm = false
vim.opt.expandtab = false
vim.opt.relativenumber = false
vim.opt.title = true
vim.opt.wrap = true
vim.opt.wildmode = "longest:list,full"

-- Maybe keep
vim.opt.encoding = "UTF-8"
-- vim.opt.incsearch = true
vim.opt.spellfile = "~/.config/nvim/spell/en.utf-8.add"

-- Lazyvim config
vim.g.lazyvim_python_lsp = "basedpyright"

-- Discard
-- vim.opt.titlelen = 33
-- vim.opt.hlsearch = true
-- vim.opt.ignorecase = true
-- vim.opt.list = true
-- vim.opt.foldenable = false
-- vim.opt.nu = true
-- vim.opt.hidden = false

-- vim.opt.omnifunc = "syntaxcomplete#Complete"

-- vim.opt.showcmd = true
-- vim.opt.smartcase = true
-- vim.opt.spell = true
-- vim.opt.tags = "tags;/"

-- vim.opt.termguicolors = true
-- vim.opt.updatetime = 750

-- vim.opt.ch=0

-- vim.api.nvim_set_option("background","dark") 

-- Show only 1 status line
-- vim.cmd([[ set laststatus=3 ]])


-- "prevent nested instances

-- if has('nvim') && executable('nvr')
--  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
-- endif

-- let mapleader = " "

-- syntax enable
-- filetype plugin on

-- vim.g['netrw_list_hide'] = '\(^\|\s\s\)\zs\.\S\+'
-- vim.g.netrw_keepdir = 0
-- vim.g.netrw_sort_options = "i"

-- -- Copy visual selection into system clipboard
-- -- https://github.com/neovim/neovim/issues/2325
-- -- vim.cmd("set mouse=a")
-- vim.keymap.set("v", "<LeftRelease>", '"*ygv<CR>', {})
