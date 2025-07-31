return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader><leader>", function() require("which-key").show({ global = false }) end, desc = "[which-key] Toggle", silent = true, },
    },
    name = "which-key",
    opts = {
      icons = {
        mappings = false,
      },
      plugins = {
        spelling = {
          enabled = false,
        },
      },
      preset = "modern",
      show_help = false,
    },
  },
}
