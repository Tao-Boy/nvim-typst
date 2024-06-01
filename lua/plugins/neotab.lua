return {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = {
        tabkey = "<C-k>",
        act_as_tab = true,
        behavior = "nested",
        pairs = { ---@type ntab.pair[]
            { open = "(", close = ")" },
            { open = "[", close = "]" },
            { open = "{", close = "}" },
            { open = '"', close = '"' },
            { open = "`", close = "`" },
            { open = "<", close = ">" },
            { open = "*", close = "*" },
        },
        exclude = {},
        smart_punctuators = {
            enabled = true,
            semicolon = {
                enabled = false,
                ft = { "cs", "c", "cpp", "java" },
            },
            escape = {
                enabled = false,
                triggers = {},
            },
        },
    },
}

