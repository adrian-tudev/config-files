vim.lsp.config['ccls'] = {
  cmd = { "ccls" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  offset_encoding = "utf-32",
  root_markers = { "compile_commands.json", ".ccls", ".git" },
}

