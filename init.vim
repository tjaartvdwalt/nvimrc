if !exists('g:vscode')
  source ~/.config/nvim/general.vimrc
  source ~/.config/nvim/packages.vimrc
  source ~/.config/nvim/projections.vimrc
  source ~/.config/nvim/keys.vimrc
  source ~/.config/nvim/notmuch.vimrc
  source ~/.config/nvim/lsp.vimrc
  source ~/.config/nvim/themes.vimrc

  augroup LuaHighlight
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
  augroup END

  " Update minpac
  call minpac#add('k-takata/minpac', {'type': 'opt', 'branch': 'devel'})

endif
