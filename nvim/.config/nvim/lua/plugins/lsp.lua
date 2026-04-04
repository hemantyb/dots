local servers = {
	"harper_ls",
	"lua_ls",
	"ruff",
	"ty",
	"bashls",
	"zls",
	"clangd",
}

vim.lsp.enable(servers)

vim.diagnostic.config({
	virtual_text = {
		severity = { min = vim.diagnostic.severity.WARN }, -- Only show for WARN and above
		spacing = 4,
		-- prefix = "●",
		prefix = "💔",
		-- prefix = "⚠",
	},
	signs = false,
	underline = false,
	severity_sort = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = "always",
	},
})
