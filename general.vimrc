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
set wildmode=list:longest
set mouse=a
set clipboard=unnamed
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
augroup END



let mapleader = " "

syntax enable
filetype plugin on
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_sort_options = "i"
