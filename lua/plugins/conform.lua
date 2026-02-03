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
					astro = { "prettierd" },
					lua = { "stylua" },
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					vue = { "prettierd" },
					rust = { "rustfmt" },
					python = { "ruff" },
					sql = { "sqruff" },
					json = { "prettierd" },
					go = { "gofmt", "goimports" },
					typescriptreact = { "prettierd" },
					ocaml = { "ocamlformat" },
				},
			})
		end,
	},
}
