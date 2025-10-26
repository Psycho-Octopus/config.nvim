vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use {
		"rose-pine/neovim",
		as = "rose-pine",
	}

	use "tpope/vim-surround"

	use "nvim-treesitter/nvim-treesitter"

	use "nvim-treesitter/nvim-treesitter-context"

	use "mbbill/undotree"

	use "tpope/vim-fugitive"

	use {
		"neovim/nvim-lspconfig",
		requires = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
		},
    }

    use "tpope/vim-commentary"

end)
