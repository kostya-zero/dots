require("lualine").setup({
    options = {
        icons_enabled = true,
        globalstatus = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
    sections = {
        lualine_a = {'mode', 'branch'},
        lualine_b = {'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'location'},
        lualine_z = {'progress'}
  },
})
