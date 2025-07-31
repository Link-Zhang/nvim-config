return {
  {
    "neovim/nvim-lspconfig",
    -- must use config function
    config = function()
      -- mason setup by mason-tool-installer
      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = {
          "jdtls",
          "lua_ls",
        },
      })
      local default_capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = default_capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", },
            },
          },
        },
      })
    end,
    dependencies = {
      {
        "hrsh7th/cmp-nvim-lsp",
        name = "cmp_nvim_lsp",
      },
      {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
          {
            "williamboman/mason.nvim",
            name = "mason",
          },
        },
        name = "mason-lspconfig",
        version = "v1.*",
      },
    },
    event = "BufReadPost",
    name = "lspconfig",
    version = "v2.3.0",
  },
}
