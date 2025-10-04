require("ctaylor.set")
require("ctaylor.keymaps")
require("ctaylor.lazy")

require("ctaylor.local.status")

local augroup = vim.api.nvim_create_augroup
local CtaylorGroup = augroup('ctaylor', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = yank_group,
  callback = function()
    vim.hl.on_yank()
  end,
})
