" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:
nmap <C-c> :
imap <C-c> <Esc>:
nnoremap <C-l> :nohlsearch<CR><C-l>

nnoremap <leader>- :e.<CR>
nnoremap <leader>v :e ~/.config/nvim/<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>c :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>t :vsplit +terminal<CR>

" Make escape work properly in terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

" Expand abbreviation only at the command prompt
" Copied from https://gist.github.com/nelstrom/c7695f1e3660bef1dc2891fcc5305388
function! SetupCommandAlias(input, output)
  exec 'cabbrev <expr> '.a:input
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
        \ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction

call SetupCommandAlias("f", "Neoformat")
call SetupCommandAlias("g", "vertical rightbelow Git")
call SetupCommandAlias("gh", "Telescope gh")
call SetupCommandAlias("gs", "Telescope git_stash")
call SetupCommandAlias("o", "only")
call SetupCommandAlias("bo", "BufOnly")
call SetupCommandAlias("cdc", "cd %:p:h")
call SetupCommandAlias("tn", "tabnew")