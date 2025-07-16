return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup({})
		require("mini.statusline").setup()
		require("mini.indentscope").setup()
		require("mini.cursorword").setup()
		require("mini.notify").setup()
	end,
}
