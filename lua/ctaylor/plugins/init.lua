-- File for any plugins that dont deserve their own file.
-- Mostly because small configs
return {
-- for autopair
  {
	  'm4xshen/autoclose.nvim',
	  config = function()
		  require("autoclose").setup()
	  end
  },

	'ThePrimeagen/vim-be-good'

}
