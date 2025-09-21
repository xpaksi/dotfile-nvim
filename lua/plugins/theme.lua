return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = false,
				integrations = {},
				snacks = {
					enabled = false,
				},
				float = {
					transparent = false,
					solid = false,
				},
			})
		end,
	},
}
