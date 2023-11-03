return {
  --{ "tpope/vim-commentary" },
  -- { "github/copilot.vim" },
  {
    "ojroques/nvim-buildme",
    -- opts = {
    --     buildfile = ".buildme.sh", -- the build file to execute
    --     interpreter = "bash", -- the interpreter to use (bash, python, ...)
    --     force = "--force", -- the option to pass when the bang is used
    --     wincmd = "",
    -- },
  },

  {
    'ldelossa/gh.nvim',
    dependencies = { 'ldelossa/litee.nvim' }
  },
  {'rbong/vim-flog'},
  -- {'neomake/neomake'}
}
