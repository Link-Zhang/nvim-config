return {
  {
    "catppuccin/nvim",
    -- must use config function
    config = function()
      require("catppuccin").setup({
        integrations = {
          barbar = true,
          lsp_saga = true,
          mason = true,
          which_key = true,
        },
      })
    end,
    init = function()
      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
    name = "catppuccin",
    priority = 1000,
  },
}
