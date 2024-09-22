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
      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
      window = {
        width = 35,
      },
    })

    vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal right<CR>", {})
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem close <CR>", {})
  end,
}