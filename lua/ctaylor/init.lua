require("ctaylor.remaps")
require("ctaylor.set")
require("ctaylor.packer")

local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = yank_group,
	callback = function()
		vim.hl.on_yank()
	end,
})
