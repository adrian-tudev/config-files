
-- custom commands
vim.api.nvim_create_user_command("SwitchSourceHeader", function()
  require("switcher").switch()
end, {})
