vim.api.nvim_set_keymap("n", "f9", ':lua require"dap".toggle_breakpoint()<CR>', {})
vim.api.nvim_set_keymap("n", "shift+f11", ':lua require"dap".step_out()<CR>', {})
vim.api.nvim_set_keymap("n", "f11", ':lua require"dap".step_into()<CR>', {})
vim.api.nvim_set_keymap("n", "f10", ':lua require"dap".step_over()<CR>', {})
vim.api.nvim_set_keymap("n", "f5", ':lua require"dap".continue()<CR>', {})
vim.api.nvim_set_keymap("n", "f6", ':lua require"dap".run()<CR>', {})

local dap = require("dap")

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { "/usr/lib/vscode-node-debug2/out/src/nodeDebug.js" },
}
dap.configurations.typescript = {
  {
    name = "Launch",
    type = "node2",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = "Attach to process",
    type = "node2",
    request = "attach",
    processId = require("dap.utils").pick_process,
  },
}
