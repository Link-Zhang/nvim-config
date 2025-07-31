return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<c-h>",  "<cmd>TmuxNavigateLeft<cr>",     desc = "[vim-tmux-navigator] Left",     silent = true, },
      { "<c-j>",  "<cmd>TmuxNavigateDown<cr>",     desc = "[vim-tmux-navigator] Down",     silent = true, },
      { "<c-k>",  "<cmd>TmuxNavigateUp<cr>",       desc = "[vim-tmux-navigator] Up",       silent = true, },
      { "<c-l>",  "<cmd>TmuxNavigateRight<cr>",    desc = "[vim-tmux-navigator] Right",    silent = true, },
      { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "[vim-tmux-navigator] Previous", silent = true, },
    },
    name = "vim-tmux-navigator",
  },
}
