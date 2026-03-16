require("faust.lazy")
require("faust.remap")
require("faust.lsp")

require("catppuccin").setup({
  flavour = "frappe", -- darkest
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
  styles = {
      conditionals = { "bold" }
  }
})

require("ibl").setup()

vim.opt.clipboard = "unnamedplus"
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        spacing = 2,
        source = true,
    },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    signs = false;
})

require("faust.set")
vim.cmd.colorscheme("catppuccin")

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>f", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>h", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():next() end)


-- Treesitter
require'nvim-treesitter'.install { 'rust', 'javascript', 'c', 'python', 'cpp' }

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
