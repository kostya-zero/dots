return require('packer').startup(function(use)
    -- Packer
    use('wbthomason/packer.nvim')

    -- Themes
    use('aktersnurra/no-clown-fiesta.nvim')
    use('EdenEast/nightfox.nvim')

    -- UI
    use('kyazdani42/nvim-web-devicons')
    use('nvim-lualine/lualine.nvim')
    use {'akinsho/bufferline.nvim', tag = "v3.*"}
    use('nvim-tree/nvim-tree.lua')
    use('goolord/alpha-nvim')

    -- Formatters
    use('windwp/nvim-autopairs')
    use('numToStr/Comment.nvim')

    -- Discord Presence
    use('andweeb/presence.nvim')

    -- LSP
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('mfussenegger/nvim-dap')
    use('jose-elias-alvarez/null-ls.nvim')
    use('nvim-treesitter/nvim-treesitter')

    -- CMP
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/cmp-path')
end)
