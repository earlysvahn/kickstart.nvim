return {
  'folke/which-key.nvim',
  opts = {
    preset = 'helix',
    delay = 0,
    win = {
      height = {
        max = math.huge,
      },
    },
    plugins = {
      spelling = {
        enabled = false,
      },
    },
    icons = {
      rules = false,
      breadcrumb = ' ',
      separator = '󱦰 ',
      group = '󰹍 ',
    },
    spec = {
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    },
  },
}
