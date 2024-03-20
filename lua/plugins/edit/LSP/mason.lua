return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true,
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {"lua_ls","typst_lsp","rust_analyzer"}
            }
        end
    }

}
