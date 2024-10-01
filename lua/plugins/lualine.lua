return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      blue = "#7aa2f7",
      cyan = "#7dcfff",
      black = "#15161e",
      white = "#a9b1d6",
      red = "#f7768e",
      violet = "#bb9af7",
      grey = "#292e42",
    }
    local theme = {
      normal = {
        a = { fg = colors.black, bg = colors.cyan },
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
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
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
            diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
          },
          {
            "diagnostics",
            source = { "nvim" },
            sections = { "warn" },
            diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
          },
          "filetype",
          "progress",
        },
        lualine_z = {
          {
            "location",
            separator = { right = "" },
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
