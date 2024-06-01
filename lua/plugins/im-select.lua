return{
    "keaising/im-select.nvim",
    config = function()
        require("im_select").setup({
	default_im_select  = "keyboard-us",
	set_default_events = { "InsertLeave"},
	async_switch_im = false
	})
    end,
}
