require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  }
}

require('godot').setup({
  executable = "godot",

  dap = {
    adapter = {
      host = "127.0.0.1",
      port = 6006,
    },
  },

  expose_commands = true,
})

