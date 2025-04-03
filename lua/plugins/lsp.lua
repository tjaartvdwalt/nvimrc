return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
        virtual_text = false,
        virtual_lines = { current_line = true },
      },
			servers = {
				jinja_lsp = {
					filetypes = { "jinja", "j2", "html", "htmljinja" },
				},
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"bash-language-server",
				"clangd",
				"cpptools",
				"lua-language-server",
				"matlab-language-server",
				"prettierd",
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
}
