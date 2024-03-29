return {
    {
        "L3MON4D3/LuaSnip",
        event = "VeryLazy",
        keys = { { "<C-n>", "<Plug>luasnip-next-choice", mode = "i" } },
        config = function()
            require("luasnip").config.set_config({
                enable_autosnippets = true,
                update_events = 'TextChanged,TextChangedI',
                store_selection_keys = "`",
            })
            require("luasnip.loaders.from_lua").load({
                paths =
                "C:\\Users\\30338\\AppData\\Local\\nvim\\LuaSnip"
            })
            local auto_expand = require("luasnip").expand_auto
            auto_expand = function(...)
                vim.o.undolevels = vim.o.undolevels
                auto_expand(...)
            end
        end,
    },
}
