-- Default Options
vim.o.number = true
vim.o.syntax = "on"
vim.o.noswapfile = "on"
vim.o.relativenumber = true
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.mouse = "a"
vim.g.completeopt = "menu,menuone,noselect"
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.updatetime = 750
vim.cmd("hi NonText guifg=bg")

-- Fix tabulation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.smartindent = true

-- Configuration for Neovide
if vim.g.neovide then
    vim.opt.guifont = { "JetBrainsMono Nerd Font Mono", "h12"}
    vim.g.neovide_scroll_animation_length = 0.2
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_refresh_rate = 75
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
