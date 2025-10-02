vim.o.guicursor = ""

vim.o.nu = true
vim.o.rnu = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = false

vim.o.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.cursorline = false
vim.o.scrolloff = 8

vim.o.clipboard = 'unnamedplus'

vim.o.termguicolors = true

vim.o.showmode = false

vim.o.updatetime = 50
