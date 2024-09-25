-- Function to export keymaps to keymap_cheatsheet.txt
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

-- Function to generate KEYMAP_README.md file with a keymap table
local function generate_readme_with_keymaps()
  -- First call export_keymaps_to_file to generate the .txt file
  export_keymaps_to_file()

  local file_path = vim.fn.stdpath 'config' .. '/KEYMAP_README.md'

  -- Check if the file exists and delete it
  if vim.fn.filereadable(file_path) == 1 then
    os.remove(file_path)
  end

  -- Read the keymap cheat sheet file
  local lines = vim.fn.readfile(vim.fn.stdpath 'config' .. '/keymap_cheatsheet.txt')

  -- Start Markdown table content
  local markdown_content = [[
# Keymap Cheat Sheet

This table contains the keymaps used in Neovim with their associated commands and descriptions.

| Mode  | Key | Command | Description |
|-------|-----|---------|-------------|
  ]]

  local current_mode = ''
  for _, line in ipairs(lines) do
    -- Identify mode lines (e.g., "Mode: n")
    if line:match '^Mode:' then
      current_mode = line:match '^Mode:%s*(.*)'
    elseif line:match '->' then
      -- Match keymaps with format "key -> command [Description: desc]"
      -- This pattern captures everything up to the last square bracket
      local key, cmd, desc = line:match '^%s*(%S+)%s*->%s*(.-)%s*%[Description:%s*(.-)%]%s*$'

      if key and cmd then
        -- Handle `nil` or empty commands properly
        if cmd == 'nil' or cmd == '' then
          cmd = '[No command]'
        end
        if not desc or desc == '' then
          desc = 'ADD DESCRIPTION'
        end

        -- Add keymap data to the Markdown table
        markdown_content = markdown_content
          .. string.format(
            '| %s | %s | %s | %s |\n',
            current_mode,
            vim.fn.escape(key, '|'), -- Escape pipes for Markdown
            vim.fn.escape(cmd, '|'),
            vim.fn.escape(desc, '|')
          )
      end
    end
  end

  -- Write the Markdown content to a KEYMAP_README.md file
  local output_file = io.open(file_path, 'w')
  output_file:write(markdown_content)
  output_file:close()

  print('KEYMAP_README.md file generated with keymaps at: ' .. file_path)
end

-- Register the command to generate the KEYMAP_README.md
vim.api.nvim_create_user_command('GenerateKeymapReadme', generate_readme_with_keymaps, {})
