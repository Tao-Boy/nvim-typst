return {
    "jbyuki/nabla.nvim",
    Lazy = true,
    ft = "latex",
    keys = {
        { '<leader>p', mode = { 'n', 'x' }, '<Cmd>lua require("nabla").popup()<CR>', desc = ' Translate' },
    },
    config = function()
    end


}
