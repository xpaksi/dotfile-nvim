return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		require("fzf-lua").setup({ "max-perf" })

		local fzf = require("fzf-lua")

		vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "Search files" })
		vim.keymap.set("n", "<leader>sb", fzf.buffers, { desc = "Search buffers" })
		vim.keymap.set("n", "<leader>ss", fzf.treesitter, { desc = "Search symbols" })
		vim.keymap.set("n", "<leader>sg", fzf.live_grep_native, { desc = "Live grep project" })
		vim.keymap.set("n", "<leader>sd", fzf.diagnostics_document, { desc = "Live grep project" })
		vim.keymap.set("n", "<leader>sD", fzf.diagnostics_workspace, { desc = "Live grep project" })
	end,
}
