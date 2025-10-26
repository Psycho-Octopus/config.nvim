local cmp = require('cmp')
local lspconfig = require("lspconfig")

vim.lsp.config['ocamllsp'] = {
  cmd = { 'ocamllsp' },
  filetypes = {
    'ocaml',
    'ocaml.interface',
    'ocaml.menhir',
    'ocaml.ocamllex',
    'dune',
    'reason'
  },
  root_markers = {
    { 'dune-project', 'dune-workspace' },
    { "*.opam", "esy.json", "package.json" },
    '.git'
  },
  settings = {},
}

vim.lsp.enable('ocamllsp')

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


cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
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
