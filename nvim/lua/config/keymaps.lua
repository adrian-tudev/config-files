
-- telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- lsp diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- toggle between C/C++ header and source file
vim.keymap.set('n', '<leader>sh', function()
  require("switcher").switch()
end, { desc = 'Switch between source and header file'})
