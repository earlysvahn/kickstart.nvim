return {
  {
    'pwntester/octo.nvim',
    cmd = 'Octo',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      -- autocomplete for @ and #
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'octo',
        callback = function()
          vim.keymap.set('i', '@', '@<C-x><C-o>', { silent = true, buffer = true })
          vim.keymap.set('i', '#', '#<C-x><C-o>', { silent = true, buffer = true })
          vim.keymap.set('n', '<leader>gu', '<leader>u', { silent = true, buffer = true, remap = true, desc = '? Open in browser' })
        end,
      })

      local ok, whichKey = pcall(require, 'which-key')
      if ok then
        whichKey.register { ['<leader>'] = { name = ' ? Octo' } }
      end
    end,
    opts = {
      -- https://github.com/pwntester/octo.nvim#%EF%B8%8F-configuration
      ui = { use_signcolumn = true }, -- pending: https://github.com/pwntester/octo.nvim/issues/80

      issues = { order_by = { field = 'UPDATED_AT' } }, -- COMMENTS|CREATED_AT|UPDATED_AT
      pull_requests = { order_by = { field = 'UPDATED_AT' } },

      mappings = {
        issue = {
          close_issue = { lhs = '<leader>c', desc = '? Close issue' },
          reopen_issue = { lhs = '<leader>o', desc = '? Reopen issue' },
          reload = { lhs = '<leader>r', desc = '? Reload issue' },
          open_in_browser = { lhs = '<leader>u', desc = '? Open in browser' },
          copy_url = { lhs = '<leader>U', desc = '? Copy URL' },
          add_comment = { lhs = '<leader>a', desc = '? Add comment' },
          delete_comment = { lhs = '<leader>d', desc = '? Delete comment' },
          next_comment = { lhs = 'gc', desc = '? Goto next comment' },
          prev_comment = { lhs = 'gC', desc = '? Goto prev comment' },
          add_label = { lhs = '<leader>l', desc = '? Add label' },
          remove_label = { lhs = '<leader>L', desc = '? Remove label' },

          react_hooray = { lhs = '<leader>rp', desc = '? Toggle ??' },
          react_heart = { lhs = '<leader>rh', desc = '? Toggle ??' },
          react_eyes = { lhs = '<leader>re', desc = '? Toggle ??' },
          react_thumbs_up = { lhs = '<leader>r+', desc = '? Toggle ??' },
          react_thumbs_down = { lhs = '<leader>r-', desc = '? Toggle ??' },
          react_rocket = { lhs = '<leader>rr', desc = '? Toggle ??' },
          react_laugh = { lhs = '<leader>rl', desc = '? Toggle ??' },
          react_confused = { lhs = '<leader>rc', desc = '? Toggle ??' },
        },
      },
    },
  },
  { -- git sign gutter & hunk textobj
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    opts = { max_file_length = 7500 },
  },
  { -- diff / merge
    'sindrets/diffview.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    cmd = { 'DiffviewFileHistory', 'DiffviewOpen' },
    config = function() -- needs config, for access to diffview.actions in mappings
      require('diffview').setup {
        -- https://github.com/sindrets/diffview.nvim#configuration
        enhanced_diff_hl = false, -- true = no red for deletes
        show_help_hints = false,
        file_history_panel = {
          win_config = { height = 5 },
        },
        hooks = {
          diff_buf_read = function()
            -- set buffername, mostly for tabline (lualine)
            pcall(function()
              vim.api.nvim_buf_set_name(0, 'Diffview')
            end)
          end,
        },
        keymaps = {
          view = {
            { 'n', '<D-w>', vim.cmd.tabclose, {} }, -- close tab instead of window
            {
              'n',
              '<S-CR>',
              function()
                vim.cmd.wincmd 'w'
              end,
              {},
            }, -- consistent with general buffer switcher
          },
          file_history_panel = {
            { 'n', '<D-w>', vim.cmd.tabclose, {} },
            { 'n', '?', require('diffview.actions').help 'file_history_panel', {} },
            {
              'n',
              '<S-CR>',
              function()
                vim.cmd.wincmd 'w'
              end,
              {},
            },
          },
        },
      }
    end,
  },
}
