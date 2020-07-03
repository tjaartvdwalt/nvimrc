" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

" Close other windows, except currently focused one
cnoreabbrev o only

nnoremap <leader>v :e /home/tjaart/.config/nivm/<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>c :cd %:p:h<CR>:pwd<CR>
