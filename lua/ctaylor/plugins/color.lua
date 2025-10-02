function Color(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
  {
	"erikbackman/brightburn.vim",
  },

  {
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
  },
  {
	'rose-pine/neovim',
	name = 'rosepine',
	enabled = true,
	config = function()
		require('rose-pine').setup({
			disable_background = true,
				styles = {
					italic = false,
					transparency = false,
				},
			})
		Color()
	end
  }
}
