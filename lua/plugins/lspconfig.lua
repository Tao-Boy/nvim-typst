local ltex = require "mason-lspconfig.server_configurations.ltex"
return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                -- "tinymist","lua-language-server"
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- tinymist = {
                --     single_file_support = true,
                --     root_dir = function()
                --         return vim.fn.getcwd()
                --     end,
                --     settings = {}
                -- },
                -- ltex = {}
                digestif = {}
            },
        }
        -- event        = { "BufReadPre", "BufNewFile" },
        -- dependencies = {
        --     "williamboman/mason.nvim",
        --     "williamboman/mason-lspconfig.nvim",
        -- },
        -- config   = function()
        --     local lspconfig = require('lspconfig')
        --     local capabilities = require('cmp_nvim_lsp').default_capabilities()
        --     vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        --     vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
        --     vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
        --     vim.api.nvim_create_autocmd('LspAttach', {
        --         group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        --         callback = function(ev)
        --             vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        --             local opts = { buffer = ev.buf }
        --             vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        --             vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        --             vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        --             vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        --             vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        --             vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        --             vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        --             vim.keymap.set('n', '<space>wl', function()
        --                 print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        --             end, opts)
        --             vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        --             vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        --             vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        --             vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        --             vim.keymap.set('n', '<space>f', function()
        --                 vim.lsp.buf.format { async = true }
        --             end, opts)
        --         end,
        --     })
        --     lspconfig.lua_ls.setup {
        --         capabilities = capabilities,
        --     }
        --     lspconfig.tinymist.setup {
        --         single_file_support = true,
        --         root_dir = function()
        --             return vim.fn.getcwd()
        --         end,
        --         settings = {
        --             exportPdf = "onSave",
        --             formatterMode = "typstyle",
        --         },
        --     }
        -- end,
    },
}
