require("faust.lazy")
require("faust.remap")
require("faust.lsp")
require("faust.init")

vim.opt.termguicolors = true
require("catppuccin").setup({
  flavour = "mocha", -- darkest
  transparent_background = false,
  float = {
      transparent = true,
      solid = false
  },
  show_end_buffer = false,
  integrations = {
    treesitter = true,
    native_lsp = { enabled = true },
  },
  no_italics = true,
  styles = {
      conditionals = { "bold" }
  }
})

require("ibl").setup()

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

vim.keymap.set('n', 'K', function()
  local winid = vim.diagnostic.open_float({ focusable = false })
  if not winid then
    vim.lsp.buf.hover()
  end
end, { desc = "Show hover or diagnostic" })

vim.cmd.colorscheme("gruber_custom")
require("faust.set")
vim.api.nvim_set_hl(0,"Constant",   { fg =  "#ffd700" })
vim.api.nvim_set_hl(0,"Identifier", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0,"Operator",   { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0,"Type",       { fg = "#ffd700", bold = true })
vim.api.nvim_set_hl(0,"Keyword",    { fg = "#ffd700",  bold = true })
vim.api.nvim_set_hl(0,"Include",    { fg = "#00bfbb"})
vim.api.nvim_set_hl(0,"PreProc",    { fg = "#00bfbb" })
vim.api.nvim_set_hl(0, "@variable", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "@field", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#FFFFFF" })

-- Harpoon 
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>f", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
-- Harpoon

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>h", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():next() end)

-- Treesitter
require'nvim-treesitter'.install { 'rust', 'javascript', 'c', 'python', 'cpp', 'typescript'}

-- No italics
vim.cmd([[
  highlight Comment gui=NONE
  highlight Keyword gui=NONE
  highlight Function gui=NONE
  highlight String gui=NONE
]])

-- virtual lines
local ns = vim.api.nvim_create_namespace("eof_padding")

local function add_eof_padding()
  local buf = vim.api.nvim_get_current_buf()
  local line_count = vim.api.nvim_buf_line_count(buf)

  vim.api.nvim_buf_clear_namespace(buf, ns, 0, -1)

  for i = 1, 10 do
    vim.api.nvim_buf_set_extmark(buf, ns, line_count - 1, 0, {
      virt_lines = { { { " ", "Normal" } } },
      virt_lines_above = false,
    })
  end
end

vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
  callback = add_eof_padding,
})
