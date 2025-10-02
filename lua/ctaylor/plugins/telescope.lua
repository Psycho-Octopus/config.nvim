return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
  	config = function()
		vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', silent = true })
		vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep', silent = true })
		vim.keymap.set('n', '<leader>gf', ':Telescope git_files<CR>', { desc = 'Find git files', silent = true })
	end
}
