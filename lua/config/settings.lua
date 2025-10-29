
local tab_size = 2

vim.opt["expandtab"] = true
vim.opt["tabstop"] = tab_size
vim.opt["shiftwidth"] = tab_size

vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true

vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])
