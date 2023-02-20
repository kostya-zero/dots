-- Default commands
vim.cmd("set syntax=on")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.g.completeopt = "menu,menuone,noselect"
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Fix tabulation
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
