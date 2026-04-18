require("faust.lazy")
require("faust.remap")
require("faust.lsp")
require("faust.init")

vim.opt.termguicolors = true
--require("catppuccin").setup({
--  flavour = "mocha", -- darkest
--  transparent_background = false,
--  float = {
--      transparent = true,
--      solid = false
--  },
--  show_end_buffer = false,
--  integrations = {
--    treesitter = true,
--    native_lsp = { enabled = true },
--  },
--  no_italics = true,
--  styles = {
--      conditionals = { "bold" }
--  }
--})

require("ibl").setup()

vim.keymap.set('n', 'K', function()
  local winid = vim.diagnostic.open_float({ focusable = false })
  if not winid then
    vim.lsp.buf.hover()
  end
end, { desc = "Show hover or diagnostic" })

vim.cmd.colorscheme("koda-dark")
require("faust.set")

vim.api.nvim_set_hl(0,"Comment",{ fg = "#CC8A00", italic = false })
vim.api.nvim_set_hl(0, "String",     { fg ="#5cdb5c" , italic = false })
vim.api.nvim_set_hl(0,"Type",       { fg = "#d8b65f", bold = true })
vim.api.nvim_set_hl(0,"Keyword",    { fg = "#d8b65f",  bold = true })


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
