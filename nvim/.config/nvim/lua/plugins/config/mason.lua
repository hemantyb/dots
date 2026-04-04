require("mason").setup({
	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
		backdrop = 60,
		width = 0.8,
		height = 0.9,
		border = "rounded",
	},
	max_concurrent_installers = 5,
})
