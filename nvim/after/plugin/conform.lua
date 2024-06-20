require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		graphql = { "prettier" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		yaml = { "yamlfmt" },
	},
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})
