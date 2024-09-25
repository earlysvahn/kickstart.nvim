return {
  {
    'catppuccin/nvim',
    event = 'VimEnter',
    priority = 1000,
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
        gitsigns = true,
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
        telescope = true,
        treesitter = true,
        which_key = true,
        nvimtree = {
          enabled = true,
          transparent_panel = true,
        },
      },
    },
    config = function()
      if vim.g.vscode then
        vim.cmd.colorscheme ''
      else
        vim.cmd.colorscheme 'catppuccin'
      end
      if vim.g.vscode then
        vim.cmd.colorscheme ''
      else
        vim.cmd.colorscheme 'catppuccin'
        vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
        vim.cmd [[highlight NonText guibg=NONE ctermbg=NONE]]
        vim.cmd [[highlight LineNr guibg=NONE ctermbg=NONE]]
        vim.cmd [[highlight Folded guibg=NONE ctermbg=NONE]]
        vim.cmd [[highlight EndOfBuffer guibg=NONE ctermbg=NONE]]
      end
    end,
  },

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
  { 'catppuccin/nvim', name = 'catppuccin' },
  'uloco/bluloco.nvim',
  'LuRsT/austere.vim',
  'ricardoraposo/gruvbox-minor.nvim',
  'NTBBloodbath/sweetie.nvim',
  {
    'maxmx03/fluoromachine.nvim',
    config = function()
      local fm = require 'fluoromachine'
      fm.setup { glow = true, theme = 'fluoromachine' }
    end,
  },
}
