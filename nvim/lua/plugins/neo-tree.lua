return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      {
        "MunifTanjim/nui.nvim",
        name = "nui",
      },
      {
        "nvim-lua/plenary.nvim",
        name = "plenary",
      },
      {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "[neo-tree] Toggle", silent = true },
    },
    name = "neo-tree",
    opts = {
      enable_diagnostics = false,
      reveal = true,
      source_selector = {
        statusline = false,
        winbar = true,
      },
      sources = { "filesystem", "git_status" },
    },
  },
}
