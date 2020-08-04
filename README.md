# Neovimrc

This is my personal (Neo)vim configuration files.

It is meant to be Neovim and Vim 8 compatible. If incompatibility arises, Neovim will be preferred.

# Installation

Checkout this repository at `$HOME/.config/nvim`

```
git clone https://github.com/tjaartvdwalt/nvimrc.git $HOME/.config/nvim
```

## Neovim

If you are using Neovim:

Install Minpac to `$HOME/.config/nvim/pack/minpac/opt/minpac`

```
git clone https://github.com/k-takata/minpac.git $HOME/.config/nvim/pack/minpac/opt/minpac
```

Start Neovim, and install the dependencies

```
nvim -c PackUpdate
```

## Vim 8

If you are using vim:

Symlink `$HOME/.config/nvim/.vimrc` to `$HOME`

```
ln -s `$HOME/.config/nvim/.vimrc` $HOME
```

Install Minpac to `$HOME/.vim/pack/minpac/opt/minpac`

```
git clone https://github.com/k-takata/minpac.git $HOME/.vim/pack/minpac/opt/minpac
```

Start Vim, and install the dependencies

```
vim -c PackUpdate
```

