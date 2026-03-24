return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
				notify_on_error = false,
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "oxfmt" },
					typescript = { "oxfmt" },
					vue = { "oxfmt" },
					rust = { "rustfmt" },
					python = { "ruff" },
					sql = { "sqruff" },
					json = { "oxfmt" },
					go = { "gofmt", "goimports" },
					typescriptreact = { "oxfmt" },
					ocaml = { "ocamlformat" },
				},
			})
		end,
	},
}
