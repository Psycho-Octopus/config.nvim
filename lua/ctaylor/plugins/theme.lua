function ColorRose(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

function ColorNeo(color)
	color = color or "iceclimber"
	vim.cmd.colorscheme(color)
end

function ColorTokyo(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end


return {
{ "cdmill/neomodern.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
		theme = 'roseprime'
    })
	ColorNeo()
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
		ColorRose()
	end
},
  {
  "folke/tokyonight.nvim",
  lazy = false,
  enabled = false,
  opts = {},
  config = function()
	  ColorTokyo()
  end
}
}
