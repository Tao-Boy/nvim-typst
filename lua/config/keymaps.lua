-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}


-- 分屏和之间的跳转
map("n", "<leader>v", ":vs<CR>")
map("n", "<leader>h", ":sp<CR>")
map("n", "<leader>c", "<C-w>c")
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")


-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-n>", ":bd<CR>", opt)

-- 替换Ecs键
map("i", "<C-j>", "<Esc>")


-- 快速跳转行头和行尾
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

map("n", "<leader>w", ":w<cr>")
map("n", "<leader>q", ":wq<cr>")



-- Visual模式下的缩进
map("v", "<", "<gv")
map("v", ">", ">gv")


