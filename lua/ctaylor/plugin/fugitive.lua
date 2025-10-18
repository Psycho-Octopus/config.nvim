return {
	'tpope/vim-fugitive',
	dependencies = {
	  'tpope/vim-surround',
	  'tpope/vim-commentary',
	  'tpope/vim-endwise',
	},
	enabled = true,
	lazy = false,

	config = function()
		vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
	end
}
