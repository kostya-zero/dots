require("nvim-treesitter.configs").setup {
    ensure_installed = {"rust", "markdown", "c_sharp", "lua", "python", "css", "json"},
    highlight = {
        enable = true
    }
}

