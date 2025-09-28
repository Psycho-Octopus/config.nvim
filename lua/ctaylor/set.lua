vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 8

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = false

vim.o.clipboard = 'unnamedplus'

vim.o.termguicolors = true

vim.o.showmode = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

