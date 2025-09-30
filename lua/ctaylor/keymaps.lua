vim.g.mapleader = " "

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', silent = true })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep', silent = true })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'File tree', silent = true })

vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status', silent = true })

vim.keymap.set('n', '<leader>gf', ':Telescope git_files<CR>', { desc = 'Find git files', silent = true })

vim.keymap.set('i', '<C-s>', vim.cmd.write, { desc = 'Save', silent = true })

vim.keymap.set('i', '<C-c>', '<ESC>', { desc = 'Normal mode', silent = true })
