-- Start nvim-tree on startup
-- require("nvim-tree.api").tree.open()

-- Startup dashboard-nvim
if next(vim.fn.argv()) == nil then
    require'alpha'.setup(require('ui.startup').config)
end

vim.cmd("hi NonText guifg=bg")
