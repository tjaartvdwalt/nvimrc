return {
	{ "geigerzaehler/tree-sitter-jinja2" },
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ignore_install = { "help" }

			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, {
					"bash",
					"help",
					"html",
					"http",
					"javascript",
					"json",
					"lua",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"tsx",
					"typescript",
					"vim",
					"yaml",
				})
			end
		end,
	},
}
