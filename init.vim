if !exists('g:vscode')
    source ~/.config/nvim/general.vimrc
    source ~/.config/nvim/packages.vimrc
    source ~/.config/nvim/projections.vimrc
    source ~/.config/nvim/keys.vimrc
    source ~/.config/nvim/themes.vimrc

    luafile ~/.config/nvim/nvim.lua
    luafile ~/.config/nvim/compe.lua
    luafile ~/.config/nvim/debug.lua
    luafile ~/.config/nvim/lsp.lua
    luafile ~/.config/nvim/telescope.lua
    luafile ~/.config/nvim/treesitter.lua
    source ~/.config/nvim/firenvim.vimrc
endif

" Update minpac
call minpac#add('k-takata/minpac', {'type': 'opt', 'branch': 'devel'})
