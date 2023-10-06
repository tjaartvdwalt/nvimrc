return {
  { "tpope/vim-fugitive" },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>uu", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle Undo Tree" },
    },
  },
  { "mhinz/vim-grepper" },
  { "whiteinge/diffconflicts" },
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    config = function()
      local fzflua = require("fzf-lua")
      fzflua.setup({
        winopts = { preview = { default = "bat", layout = "vertical" } },
        files = {
          fzf_opts = {
            ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-files-history",
          },
        },
        grep = {
          fzf_opts = {
            ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-grep-history",
          },
        },
      })

      fzf_grep_live_root = function()
        local folders = vim.lsp.buf.list_workspace_folders()
        print(folders[1])
        require("fzf-lua").live_grep({ cwd = string.format("%s", folders[1]) })
      end
    end,
    keys = {
      { "<leader>,", ":FzfLua buffers<cr>", desc = "Switch Buffer" },
      { "<leader>sg", ":lua fzf_grep_live_root()<cr>", desc = "Grep (project root)" },
      { "<leader>sG", ":FzfLua live_grep<cr>", desc = "Grep (cwd)" },
      -- {
      --   "<leader>fp",
      {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        opts = {
          load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            {
              "nvim-neorg/neorg",
              build = ":Neorg sync-parsers",
              opts = {
                load = {
                  ["core.defaults"] = {}, -- Loads default behaviour
                  ["core.concealer"] = {}, -- Adds pretty icons to your documents
                  ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                      workspaces = {
                        notes = "~/notes",
                      },
                    },
                  },
                },
              },
              dependencies = { { "nvim-lua/plenary.nvim" } },
            },
            ["core.dirman"] = { -- Manages Neorg workspaces
              config = {
                workspaces = {
                  notes = "~/notes",
                },
              },
            },
          },
        },
        dependencies = { { "nvim-lua/plenary.nvim" } },
      },
      --   function()
      --     require("fzf-lua").files({ cwd = root_dir() })
      --   end,
      --   desc = "Fzf-Lua search project",
      -- },
    },
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              journal = "~/Notes",
              knowledge = "~/Notes/knowledge",
              -- work = "~/Notes/work",
              diaconate = "~/Notes/diaconate",
            },
          },
        },
        ["core.export"] = { config = {export_dir = "export"}},
        ["core.journal"] = { config = { workspace = "journal" } },
        ["core.qol.toc"] = {},
        ["core.summary"] = {},
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  { "toppair/peek.nvim", build = "deno task --quiet build:fast" },
  { "jvirtanen/vim-hcl" },
}
