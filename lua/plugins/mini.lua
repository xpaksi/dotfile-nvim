return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.pairs").setup({})
			require("mini.cursorword").setup()

			require("mini.tabline").setup()
		end,
	},
}
