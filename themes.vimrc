if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
set background=dark
colorscheme solarized8

" call minpac#add('joshdick/onedark.vim', {'name':'onedark','type': 'opt'})
" packadd! onedark.vim
" let g:onedark_terminal_italics = 1
" let g:airline_theme='onedark'
" colorscheme onedark



" call minpac#add('dracula/vim', {'name': 'dracula', 'type': 'opt'})
" packadd! dracula
" let g:dracula_colorterm = 0
" colorscheme dracula
" let g:netrw_special_syntax= 1

" call minpac#add('liuchengxu/space-vim-dark', {'type': 'opt'})
" colorscheme space-vim-dark
" hi Comment guifg=#5C6370 ctermfg=59
" hi Comment    cterm=italic
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE


