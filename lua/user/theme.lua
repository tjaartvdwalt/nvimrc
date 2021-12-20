vim.cmd [[
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme solarized8

if has('nvim')
      let g:terminal_color_0 = '#073642'
      let g:terminal_color_1 = '#dc322f'
      let g:terminal_color_2 = '#859900'
      let g:terminal_color_3 = '#b58900'
      let g:terminal_color_4 = '#268bd2'
      let g:terminal_color_5 = '#d33682'
      let g:terminal_color_6 = '#2aa198'
      let g:terminal_color_7 = '#eee8d5'
      let g:terminal_color_8 = '#002b36'
      let g:terminal_color_9 = '#cb4b16'
      let g:terminal_color_10 = '#586e75'
      let g:terminal_color_11 = '#657b83'
      let g:terminal_color_12 = '#839496'
      let g:terminal_color_13 = '#6c71c4'
      let g:terminal_color_14 = '#93a1a1'
      let g:terminal_color_15 = '#fdf6e3'
    endif

hi LspDiagnosticsError guifg=#dc322f guibg=#073642 guisp=NONE gui=bold cterm=bold
hi LspDiagnosticsWarning guifg=#d33682 guibg=#073642 guisp=NONE gui=bold cterm=bold
hi LspDiagnosticsInformation guifg=#b58900 guibg=#073642 guisp=NONE gui=bold cterm=bold
hi LspDiagnosticsHint guifg=#fdf6e3 guibg=#073642 guisp=NONE gui=bold cterm=bold

hi LspDiagnosticsUnderlineError gui=undercurl cterm=undercurl
hi LspDiagnosticsUnderlineWarning gui=undercurl cterm=undercurl
hi LspDiagnosticsUnderlineInfo gui=undercurl cterm=undercurl
hi LspDiagnosticsUnderlineHint gui=undercurl cterm=undercurl
]]

-- local status_ok, feline = pcall(require, "feline")
-- if not status_ok then
--   return
-- end

require('feline').setup()
