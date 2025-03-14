return {
  {
    'jackMort/ChatGPT.nvim',
    event = 'VeryLazy',
    config = function()
      require('chatgpt').setup {
        openai_params = {
          model = 'gpt-4-1106-preview',
          frequency_penalty = 0,
          presence_penalty = 0,
          max_tokens = 4095,
          temperature = 0.2,
          top_p = 0.1,
          n = 1,
        },
      }
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'folke/trouble.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
  -- 'olimorris/codecompanion.nvim',
  -- dependencies = {
  --   'nvim-lua/plenary.nvim',
  --   'nvim-treesitter/nvim-treesitter',
  -- },
  -- opts = {
  --   strategies = {
  --     -- Change the default chat adapter
  --     chat = {
  --       adapter = 'qwen',
  --       inline = 'qwen',
  --     },
  --   },
  --   adapters = {
  --     qwen = function()
  --       return require('codecompanion.adapters').extend('ollama', {
  --         name = 'qwen', -- Give this adapter a different name to differentiate it from the default ollama adapter
  --         schema = {
  --           model = {
  --             default = 'qwen2.5-coder:7b',
  --           },
  --         },
  --       })
  --     end,
  --   },
  --   opts = {
  --     log_level = 'DEBUG',
  --   },
  --   display = {
  --     diff = {
  --       enabled = true,
  --       close_chat_at = 240, -- Close an open chat buffer if the total columns of your display are less than...
  --       layout = 'vertical', -- vertical|horizontal split for default provider
  --       opts = { 'internal', 'filler', 'closeoff', 'algorithm:patience', 'followwrap', 'linematch:120' },
  --       provider = 'default', -- default|mini_diff
  --     },
  --   },
  --   -- Disable the Copilot Adapter explicitly
  --   copilot = false,
  -- },
}
