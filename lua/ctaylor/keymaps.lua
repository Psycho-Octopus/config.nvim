vim.g.mapleader = " "

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('i', '<C-c>', '<ESC>')

vim.keymap.set('n', '<Esc>', vim.cmd.nohlsearch)

-- Disable arrow keys
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', 'vbg', vim.cmd.VimBeGood)

vim.keymap.set('n', 'Tst', vim.cmd.InspectTree)
