return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        path = 1,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { 'NvimTree', 'Lazy', 'Mason', 'fugitive', 'lazygit', 'oil' },
          winbar = {},
        },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = {
          'diagnostics',
          {
            'filetype',
            icon_only = true,
            colored = true,
          },
        },
        lualine_z = {
          function()
            return '%l:%c'
          end,
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = {
          function()
            return '%l:%c'
          end,
        },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    }
  end,
}
