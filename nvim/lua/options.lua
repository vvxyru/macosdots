vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.showmode = false
vim.opt.signcolumn = "yes"

vim.opt.ttyfast = true
vim.opt.smoothscroll = true

vim.opt.cursorline = true

vim.opt.scrolloff = 7
vim.opt.sidescrolloff = 7

vim.opt.isfname:append("@-@")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.undofile = true

vim.opt.pumheight = 10
vim.opt.completeopt = "menuone,noinsert,noselect"

vim.opt.updatetime = 50
