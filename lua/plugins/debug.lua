return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      automatic_installation = true,
      handlers = {},
      ensure_installed = {
        'delve',
        'netcoredbg',
      },
    }

    -- Define the DAP adapter for .NET Core (using dotnet)
    dap.adapters['coreclr'] = {
      type = 'executable',
      command = 'dotnet',
      args = { 'exec', '/usr/local/share/dotnet/dotnet-coredbg.dll' }, -- Path to the debugger
      options = {
        detached = false,
      },
    }

    -- Set up debugging configurations
    dap.configurations['cs'] = {
      {
        type = 'coreclr',
        name = 'Debug C# App',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
      },
    }

    -- DAP UI setup
    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '↓',
          step_over = '→',
          step_out = '↑',
          step_back = '◁',
          run_last = '▶▶',
          terminate = '■',
          disconnect = '⇽',
        },
      },
    }

    -- DAP listeners for UI
    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
