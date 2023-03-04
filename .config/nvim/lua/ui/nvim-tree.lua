require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
        cursorline = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
        float = {
            enable = false,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = 'editor',
                border = "rounded"
            }
        }
    },
    renderer = {
        group_empty = true,
        indent_markers = {
            enable = true
        }
    },
    filters = {
        dotfiles = true,
    },
})
