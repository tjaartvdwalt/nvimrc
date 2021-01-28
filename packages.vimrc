" Initialize minpac
packadd minpac

"built in plugin
packadd! matchit

call minpac#init()

" Set shortcut commands
command! PackClean call minpac#clean()
command! PackUpdate call minpac#update()
command! PackStatus call minpac#status()
command! PackSync call minpac#clean() | call minpac#update()

" Several language packs
call minpac#add('sheerun/vim-polyglot')

" All the Tim Pope plugins
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-commentary')

call minpac#add('tpope/vim-dadbod')
call minpac#add('kristijanhusak/vim-dadbod-ui')
call minpac#add('kristijanhusak/vim-dadbod-completion')

call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-heroku')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-ragtag')
let g:ragtag_global_maps = 1
" augroup ragtag
"   autocmd!
"   autocmd BufReadPost * if ! did_filetype() && getline(1)." ".getline(2).
"         \ " ".getline(3) =~? '<\%(!DOCTYPE \)\=html\>' | setf html | endif
"   autocmd InsertLeave * call s:Leave()
"   autocmd CursorHold * if exists("b:loaded_ragtag") | call s:Leave() | endif
"   autocmd FileType vue call s:Init()
" augroup END


call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-sleuth')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
autocmd FileType netrw setl bufhidden=wipe

call minpac#add('whiteinge/diffconflicts')

call minpac#add('christoomey/vim-conflicted')
let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'

call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
" Poor man's airline plugin, add conflicted text to section c
let g:airline_section_c = '%F    %{ConflictedVersion()}'
" let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1

call minpac#add('junegunn/gv.vim')

call minpac#add('sodapopcan/vim-twiggy')
let g:twiggy_local_branch_sort = 'date'
let g:twiggy_remote_branch_sort = 'date'

call minpac#add('junegunn/fzf.vim')
let g:fzf_preview_window = ['right:40%', 'ctrl-/']
nnoremap <Leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" call minpac#add('airblade/vim-gitgutter')
call minpac#add('mhinz/vim-signify')
set updatetime=100

call minpac#add('aacunningham/vim-fuzzy-stash')
let g:fuzzy_stash_actions = {
  \ 'ctrl-d': 'drop',
  \ 'ctrl-p': 'pop',
  \ 'ctrl-a': 'apply' }

call minpac#add('ryanoasis/vim-devicons')

call minpac#add('ntpeters/vim-better-whitespace')

call minpac#add('ervandew/supertab')
call minpac#add('sirver/ultisnips')
call minpac#add('honza/vim-snippets')
" let g:UltiSnipsListSnippets = "<c-x><c-s>"


call minpac#add('mbbill/undotree')
nmap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

call minpac#add('leafgarland/typescript-vim')
" call minpac#add('Quramy/tsuquyomi')
" call minpac#add('Quramy/tsuquyomi-vue')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mattn/emmet-vim')

call minpac#add('vim-ruby/vim-ruby')
let ruby_fold = 1
let ruby_spellcheck_strings = 1

call minpac#add('alvan/vim-closetag')
" let g:closetag_filetypes = 'html,xhtml,phtml,vue'

call minpac#add('machakann/vim-highlightedyank')

call minpac#add('sbdchd/neoformat')
" let g:neoformat_verbose = 1

" call minpac#add('prettier/vim-prettier')
" call minpac#add('ngmy/vim-rubocop')

call minpac#add('neowit/vim-force.com')
" Download the jar from https://github.com/neowit/tooling-force.com/releases
let g:apex_tooling_force_dot_com_path = '/home/tjaart/lib/tooling-force.com-0.4.7.0.jar'
let g:apex_backup_folder='/tmp/apex/backup'
let g:apex_temp_folder='/tmp/apex/gvim-deployment'
let g:apex_properties_folder='/tmp/apex/properties'

" call minpac#add('blindfs/vim-taskwarrior')

" call minpac#add('mtth/scratch.vim')
" let g:scratch_autohide = 1
" let g:scratch_insert_autohide = 1

call minpac#add('plasticboy/vim-markdown')
" let g:vim_markdown_folding_disabled = 1
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()'})

" call minpac#add('gcmt/taboo.vim')
" " let g:taboo_renamed_tab_format = " [%l]%I%m"
" " let g:taboo_tabline = 0
" set sessionoptions+=tabpages,globals

call minpac#add('leafOfTree/vim-vue-plugin')
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1
let g:vim_vue_plugin_highlight_vue_attr = 1
let g:vim_vue_plugin_use_foldexpr = 1
call minpac#add('digitaltoad/vim-pug')

" " Wayland system clipboard copy/paste. Can remove this once this issue has
" " been resolved:  https://github.com/vim/vim/issues/5157
" call minpac#add('kana/vim-fakeclip')
" call minpac#add('wincent/terminus')

" Python folding
call minpac#add('tmhedberg/simpylfold')
" XML folding
call minpac#add('vim-scripts/XML-Folding')
au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/pack/minpac/start/XML-Folding/plugin/XMLFolding.vim

call minpac#add('cespare/vim-toml')

call minpac#add('vim-scripts/loremipsum')

call minpac#add('nvim-lua/diagnostic-nvim')

call minpac#add('moll/vim-node')

call minpac#add('vim-test/vim-test')

call minpac#add('mhinz/vim-grepper')
nnoremap <Leader>a :ProjectDo GrepperAg<space>

call minpac#add('MikeDacre/tmux-zsh-vim-titles')
let g:tzvt_vim_include_path = 'zsh'
let g:tzvt_vim_path_before = 0
let g:has_zsh = 1
call minpac#add('editorconfig/editorconfig-vim')
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

call minpac#add('vim-scripts/BufOnly.vim')

call minpac#add('puremourning/vimspector')
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-bash-debug', 'vscode-node-debug2' ]

call minpac#add('RRethy/vim-hexokinase', { 'do': 'make hexokinase' })

call minpac#add('godlygeek/tabular')

call minpac#add('mattn/webapi-vim')
call minpac#add('mattn/vim-gist')

call minpac#add('colmbus72/slim')
command! Slack :call slim#StartSlack()

" call minpac#add('easymotion/vim-easymotion')

call minpac#add('rhysd/conflict-marker.vim')

call minpac#add('andrewradev/splitjoin.vim')

call minpac#add('chrisbra/csv.vim')
" call minpac#add('christoomey/vim-tmux-navigator')

call minpac#add('glts/vim-magnum')
call minpac#add('glts/vim-radical')

call minpac#add('jamessan/vim-gnupg')
