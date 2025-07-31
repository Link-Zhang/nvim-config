return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    -- must use config function
    config = function()
      require("telescope").setup({
        defaults = {
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown({ layout_config = { anchor = "", }, })
            },
          },
          layout_config = {
            horizontal = {
              height = 0.9,
              preview_width = 0.618,
              prompt_position = "top",
              width = 0.9,
            },
          },
          layout_strategy = "horizontal",
          mappings = {
            i = {
              ["<esc>"] = function(...)
                require("telescope.actions").close(...)
              end,
            },
          },
          sorting_strategy = "ascending",
        },
      })
      require("telescope").load_extension("ui-select")
    end,
    dependencies = {
      {
        "nvim-lua/plenary.nvim",
        name = "plenary",
      },
      {
        "nvim-telescope/telescope-ui-select.nvim",
        name = "telescope-ui-select",
      },
      {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
      },
    },
    keys = {
      { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "[telescope] FindFiles", silent = true, },
      { "<leader>g", "<cmd>Telescope live_grep<cr>",  desc = "[telescope] LiveGrep",  silent = true, },
    },
    name = "telescope",
  },
}
