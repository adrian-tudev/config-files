-- execute commands silently
local opts = { noremap = true, silent = true }

-- telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- gi stuff
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>fs', builtin.git_status, { desc = 'Telescope git status' })
vim.keymap.set('n', '<leader>d', "<cmd>Gitsigns diffthis<CR>", opts)

-- lsp diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- toggle between C/C++ header and source file
vim.keymap.set('n', '<leader>sh', function()
  require("switcher").switch()
end, { desc = 'Switch between source and header file'})

local saga = require("lspsaga")

vim.keymap.set('n', '<leader>rn', "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set('n', '<leader>gt', "<cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set('n', '<leader>pd', "<cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set('n', '<leader>pt', "<cmd>Lspsaga peek_type_definition<CR>", opts)
vim.keymap.set('n', '<leader>f', "<cmd>Lspsaga finder<CR>", opts)

