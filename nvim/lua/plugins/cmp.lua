return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "hrsh7th/cmp-cmdline",
        name = "cmdline",
      },
      {
        "L3MON4D3/LuaSnip",
        dependencies = {
          {
            "rafamadriz/friendly-snippets",
            name = "friendly-snippets",
          },
          {
            "saadparwaiz1/cmp_luasnip",
            name = "cmp_luasnip",
          },
        },
        name = "luasnip",
      },
      {
        "onsails/lspkind.nvim",
        name = "lspkind",
      },
    },
    event = "LspAttach",
    keys = {
      { "<leader>l",    "<cmd>lua vim.lsp.buf.format()<cr>",      desc = "[cmp] LspFormat",     silent = true, },
      { "<leader><cr>", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "[cmp] LspCodeAction", silent = true, },
    },
    name = "cmp",
    opts = function()
      local cmp = require("cmp")
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end
      local lspkind = require("lspkind")
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        formatting = {
          format = lspkind.cmp_format(
            {
              before = function(entry, vim_item)
                vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                return vim_item
              end,
              ellipsis_char = "...",
              maxwidth = {
                abbr = function() return math.floor(0.45 * vim.o.columns) end,
                menu = function() return math.floor(0.45 * vim.o.columns) end,
              },
              mode = "symbol_text",
              preset = "default",
              show_labelDetails = true,
            }
          ),
        },
        mapping = cmp.mapping.preset.insert({
          ["<cr>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if luasnip.expandable() then
                luasnip.expand()
              else
                cmp.confirm({ select = true, })
              end
            else
              fallback()
            end
          end, { "i", "s", }),
          ["<s-tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if #cmp.get_entries() == 1 then
                if luasnip.expandable() then
                  luasnip.expand()
                else
                  cmp.confirm({ select = true, })
                end
              else
                cmp.select_prev_item()
              end
            else
              fallback()
            end
          end, { "c", "i", "s", }),
          ["<tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if #cmp.get_entries() == 1 then
                if luasnip.expandable() then
                  luasnip.expand()
                else
                  cmp.confirm({ select = true, })
                end
              else
                cmp.select_next_item()
              end
            elseif has_words_before() then
              cmp.complete()
              if #cmp.get_entries() == 1 then
                cmp.confirm({ select = true, })
              end
            else
              fallback()
            end
          end, { "c", "i", "s", }),
        }),
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources(
          {
            { name = "luasnip", option = { show_autosnippets = true } },
            { name = "nvim_lsp" },
          }
        ),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
      cmp.setup.cmdline(":", {
        completion = { autocompletion = true },
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({ { name = "cmdline" }, }),
      })
    end,
  },
}
