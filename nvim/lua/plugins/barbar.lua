return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      {
        "lewis6991/gitsigns.nvim",
        name = "gitsigns",
        opts = {
          signs = {
            add          = { text = "+" },
            change       = { text = "~" },
            changedelete = { text = "~" },
            delete       = { text = "-" },
            topdelete    = { text = "‾" },
            untracked    = { text = "┆" },
          },
        },
      },
      {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
      },
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    keys = {
      { "<a-0>", "<cmd>BufferLast<cr>",                       desc = "[barbar] Last",        silent = true },
      { "<a-1>", "<cmd>BufferGoto 1<cr>",                     desc = "[barbar] 1",           silent = true },
      { "<a-2>", "<cmd>BufferGoto 2<cr>",                     desc = "[barbar] 2",           silent = true },
      { "<a-3>", "<cmd>BufferGoto 3<cr>",                     desc = "[barbar] 3",           silent = true },
      { "<a-4>", "<cmd>BufferGoto 4<cr>",                     desc = "[barbar] 4",           silent = true },
      { "<a-5>", "<cmd>BufferGoto 5<cr>",                     desc = "[barbar] 5",           silent = true },
      { "<a-6>", "<cmd>BufferGoto 6<cr>",                     desc = "[barbar] 6",           silent = true },
      { "<a-7>", "<cmd>BufferGoto 7<cr>",                     desc = "[barbar] 7",           silent = true },
      { "<a-8>", "<cmd>BufferGoto 8<cr>",                     desc = "[barbar] 8",           silent = true },
      { "<a-9>", "<cmd>BufferGoto 9<cr>",                     desc = "[barbar] 9",           silent = true },
      { "<a-h>", "<cmd>BufferPrevious<cr>",                   desc = "[barbar] Previous",    silent = true },
      { "<a-l>", "<cmd>BufferNext<cr>",                       desc = "[barbar] Next",        silent = true },
      { "<a-p>", "<cmd>BufferPin<cr>",                        desc = "[barbar] Pin",         silent = true },
      { "<a-q>", "<cmd>BufferClose<cr>",                      desc = "[barbar] Delete",      silent = true },
      { "<a-w>", "<cmd>BufferCloseAllButCurrentOrPinned<cr>", desc = "[barbar] CloseOthers", silent = true },
    },
    lazy = false,
    name = "barbar",
    opts = {
      animation = true,
      auto_hide = false,
      focus_on_close = "previous",
      hide = {
        extensions = false,
        inactive = false,
      },
      icons = {
        buffer_index = true,
        button = "x",
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "" },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        filetype = {
          custom_colors = false,
          enabled = true,
        },
        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" },
        },
        pinned = { button = "", filename = true },
        preset = "powerline",
      },
      no_name_title = "[No Name]",
      sidebar_filetypes = {
        ["neo-tree"] = {
          align = "left",
          event = "BufWipeout",
          text = "neo-tree",
        },
      },
      tabpages = false,
    },
  },
}
