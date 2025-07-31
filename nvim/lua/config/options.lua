vim.bo.modifiable = true

local g = vim.g
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

local opt = vim.opt
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.fileencoding = "UTF-8"
opt.ignorecase = true
opt.laststatus = 3
opt.mouse = "a"
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = false
opt.shiftwidth = 2
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.smoothscroll = true
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.undofile = true
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
