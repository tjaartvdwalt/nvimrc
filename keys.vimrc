" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:
nnoremap <C-l> :nohlsearch<CR><C-l>

nnoremap <leader>v :e ~/.config/nvim/<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>c :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>- :Explore<CR>

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
call SetupCommandAlias("g", "Git")
call SetupCommandAlias("gs", "GStashList")
call SetupCommandAlias("git", "Git")
call SetupCommandAlias("o", "only")
call SetupCommandAlias("bo", "BufOnly")
call SetupCommandAlias("cdc", "cd %:p:h")
call SetupCommandAlias("Grep", "GrepperGrep")
call SetupCommandAlias("Ag", "GrepperAg")
