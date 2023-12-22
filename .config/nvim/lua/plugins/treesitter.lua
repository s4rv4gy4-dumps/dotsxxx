--[[

  references:
    auth: https://github.com/nvim-treesitter
    repo: https://github.com/nvim-treesitter/nvim-treesitter
    docs: https://raw.githubusercontent.com/nvim-treesitter/nvim-treesitter/master/doc/nvim-treesitter.txt
    hash: https://github.com/nvim-treesitter/nvim-treesitter/commit/1b5bbb54b385c4eae217113f72df5284bc3cc94b

]]

local M = {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
  end,
  event = "BufReadPost",
  commit = "1b5bbb5",
}

function M.config()
  local is_ok, treesitter = pcall(require, "nvim-treesitter")
  if not is_ok then
    vim.notify("[Error] nvim-treesitter plugin, not found!", vim.log.levels.ERROR)
    return
  end

  local has_config, treesitter_config = pcall(require, "nvim-treesitter.configs")
  if not has_config then
    return
  end

  treesitter_config.setup({
    sync_install = true,
    ensure_installed = { "bash", "lua" },
    highlight = { enable = true },
    autopairs = { enable = true },
    indent = { enable = true },
    context_commentstring = { enable = true, enable_autocmd = false },
  })
end

return M
