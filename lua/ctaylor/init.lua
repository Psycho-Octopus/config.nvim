require("ctaylor.set")
require("ctaylor.yank")
require("ctaylor.keymaps")
require("ctaylor.lazy")

require("ctaylor.local.status")

StatusSetup()

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
