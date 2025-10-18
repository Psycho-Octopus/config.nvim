return {
	"rose-pine/neovim",
	name = "rosepine",
	config = function()
	  require("rose-pine").setup({
		styles = {
			italic = false,
		},
	  })
	  vim.cmd.colorscheme("rose-pine")
	end
}
