return {
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      -- require("mason").setup()
      require("mason-null-ls").setup({
        automatic_installation = false,
        handlers = {},
        -- automatic_setup = true,
        ensure_installed = {
          "isort",
          "black",
          "prettierd",
          "shfmt",
          "stylua",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Goto Definition" }
      keys[#keys + 1] = { "gr", "<cmd>FzfLua lsp_references<cr>", desc = "References" }
      keys[#keys + 1] = { "gI", "<cmd>FzfLua lsp_implementations<cr>", desc = "Goto Implementation" }
    end,
  },
}
