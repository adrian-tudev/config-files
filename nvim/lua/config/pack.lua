local gh = function(x)
  return 'https://github.com/' .. x
end

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local d = ev.data
    if d.spec.name == 'nvim-treesitter' and (d.kind == 'install' or d.kind == 'update') then
      if not d.active then
        vim.cmd.packadd('nvim-treesitter')
      end
      vim.cmd('TSUpdate')
    end
  end,
})

vim.pack.add({
  gh('goolord/alpha-nvim'),
  { src = gh('saghen/blink.cmp'), version = vim.version.range('1') },
  gh('rafamadriz/friendly-snippets'),
  gh('lewis6991/gitsigns.nvim'),
  gh('lukas-reineke/indent-blankline.nvim'),
  gh('nvimdev/lspsaga.nvim'),
  gh('nvim-lualine/lualine.nvim'),
  gh('nvim-tree/nvim-web-devicons'),
  gh('nvim-lua/plenary.nvim'),
  gh('nvim-telescope/telescope.nvim'),
  { src = gh('nvim-treesitter/nvim-treesitter'), version = 'master' },
}, { confirm = false })

require('plugins.treesitter')
require('plugins.blink')
require('plugins.alpha')
require('plugins.gitsigns')
require('plugins.indent-lines')
require('plugins.lspsaga')
require('plugins.lualine')
