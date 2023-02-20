-- Options for keymapping
local options = { noremap = true, silent = true }

-- Nvim Tree
vim.api.nvim_set_keymap('n', 'nt', ":NvimTreeToggle<CR>", options)
vim.api.nvim_set_keymap('n', 'nc', ":NvimTreeClose<CR>", options)

-- Tab Navigation
vim.api.nvim_set_keymap('n', 'to', ':tabnew<CR>', options)
vim.api.nvim_set_keymap('n', 'tc', ':tabclose<CR>', options)
vim.api.nvim_set_keymap('n', 'tp', ':tabprev<CR>', options)
vim.api.nvim_set_keymap('n', 'tn', ':tabnext<CR>', options)
