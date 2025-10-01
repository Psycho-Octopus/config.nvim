return {
	"ThePrimeagen/harpoon",
	config = function()
		vim.keymap.set('n', '<C-a>', ':lua require("harpoon.mark").add_file()<CR>', { desc = "Harpoon add file", silent = true })
		vim.keymap.set('n', '<C-m>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "Harpoon toggle menu", silent = true })
	end
}
