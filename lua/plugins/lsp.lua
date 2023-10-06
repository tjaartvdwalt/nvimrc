return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "lua-language-server",
        "python-lsp-server",
        "shellcheck",
        "solargraph",
        "sqlls",
        "taplo",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
    },
  },
}
