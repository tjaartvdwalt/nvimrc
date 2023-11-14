return {
	{ "tpope/vim-fugitive" },
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = true,
			delete_to_trash = true,
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},
		},
	},
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
			{ "<leader>/", ":lua fzf_grep_live_root()<cr>", desc = "Grep (root dir)" },
			{ "<leader>:", ":FzfLua command_history<cr>", desc = "Command History" },
			{ "<leader>gb", ":FzfLua git_branches<cr>", desc = "Git branches" },
			{ "<leader>gc", ":FzfLua git_commits<cr>", desc = "Git commits" },
			{ "<leader>gs", ":FzfLua git_status<cr>", desc = "Git status" },
			{ "<leader>gS", ":FzfLua git_stash<cr>", desc = "Git stash" },
			{ '<leader>s"', ":FzfLua registers<cr>", desc = "Registers" },
			{ "<leader>sc", ":FzfLua command_history<cr>", desc = "Command History" },
			{ "<leader>sg", ":lua fzf_grep_live_root()<cr>", desc = "Grep (root dir)" },
			{ "<leader>sG", ":FzfLua live_grep<cr>", desc = "Grep (cwd)" },
			{ "<leader>sk", ":FzfLua keymaps<cr>", desc = "Key Maps" },
			{ "<leader>sm", ":FzfLua man_pages<cr>", desc = "Man Pages" },
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
				["core.export"] = { config = { export_dir = "export" } },
				["core.journal"] = { config = { workspace = "journal" } },
				["core.qol.toc"] = {},
				["core.summary"] = {},
			},
		},
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	{ "toppair/peek.nvim", build = "deno task --quiet build:fast" },
	{ "jvirtanen/vim-hcl" },
	{
		"ThePrimeagen/harpoon",
		keys = {
			{ "<leader>.", ':lua require("harpoon.ui").toggle_quick_menu()<cr>' },
			{ "<leader>m", ':lua require("harpoon.mark").add_file()<cr>' },
			{ "[h", ':lua require("harpoon.ui").nav_prev()<cr>' },
			{ "]h", ':lua require("harpoon.ui").nav_next()<cr>' },
		},
	},
	{
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup()
		end,
		opts = {
			navigation = {
				enable_default_keybindings = false,
			},
			resize = {
				enable_default_keybindings = false,
			},
		},
	},
}
