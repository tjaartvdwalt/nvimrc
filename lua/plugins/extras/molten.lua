return {
	"benlubas/molten-nvim",
	build = ":UpdateRemotePlugins",
	dependencies = { "3rd/image.nvim" },
	ft = { "quarto" },
	init = function()
		-- this is an example, not a default. Please see the readme for more configuration options
		vim.g.molten_image_provider = "image.nvim"
		vim.g.molten_output_win_max_height = 12
	end,
}
