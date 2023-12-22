--[[

  references:
    auth: https://github.com/nvim-lualine
    repo: https://github.com/nvim-lualine/lualine.nvim
    docs: https://raw.githubusercontent.com/nvim-lualine/lualine.nvim/master/doc/lualine.txt
    hash: https://github.com/nvim-lualine/lualine.nvim/commit/2248ef254d0a1488a72041cfb45ca9caada6d994

]]

local M = {
  "nvim-lualine/lualine.nvim",
  name = "lualine",
  event = "VeryLazy",
  commit = "2248ef2",
}

function M.config()
  local is_ok, lualine = pcall(require, "lualine")
  if not is_ok then
    vim.notify("[Error] lualine.nvim plugin, not found!", vim.log.levels.ERROR)
    return
  end

  lualine.setup({
    options = {
      globalstatus = true,
      theme = "catppuccin",
      disabled_filetypes = {},
      always_divide_middle = true,
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
    },

    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        { "filename", file_status = true, path = 1 },
        {
          "diff",
          colored = true,
          symbols = { added = "add: ", modified = "mod: ", removed = "rem: " },
        },
      },
      lualine_x = { "filetype" },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
  })
end

return M
