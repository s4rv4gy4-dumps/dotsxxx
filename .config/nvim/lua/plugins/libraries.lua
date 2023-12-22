--[[

  references:
    popup.nvim:
       auth: https://github.com/nvim-lua
       repo: https://github.com/nvim-lua/popup.nvim
       hash: https://github.com/nvim-lua/popup.nvim/commit/b7404d35d5d3548a82149238289fa71f7f6de4ac

    plenary.nvim:
      auth: https://github.com/nvim-lua
      repo: https://github.com/nvim-lua/plenary.nvim
      docs: https://raw.githubusercontent.com/nvim-lua/plenary.nvim/master/doc/plenary-test.txt
      hash: https://github.com/nvim-lua/plenary.nvim/commit/55d9fe89e33efd26f532ef20223e5f9430c8b0c0

    nui.nvim:
      auth: https://github.com/MunifTanjim
      repo: https://github.com/MunifTanjim/nui.nvim
      hash: https://github.com/MunifTanjim/nui.nvim/commit/c9b4de623d19a85b353ff70d2ae9c77143abe69c

    nvim-web-devicons:
      auth: https://github.com/nvim-tree
      repo: https://github.com/nvim-tree/nvim-web-devicons
      hash: https://github.com/nvim-tree/nvim-web-devicons/commit/8b2e5ef9eb8a717221bd96cb8422686d65a09ed5

]]

return {

  { "nvim-lua/popup.nvim", commit = "b7404d3" },
  { "nvim-lua/plenary.nvim", commit = "55d9fe8" },
  { "MunifTanjim/nui.nvim", commit = "c9b4de6" },

  {
    "nvim-tree/nvim-web-devicons",
    commit = "8b2e5ef",
    config = { default = true, color_icons = true },
  },
}
