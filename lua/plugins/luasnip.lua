return {
    {
      "L3MON4D3/LuaSnip",
      config = function()
        require("luasnip").config.set_config({
          enable_autosnippets = true,
          store_selection_keys = "`",
        })
        require("luasnip.loaders.from_lua").load({ paths = "~/AppData/Local/nvim/LuaSnip" })
        local auto_expand = require("luasnip").expand_auto
        require("luasnip").expand_auto = function(...)
          vim.o.undolevels = vim.o.undolevels
          auto_expand(...)
        end
      end,
      keys = function()
        return {
          {
            "<Tab>",
            function()
              return require("luasnip").jump(1)
            end,
            mode = "s",
          },
          {
            "<S-Tab>",
            function()
              require("luasnip").jump(-1)
            end,
            mode = { "i", "s" },
          },
          {
            "<c-n>",
            "<Plug>luasnip-next-choice",
            mode = { "i", "s" },
          },
          {
            "<c-m>",
            "<Plug>luasnip-prev-choice",
            mode = { "i", "s" },
          },
        }
      end,
    },
  }