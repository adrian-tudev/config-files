local M = {}

local function switch_extension(filename)
  local exts = {
    c = { "h" },
    cpp = { "hpp", "h" },
    h = { "cpp", "c" },
    hpp = { "cpp" },
  }

  local name, ext = filename:match("(.+)%.([^.]+)$")
  if not name or not exts[ext] then
    vim.notify("Not a recognized C/C++ file", vim.log.levels.WARN)
    return
  end

  for _, new_ext in ipairs(exts[ext]) do
    local alt = name .. "." .. new_ext
    if vim.fn.filereadable(alt) == 1 then
      vim.cmd("edit " .. alt)
      return
    end
  end

  vim.notify("No matching file found", vim.log.levels.INFO)
end

function M.switch()
  local current = vim.api.nvim_buf_get_name(0)
  switch_extension(current)
end

return M
