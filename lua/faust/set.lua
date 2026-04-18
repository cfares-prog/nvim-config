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

vim.opt.colorcolumn = "85"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2e2e2e" })
vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff" })
vim.g.mapleader = " "


require("oil").setup()

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.opt.clipboard = "unnamedplus"
vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = '>',
        format = function(diagnostic)
            local limit = 40
            if string.len(diagnostic.message) > limit then
                return string.sub(diagnostic.message, 1, limit) .. "..."
            end
            return diagnostic.message
        end,
    },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    signs = true;
    float = {
        border = 'rounded',
        source = 'always',
    },
})
