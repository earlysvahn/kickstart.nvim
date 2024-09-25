return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {},
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('notify').setup {
      stages = 'fade',
      timeout = 1000,
      background_colour = '#000000',
      render = 'compact',
    }
    vim.notify = require 'notify'

    require('noice').setup {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },

      notify = {
        enabled = true,
        view = 'notify',
      },
    }

    vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice Message' })
    local noice_hl = vim.api.nvim_create_augroup('NoiceHighlights', {})
    local noice_cmd_types = {
      'CmdLine',
      'Lua',
      'Filter',
      'Rename',
    }
    vim.api.nvim_clear_autocmds { group = noice_hl }
    vim.api.nvim_create_autocmd('BufEnter', {
      group = noice_hl,
      callback = function()
        for _, type in ipairs(noice_cmd_types) do
        end
      end,
    })
  end,
}
