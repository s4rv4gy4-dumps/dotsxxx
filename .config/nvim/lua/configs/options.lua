-- lua/configs/options.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.encoding = "utf-8"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.numberwidth = 4
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrap = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ruler = false
vim.opt.number = true
vim.opt.linebreak = true
vim.opt.autowrite = true
vim.opt.confirm = true
vim.opt.spelllang = { "programming" }
vim.opt.shiftround = true
vim.o.formatoptions = "jcroqlnt"
vim.opt.backup = false
vim.opt.backupskip = { "/tmp/*" }
vim.opt.backupdir = vim.fn.stdpath("state") .. "/backup"
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.laststatus = 3
vim.opt.errorbells = false
vim.opt.title = true
vim.opt.timeoutlen = 200
vim.opt.showcmd = false
vim.opt.shell = "zsh"
vim.opt.pumheight = 12
vim.opt.pumblend = 3
vim.signcolumn = "yes:2"
vim.opt.cmdheight = 0
vim.opt.conceallevel = 2
vim.opt.concealcursor = ""
vim.opt.fileencoding = "utf-8"

vim.opt.showtabline = 2
vim.opt.updatetime = 100
vim.opt.hidden = true
vim.opt.inccommand = "nosplit"
vim.opt.joinspaces = false
vim.opt.showbreak = [[↪ ]]
vim.opt.emoji = false
vim.opt.termguicolors = true

vim.opt.foldcolumn = "0"
vim.opt.foldnestmax = 0
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

vim.g.markdown_recommended_style = 0
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.backspace = "start,eol,indent"
vim.o.grepprg = [[rg --glob "!.git" --no-heading --vimgrep --follow $*]]
vim.opt.grepformat = vim.opt.grepformat ^ { "%f:%l:%c:%m" }
vim.o.wildignorecase = true
vim.o.wildmode = "longest:full,full"
vim.opt.wildignore = {
  "*.out",
  "*.jar",
  "*.gif",
  "*.jpg",
  "*.png",
  "*.avi",
  "*.swp",
  ".lock",
  ".DS_Store",
  "*/node_modules/*",
  "*/.rough/*",
}

vim.opt.shortmess:append("c")
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

vim.opt.list = true
vim.opt.listchars = {
  eol = nil,
  tab = "  ",
  extends = "›",
  precedes = "‹",
  trail = "•",
}

vim.opt.fillchars = {
  fold = " ",
  eob = " ",
  msgsep = " ",
  foldopen = "",
  foldsep = "|",
  foldclose = "",
}

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})
