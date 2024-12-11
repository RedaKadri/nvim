return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"meuter/lualine-so-fancy.nvim",
	},
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
				c = { fg = colors.white, bg = "#2a2a37" },
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
				component_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
				refresh = {
					statusline = 100,
				},
			},
			sections = {
				lualine_a = {
					{ "fancy_mode" },
				},
				lualine_b = {
					{ "fancy_branch" },
					{ "fancy_diff" },
				},
				lualine_c = {
					{ "fancy_cwd" },
				},
				lualine_x = {
					{ "fancy_macro" },
					{ "fancy_diagnostics" },
					{ "fancy_searchcount" },
					{ "fancy_location" },
				},
				lualine_y = {
					{ "fancy_filetype", ts_icon = "" },
				},
				lualine_z = {
					{ "fancy_lsp_servers" },
				},
			},
		})
	end,
}
