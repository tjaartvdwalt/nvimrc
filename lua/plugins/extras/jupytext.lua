return {
	"GCBallesteros/jupytext.nvim",
	config = true,

	config = function()
		require("jupytext").setup({
			style = "quarto",
			output_extension = "qmd",
			force_ft = "quarto",
		})
	end,
	-- Depending on your nvim distro or config you may need to make the loading not lazy
	-- lazy=false,
}
