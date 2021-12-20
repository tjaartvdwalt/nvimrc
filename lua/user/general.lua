vim.opt.encoding='UTF-8'
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.foldenable = false
vim.opt.nu = true
vim.opt.hidden = true

vim.opt.omnifunc='syntaxcomplete#Complete'

vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.spellfile='~/.config/nvim/spell/en.utf-8.add'
vim.opt.spell = true
vim.opt.expandtab = false
vim.opt.tags='tags;/'
vim.opt.wildmode='longest:list,full'
vim.opt.title = true
vim.opt.titlelen=33

vim.opt.updatetime=750


vim.cmd [[
"Manage undo files
set undofile
"Do not create undo files for /tmp files
augroup vimrc
  autocmd!
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

" set autochdir
autocmd BufEnter * silent! lcd %:p:h
autocmd TabEnter * silent! tcd %:p:h
]]

vim.g['netrw_keepdir'] = 0
-- "prevent nested instances


-- if has('nvim') && executable('nvr')
--  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
-- endif


vim.cmd [[
augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
  autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal spell
augroup END
]]
-- let mapleader = " "

-- syntax enable
-- filetype plugin on

-- vim.g['netrw_list_hide'] = '\(^\|\s\s\)\zs\.\S\+'
vim.g['netrw_sort_options'] = "i"

vim.cmd('autocmd TermOpen * setlocal nonumber norelativenumber')
