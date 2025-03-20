return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  config = function()
    require('chatgpt').setup {
      openai_params = {
        model = 'gpt-3.5-turbo',
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 4095,
        temperature = 0.2,
        top_p = 0.1,
        n = 1,
      },
    }

    local actions = {
      'fix_bugs',
      'explain_code',
      'grammar_correction',
      'complete_code',
      'translate',
      'keywords',
      'code_readability_analysis',
      'add_tests',
      'docstring',
      'optimize_code',
      'roxygen_edit',
      'summarize',
    }

    vim.keymap.set('n', '<leader>cgt', ':ChatGPT<CR>', { noremap = true, silent = true, desc = '[C]hat [G]PT' })

    vim.keymap.set('n', '<leader>cgr', function()
      require('fzf-lua').fzf_exec(actions, {
        prompt = 'Select ChatGPT action: ',
        actions = {
          ['default'] = function(selected)
            if selected and selected[1] then
              vim.cmd('ChatGPTRun ' .. selected[1])
            end
          end,
        },
      })
    end, { noremap = true, silent = true, desc = '[C]hat [G]PT [R]un with Selection' })
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim',
    'nvim-telescope/telescope.nvim',
    'ibhagwan/fzf-lua', -- Add fzf-lua as a dependency
  },
}
