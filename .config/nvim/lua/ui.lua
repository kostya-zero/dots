-- Apply colorscheme
vim.cmd("colorscheme carbonfox")

-- Lualine setup
require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = 'carbonfox',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
    sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {},
    lualine_x = {'filename'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

-- Bufferline setup
require("bufferline").setup {
    options = {
        mode = "buffers",
        indicator = {
            style = 'underline'
        },
        separator_style = 'thick'
    }
}

-- File Explorer
require("nvim-tree").setup {
    sort_by = 'name',
    auto_reload_on_write = true,
    git = {
        enable = true
    },
    modified = {
        enable = true
    },
    view = {
        cursorline = true,
        hide_root_folder = true,
        float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                border = "rounded"
            }
        }
    },
    renderer = {
        highlight_opened_files = "name",
        highlight_modified = "icon",
        indent_markers = {
            enable = true
        },
        icons = {
            modified_placement = "before"
        }
    }
}
