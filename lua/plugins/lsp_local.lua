return {
  -- {
  --   "jay-babu/mason-null-ls.nvim",
  --   dependencies = {
  --     "williamboman/mason.nvim",
  --     "nvimtools/none-ls.nvim",
  --   },
  --   config = function()
  --     -- require("mason").setup()
  --     require("mason-null-ls").setup({
  --       automatic_installation = false,
  --       handlers = {},
  --       -- automatic_setup = true,
  --       ensure_installed = {
  --         "isort",
  --         "black",
  --         "prettierd",
  --         "shfmt",
  --         "stylua",
  --       },
  --     })
  --   end,
  -- },
  {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    formatters_by_ft = {
      -- lua = { "stylua" },
      -- python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
    },
    -- format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
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
