function Color(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
  {
	'rose-pine/neovim',
	name = 'rosepine',
	enabled = true,
	config = function()
		require('rose-pine').setup({
		  dim_inactive_windows = false,

			enable = {
			  terminal = true,
			  legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
			  migrations = true, -- Handle deprecated options automatically
			},

				styles = {
					bold = true,
					italic = false,
				},
			})
	end
  },
  {
	"erikbackman/brightburn.vim",
  },

  {
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	  config = function()
		require("tokyonight").setup({
		  style = "night",

		  transparent = true,

		  cache = true,

		  styles = {
		  keywords = { italic = false },
		  comments = { italic = false },
	  },
})
		Color()
	  end
  }
}
