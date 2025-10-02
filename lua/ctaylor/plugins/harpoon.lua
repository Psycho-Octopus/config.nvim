return {
	"ThePrimeagen/harpoon",
	config = function()
		vim.keymap.set('n', '<C-a>', function() require("harpoon.mark").add_file() end)
		vim.keymap.set('n', '<C-m>', function() require("harpoon.ui").toggle_quick_menu() end)
	end
}
