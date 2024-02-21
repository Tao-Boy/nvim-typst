vim.opt.timeoutlen = 300
vim.b.fileenconding = "utf-8"
--vim.filetype.add({ extension = { typ = "typst" } })



vim.opt.clipboard = 'unnamedplus' -- 使用系统剪切板
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a'               -- 允许使用鼠标

-- Tab
vim.opt.tabstop = 4      -- number of visual spaces per TAB
vim.opt.softtabstop = 4  -- number of spacesin tab when editing
vim.opt.shiftwidth = 4   -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true        -- 行号
vim.opt.cursorline = true    -- 高亮当前行
vim.opt.splitbelow = true    -- open new vertical split bottom
vim.opt.splitright = true    -- open new horizontal splits right
vim.opt.termguicolors = true -- enabl 24-bit RGB color in the TUI

-- Searching
vim.opt.incsearch = true  -- search as characters are entered
vim.opt.hlsearch = false  -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true  -- but make it case sensitive if an uppercase is entered

-- Spell
vim.opt.spell = true
vim.opt.spelllang = { "en", "cjk" }
vim.opt.spelloptions = "camel"
vim.opt.backup = false

vim.opt.title = true
vim.opt.virtualedit = 'block'
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.showmode = false
vim.opt.wildmenu = true
