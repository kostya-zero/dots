vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)

    -- Packer
    use('wbthomason/packer.nvim')

    -- Themes
    use('aktersnurra/no-clown-fiesta.nvim')
    use('nanotech/jellybeans.vim')
    use("bluz71/vim-moonfly-colors")

    -- UI
    use('kyazdani42/nvim-web-devicons')
    use("dstein64/vim-startuptime")
    use('nvim-lualine/lualine.nvim')
    use('akinsho/bufferline.nvim')
    use('folke/noice.nvim')
    use('MunifTanjim/nui.nvim')

    -- Tools 
    use('goolord/alpha-nvim')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-telescope/telescope.nvim')
    use('nvim-lua/plenary.nvim')
    use('rcarriga/nvim-notify')

    -- Formatters
    use('windwp/nvim-autopairs')
    use('numToStr/Comment.nvim')

    -- Discord Presence
    use('andweeb/presence.nvim')

    -- LSP
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use("RishabhRD/nvim-lsputils")
    use('mfussenegger/nvim-dap')
    use('jose-elias-alvarez/null-ls.nvim')
    use('nvim-treesitter/nvim-treesitter')
    use('glepnir/lspsaga.nvim')

    -- CMP
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/cmp-path')
end)
