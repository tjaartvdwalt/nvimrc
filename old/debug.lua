vim.cmd("call minpac#add('mfussenegger/nvim-dap')")
vim.cmd("call minpac#add('theHamsta/nvim-dap-virtual-text')")

vim.g.dap_virtual_text = true
vim.g.dap_virtual_text = 'all frames'

vim.api.nvim_set_keymap('n', 'f9', ':lua require"dap".toggle_breakpoint()<CR>', {})
vim.api.nvim_set_keymap('n', 'shift+f11', ':lua require"dap".step_out()<CR>', {})
vim.api.nvim_set_keymap('n', 'f11', ':lua require"dap".step_into()<CR>', {})
vim.api.nvim_set_keymap('n', 'f10', ':lua require"dap".step_over()<CR>', {})
vim.api.nvim_set_keymap('n', 'f5', ':lua require"dap".continue()<CR>', {})

local dap = require('dap')

-- Ruby
dap.adapters.ruby = {
  type = 'executable';
  command = 'bundle';
  args = {'exec', 'readapt', 'stdio'};
}

dap.configurations.ruby = {
  {
    type = 'ruby';
    request = 'launch';
    name = 'Rails';
    program = 'bundle';
    programArgs = {'exec', 'rails', 's'};
    useBundler = true;
  },
}

