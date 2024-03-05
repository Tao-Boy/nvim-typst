return {
    "nvim-treesitter/nvim-treesitter",
    Lazy = true,
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "typst", "lua", "latex" },
            sync_install = true,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
