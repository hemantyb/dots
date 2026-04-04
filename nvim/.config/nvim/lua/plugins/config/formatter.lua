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
