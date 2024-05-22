return {
	-- {
	-- 	"mbbill/undotree",
	-- 	keys = {
	-- 		{ "<leader>uu", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle Undo Tree" },
	-- 	},
	-- },
	{ "mhinz/vim-grepper" },
	{ "toppair/peek.nvim", build = "deno task --quiet build:fast" },
	{ "jvirtanen/vim-hcl" },
	-- {
	-- 	"ThePrimeagen/harpoon",
	-- 	keys = {
	-- 		{ "<leader>.", ':lua require("harpoon.ui").toggle_quick_menu()<cr>' },
	-- 		{ "<leader>m", ':lua require("harpoon.mark").add_file()<cr>' },
	-- 		{ "[h", ':lua require("harpoon.ui").nav_prev()<cr>' },
	-- 		{ "]h", ':lua require("harpoon.ui").nav_next()<cr>' },
	-- 	},
	-- },
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
	{
		"glacambre/firenvim",

		-- Lazy load firenvim
		-- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
		lazy = not vim.g.started_by_firenvim,
		build = function()
			vim.fn["firenvim#install"](0)
		end,
		init = function()
			vim.g.firenvim_config = {
				-- globalSettings = { alt = "all" },
				localSettings = {
					[".*"] = {
						-- cmdline  = "neovim",
						-- content  = "text",
						-- priority = 0,
						-- selector = "textarea",
						takeover = "never",
					},
				},
			}
		end,
	},
}
