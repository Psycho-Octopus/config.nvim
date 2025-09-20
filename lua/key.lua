vim.g.mapleader = " "

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files' })

vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>', { desc = 'File explorer' })

