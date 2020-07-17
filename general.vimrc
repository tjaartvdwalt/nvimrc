set encoding=UTF-8
set hlsearch
set ignorecase
set incsearch
set list
set nofoldenable
set nu

set omnifunc=syntaxcomplete#Complete
" set omnifunc=syntaxcomplete#Complete
" set omnifunc=ale#completion#OmniFunc
" set completeopt=menu,menuone,popup,noselect,noinsert

set showcmd
set smartcase
set spellfile=~/.vim/spell/en.utf-8.add
set tabstop=4
set tags=tags;/
set undofile
set undodir=$HOME/.vim/undo
set wildmode=list:longest


" set autochdir
autocmd BufEnter * silent! lcd %:p:h
autocmd TabEnter * silent! tcd %:p:h

cnoreabbrev g Git
augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
augroup END



let mapleader = " "

syntax enable
filetype plugin on
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_sort_options = "i"

