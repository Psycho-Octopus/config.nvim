return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false,
		ensure_installed = {
                "vimdoc", "javascript", "typescript", "c", "lua", "rust",
                "jsdoc", "bash", "go",
		},
--		build = ":TSUpdate"
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	}
}
