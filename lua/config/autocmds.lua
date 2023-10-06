vim.cmd([[
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
]])

vim.cmd([[
augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
  autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal spell
augroup END
]])

vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")
