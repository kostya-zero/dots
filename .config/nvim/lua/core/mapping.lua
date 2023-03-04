-- Options for keymapping
local options = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Nvim Tree
keymap('n', 'nt', ":NvimTreeToggle<CR>", options)
keymap('n', 'nc', ":NvimTreeClose<CR>", options)
keymap('n', 'nf', ":NvimTreeFocus<CR>", options)

-- Tab Navigation
keymap('n', 'to', ':tabnew<CR>', options)
keymap('n', 'tc', ':tabclose<CR>', options)
keymap('n', 'tp', ':tabprev<CR>', options)
keymap('n', 'tn', ':tabnext<CR>', options)

-- lspsaga 
keymap('n', 'gh', ':Lspsaga lsp_finder<CR>', options)
keymap('n', 'K', ':Lspsaga hover_doc<CR>', options)
keymap('n', 'gd', ':Lspsaga goto_definition<CR>', options)
keymap('n', 'ga', ':Lspsaga code_actions', options)

-- Telescope
keymap('n', 'ff', ":Telescope find_files<CR>", options)
keymap('n', 'fd', ":Telescope diagnostics<CR>", options)
keymap('n', 'fb', ":Telescope buffers<CR>", options)
keymap('n', 'fh', ":Telescope help_tags<CR>", options)

