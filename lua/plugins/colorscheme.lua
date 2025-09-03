return {
  {
    'sainnhe/everforest',
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'hard' -- Options: 'hard', 'medium', 'soft'
      vim.g.everforest_enable_italic = 0 -- Enable italic comments and keywords
      vim.cmd.colorscheme 'everforest' -- Set Everforest as the active theme
    end,
  },

  { 'projekt0n/caret.nvim' },
  {
    'catppuccin/nvim',
    event = 'VimEnter',
    name = 'catppuccin',
    cond = function()
      return not vim.g.vscode
    end,
    opts = {
      term_colors = true,
      transparent_background = true,
      transparent_panel = true,
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = false,
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        treesitter = true,
        which_key = true,
        nvimtree = {
          enabled = true,
          transparent_panel = true,
        },
      },
    },
  },

  -- Theme collection
  'tckmn/hotdog.vim',
  'rktjmp/lush.nvim',
  'dundargoc/fakedonalds.nvim',
  'craftzdog/solarized-osaka.nvim',
  { 'rose-pine/neovim', name = 'rose-pine' },
  'eldritch-theme/eldritch.nvim',
  'jesseleite/nvim-noirbuddy',
  'miikanissi/modus-themes.nvim',
  'rebelot/kanagawa.nvim',
  'gremble0/yellowbeans.nvim',
  'rockyzhang24/arctic.nvim',
  'folke/tokyonight.nvim',
  'Shatur/neovim-ayu',
  'RRethy/base16-nvim',
  'xero/miasma.nvim',
  'cocopon/iceberg.vim',
  'kepano/flexoki-neovim',
  'ntk148v/komau.vim',
  'uloco/bluloco.nvim',
  'LuRsT/austere.vim',
  'ricardoraposo/gruvbox-minor.nvim',
  'NTBBloodbath/sweetie.nvim',
  {
    'maxmx03/fluoromachine.nvim',
    config = function()
      require('fluoromachine').setup { glow = true, theme = 'fluoromachine' }
    end,
  },
}
