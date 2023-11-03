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
}
