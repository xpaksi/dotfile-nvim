return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = true,
			},
			view = {
				width = 30,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				highlight_git = "all",
			},
		})

		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", {
			silent = true,
			desc = "Toggle NvimTree",
		})

		vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeToggle<cr>", {
			silent = true,
			desc = "Toggle NvimTree",
		})
	end,
}
