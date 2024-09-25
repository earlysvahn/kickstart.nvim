return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = '[S]earch with Flash jump in Normal, Visual, and Operator mode',
    },
    {
      'S',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').treesitter()
      end,
      desc = '[S]earch with Flash Treesitter in Normal, Visual, and Operator mode',
    },
    {
      'r',
      mode = 'o',
      function()
        require('flash').remote()
      end,
      desc = '[R]emote Flash in Operator mode',
    },
    {
      'R',
      mode = { 'o', 'x' },
      function()
        require('flash').treesitter_search()
      end,
      desc = '[R]emote Treesitter Search in Operator and Visual mode',
    },
    {
      '<c-s>',
      mode = { 'c' },
      function()
        require('flash').toggle()
      end,
      desc = 'Toggle Flash Search in Command mode',
    },
  },
}
