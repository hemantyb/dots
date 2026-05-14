local plugins = {
	"https://github.com/sschleemilch/slimline.nvim",
	"https://github.com/olimorris/onedarkpro.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-tree/nvim-tree.lua",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/akinsho/toggleterm.nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = "v1.10.1",
	},
}

vim.pack.add(plugins)

require("plugins.specs")
require("plugins.lsp")
