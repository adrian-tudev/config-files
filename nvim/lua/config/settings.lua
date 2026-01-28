
vim.opt["expandtab"] = true
vim.opt["shiftwidth"] = 2
vim.opt["tabstop"] = 2
vim.opt["colorcolumn"] = "80"

vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.showmode = false

vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})
