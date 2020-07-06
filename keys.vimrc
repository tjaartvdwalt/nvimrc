" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:
nnoremap <C-l> :nohlsearch<CR><C-l>

" Close other windows, except currently focused one
cnoreabbrev o only

nnoremap <leader>v :e ~/.config/nvim/<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>c :cd %:p:h<CR>:pwd<CR>
