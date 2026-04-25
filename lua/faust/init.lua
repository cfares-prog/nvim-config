require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  }
}

require('godot').setup{
  bin = "godot",

  dap = {
    host = "127.0.0.1",
    port = 6006,
  },

  gui = {
    console_config = {
      anchor = "SW",
      border = "double",
      col = 1,
      height = 10,
      relative = "editor",
      row = 99999,
      style = "minimal",
      width = 99999,
    },
  },

  expose_commands = true,
}
