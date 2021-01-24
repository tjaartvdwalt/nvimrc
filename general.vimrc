set encoding=UTF-8
set hlsearch
set ignorecase
set incsearch
set list
set nofoldenable
set nu

set omnifunc=syntaxcomplete#Complete

set showcmd
set smartcase
set spellfile=~/.config/nvim/spell/en.utf-8.add
set spell
set tabstop=4
set tags=tags;/
set wildmode=longest:list,full
set mouse=a
set clipboard^=unnamed,unnamedplus
set updatetime=750

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

"prevent nested instances
if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
  autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal spell
augroup END

autocmd BufEnter *.png,*.jpg,*gif exec "! imgcat ".expand("%")

let mapleader = " "

syntax enable
filetype plugin on
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_sort_options = "i"

