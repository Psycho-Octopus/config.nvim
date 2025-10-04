-- File for any plugins that dont deserve their own file.
-- Mostly because small configs
return {
-- for autopair
  {
	  'm4xshen/autoclose.nvim',
	  enable = false,  -- for now
	  config = function()
	  require("autoclose").setup({
		options = {
		  disable_when_touch = true,
		},
	  })
	  end
  },

	'ThePrimeagen/vim-be-good'

}
