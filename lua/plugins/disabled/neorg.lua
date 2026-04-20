return {
	"nvim-neorg/neorg",
	dependencies = { "luarocks.nvim" },
	-- build = ":Neorg sync-parsers",
	-- dependencies = { { "nvim-lua/plenary.nvim" } },
	opts = {
		load = {
			["core.concealer"] = {}, -- Adds pretty icons to your documents
			["core.defaults"] = {}, -- Loads default behaviour
			["core.dirman"] = {   -- Manages Neorg workspaces
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
}
