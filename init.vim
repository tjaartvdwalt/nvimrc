if !exists('g:vscode')
  source ~/.config/nvim/general.vimrc
  source ~/.config/nvim/packages.vimrc
  source ~/.config/nvim/projections.vimrc
  source ~/.config/nvim/keys.vimrc
  source ~/.config/nvim/notmuch.vimrc
  source ~/.config/nvim/lsp.vimrc
  source ~/.config/nvim/themes.vimrc
  " Update minpac
  call minpac#add('k-takata/minpac', {'type': 'opt', 'branch': 'devel'})

endif
