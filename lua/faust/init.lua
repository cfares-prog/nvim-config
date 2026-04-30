local gruber_colors = {
  bg       = '#181818',
  fg       = '#e4e4ef',
  yellow   = '#ffdd33',
  green    = '#73c936',
  black    = '#282828',
  quartz   = '#95a99f',
  red      = '#f43841',
  brown    = '#cc8c3c',
}

require('lualine').setup {
  options = {
    theme = {
      normal = {
        a = { fg = gruber_colors.bg, bg = gruber_colors.yellow, gui = 'bold' },
        b = { fg = gruber_colors.fg, bg = gruber_colors.black },
        c = { fg = gruber_colors.quartz, bg = gruber_colors.bg },
      },
      insert = {
        a = { fg = gruber_colors.bg, bg = gruber_colors.green, gui = 'bold' },
      },
      visual = {
        a = { fg = gruber_colors.bg, bg = gruber_colors.brown, gui = 'bold' },
      },
      replace = {
        a = { fg = gruber_colors.bg, bg = gruber_colors.red, gui = 'bold' },
      },
      inactive = {
        a = { fg = gruber_colors.quartz, bg = gruber_colors.bg },
        b = { fg = gruber_colors.quartz, bg = gruber_colors.bg },
        c = { fg = gruber_colors.quartz, bg = gruber_colors.bg },
      },
    },
    component_separators = { left = ' ', right = ' ' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_b = { 'branch', 'diff' },
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = { 'diagnostics', 'encoding', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
}

--require('godot').setup({
--  executable = "godot",
--
--  dap = {
--    adapter = {
--      host = "127.0.0.1",
--      port = 6006,
--    },
--  },
--
--  expose_commands = true,
--})
