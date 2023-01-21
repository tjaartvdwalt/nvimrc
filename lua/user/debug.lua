-- require("nvim-dap-virtual-text").setup({ highlight_changed_variables = true, all_references = false })

-- require("dapui").setup()

-- local dap = require("dap")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<f9>", function()
	return require("dap").toggle_breakpoint()
end, opts)
vim.keymap.set("n", "shift+<f11>", function()
	return require("dap").step_out()
end, opts)
vim.keymap.set("n", "<f11>", function()
	return require("dap").step_into()
end, opts)
vim.keymap.set("n", "<f10>", function()
	return require("dap").step_over()
end, opts)
vim.keymap.set("n", "<f5>", function()
	return require("dap").continue()
end, opts)
vim.keymap.set("n", "<f6>", function()
	return require("dap").run()
end, opts)
vim.keymap.set("n", "<f7>", function()
	return require("dap").repl.open()
end, opts)

-- local dap = require("dap")

require("dap-vscode-js").setup({
	-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	debugger_path = "/home/tjaart/.local/share/nvim/mason/packages", -- Path to vscode-js-debug installation.
	debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
	adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
	-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
	-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
	-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-chrome",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
		},
	}
end

require("dap-ruby").setup()

require("dap").adapters.ruby = {
	type = "server",
	port = "1234",
	command = "rdbg",
	args = { "--open", "--port", "1234", "--" },
	-- useBundler = true;
}
--
require("dap").configurations.ruby = {
	{
		type = "ruby",
		request = "launch",
		name = "ruby debug: start rails",
		command = "bin/rails s",
		useBundler = true,
	},
}

-- require("dap").adapters.node2 = {
-- 	type = "executable",
-- 	command = "node",
-- 	args = { "/usr/lib/vscode-node-debug2/out/src/nodeDebug.js" },
-- }
-- require("dap").configurations.typescript = {
-- 	{
-- 		name = "Launch",
-- 		type = "node2",
-- 		request = "launch",
-- 		program = "${file}",
-- 		cwd = vim.fn.getcwd(),
-- 		sourceMaps = true,
-- 		protocol = "inspector",
-- 		console = "integratedTerminal",
-- 	},
-- 	{
-- 		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
-- 		name = "Attach to process",
-- 		type = "node2",
-- 		request = "attach",
-- 		processId = require("dap.utils").pick_process,
-- 	},
-- }
