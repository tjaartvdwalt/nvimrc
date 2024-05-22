return {
	{
		"GCBallesteros/jupytext.nvim",
		config = true,
		-- Depending on your nvim distro or config you may need to make the loading not lazy
		-- lazy=false,
	},
	{
		"GCBallesteros/NotebookNavigator.nvim",
		keys = {
			{
				"]h",
				function()
					require("notebook-navigator").move_cell("d")
				end,
			},
			{
				"[h",
				function()
					require("notebook-navigator").move_cell("u")
				end,
			},
			{ "<leader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
			{ "<leader>X", "<cmd>lua require('notebook-navigator').run_all_cells()<cr>" },

		},
		dependencies = {
			"echasnovski/mini.comment",
			"hkupty/iron.nvim", -- repl provider
			-- "akinsho/toggleterm.nvim", -- alternative repl provider
			-- "benlubas/molten-nvim", -- alternative repl provider
			-- "anuvyklack/hydra.nvim",
		},
		event = "VeryLazy",
		-- config = function()
		-- 	local nn = require("notebook-navigator")
		-- 	nn.setup({ activate_hydra_keys = "<leader>h" })
		-- end,
	},

	-- {
	-- 	"benlubas/molten-nvim",
	-- 	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	-- 	build = ":UpdateRemotePlugins",
	-- 	keys = {
	-- 		{ "<localleader>e,", ":MoltenEvaluateOperator<CR>", desc = "evaluate operator", silent = true },
	-- 		{ "<localleader>os", ":noautocmd MoltenEnterOutput<CR>", desc = "open output window", silent = true },
	-- 		{ "<localleader>rr", ":MoltenReevaluateCell<CR>", desc = "re-eval cell", silent = true },
	-- 		{
	-- 			"<localleader>r",
	-- 			":<C-u>MoltenEvaluateVisual<CR>gv",
	-- 			mode = { "v" },
	-- 			desc = "execute visual selection",
	-- 			silent = true,
	-- 		},
	-- 		{ "<localleader>oh", ":MoltenHideOutput<CR>", desc = "close output window", silent = true },
	-- 		{ "<localleader>md", ":MoltenDelete<CR>", desc = "delete Molten cell", silent = true },
	-- 		{ "<localleader>mx", ":MoltenOpenInBrowser<CR>", desc = "open output in browser", silent = true },
	-- 	},
	-- 	init = function()
	-- 		-- this is an example, not a default. Please see the readme for more configuration options
	-- 		-- vim.g.molten_output_win_max_height = 12
	-- 		-- I find auto open annoying, keep in mind setting this option will require setting
	-- 		-- a keybind for `:noautocmd MoltenEnterOutput` to open the output again
	-- 		vim.g.molten_auto_open_output = false
	--
	-- 		-- this guide will be using image.nvim
	-- 		-- Don't forget to setup and install the plugin if you want to view image outputs
	-- 		-- vim.g.molten_image_provider = "image.nvim"
	--
	-- 		-- optional, I like wrapping. works for virt text and the output window
	-- 		vim.g.molten_wrap_output = true
	--
	-- 		-- Output as virtual text. Allows outputs to always be shown, works with images, but can
	-- 		-- be buggy with longer images
	-- 		vim.g.molten_virt_text_output = true
	--
	-- 		-- this will make it so the output shows up below the \`\`\` cell delimiter
	-- 		vim.g.molten_virt_lines_off_by_1 = true
	-- 	end,
	-- },
	-- {
	-- 	"quarto-dev/quarto-nvim",
	-- 	opts = {
	-- 		lspFeatures = {
	-- 			languages = { "python" },
	-- 			chunks = "all",
	-- 			diagnostics = {
	-- 				enabled = true,
	-- 				triggers = { "BufWritePost" },
	-- 			},
	-- 			completion = {
	-- 				enabled = true,
	-- 			},
	-- 		},
	-- 		-- keymap = {
	-- 		-- 	hover = "H",
	-- 		-- 	definition = "gd",
	-- 		-- 	rename = "<localleader>rn",
	-- 		-- 	references = "gr",
	-- 		-- 	format = "<leader>gf",
	-- 		-- },
	-- 		codeRunner = {
	-- 			enabled = true,
	-- 			default_method = "molten",
	-- 		},
	-- 	},
	-- 	ft = { "quarto", "markdown" },
	-- 	init = function()
	-- 		local runner = require("quarto.runner")
	-- 		vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
	-- 		vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
	-- 		vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
	-- 		vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
	-- 		vim.keymap.set("v", "<localleader>r", runner.run_range, { desc = "run visual range", silent = true })
	-- 		vim.keymap.set("n", "<localleader>RA", function()
	-- 			runner.run_all(true)
	-- 		end, { desc = "run all cells of all languages", silent = true })
	-- 	end,
	-- },
	-- {
	-- 	"jmbuhr/otter.nvim",
	-- 	init = function()
	-- 		local otter = require("otter")
	-- 		local languages = { "python", "lua" }
	-- 		otter.activate(languages)
	-- 	end,
	-- 	-- opts = {
	-- 	-- 	buffers = {
	-- 	-- 		set_filetype = true,
	-- 	-- 	},
	-- 	-- },
	-- },
	-- {
	-- 	"GCBallesteros/jupytext.nvim",
	-- 	config = true,
	-- 	opts = {
	-- 		style = "markdown",
	-- 		output_extension = "md",
	-- 		force_ft = "markdown",
	-- 	},
	-- },
}
