return {
  'rest-nvim/rest.nvim',
  requires = { 'nvim-lua/plenary.nvim', 'folke/noice.nvim' },
  config = function()
    vim.g.rest_nvim = {
      result_split_horizontal = false,
      result_split_in_place = false,
      skip_ssl_verification = false,
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        show_url = true,
        show_http_info = true,
        show_headers = true,
      },
      jump_to_request = false,
      env_file = '.env',
    }

    -- Load required modules
    local lspconfig_util = require 'lspconfig.util'
    local telescope = require 'telescope.builtin'
    local actions = require 'telescope.actions'
    local action_state = require 'telescope.actions.state'
    local noice = require 'noice'

    -- Function to check if any specified port is open
    local function is_port_open(port)
      local cmd = string.format('lsof -i :%d', port)
      local result = vim.fn.system(cmd)
      return result and result ~= ''
    end

    -- Function to check if any of the ports 3000, 5500, or 8080 is open
    local function any_service_running()
      local ports = { 3000, 5500, 8080 }
      for _, port in ipairs(ports) do
        if is_port_open(port) then
          return true
        end
      end
      return false
    end

    -- Define the function to select and run a request in a new tmux window
    local function select_and_run_request()
      -- Check if any service is running on the specified ports
      if not any_service_running() then
        -- Show error message using noice.nvim if no service is detected
        noice.notify('Error: No service running on ports 3000, 5500, or 8080.', 'error')
        return -- Skip execution
      end

      -- Determine the project root and requests directory
      local project_root = lspconfig_util.find_git_ancestor(vim.fn.expand '%:p') or vim.fn.getcwd()
      local requests_dir = project_root .. '/requests/'

      -- Use Telescope to find files in the requests directory
      telescope.find_files {
        prompt_title = 'Select API Request',
        cwd = requests_dir,
        previewer = false,
        attach_mappings = function(prompt_bufnr, _)
          -- Override the default action for <CR> to open and run the request in a new tmux window
          actions.select_default:replace(function()
            actions.close(prompt_bufnr)
            local selected_file = action_state.get_selected_entry().path

            -- Command to open a new tmux window named "rest" and run :Rest run in Neovim
            local command = string.format([[tmux new-window -n rest 'nvim +":e %s | set filetype=http | Rest run"' ]], selected_file)

            -- Execute the command in a shell
            vim.fn.system(command)
          end)
          return true
        end,
      }
    end

    -- Map <leader>R to the custom function
    vim.api.nvim_set_keymap('n', '<leader>R', '', {
      noremap = true,
      silent = true,
      callback = select_and_run_request,
    })
  end,
}
