return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local colors = {
			oldwhite = "#c8c093",
			blue = "#658594",
			black = "#12120f",
			white = "#c5c9c5",
			red = "#e46876",
			orange = "#ff9e64",
			violet = "#938aa9",
			grey = "#16161d",
		}

		local theme = {
			normal = {
				a = { fg = colors.black, bg = colors.oldwhite },
				b = { fg = colors.white, bg = colors.grey },
				c = { fg = colors.white },
			},
			insert = { a = { fg = colors.black, bg = colors.blue } },
			visual = { a = { fg = colors.black, bg = colors.violet } },
			replace = { a = { fg = colors.black, bg = colors.red } },
			inactive = {
				a = { fg = colors.white, bg = colors.black },
				b = { fg = colors.white, bg = colors.black },
				c = { fg = colors.white },
			},
		}

		require("lualine").setup({
			options = {
				theme = theme,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", right_padding = 2 } },
				lualine_b = {
					"filename",
					"branch",
					"diff",
				},
				lualine_c = { "%=" },
				lualine_x = {},
				lualine_y = {
					{
						"diagnostics",
						source = { "nvim" },
						sections = { "error" },
						diagnostics_color = { error = { bg = colors.red, fg = colors.black } },
					},
					{
						"diagnostics",
						source = { "nvim" },
						sections = { "warn" },
						diagnostics_color = { warn = { bg = colors.orange, fg = colors.black } },
					},
					"filetype",
					"progress",
				},
				lualine_z = {
					{
						"location",
						left_padding = 2,
					},
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
