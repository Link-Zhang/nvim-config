return {
  {
    "niuiic/terminal.nvim",
    keys = {
      { "<esc>",     "<C-\\><C-n>",                               desc = "[terminal] Esc",  silent = true, mode = "t", },
      { "<leader>t", "<cmd>lua require(\"terminal\").open()<cr>", desc = "[terminal] Open", silent = true, mode = { "n", "t" }, },
      { "jk",        "<C-\\><C-n>",                               desc = "[terminal] Esc",  silent = true, mode = "t", },
    },
    name = "terminal",
  },
}
