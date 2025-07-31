return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      {
        "catppuccin/nvim",
        name = "catppuccin",
      },
      {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
      },
    },
    lazy = false,
    name = "lualine",
    opts = {
      theme = "catppuccin",
    },
  },
}
