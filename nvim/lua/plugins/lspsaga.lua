return {
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      {
        "catppuccin/nvim",
        name = "catppuccin",
      },
      {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
      },
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- must use config function
        config = function()
          require("nvim-treesitter.configs").setup({
            ensure_installed = {
              "java",
              "lua",
            },
            highlight = { enable = true },
            indent = { enable = true },
            sync_install = false,
          })
        end,
        name = "nvim-treesitter",
      },
    },
    event = "LspAttach",
    keys = {
      { "<leader>d", "<cmd>Lspsaga peek_definition<cr>", desc = "[lspsaga] PeekDefinition", silent = true, },
      { "<leader>i", "<cmd>Lspsaga finder<cr>",          desc = "[lspsaga] Finder",         silent = true, },
      { "<leader>o", "<cmd>Lspsaga outline<cr>",         desc = "[lspsaga] Outline",        silent = true, },
      { "<leader>p", "<cmd>Lspsaga goto_definition<cr>", desc = "[lspsaga] GotoDefinition", silent = true, },
      { "<leader>r", "<cmd>Lspsaga rename<cr>",          desc = "[lspsaga] Rename",         silent = true, },
    },
    name = "lspsaga",
    opts = {
      finder = {
        default = "def+imp+ref",
        keys = {
          quit = "<esc>",
          split = "h",
          vsplit = "v",
        },
      },
      lightbulb = {
        virtual_text = false,
      },
      rename = {
        keys = {
          quit = "<esc>",
        },
      },
      ui = {
        code_action = "󰌶",
        kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
      },
    },
  },
}
