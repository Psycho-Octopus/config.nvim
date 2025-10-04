return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
		"rafamadriz/friendly-snippets",
		"saghen/blink.cmp",
    },
	config = function()
		local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
		local lspconfig = require("lspconfig")
		local luasnip = require("luasnip")

		require("fidget").setup({})
        require("mason").setup()

		require("mason-lspconfig").setup({
		  ensure_installed = {
			  "lua_ls",
			  "rust_analyzer",
			  "gopls",
			  "clangd",
			  "ts_ls",
		  },
		  handlers = {
			function(server_name)
			  print("setting up ", server_name)
			  lspconfig[server_name].setup {}
			end
		  },
		  })

		local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
        }),
      })

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })

	  vim.diagnostic.config({
		virtual_text = {
		  spacing = 4,
		  prefix = "◆",
		},
		signs = false,
		underline = true,
		update_in_insert = false,
		severity_sort = true,
	  })
	end
  }
