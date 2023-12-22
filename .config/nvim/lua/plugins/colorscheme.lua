--[[

  references:
    auth: https://github.com/catppuccin
    repo: https://github.com/catppuccin/nvim
    docs: https://raw.githubusercontent.com/catppuccin/nvim/main/doc/catppuccin.txt
    hash: https://github.com/catppuccin/nvim/commit/64dc309bc157779691be38bbfc5123584e0a4a85

]]

local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 100,
  commit = "64dc309",
  enabled = true,
}

function M.config()
  local is_ok, catppuccin = pcall(require, "catppuccin")
  if not is_ok then
    vim.notify("[Error] catppuccin colorscheme, not found!", vim.log.levels.ERROR)
    return
  end

  catppuccin.setup({
    flavour = "frappe",
  })

  vim.cmd.colorscheme("catppuccin")
end

return M
