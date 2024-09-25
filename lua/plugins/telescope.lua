return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
    { 'MunifTanjim/nui.nvim' },
    { 'nvim-telescope/telescope-github.nvim' },
    { 'nvim-telescope/telescope-z.nvim' },
    { 'nvim-telescope/telescope-frecency.nvim' },
    { 'folke/noice.nvim', event = 'VeryLazy' },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'noice')
    pcall(require('telescope').load_extension, 'gh')
    pcall(require('telescope').load_extension, 'live-grep-args')
    pcall(require('telescope').load_extension, 'frecency')
    pcall(require('telescope').load_extension, 'z')

    local builtin = require 'telescope.builtin'

    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]ind [S]elect Telescope' })
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })
    vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>fc', function()
      builtin.colorscheme { enable_preview = true } -- Enable previewer for colorscheme
    end, { desc = '[F]ind [C]olorscheme with preview' })

    local extensions = require('telescope').extensions

    vim.keymap.set('n', '<leader>fa', extensions.live_grep_args.live_grep_args, { desc = '[F]ind with [A]rgs (live grep)' })
    vim.keymap.set('n', '<leader>fn', extensions.noice.noice, { desc = '[F]ind [N]otifications (noice)' })

    vim.keymap.set('n', '<leader>ghr', function()
      require('telescope').extensions.gh.issues()
    end, { desc = '[G]ithub [I]ssues' })

    vim.keymap.set('n', '<leader>ghp', function()
      require('telescope').extensions.gh.pull_request()
    end, { desc = '[G]ithub [P]ull Requests' })

    vim.keymap.set('n', '<leader>f/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = true,
      })
    end, { desc = '[F]ind in current buffer' })

    vim.keymap.set('n', '<leader>fs/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[F]ind [S]earch in Open Files' })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>fn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[F]ind [N]eovim files' })

    vim.keymap.set('n', '<leader>fz', function()
      extensions.live_grep_args.live_grep_args { prompt_title = 'Live Grep with Args' }
    end, { desc = '[F]ind with Args' })

    vim.keymap.set('n', '<leader>ffreq', function()
      -- Add your frequency search logic here
      print 'Frequency search triggered!' -- Replace with actual logic
    end, { desc = '[F]requency search' })
  end,
}
