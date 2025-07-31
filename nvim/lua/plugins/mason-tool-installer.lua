return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        name = "mason",
      },
    },
    lazy = false,
    name = "mason-tool-installer",
    opts = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
      require("mason-tool-installer").setup({
        ensure_installed = {
          "jdtls",
          "lua-language-server",
        },
        integrations = {
          ["mason-lspconfig"] = false,
          ["mason-null-ls"] = false,
          ["mason-nvim-dap"] = false,
        },
      })
    end,
  },
}
