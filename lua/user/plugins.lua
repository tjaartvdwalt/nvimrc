-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

-- theme
-- use 'lifepillar/vim-solarized8'
-- use 'ishan9299/nvim-solarized-lua'

-- cmp
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
-- use 'hrsh7th/cmp-buffer'
use 'L3MON4D3/LuaSnip'
-- use 'rafamadriz/friendly-snippets'
use 'saadparwaiz1/cmp_luasnip'

use 'sbdchd/neoformat'
-- vim.g['neoformat_verbose'] = 1

-- use 'mhartington/formatter.nvim'

-- lsp
use 'williamboman/nvim-lsp-installer'
use 'neovim/nvim-lspconfig'

use 'kosayoda/nvim-lightbulb'

-- dap
use "mfussenegger/nvim-dap"
use "suketa/nvim-dap-ruby"

-- treesitter
use 'nvim-treesitter/nvim-treesitter'
use 'andymass/vim-matchup'
use 'JoosepAlviste/nvim-ts-context-commentstring'

-- telescope
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use 'nvim-telescope/telescope-github.nvim'
use 'nvim-telescope/telescope-project.nvim'

use 'tpope/vim-bundler'
use 'tpope/vim-commentary'

-- use 'tpope/vim-dadbod'
-- use 'kristijanhusak/vim-dadbod-ui'
-- use 'kristijanhusak/vim-dadbod-completion'

use 'tpope/vim-dispatch'
use 'tpope/vim-endwise'
use 'tpope/vim-eunuch'
use 'tpope/vim-fugitive'
use 'tpope/vim-heroku'
use 'tpope/vim-obsession'
use 'tpope/vim-projectionist'
use 'tpope/vim-repeat'
use 'tpope/vim-rails'
use 'tpope/vim-rake'
use 'tpope/vim-ragtag'
vim.g['ragtag_global_maps'] = 1

use 'tpope/vim-rhubarb'
use 'tpope/vim-sleuth'
use 'tpope/vim-speeddating'
use 'tpope/vim-surround'
use 'tpope/vim-unimpaired'
use 'tpope/vim-vinegar'

use 'whiteinge/diffconflicts'
use 'christoomey/vim-conflicted'
vim.g['diffget_local_map'] = 'gl'
vim.g['diffget_upstream_map'] = 'gu'

-- use 'vim-airline/vim-airline'
-- use 'vim-airline/vim-airline-themes'
-- vim.g['airline_powerline_fonts '] = 1
-- vim.g['airline_highlighting_cache '] = 1

-- -- " Poor man's airline plugin, add conflicted text to section c
-- vim.g['airline_section_c'] = '%F    %{ConflictedVersion()}'

use 'EdenEast/nightfox.nvim'
vim.cmd('colorscheme nightfox')


use 'feline-nvim/feline.nvim'
require('feline').setup()

use 'junegunn/gv.vim'
use 'int3/vim-extradite'

use 'sodapopcan/vim-twiggy'
-- let g:twiggy_local_branch_sort = 'date'
-- let g:twiggy_remote_branch_sort = 'date'

use 'junegunn/fzf'
use 'junegunn/fzf.vim'
vim.g['fzf_preview_window'] = ''
-- use 'mhinz/vim-signify'
-- set updatetime=100

use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup()
  end
}


use 'ryanoasis/vim-devicons'
use 'ntpeters/vim-better-whitespace'

use 'mbbill/undotree'

use 'leafgarland/typescript-vim'
use 'pangloss/vim-javascript'
use 'mattn/emmet-vim'
use 'digitaltoad/vim-pug'

use 'vim-ruby/vim-ruby'
-- let ruby_fold = 1
-- let ruby_spellcheck_strings = 1

use 'machakann/vim-highlightedyank'

use 'plasticboy/vim-markdown'

use 'mhinz/vim-grepper'

use 'ap/vim-css-color'

use 'godlygeek/tabular'
use 'chrisbra/csv.vim'

use 'rhysd/conflict-marker.vim'

use 'jamessan/vim-gnupg'

use 'lifepillar/pgsql.vim'

-- use 'unblevable/quick-scope'
-- vim.g['qs_highlight_on_keys'] = "['f', 'F', 't', 'T']"

-- augroup qs_colors
--   autocmd!
--   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
--   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
-- augroup END

use 'kshenoy/vim-signature'

use 'francoiscabrol/ranger.vim'

-- use 'lukas-reineke/indent-blankline.nvim'
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#E06C75 gui=nocombine]]
-- require("indent-blankline").setup {
--     -- for example, context is off by default, use this to turn it on
--     show_current_context = true,
--     show_current_context_start = true,
-- }

use 'tversteeg/registers.nvim'

use "ahmedkhalf/project.nvim"

use "akinsho/toggleterm.nvim"
require('toggleterm').setup{
  direction = 'float'
}

use "justinmk/vim-sneak"
-- vim.g['sneak#label'] = 1

use 'ojroques/nvim-buildme'

use {'mattn/vim-gist', requires = {"mattn/webapi-vim"} }

use 'fadein/vim-figlet'

use 'mtth/scratch.vim'
vim.g['scratch_insert_autohide'] = 0
vim.g['scratch_persistence_file'] =  '/tmp/scratch.vim'


use 'mickael-menu/zk-nvim'
require("zk").setup({
  picker = "fzf"
})

use {'stevearc/gkeep.nvim', run = ':UpdateRemotePlugins'}

use 'RRethy/vim-illuminate'

use 'jbyuki/venn.nvim'
-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.cmd[[setlocal ve=all]]
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "T", "<C-v>j:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "C", "<C-v>k:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "N", "<C-v>l:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", {noremap = true})
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", {noremap = true})
    else
        vim.cmd[[setlocal ve=]]
        vim.cmd[[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end
-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap('n', '<leader>d', ":lua Toggle_venn()<CR>", { noremap = true})

use {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'kyazdani42/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup()
  end
}

use 'gennaro-tedesco/nvim-jqx'

use 'https://gitlab.com/yorickpeterse/nvim-pqf'
require('pqf').setup({
  signs = {
    error = 'E',
    warning = 'W',
    info = 'I',
    hint = 'H'
  }
})

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

