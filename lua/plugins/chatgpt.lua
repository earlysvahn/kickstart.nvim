return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  config = function()
    require('chatgpt').setup {
      openai_params = {
        model = 'gpt-3.5-turbo',
        max_tokens = 3000,
        temperature = 0,
        top_p = 1,
        frequency_penalty = 0,
        presence_penalty = 0,
      },
    }

    -- Custom function to prompt for ChatGPT actions
    local function prompt_for_action()
      local actions = {
        'docstring',
        'optimize_code',
        'summarize',
        'fix_bugs',
        'add_tests',
        'explain_code',
        'grammar_correction',
        'complete_code',
        'roxygen_edit',
        'translate',
        'code_readability_analysis',
        'keywords',
      }

      vim.ui.select(actions, { prompt = 'Select ChatGPT Action:' }, function(selected)
        if selected then
          vim.cmd('ChatGPTRun ' .. selected)
        end
      end)
    end

    -- Keybindings with descriptions in [G]pt [Action] style
    local keymaps = {
      { '<Leader>ga', '<cmd>:ChatGPT<cr>', desc = '[G]pt [A]sk' },
      { '<Leader>gA', '<cmd>:ChatGPTActAs<cr>', desc = '[G]pt [A]ct As' },
      { '<Leader>gt', '<cmd>:ChatGPTEditWithInstructions<cr>', desc = '[G]pt [T]ext Edit' },
      { '<Leader>gr', prompt_for_action, desc = '[G]pt [R]un Action' },
    }

    -- Set up the key mappings using the `keymaps` table
    for _, keymap in ipairs(keymaps) do
      vim.keymap.set('n', keymap[1], keymap[2], { desc = keymap.desc })
    end
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim',
    'nvim-telescope/telescope.nvim',
  },
}
