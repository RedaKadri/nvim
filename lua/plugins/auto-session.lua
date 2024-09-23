return {
  "rmagatti/auto-session",
  config = function ()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false;
      auto_session_suppress_dirs = {"~/www/"},
    })

    vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", {})
    vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {})
  end
}
