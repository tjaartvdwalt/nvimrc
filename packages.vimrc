" Initialize minpac
packadd minpac

"built in plugin
packadd! matchit

call minpac#init()

" Set shortcut commands
command! PackUpdate call minpac#clean() | call minpac#update()
command! PackStatus call minpac#status()

" All the Tim Pope plugins
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-dadbod')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-heroku')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-sleuth')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')


call minpac#add('mileszs/ack.vim')
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :ProjectDo Ack!<space>

call minpac#add('whiteinge/diffconflicts')

call minpac#add('christoomey/vim-conflicted')
let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'

call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline_powerline_fonts = 1
" Poor man's airline plugin, add conflicted text to section c
let g:airline_section_c = '%F    %{ConflictedVersion()}'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

call minpac#add('junegunn/gv.vim')

call minpac#add('sodapopcan/vim-twiggy')
let g:twiggy_local_branch_sort = 'date'
let g:twiggy_remote_branch_sort = 'date'

let g:ale_completion_enabled = 0
call minpac#add('dense-analysis/ale')
" let g:ale_completion_tsserver_autoimport = 1

call minpac#add('junegunn/fzf.vim')
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>f :Files<CR>

call minpac#add('airblade/vim-gitgutter')

call minpac#add('ryanoasis/vim-devicons')

call minpac#add('ntpeters/vim-better-whitespace')

call minpac#add('sirver/ultisnips')

call minpac#add('honza/vim-snippets')

call minpac#add('mbbill/undotree')
nmap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

call minpac#add('leafgarland/typescript-vim')
call minpac#add('Quramy/tsuquyomi')
call minpac#add('Quramy/tsuquyomi-vue')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mattn/emmet-vim')

call minpac#add('vim-ruby/vim-ruby')
let ruby_fold = 1
let ruby_spellcheck_strings = 1


call minpac#add('alvan/vim-closetag')
call minpac#add('machakann/vim-highlightedyank')

call minpac#add('maxbrunsfeld/vim-yankstack')

call minpac#add('sbdchd/neoformat')
cnoreabbrev f Neoformat
" let g:neoformat_verbose = 1

call minpac#add('neowit/vim-force.com')
" Download the jar from https://github.com/neowit/tooling-force.com/releases
let g:apex_tooling_force_dot_com_path = '/home/tjaart/lib/tooling-force.com-0.4.7.0.jar'
let g:apex_backup_folder='/tmp/apex/backup'
let g:apex_temp_folder='/tmp/apex/gvim-deployment'
let g:apex_properties_folder='/tmp/apex/properties'

call minpac#add('blindfs/vim-taskwarrior')

call minpac#add('mtth/scratch.vim')
let g:scratch_autohide = 1
let g:scratch_insert_autohide = 1

call minpac#add('plasticboy/vim-markdown')
" let g:vim_markdown_folding_disabled = 1
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()'})

call minpac#add('gcmt/taboo.vim')
let g:taboo_renamed_tab_format = " [%l]%I%m"
let g:taboo_tabline = 0
set sessionoptions+=tabpages,globals

call minpac#add('leafOfTree/vim-vue-plugin')
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1
let g:vim_vue_plugin_highlight_vue_attr = 1
let g:vim_vue_plugin_use_foldexpr = 1
call minpac#add('digitaltoad/vim-pug')

" Wayland system clipboard copy/paste. Can remove this once this issue has
" been resolved:  https://github.com/vim/vim/issues/5157
call minpac#add('kana/vim-fakeclip')
call minpac#add('wincent/terminus')

" Python folding
call minpac#add('tmhedberg/simpylfold')
" XML folding
call minpac#add('vim-scripts/XML-Folding')
au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/pack/minpac/start/XML-Folding/plugin/XMLFolding.vim

call minpac#add('cespare/vim-toml')

call minpac#add('vim-scripts/loremipsum')

call minpac#add('pechorin/any-jump.vim')
let g:any_jump_search_prefered_engine = 'ag'

call minpac#add('neovim/nvim-lsp')
lua << EOF
vim.cmd('packadd nvim-lsp')

require'nvim_lsp'.cssls.setup{}
require'nvim_lsp'.html.setup{}
require'nvim_lsp'.jsonls.setup{}
require'nvim_lsp'.pyls.setup{}
require'nvim_lsp'.solargraph.setup{}
require'nvim_lsp'.tsserver.setup{}
require'nvim_lsp'.vimls.setup{}
require'nvim_lsp'.vuels.setup{}
require'nvim_lsp'.yamlls.setup{}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
