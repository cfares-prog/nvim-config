vim.opt.guicursor = "n-v-c:block"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#383a4f" })
vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff" })
vim.g.mapleader = " "

