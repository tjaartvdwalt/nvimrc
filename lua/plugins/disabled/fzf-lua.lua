return {
	"ibhagwan/fzf-lua",
	lazy = false,
	init = function()
		local keys = require("lazyvim.plugins.lsp.keymaps").get()
		keys[#keys + 1] = { "gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Goto Definition" }
		keys[#keys + 1] = { "gr", "<cmd>FzfLua lsp_references<cr>", desc = "References" }
		keys[#keys + 1] = { "gI", "<cmd>FzfLua lsp_implementations<cr>", desc = "Goto Implementation" }
	end,
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
}
