require("slimline").setup({})
require("nvim-tree").setup({})
require("mason").setup({
	ui = {
		icons = {
			package_installed = "",
			package_uninstalled = "",
			package_pending = "□",
		},
		backdrop = 60,
		width = 0.8,
		height = 0.9,
		border = "rounded",
	},
})
require("onedarkpro").setup({
	options = {
		transparency = true,
	},
})
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		sh = { "beautysh" },
		bash = { "beautysh" },
		zsh = { "beautysh" },
		c = { "clang-format" },
		cpp = { "clang-format" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
require("nvim-treesitter").setup({})
require("nvim-autopairs").setup({})
require("fzf-lua").setup({})
require("barbar").setup({
	sidebar_filetypes = {
		NvimTree = true,
	},
})
require("blink.cmp").setup({
	keymap = { preset = "enter" },
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = { auto_show = false },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
})
