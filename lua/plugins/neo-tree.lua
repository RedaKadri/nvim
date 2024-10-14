return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
				width = 35,
			},
			filesystem = {
				always_show = {
					".gitignore",
				},
			},
		})

		vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal <CR>", {})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem close <CR>", {})
	end,
}
