return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'leoluz/nvim-dap-go',
  },
  keys = function(_, keys)
    local dap = require 'dap'
    local dapui = require 'dapui'
    return {
      { '<F5>', dap.continue, desc = '[F5] Start/Continue' },
      { '<F1>', dap.step_into, desc = '[F1] Step Into' },
      { '<F2>', dap.step_over, desc = '[F2] Step Over' },
      { '<F3>', dap.step_out, desc = '[F3] Step Out' },
      { '<leader>bt', dap.toggle_breakpoint, desc = '[B]reakpoint [T]oggle' },
      {
        '<leader>bp',
        function()
          dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end,
        desc = '[B]reakpoint [S]et',
      },
      { '<F7>', dapui.toggle, desc = '[F7] See last session result' },
      unpack(keys),
    }
  end,
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
    vim.fn.sign_define('DapBreakpoint', { text = '⏺', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
    -- DAP UI setup
    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    -- DAP listeners for UI
    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Go DAP setup
    require('dap-go').setup {
      delve = {
        detached = vim.fn.has 'win32' == 0,
      },
    }

    dap.adapters['coreclr'] = {
      type = 'executable',
      command = vim.fn.exepath 'netcoredbg',
      args = { '--interpreter=vscode' },
      options = {
        detached = false,
      },
    }

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
  end,
}
