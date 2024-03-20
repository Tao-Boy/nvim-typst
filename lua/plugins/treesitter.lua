return {
    "nvim-treesitter/nvim-treesitter",
    Lazy = true,
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "typst","rust" },
            sync_install = true,
            auto_install = true,
            require 'nvim-treesitter.configs'.setup {
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn", -- set to `false` to disable one of the mappings
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
