return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", config = true },
	},
	config = function()
		require("mason").setup()

		local vue_language_server_path = vim.fn.stdpath("data")
			.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

		local vue_plugin = {
			name = "@vue/typescript-plugin",
			location = vue_language_server_path,
			languages = { "vue" },
			configNamespace = "typescript",
		}

		local servers = {
			gopls = {},
			rust_analyzer = {
				settings = {
					["rust-analyzer"] = {
						diagnostics = {
							enable = false,
						},
					},
				},
			},
			lua_ls = {},
			tailwindcss = {},
			sourcekit = {},
			jsonls = {},
			ty = {},
			oxlint = {},
			vtsls = {
				settings = {
					vtsls = {
						tsserver = {
							globalPlugins = {
								vue_plugin,
							},
						},
					},
				},
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
			},
			vue_ls = {},
			hls = {},
		}

		for server, config in pairs(servers) do
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
