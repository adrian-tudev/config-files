
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- package manager
require("config.pack")

-- keymaps
require('config.keymaps')

-- lsp
require('config.lsp')

-- diagnostics
require('config.diagnostics')

-- settings
require('config.settings')

-- custom commands
require('config.custom')
