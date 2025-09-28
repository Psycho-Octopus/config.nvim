vim.g.mapleader = " "

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', silent = true })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep', silent = true })

vim.keymap.set('n', '<leader>e', ':Neotree toggle right<CR>', { desc = 'File tree', silent = true })
