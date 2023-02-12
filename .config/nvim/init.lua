-- Default commands
vim.cmd("set syntax=on")
vim.cmd("set number")
vim.opt.termguicolors = true

-- Fix tabulation
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set smartindent")

-- Configuration for Neovide
vim.cmd("let g:neovide_cursor_antialiasing=v:true")
vim.cmd("let g:neovide_scroll_animation_length = 0.3")
vim.cmd("let g:neovide_remember_window_size = v:true")
vim.cmd("let g:neovide_cursor_vfx_mode = 'pixiedust'")
vim.cmd("let g:neovide_refresh_rate = 75")
vim.cmd("let g:neovide_scrollbar_enabled = v:true")
vim.cmd("let g:neovide_scrollbar_mode = 'always_on'")
vim.cmd("set mouse=a")

require "paq" {
    "kyazdani42/nvim-web-devicons";
    "nvim-lualine/lualine.nvim";
    "akinsho/bufferline.nvim";
    "goolord/alpha-nvim";
    "andweeb/presence.nvim";
    "aktersnurra/no-clown-fiesta.nvim";

    "tpope/vim-commentary";
    "nvim-tree/nvim-tree.lua";
    "neoclide/coc.nvim";
    "tjdevries/coc-zsh";
}

local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

require('lualine').setup {
    icons_enabled = false,
    options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
    }
}

require("no-clown-fiesta").setup({
  transparent = false, -- Enable this to disable the bg color
  styles = { 
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments = {},
    keywords = {},
    functions = {},
    variables = {},
    type = { bold = true },
  },
})

vim.cmd[[colorscheme no-clown-fiesta]]

vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "tabs",
        numbers = "none",
        separator_style = "slant",
        offsets = {
            {
                filetype = "NvimTree",
                text = "Project Tree",
                text_align = "center"
            }
        }
    }
}

require'alpha'.setup(require'alpha.themes.dashboard'.config)

require("nvim-tree").setup()

require("presence"):setup({
    -- General options
    neovim_image_text   = "The One True Text Editor",
    main_image          = "neovim",
    client_id           = "793271441293967371",
    log_level           = nil,
    enable_line_number  = true,
    blacklist           = {},
    buttons             = false,
    file_assets         = {},
    auto_update         = true,

    -- Rich Presence text options
    editing_text        = "Editing %s",
    file_explorer_text  = "Explore %s",
    git_commit_text     = "Commiting changes to Git",
    plugin_manager_text = "Checking plugins",
    reading_text        = "Viewing %s",
    workspace_text      = "Working in %s",
    line_number_text    = "Line %s of %s",
})
