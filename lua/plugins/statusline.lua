return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"meuter/lualine-so-fancy.nvim",
	},
	config = function()
		local kanagawa = {
			normal = {
				a = { fg = "#12120f", bg = "#c8c093" },
				b = { fg = "#c5c9c5", bg = "#16161d" },
				c = { fg = "#c5c9c5", bg = "#2a2a37" },
			},
			insert = { a = { fg = "#12120f", bg = "#658594" } },
			visual = { a = { fg = "#12120f", bg = "#76946a" } },
			replace = { a = { fg = "#12120f", bg = "#938aa9" } },
			command = { a = { fg = "#12120f", bg = "#6a9589" } },
			inactive = {
				a = { fg = "#c5c9c5", bg = "#12120f" },
				b = { fg = "#c5c9c5", bg = "#12120f" },
				c = { fg = "#c5c9c5" },
			},
		}

		require("lualine").setup({
			options = {
				theme = kanagawa,
				component_separators = "",
				section_separators = "",
				globalstatus = true,
				refresh = {
					statusline = 100,
				},
			},
			sections = {
				lualine_a = {
					{ "mode" },
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
