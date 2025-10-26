function Colorscheme(color)
	color = color or "rose-pine"

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#000000"})
end

require("rose-pine").setup({
    styles = {
        transparency = true,
    },
})

Colorscheme(nil)
