local function export_keymaps_to_file()
  local file_path = vim.fn.stdpath 'config' .. '/keymap_cheatsheet.txt'

  -- Check if the file exists and delete it
  if vim.fn.filereadable(file_path) == 1 then
    os.remove(file_path)
  end

  local file = io.open(file_path, 'w')

  if not file then
    print 'Error: Could not open file for writing'
    return
  end

  file:write 'Keymaps with Descriptions:\n\n'

  local modes = { 'n', 'v', 'i', 'x', 'c', 't' }
  for _, mode in ipairs(modes) do
    local keymaps = vim.api.nvim_get_keymap(mode)
    file:write('Mode: ' .. mode .. '\n')
    for _, keymap in ipairs(keymaps) do
      local desc = keymap.desc or 'ADD DESCRIPTION'
      file:write(string.format('  %s -> %s  [Description: %s]\n', keymap.lhs, keymap.rhs or 'nil', desc))
    end
    file:write '\n'
  end

  file:close()
  print('Keymaps exported to: ' .. file_path)
end

local function generate_readme_with_keymaps()
  export_keymaps_to_file()
  local output_file = vim.fn.stdpath 'config' .. '/KEYMAP_README.md'
  local file = io.open(output_file, 'w')

  if file then
    -- Write the header of the README file
    file:write '# Keymap Cheat Sheet\n\n'
    file:write 'This table contains the keymaps used in Neovim with their associated commands and descriptions.\n\n'
    file:write '| Mode  | Key | Command | Description |\n'
    file:write '|-------|-----|---------|-------------|\n'

    -- Define a table of modes to fetch keymaps for
    local modes = {
      { mode = 'n', label = 'Normal' },
      { mode = 'i', label = 'Insert' },
      { mode = 'v', label = 'Visual' },
      { mode = 'x', label = 'Visual (Selection)' },
      { mode = 'c', label = 'Command' },
      { mode = 't', label = 'Terminal' },
    }

    -- Iterate over the modes and fetch the corresponding keymaps
    for _, m in ipairs(modes) do
      local keymaps = vim.api.nvim_get_keymap(m.mode)
      for _, keymap in ipairs(keymaps) do
        local mode_label = m.label
        local lhs = keymap.lhs or '[No key]'
        local rhs = keymap.rhs or '[No command]'
        local desc = keymap.desc or 'ADD DESCRIPTION'
        file:write(string.format('| %s | %s | %s | %s |\n', mode_label, lhs, rhs, desc))
      end
    end

    file:close()
    print('KEYMAP_README.md file generated with keymaps at: ' .. output_file)

    -- Automatically stage, commit, and push the README.md
    local git_add_cmd = 'git add ' .. output_file
    local git_commit_cmd = "git commit -m 'Generated new KEYMAP_README.md'"
    local git_push_cmd = 'git push'

    -- Run Git commands silently using vim.fn.system()
    vim.fn.system(git_add_cmd)
    vim.fn.system(git_commit_cmd)
    vim.fn.system(git_push_cmd)

    print 'Changes committed and pushed to the repository.'
  else
    print('Failed to open file: ' .. output_file)
  end
end

vim.api.nvim_create_user_command('GenerateKeymapReadme', generate_readme_with_keymaps, {})
