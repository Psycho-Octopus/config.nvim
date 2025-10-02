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

autocmd('BufEnter', {
    group = CtaylorGroup,
    callback = function()
        if vim.bo.filetype == "rust" then
            pcall(vim.cmd.colorscheme, "tokyonight-night")
        else
            pcall(vim.cmd.colorscheme, "rose-pine")
        end
    end
})

vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "◆",
  },
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
