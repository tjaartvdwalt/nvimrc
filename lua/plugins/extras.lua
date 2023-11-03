return {
	{
		"ahmedkhalf/project.nvim",
		opts = {
			manual_mode = false,
		},
		config = function(_, opts)
			require("project_nvim").setup(opts)
			-- require("lazyvim.util").on_load("telescope.nvim", function()
			--   require("telescope").load_extension("projects")
			-- end)
		end,
	},
}
