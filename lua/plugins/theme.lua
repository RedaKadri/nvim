return {
	{
		"rmehri01/onenord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("onenord")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				colors = {
					palette = {
						fujiWhite = "#d8dee9",
					},
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
								float = {
									bg = "none",
								},
							},
						},
					},
				},
				overrides = function()
					return {
						TelescopePromptBorder = { fg = "#d8dee9" },
						TelescopeResultsBorder = { fg = "#d8dee9" },
						TelescopePreviewBorder = { fg = "#d8dee9" },
					}
				end,
			})
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
