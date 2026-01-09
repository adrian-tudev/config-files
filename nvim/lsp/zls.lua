vim.lsp.config['zls'] = {
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_markers = { "zls.json", "build.zig", ".git" },
  single_file_support = true,

  settings = {
    zls = {
      enable_inlay_hints = false,  -- disables the inline hints
      enable_code_actions = false, -- disables automatic code actions
    },
  },
}
