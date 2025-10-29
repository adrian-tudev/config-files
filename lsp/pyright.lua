vim.lsp.config['pyright'] = {

  cmd = { "pyright-langserver", "--stdio" },

  filetypes = {'python'},

  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true
      }
    }
  }
}

vim.diagnostic.config({
  virtual_text = true,  -- inline messages
  signs = true,         -- symbols in sign column
  underline = true,     -- underline problem text
  update_in_insert = false,
  severity_sort = true,
})
