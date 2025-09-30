function Color(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
	{
		"erikbackman/brightburn.vim",
		enabled = false,
		config = function()
			vim.cmd.colorscheme("brightburn")
		end
    },
{
  'maxmx03/solarized.nvim',
  lazy = false,
  enabled = false,
  priority = 1000,
  ---@type solarized.config
  opts = {},
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = 'light'
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized'
  end,
},
{
  "cdmill/neomodern.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
		theme = "roseprime"
    })
	Color()
  end,
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
					transparency = true,
                },
            })
		Color()
	end
	}
}
