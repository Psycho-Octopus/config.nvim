vim.g.mapleader = " "

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'File tree', silent = true })

vim.keymap.set('i', '<C-s>', vim.cmd.write, { desc = 'Save', silent = true })

vim.keymap.set('i', '<C-c>', '<ESC>', { desc = 'Normal mode', silent = true })

vim.keymap.set('n', '<C-n>', '>>', { desc = 'Tab', silent = true })

vim.keymap.set('n', '<C-b>', '<<', { desc = 'Tab', silent = true })
