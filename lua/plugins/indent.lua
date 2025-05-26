return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4C566A", nocombine = true })
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#81A1C1", nocombine = true })

		require("ibl").setup({
			indent = {
				highlight = "IblIndent",
			},
			scope = {
				enabled = true,
				highlight = "IblScope",
			},
		})
	end,
}
